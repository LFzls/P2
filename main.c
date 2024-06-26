/******************************************************************************
 ** Function :	main.c 文件
 **
 ** Note: 
 **		1、负载阻值 0.60R以上 ；高档恒压 3.30V 输出，低档恒压 2.70V 输出 , 电池不足以提供输出时全功率输出
 **		2、按键连续短按2次，切换输出功率档位。 长按按键2S开关机。
 **		3、上电延时2S后再全部显示2S后再初始化电量。
 **		4、呼吸灯周期渐亮1S，停吸渐灭1S，数显显示保持吸烟时3S后熄灭。
 **		5、数显百分比小于10显示十位0。
 **		2023/10/20	初版	checksum:0x0D95 
 **
 **		1、输出档位调节显示、单次按键显示电量/油量/档位显示时 可正常开启吸烟输出。
 **     2023/10/24	初版	checksum:0x2DA0
 **
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
#include 	"tyw_uiEvent.h"
#include 	"tyw_led.h"
#include 	"tyw_uiEvent.h"
/******************************************************************************
 ** Global variable definitions (declared in header file with 'extern')
 ******************************************************************************/
const unsigned int  szTemp @0x0FFE=0;//Don't remove or remark this line.
FlagBits_TypeDef	SysInfoFlag;
FlagBits_TypeDef	LedsInfoFlag;
FlagBits_TypeDef	VoutInfoFlag;
Time_TypeDef		TimeCnt@0x0159;
ADC_TypeDef			GetADC;
volatile  uint16_t	FlagSmoke@0x0164;	//吸烟中标志寄存器


/*******************************************************************************
 * \brief   void main(void)
 *          主函数.
 * \param   [in]  void
 * \retval  void
 * \note	开启看门狗及时喂狗，否则溢出复位。
 ******************************************************************************/
void  main(void)
{			

	asm("CLRWDT");	// clear watchdog if watchdog enable
	INTIE	= 0x00;
	INTIE1	= 0x00;	//先禁止所有中断


    //---------------- 上电初始化 --------------------------
    SystemClockInit();  //初始化时钟	
    InitGpio();     //初始化IO口


#ifdef TEST_XIAO   //测试用

	// led_one_test(0,1);


	
	MCU_INIT_TIMER();	// 初始化TIMER
	led_all_test();
	//gpio_test();
	while(1)
	{
		asm("CLRWDT");
	}

#endif


	Init_BOD_WDT();	 //看门狗、LVD初始化函数
#if PWMx_EN
	InitPWM((LED_DUTY_PERI_MAX-1),LED_DUTY_PERI_MAX,0x00);	//初始化灭灯PWM---RGB
#endif
	MCU_INIT_TIMER();	// 初始化TIMER

	//上电变量初始化部分
    if(FlagSmoke == 0xA55A)	//短路发生复位
 	{
        SetFiring;  //吸烟/点火状态标志位 bit=set
		ClrEnSmoke; //吸烟触发标志位      bit=clr
		KeyUpStopSmoke();  //按键/咪头松开停止吸烟处理函数
		openNewPage(PAGE_SHORT_PROTECTION);  //10 
		if(CHARGER_IN)	SetCharger;	//USB插入，充电中		
		if(PDMIC_DOWN)  ReadPort.ScanOld |= 0x01;	//置位咪头状态
		//if(PDKEY_DOWN)  ReadPort.ScanOld |= 0x02;	//置位按键状态			  		
        ReadPort.KeyState = 0x00;
        ReadPort.KeyNum = 0;	
        ClrResetFlag;
        TimeCnt.SleepTime = 0;	//更新休眠时间
		SetExeMode;		//唤醒状态
 	}
 	else
 	{       
 		ClearAllRAM();	//清RAM
		GetADC.Vout_Lx = 0x00;	//默认高输出档位
		TimeCnt.SmokeTime = OilTime_100_100;	//总吸烟时长 2500s
		oilPerCent=100;
		openNewPage(PAGE_LOG);  //PAGE_LOG
		SetResetFlag;	//上电闪灯期间不检测系统状态  		      		
 	}

	while(1)
	{
		if(F_Cnt10ms != False)	//10ms执行一次
		{
			ClrFlag10ms;	//清标志，10ms重新计时
			asm("CLRWDT");	// clear watchdog if watchdog enable

			GetADC.BatteryVoltage = HAL_ADC_Sample(ADC_CH_IBAT,True/*False*/);	//采样电池电压
			GetADC.BatteryVoltage = 4915200/GetADC.BatteryVoltage;  //1.20*1000*4096/AD值			 
			UpdateElectricityGrade();   //更新电池电压/电量  

			if(F_ResetFlag == False)	//上电闪灯状态标志位 上电闪完灯后执行  
			{	
				if(F_Firing != False)	//吸烟状态下执行
				{
					if(GetADC.BatteryVoltage < 2800)  GetADC.LowVolCnt++;	//工作中检测低电3.00V
					else   GetADC.LowVolCnt = 0; 

                    if(TimeCnt.SmokeTask < 0xEA60/*60000*/)     
                    {
                        TimeCnt.SmokeTask++;    //吸烟计时，最大时间600S,不循环计时
                        if(TimeCnt.SmokeTask >= OUT_PWM_100_TIME) //此处设置从开始有(OUT_PWM_100_TIME*10ms)的直通输出后才斩波
                        {
                            //在斩波有输出的期间才获取电池电压值，电池电压输出拉低时。
                            //电池电压VDD(mV)=1.20V*1000*4096/AD(BAT)；
                            if(F_LoadWork != False)  GetADC.VoutVDD = GetADC.BatteryVoltage;
                        }
                    
                    }
				}
				else
				{									
					ReadChargerState();		//充电检测
                    PlugProgress();    		//充电过程
				}
				// ScanLoadUpDown();	//检测接入拔除负载							
				PortScan();   //按键、咪头扫描
			}
						
			UIEvent();				
		}

	    if(F_ExeMode != False)	
			PowerProgress();    //吸烟模式
	    else	
			IdleProgress();     //空闲、休眠模式			
	}
}
/*******************************************************************************
 * \brief   void  interrupt  Interrupt_ISR(void)  @0x04
 * 			中断服务函数
 * \param   [in]  void
 * \retval  void
 * \note	11个中断源   1级中断优先级
 *          只有INT0、INT1、INT2 外部引脚中断(可以唤醒暂停/停止模式)
 * 			引脚变化可唤醒暂停/停止模式，没有中断源
 ******************************************************************************/

