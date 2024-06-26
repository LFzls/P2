/******************************************************************************
 ** Function :	task.c 文件
 ******************************************************************************/


/******************************************************************************
 ** Include files
 ******************************************************************************/
// #include 	<pic.h>

#include  	"Func.h"
#include  	"init.h"
#include  	"key.h"
#include  	"modular.h"
#include 	"tyw_uiEvent.h"


/******************************************************************************
 ** Global variable definitions (declared in header file with 'extern')
 ******************************************************************************/
volatile  uint8_t   Over_Current_Cnt=0;
uint16_t         heatVolSet = 0;
uint16_t         heatVol = 0;
/*******************************************************************************
 * \brief   void  IdleProgress(void)
 *          休眠\空闲模式入口函数。
 * \param   [in]  void
 * \retval  void
 * \note	上次休眠时中断中计时时间不确定，唤醒后等待20ms让外设工作稳定
 ******************************************************************************/
void  IdleProgress(void)   
{
	if(DispayCount==0 && F_ScanLedOK != False && F_PercentInit != False)
	{					
		EnterSleep(); 
		TimeCnt.SleepTime = 2;	//延时20ms等待外设稳定
		while(TimeCnt.SleepTime)
		{
			if(F_Cnt10ms != False)	//10ms执行一次
			{
				ClrFlag10ms;	
				asm("CLRWDT");	//清看门狗		
				TimeCnt.SleepTime--;
			} 
		}
		SetExeMode;			
	}	
}


/************************************************************************************
 * \brief   void  EnterSleep(void)
 *          进入休眠函数。
 * \param   [in]  void
 * \retval  void
 * \note	系统可设置休眠时关闭外设时钟、PWRSAV关闭LVR降低功耗
 * 			第一次进入更新负载状态；有充电器插入则不休眠。
 ************************************************************************************/
void  EnterSleep(void)
{
	if(F_ResetFlag != False)	
	{
		ClrResetFlag;	//上电闪完灯后更新负载初始化状态

		/*if(LOAD_DOWN)
		{
			RunLoad.LoadOld = Set;
			RunLoad.LoadNew = Set;   //加载负载 
		}
		else
		{
			RunLoad.LoadOld = Clr;
			RunLoad.LoadNew = Clr;   //移走负载
		}*/				
	}	

	if(CHARGER_IN )	return;	//充电器未拔出退出休眠

	//进入休眠	//初始化时LVD、LVR、WDT已设置STOP模式时禁止
	TIMER0_DISABLE;TIMER1_DISABLE;TIMER2_DISABLE;	//关闭定时器
#if	PWMx_EN
	PWMx_DISABLE;	//stop PWM
#endif	
	InitGpio(); 	//重新初始化GPIO,关闭外设	
	INTIE	= 0x00;
	INTIE1	= 0x00;	//先禁止所有中断
	
	STPSCK_OPEN;	//停止慢时钟源
	Delay_16nop();		
	asm("sleep");   //掉电模式，进入休眠	//ENTER_STOP_MODE;	//进入STOP模式
	STPSCK_OFF;		//唤醒后使能慢时钟。
	Delay_16nop();	
	
	Init_BOD_WDT();    //唤醒后使能WDT、BOD中断 	
	InitGpio();
#if PWMx_EN
	InitPWM((LED_DUTY_PERI_MAX-1),LED_DUTY_PERI_MAX,0x00);	//初始化灭灯PWM---RGB
#endif
	MCU_INIT_TIMER();   //唤醒后启动定时器
}


/*******************************************************************************
 * \brief   void  PowerProgress(void)
 *          未休眠\吸烟模式运行函数。
 * \param   [in]  void
 * \retval  void
 * \note	注意需要在输出时获取电池电压值，ADC检测值需保证不是在关输出时检测值
 ******************************************************************************/
