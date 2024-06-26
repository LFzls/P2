#include "tyw_led.h"
#include  	"init.h"
#include "tyw_page.h"
unsigned char  led_duty_cycles[LED_MATRIX_NUM_PINS][LED_MATRIX_NUM_PINS]={0};

uint8_t powerShowLv=0;
uint8_t oilShowLv=0;


//unsigned char  led_duty_cycles_tmp[LED_MATRIX_NUM_PINS]={0};

void* tyw_memset(void* ptr, uint8_t value, uint8_t num) 
{
    uint8_t* p = (uint8_t*)ptr;
    uint8_t i=0;
    for ( i = 0; i < num; i++) 
    {
        *(p+i) = (uint8_t)value;
    }
    return ptr;
}

// void* tyw_memcpy(void* dest, const void* src, uint8_t num) 
// {
//     uint8_t i=0;
//     uint8_t* d = (uint8_t*)dest;
//     const uint8_t* s = (const uint8_t*)src;
//     for ( i = 0; i < num; i++) {
//         d[i] = s[i];
//     }
//     return dest;
// }


#define ROWS 18
#define COLS 3
const uint8_t ledShowIndex[ROWS][COLS][2] =
{ 
    {{1,2},{1,3},{1,4}},
    {{1,5},{1,6},{1,7}},
    {{2,1},{2,3},{2,4}},
    {{2,5},{2,6},{2,7}},
    {{3,1},{3,2},{3,4}},
    {{3,5},{3,6},{3,7}},
    {{4,1},{4,2},{4,3}},
    {{4,5},{4,6},{4,7}},
    {{5,1},{5,2},{5,3}},
    {{5,4},{5,6},{5,7}},
    {{6,1},{6,2},{6,3}},
    {{6,4},{6,5},{6,7}},
    {{7,1},{7,2},{7,3}},
    {{7,4},{7,5},{7,6}},
    {{8,1},{8,2},{8,3}},
    {{8,4},{8,5},{8,6}},
    {{1,8},{2,8},{0,0}}, 
    {{8,7},{0,0},{0,0}},   
};



void led_matrix_run(void)
{
    static unsigned char  row = 0;
    uint8_t x = 0, y = 0;

    uint8_t rowCount = 0;
    
    //ClrScanLedOK;
    for (rowCount = 0; rowCount < LED_MATRIX_NUM_PINS; rowCount++)
    {
        led_set_io_od(rowCount);
    }
    
    for (rowCount = 0; rowCount < COLS; rowCount++)
    {

        if (ledShowIndex[row][rowCount][0] == 0)
            break;

        x = ledShowIndex[row][rowCount][0] - 1;
        y = ledShowIndex[row][rowCount][1] - 1;
       
        if(led_duty_cycles[x][y])
        {
            //led_set_io_pp(x, 0);        
            led_set_io_pp(y, 1);
        }
    }
    row++;
    if (row == ROWS)
    {
        row = 0;
    }

    //SetScanLedOK;
}
#if 0
void led_matrix_run2(void)
{
    static unsigned char cycle = 0, row = 0;
    static uint8_t scanType = 0;

    uint8_t rowCount = 0;
    uint8_t rowSet = 0;

    for (rowCount = (scanType == 0 ? 0 : 3); rowCount < (scanType == 0 ? 3 : 6); rowCount++)
    {
        if (row == rowCount)
            continue;
        if (cycle == led_duty_cycles_tmp[rowCount])
        {
            if(cycle!=0)
                led_set_io_od(rowCount);
        }
        else if (cycle == 0)
        {
            if (rowSet == 0)
            {
                led_set_io_pp(row, 0);
                rowSet = 1;
            }
            led_set_io_pp(rowCount, 1);
        }
        
        
    }
    
   
      cycle++;

    
    if (cycle == LED_PWM_CYCLES)
    {
        cycle = 0;
        for (rowCount = 0; rowCount < LED_MATRIX_NUM_PINS; rowCount++)
        {
            led_set_io_od(rowCount);
        }
        row++;
        if (row == LED_MATRIX_NUM_PINS)
        {
            row = 0;
            scanType = (scanType == 0) ? 1 : 0;
        }
        tyw_memcpy(led_duty_cycles_tmp, led_duty_cycles[row], sizeof(led_duty_cycles_tmp));

       
        
        for (rowCount = (scanType == 0 ? 0 : 3); rowCount < (scanType == 0 ? 3 : 6); rowCount++)
        {
            if (row == rowCount)
                continue;
            if (cycle == led_duty_cycles_tmp[rowCount])
            {
                if(cycle!=0)
                    led_set_io_od(rowCount);
            }
            else if (cycle == 0)
            {
                if (rowSet == 0)
                {
                    led_set_io_pp(row, 0);
                    rowSet = 1;
                }
                led_set_io_pp(rowCount, 1);
            }
            
            
        }
        
       
        cycle++;
        
        
        
    }

}
#endif
void led_set_io_od(uint8_t io_num) 
{
    switch(io_num)
    {
        case 0:
            LED_PIN_OD_1;
            break;
        case 1:
            LED_PIN_OD_2;
            break;
        case 2:
            LED_PIN_OD_3;
            break;
        case 3:
            LED_PIN_OD_4;
            break;
        case 4:
            LED_PIN_OD_5;
            break;
        case 5:
            LED_PIN_OD_6;
            break;
        case 6:
            LED_PIN_OD_7;
            break;
        case 7:
            LED_PIN_OD_8;
            break;
        
        default:
            break;
    }
}