uint8_t testBit=0;
void  interrupt  Interrupt_ISR(void)    
{
	if(CMPIF != False)	//Comparator中断
	{
		if(F_Firing != False && F_LoadShort == False)
		{	
			PWMPD_OFF;	 //关闭输出
			PWMPD_CH2_OFF;
			SetLoadShort;		
		}

		CMPIF = Clr;	//清Comparator中断标志 	 	
	}		
	else if(LVDIF != False)	//LVD中断
	{
		if(((F_Firing != False) || (LVDIE != False)) && F_LoadShort == False)
		{	
			PWMPD_OFF;	 //关闭输出
			PWMPD_CH2_OFF;
			SetLoadShort;		
		}
		LVDIF = Clr;	//清LVD中断标志 	
	}
	else if(TM0IF != False)	//TIMER0中断	//可重载定时器初值
	{
		TimeCnt.TimeBase++;
		if(TimeCnt.TimeBase >= 100)	//计时10ms,任务倒计时
		{
			TimeCnt.TimeBase = 0;	//10ms时间到,清零重新开始计时
			SetFlag10ms;	//置位10ms时间标志
		}

		// if(F_Firing != False && F_LoadShort == False)	SmokeOut();    //吸烟输出
		led_matrix_run();
		if(testBit)
		{
			PBD1=0;
			testBit=0;
		}
		else
		{
			PBD1=1;
			testBit=1;
		}
			


		TM0IF = Clr;	//清TIMER0中断标志
	}
	else if(INT0IF != False)	//INT0 interrupt vector  //外部中断0
	{
		INT0IF = Clr;	//清INT0中断标志
	}
	else if(INT1IF != False)	//INT1 interrupt vector  //外部中断1
	{
		INT1IF = Clr;	//清INT1中断标志
	}
	else if(INT2IF != False)	//INT2 interrupt vector  //外部中断2
	{
		INT2IF = Clr;	//清INT2中断标志
	}
    else if (WKTIF != False)  //WKT中断标志
    {
        WKTIF = Clr;    //清除定时唤醒定时器WKT中断标志,写0清除/写1无效
    } 	
}


