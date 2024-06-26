#include "Func.h"
#include "tyw_page.h"
#include "tyw_led.h"
#include "tyw_uiEvent.h"




static uint32_t pageTime=0;

static uint8_t pageID=0;
static uint8_t pageIndex=0;

extern uint8_t oilPerCent;

extern uint8_t powerShowLv;
extern uint8_t oilShowLv;
void showBase(void)
{
    //显示电量  GetADC.BatteryPercent

    GetADC.BatteryPercent=100;

    led_show_power(GetADC.BatteryPercent);
    
    //显示油量    
   led_show_oil(oilPerCent);
    
    showSmokeMode();
}

void logPage(uint8_t firstUse)
{
    if(firstUse==True)
    {
        DispayCount=3;
        led_show_set();
    }    
}




void gearPage(uint8_t firstUse)
{
       
    if(firstUse==True)
    {
        DispayCount=3;
        led_show_clear();
        showBase() ;
    }

    showSmokeMode();

        
}
void smokePage(uint8_t firstUse)
{
   
    if(firstUse==True)
    {
        DispayCount=11;
        led_show_clear();
        showBase() ;
        pageTime=0;
        
    }

    pageTime++;

    // if(pageTime%5==1)
    // {
    //     if(pageID<=powerShowLv)
    //     {
    //         showPowerBar(pageID);
    //     }

    //     if(pageID<=oilShowLv)
    //     {
    //         showOilBar(pageID);
    //     }

    //     pageID++;
    //     if(pageID>powerShowLv+1 && pageID>oilShowLv+1)
    //     {
    //         pageID=0;
    //         showPowerBar(0);
    //         showOilBar(0);
    //     }
            
    // }



}

void smokeTimeOutPage(uint8_t firstUse)
{
    if(firstUse==True)
    {

    } 
     
}

void smokeProtecPage(uint8_t firstUse)
{
    
    
}

void lowPowerPage(uint8_t firstUse)
{
        
}

void powerChargePage(uint8_t firstUse)
{   
   
    if(firstUse==True)
    {
         
    }

    
    if(F_Charger)
        DispayCount=2;
    

}


void powerOffPage(uint8_t firstUse)
{   
    
   
}