//设置为推挽输出
void led_set_io_pp(uint8_t io_num,uint8_t type) 
{
    switch(io_num)
    {
        case 0:
            LED_PIN_PP_1(type);
            
            break;
        case 1:
            LED_PIN_PP_2(type);
            break;
        case 2:
            LED_PIN_PP_3(type);
            break;
        case 3:
            LED_PIN_PP_4(type);
            break;
        case 4:
            LED_PIN_PP_5(type);
            break;
        case 5:
            LED_PIN_PP_6(type);
            break;
        case 6:
            LED_PIN_PP_7(type);
            break;
        case 7:
            LED_PIN_PP_8(type);
            break;
        
        default:
            break;
    }
}

void led_show_clear(void)
{    
    tyw_memset(led_duty_cycles,0,sizeof(led_duty_cycles));
}

void led_show_set(void)
{    
    tyw_memset(led_duty_cycles,LED_PWM_CYCLES,sizeof(led_duty_cycles));
}


const uint8_t  font[10]={
	
	0x3F, // '0'
    0x06, // '1'
    0x5B, // '2'
    0x4F, // '3'
    0x66, // '4'
    0x6D, // '5'
    0x7D, // '6'
    0x07, // '7'
    0x7F, // '8'
    0x6F, // '9'
};

const uint8_t  numberIndex[LED_NUMBER_SHOW_MAX][7][2]=
{
    {{1,0},{2,0},{3,0},{4,0},{5,0},{6,0},{7,0}},
    {{0,1},{2,1},{3,1},{4,1},{5,1},{6,1},{7,1}},
    {{0,2},{1,2},{3,2},{4,2},{5,2},{6,2},{7,2}},
    {{0,3},{1,3},{2,3},{4,3},{5,3},{6,3},{7,3}},
};

void led_show_num(unsigned char id,unsigned char num)
{

    unsigned char ch;
    uint8_t i=0;
	if(num>9 || id>LED_NUMBER_SHOW_MAX)
		return ;
	ch= font[num];
	
    
    for(i=0;i<7;i++)
    {
        // if(ch &0x01==1)
        // {
        //     led_duty_cycles[numberIndex[id][i][0]][numberIndex[id][i][1]]=LED_PWM_CYCLES;
        // }
        // else
        // {
        //     led_duty_cycles[numberIndex[id][i][0]][numberIndex[id][i][1]]=0;
        // }
        led_duty_cycles[numberIndex[id][i][0]][numberIndex[id][i][1]] = (ch & 0x01) ? LED_PWM_CYCLES : 0;
        ch >>= 1;
    }
    

}


