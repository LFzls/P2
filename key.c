/******************************************************************************
 ** Function :	key.c �ļ�
 ******************************************************************************/


/******************************************************************************
 ** Include files
 ******************************************************************************/
// #include 	<pic.h>
#include 	<htc.h>
#include  	"Func.h"
#include  	"init.h"
#include  	"key.h"
#include  	"modular.h"
#include "tyw_uiEvent.h"


/******************************************************************************
 ** Global variable definitions (declared in header file with 'extern')
 ******************************************************************************/
ReadPort_TypeDef	ReadPort;
uint8_t oilPerCent=0;
	
void gearSwitch(void)
{
	switch (GetADC.Vout_Lx)
    {
        case 0x00:
            GetADC.Vout_Lx = 0x40;
            break;
        case 0x40:
            GetADC.Vout_Lx = 0x80;
            break;
        case 0x80:
            GetADC.Vout_Lx = 0x00; // 循环回滚至初始挡位
            break;
    }

	SetFirePercent;
	openNewPage(PAGE_GEAR_SWITCH);
}
/*******************************************************************************
 * \brief   void  PortScan(void)
 *          按键/咪头/充电器检测函数.
 * \param   [in]  void
 * \retval  void
 * \note
 ******************************************************************************/

void  PortScan(void)
{	
	if(PDMIC_DOWN)		ReadPort.ScanNew |= 0x01;	
	else	ReadPort.ScanNew &= 0xFE;   //有咪头触发置1;无则清0 	
	
	if(PDKEY_DOWN)		ReadPort.ScanNew |= 0x02;	
	else	ReadPort.ScanNew &= 0xFD;   //有按键置1;无按键清0  

	// if(CHRG_STATE_DOWN)	ReadPort.ScanNew |= 0x04;	
	// else	ReadPort.ScanNew &= 0xFB;   //有充电器插入置1;无则清0 


	if(ReadPort.ScanNew != ReadPort.ScanOld)
	{
		ReadPort.ScanCnt++;
		if(ReadPort.ScanCnt >= 2)   //连续2次检测到状态变化有效,消抖		
		{ 
			if((ReadPort.ScanOld&0x02) == 0 && (ReadPort.ScanNew&0x02) != 0)	
			{
				ReadPort.KeyNum++;	//按键次数++
				ReadPort.KeyIntervalTime = 50;	//连按间隔500ms内有效 
				ReadPort.KeyState |= 0x01;	//置位长按键状态
				ReadPort.KeyLongTime = 0;
				gearSwitch();
				

			}	
			else if((ReadPort.ScanOld&0x02) != 0 && (ReadPort.ScanNew&0x02) == 0)  
			{
				ReadPort.KeyState &= 0xFE;	//退出长按检测模式		
			}  

			if((ReadPort.ScanOld&0x01) == 0 && (ReadPort.ScanNew&0x01) != 0)  
			{
				if((ReadPort.KeyState&0x10) == 0)	//按键未吸烟
				{
					ReadPort.KeyState |= 0x20;
					SetEnSmoke;	//咪头吸烟
					ReadPort.KeyState &= 0x7F;	//OUT_MODE_NORMALSMOKE
				}	
			}
			else if((ReadPort.ScanOld&0x01) != 0 && (ReadPort.ScanNew&0x01) == 0)  
			{
				if((ReadPort.KeyState&0x20) != 0)
				{
					KeyUpStopSmoke();
					ClrEnSmoke;	//咪头停止吸烟	
					ReadPort.KeyState &= 0xDF;	//清除咪头吸烟状态
				}	
			}	
		
			TimeCnt.SleepTime = 0;	//更新休眠计时
			ReadPort.ScanCnt = 0;	//重新计数
			ReadPort.ScanOld = ReadPort.ScanNew;    //更新状态		
		}
	}
	else  ReadPort.ScanCnt = 0;		//状态没有变化
	
	if(ReadPort.KeyIntervalTime)	ReadPort.KeyIntervalTime--;
	else
	{
		
		ReadPort.KeyNum = 0;	//重新开始按键计数
	}

 	if((ReadPort.KeyState&0x01) != 0)	//长按按键处理
	{
		if(ReadPort.KeyLongTime<150)	//长按2S计时
		{
			ReadPort.KeyLongTime++;
			TimeCnt.SleepTime = 0;	//长按键更新休眠时间
		}
		else 	//执行长按操作、闪灯提示   
		{
			ReadPort.KeyState &= 0xFE;	//退出长按检测模式
			ReadPort.KeyNum = 0;	//重新开始按键计数
			KeyUpStopSmoke();	//开关机优先级最高，停止输出
			ClrEnSmoke;
			if(F_TurnOff != False)
			{
				ClrTurnOff;
				openNewPage(PAGE_POWER_ON);
			}
			else
			{
				SetTurnOff;
				openNewPage(PAGE_POWER_OFF);	
			}
			
														
		}
	}	 

	//咪头吸烟、充电中、连续按按键时更新休眠时间
	if(ReadPort.KeyNum != 0 || (ReadPort.ScanNew&0x05) != 0)	
		TimeCnt.SleepTime = 0;
}