void  PowerProgress(void)
{
	uint16_t  AD_Temp;

	if(F_EnSmoke != False)	//有吸烟触发 
	{
		ClrEnSmoke;

		{
			if(F_TurnOff == False /*&& F_Charger == False*/)	//未锁机    //充电不可吸烟
			{
				if(F_Firing == False)	//吸烟前
				{
					if(/*GetADC.BatteryVoltage < 3000 || */GetADC.BatteryPercent==0 || F_LowBat != False)	//吸烟前电池电压小于3.3V
					{
						openNewPage(PAGE_LOW_POWER);
						
						GetADC.BatteryPercent = 0;					
																
					}
					else if(LOAD_UP)	//发热丝开路
					{
						openNewPage(PAGE_SHORT_PROTECTION);						
					}
					else
					{
						// GetADC.LoadRes = ReadLoadRes(0);
						// GetADC.LoadResCh2 = ReadLoadRes(1);
						// if(GetADC.LoadRes < 380 || GetADC.LoadResCh2<380)	//负载阻值小于0.4Ω
						// {
																			
						// 	openNewPage(PAGE_SHORT_PROTECTION);
				
						// }
						// else
						{
							FlagSmoke = 0xA55A;	//置位吸烟状态中寄存器 
							LVDIF = Clr;	//clear LVD interrupt flag
							LVDIE = Set;//LVD interrupt enable	//开欠压中断

							PAMOD54	= PAMOD54 & 0x0F | PIN_H_Mode_ADC;	//AD_OUT切换回模拟口
							PAMOD32	= PAMOD32 & 0x0F | PIN_H_Mode_ADC;	//AD_OUT切换回模拟口
						

							ReadPort.ChargerCnt = 0;
							TimeCnt.RechgFullTime = 0;	//吸烟关闭充电，检测充电状态恢复初状态
							GetADC.VoutOld = GetADC.BatteryVoltage;	//获取初始输出值
							if(F_FirePercent != False)
							{
								GetADC.BatteryVoltageOld = GetADC.BatteryVoltage;
								ClrFirePercent;
							}	
							//选择模式
							if( GetADC.Vout_Lx == 0x80 ) //BOST   
							{
								heatVolSet =    3200;
								PWMPD_ON;        //PWM1
								PWMPD_CH2_ON;    //PWM2
								RunPWM.BuckPwmDuty = RunPWM.BuckPwmDutyBuff = BuckPwmCycle;  //BuckPwmCycle 200
								RunPWM.BuckPwmDuty_CH2 = RunPWM.BuckPwmDutyBuff_CH2 = BuckPwmCycle;
							}
							else if( GetADC.Vout_Lx == 0x40 ) //NORMAL
							{
								heatVolSet =    2700;
								PWMPD_ON;
								PWMPD_CH2_ON;
								RunPWM.BuckPwmDuty = RunPWM.BuckPwmDutyBuff = BuckPwmCycle;
								RunPWM.BuckPwmDuty_CH2 = RunPWM.BuckPwmDutyBuff_CH2 = BuckPwmCycle;
							}
							else   if(GetADC.Vout_Lx == 0x01)  //eco mode1
							{
								heatVolSet =    3200;
								PWMPD_CH2_OFF;
								PWMPD_ON;
								RunPWM.BuckPwmDuty = RunPWM.BuckPwmDutyBuff = BuckPwmCycle;
								RunPWM.BuckPwmDuty_CH2 = RunPWM.BuckPwmDutyBuff_CH2 = 0;
							}
							else  //eco mode2
							{
								heatVolSet =    3200;
								PWMPD_CH2_ON;
								PWMPD_OFF;
								RunPWM.BuckPwmDuty = RunPWM.BuckPwmDutyBuff = 0;
								RunPWM.BuckPwmDuty_CH2 = RunPWM.BuckPwmDutyBuff_CH2 = BuckPwmCycle;
							}
							
							RunPWM.BuckPwmCycleCnt = 0;	//延时1个BuckPwmCycle时间更新占空比，输出开始时能延时1个中断时间才检测	
							GetADC.LowVolCnt = 0;
							GetADC.VoutVDD = 0;
							ClrLoadOpen;
							ClrLoadWork;									
							TM0IE = Clr;
							TimeCnt.SmokeTask = 0;	//吸烟计时重新开始																													
							TimeCnt.TimeBase = 50;	//检测电池电压和输出开启时间错开5ms,保证检测电池电压总在输出打开时
							TM0IE = Set;	
							SetFiring;	//吸烟开始	
						}																			
					}
				}
			}
		}
	}
	else if(F_Firing != False)	//吸烟过程中
	{
		if(F_LoadShort != False)	//检测到短路
		{
			KeyUpStopSmoke();											
			openNewPage(PAGE_SHORT_PROTECTION);
			
		}
		else if(GetADC.LowVolCnt >= 10)	//检测到低压
		{
			KeyUpStopSmoke();
			openNewPage(PAGE_LOW_POWER);
			GetADC.BatteryPercent = 0;		
		}	
		else if(TimeCnt.SmokeTask >= SmokeOverTimeMic && (ReadPort.KeyState&0x80) == 0)	//正常吸烟超时
		{
			KeyUpStopSmoke();
			openNewPage(PAGE_SMOKE_TIMEOUT);					
		}
		else
		{
			if( GPIO_OUT_EN == OUT_MOS_ON && RunPWM.BuckPwmCycleCnt != 0 )
            {
                GetADC.LoadRes = HAL_ADC_Sample( ADC_CH_VOUT, False );
                if( GPIO_OUT_EN == OUT_MOS_ON )
                {
                    SetLoadWork;
                }
                else
                {
                    ClrLoadWork;
                }
            }
            else    ClrLoadWork;


            if( GPIO_OUT_CH2_EN == OUT_MOS_ON && RunPWM.BuckPwmCycleCnt != 0 )
            {
                GetADC.LoadResCh2 = HAL_ADC_Sample( ADC_CH_VOUT2, False );
                if( GPIO_OUT_CH2_EN == OUT_MOS_ON )
                {
                    SetLoadWorkCh2;
                }
                else
                {
                    ClrLoadWorkCh2;
                }
            }
            else    ClrLoadWorkCh2;

			if( ( F_LoadWork != False && GetADC.LoadRes < 2050 ) || ( F_LoadWorkCh2 != False && GetADC.LoadResCh2 < 2050 ) )
            {
                Over_Current_Cnt++;
                if( Over_Current_Cnt >= 10 )
                {
                    SetLoadShort;
                    PWMPD_OFF;
                    PWMPD_CH2_OFF;
                }
            }
            else
            {
				Over_Current_Cnt=0;
                if( F_LoadOpen != False )
                {
                    if( heatPwmRegFlag )
                    {
                        GetADC.VoutVDD = HAL_ADC_Sample( ADC_CH_IBAT, False );
                        GetADC.VoutVDD = 4997120 / GetADC.VoutVDD;
                        GetADC.VoutVDD = GetADC.VoutVDD + 15;

                        ClrheatPwmReg;

                        if( F_LoadWork != False )
                        {
                            heatVol = ( uint32_t )GetADC.VoutVDD * GetADC.LoadRes / 4096;
                            AD_Temp = ( u32 )heatVolSet * heatVolSet * VOUT_PWM_DUTY_MAX / ( ( u32 )heatVol * heatVol );
                            if( AD_Temp >= BuckPwmCycle )  
								RunPWM.BuckPwmDutyBuff = BuckPwmCycle;  //BuckPwmCycle 20
                            		else if( AD_Temp < BuckPwmMinCycle )  
										RunPWM.BuckPwmDutyBuff = BuckPwmMinCycle;
                            				else    
												RunPWM.BuckPwmDutyBuff = AD_Temp;
                        }


                        if( F_LoadWorkCh2 != False )
                        {
                            heatVol = ( uint32_t )GetADC.VoutVDD * GetADC.LoadResCh2 / 4096;
                            AD_Temp = ( u32 )heatVolSet * heatVolSet * VOUT_PWM_DUTY_MAX / ( ( u32 )heatVol * heatVol );
                            if( AD_Temp >= BuckPwmCycle )  
								RunPWM.BuckPwmDutyBuff_CH2 = BuckPwmCycle;
                            		else if( AD_Temp < BuckPwmMinCycle ) 
										 RunPWM.BuckPwmDutyBuff_CH2 = BuckPwmMinCycle;
                            				else   
												 RunPWM.BuckPwmDutyBuff_CH2 = AD_Temp;
                        }

                    }
                }
                else
                {
                    if( ( F_LoadWork != False && GetADC.Vout_Lx == 0x00 ) || \
                        ( F_LoadWorkCh2 != False && GetADC.Vout_Lx == 0x01 ) || \
                        ( ( F_LoadWork != False && F_LoadWorkCh2 != False ) && GetADC.Vout_Lx == 0x80 ) )
                    {
                        SetLoadOpen;
                        openNewPage(PAGE_SMOKE);
                    }
                }
            }

		}
	}
}