void showPowerBar(uint8_t lv)
{
    uint8_t i;
   
    for (i = 0; i < 7; ++i) 
    {
        led_duty_cycles[i][5]=0;  
    }
    
    switch (lv)
    {
        case 6:
            led_duty_cycles[6][5]=LED_PWM_CYCLES;
        case 5:
            led_duty_cycles[4][5]=LED_PWM_CYCLES;
        case 4:
            led_duty_cycles[3][5]=LED_PWM_CYCLES;
        case 3:
            led_duty_cycles[2][5]=LED_PWM_CYCLES;
        case 2:
            led_duty_cycles[1][5]=LED_PWM_CYCLES;
        case 1:
            led_duty_cycles[0][5]=LED_PWM_CYCLES;
            break;
        default:
            break;
    }
}

const uint8_t powerOilLevelBuf[]={16, 30, 44, 58, 72, 86, 100};
void led_show_power(uint8_t powerPercent)
{
    uint8_t tens=0;
    uint8_t ones=0;
    uint8_t level=0;
    if(powerPercent>=99)
    {
        led_duty_cycles[0][5]=LED_PWM_CYCLES;
        led_duty_cycles[1][5]=LED_PWM_CYCLES;
        led_duty_cycles[2][5]=LED_PWM_CYCLES;
        led_duty_cycles[3][5]=LED_PWM_CYCLES;
        led_duty_cycles[4][5]=LED_PWM_CYCLES;
        led_duty_cycles[6][5]=LED_PWM_CYCLES;

        led_show_num(2,9);
        led_show_num(3,9);
    }
    else
    {
        // // 提取十位
        // tens = (powerPercent / 10) % 10;
        // //提取个位
        // ones = powerPercent % 10;

        ones=powerPercent;
        for (tens = 0; tens < 10; tens++)
        {
            if (ones < 10)
                break;
            ones = ones - 10;
        }
        led_show_num(2,tens);
        led_show_num(3,ones);

       
        led_duty_cycles[0][5]=0;
        led_duty_cycles[1][5]=0;
        led_duty_cycles[2][5]=0;
        led_duty_cycles[3][5]=0;
        led_duty_cycles[4][5]=0;
        led_duty_cycles[6][5]=0;
    }
    for(level=0;level<7;level++)
    {
        if(powerPercent<powerOilLevelBuf[level])
            break;
    }
    
    if(level>6)
        level=6;

    powerShowLv=level;

   showPowerBar(level);
    
    if( F_Charger == True)
    {
        led_duty_cycles[7][5]=LED_PWM_CYCLES;
    }
    else
        led_duty_cycles[7][5]=0;

}
void showOilBar(uint8_t lv)
{
    uint8_t i;
    for (i = 0; i < 7; ++i) 
    {
        led_duty_cycles[i][4]=  0;  
    }



    switch (lv)
    {
        case 6:
            led_duty_cycles[6][4]=LED_PWM_CYCLES;
        case 5:
            led_duty_cycles[4][4]=LED_PWM_CYCLES;
        case 4:
            led_duty_cycles[3][4]=LED_PWM_CYCLES;
        case 3:
            led_duty_cycles[2][4]=LED_PWM_CYCLES;
        case 2:
            led_duty_cycles[1][4]=LED_PWM_CYCLES;
        case 1:
            led_duty_cycles[0][4]=LED_PWM_CYCLES;
            break;
        default:
            break;
    }
}
void led_show_oil(uint8_t  TobaccoOilPercent)
{
    uint8_t tens=0;
    uint8_t ones=0;
    uint8_t i=0;
    uint8_t level=0;
    if(TobaccoOilPercent>=99)
    {
        for (i = 0; i < 7; ++i) 
        {
            led_duty_cycles[i][4]=  LED_PWM_CYCLES;  
        }
        
        led_show_num(0,9);
        led_show_num(1,9);
    }
    else
    {
        // // 提取十位
        // tens = (TobaccoOilPercent / 10) % 10;;

        // // 提取个位
        // ones = TobaccoOilPercent % 10;
        
        ones=TobaccoOilPercent;
        for (tens = 0; tens < 10; tens++)
        {
            if (ones < 10)
                break;
            ones = ones - 10;
        }


        led_show_num(0,tens);
        led_show_num(1,ones);
        for (i = 0; i < 7; ++i) 
        {
            led_duty_cycles[i][4]=  0;  
        }
    }
    
    for(level=0;level<7;level++)
    {
        if(TobaccoOilPercent<powerOilLevelBuf[level])
            break;
    }
    if(level>6)
        level=6;
    oilShowLv=level;
    showOilBar(level);


    led_duty_cycles[7][4]=LED_PWM_CYCLES;
  
}