/*******************************************************************************
 * \brief   void  KeyUpStopSmoke(void)
 *          按键/咪头松开停止吸烟处理函数.
 * \param   [in]  void
 * \retval  void
 * \note
 ******************************************************************************/
void  KeyUpStopSmoke(void)
{
	if(F_Firing != False)
	{
		ClrFiring;
		LVDIE  = Clr;	//关闭欠压中断
		ClrLoadShort;  		
		PWMPD_OFF;	 //关闭输出
		FlagSmoke = 0x0000;	//清除吸烟中标志寄存器
		ReadPort.KeyState &= 0x4F;	//清除咪头/按键吸烟状态	


		PAMOD32	= PAMOD32 & 0x0F | PIN_H_Mode_OD_WAKEUP;
		GPIO_LOAD = Set;	//AD_OUT切换回数字IO

		PAMOD54	= PAMOD54 & 0x0F | PIN_H_Mode_OD_WAKEUP;
		GPIO_LOAD2 = Set;	//AD_OUT切换回数字IO
			
		if( ( GetADC.Vout_Lx & 0xc0 ) == 0 ) 
        {
            GetADC.smokeCount++;
            if(GetADC.smokeCount>5)
            {
                GetADC.smokeCount=0;
                GetADC.Vout_Lx ^= 0x01;
            }
            
        } 
        else
        {
            GetADC.smokeCount=0;
        }

		switch (GetADC.Vout_Lx)
		{
			case 0x00: //单发
				
				break;
			case 0x40://双发 NORM
				TimeCnt.SmokeTask=TimeCnt.SmokeTask*16/10;

				break;
			case 0x80://BOOST
				TimeCnt.SmokeTask=TimeCnt.SmokeTask*15/10;
				break;
		}



		if( TimeCnt.SmokeTime > TimeCnt.SmokeTask )
        {
            TimeCnt.SmokeTime -= TimeCnt.SmokeTask;
        }
        else
        {
            TimeCnt.SmokeTime = 0;
        }
        TimeCnt.SmokeTask = 0;

		oilPerCent=(unsigned long)(TimeCnt.SmokeTime*100)/OilTime_100_100;

		//CHRG_ON;	//停止吸烟重新开启充电		    		
	}
}


/*******************************************************************************
 * \brief   void  ReadChargerState(void)
 *          充电适配器接入/拔除检测函数.
 * \param   [in]  void
 * \retval  void
 * \note
 ******************************************************************************/
void  ReadChargerState(void)
{ 
  	if(F_Charger != False)	//充电器已接入，检测拔除
  	{
    	if(CHARGER_OUT)    
    	{
			ReadPort.ChargerCnt++;
	    	if(ReadPort.ChargerCnt >= 3)  //充电器拔除，连续检测到3次有效
			{
				ClrCharger;
				ClrBatFull;				
				ReadPort.ChargerCnt = 0;				
				TimeCnt.SleepTime = 0;

				openNewPage(PAGE_USBOUT);							
			}
    	}
    	else	ReadPort.ChargerCnt = 0;
  	}
  	else	//充电器已拔除，检测接入
  	{
    	if(CHARGER_IN)    
    	{
			ReadPort.ChargerCnt++;
	    	if(ReadPort.ChargerCnt >= 3)  //充电器插入，连续检测到3次有效
			{		
				openNewPage(PAGE_USBIN);		
				SetCharger;				
				ClrBatFull;				
				ReadPort.ChargerCnt = 0;
				TimeCnt.RechgFullTime = 0;								      										
			}
    	}
    	else    ReadPort.ChargerCnt = 0;    
  	}  	
}


