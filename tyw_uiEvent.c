#include "tyw_uiEvent.h"

#include "tyw_page.h"
#include "tyw_led.h"
uint8_t DisplaySwitchNum = PAGE_IDLE;
uint8_t oldDisplayPage = PAGE_IDLE;
uint8_t DispayCount = 0;
static uint8_t uieventTime=0;






#if 1


void openNewPage( uint8_t newPage )
{
    if(DisplaySwitchNum==newPage)
        return ;
    
    oldDisplayPage = PAGE_IDLE;  //PAGE_IDLE = 0
    DispayCount=5;
    DisplaySwitchNum = newPage;
}

void UIOneSecondEvent( void )
{

    if(DispayCount>10)
        DispayCount=10;
    if( DispayCount > 0 )//&& F_Charger == False ) // && UVWorkState==false
    {
        DispayCount--;
        if( DispayCount == 0 )
        {            
			DisplaySwitchNum = PAGE_WAIT_CLOSE;
			oldDisplayPage = DisplaySwitchNum;            
        }
    }
}

void UIEvent( void )
{
    uint8_t needUpdaeShow = False; 

    uieventTime++;
    if(uieventTime>=100) //1s
    {
        uieventTime=0;
        UIOneSecondEvent();
    }

    
    
	if( F_Charger == True && DisplaySwitchNum != PAGE_LOG )
    {
        DisplaySwitchNum = PAGE_POWER;
    } 
	
    if ( oldDisplayPage != DisplaySwitchNum )
    {
        needUpdaeShow = True;
        oldDisplayPage = DisplaySwitchNum;   
    }
    
    switch ( DisplaySwitchNum )
    {
        case PAGE_IDLE:
            break;
		case PAGE_LOG:
            smokePage(needUpdaeShow);    
			//logPage(needUpdaeShow);                
			break;
        case PAGE_GEAR_SWITCH:
            gearPage(needUpdaeShow); 
            break;
        case PAGE_SMOKE:
            smokePage(needUpdaeShow);
            break;
        // case PAGE_SHORT_PROTECTION:
        //     smokeProtecPage(needUpdaeShow);
        //     break;
        // case PAGE_SMOKE_TIMEOUT:
        //     smokeTimeOutPage(needUpdaeShow);
        //     break;
        // case PAGE_POWER:
        //     powerChargePage(needUpdaeShow);
        //     break;
        // case PAGE_LOW_POWER:
        //     lowPowerPage(needUpdaeShow);
        //     break;
        // case PAGE_POWER_OFF:
        //     powerOffPage(needUpdaeShow);
        //     break;

        case PAGE_WAIT_CLOSE:
            if( F_Charger == True )
            {
                DisplaySwitchNum = PAGE_POWER;
            }
            else
            {
                DispayCount = 0;
                DisplaySwitchNum = PAGE_IDLE;
                oldDisplayPage = DisplaySwitchNum;            
                led_show_clear();
            }
            break;
        // default:
        //     DisplaySwitchNum = PAGE_WAIT_CLOSE;
        //     break;
    }
    needUpdaeShow = False;
    
}
#endif