void showSmokeMode(void)
{
   uint8_t mode=0;
    static uint8_t oldMode=0;
     switch (GetADC.Vout_Lx)
    {
        case 0x00:
            mode=0;
            break;
        case 0x40:
            mode=1;
            break;
        case 0x80:
            mode=2;
            break;
    } 

    if(oldMode !=mode)
    {
        led_duty_cycles[0][6]=0;
        led_duty_cycles[1][6]=0;
        led_duty_cycles[2][6]=0;
        led_duty_cycles[3][6]=0;
        led_duty_cycles[4][6]=0;
        led_duty_cycles[5][6]=0;
        led_duty_cycles[7][6]=0;                
        led_duty_cycles[0][7]=0;
        led_duty_cycles[1][7]=0;
        oldMode=mode;
    }


    
    


    switch(mode)
    {
        case 0:
            led_duty_cycles[0][6]=LED_PWM_CYCLES;
            led_duty_cycles[1][6]=LED_PWM_CYCLES;
            led_duty_cycles[2][6]=LED_PWM_CYCLES;
            
            break;
        case 1:
            led_duty_cycles[3][6]=LED_PWM_CYCLES;
            led_duty_cycles[4][6]=LED_PWM_CYCLES;
            led_duty_cycles[5][6]=LED_PWM_CYCLES;
        break;
        case 2:
            led_duty_cycles[7][6]=LED_PWM_CYCLES;
            led_duty_cycles[0][7]=LED_PWM_CYCLES;
            led_duty_cycles[1][7]=LED_PWM_CYCLES;
        break;
        default:
        break;
    }
}       

#ifdef TEST_XIAO
void tyw_delay_ms(uint32_t ms);
void led_all_test(void)
{
    tyw_memset(led_duty_cycles,0,sizeof(led_duty_cycles));
    // uint8_t i=0;
    // led_show_num(0,1);
    // led_show_num(1,2);
    // led_show_num(2,3);
    // led_show_num(3,4);

    // showPowerBar(3);
    // showOilBar(3);
    //showBase() ;
    // led_show_power(99);
    // led_show_oil(99);
    return ;    
}



void tyw_delay_ms(uint32_t ms)
{
	unsigned int i;
	unsigned char delay_cnt;
	for(i = 0;i<ms;i++)
	{
		delay_cnt = 200;
		while(delay_cnt--)
		{
			Delay_16nop();
		}
	}
}

void led_one_test(uint8_t row,uint8_t cow)
{


    

}

void gpio_test(void)
{
    
    // while(1)
    // {
        
    //    if(PDMIC_DOWN)
    //    {
    //        led_show_num(0,1);
    //    }
    //    else
    //    {
    //        led_show_num(0,0);
    //    }

    //     if(PDKEY_DOWN)
    //    {
    //        led_show_num(1,1);
    //    }
    //    else
    //    {
    //        led_show_num(1,0);
    //    }

    //    if(CHARGER_IN)
    //    {
    //        led_show_num(2,1);
    //    }
    //    else
    //    {
    //        led_show_num(2,0);
    //    }
    //     asm("CLRWDT");
        
    // }
    
}
#endif