/*******************************************************************************
 * \brief   void  PlugProgress(void)
 *          充电过程函数。
 * \param   [in]  void
 * \retval  void
 * \note	充满判断根据电池电压4.1V±0.03V	(无状态脚判断);
 * 			有状态脚判断：状态脚高电平+电池电压高于4.1V
 * 			充满电灭灯，无复充过程。
 ******************************************************************************/
void  PlugProgress(void)
{
	if(F_Charger != False)       //插入适配器
	{
		if(F_BatFull == False)	//未充满电 
		{
			if(GetADC.BatteryVoltage >= 3950)
			{
				if(GetADC.BatteryVoltage >= 4220 || CHRG_STATE_UP  || GetADC.BatteryPercent >= BatteryPercentMax)	//电池电压>4.20V 或状态脚变高电平
				{
					if(TimeCnt.RechgFullTime < 20)	
						TimeCnt.RechgFullTime++;
					else	//持续2S有效
					{
						TimeCnt.RechgFullTime = 0;
						SetBatFull;			//充满电		
					}
				}
				else	TimeCnt.RechgFullTime = 0;
			}   
			else	TimeCnt.RechgFullTime = 0;
		}
		else
		{
			if(DisplaySwitchNum == PAGE_POWER && GetADC.BatteryPercent == BatteryPercentMax)
			{
						
				GetADC.BatteryLevel = GetADC.BatteryPercent;	//保存显示的电量
		
				TimeCnt.RechgFullTime = 0;
									
			}
		}	
	}
	else	
	{
		if(DispayCount==0)
		{
			if(TimeCnt.SleepTime<SleepOutTime)	  //SleepOutTime 300ms*10ms
				TimeCnt.SleepTime++;
			else	
				ClrExeMode;     //休眠时间到转休眠模式
		}	
	}													     	
}