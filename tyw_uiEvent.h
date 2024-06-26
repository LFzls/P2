#ifndef __TYW_UIEVENT_H__
#define __TYW_UIEVENT_H__

#include "Func.h"




extern uint8_t DispayCount;
extern uint8_t DisplaySwitchNum;

enum OlcdPage
{
    PAGE_IDLE,
    PAGE_LOG,
	PAGE_POWER_OFF,
   	PAGE_POWER_ON,
    PAGE_GEAR_SWITCH,
	PAGE_POWER,
	PAGE_USBIN,
	PAGE_USBOUT,
	PAGE_SMOKE,
	PAGE_SMOKE_TIMEOUT,
	PAGE_SHORT_PROTECTION,
	PAGE_LOW_POWER,
    PAGE_WAIT_CLOSE,	
	PAGE_TEST,

};

void UIEvent( void );
void openNewPage( uint8_t newPage );
void showTest(uint8_t i,uint8_t value);
#endif
