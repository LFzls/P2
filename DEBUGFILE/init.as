opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 10920"

opt pagewidth 120

	opt pm

	processor	16F883
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_SystemClockInit
	FNCALL	_main,_InitGpio
	FNCALL	_main,_Init_BOD_WDT
	FNCALL	_main,_MCU_INIT_TIMER
	FNCALL	_main,_KeyUpStopSmoke
	FNCALL	_main,_openNewPage
	FNCALL	_main,_ClearAllRAM
	FNCALL	_main,_HAL_ADC_Sample
	FNCALL	_main,___aldiv
	FNCALL	_main,_UpdateElectricityGrade
	FNCALL	_main,_ReadChargerState
	FNCALL	_main,_PlugProgress
	FNCALL	_main,_PortScan
	FNCALL	_main,_UIEvent
	FNCALL	_main,_PowerProgress
	FNCALL	_main,_IdleProgress
	FNCALL	_UIEvent,_UIOneSecondEvent
	FNCALL	_UIEvent,_smokePage
	FNCALL	_UIEvent,_gearPage
	FNCALL	_UIEvent,_led_show_clear
	FNCALL	_smokePage,_led_show_clear
	FNCALL	_smokePage,_showBase
	FNCALL	_gearPage,_led_show_clear
	FNCALL	_gearPage,_showBase
	FNCALL	_gearPage,_showSmokeMode
	FNCALL	_showBase,_led_show_power
	FNCALL	_showBase,_led_show_oil
	FNCALL	_showBase,_showSmokeMode
	FNCALL	_led_show_oil,_led_show_num
	FNCALL	_led_show_oil,_showOilBar
	FNCALL	_led_show_power,_led_show_num
	FNCALL	_led_show_power,_showPowerBar
	FNCALL	_IdleProgress,_EnterSleep
	FNCALL	_PowerProgress,_openNewPage
	FNCALL	_PowerProgress,_KeyUpStopSmoke
	FNCALL	_PowerProgress,_HAL_ADC_Sample
	FNCALL	_PowerProgress,___aldiv
	FNCALL	_PowerProgress,___lmul
	FNCALL	_PowerProgress,___lldiv
	FNCALL	_PortScan,_gearSwitch
	FNCALL	_PortScan,_KeyUpStopSmoke
	FNCALL	_PortScan,_openNewPage
	FNCALL	_led_show_num,___bmul
	FNCALL	_led_show_clear,_tyw_memset
	FNCALL	_EnterSleep,_InitGpio
	FNCALL	_EnterSleep,_Delay_16nop
	FNCALL	_EnterSleep,_Init_BOD_WDT
	FNCALL	_EnterSleep,_MCU_INIT_TIMER
	FNCALL	_ReadChargerState,_openNewPage
	FNCALL	_KeyUpStopSmoke,___lwdiv
	FNCALL	_KeyUpStopSmoke,___wmul
	FNCALL	_KeyUpStopSmoke,___lmul
	FNCALL	_KeyUpStopSmoke,___lldiv
	FNCALL	_gearSwitch,_openNewPage
	FNCALL	_SystemClockInit,_Delay_16nop
	FNROOT	_main
	FNCALL	_Interrupt_ISR,_led_matrix_run
	FNCALL	_led_matrix_run,_led_set_io_od
	FNCALL	_led_matrix_run,i1___bmul
	FNCALL	_led_matrix_run,_led_set_io_pp
	FNCALL	intlevel1,_Interrupt_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_D_BatVol_Table
psect	stringtext,class=STRCODE,delta=2,reloc=256
global __pstringtext
__pstringtext:
;	global	stringtab,__stringbase
stringtab:
;	String table - string pointers are 2 bytes each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:
	movf btemp+1,w
andlw 7Fh
movwf	pclath
	movf	fsr,w
incf fsr
skipnz
incf btemp+1
	movwf pc
__stringbase:
	file	"D:\资料\P2\P2code_0429\code\modular.c"
	line	22
_D_BatVol_Table:
	retlw	0E4h
	retlw	0Ch

	retlw	0F2h
	retlw	0Ch

	retlw	0
	retlw	0Dh

	retlw	0Eh
	retlw	0Dh

	retlw	01Ch
	retlw	0Dh

	retlw	02Ah
	retlw	0Dh

	retlw	038h
	retlw	0Dh

	retlw	046h
	retlw	0Dh

	retlw	054h
	retlw	0Dh

	retlw	062h
	retlw	0Dh

	retlw	070h
	retlw	0Dh

	retlw	07Ah
	retlw	0Dh

	retlw	084h
	retlw	0Dh

	retlw	08Eh
	retlw	0Dh

	retlw	098h
	retlw	0Dh

	retlw	0A2h
	retlw	0Dh

	retlw	0ACh
	retlw	0Dh

	retlw	0B6h
	retlw	0Dh

	retlw	0C0h
	retlw	0Dh

	retlw	0CAh
	retlw	0Dh

	retlw	0D4h
	retlw	0Dh

	retlw	0DEh
	retlw	0Dh

	retlw	0E8h
	retlw	0Dh

	retlw	0F2h
	retlw	0Dh

	retlw	0FCh
	retlw	0Dh

	retlw	06h
	retlw	0Eh

	retlw	010h
	retlw	0Eh

	retlw	01Ah
	retlw	0Eh

	retlw	024h
	retlw	0Eh

	retlw	02Eh
	retlw	0Eh

	retlw	038h
	retlw	0Eh

	retlw	03Ch
	retlw	0Eh

	retlw	040h
	retlw	0Eh

	retlw	044h
	retlw	0Eh

	retlw	048h
	retlw	0Eh

	retlw	04Ch
	retlw	0Eh

	retlw	050h
	retlw	0Eh

	retlw	054h
	retlw	0Eh

	retlw	058h
	retlw	0Eh

	retlw	05Ch
	retlw	0Eh

	retlw	060h
	retlw	0Eh

	retlw	064h
	retlw	0Eh

	retlw	068h
	retlw	0Eh

	retlw	06Ch
	retlw	0Eh

	retlw	070h
	retlw	0Eh

	retlw	074h
	retlw	0Eh

	retlw	078h
	retlw	0Eh

	retlw	07Ch
	retlw	0Eh

	retlw	080h
	retlw	0Eh

	retlw	084h
	retlw	0Eh

	retlw	088h
	retlw	0Eh

	retlw	08Ch
	retlw	0Eh

	retlw	090h
	retlw	0Eh

	retlw	094h
	retlw	0Eh

	retlw	098h
	retlw	0Eh

	retlw	09Ch
	retlw	0Eh

	retlw	0A0h
	retlw	0Eh

	retlw	0A4h
	retlw	0Eh

	retlw	0A8h
	retlw	0Eh

	retlw	0ACh
	retlw	0Eh

	retlw	0B0h
	retlw	0Eh

	retlw	0B4h
	retlw	0Eh

	retlw	0B8h
	retlw	0Eh

	retlw	0BCh
	retlw	0Eh

	retlw	0C0h
	retlw	0Eh

	retlw	0C4h
	retlw	0Eh

	retlw	0C8h
	retlw	0Eh

	retlw	0CCh
	retlw	0Eh

	retlw	0D0h
	retlw	0Eh

	retlw	0D4h
	retlw	0Eh

	retlw	0D8h
	retlw	0Eh

	retlw	0E2h
	retlw	0Eh

	retlw	0ECh
	retlw	0Eh

	retlw	0F6h
	retlw	0Eh

	retlw	0
	retlw	0Fh

	retlw	0Ah
	retlw	0Fh

	retlw	014h
	retlw	0Fh

	retlw	01Eh
	retlw	0Fh

	retlw	028h
	retlw	0Fh

	retlw	032h
	retlw	0Fh

	retlw	03Ch
	retlw	0Fh

	retlw	046h
	retlw	0Fh

	retlw	050h
	retlw	0Fh

	retlw	05Ah
	retlw	0Fh

	retlw	064h
	retlw	0Fh

	retlw	06Eh
	retlw	0Fh

	retlw	078h
	retlw	0Fh

	retlw	082h
	retlw	0Fh

	retlw	08Ch
	retlw	0Fh

	retlw	096h
	retlw	0Fh

	retlw	0A0h
	retlw	0Fh

	retlw	0A5h
	retlw	0Fh

	retlw	0AAh
	retlw	0Fh

	retlw	0AFh
	retlw	0Fh

	retlw	0B4h
	retlw	0Fh

	retlw	0B9h
	retlw	0Fh

	retlw	0BEh
	retlw	0Fh

	retlw	0C3h
	retlw	0Fh

	retlw	0C8h
	retlw	0Fh

	retlw	0CDh
	retlw	0Fh

	retlw	02Ch
	retlw	010h

	global	_ledShowIndex
psect	stringtext
	file	"D:\资料\P2\P2code_0429\code\tyw_led.c"
	line	37
_ledShowIndex:
	retlw	01h
	retlw	02h
	retlw	01h
	retlw	03h
	retlw	01h
	retlw	04h
	retlw	01h
	retlw	05h
	retlw	01h
	retlw	06h
	retlw	01h
	retlw	07h
	retlw	02h
	retlw	01h
	retlw	02h
	retlw	03h
	retlw	02h
	retlw	04h
	retlw	02h
	retlw	05h
	retlw	02h
	retlw	06h
	retlw	02h
	retlw	07h
	retlw	03h
	retlw	01h
	retlw	03h
	retlw	02h
	retlw	03h
	retlw	04h
	retlw	03h
	retlw	05h
	retlw	03h
	retlw	06h
	retlw	03h
	retlw	07h
	retlw	04h
	retlw	01h
	retlw	04h
	retlw	02h
	retlw	04h
	retlw	03h
	retlw	04h
	retlw	05h
	retlw	04h
	retlw	06h
	retlw	04h
	retlw	07h
	retlw	05h
	retlw	01h
	retlw	05h
	retlw	02h
	retlw	05h
	retlw	03h
	retlw	05h
	retlw	04h
	retlw	05h
	retlw	06h
	retlw	05h
	retlw	07h
	retlw	06h
	retlw	01h
	retlw	06h
	retlw	02h
	retlw	06h
	retlw	03h
	retlw	06h
	retlw	04h
	retlw	06h
	retlw	05h
	retlw	06h
	retlw	07h
	retlw	07h
	retlw	01h
	retlw	07h
	retlw	02h
	retlw	07h
	retlw	03h
	retlw	07h
	retlw	04h
	retlw	07h
	retlw	05h
	retlw	07h
	retlw	06h
	retlw	08h
	retlw	01h
	retlw	08h
	retlw	02h
	retlw	08h
	retlw	03h
	retlw	08h
	retlw	04h
	retlw	08h
	retlw	05h
	retlw	08h
	retlw	06h
	retlw	01h
	retlw	08h
	retlw	02h
	retlw	08h
	retlw	0
	retlw	0
	retlw	08h
	retlw	07h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	global	_numberIndex
psect	stringtext
	file	"D:\资料\P2\P2code_0429\code\tyw_led.c"
	line	275
_numberIndex:
	retlw	01h
	retlw	0
	retlw	02h
	retlw	0
	retlw	03h
	retlw	0
	retlw	04h
	retlw	0
	retlw	05h
	retlw	0
	retlw	06h
	retlw	0
	retlw	07h
	retlw	0
	retlw	0
	retlw	01h
	retlw	02h
	retlw	01h
	retlw	03h
	retlw	01h
	retlw	04h
	retlw	01h
	retlw	05h
	retlw	01h
	retlw	06h
	retlw	01h
	retlw	07h
	retlw	01h
	retlw	0
	retlw	02h
	retlw	01h
	retlw	02h
	retlw	03h
	retlw	02h
	retlw	04h
	retlw	02h
	retlw	05h
	retlw	02h
	retlw	06h
	retlw	02h
	retlw	07h
	retlw	02h
	retlw	0
	retlw	03h
	retlw	01h
	retlw	03h
	retlw	02h
	retlw	03h
	retlw	04h
	retlw	03h
	retlw	05h
	retlw	03h
	retlw	06h
	retlw	03h
	retlw	07h
	retlw	03h
	global	_font
psect	stringtext
	file	"D:\资料\P2\P2code_0429\code\tyw_led.c"
	line	261
_font:
	retlw	03Fh
	retlw	06h
	retlw	05Bh
	retlw	04Fh
	retlw	066h
	retlw	06Dh
	retlw	07Dh
	retlw	07h
	retlw	07Fh
	retlw	06Fh
	global	_powerOilLevelBuf
psect	stringtext
	file	"D:\资料\P2\P2code_0429\code\tyw_led.c"
	line	340
_powerOilLevelBuf:
	retlw	010h
	retlw	01Eh
	retlw	02Ch
	retlw	03Ah
	retlw	048h
	retlw	056h
	retlw	064h
	global	_szTemp
	global	_szTemp_absaddr
_szTemp_absaddr	set	0xFFE
	global	_D_BatVol_Table
	global	_ledShowIndex
	global	_numberIndex
	global	_font
	global	_powerOilLevelBuf
	global	_szTemp
	global	_szTemp_absaddr
_szTemp_absaddr	set	0xFFE
psect	_szTemp_text,class=CODE,delta=2
global __p_szTemp_text
__p_szTemp_text:
_szTemp:
	retlw	0
	retlw	0

	global	_RunPWM
	global	_heatVol
	global	_heatVolSet
	global	_DispayCount
	global	_DisplaySwitchNum
	global	_LedsInfoFlag
	global	_Over_Current_Cnt
	global	_SysInfoFlag
	global	_VoutInfoFlag
	global	_oilPerCent
	global	_oldDisplayPage
	global	_testBit
	global	_uieventTime
	global	led_matrix_run@row
	global	showSmokeMode@oldMode
	global	_ReadPort
	global	_GetADC
	global	_led_duty_cycles
	global	_TimeCnt
_TimeCnt	set	345
	DABS	1,345,11	;_TimeCnt

	global	_ADCDH
_ADCDH	set	23
	global	_ADCTL
_ADCTL	set	24
	global	_ADCTL2
_ADCTL2	set	25
	global	_CLKCTL
_CLKCTL	set	15
	global	_FSR
_FSR	set	4
	global	_INDF
_INDF	set	0
	global	_INTIE
_INTIE	set	11
	global	_INTIE1
_INTIE1	set	13
	global	_LVCTL
_LVCTL	set	22
	global	_PAD
_PAD	set	5
	global	_PBD
_PBD	set	6
	global	_PDD
_PDD	set	7
	global	_T2CTL
_T2CTL	set	21
	global	_TM0
_TM0	set	1
	global	_TM0CTL
_TM0CTL	set	17
	global	_TM0RLD
_TM0RLD	set	16
	global	_TM1
_TM1	set	18
	global	_TM1CTL
_TM1CTL	set	20
	global	_TM1RLD
_TM1RLD	set	19
	global	_ADST
_ADST	set	195
	global	_CMPIF
_CMPIF	set	116
	global	_INT0IF
_INT0IF	set	96
	global	_INT1IF
_INT1IF	set	97
	global	_INT2IF
_INT2IF	set	98
	global	_IRP
_IRP	set	31
	global	_LVDIE
_LVDIE	set	104
	global	_LVDIF
_LVDIF	set	112
	global	_PAD2
_PAD2	set	42
	global	_PAD3
_PAD3	set	43
	global	_PAD4
_PAD4	set	44
	global	_PAD5
_PAD5	set	45
	global	_PAD6
_PAD6	set	46
	global	_PAD7
_PAD7	set	47
	global	_PBD0
_PBD0	set	48
	global	_PBD1
_PBD1	set	49
	global	_PBD2
_PBD2	set	50
	global	_PBD3
_PBD3	set	51
	global	_PBD4
_PBD4	set	52
	global	_PBD5
_PBD5	set	53
	global	_PBD6
_PBD6	set	54
	global	_PBD7
_PBD7	set	55
	global	_PDD0
_PDD0	set	56
	global	_PDD1
_PDD1	set	57
	global	_RP0
_RP0	set	29
	global	_RP1
_RP1	set	30
	global	_T2IE
_T2IE	set	94
	global	_T2IF
_T2IF	set	102
	global	_TM0IE
_TM0IE	set	92
	global	_TM0IF
_TM0IF	set	100
	global	_TM1IE
_TM1IE	set	93
	global	_TM1IF
_TM1IF	set	101
	global	_WKTIE
_WKTIE	set	91
	global	_WKTIF
_WKTIF	set	99
	global	_OPTION
_OPTION	set	129
	global	_PAMOD10
_PAMOD10	set	133
	global	_PAMOD32
_PAMOD32	set	134
	global	_PAMOD54
_PAMOD54	set	135
	global	_PAMOD76
_PAMOD76	set	136
	global	_PBMOD10
_PBMOD10	set	140
	global	_PBMOD32
_PBMOD32	set	141
	global	_PBMOD54
_PBMOD54	set	142
	global	_PBMOD76
_PBMOD76	set	143
	global	_PDMOD10
_PDMOD10	set	144
	global	_PINMOD
_PINMOD	set	261
	global	_FlagSmoke
_FlagSmoke	set	356
	DABS	1,356,2	;_FlagSmoke

	file	"DEBUGFILE\init.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_RunPWM:
       ds      5

_heatVol:
       ds      2

_heatVolSet:
       ds      2

_DispayCount:
       ds      1

_DisplaySwitchNum:
       ds      1

_LedsInfoFlag:
       ds      1

_Over_Current_Cnt:
       ds      1

_SysInfoFlag:
       ds      1

_VoutInfoFlag:
       ds      1

_oilPerCent:
       ds      1

_oldDisplayPage:
       ds      1

_testBit:
       ds      1

_uieventTime:
       ds      1

led_matrix_run@row:
       ds      1

showSmokeMode@oldMode:
       ds      1

_GetADC:
       ds      22

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_ReadPort:
       ds      9

_led_duty_cycles:
       ds      64

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+02Bh)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+049h)
	fcall	clear_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_openNewPage
?_openNewPage:	; 0 bytes @ 0x0
	global	?_KeyUpStopSmoke
?_KeyUpStopSmoke:	; 0 bytes @ 0x0
	global	?_UpdateElectricityGrade
?_UpdateElectricityGrade:	; 0 bytes @ 0x0
	global	?_PlugProgress
?_PlugProgress:	; 0 bytes @ 0x0
	global	?_UIEvent
?_UIEvent:	; 0 bytes @ 0x0
	global	?_PowerProgress
?_PowerProgress:	; 0 bytes @ 0x0
	global	?_IdleProgress
?_IdleProgress:	; 0 bytes @ 0x0
	global	?_led_matrix_run
?_led_matrix_run:	; 0 bytes @ 0x0
	global	?_EnterSleep
?_EnterSleep:	; 0 bytes @ 0x0
	global	?_led_set_io_od
?_led_set_io_od:	; 0 bytes @ 0x0
	global	??_led_set_io_od
??_led_set_io_od:	; 0 bytes @ 0x0
	global	?_led_set_io_pp
?_led_set_io_pp:	; 0 bytes @ 0x0
	global	?_Delay_16nop
?_Delay_16nop:	; 0 bytes @ 0x0
	global	?_SystemClockInit
?_SystemClockInit:	; 0 bytes @ 0x0
	global	?_Init_BOD_WDT
?_Init_BOD_WDT:	; 0 bytes @ 0x0
	global	?_InitGpio
?_InitGpio:	; 0 bytes @ 0x0
	global	?_MCU_INIT_TIMER
?_MCU_INIT_TIMER:	; 0 bytes @ 0x0
	global	?_ClearAllRAM
?_ClearAllRAM:	; 0 bytes @ 0x0
	global	?_gearSwitch
?_gearSwitch:	; 0 bytes @ 0x0
	global	?_PortScan
?_PortScan:	; 0 bytes @ 0x0
	global	?_ReadChargerState
?_ReadChargerState:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_Interrupt_ISR
?_Interrupt_ISR:	; 0 bytes @ 0x0
	global	?_led_show_clear
?_led_show_clear:	; 0 bytes @ 0x0
	global	?_showPowerBar
?_showPowerBar:	; 0 bytes @ 0x0
	global	?_led_show_power
?_led_show_power:	; 0 bytes @ 0x0
	global	?_showOilBar
?_showOilBar:	; 0 bytes @ 0x0
	global	?_led_show_oil
?_led_show_oil:	; 0 bytes @ 0x0
	global	?_showSmokeMode
?_showSmokeMode:	; 0 bytes @ 0x0
	global	?_showBase
?_showBase:	; 0 bytes @ 0x0
	global	?_gearPage
?_gearPage:	; 0 bytes @ 0x0
	global	?_smokePage
?_smokePage:	; 0 bytes @ 0x0
	global	?_UIOneSecondEvent
?_UIOneSecondEvent:	; 0 bytes @ 0x0
	global	?i1___bmul
?i1___bmul:	; 1 bytes @ 0x0
	global	led_set_io_od@io_num
led_set_io_od@io_num:	; 1 bytes @ 0x0
	global	led_set_io_pp@type
led_set_io_pp@type:	; 1 bytes @ 0x0
	global	i1___bmul@multiplicand
i1___bmul@multiplicand:	; 1 bytes @ 0x0
	ds	1
	global	??_led_set_io_pp
??_led_set_io_pp:	; 0 bytes @ 0x1
	global	??i1___bmul
??i1___bmul:	; 0 bytes @ 0x1
	global	led_set_io_pp@io_num
led_set_io_pp@io_num:	; 1 bytes @ 0x1
	global	i1___bmul@multiplier
i1___bmul@multiplier:	; 1 bytes @ 0x1
	ds	1
	global	i1___bmul@product
i1___bmul@product:	; 1 bytes @ 0x2
	ds	1
	global	??_led_matrix_run
??_led_matrix_run:	; 0 bytes @ 0x3
	ds	4
	global	led_matrix_run@x
led_matrix_run@x:	; 1 bytes @ 0x7
	ds	1
	global	led_matrix_run@y
led_matrix_run@y:	; 1 bytes @ 0x8
	ds	1
	global	led_matrix_run@rowCount
led_matrix_run@rowCount:	; 1 bytes @ 0x9
	ds	1
	global	??_Interrupt_ISR
??_Interrupt_ISR:	; 0 bytes @ 0xA
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_openNewPage
??_openNewPage:	; 0 bytes @ 0x0
	global	??_UpdateElectricityGrade
??_UpdateElectricityGrade:	; 0 bytes @ 0x0
	global	??_PlugProgress
??_PlugProgress:	; 0 bytes @ 0x0
	global	??_IdleProgress
??_IdleProgress:	; 0 bytes @ 0x0
	global	??_EnterSleep
??_EnterSleep:	; 0 bytes @ 0x0
	global	??_Delay_16nop
??_Delay_16nop:	; 0 bytes @ 0x0
	global	??_SystemClockInit
??_SystemClockInit:	; 0 bytes @ 0x0
	global	??_Init_BOD_WDT
??_Init_BOD_WDT:	; 0 bytes @ 0x0
	global	??_InitGpio
??_InitGpio:	; 0 bytes @ 0x0
	global	??_MCU_INIT_TIMER
??_MCU_INIT_TIMER:	; 0 bytes @ 0x0
	global	??_ClearAllRAM
??_ClearAllRAM:	; 0 bytes @ 0x0
	global	??_showPowerBar
??_showPowerBar:	; 0 bytes @ 0x0
	global	??_showOilBar
??_showOilBar:	; 0 bytes @ 0x0
	global	??_showSmokeMode
??_showSmokeMode:	; 0 bytes @ 0x0
	global	??_UIOneSecondEvent
??_UIOneSecondEvent:	; 0 bytes @ 0x0
	global	?_tyw_memset
?_tyw_memset:	; 1 bytes @ 0x0
	global	?___bmul
?___bmul:	; 1 bytes @ 0x0
	global	?_HAL_ADC_Sample
?_HAL_ADC_Sample:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___lmul
?___lmul:	; 4 bytes @ 0x0
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0x0
	global	HAL_ADC_Sample@Filter
HAL_ADC_Sample@Filter:	; 1 bytes @ 0x0
	global	tyw_memset@value
tyw_memset@value:	; 1 bytes @ 0x0
	global	showSmokeMode@mode
showSmokeMode@mode:	; 1 bytes @ 0x0
	global	openNewPage@newPage
openNewPage@newPage:	; 1 bytes @ 0x0
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x0
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x0
	ds	1
	global	??_gearSwitch
??_gearSwitch:	; 0 bytes @ 0x1
	global	??_ReadChargerState
??_ReadChargerState:	; 0 bytes @ 0x1
	global	??___bmul
??___bmul:	; 0 bytes @ 0x1
	global	tyw_memset@num
tyw_memset@num:	; 1 bytes @ 0x1
	global	showPowerBar@lv
showPowerBar@lv:	; 1 bytes @ 0x1
	global	showOilBar@lv
showOilBar@lv:	; 1 bytes @ 0x1
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x1
	ds	1
	global	??_HAL_ADC_Sample
??_HAL_ADC_Sample:	; 0 bytes @ 0x2
	global	??_tyw_memset
??_tyw_memset:	; 0 bytes @ 0x2
	global	showPowerBar@i
showPowerBar@i:	; 1 bytes @ 0x2
	global	showOilBar@i
showOilBar@i:	; 1 bytes @ 0x2
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	ds	1
	global	?_led_show_num
?_led_show_num:	; 0 bytes @ 0x3
	global	tyw_memset@ptr
tyw_memset@ptr:	; 1 bytes @ 0x3
	global	led_show_num@num
led_show_num@num:	; 1 bytes @ 0x3
	global	UpdateElectricityGrade@temp_TimeUp
UpdateElectricityGrade@temp_TimeUp:	; 2 bytes @ 0x3
	ds	1
	global	??_led_show_num
??_led_show_num:	; 0 bytes @ 0x4
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	HAL_ADC_Sample@ADC_CHx
HAL_ADC_Sample@ADC_CHx:	; 1 bytes @ 0x4
	global	tyw_memset@p
tyw_memset@p:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x4
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x4
	ds	1
	global	UpdateElectricityGrade@temp_Percent
UpdateElectricityGrade@temp_Percent:	; 1 bytes @ 0x5
	global	tyw_memset@i
tyw_memset@i:	; 1 bytes @ 0x5
	global	HAL_ADC_Sample@Value_Sum
HAL_ADC_Sample@Value_Sum:	; 2 bytes @ 0x5
	ds	1
	global	??_led_show_clear
??_led_show_clear:	; 0 bytes @ 0x6
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x6
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x6
	ds	1
	global	HAL_ADC_Sample@i_max
HAL_ADC_Sample@i_max:	; 1 bytes @ 0x7
	ds	1
	global	??___lmul
??___lmul:	; 0 bytes @ 0x8
	global	??___aldiv
??___aldiv:	; 0 bytes @ 0x8
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x8
	global	HAL_ADC_Sample@Value_Min
HAL_ADC_Sample@Value_Min:	; 2 bytes @ 0x8
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x8
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x8
	ds	1
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x9
	ds	1
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0xA
	global	HAL_ADC_Sample@Value_Max
HAL_ADC_Sample@Value_Max:	; 2 bytes @ 0xA
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0xA
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0xA
	ds	2
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0xC
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0xC
	global	HAL_ADC_Sample@Value
HAL_ADC_Sample@Value:	; 2 bytes @ 0xC
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0xC
	ds	1
	global	_led_show_num$12232
_led_show_num$12232:	; 2 bytes @ 0xD
	ds	2
	global	led_show_num@ch
led_show_num@ch:	; 1 bytes @ 0xF
	ds	1
	global	led_show_num@id
led_show_num@id:	; 1 bytes @ 0x10
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x10
	ds	1
	global	led_show_num@i
led_show_num@i:	; 1 bytes @ 0x11
	ds	1
	global	??_led_show_power
??_led_show_power:	; 0 bytes @ 0x12
	global	??_led_show_oil
??_led_show_oil:	; 0 bytes @ 0x12
	global	led_show_power@ones
led_show_power@ones:	; 1 bytes @ 0x12
	ds	1
	global	led_show_power@powerPercent
led_show_power@powerPercent:	; 1 bytes @ 0x13
	global	led_show_oil@ones
led_show_oil@ones:	; 1 bytes @ 0x13
	ds	1
	global	??___lldiv
??___lldiv:	; 0 bytes @ 0x14
	global	led_show_power@tens
led_show_power@tens:	; 1 bytes @ 0x14
	global	led_show_oil@TobaccoOilPercent
led_show_oil@TobaccoOilPercent:	; 1 bytes @ 0x14
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x14
	ds	1
	global	led_show_power@level
led_show_power@level:	; 1 bytes @ 0x15
	global	led_show_oil@tens
led_show_oil@tens:	; 1 bytes @ 0x15
	ds	1
	global	led_show_oil@level
led_show_oil@level:	; 1 bytes @ 0x16
	ds	1
	global	led_show_oil@i
led_show_oil@i:	; 1 bytes @ 0x17
	ds	1
	global	??_showBase
??_showBase:	; 0 bytes @ 0x18
	global	??_gearPage
??_gearPage:	; 0 bytes @ 0x18
	global	??_smokePage
??_smokePage:	; 0 bytes @ 0x18
	global	gearPage@firstUse
gearPage@firstUse:	; 1 bytes @ 0x18
	global	smokePage@firstUse
smokePage@firstUse:	; 1 bytes @ 0x18
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0x18
	ds	1
	global	??_KeyUpStopSmoke
??_KeyUpStopSmoke:	; 0 bytes @ 0x19
	global	??_UIEvent
??_UIEvent:	; 0 bytes @ 0x19
	global	UIEvent@needUpdaeShow
UIEvent@needUpdaeShow:	; 1 bytes @ 0x19
	ds	4
	global	??_PowerProgress
??_PowerProgress:	; 0 bytes @ 0x1D
	global	??_PortScan
??_PortScan:	; 0 bytes @ 0x1D
	ds	4
	global	PowerProgress@AD_Temp
PowerProgress@AD_Temp:	; 2 bytes @ 0x21
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x23
;;Data sizes: Strings 0, constant 383, data 0, bss 116, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     35      78
;; BANK1           80      0      73
;; BANK3           80      0       0
;; BANK2h          10      0       0
;; BANK2l          57      0       0

;;
;; Pointer list with targets:

;; ?_tyw_memset	PTR void  size(1) Largest target is 64
;;		 -> led_duty_cycles(BANK1[64]), 
;;
;; ?___aldiv	long  size(1) Largest target is 0
;;
;; ?_HAL_ADC_Sample	unsigned int  size(1) Largest target is 0
;;
;; ?___lmul	unsigned long  size(1) Largest target is 0
;;
;; ?___lldiv	unsigned long  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; sp__tyw_memset	PTR void  size(1) Largest target is 64
;;		 -> led_duty_cycles(BANK1[64]), 
;;
;; tyw_memset@ptr	PTR void  size(1) Largest target is 64
;;		 -> led_duty_cycles(BANK1[64]), 
;;
;; tyw_memset@p	PTR unsigned char  size(1) Largest target is 64
;;		 -> led_duty_cycles(BANK1[64]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _Interrupt_ISR in COMMON
;;
;;   _Interrupt_ISR->_led_matrix_run
;;   _led_matrix_run->i1___bmul
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_PowerProgress
;;   _UIEvent->_smokePage
;;   _UIEvent->_gearPage
;;   _showBase->_led_show_oil
;;   _led_show_oil->_led_show_num
;;   _led_show_power->_led_show_num
;;   _PowerProgress->_KeyUpStopSmoke
;;   _PortScan->_KeyUpStopSmoke
;;   _led_show_num->___bmul
;;   _led_show_clear->_tyw_memset
;;   _ReadChargerState->_openNewPage
;;   _KeyUpStopSmoke->___lldiv
;;   _gearSwitch->_openNewPage
;;   ___lldiv->___lmul
;;   ___lwdiv->___wmul
;;
;; Critical Paths under _Interrupt_ISR in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _Interrupt_ISR in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _Interrupt_ISR in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2h
;;
;;   None.
;;
;; Critical Paths under _Interrupt_ISR in BANK2h
;;
;;   None.
;;
;; Critical Paths under _main in BANK2l
;;
;;   None.
;;
;; Critical Paths under _Interrupt_ISR in BANK2l
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0    7415
;;                    _SystemClockInit
;;                           _InitGpio
;;                       _Init_BOD_WDT
;;                     _MCU_INIT_TIMER
;;                     _KeyUpStopSmoke
;;                        _openNewPage
;;                        _ClearAllRAM
;;                     _HAL_ADC_Sample
;;                            ___aldiv
;;             _UpdateElectricityGrade
;;                   _ReadChargerState
;;                       _PlugProgress
;;                           _PortScan
;;                            _UIEvent
;;                      _PowerProgress
;;                       _IdleProgress
;; ---------------------------------------------------------------------------------
;; (1) _UIEvent                                              1     1      0    3879
;;                                             25 BANK0      1     1      0
;;                   _UIOneSecondEvent
;;                          _smokePage
;;                           _gearPage
;;                     _led_show_clear
;; ---------------------------------------------------------------------------------
;; (2) _smokePage                                            1     1      0    1799
;;                                             24 BANK0      1     1      0
;;                     _led_show_clear
;;                           _showBase
;; ---------------------------------------------------------------------------------
;; (2) _gearPage                                             1     1      0    1869
;;                                             24 BANK0      1     1      0
;;                     _led_show_clear
;;                           _showBase
;;                      _showSmokeMode
;; ---------------------------------------------------------------------------------
;; (3) _showBase                                             0     0      0    1635
;;                     _led_show_power
;;                       _led_show_oil
;;                      _showSmokeMode
;; ---------------------------------------------------------------------------------
;; (4) _led_show_oil                                         6     6      0     851
;;                                             18 BANK0      6     6      0
;;                       _led_show_num
;;                         _showOilBar
;; ---------------------------------------------------------------------------------
;; (4) _led_show_power                                       4     4      0     714
;;                                             18 BANK0      4     4      0
;;                       _led_show_num
;;                       _showPowerBar
;; ---------------------------------------------------------------------------------
;; (1) _IdleProgress                                         0     0      0       0
;;                         _EnterSleep
;; ---------------------------------------------------------------------------------
;; (1) _PowerProgress                                        6     6      0    1585
;;                                             29 BANK0      6     6      0
;;                        _openNewPage
;;                     _KeyUpStopSmoke
;;                     _HAL_ADC_Sample
;;                            ___aldiv
;;                             ___lmul
;;                            ___lldiv
;; ---------------------------------------------------------------------------------
;; (1) _PortScan                                             0     0      0     596
;;                         _gearSwitch
;;                     _KeyUpStopSmoke
;;                        _openNewPage
;; ---------------------------------------------------------------------------------
;; (5) _led_show_num                                        15    14      1     317
;;                                              3 BANK0     15    14      1
;;                             ___bmul
;; ---------------------------------------------------------------------------------
;; (2) _led_show_clear                                       0     0      0     142
;;                         _tyw_memset
;; ---------------------------------------------------------------------------------
;; (2) _EnterSleep                                           0     0      0       0
;;                           _InitGpio
;;                        _Delay_16nop
;;                       _Init_BOD_WDT
;;                     _MCU_INIT_TIMER
;; ---------------------------------------------------------------------------------
;; (1) _ReadChargerState                                     0     0      0      44
;;                        _openNewPage
;; ---------------------------------------------------------------------------------
;; (2) _KeyUpStopSmoke                                       4     4      0     508
;;                                             25 BANK0      4     4      0
;;                            ___lwdiv
;;                             ___wmul
;;                             ___lmul
;;                            ___lldiv
;; ---------------------------------------------------------------------------------
;; (2) _gearSwitch                                           0     0      0      44
;;                        _openNewPage
;; ---------------------------------------------------------------------------------
;; (1) _SystemClockInit                                      0     0      0       0
;;                        _Delay_16nop
;; ---------------------------------------------------------------------------------
;; (2) ___aldiv                                             14     6      8     300
;;                                              0 BANK0     14     6      8
;; ---------------------------------------------------------------------------------
;; (2) ___lldiv                                             13     5      8     162
;;                                             12 BANK0     13     5      8
;;                             ___lmul (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___lmul                                              12     4      8      92
;;                                              0 BANK0     12     4      8
;; ---------------------------------------------------------------------------------
;; (3) ___lwdiv                                              7     3      4     162
;;                                              6 BANK0      7     3      4
;;                             ___wmul (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___wmul                                               6     2      4      92
;;                                              0 BANK0      6     2      4
;; ---------------------------------------------------------------------------------
;; (6) ___bmul                                               3     2      1      68
;;                                              0 BANK0      3     2      1
;; ---------------------------------------------------------------------------------
;; (2) _UIOneSecondEvent                                     0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _showSmokeMode                                        1     1      0      70
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (5) _showOilBar                                           3     3      0      90
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (5) _showPowerBar                                         3     3      0      90
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (3) _tyw_memset                                           6     4      2     142
;;                                              0 BANK0      6     4      2
;; ---------------------------------------------------------------------------------
;; (1) _PlugProgress                                         0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _UpdateElectricityGrade                               6     6      0     114
;;                                              0 BANK0      6     6      0
;; ---------------------------------------------------------------------------------
;; (2) _HAL_ADC_Sample                                      14    12      2     345
;;                                              0 BANK0     14    12      2
;; ---------------------------------------------------------------------------------
;; (2) _openNewPage                                          1     1      0      44
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _ClearAllRAM                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _MCU_INIT_TIMER                                       0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _InitGpio                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _Init_BOD_WDT                                         0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _Delay_16nop                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 6
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (7) _Interrupt_ISR                                        4     4      0     539
;;                                             10 COMMON     4     4      0
;;                     _led_matrix_run
;; ---------------------------------------------------------------------------------
;; (8) _led_matrix_run                                       7     7      0     539
;;                                              3 COMMON     7     7      0
;;                      _led_set_io_od
;;                           i1___bmul
;;                      _led_set_io_pp
;; ---------------------------------------------------------------------------------
;; (9) i1___bmul                                             3     2      1      68
;;                                              0 COMMON     3     2      1
;; ---------------------------------------------------------------------------------
;; (9) _led_set_io_pp                                        2     1      1     198
;;                                              0 COMMON     2     1      1
;; ---------------------------------------------------------------------------------
;; (9) _led_set_io_od                                        1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 9
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _SystemClockInit
;;     _Delay_16nop
;;   _InitGpio
;;   _Init_BOD_WDT
;;   _MCU_INIT_TIMER
;;   _KeyUpStopSmoke
;;     ___lwdiv
;;       ___wmul (ARG)
;;     ___wmul
;;     ___lmul
;;     ___lldiv
;;       ___lmul (ARG)
;;   _openNewPage
;;   _ClearAllRAM
;;   _HAL_ADC_Sample
;;   ___aldiv
;;   _UpdateElectricityGrade
;;   _ReadChargerState
;;     _openNewPage
;;   _PlugProgress
;;   _PortScan
;;     _gearSwitch
;;       _openNewPage
;;     _KeyUpStopSmoke
;;       ___lwdiv
;;         ___wmul (ARG)
;;       ___wmul
;;       ___lmul
;;       ___lldiv
;;         ___lmul (ARG)
;;     _openNewPage
;;   _UIEvent
;;     _UIOneSecondEvent
;;     _smokePage
;;       _led_show_clear
;;         _tyw_memset
;;       _showBase
;;         _led_show_power
;;           _led_show_num
;;             ___bmul
;;           _showPowerBar
;;         _led_show_oil
;;           _led_show_num
;;             ___bmul
;;           _showOilBar
;;         _showSmokeMode
;;     _gearPage
;;       _led_show_clear
;;         _tyw_memset
;;       _showBase
;;         _led_show_power
;;           _led_show_num
;;             ___bmul
;;           _showPowerBar
;;         _led_show_oil
;;           _led_show_num
;;             ___bmul
;;           _showOilBar
;;         _showSmokeMode
;;       _showSmokeMode
;;     _led_show_clear
;;       _tyw_memset
;;   _PowerProgress
;;     _openNewPage
;;     _KeyUpStopSmoke
;;       ___lwdiv
;;         ___wmul (ARG)
;;       ___wmul
;;       ___lmul
;;       ___lldiv
;;         ___lmul (ARG)
;;     _HAL_ADC_Sample
;;     ___aldiv
;;     ___lmul
;;     ___lldiv
;;       ___lmul (ARG)
;;   _IdleProgress
;;     _EnterSleep
;;       _InitGpio
;;       _Delay_16nop
;;       _Init_BOD_WDT
;;       _MCU_INIT_TIMER
;;
;; _Interrupt_ISR (ROOT)
;;   _led_matrix_run
;;     _led_set_io_od
;;     i1___bmul
;;     _led_set_io_pp
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA              80      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       C       2        0.0%
;;BITBANK0            50      0       0       3        0.0%
;;BANK0               50     23      4E       4       97.5%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK1               50      0      49       5       91.3%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BANK3               50      0       0       6        0.0%
;;ABS                  0      0      A5       7        0.0%
;;BITBANK1            50      0       0       8        0.0%
;;BITBANK3            50      0       0       9        0.0%
;;BITBANK2h            A      0       0      10        0.0%
;;BITBANK2l           39      0       0      11        0.0%
;;BANK2h               A      0       0      12        0.0%
;;BANK2l              39      0       0      13        0.0%
;;DATA                 0      0      B1      14        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 50 in file "D:\资料\P2\P2code_0429\code\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 60/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_SystemClockInit
;;		_InitGpio
;;		_Init_BOD_WDT
;;		_MCU_INIT_TIMER
;;		_KeyUpStopSmoke
;;		_openNewPage
;;		_ClearAllRAM
;;		_HAL_ADC_Sample
;;		___aldiv
;;		_UpdateElectricityGrade
;;		_ReadChargerState
;;		_PlugProgress
;;		_PortScan
;;		_UIEvent
;;		_PowerProgress
;;		_IdleProgress
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\资料\P2\P2code_0429\code\main.c"
	line	50
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	52
	
l18023:	
# 52 "D:\资料\P2\P2code_0429\code\main.c"
CLRWDT ;#
psect	maintext
	line	53
	
l18025:	
;main.c: 53: INTIE = 0x00;
	clrf	(11)	;volatile
	line	54
;main.c: 54: INTIE1 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(13)	;volatile
	line	58
	
l18027:	
;main.c: 58: SystemClockInit();
	fcall	_SystemClockInit
	line	59
	
l18029:	
;main.c: 59: InitGpio();
	fcall	_InitGpio
	line	79
	
l18031:	
;main.c: 79: Init_BOD_WDT();
	fcall	_Init_BOD_WDT
	line	83
	
l18033:	
;main.c: 83: MCU_INIT_TIMER();
	fcall	_MCU_INIT_TIMER
	line	86
	
l18035:	
;main.c: 86: if(FlagSmoke == 0xA55A)
	bsf	status, 6	;RP1=1, select bank2
		movf	(356+1)^0100h,w	;volatile
	xorlw	165
	movlw	90
	skipnz
	xorwf	(356)^0100h,w	;volatile

	skipz
	goto	u4421
	goto	u4420
u4421:
	goto	l18055
u4420:
	line	88
	
l18037:	
;main.c: 87: {
;main.c: 88: VoutInfoFlag.bits.b7 = 1;
	bcf	status, 6	;RP1=0, select bank0
	bsf	(_VoutInfoFlag),7
	line	89
;main.c: 89: VoutInfoFlag.bits.b0 = 0;
	bcf	(_VoutInfoFlag),0
	line	90
	
l18039:	
;main.c: 90: KeyUpStopSmoke();
	fcall	_KeyUpStopSmoke
	line	91
	
l18041:	
;main.c: 91: openNewPage(PAGE_SHORT_PROTECTION);
	movlw	(0Ah)
	fcall	_openNewPage
	line	92
	
l18043:	
;main.c: 92: if(PAD6 == 1) SysInfoFlag.bits.b2 = 1;
	btfss	(46/8),(46)&7
	goto	u4431
	goto	u4430
u4431:
	goto	l4923
u4430:
	
l18045:	
	bsf	(_SysInfoFlag),2
	
l4923:	
	line	93
;main.c: 93: if(PBD2 == 1) ReadPort.ScanOld |= 0x01;
	btfss	(50/8),(50)&7
	goto	u4441
	goto	u4440
u4441:
	goto	l18049
u4440:
	
l18047:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	0+(_ReadPort)^080h+02h+(0/8),(0)&7
	line	95
	
l18049:	
;main.c: 95: ReadPort.KeyState = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	0+(_ReadPort)^080h+04h
	line	96
;main.c: 96: ReadPort.KeyNum = 0;
	clrf	0+(_ReadPort)^080h+05h
	line	97
	
l18051:	
;main.c: 97: SysInfoFlag.bits.b4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(_SysInfoFlag),4
	line	98
;main.c: 98: TimeCnt.SleepTime = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	0+(345)^0100h+03h
	clrf	1+(345)^0100h+03h
	line	99
	
l18053:	
;main.c: 99: SysInfoFlag.bits.b0 = 1;
	bcf	status, 6	;RP1=0, select bank0
	bsf	(_SysInfoFlag),0
	line	100
;main.c: 100: }
	goto	l18067
	line	103
	
l18055:	
;main.c: 101: else
;main.c: 102: {
;main.c: 103: ClearAllRAM();
	fcall	_ClearAllRAM
	line	104
	
l18057:	
;main.c: 104: GetADC.Vout_Lx = 0x00;
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(_GetADC)+04h
	line	105
	
l18059:	
;main.c: 105: TimeCnt.SmokeTime = (2500UL*100+5000UL);
	movlw	0
	bsf	status, 6	;RP1=1, select bank2
	movwf	3+(345)^0100h+07h
	movlw	03h
	movwf	2+(345)^0100h+07h
	movlw	0E4h
	movwf	1+(345)^0100h+07h
	movlw	018h
	movwf	0+(345)^0100h+07h

	line	106
	
l18061:	
;main.c: 106: oilPerCent=100;
	movlw	(064h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_oilPerCent)
	line	107
	
l18063:	
;main.c: 107: openNewPage(PAGE_LOG);
	movlw	(01h)
	fcall	_openNewPage
	line	108
	
l18065:	
;main.c: 108: SysInfoFlag.bits.b4 = 1;
	bsf	(_SysInfoFlag),4
	line	113
	
l18067:	
;main.c: 112: {
;main.c: 113: if(SysInfoFlag.bits.b6 != 0)
	btfss	(_SysInfoFlag),6
	goto	u4451
	goto	u4450
u4451:
	goto	l18101
u4450:
	line	115
	
l18069:	
;main.c: 114: {
;main.c: 115: SysInfoFlag.bits.b6 = 0;
	bcf	(_SysInfoFlag),6
	line	116
# 116 "D:\资料\P2\P2code_0429\code\main.c"
CLRWDT ;#
psect	maintext
	line	118
	
l18071:	
;main.c: 118: GetADC.BatteryVoltage = HAL_ADC_Sample(14,1 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_HAL_ADC_Sample)
	incf	(?_HAL_ADC_Sample),f
	movlw	(0Eh)
	fcall	_HAL_ADC_Sample
	movf	(1+(?_HAL_ADC_Sample)),w
	movwf	1+(_GetADC)+05h
	movf	(0+(?_HAL_ADC_Sample)),w
	movwf	0+(_GetADC)+05h
	line	119
;main.c: 119: GetADC.BatteryVoltage = 4915200/GetADC.BatteryVoltage;
	movf	0+(_GetADC)+05h,w
	movwf	(?___aldiv)
	movf	1+(_GetADC)+05h,w
	movwf	((?___aldiv))+1
	clrf	2+((?___aldiv))
	clrf	3+((?___aldiv))
	movlw	0
	movwf	3+(?___aldiv)+04h
	movlw	04Bh
	movwf	2+(?___aldiv)+04h
	movlw	0
	movwf	1+(?___aldiv)+04h
	movlw	0
	movwf	0+(?___aldiv)+04h

	fcall	___aldiv
	movf	1+(((0+(?___aldiv)))),w
	movwf	1+(_GetADC)+05h
	movf	0+(((0+(?___aldiv)))),w
	movwf	0+(_GetADC)+05h
	line	120
	
l18073:	
;main.c: 120: UpdateElectricityGrade();
	fcall	_UpdateElectricityGrade
	line	122
	
l18075:	
;main.c: 122: if(SysInfoFlag.bits.b4 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(_SysInfoFlag),4
	goto	u4461
	goto	u4460
u4461:
	goto	l18099
u4460:
	line	124
	
l18077:	
;main.c: 123: {
;main.c: 124: if(VoutInfoFlag.bits.b7 != 0)
	btfss	(_VoutInfoFlag),7
	goto	u4471
	goto	u4470
u4471:
	goto	l18095
u4470:
	line	126
	
l18079:	
;main.c: 125: {
;main.c: 126: if(GetADC.BatteryVoltage < 2800) GetADC.LowVolCnt++;
	movlw	high(0AF0h)
	subwf	1+(_GetADC)+05h,w
	movlw	low(0AF0h)
	skipnz
	subwf	0+(_GetADC)+05h,w
	skipnc
	goto	u4481
	goto	u4480
u4481:
	goto	l18083
u4480:
	
l18081:	
	incf	(_GetADC),f
	goto	l18085
	line	127
	
l18083:	
;main.c: 127: else GetADC.LowVolCnt = 0;
	clrf	(_GetADC)
	line	129
	
l18085:	
;main.c: 129: if(TimeCnt.SmokeTask < 0xEA60 )
	movlw	high(0EA60h)
	bsf	status, 6	;RP1=1, select bank2
	subwf	1+(345)^0100h+05h,w
	movlw	low(0EA60h)
	skipnz
	subwf	0+(345)^0100h+05h,w
	skipnc
	goto	u4491
	goto	u4490
u4491:
	goto	l18097
u4490:
	line	131
	
l18087:	
;main.c: 130: {
;main.c: 131: TimeCnt.SmokeTask++;
	incf	0+(345)^0100h+05h,f
	skipnz
	incf	1+(345)^0100h+05h,f
	line	132
	
l18089:	
;main.c: 132: if(TimeCnt.SmokeTask >= 2)
	movlw	high(02h)
	subwf	1+(345)^0100h+05h,w
	movlw	low(02h)
	skipnz
	subwf	0+(345)^0100h+05h,w
	skipc
	goto	u4501
	goto	u4500
u4501:
	goto	l18097
u4500:
	line	136
	
l18091:	
;main.c: 133: {
;main.c: 136: if(VoutInfoFlag.bits.b1 != 0) GetADC.VoutVDD = GetADC.BatteryVoltage;
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_VoutInfoFlag),1
	goto	u4511
	goto	u4510
u4511:
	goto	l4932
u4510:
	
l18093:	
	movf	1+(_GetADC)+05h,w
	movwf	1+(_GetADC)+07h
	movf	0+(_GetADC)+05h,w
	movwf	0+(_GetADC)+07h
	goto	l18097
	line	139
	
l4932:	
	line	140
;main.c: 137: }
;main.c: 139: }
;main.c: 140: }
	goto	l18097
	line	143
	
l18095:	
;main.c: 141: else
;main.c: 142: {
;main.c: 143: ReadChargerState();
	fcall	_ReadChargerState
	line	144
;main.c: 144: PlugProgress();
	fcall	_PlugProgress
	line	147
	
l18097:	
;main.c: 145: }
;main.c: 147: PortScan();
	fcall	_PortScan
	line	150
	
l18099:	
;main.c: 148: }
;main.c: 150: UIEvent();
	fcall	_UIEvent
	line	153
	
l18101:	
;main.c: 151: }
;main.c: 153: if(SysInfoFlag.bits.b0 != 0)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(_SysInfoFlag),0
	goto	u4521
	goto	u4520
u4521:
	goto	l18105
u4520:
	line	154
	
l18103:	
;main.c: 154: PowerProgress();
	fcall	_PowerProgress
	goto	l18067
	line	156
	
l18105:	
;main.c: 155: else
;main.c: 156: IdleProgress();
	fcall	_IdleProgress
	goto	l18067
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	158
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_UIEvent
psect	text929,local,class=CODE,delta=2
global __ptext929
__ptext929:

;; *************** function _UIEvent *****************
;; Defined at:
;;		line 44 in file "D:\资料\P2\P2code_0429\code\tyw_uiEvent.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  needUpdaeSho    1   25[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 40/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_UIOneSecondEvent
;;		_smokePage
;;		_gearPage
;;		_led_show_clear
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text929
	file	"D:\资料\P2\P2code_0429\code\tyw_uiEvent.c"
	line	44
	global	__size_of_UIEvent
	__size_of_UIEvent	equ	__end_of_UIEvent-_UIEvent
	
_UIEvent:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _UIEvent: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	45
	
l17983:	
;tyw_uiEvent.c: 45: uint8_t needUpdaeShow = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(UIEvent@needUpdaeShow)
	line	47
	
l17985:	
;tyw_uiEvent.c: 47: uieventTime++;
	incf	(_uieventTime),f
	line	48
	
l17987:	
;tyw_uiEvent.c: 48: if(uieventTime>=100)
	movlw	(064h)
	subwf	(_uieventTime),w
	skipc
	goto	u4371
	goto	u4370
u4371:
	goto	l17993
u4370:
	line	50
	
l17989:	
;tyw_uiEvent.c: 49: {
;tyw_uiEvent.c: 50: uieventTime=0;
	clrf	(_uieventTime)
	line	51
	
l17991:	
;tyw_uiEvent.c: 51: UIOneSecondEvent();
	fcall	_UIOneSecondEvent
	line	56
	
l17993:	
;tyw_uiEvent.c: 52: }
;tyw_uiEvent.c: 56: if( SysInfoFlag.bits.b2 == 1 && DisplaySwitchNum != PAGE_LOG )
	btfss	(_SysInfoFlag),2
	goto	u4381
	goto	u4380
u4381:
	goto	l13384
u4380:
	
l17995:	
	decf	(_DisplaySwitchNum),w
	skipnz
	goto	u4391
	goto	u4390
u4391:
	goto	l13384
u4390:
	line	58
	
l17997:	
;tyw_uiEvent.c: 57: {
;tyw_uiEvent.c: 58: DisplaySwitchNum = PAGE_POWER;
	movlw	(05h)
	movwf	(_DisplaySwitchNum)
	line	59
	
l13384:	
	line	61
;tyw_uiEvent.c: 59: }
;tyw_uiEvent.c: 61: if ( oldDisplayPage != DisplaySwitchNum )
	movf	(_oldDisplayPage),w
	xorwf	(_DisplaySwitchNum),w
	skipnz
	goto	u4401
	goto	u4400
u4401:
	goto	l18019
u4400:
	line	63
	
l17999:	
;tyw_uiEvent.c: 62: {
;tyw_uiEvent.c: 63: needUpdaeShow = 1;
	clrf	(UIEvent@needUpdaeShow)
	incf	(UIEvent@needUpdaeShow),f
	line	64
	
l18001:	
;tyw_uiEvent.c: 64: oldDisplayPage = DisplaySwitchNum;
	movf	(_DisplaySwitchNum),w
	movwf	(_oldDisplayPage)
	goto	l18019
	line	72
	
l18003:	
;tyw_uiEvent.c: 72: smokePage(needUpdaeShow);
	movf	(UIEvent@needUpdaeShow),w
	fcall	_smokePage
	line	74
;tyw_uiEvent.c: 74: break;
	goto	l18021
	line	76
	
l18005:	
;tyw_uiEvent.c: 76: gearPage(needUpdaeShow);
	movf	(UIEvent@needUpdaeShow),w
	fcall	_gearPage
	line	77
;tyw_uiEvent.c: 77: break;
	goto	l18021
	line	79
	
l18007:	
;tyw_uiEvent.c: 79: smokePage(needUpdaeShow);
	movf	(UIEvent@needUpdaeShow),w
	fcall	_smokePage
	line	80
;tyw_uiEvent.c: 80: break;
	goto	l18021
	line	97
;tyw_uiEvent.c: 97: case PAGE_WAIT_CLOSE:
	
l13392:	
	line	98
;tyw_uiEvent.c: 98: if( SysInfoFlag.bits.b2 == 1 )
	btfss	(_SysInfoFlag),2
	goto	u4411
	goto	u4410
u4411:
	goto	l18011
u4410:
	line	100
	
l18009:	
;tyw_uiEvent.c: 99: {
;tyw_uiEvent.c: 100: DisplaySwitchNum = PAGE_POWER;
	movlw	(05h)
	movwf	(_DisplaySwitchNum)
	line	101
;tyw_uiEvent.c: 101: }
	goto	l18021
	line	104
	
l18011:	
;tyw_uiEvent.c: 102: else
;tyw_uiEvent.c: 103: {
;tyw_uiEvent.c: 104: DispayCount = 0;
	clrf	(_DispayCount)
	line	105
;tyw_uiEvent.c: 105: DisplaySwitchNum = PAGE_IDLE;
	clrf	(_DisplaySwitchNum)
	line	106
	
l18013:	
;tyw_uiEvent.c: 106: oldDisplayPage = DisplaySwitchNum;
	movf	(_DisplaySwitchNum),w
	movwf	(_oldDisplayPage)
	line	107
	
l18015:	
;tyw_uiEvent.c: 107: led_show_clear();
	fcall	_led_show_clear
	goto	l18021
	line	67
	
l18019:	
	movf	(_DisplaySwitchNum),w
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 0 to 12
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
; direct_byte           33     7 (fixed)
; jumptable            260     6 (fixed)
; rangetable            17     6 (fixed)
; spacedrange           32     9 (fixed)
; locatedrange          13     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l18021
	xorlw	1^0	; case 1
	skipnz
	goto	l18003
	xorlw	4^1	; case 4
	skipnz
	goto	l18005
	xorlw	8^4	; case 8
	skipnz
	goto	l18007
	xorlw	12^8	; case 12
	skipnz
	goto	l13392
	goto	l18021
	opt asmopt_on

	line	114
	
l18021:	
	line	116
	
l13395:	
	return
	opt stack 0
GLOBAL	__end_of_UIEvent
	__end_of_UIEvent:
;; =============== function _UIEvent ends ============

	signat	_UIEvent,88
	global	_smokePage
psect	text930,local,class=CODE,delta=2
global __ptext930
__ptext930:

;; *************** function _smokePage *****************
;; Defined at:
;;		line 59 in file "D:\资料\P2\P2code_0429\code\tyw_page.c"
;; Parameters:    Size  Location     Type
;;  firstUse        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  firstUse        1   24[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 40/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_led_show_clear
;;		_showBase
;; This function is called by:
;;		_UIEvent
;; This function uses a non-reentrant model
;;
psect	text930
	file	"D:\资料\P2\P2code_0429\code\tyw_page.c"
	line	59
	global	__size_of_smokePage
	__size_of_smokePage	equ	__end_of_smokePage-_smokePage
	
_smokePage:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _smokePage: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;smokePage@firstUse stored from wreg
	line	61
	movwf	(smokePage@firstUse)
	
l17975:	
;tyw_page.c: 61: if(firstUse==1)
	decf	(smokePage@firstUse),w
	skipz
	goto	u4361
	goto	u4360
u4361:
	goto	l11748
u4360:
	line	63
	
l17977:	
;tyw_page.c: 62: {
;tyw_page.c: 63: DispayCount=11;
	movlw	(0Bh)
	movwf	(_DispayCount)
	line	64
	
l17979:	
;tyw_page.c: 64: led_show_clear();
	fcall	_led_show_clear
	line	65
	
l17981:	
;tyw_page.c: 66: pageTime=0;
	fcall	_showBase
	line	96
	
l11748:	
	return
	opt stack 0
GLOBAL	__end_of_smokePage
	__end_of_smokePage:
;; =============== function _smokePage ends ============

	signat	_smokePage,4216
	global	_gearPage
psect	text931,local,class=CODE,delta=2
global __ptext931
__ptext931:

;; *************** function _gearPage *****************
;; Defined at:
;;		line 45 in file "D:\资料\P2\P2code_0429\code\tyw_page.c"
;; Parameters:    Size  Location     Type
;;  firstUse        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  firstUse        1   24[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 40/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_led_show_clear
;;		_showBase
;;		_showSmokeMode
;; This function is called by:
;;		_UIEvent
;; This function uses a non-reentrant model
;;
psect	text931
	file	"D:\资料\P2\P2code_0429\code\tyw_page.c"
	line	45
	global	__size_of_gearPage
	__size_of_gearPage	equ	__end_of_gearPage-_gearPage
	
_gearPage:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _gearPage: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;gearPage@firstUse stored from wreg
	line	47
	movwf	(gearPage@firstUse)
	
l17965:	
;tyw_page.c: 47: if(firstUse==1)
	decf	(gearPage@firstUse),w
	skipz
	goto	u4351
	goto	u4350
u4351:
	goto	l17973
u4350:
	line	49
	
l17967:	
;tyw_page.c: 48: {
;tyw_page.c: 49: DispayCount=3;
	movlw	(03h)
	movwf	(_DispayCount)
	line	50
	
l17969:	
;tyw_page.c: 50: led_show_clear();
	fcall	_led_show_clear
	line	51
	
l17971:	
;tyw_page.c: 51: showBase() ;
	fcall	_showBase
	line	54
	
l17973:	
;tyw_page.c: 52: }
;tyw_page.c: 54: showSmokeMode();
	fcall	_showSmokeMode
	line	57
	
l11744:	
	return
	opt stack 0
GLOBAL	__end_of_gearPage
	__end_of_gearPage:
;; =============== function _gearPage ends ============

	signat	_gearPage,4216
	global	_showBase
psect	text932,local,class=CODE,delta=2
global __ptext932
__ptext932:

;; *************** function _showBase *****************
;; Defined at:
;;		line 19 in file "D:\资料\P2\P2code_0429\code\tyw_page.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 140/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_led_show_power
;;		_led_show_oil
;;		_showSmokeMode
;; This function is called by:
;;		_gearPage
;;		_smokePage
;; This function uses a non-reentrant model
;;
psect	text932
	file	"D:\资料\P2\P2code_0429\code\tyw_page.c"
	line	19
	global	__size_of_showBase
	__size_of_showBase	equ	__end_of_showBase-_showBase
	
_showBase:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _showBase: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	22
	
l17957:	
;tyw_page.c: 22: GetADC.BatteryPercent=100;
	movlw	(064h)
	movwf	0+(_GetADC)+0Fh
	line	24
	
l17959:	
;tyw_page.c: 24: led_show_power(GetADC.BatteryPercent);
	movf	0+(_GetADC)+0Fh,w
	fcall	_led_show_power
	line	27
	
l17961:	
;tyw_page.c: 27: led_show_oil(oilPerCent);
	bcf	status, 5	;RP0=0, select bank0
	movf	(_oilPerCent),w
	fcall	_led_show_oil
	line	29
	
l17963:	
;tyw_page.c: 29: showSmokeMode();
	fcall	_showSmokeMode
	line	30
	
l11736:	
	return
	opt stack 0
GLOBAL	__end_of_showBase
	__end_of_showBase:
;; =============== function _showBase ends ============

	signat	_showBase,88
	global	_led_show_oil
psect	text933,local,class=CODE,delta=2
global __ptext933
__ptext933:

;; *************** function _led_show_oil *****************
;; Defined at:
;;		line 434 in file "D:\资料\P2\P2code_0429\code\tyw_led.c"
;; Parameters:    Size  Location     Type
;;  TobaccoOilPe    1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  TobaccoOilPe    1   20[BANK0 ] unsigned char 
;;  i               1   23[BANK0 ] unsigned char 
;;  level           1   22[BANK0 ] unsigned char 
;;  tens            1   21[BANK0 ] unsigned char 
;;  ones            1   19[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/20
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       5       0       0       0       0
;;      Temps:          0       1       0       0       0       0
;;      Totals:         0       6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_led_show_num
;;		_showOilBar
;; This function is called by:
;;		_showBase
;; This function uses a non-reentrant model
;;
psect	text933
	file	"D:\资料\P2\P2code_0429\code\tyw_led.c"
	line	434
	global	__size_of_led_show_oil
	__size_of_led_show_oil	equ	__end_of_led_show_oil-_led_show_oil
	
_led_show_oil:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _led_show_oil: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;led_show_oil@TobaccoOilPercent stored from wreg
	line	436
	movwf	(led_show_oil@TobaccoOilPercent)
	line	435
	
l17887:	
	line	436
;tyw_led.c: 436: uint8_t ones=0;
	clrf	(led_show_oil@ones)
	line	437
;tyw_led.c: 437: uint8_t i=0;
	clrf	(led_show_oil@i)
	line	438
;tyw_led.c: 438: uint8_t level=0;
	clrf	(led_show_oil@level)
	line	439
	
l17889:	
;tyw_led.c: 439: if(TobaccoOilPercent>=99)
	movlw	(063h)
	subwf	(led_show_oil@TobaccoOilPercent),w
	skipc
	goto	u4271
	goto	u4270
u4271:
	goto	l17905
u4270:
	line	441
	
l17891:	
;tyw_led.c: 440: {
;tyw_led.c: 441: for (i = 0; i < 7; ++i)
	clrf	(led_show_oil@i)
	line	443
	
l17897:	
;tyw_led.c: 442: {
;tyw_led.c: 443: led_duty_cycles[i][4]= 16;
	movf	(led_show_oil@i),w
	movwf	(??_led_show_oil+0)+0
	clrc
	rlf	(??_led_show_oil+0)+0,f
	clrc
	rlf	(??_led_show_oil+0)+0,f
	clrc
	rlf	(??_led_show_oil+0)+0,w
	addlw	_led_duty_cycles+04h&0ffh
	movwf	fsr0
	movlw	(010h)
	movwf	indf
	line	441
	
l17899:	
	incf	(led_show_oil@i),f
	
l17901:	
	movlw	(07h)
	subwf	(led_show_oil@i),w
	skipc
	goto	u4281
	goto	u4280
u4281:
	goto	l17897
u4280:
	line	446
	
l17903:	
;tyw_led.c: 444: }
;tyw_led.c: 446: led_show_num(0,9);
	movlw	(09h)
	movwf	(?_led_show_num)
	movlw	(0)
	fcall	_led_show_num
	line	447
;tyw_led.c: 447: led_show_num(1,9);
	movlw	(09h)
	movwf	(?_led_show_num)
	movlw	(01h)
	fcall	_led_show_num
	line	448
;tyw_led.c: 448: }
	goto	l17935
	line	457
	
l17905:	
;tyw_led.c: 449: else
;tyw_led.c: 450: {
;tyw_led.c: 457: ones=TobaccoOilPercent;
	movf	(led_show_oil@TobaccoOilPercent),w
	movwf	(led_show_oil@ones)
	line	458
	
l17907:	
;tyw_led.c: 458: for (tens = 0; tens < 10; tens++)
	clrf	(led_show_oil@tens)
	line	460
	
l17913:	
;tyw_led.c: 459: {
;tyw_led.c: 460: if (ones < 10)
	movlw	(0Ah)
	subwf	(led_show_oil@ones),w
	skipnc
	goto	u4291
	goto	u4290
u4291:
	goto	l17917
u4290:
	goto	l17921
	line	462
	
l17917:	
;tyw_led.c: 462: ones = ones - 10;
	movlw	(0F6h)
	addwf	(led_show_oil@ones),f
	line	458
	
l17919:	
	incf	(led_show_oil@tens),f
	movlw	(0Ah)
	subwf	(led_show_oil@tens),w
	skipc
	goto	u4301
	goto	u4300
u4301:
	goto	l17913
u4300:
	line	466
	
l17921:	
;tyw_led.c: 463: }
;tyw_led.c: 466: led_show_num(0,tens);
	movf	(led_show_oil@tens),w
	movwf	(?_led_show_num)
	movlw	(0)
	fcall	_led_show_num
	line	467
;tyw_led.c: 467: led_show_num(1,ones);
	movf	(led_show_oil@ones),w
	movwf	(?_led_show_num)
	movlw	(01h)
	fcall	_led_show_num
	line	468
	
l17923:	
;tyw_led.c: 468: for (i = 0; i < 7; ++i)
	clrf	(led_show_oil@i)
	line	470
	
l17929:	
;tyw_led.c: 469: {
;tyw_led.c: 470: led_duty_cycles[i][4]= 0;
	movf	(led_show_oil@i),w
	movwf	(??_led_show_oil+0)+0
	clrc
	rlf	(??_led_show_oil+0)+0,f
	clrc
	rlf	(??_led_show_oil+0)+0,f
	clrc
	rlf	(??_led_show_oil+0)+0,w
	addlw	_led_duty_cycles+04h&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	line	468
	
l17931:	
	incf	(led_show_oil@i),f
	
l17933:	
	movlw	(07h)
	subwf	(led_show_oil@i),w
	skipc
	goto	u4311
	goto	u4310
u4311:
	goto	l17929
u4310:
	line	474
	
l17935:	
;tyw_led.c: 471: }
;tyw_led.c: 472: }
;tyw_led.c: 474: for(level=0;level<7;level++)
	clrf	(led_show_oil@level)
	line	476
	
l17941:	
;tyw_led.c: 475: {
;tyw_led.c: 476: if(TobaccoOilPercent<powerOilLevelBuf[level])
	movf	(led_show_oil@level),w
	addlw	low(_powerOilLevelBuf|8000h)
	movwf	fsr0
	movlw	high(_powerOilLevelBuf|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	subwf	(led_show_oil@TobaccoOilPercent),w
	skipnc
	goto	u4321
	goto	u4320
u4321:
	goto	l17945
u4320:
	goto	l17949
	line	474
	
l17945:	
	incf	(led_show_oil@level),f
	
l17947:	
	movlw	(07h)
	subwf	(led_show_oil@level),w
	skipc
	goto	u4331
	goto	u4330
u4331:
	goto	l17941
u4330:
	line	479
	
l17949:	
;tyw_led.c: 478: }
;tyw_led.c: 479: if(level>6)
	movlw	(07h)
	subwf	(led_show_oil@level),w
	skipc
	goto	u4341
	goto	u4340
u4341:
	goto	l17953
u4340:
	line	480
	
l17951:	
;tyw_led.c: 480: level=6;
	movlw	(06h)
	movwf	(led_show_oil@level)
	line	482
	
l17953:	
;tyw_led.c: 482: showOilBar(level);
	movf	(led_show_oil@level),w
	fcall	_showOilBar
	line	485
	
l17955:	
;tyw_led.c: 485: led_duty_cycles[7][4]=16;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_led_duty_cycles)^080h+03Ch
	line	487
	
l10104:	
	return
	opt stack 0
GLOBAL	__end_of_led_show_oil
	__end_of_led_show_oil:
;; =============== function _led_show_oil ends ============

	signat	_led_show_oil,4216
	global	_led_show_power
psect	text934,local,class=CODE,delta=2
global __ptext934
__ptext934:

;; *************** function _led_show_power *****************
;; Defined at:
;;		line 342 in file "D:\资料\P2\P2code_0429\code\tyw_led.c"
;; Parameters:    Size  Location     Type
;;  powerPercent    1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  powerPercent    1   19[BANK0 ] unsigned char 
;;  level           1   21[BANK0 ] unsigned char 
;;  tens            1   20[BANK0 ] unsigned char 
;;  ones            1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 160/20
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_led_show_num
;;		_showPowerBar
;; This function is called by:
;;		_showBase
;; This function uses a non-reentrant model
;;
psect	text934
	file	"D:\资料\P2\P2code_0429\code\tyw_led.c"
	line	342
	global	__size_of_led_show_power
	__size_of_led_show_power	equ	__end_of_led_show_power-_led_show_power
	
_led_show_power:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _led_show_power: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;led_show_power@powerPercent stored from wreg
	line	344
	movwf	(led_show_power@powerPercent)
	line	343
	
l17821:	
	line	344
;tyw_led.c: 344: uint8_t ones=0;
	clrf	(led_show_power@ones)
	line	345
;tyw_led.c: 345: uint8_t level=0;
	clrf	(led_show_power@level)
	line	346
	
l17823:	
;tyw_led.c: 346: if(powerPercent>=99)
	movlw	(063h)
	subwf	(led_show_power@powerPercent),w
	skipc
	goto	u4201
	goto	u4200
u4201:
	goto	l17831
u4200:
	line	348
	
l17825:	
;tyw_led.c: 347: {
;tyw_led.c: 348: led_duty_cycles[0][5]=16;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_led_duty_cycles)^080h+05h
	line	349
;tyw_led.c: 349: led_duty_cycles[1][5]=16;
	movlw	(010h)
	movwf	0+(_led_duty_cycles)^080h+0Dh
	line	350
;tyw_led.c: 350: led_duty_cycles[2][5]=16;
	movlw	(010h)
	movwf	0+(_led_duty_cycles)^080h+015h
	line	351
;tyw_led.c: 351: led_duty_cycles[3][5]=16;
	movlw	(010h)
	movwf	0+(_led_duty_cycles)^080h+01Dh
	line	352
;tyw_led.c: 352: led_duty_cycles[4][5]=16;
	movlw	(010h)
	movwf	0+(_led_duty_cycles)^080h+025h
	line	353
;tyw_led.c: 353: led_duty_cycles[6][5]=16;
	movlw	(010h)
	movwf	0+(_led_duty_cycles)^080h+035h
	line	355
	
l17827:	
;tyw_led.c: 355: led_show_num(2,9);
	movlw	(09h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_led_show_num)
	movlw	(02h)
	fcall	_led_show_num
	line	356
	
l17829:	
;tyw_led.c: 356: led_show_num(3,9);
	movlw	(09h)
	movwf	(?_led_show_num)
	movlw	(03h)
	fcall	_led_show_num
	line	357
;tyw_led.c: 357: }
	goto	l17861
	line	365
	
l17831:	
;tyw_led.c: 358: else
;tyw_led.c: 359: {
;tyw_led.c: 365: ones=powerPercent;
	movf	(led_show_power@powerPercent),w
	movwf	(led_show_power@ones)
	line	366
	
l17833:	
;tyw_led.c: 366: for (tens = 0; tens < 10; tens++)
	clrf	(led_show_power@tens)
	line	368
	
l17839:	
;tyw_led.c: 367: {
;tyw_led.c: 368: if (ones < 10)
	movlw	(0Ah)
	subwf	(led_show_power@ones),w
	skipnc
	goto	u4211
	goto	u4210
u4211:
	goto	l17843
u4210:
	goto	l17847
	line	370
	
l17843:	
;tyw_led.c: 370: ones = ones - 10;
	movlw	(0F6h)
	addwf	(led_show_power@ones),f
	line	366
	
l17845:	
	incf	(led_show_power@tens),f
	movlw	(0Ah)
	subwf	(led_show_power@tens),w
	skipc
	goto	u4221
	goto	u4220
u4221:
	goto	l17839
u4220:
	line	372
	
l17847:	
;tyw_led.c: 371: }
;tyw_led.c: 372: led_show_num(2,tens);
	movf	(led_show_power@tens),w
	movwf	(?_led_show_num)
	movlw	(02h)
	fcall	_led_show_num
	line	373
;tyw_led.c: 373: led_show_num(3,ones);
	movf	(led_show_power@ones),w
	movwf	(?_led_show_num)
	movlw	(03h)
	fcall	_led_show_num
	line	376
	
l17849:	
;tyw_led.c: 376: led_duty_cycles[0][5]=0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	0+(_led_duty_cycles)^080h+05h
	line	377
	
l17851:	
;tyw_led.c: 377: led_duty_cycles[1][5]=0;
	clrf	0+(_led_duty_cycles)^080h+0Dh
	line	378
	
l17853:	
;tyw_led.c: 378: led_duty_cycles[2][5]=0;
	clrf	0+(_led_duty_cycles)^080h+015h
	line	379
	
l17855:	
;tyw_led.c: 379: led_duty_cycles[3][5]=0;
	clrf	0+(_led_duty_cycles)^080h+01Dh
	line	380
	
l17857:	
;tyw_led.c: 380: led_duty_cycles[4][5]=0;
	clrf	0+(_led_duty_cycles)^080h+025h
	line	381
	
l17859:	
;tyw_led.c: 381: led_duty_cycles[6][5]=0;
	clrf	0+(_led_duty_cycles)^080h+035h
	line	383
	
l17861:	
;tyw_led.c: 382: }
;tyw_led.c: 383: for(level=0;level<7;level++)
	bcf	status, 5	;RP0=0, select bank0
	clrf	(led_show_power@level)
	line	385
	
l17867:	
;tyw_led.c: 384: {
;tyw_led.c: 385: if(powerPercent<powerOilLevelBuf[level])
	movf	(led_show_power@level),w
	addlw	low(_powerOilLevelBuf|8000h)
	movwf	fsr0
	movlw	high(_powerOilLevelBuf|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	subwf	(led_show_power@powerPercent),w
	skipnc
	goto	u4231
	goto	u4230
u4231:
	goto	l17871
u4230:
	goto	l17875
	line	383
	
l17871:	
	incf	(led_show_power@level),f
	
l17873:	
	movlw	(07h)
	subwf	(led_show_power@level),w
	skipc
	goto	u4241
	goto	u4240
u4241:
	goto	l17867
u4240:
	line	389
	
l17875:	
;tyw_led.c: 387: }
;tyw_led.c: 389: if(level>6)
	movlw	(07h)
	subwf	(led_show_power@level),w
	skipc
	goto	u4251
	goto	u4250
u4251:
	goto	l17879
u4250:
	line	390
	
l17877:	
;tyw_led.c: 390: level=6;
	movlw	(06h)
	movwf	(led_show_power@level)
	line	394
	
l17879:	
;tyw_led.c: 394: showPowerBar(level);
	movf	(led_show_power@level),w
	fcall	_showPowerBar
	line	396
	
l17881:	
;tyw_led.c: 396: if( SysInfoFlag.bits.b2 == 1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(_SysInfoFlag),2
	goto	u4261
	goto	u4260
u4261:
	goto	l17885
u4260:
	line	398
	
l17883:	
;tyw_led.c: 397: {
;tyw_led.c: 398: led_duty_cycles[7][5]=16;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_led_duty_cycles)^080h+03Dh
	line	399
;tyw_led.c: 399: }
	goto	l10074
	line	401
	
l17885:	
;tyw_led.c: 400: else
;tyw_led.c: 401: led_duty_cycles[7][5]=0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	0+(_led_duty_cycles)^080h+03Dh
	line	403
	
l10074:	
	return
	opt stack 0
GLOBAL	__end_of_led_show_power
	__end_of_led_show_power:
;; =============== function _led_show_power ends ============

	signat	_led_show_power,4216
	global	_IdleProgress
psect	text935,local,class=CODE,delta=2
global __ptext935
__ptext935:

;; *************** function _IdleProgress *****************
;; Defined at:
;;		line 32 in file "D:\资料\P2\P2code_0429\code\task.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_EnterSleep
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text935
	file	"D:\资料\P2\P2code_0429\code\task.c"
	line	32
	global	__size_of_IdleProgress
	__size_of_IdleProgress	equ	__end_of_IdleProgress-_IdleProgress
	
_IdleProgress:	
	opt	stack 2
; Regs used in _IdleProgress: [wreg+status,2+status,0+pclath+cstack]
	line	33
	
l17805:	
;task.c: 33: if(DispayCount==0 && LedsInfoFlag.bits.b5 != 0 && SysInfoFlag.bits.b5 != 0)
	movf	(_DispayCount),f
	skipz
	goto	u4151
	goto	u4150
u4151:
	goto	l8270
u4150:
	
l17807:	
	btfss	(_LedsInfoFlag),5
	goto	u4161
	goto	u4160
u4161:
	goto	l8270
u4160:
	
l17809:	
	btfss	(_SysInfoFlag),5
	goto	u4171
	goto	u4170
u4171:
	goto	l8270
u4170:
	line	35
	
l17811:	
;task.c: 34: {
;task.c: 35: EnterSleep();
	fcall	_EnterSleep
	line	36
	
l17813:	
;task.c: 36: TimeCnt.SleepTime = 2;
	movlw	02h
	bsf	status, 6	;RP1=1, select bank2
	movwf	0+(345)^0100h+03h
	clrf	1+(345)^0100h+03h
	line	37
;task.c: 37: while(TimeCnt.SleepTime)
	goto	l17819
	
l8267:	
	line	39
;task.c: 38: {
;task.c: 39: if(SysInfoFlag.bits.b6 != 0)
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_SysInfoFlag),6
	goto	u4181
	goto	u4180
u4181:
	goto	l17819
u4180:
	line	41
	
l17815:	
;task.c: 40: {
;task.c: 41: SysInfoFlag.bits.b6 = 0;
	bcf	(_SysInfoFlag),6
	line	42
# 42 "D:\资料\P2\P2code_0429\code\task.c"
CLRWDT ;#
psect	text935
	line	43
	
l17817:	
;task.c: 43: TimeCnt.SleepTime--;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	subwf	0+(345)^0100h+03h,f
	movlw	high(01h)
	skipc
	decf	1+(345)^0100h+03h,f
	subwf	1+(345)^0100h+03h,f
	line	37
	
l17819:	
	bsf	status, 6	;RP1=1, select bank2
	movf	(1+(345)^0100h+03h),w
	iorwf	(0+(345)^0100h+03h),w
	skipz
	goto	u4191
	goto	u4190
u4191:
	goto	l8267
u4190:
	
l8269:	
	line	46
;task.c: 44: }
;task.c: 45: }
;task.c: 46: SysInfoFlag.bits.b0 = 1;
	bcf	status, 6	;RP1=0, select bank0
	bsf	(_SysInfoFlag),0
	line	48
	
l8270:	
	return
	opt stack 0
GLOBAL	__end_of_IdleProgress
	__end_of_IdleProgress:
;; =============== function _IdleProgress ends ============

	signat	_IdleProgress,88
	global	_PowerProgress
psect	text936,local,class=CODE,delta=2
global __ptext936
__ptext936:

;; *************** function _PowerProgress *****************
;; Defined at:
;;		line 111 in file "D:\资料\P2\P2code_0429\code\task.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  AD_Temp         2   33[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0
;;      Temps:          0       4       0       0       0       0
;;      Totals:         0       6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_openNewPage
;;		_KeyUpStopSmoke
;;		_HAL_ADC_Sample
;;		___aldiv
;;		___lmul
;;		___lldiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text936
	file	"D:\资料\P2\P2code_0429\code\task.c"
	line	111
	global	__size_of_PowerProgress
	__size_of_PowerProgress	equ	__end_of_PowerProgress-_PowerProgress
	
_PowerProgress:	
	opt	stack 2
; Regs used in _PowerProgress: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	114
	
l17625:	
;task.c: 112: uint16_t AD_Temp;
;task.c: 114: if(VoutInfoFlag.bits.b0 != 0)
	btfss	(_VoutInfoFlag),0
	goto	u3721
	goto	u3720
u3721:
	goto	l8278
u3720:
	line	116
	
l17627:	
;task.c: 115: {
;task.c: 116: VoutInfoFlag.bits.b0 = 0;
	bcf	(_VoutInfoFlag),0
	line	119
;task.c: 118: {
;task.c: 119: if(SysInfoFlag.bits.b7 == 0 )
	btfsc	(_SysInfoFlag),7
	goto	u3731
	goto	u3730
u3731:
	goto	l8337
u3730:
	line	121
	
l17629:	
;task.c: 120: {
;task.c: 121: if(VoutInfoFlag.bits.b7 == 0)
	btfsc	(_VoutInfoFlag),7
	goto	u3741
	goto	u3740
u3741:
	goto	l8337
u3740:
	line	123
	
l17631:	
;task.c: 122: {
;task.c: 123: if( GetADC.BatteryPercent==0 || VoutInfoFlag.bits.b3 != 0)
	movf	0+(_GetADC)+0Fh,w
	skipz
	goto	u3750
	goto	l17635
u3750:
	
l17633:	
	btfss	(_VoutInfoFlag),3
	goto	u3761
	goto	u3760
u3761:
	goto	l8281
u3760:
	line	125
	
l17635:	
;task.c: 124: {
;task.c: 125: openNewPage(PAGE_LOW_POWER);
	movlw	(0Bh)
	fcall	_openNewPage
	line	127
	
l17637:	
;task.c: 127: GetADC.BatteryPercent = 0;
	clrf	0+(_GetADC)+0Fh
	line	129
;task.c: 129: }
	goto	l8337
	line	130
	
l8281:	
;task.c: 130: else if(PAD3 == 1)
	btfss	(43/8),(43)&7
	goto	u3771
	goto	u3770
u3771:
	goto	l17641
u3770:
	line	132
	
l17639:	
;task.c: 131: {
;task.c: 132: openNewPage(PAGE_SHORT_PROTECTION);
	movlw	(0Ah)
	fcall	_openNewPage
	line	133
;task.c: 133: }
	goto	l8337
	line	146
	
l17641:	
;task.c: 134: else
;task.c: 135: {
;task.c: 145: {
;task.c: 146: FlagSmoke = 0xA55A;
	movlw	low(0A55Ah)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(356)^0100h	;volatile
	movlw	high(0A55Ah)
	movwf	((356)^0100h)+1	;volatile
	line	147
	
l17643:	
;task.c: 147: LVDIF = 0;
	bcf	status, 6	;RP1=0, select bank0
	bcf	(112/8),(112)&7
	line	148
	
l17645:	
;task.c: 148: LVDIE = 1;
	bsf	(104/8),(104)&7
	line	150
	
l17647:	
;task.c: 150: PAMOD54 = PAMOD54 & 0x0F | 0x30;
	bsf	status, 5	;RP0=1, select bank1
	movf	(135)^080h,w
	andlw	0Fh
	iorlw	030h
	movwf	(135)^080h	;volatile
	line	151
	
l17649:	
;task.c: 151: PAMOD32 = PAMOD32 & 0x0F | 0x30;
	movf	(134)^080h,w
	andlw	0Fh
	iorlw	030h
	movwf	(134)^080h	;volatile
	line	154
	
l17651:	
;task.c: 154: ReadPort.ChargerCnt = 0;
	clrf	(_ReadPort)^080h
	line	155
	
l17653:	
;task.c: 155: TimeCnt.RechgFullTime = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	0+(345)^0100h+01h
	clrf	1+(345)^0100h+01h
	line	156
;task.c: 156: GetADC.VoutOld = GetADC.BatteryVoltage;
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(_GetADC)+05h,w
	movwf	1+(_GetADC)+09h
	movf	0+(_GetADC)+05h,w
	movwf	0+(_GetADC)+09h
	line	157
	
l17655:	
;task.c: 157: if(SysInfoFlag.bits.b1 != 0)
	btfss	(_SysInfoFlag),1
	goto	u3781
	goto	u3780
u3781:
	goto	l8287
u3780:
	line	159
	
l17657:	
;task.c: 158: {
;task.c: 159: GetADC.BatteryVoltageOld = GetADC.BatteryVoltage;
	movf	1+(_GetADC)+05h,w
	movwf	1+(_GetADC)+014h
	movf	0+(_GetADC)+05h,w
	movwf	0+(_GetADC)+014h
	line	160
	
l17659:	
;task.c: 160: SysInfoFlag.bits.b1 = 0;
	bcf	(_SysInfoFlag),1
	line	161
	
l8287:	
	line	163
;task.c: 161: }
;task.c: 163: if( GetADC.Vout_Lx == 0x80 )
	movf	0+(_GetADC)+04h,w
	xorlw	080h
	skipz
	goto	u3791
	goto	u3790
u3791:
	goto	l17667
u3790:
	line	165
	
l17661:	
;task.c: 164: {
;task.c: 165: heatVolSet = 3200;
	movlw	low(0C80h)
	movwf	(_heatVolSet)
	movlw	high(0C80h)
	movwf	((_heatVolSet))+1
	line	166
	
l17663:	
;task.c: 166: PAD4 = 0;
	bcf	(44/8),(44)&7
	line	167
	
l17665:	
;task.c: 167: PAD2 = 0;
	bcf	(42/8),(42)&7
	line	168
;task.c: 168: RunPWM.BuckPwmDuty = RunPWM.BuckPwmDutyBuff = 200;
	movlw	(0C8h)
	movwf	0+(_RunPWM)+02h
	movwf	0+(_RunPWM)+01h
	line	169
;task.c: 169: RunPWM.BuckPwmDuty_CH2 = RunPWM.BuckPwmDutyBuff_CH2 = 200;
	movlw	(0C8h)
	movwf	0+(_RunPWM)+04h
	movwf	0+(_RunPWM)+03h
	line	170
;task.c: 170: }
	goto	l8289
	line	171
	
l17667:	
;task.c: 171: else if( GetADC.Vout_Lx == 0x40 )
	movf	0+(_GetADC)+04h,w
	xorlw	040h
	skipz
	goto	u3801
	goto	u3800
u3801:
	goto	l17675
u3800:
	line	173
	
l17669:	
;task.c: 172: {
;task.c: 173: heatVolSet = 2700;
	movlw	low(0A8Ch)
	movwf	(_heatVolSet)
	movlw	high(0A8Ch)
	movwf	((_heatVolSet))+1
	goto	l17663
	line	179
	
l17675:	
;task.c: 179: else if(GetADC.Vout_Lx == 0x01)
	decf	0+(_GetADC)+04h,w
	skipz
	goto	u3811
	goto	u3810
u3811:
	goto	l17685
u3810:
	line	181
	
l17677:	
;task.c: 180: {
;task.c: 181: heatVolSet = 3200;
	movlw	low(0C80h)
	movwf	(_heatVolSet)
	movlw	high(0C80h)
	movwf	((_heatVolSet))+1
	line	182
	
l17679:	
;task.c: 182: PAD2 = 1;
	bsf	(42/8),(42)&7
	line	183
	
l17681:	
;task.c: 183: PAD4 = 0;
	bcf	(44/8),(44)&7
	line	184
;task.c: 184: RunPWM.BuckPwmDuty = RunPWM.BuckPwmDutyBuff = 200;
	movlw	(0C8h)
	movwf	0+(_RunPWM)+02h
	movwf	0+(_RunPWM)+01h
	line	185
	
l17683:	
;task.c: 185: RunPWM.BuckPwmDuty_CH2 = RunPWM.BuckPwmDutyBuff_CH2 = 0;
	clrf	0+(_RunPWM)+04h
	clrf	0+(_RunPWM)+03h
	line	186
;task.c: 186: }
	goto	l8289
	line	189
	
l17685:	
;task.c: 187: else
;task.c: 188: {
;task.c: 189: heatVolSet = 3200;
	movlw	low(0C80h)
	movwf	(_heatVolSet)
	movlw	high(0C80h)
	movwf	((_heatVolSet))+1
	line	190
	
l17687:	
;task.c: 190: PAD2 = 0;
	bcf	(42/8),(42)&7
	line	191
	
l17689:	
;task.c: 191: PAD4 = 1;
	bsf	(44/8),(44)&7
	line	192
	
l17691:	
;task.c: 192: RunPWM.BuckPwmDuty = RunPWM.BuckPwmDutyBuff = 0;
	clrf	0+(_RunPWM)+02h
	clrf	0+(_RunPWM)+01h
	line	193
	
l17693:	
;task.c: 193: RunPWM.BuckPwmDuty_CH2 = RunPWM.BuckPwmDutyBuff_CH2 = 200;
	movlw	(0C8h)
	movwf	0+(_RunPWM)+04h
	movwf	0+(_RunPWM)+03h
	line	194
	
l8289:	
	line	196
;task.c: 194: }
;task.c: 196: RunPWM.BuckPwmCycleCnt = 0;
	clrf	(_RunPWM)
	line	197
;task.c: 197: GetADC.LowVolCnt = 0;
	clrf	(_GetADC)
	line	198
;task.c: 198: GetADC.VoutVDD = 0;
	clrf	0+(_GetADC)+07h
	clrf	1+(_GetADC)+07h
	line	199
	
l17695:	
;task.c: 199: VoutInfoFlag.bits.b5 = 0;
	bcf	(_VoutInfoFlag),5
	line	200
	
l17697:	
;task.c: 200: VoutInfoFlag.bits.b1 = 0;
	bcf	(_VoutInfoFlag),1
	line	201
	
l17699:	
;task.c: 201: TM0IE = 0;
	bcf	(92/8),(92)&7
	line	202
;task.c: 202: TimeCnt.SmokeTask = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	0+(345)^0100h+05h
	clrf	1+(345)^0100h+05h
	line	203
	
l17701:	
;task.c: 203: TimeCnt.TimeBase = 50;
	movlw	(032h)
	movwf	(345)^0100h
	line	204
	
l17703:	
;task.c: 204: TM0IE = 1;
	bsf	(92/8),(92)&7
	line	205
	
l17705:	
;task.c: 205: VoutInfoFlag.bits.b7 = 1;
	bcf	status, 6	;RP1=0, select bank0
	bsf	(_VoutInfoFlag),7
	goto	l8337
	line	207
	
l8284:	
	goto	l8337
	line	212
	
l8278:	
;task.c: 212: else if(VoutInfoFlag.bits.b7 != 0)
	btfss	(_VoutInfoFlag),7
	goto	u3821
	goto	u3820
u3821:
	goto	l8337
u3820:
	line	214
	
l17707:	
;task.c: 213: {
;task.c: 214: if(VoutInfoFlag.bits.b6 != 0)
	btfss	(_VoutInfoFlag),6
	goto	u3831
	goto	u3830
u3831:
	goto	l17713
u3830:
	line	216
	
l17709:	
;task.c: 215: {
;task.c: 216: KeyUpStopSmoke();
	fcall	_KeyUpStopSmoke
	line	217
	
l17711:	
;task.c: 217: openNewPage(PAGE_SHORT_PROTECTION);
	movlw	(0Ah)
	fcall	_openNewPage
	line	219
;task.c: 219: }
	goto	l8337
	line	220
	
l17713:	
;task.c: 220: else if(GetADC.LowVolCnt >= 10)
	movlw	(0Ah)
	subwf	(_GetADC),w
	skipc
	goto	u3841
	goto	u3840
u3841:
	goto	l17721
u3840:
	line	222
	
l17715:	
;task.c: 221: {
;task.c: 222: KeyUpStopSmoke();
	fcall	_KeyUpStopSmoke
	line	223
	
l17717:	
;task.c: 223: openNewPage(PAGE_LOW_POWER);
	movlw	(0Bh)
	fcall	_openNewPage
	goto	l17637
	line	226
	
l17721:	
;task.c: 226: else if(TimeCnt.SmokeTask >= 1000 && (ReadPort.KeyState&0x80) == 0)
	movlw	high(03E8h)
	bsf	status, 6	;RP1=1, select bank2
	subwf	1+(345)^0100h+05h,w
	movlw	low(03E8h)
	skipnz
	subwf	0+(345)^0100h+05h,w
	skipc
	goto	u3851
	goto	u3850
u3851:
	goto	l8300
u3850:
	
l17723:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	0+(_ReadPort)^080h+04h,(7)&7
	goto	u3861
	goto	u3860
u3861:
	goto	l8300
u3860:
	line	228
	
l17725:	
;task.c: 227: {
;task.c: 228: KeyUpStopSmoke();
	fcall	_KeyUpStopSmoke
	line	229
	
l17727:	
;task.c: 229: openNewPage(PAGE_SMOKE_TIMEOUT);
	movlw	(09h)
	fcall	_openNewPage
	line	230
;task.c: 230: }
	goto	l8337
	line	231
	
l8300:	
	line	233
;task.c: 231: else
;task.c: 232: {
;task.c: 233: if( PAD4 == 0 && RunPWM.BuckPwmCycleCnt != 0 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(44/8),(44)&7
	goto	u3871
	goto	u3870
u3871:
	goto	l8303
u3870:
	
l17729:	
	movf	(_RunPWM),w
	skipz
	goto	u3880
	goto	l8303
u3880:
	line	235
	
l17731:	
;task.c: 234: {
;task.c: 235: GetADC.LoadRes = HAL_ADC_Sample( 3, 0 );
	clrf	(?_HAL_ADC_Sample)
	movlw	(03h)
	fcall	_HAL_ADC_Sample
	movf	(1+(?_HAL_ADC_Sample)),w
	movwf	1+(_GetADC)+0Bh
	movf	(0+(?_HAL_ADC_Sample)),w
	movwf	0+(_GetADC)+0Bh
	line	236
	
l17733:	
;task.c: 236: if( PAD4 == 0 )
	btfsc	(44/8),(44)&7
	goto	u3891
	goto	u3890
u3891:
	goto	l8303
u3890:
	line	238
	
l17735:	
;task.c: 237: {
;task.c: 238: VoutInfoFlag.bits.b1 = 1;
	bsf	(_VoutInfoFlag),1
	line	239
;task.c: 239: }
	goto	l8305
	line	240
	
l8303:	
	line	242
;task.c: 240: else
;task.c: 241: {
;task.c: 242: VoutInfoFlag.bits.b1 = 0;
	bcf	(_VoutInfoFlag),1
	line	245
	
l8305:	
	line	248
;task.c: 248: if( PAD2 == 0 && RunPWM.BuckPwmCycleCnt != 0 )
	btfsc	(42/8),(42)&7
	goto	u3901
	goto	u3900
u3901:
	goto	l8307
u3900:
	
l17737:	
	movf	(_RunPWM),w
	skipz
	goto	u3910
	goto	l8307
u3910:
	line	250
	
l17739:	
;task.c: 249: {
;task.c: 250: GetADC.LoadResCh2 = HAL_ADC_Sample( 5, 0 );
	clrf	(?_HAL_ADC_Sample)
	movlw	(05h)
	fcall	_HAL_ADC_Sample
	movf	(1+(?_HAL_ADC_Sample)),w
	movwf	1+(_GetADC)+0Dh
	movf	(0+(?_HAL_ADC_Sample)),w
	movwf	0+(_GetADC)+0Dh
	line	251
	
l17741:	
;task.c: 251: if( PAD2 == 0 )
	btfsc	(42/8),(42)&7
	goto	u3921
	goto	u3920
u3921:
	goto	l8307
u3920:
	line	253
	
l17743:	
;task.c: 252: {
;task.c: 253: VoutInfoFlag.bits.b2 = 1;
	bsf	(_VoutInfoFlag),2
	line	254
;task.c: 254: }
	goto	l8309
	line	255
	
l8307:	
	line	257
;task.c: 255: else
;task.c: 256: {
;task.c: 257: VoutInfoFlag.bits.b2 = 0;
	bcf	(_VoutInfoFlag),2
	line	260
	
l8309:	
	line	262
;task.c: 262: if( ( VoutInfoFlag.bits.b1 != 0 && GetADC.LoadRes < 2050 ) || ( VoutInfoFlag.bits.b2 != 0 && GetADC.LoadResCh2 < 2050 ) )
	btfss	(_VoutInfoFlag),1
	goto	u3931
	goto	u3930
u3931:
	goto	l8314
u3930:
	
l17745:	
	movlw	high(0802h)
	subwf	1+(_GetADC)+0Bh,w
	movlw	low(0802h)
	skipnz
	subwf	0+(_GetADC)+0Bh,w
	skipc
	goto	u3941
	goto	u3940
u3941:
	goto	l17749
u3940:
	
l8314:	
	btfss	(_VoutInfoFlag),2
	goto	u3951
	goto	u3950
u3951:
	goto	l17755
u3950:
	
l17747:	
	movlw	high(0802h)
	subwf	1+(_GetADC)+0Dh,w
	movlw	low(0802h)
	skipnz
	subwf	0+(_GetADC)+0Dh,w
	skipnc
	goto	u3961
	goto	u3960
u3961:
	goto	l17755
u3960:
	line	264
	
l17749:	
;task.c: 263: {
;task.c: 264: Over_Current_Cnt++;
	incf	(_Over_Current_Cnt),f	;volatile
	line	265
	
l17751:	
;task.c: 265: if( Over_Current_Cnt >= 10 )
	movlw	(0Ah)
	subwf	(_Over_Current_Cnt),w	;volatile
	skipc
	goto	u3971
	goto	u3970
u3971:
	goto	l8337
u3970:
	line	267
	
l17753:	
;task.c: 266: {
;task.c: 267: VoutInfoFlag.bits.b6 = 1;
	bsf	(_VoutInfoFlag),6
	line	268
;task.c: 268: PAD4 = 1;
	bsf	(44/8),(44)&7
	line	269
;task.c: 269: PAD2 = 1;
	bsf	(42/8),(42)&7
	goto	l8337
	line	274
	
l17755:	
;task.c: 272: else
;task.c: 273: {
;task.c: 274: Over_Current_Cnt=0;
	clrf	(_Over_Current_Cnt)	;volatile
	line	275
	
l17757:	
;task.c: 275: if( VoutInfoFlag.bits.b5 != 0 )
	btfss	(_VoutInfoFlag),5
	goto	u3981
	goto	u3980
u3981:
	goto	l8317
u3980:
	line	277
	
l17759:	
;task.c: 276: {
;task.c: 277: if( VoutInfoFlag.bits.b4 )
	btfss	(_VoutInfoFlag),4
	goto	u3991
	goto	u3990
u3991:
	goto	l8337
u3990:
	line	279
	
l17761:	
;task.c: 278: {
;task.c: 279: GetADC.VoutVDD = HAL_ADC_Sample( 14, 0 );
	clrf	(?_HAL_ADC_Sample)
	movlw	(0Eh)
	fcall	_HAL_ADC_Sample
	movf	(1+(?_HAL_ADC_Sample)),w
	movwf	1+(_GetADC)+07h
	movf	(0+(?_HAL_ADC_Sample)),w
	movwf	0+(_GetADC)+07h
	line	280
;task.c: 280: GetADC.VoutVDD = 4997120 / GetADC.VoutVDD;
	movf	0+(_GetADC)+07h,w
	movwf	(?___aldiv)
	movf	1+(_GetADC)+07h,w
	movwf	((?___aldiv))+1
	clrf	2+((?___aldiv))
	clrf	3+((?___aldiv))
	movlw	0
	movwf	3+(?___aldiv)+04h
	movlw	04Ch
	movwf	2+(?___aldiv)+04h
	movlw	040h
	movwf	1+(?___aldiv)+04h
	movlw	0
	movwf	0+(?___aldiv)+04h

	fcall	___aldiv
	movf	1+(((0+(?___aldiv)))),w
	movwf	1+(_GetADC)+07h
	movf	0+(((0+(?___aldiv)))),w
	movwf	0+(_GetADC)+07h
	line	281
	
l17763:	
;task.c: 281: GetADC.VoutVDD = GetADC.VoutVDD + 15;
	movf	0+(_GetADC)+07h,w
	addlw	low(0Fh)
	movwf	0+(_GetADC)+07h
	movf	1+(_GetADC)+07h,w
	skipnc
	addlw	1
	addlw	high(0Fh)
	movwf	1+0+(_GetADC)+07h
	line	283
	
l17765:	
;task.c: 283: VoutInfoFlag.bits.b4 = 0;
	bcf	(_VoutInfoFlag),4
	line	285
	
l17767:	
;task.c: 285: if( VoutInfoFlag.bits.b1 != 0 )
	btfss	(_VoutInfoFlag),1
	goto	u4001
	goto	u4000
u4001:
	goto	l17781
u4000:
	line	287
	
l17769:	
;task.c: 286: {
;task.c: 287: heatVol = ( uint32_t )GetADC.VoutVDD * GetADC.LoadRes / 4096;
	movf	0+(_GetADC)+07h,w
	movwf	(?___lmul)
	movf	1+(_GetADC)+07h,w
	movwf	((?___lmul))+1
	clrf	2+((?___lmul))
	clrf	3+((?___lmul))
	movf	0+(_GetADC)+0Bh,w
	movwf	0+(?___lmul)+04h
	movf	1+(_GetADC)+0Bh,w
	movwf	(0+(?___lmul)+04h)+1
	clrf	2+(0+(?___lmul)+04h)
	clrf	3+(0+(?___lmul)+04h)
	fcall	___lmul
	movf	(0+?___lmul),w
	movwf	(??_PowerProgress+0)+0
	movf	(1+?___lmul),w
	movwf	((??_PowerProgress+0)+0+1)
	movf	(2+?___lmul),w
	movwf	((??_PowerProgress+0)+0+2)
	movf	(3+?___lmul),w
	movwf	((??_PowerProgress+0)+0+3)
	movlw	0Ch
u4015:
	clrc
	rrf	(??_PowerProgress+0)+3,f
	rrf	(??_PowerProgress+0)+2,f
	rrf	(??_PowerProgress+0)+1,f
	rrf	(??_PowerProgress+0)+0,f
u4010:
	addlw	-1
	skipz
	goto	u4015
	movf	1+(??_PowerProgress+0)+0,w
	movwf	(_heatVol+1)
	movf	0+(??_PowerProgress+0)+0,w
	movwf	(_heatVol)
	line	288
;task.c: 288: AD_Temp = ( u32 )heatVolSet * heatVolSet * 200 / ( ( u32 )heatVol * heatVol );
	movf	(_heatVol),w
	movwf	(?___lmul)
	movf	(_heatVol+1),w
	movwf	((?___lmul))+1
	clrf	2+((?___lmul))
	clrf	3+((?___lmul))
	movf	(_heatVol),w
	movwf	0+(?___lmul)+04h
	movf	(_heatVol+1),w
	movwf	(0+(?___lmul)+04h)+1
	clrf	2+(0+(?___lmul)+04h)
	clrf	3+(0+(?___lmul)+04h)
	fcall	___lmul
	movf	(3+(?___lmul)),w
	movwf	(?___lldiv+3)
	movf	(2+(?___lmul)),w
	movwf	(?___lldiv+2)
	movf	(1+(?___lmul)),w
	movwf	(?___lldiv+1)
	movf	(0+(?___lmul)),w
	movwf	(?___lldiv)

	movf	(_heatVolSet),w
	movwf	(?___lmul)
	movf	(_heatVolSet+1),w
	movwf	((?___lmul))+1
	clrf	2+((?___lmul))
	clrf	3+((?___lmul))
	movf	(_heatVolSet),w
	movwf	0+(?___lmul)+04h
	movf	(_heatVolSet+1),w
	movwf	(0+(?___lmul)+04h)+1
	clrf	2+(0+(?___lmul)+04h)
	clrf	3+(0+(?___lmul)+04h)
	fcall	___lmul
	movf	(3+(?___lmul)),w
	movwf	(?___lmul+3)
	movf	(2+(?___lmul)),w
	movwf	(?___lmul+2)
	movf	(1+(?___lmul)),w
	movwf	(?___lmul+1)
	movf	(0+(?___lmul)),w
	movwf	(?___lmul)

	movlw	0C8h
	movwf	0+(?___lmul)+04h
	clrf	1+(?___lmul)+04h
	clrf	2+(?___lmul)+04h
	clrf	3+(?___lmul)+04h

	fcall	___lmul
	movf	(3+(?___lmul)),w
	movwf	3+(?___lldiv)+04h
	movf	(2+(?___lmul)),w
	movwf	2+(?___lldiv)+04h
	movf	(1+(?___lmul)),w
	movwf	1+(?___lldiv)+04h
	movf	(0+(?___lmul)),w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	1+(((0+(?___lldiv)))),w
	movwf	(PowerProgress@AD_Temp+1)
	movf	0+(((0+(?___lldiv)))),w
	movwf	(PowerProgress@AD_Temp)
	line	289
	
l17771:	
;task.c: 289: if( AD_Temp >= 200 ) RunPWM.BuckPwmDutyBuff = 200;
	movlw	high(0C8h)
	subwf	(PowerProgress@AD_Temp+1),w
	movlw	low(0C8h)
	skipnz
	subwf	(PowerProgress@AD_Temp),w
	skipc
	goto	u4021
	goto	u4020
u4021:
	goto	l17775
u4020:
	
l17773:	
	movlw	(0C8h)
	movwf	0+(_RunPWM)+02h
	goto	l17781
	line	290
	
l17775:	
;task.c: 290: else if( AD_Temp < 30 ) RunPWM.BuckPwmDutyBuff = 30;
	movlw	high(01Eh)
	subwf	(PowerProgress@AD_Temp+1),w
	movlw	low(01Eh)
	skipnz
	subwf	(PowerProgress@AD_Temp),w
	skipnc
	goto	u4031
	goto	u4030
u4031:
	goto	l17779
u4030:
	
l17777:	
	movlw	(01Eh)
	movwf	0+(_RunPWM)+02h
	goto	l17781
	line	291
	
l17779:	
;task.c: 291: else RunPWM.BuckPwmDutyBuff = AD_Temp;
	movf	(PowerProgress@AD_Temp),w
	movwf	0+(_RunPWM)+02h
	line	295
	
l17781:	
;task.c: 292: }
;task.c: 295: if( VoutInfoFlag.bits.b2 != 0 )
	btfss	(_VoutInfoFlag),2
	goto	u4041
	goto	u4040
u4041:
	goto	l8337
u4040:
	line	297
	
l17783:	
;task.c: 296: {
;task.c: 297: heatVol = ( uint32_t )GetADC.VoutVDD * GetADC.LoadResCh2 / 4096;
	movf	0+(_GetADC)+07h,w
	movwf	(?___lmul)
	movf	1+(_GetADC)+07h,w
	movwf	((?___lmul))+1
	clrf	2+((?___lmul))
	clrf	3+((?___lmul))
	movf	0+(_GetADC)+0Dh,w
	movwf	0+(?___lmul)+04h
	movf	1+(_GetADC)+0Dh,w
	movwf	(0+(?___lmul)+04h)+1
	clrf	2+(0+(?___lmul)+04h)
	clrf	3+(0+(?___lmul)+04h)
	fcall	___lmul
	movf	(0+?___lmul),w
	movwf	(??_PowerProgress+0)+0
	movf	(1+?___lmul),w
	movwf	((??_PowerProgress+0)+0+1)
	movf	(2+?___lmul),w
	movwf	((??_PowerProgress+0)+0+2)
	movf	(3+?___lmul),w
	movwf	((??_PowerProgress+0)+0+3)
	movlw	0Ch
u4055:
	clrc
	rrf	(??_PowerProgress+0)+3,f
	rrf	(??_PowerProgress+0)+2,f
	rrf	(??_PowerProgress+0)+1,f
	rrf	(??_PowerProgress+0)+0,f
u4050:
	addlw	-1
	skipz
	goto	u4055
	movf	1+(??_PowerProgress+0)+0,w
	movwf	(_heatVol+1)
	movf	0+(??_PowerProgress+0)+0,w
	movwf	(_heatVol)
	line	298
;task.c: 298: AD_Temp = ( u32 )heatVolSet * heatVolSet * 200 / ( ( u32 )heatVol * heatVol );
	movf	(_heatVol),w
	movwf	(?___lmul)
	movf	(_heatVol+1),w
	movwf	((?___lmul))+1
	clrf	2+((?___lmul))
	clrf	3+((?___lmul))
	movf	(_heatVol),w
	movwf	0+(?___lmul)+04h
	movf	(_heatVol+1),w
	movwf	(0+(?___lmul)+04h)+1
	clrf	2+(0+(?___lmul)+04h)
	clrf	3+(0+(?___lmul)+04h)
	fcall	___lmul
	movf	(3+(?___lmul)),w
	movwf	(?___lldiv+3)
	movf	(2+(?___lmul)),w
	movwf	(?___lldiv+2)
	movf	(1+(?___lmul)),w
	movwf	(?___lldiv+1)
	movf	(0+(?___lmul)),w
	movwf	(?___lldiv)

	movf	(_heatVolSet),w
	movwf	(?___lmul)
	movf	(_heatVolSet+1),w
	movwf	((?___lmul))+1
	clrf	2+((?___lmul))
	clrf	3+((?___lmul))
	movf	(_heatVolSet),w
	movwf	0+(?___lmul)+04h
	movf	(_heatVolSet+1),w
	movwf	(0+(?___lmul)+04h)+1
	clrf	2+(0+(?___lmul)+04h)
	clrf	3+(0+(?___lmul)+04h)
	fcall	___lmul
	movf	(3+(?___lmul)),w
	movwf	(?___lmul+3)
	movf	(2+(?___lmul)),w
	movwf	(?___lmul+2)
	movf	(1+(?___lmul)),w
	movwf	(?___lmul+1)
	movf	(0+(?___lmul)),w
	movwf	(?___lmul)

	movlw	0C8h
	movwf	0+(?___lmul)+04h
	clrf	1+(?___lmul)+04h
	clrf	2+(?___lmul)+04h
	clrf	3+(?___lmul)+04h

	fcall	___lmul
	movf	(3+(?___lmul)),w
	movwf	3+(?___lldiv)+04h
	movf	(2+(?___lmul)),w
	movwf	2+(?___lldiv)+04h
	movf	(1+(?___lmul)),w
	movwf	1+(?___lldiv)+04h
	movf	(0+(?___lmul)),w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	1+(((0+(?___lldiv)))),w
	movwf	(PowerProgress@AD_Temp+1)
	movf	0+(((0+(?___lldiv)))),w
	movwf	(PowerProgress@AD_Temp)
	line	299
	
l17785:	
;task.c: 299: if( AD_Temp >= 200 ) RunPWM.BuckPwmDutyBuff_CH2 = 200;
	movlw	high(0C8h)
	subwf	(PowerProgress@AD_Temp+1),w
	movlw	low(0C8h)
	skipnz
	subwf	(PowerProgress@AD_Temp),w
	skipc
	goto	u4061
	goto	u4060
u4061:
	goto	l17789
u4060:
	
l17787:	
	movlw	(0C8h)
	movwf	0+(_RunPWM)+04h
	goto	l8337
	line	300
	
l17789:	
;task.c: 300: else if( AD_Temp < 30 ) RunPWM.BuckPwmDutyBuff_CH2 = 30;
	movlw	high(01Eh)
	subwf	(PowerProgress@AD_Temp+1),w
	movlw	low(01Eh)
	skipnz
	subwf	(PowerProgress@AD_Temp),w
	skipnc
	goto	u4071
	goto	u4070
u4071:
	goto	l17793
u4070:
	
l17791:	
	movlw	(01Eh)
	movwf	0+(_RunPWM)+04h
	goto	l8337
	line	301
	
l17793:	
;task.c: 301: else RunPWM.BuckPwmDutyBuff_CH2 = AD_Temp;
	movf	(PowerProgress@AD_Temp),w
	movwf	0+(_RunPWM)+04h
	goto	l8337
	line	306
	
l8317:	
	line	308
;task.c: 306: else
;task.c: 307: {
;task.c: 308: if( ( VoutInfoFlag.bits.b1 != 0 && GetADC.Vout_Lx == 0x00 ) || ( VoutInfoFlag.bits.b2 != 0 && GetADC.Vout_Lx == 0x01 ) || ( ( VoutInfoFlag.bits.b1 != 0 && VoutInfoFlag.bits.b2 != 0 ) && GetADC.Vout_Lx == 0x80 ) )
	btfss	(_VoutInfoFlag),1
	goto	u4081
	goto	u4080
u4081:
	goto	l8334
u4080:
	
l17795:	
	movf	0+(_GetADC)+04h,w
	skipz
	goto	u4090
	goto	l8332
u4090:
	
l8334:	
	btfss	(_VoutInfoFlag),2
	goto	u4101
	goto	u4100
u4101:
	goto	l8336
u4100:
	
l17797:	
	decf	0+(_GetADC)+04h,w
	skipnz
	goto	u4111
	goto	u4110
u4111:
	goto	l8332
u4110:
	
l8336:	
	btfss	(_VoutInfoFlag),1
	goto	u4121
	goto	u4120
u4121:
	goto	l8284
u4120:
	
l17799:	
	btfss	(_VoutInfoFlag),2
	goto	u4131
	goto	u4130
u4131:
	goto	l8284
u4130:
	
l17801:	
	movf	0+(_GetADC)+04h,w
	xorlw	080h
	skipz
	goto	u4141
	goto	u4140
u4141:
	goto	l8284
u4140:
	
l8332:	
	line	312
;task.c: 311: {
;task.c: 312: VoutInfoFlag.bits.b5 = 1;
	bsf	(_VoutInfoFlag),5
	line	313
	
l17803:	
;task.c: 313: openNewPage(PAGE_SMOKE);
	movlw	(08h)
	fcall	_openNewPage
	line	320
	
l8337:	
	return
	opt stack 0
GLOBAL	__end_of_PowerProgress
	__end_of_PowerProgress:
;; =============== function _PowerProgress ends ============

	signat	_PowerProgress,88
	global	_PortScan
psect	text937,local,class=CODE,delta=2
global __ptext937
__ptext937:

;; *************** function _PortScan *****************
;; Defined at:
;;		line 51 in file "D:\资料\P2\P2code_0429\code\key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 20/40
;;		On exit  : 0/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_gearSwitch
;;		_KeyUpStopSmoke
;;		_openNewPage
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text937
	file	"D:\资料\P2\P2code_0429\code\key.c"
	line	51
	global	__size_of_PortScan
	__size_of_PortScan	equ	__end_of_PortScan-_PortScan
	
_PortScan:	
	opt	stack 2
; Regs used in _PortScan: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	52
	
l17537:	
;key.c: 52: if(PBD2 == 1) ReadPort.ScanNew |= 0x01;
	bcf	status, 6	;RP1=0, select bank0
	btfss	(50/8),(50)&7
	goto	u3521
	goto	u3520
u3521:
	goto	l3229
u3520:
	
l17539:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	0+(_ReadPort)^080h+01h+(0/8),(0)&7
	goto	l3230
	line	53
	
l3229:	
;key.c: 53: else ReadPort.ScanNew &= 0xFE;
	bsf	status, 5	;RP0=1, select bank1
	bcf	0+(_ReadPort)^080h+01h+(0/8),(0)&7
	
l3230:	
	line	55
;key.c: 55: if(PAD7 == 0) ReadPort.ScanNew |= 0x02;
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(47/8),(47)&7
	goto	u3531
	goto	u3530
u3531:
	goto	l3231
u3530:
	
l17541:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	0+(_ReadPort)^080h+01h+(1/8),(1)&7
	goto	l17543
	line	56
	
l3231:	
;key.c: 56: else ReadPort.ScanNew &= 0xFD;
	bsf	status, 5	;RP0=1, select bank1
	bcf	0+(_ReadPort)^080h+01h+(1/8),(1)&7
	line	62
	
l17543:	
;key.c: 62: if(ReadPort.ScanNew != ReadPort.ScanOld)
	movf	0+(_ReadPort)^080h+01h,w
	xorwf	0+(_ReadPort)^080h+02h,w
	skipnz
	goto	u3541
	goto	u3540
u3541:
	goto	l17589
u3540:
	line	64
	
l17545:	
;key.c: 63: {
;key.c: 64: ReadPort.ScanCnt++;
	incf	0+(_ReadPort)^080h+03h,f
	line	65
	
l17547:	
;key.c: 65: if(ReadPort.ScanCnt >= 2)
	movlw	(02h)
	subwf	0+(_ReadPort)^080h+03h,w
	skipc
	goto	u3551
	goto	u3550
u3551:
	goto	l17591
u3550:
	line	67
	
l17549:	
;key.c: 66: {
;key.c: 67: if((ReadPort.ScanOld&0x02) == 0 && (ReadPort.ScanNew&0x02) != 0)
	btfsc	0+(_ReadPort)^080h+02h,(1)&7
	goto	u3561
	goto	u3560
u3561:
	goto	l3235
u3560:
	
l17551:	
	btfss	0+(_ReadPort)^080h+01h,(1)&7
	goto	u3571
	goto	u3570
u3571:
	goto	l3235
u3570:
	line	69
	
l17553:	
;key.c: 68: {
;key.c: 69: ReadPort.KeyNum++;
	incf	0+(_ReadPort)^080h+05h,f
	line	70
	
l17555:	
;key.c: 70: ReadPort.KeyIntervalTime = 50;
	movlw	(032h)
	movwf	0+(_ReadPort)^080h+06h
	line	71
	
l17557:	
;key.c: 71: ReadPort.KeyState |= 0x01;
	bsf	0+(_ReadPort)^080h+04h+(0/8),(0)&7
	line	72
	
l17559:	
;key.c: 72: ReadPort.KeyLongTime = 0;
	clrf	0+(_ReadPort)^080h+07h
	clrf	1+(_ReadPort)^080h+07h
	line	73
	
l17561:	
;key.c: 73: gearSwitch();
	fcall	_gearSwitch
	line	76
;key.c: 76: }
	goto	l3236
	line	77
	
l3235:	
;key.c: 77: else if((ReadPort.ScanOld&0x02) != 0 && (ReadPort.ScanNew&0x02) == 0)
	btfss	0+(_ReadPort)^080h+02h,(1)&7
	goto	u3581
	goto	u3580
u3581:
	goto	l3236
u3580:
	
l17563:	
	btfsc	0+(_ReadPort)^080h+01h,(1)&7
	goto	u3591
	goto	u3590
u3591:
	goto	l3236
u3590:
	line	79
	
l17565:	
;key.c: 78: {
;key.c: 79: ReadPort.KeyState &= 0xFE;
	bcf	0+(_ReadPort)^080h+04h+(0/8),(0)&7
	line	82
	
l3236:	
;key.c: 80: }
;key.c: 82: if((ReadPort.ScanOld&0x01) == 0 && (ReadPort.ScanNew&0x01) != 0)
	bsf	status, 5	;RP0=1, select bank1
	btfsc	0+(_ReadPort)^080h+02h,(0)&7
	goto	u3601
	goto	u3600
u3601:
	goto	l3238
u3600:
	
l17567:	
	btfss	0+(_ReadPort)^080h+01h,(0)&7
	goto	u3611
	goto	u3610
u3611:
	goto	l3238
u3610:
	line	84
	
l17569:	
;key.c: 83: {
;key.c: 84: if((ReadPort.KeyState&0x10) == 0)
	btfsc	0+(_ReadPort)^080h+04h,(4)&7
	goto	u3621
	goto	u3620
u3621:
	goto	l17583
u3620:
	line	86
	
l17571:	
;key.c: 85: {
;key.c: 86: ReadPort.KeyState |= 0x20;
	bsf	0+(_ReadPort)^080h+04h+(5/8),(5)&7
	line	87
;key.c: 87: VoutInfoFlag.bits.b0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(_VoutInfoFlag),0
	line	88
;key.c: 88: ReadPort.KeyState &= 0x7F;
	bsf	status, 5	;RP0=1, select bank1
	bcf	0+(_ReadPort)^080h+04h+(7/8),(7)&7
	goto	l17583
	line	91
	
l3238:	
;key.c: 91: else if((ReadPort.ScanOld&0x01) != 0 && (ReadPort.ScanNew&0x01) == 0)
	btfss	0+(_ReadPort)^080h+02h,(0)&7
	goto	u3631
	goto	u3630
u3631:
	goto	l17583
u3630:
	
l17573:	
	btfsc	0+(_ReadPort)^080h+01h,(0)&7
	goto	u3641
	goto	u3640
u3641:
	goto	l17583
u3640:
	line	93
	
l17575:	
;key.c: 92: {
;key.c: 93: if((ReadPort.KeyState&0x20) != 0)
	btfss	0+(_ReadPort)^080h+04h,(5)&7
	goto	u3651
	goto	u3650
u3651:
	goto	l17583
u3650:
	line	95
	
l17577:	
;key.c: 94: {
;key.c: 95: KeyUpStopSmoke();
	fcall	_KeyUpStopSmoke
	line	96
	
l17579:	
;key.c: 96: VoutInfoFlag.bits.b0 = 0;
	bcf	(_VoutInfoFlag),0
	line	97
	
l17581:	
;key.c: 97: ReadPort.KeyState &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	0+(_ReadPort)^080h+04h+(5/8),(5)&7
	line	101
	
l17583:	
;key.c: 98: }
;key.c: 99: }
;key.c: 101: TimeCnt.SleepTime = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	0+(345)^0100h+03h
	clrf	1+(345)^0100h+03h
	line	102
	
l17585:	
;key.c: 102: ReadPort.ScanCnt = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(_ReadPort)^080h+03h
	line	103
	
l17587:	
;key.c: 103: ReadPort.ScanOld = ReadPort.ScanNew;
	movf	0+(_ReadPort)^080h+01h,w
	movwf	0+(_ReadPort)^080h+02h
	goto	l17591
	line	106
	
l17589:	
;key.c: 106: else ReadPort.ScanCnt = 0;
	clrf	0+(_ReadPort)^080h+03h
	line	108
	
l17591:	
;key.c: 108: if(ReadPort.KeyIntervalTime) ReadPort.KeyIntervalTime--;
	movf	0+(_ReadPort)^080h+06h,w
	skipz
	goto	u3660
	goto	l17595
u3660:
	
l17593:	
	decf	0+(_ReadPort)^080h+06h,f
	goto	l17597
	line	112
	
l17595:	
;key.c: 109: else
;key.c: 110: {
;key.c: 112: ReadPort.KeyNum = 0;
	clrf	0+(_ReadPort)^080h+05h
	line	115
	
l17597:	
;key.c: 113: }
;key.c: 115: if((ReadPort.KeyState&0x01) != 0)
	btfss	0+(_ReadPort)^080h+04h,(0)&7
	goto	u3671
	goto	u3670
u3671:
	goto	l17619
u3670:
	line	117
	
l17599:	
;key.c: 116: {
;key.c: 117: if(ReadPort.KeyLongTime<150)
	movlw	high(096h)
	subwf	1+(_ReadPort)^080h+07h,w
	movlw	low(096h)
	skipnz
	subwf	0+(_ReadPort)^080h+07h,w
	skipnc
	goto	u3681
	goto	u3680
u3681:
	goto	l3247
u3680:
	line	119
	
l17601:	
;key.c: 118: {
;key.c: 119: ReadPort.KeyLongTime++;
	incf	0+(_ReadPort)^080h+07h,f
	skipnz
	incf	1+(_ReadPort)^080h+07h,f
	line	120
	
l17603:	
;key.c: 120: TimeCnt.SleepTime = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	0+(345)^0100h+03h
	clrf	1+(345)^0100h+03h
	line	121
;key.c: 121: }
	goto	l17619
	line	122
	
l3247:	
	line	124
;key.c: 122: else
;key.c: 123: {
;key.c: 124: ReadPort.KeyState &= 0xFE;
	bcf	0+(_ReadPort)^080h+04h+(0/8),(0)&7
	line	125
	
l17605:	
;key.c: 125: ReadPort.KeyNum = 0;
	clrf	0+(_ReadPort)^080h+05h
	line	126
	
l17607:	
;key.c: 126: KeyUpStopSmoke();
	fcall	_KeyUpStopSmoke
	line	127
	
l17609:	
;key.c: 127: VoutInfoFlag.bits.b0 = 0;
	bcf	(_VoutInfoFlag),0
	line	128
	
l17611:	
;key.c: 128: if(SysInfoFlag.bits.b7 != 0)
	btfss	(_SysInfoFlag),7
	goto	u3691
	goto	u3690
u3691:
	goto	l3249
u3690:
	line	130
	
l17613:	
;key.c: 129: {
;key.c: 130: SysInfoFlag.bits.b7 = 0;
	bcf	(_SysInfoFlag),7
	line	131
	
l17615:	
;key.c: 131: openNewPage(PAGE_POWER_ON);
	movlw	(03h)
	fcall	_openNewPage
	line	132
;key.c: 132: }
	goto	l17619
	line	133
	
l3249:	
	line	135
;key.c: 133: else
;key.c: 134: {
;key.c: 135: SysInfoFlag.bits.b7 = 1;
	bsf	(_SysInfoFlag),7
	line	136
	
l17617:	
;key.c: 136: openNewPage(PAGE_POWER_OFF);
	movlw	(02h)
	fcall	_openNewPage
	line	144
	
l17619:	
;key.c: 137: }
;key.c: 140: }
;key.c: 141: }
;key.c: 144: if(ReadPort.KeyNum != 0 || (ReadPort.ScanNew&0x05) != 0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_ReadPort)^080h+05h,f
	skipz
	goto	u3701
	goto	u3700
u3701:
	goto	l17623
u3700:
	
l17621:	
	movf	0+(_ReadPort)^080h+01h,w
	andlw	05h
	btfsc	status,2
	goto	u3711
	goto	u3710
u3711:
	goto	l3254
u3710:
	line	145
	
l17623:	
;key.c: 145: TimeCnt.SleepTime = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	0+(345)^0100h+03h
	clrf	1+(345)^0100h+03h
	line	146
	
l3254:	
	return
	opt stack 0
GLOBAL	__end_of_PortScan
	__end_of_PortScan:
;; =============== function _PortScan ends ============

	signat	_PortScan,88
	global	_led_show_num
psect	text938,local,class=CODE,delta=2
global __ptext938
__ptext938:

;; *************** function _led_show_num *****************
;; Defined at:
;;		line 284 in file "D:\资料\P2\P2code_0429\code\tyw_led.c"
;; Parameters:    Size  Location     Type
;;  id              1    wreg     unsigned char 
;;  num             1    3[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  id              1   16[BANK0 ] unsigned char 
;;  i               1   17[BANK0 ] unsigned char 
;;  ch              1   15[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       1       0       0       0       0
;;      Locals:         0       5       0       0       0       0
;;      Temps:          0       9       0       0       0       0
;;      Totals:         0      15       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___bmul
;; This function is called by:
;;		_led_show_power
;;		_led_show_oil
;; This function uses a non-reentrant model
;;
psect	text938
	file	"D:\资料\P2\P2code_0429\code\tyw_led.c"
	line	284
	global	__size_of_led_show_num
	__size_of_led_show_num	equ	__end_of_led_show_num-_led_show_num
	
_led_show_num:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _led_show_num: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;led_show_num@id stored from wreg
	movwf	(led_show_num@id)
	line	287
	
l17511:	
	line	288
	
l17513:	
;tyw_led.c: 288: if(num>9 || id>4)
	movlw	(0Ah)
	subwf	(led_show_num@num),w
	skipnc
	goto	u3481
	goto	u3480
u3481:
	goto	l10040
u3480:
	
l17515:	
	movlw	(05h)
	subwf	(led_show_num@id),w
	skipc
	goto	u3491
	goto	u3490
u3491:
	goto	l17517
u3490:
	goto	l10040
	line	290
	
l17517:	
;tyw_led.c: 290: ch= font[num];
	movf	(led_show_num@num),w
	addlw	low(_font|8000h)
	movwf	fsr0
	movlw	high(_font|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(led_show_num@ch)
	line	293
	
l17519:	
;tyw_led.c: 293: for(i=0;i<7;i++)
	clrf	(led_show_num@i)
	line	294
	
l10041:	
	line	303
;tyw_led.c: 294: {
;tyw_led.c: 303: led_duty_cycles[numberIndex[id][i][0]][numberIndex[id][i][1]] = (ch & 0x01) ? 16 : 0;
	btfsc	(led_show_num@ch),(0)&7
	goto	u3501
	goto	u3500
u3501:
	goto	l17527
u3500:
	
l17525:	
	clrf	(_led_show_num$12232)
	clrf	(_led_show_num$12232+1)
	goto	l17529
	
l17527:	
	movlw	010h
	movwf	(_led_show_num$12232)
	clrf	(_led_show_num$12232+1)
	
l17529:	
	movlw	(0Eh)
	movwf	(?___bmul)
	movf	(led_show_num@id),w
	fcall	___bmul
	addlw	low(_numberIndex|8000h)
	movwf	(??_led_show_num+0)+0
	movlw	high(_numberIndex|8000h)
	skipnc
	addlw	1
	movwf	1+((??_led_show_num+0)+0)
	clrc
	rlf	(led_show_num@i),w
	addwf	0+(??_led_show_num+0)+0,w
	movwf	fsr0
	movf	1+(??_led_show_num+0)+0,w
	skipnc
	incf	1+(??_led_show_num+0)+0,w
	movwf	btemp+1
	fcall	stringtab
	movwf	(??_led_show_num+2)+0
	clrc
	rlf	(??_led_show_num+2)+0,f
	clrc
	rlf	(??_led_show_num+2)+0,f
	clrc
	rlf	(??_led_show_num+2)+0,f
	movlw	(_led_duty_cycles)&0ffh
	addwf	0+(??_led_show_num+2)+0,w
	movwf	(??_led_show_num+3)+0
	movlw	(0Eh)
	movwf	(?___bmul)
	movf	(led_show_num@id),w
	fcall	___bmul
	addlw	low(_numberIndex|8000h)
	movwf	(??_led_show_num+4)+0
	movlw	high(_numberIndex|8000h)
	skipnc
	addlw	1
	movwf	1+((??_led_show_num+4)+0)
	clrc
	rlf	(led_show_num@i),w
	addwf	0+(??_led_show_num+4)+0,w
	movwf	(??_led_show_num+6)+0
	movf	1+(??_led_show_num+4)+0,w
	skipnc
	addlw	1
	movwf	1+((??_led_show_num+6)+0)
	movlw	01h
	addwf	0+(??_led_show_num+6)+0,w
	movwf	fsr0
	movf	1+(??_led_show_num+6)+0,w
	skipnc
	incf	1+(??_led_show_num+6)+0,w
	movwf	btemp+1
	fcall	stringtab
	addwf	0+(??_led_show_num+3)+0,w
	movwf	(??_led_show_num+8)+0
	movf	0+(??_led_show_num+8)+0,w
	movwf	fsr0
	movf	(_led_show_num$12232),w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	304
	
l17531:	
;tyw_led.c: 304: ch >>= 1;
	clrc
	rrf	(led_show_num@ch),f
	line	293
	
l17533:	
	incf	(led_show_num@i),f
	
l17535:	
	movlw	(07h)
	subwf	(led_show_num@i),w
	skipc
	goto	u3511
	goto	u3510
u3511:
	goto	l10041
u3510:
	line	308
	
l10040:	
	return
	opt stack 0
GLOBAL	__end_of_led_show_num
	__end_of_led_show_num:
;; =============== function _led_show_num ends ============

	signat	_led_show_num,8312
	global	_led_show_clear
psect	text939,local,class=CODE,delta=2
global __ptext939
__ptext939:

;; *************** function _led_show_clear *****************
;; Defined at:
;;		line 251 in file "D:\资料\P2\P2code_0429\code\tyw_led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_tyw_memset
;; This function is called by:
;;		_gearPage
;;		_smokePage
;;		_UIEvent
;; This function uses a non-reentrant model
;;
psect	text939
	file	"D:\资料\P2\P2code_0429\code\tyw_led.c"
	line	251
	global	__size_of_led_show_clear
	__size_of_led_show_clear	equ	__end_of_led_show_clear-_led_show_clear
	
_led_show_clear:	
	opt	stack 2
; Regs used in _led_show_clear: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	252
	
l17509:	
;tyw_led.c: 252: tyw_memset(led_duty_cycles,0,sizeof(led_duty_cycles));
	clrf	(?_tyw_memset)
	movlw	(040h)
	movwf	0+(?_tyw_memset)+01h
	movlw	(_led_duty_cycles)&0ffh
	fcall	_tyw_memset
	line	253
	
l10031:	
	return
	opt stack 0
GLOBAL	__end_of_led_show_clear
	__end_of_led_show_clear:
;; =============== function _led_show_clear ends ============

	signat	_led_show_clear,88
	global	_EnterSleep
psect	text940,local,class=CODE,delta=2
global __ptext940
__ptext940:

;; *************** function _EnterSleep *****************
;; Defined at:
;;		line 60 in file "D:\资料\P2\P2code_0429\code\task.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_InitGpio
;;		_Delay_16nop
;;		_Init_BOD_WDT
;;		_MCU_INIT_TIMER
;; This function is called by:
;;		_IdleProgress
;; This function uses a non-reentrant model
;;
psect	text940
	file	"D:\资料\P2\P2code_0429\code\task.c"
	line	60
	global	__size_of_EnterSleep
	__size_of_EnterSleep	equ	__end_of_EnterSleep-_EnterSleep
	
_EnterSleep:	
	opt	stack 2
; Regs used in _EnterSleep: [wreg+status,2+status,0+pclath+cstack]
	line	61
	
l17487:	
;task.c: 61: if(SysInfoFlag.bits.b4 != 0)
	btfss	(_SysInfoFlag),4
	goto	u3461
	goto	u3460
u3461:
	goto	l8273
u3460:
	line	63
	
l17489:	
;task.c: 62: {
;task.c: 63: SysInfoFlag.bits.b4 = 0;
	bcf	(_SysInfoFlag),4
	line	75
	
l8273:	
	line	77
;task.c: 75: }
;task.c: 77: if(PAD6 == 1 ) return;
	btfss	(46/8),(46)&7
	goto	u3471
	goto	u3470
u3471:
	goto	l8274
u3470:
	goto	l8275
	
l8274:	
	line	80
;task.c: 80: TM0CTL |= 0x40;TM1CTL |= 0x40;T2CTL |= 0x10;
	bsf	(17)+(6/8),(6)&7	;volatile
	bsf	(20)+(6/8),(6)&7	;volatile
	bsf	(21)+(4/8),(4)&7	;volatile
	line	84
	
l17493:	
;task.c: 84: InitGpio();
	fcall	_InitGpio
	line	85
	
l17495:	
;task.c: 85: INTIE = 0x00;
	clrf	(11)	;volatile
	line	86
	
l17497:	
;task.c: 86: INTIE1 = 0x00;
	clrf	(13)	;volatile
	line	88
	
l17499:	
;task.c: 88: CLKCTL = (CLKCTL|0x10);
	bsf	(15)+(4/8),(4)&7	;volatile
	line	89
	
l17501:	
;task.c: 89: Delay_16nop();
	fcall	_Delay_16nop
	line	90
	
l17503:	
# 90 "D:\资料\P2\P2code_0429\code\task.c"
sleep ;#
psect	text940
	line	91
	
l17505:	
;task.c: 91: CLKCTL = (CLKCTL&0xEF);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(15)+(4/8),(4)&7	;volatile
	line	92
	
l17507:	
;task.c: 92: Delay_16nop();
	fcall	_Delay_16nop
	line	94
;task.c: 94: Init_BOD_WDT();
	fcall	_Init_BOD_WDT
	line	95
;task.c: 95: InitGpio();
	fcall	_InitGpio
	line	99
;task.c: 99: MCU_INIT_TIMER();
	fcall	_MCU_INIT_TIMER
	line	100
	
l8275:	
	return
	opt stack 0
GLOBAL	__end_of_EnterSleep
	__end_of_EnterSleep:
;; =============== function _EnterSleep ends ============

	signat	_EnterSleep,88
	global	_ReadChargerState
psect	text941,local,class=CODE,delta=2
global __ptext941
__ptext941:

;; *************** function _ReadChargerState *****************
;; Defined at:
;;		line 230 in file "D:\资料\P2\P2code_0429\code\key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 0/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_openNewPage
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text941
	file	"D:\资料\P2\P2code_0429\code\key.c"
	line	230
	global	__size_of_ReadChargerState
	__size_of_ReadChargerState	equ	__end_of_ReadChargerState-_ReadChargerState
	
_ReadChargerState:	
	opt	stack 3
; Regs used in _ReadChargerState: [wreg+status,2+status,0+pclath+cstack]
	line	231
	
l17455:	
;key.c: 231: if(SysInfoFlag.bits.b2 != 0)
	btfss	(_SysInfoFlag),2
	goto	u3411
	goto	u3410
u3411:
	goto	l3271
u3410:
	line	233
	
l17457:	
;key.c: 232: {
;key.c: 233: if(PAD6 == 0)
	btfsc	(46/8),(46)&7
	goto	u3421
	goto	u3420
u3421:
	goto	l17469
u3420:
	line	235
	
l17459:	
;key.c: 234: {
;key.c: 235: ReadPort.ChargerCnt++;
	bsf	status, 5	;RP0=1, select bank1
	incf	(_ReadPort)^080h,f
	line	236
	
l17461:	
;key.c: 236: if(ReadPort.ChargerCnt >= 3)
	movlw	(03h)
	subwf	(_ReadPort)^080h,w
	skipc
	goto	u3431
	goto	u3430
u3431:
	goto	l3279
u3430:
	line	238
	
l17463:	
;key.c: 237: {
;key.c: 238: SysInfoFlag.bits.b2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(_SysInfoFlag),2
	line	239
;key.c: 239: SysInfoFlag.bits.b3 = 0;
	bcf	(_SysInfoFlag),3
	line	240
	
l17465:	
;key.c: 240: ReadPort.ChargerCnt = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_ReadPort)^080h
	line	241
;key.c: 241: TimeCnt.SleepTime = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	0+(345)^0100h+03h
	clrf	1+(345)^0100h+03h
	line	243
	
l17467:	
;key.c: 243: openNewPage(PAGE_USBOUT);
	movlw	(07h)
	fcall	_openNewPage
	goto	l3279
	line	246
	
l17469:	
;key.c: 246: else ReadPort.ChargerCnt = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_ReadPort)^080h
	goto	l3279
	line	248
	
l3271:	
	line	250
;key.c: 248: else
;key.c: 249: {
;key.c: 250: if(PAD6 == 1)
	btfss	(46/8),(46)&7
	goto	u3441
	goto	u3440
u3441:
	goto	l17469
u3440:
	line	252
	
l17471:	
;key.c: 251: {
;key.c: 252: ReadPort.ChargerCnt++;
	bsf	status, 5	;RP0=1, select bank1
	incf	(_ReadPort)^080h,f
	line	253
	
l17473:	
;key.c: 253: if(ReadPort.ChargerCnt >= 3)
	movlw	(03h)
	subwf	(_ReadPort)^080h,w
	skipc
	goto	u3451
	goto	u3450
u3451:
	goto	l3279
u3450:
	line	255
	
l17475:	
;key.c: 254: {
;key.c: 255: openNewPage(PAGE_USBIN);
	movlw	(06h)
	fcall	_openNewPage
	line	256
	
l17477:	
;key.c: 256: SysInfoFlag.bits.b2 = 1;
	bsf	(_SysInfoFlag),2
	line	257
	
l17479:	
;key.c: 257: SysInfoFlag.bits.b3 = 0;
	bcf	(_SysInfoFlag),3
	line	258
	
l17481:	
;key.c: 258: ReadPort.ChargerCnt = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_ReadPort)^080h
	line	259
	
l17483:	
;key.c: 259: TimeCnt.RechgFullTime = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	0+(345)^0100h+01h
	clrf	1+(345)^0100h+01h
	line	264
	
l3279:	
	return
	opt stack 0
GLOBAL	__end_of_ReadChargerState
	__end_of_ReadChargerState:
;; =============== function _ReadChargerState ends ============

	signat	_ReadChargerState,88
	global	_KeyUpStopSmoke
psect	text942,local,class=CODE,delta=2
global __ptext942
__ptext942:

;; *************** function _KeyUpStopSmoke *****************
;; Defined at:
;;		line 157 in file "D:\资料\P2\P2code_0429\code\key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 40/0
;;		On exit  : 60/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0
;;      Totals:         0       4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___lwdiv
;;		___wmul
;;		___lmul
;;		___lldiv
;; This function is called by:
;;		_PortScan
;;		_main
;;		_PowerProgress
;; This function uses a non-reentrant model
;;
psect	text942
	file	"D:\资料\P2\P2code_0429\code\key.c"
	line	157
	global	__size_of_KeyUpStopSmoke
	__size_of_KeyUpStopSmoke	equ	__end_of_KeyUpStopSmoke-_KeyUpStopSmoke
	
_KeyUpStopSmoke:	
	opt	stack 2
; Regs used in _KeyUpStopSmoke: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	158
	
l17409:	
;key.c: 158: if(VoutInfoFlag.bits.b7 != 0)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(_VoutInfoFlag),7
	goto	u3361
	goto	u3360
u3361:
	goto	l3268
u3360:
	line	160
	
l17411:	
;key.c: 159: {
;key.c: 160: VoutInfoFlag.bits.b7 = 0;
	bcf	(_VoutInfoFlag),7
	line	161
;key.c: 161: LVDIE = 0;
	bcf	(104/8),(104)&7
	line	162
;key.c: 162: VoutInfoFlag.bits.b6 = 0;
	bcf	(_VoutInfoFlag),6
	line	163
;key.c: 163: PAD4 = 1;
	bsf	(44/8),(44)&7
	line	164
	
l17413:	
;key.c: 164: FlagSmoke = 0x0000;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(356)^0100h	;volatile
	clrf	(356+1)^0100h	;volatile
	line	165
	
l17415:	
;key.c: 165: ReadPort.KeyState &= 0x4F;
	movlw	(04Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	0+(_ReadPort)^080h+04h,f
	line	168
	
l17417:	
;key.c: 168: PAMOD32 = PAMOD32 & 0x0F | 0x90;
	movf	(134)^080h,w
	andlw	0Fh
	iorlw	090h
	movwf	(134)^080h	;volatile
	line	169
	
l17419:	
;key.c: 169: PAD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(43/8),(43)&7
	line	171
	
l17421:	
;key.c: 171: PAMOD54 = PAMOD54 & 0x0F | 0x90;
	bsf	status, 5	;RP0=1, select bank1
	movf	(135)^080h,w
	andlw	0Fh
	iorlw	090h
	movwf	(135)^080h	;volatile
	line	172
	
l17423:	
;key.c: 172: PAD5 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(45/8),(45)&7
	line	174
	
l17425:	
;key.c: 174: if( ( GetADC.Vout_Lx & 0xc0 ) == 0 )
	movf	0+(_GetADC)+04h,w
	andlw	0C0h
	btfss	status,2
	goto	u3371
	goto	u3370
u3371:
	goto	l17435
u3370:
	line	176
	
l17427:	
;key.c: 175: {
;key.c: 176: GetADC.smokeCount++;
	incf	0+(_GetADC)+02h,f
	line	177
	
l17429:	
;key.c: 177: if(GetADC.smokeCount>5)
	movlw	(06h)
	subwf	0+(_GetADC)+02h,w
	skipc
	goto	u3381
	goto	u3380
u3381:
	goto	l17443
u3380:
	line	179
	
l17431:	
;key.c: 178: {
;key.c: 179: GetADC.smokeCount=0;
	clrf	0+(_GetADC)+02h
	line	180
	
l17433:	
;key.c: 180: GetADC.Vout_Lx ^= 0x01;
	movlw	(01h)
	xorwf	0+(_GetADC)+04h,f
	goto	l17443
	line	186
	
l17435:	
;key.c: 184: else
;key.c: 185: {
;key.c: 186: GetADC.smokeCount=0;
	clrf	0+(_GetADC)+02h
	goto	l17443
	line	195
	
l17437:	
;key.c: 195: TimeCnt.SmokeTask=TimeCnt.SmokeTask*16/10;
	movlw	0Ah
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movlw	(05h)
	addlw	345&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	movwf	(??_KeyUpStopSmoke+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_KeyUpStopSmoke+0)+0+1
	swapf	(??_KeyUpStopSmoke+0)+0,f
	swapf	(??_KeyUpStopSmoke+0)+1,f
	movlw	0f0h
	andwf	(??_KeyUpStopSmoke+0)+1,f
	movf	(??_KeyUpStopSmoke+0)+0,w
	andlw	0fh
	iorwf	(??_KeyUpStopSmoke+0)+1,f
	movlw	0f0h
	andwf	(??_KeyUpStopSmoke+0)+0,f
	movf	0+(??_KeyUpStopSmoke+0)+0,w
	movwf	0+(?___lwdiv)+02h
	movf	1+(??_KeyUpStopSmoke+0)+0,w
	movwf	1+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	1+(345)^0100h+05h
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	0+(345)^0100h+05h
	line	197
;key.c: 197: break;
	goto	l17445
	line	199
	
l17439:	
;key.c: 199: TimeCnt.SmokeTask=TimeCnt.SmokeTask*15/10;
	movlw	0Ah
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	1+(345)^0100h+05h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___wmul+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	0+(345)^0100h+05h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___wmul)
	movlw	0Fh
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	1+(?___lwdiv)+02h
	movf	(0+(?___wmul)),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	1+(345)^0100h+05h
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	0+(345)^0100h+05h
	line	200
;key.c: 200: break;
	goto	l17445
	line	189
	
l17443:	
	movf	0+(_GetADC)+04h,w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 128
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; jumptable            260     6 (fixed)
; rangetable           133     6 (fixed)
; spacedrange          264     9 (fixed)
; locatedrange         129     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l17445
	xorlw	64^0	; case 64
	skipnz
	goto	l17437
	xorlw	128^64	; case 128
	skipnz
	goto	l17439
	goto	l17445
	opt asmopt_on

	line	205
	
l17445:	
;key.c: 205: if( TimeCnt.SmokeTime > TimeCnt.SmokeTask )
	bsf	status, 6	;RP1=1, select bank2
	movf	0+(345)^0100h+05h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_KeyUpStopSmoke+0)+0)
	bsf	status, 6	;RP1=1, select bank2
	movf	1+(345)^0100h+05h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_KeyUpStopSmoke+0)+0+1)
	clrf	((??_KeyUpStopSmoke+0)+0+2)
	clrf	((??_KeyUpStopSmoke+0)+0+3)
	bsf	status, 6	;RP1=1, select bank2
	movf	3+(345)^0100h+07h,w
	bcf	status, 6	;RP1=0, select bank0
	subwf	3+(??_KeyUpStopSmoke+0)+0,w
	skipz
	goto	u3395
	bsf	status, 6	;RP1=1, select bank2
	movf	2+(345)^0100h+07h,w
	bcf	status, 6	;RP1=0, select bank0
	subwf	2+(??_KeyUpStopSmoke+0)+0,w
	skipz
	goto	u3395
	bsf	status, 6	;RP1=1, select bank2
	movf	1+(345)^0100h+07h,w
	bcf	status, 6	;RP1=0, select bank0
	subwf	1+(??_KeyUpStopSmoke+0)+0,w
	skipz
	goto	u3395
	bsf	status, 6	;RP1=1, select bank2
	movf	0+(345)^0100h+07h,w
	bcf	status, 6	;RP1=0, select bank0
	subwf	0+(??_KeyUpStopSmoke+0)+0,w
u3395:
	skipnc
	goto	u3391
	goto	u3390
u3391:
	goto	l17449
u3390:
	line	207
	
l17447:	
;key.c: 206: {
;key.c: 207: TimeCnt.SmokeTime -= TimeCnt.SmokeTask;
	bsf	status, 6	;RP1=1, select bank2
	movf	0+(345)^0100h+05h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_KeyUpStopSmoke+0)+0)
	bsf	status, 6	;RP1=1, select bank2
	movf	1+(345)^0100h+05h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_KeyUpStopSmoke+0)+0+1)
	clrf	((??_KeyUpStopSmoke+0)+0+2)
	clrf	((??_KeyUpStopSmoke+0)+0+3)
	movf	0+(??_KeyUpStopSmoke+0)+0,w
	bsf	status, 6	;RP1=1, select bank2
	subwf	0+(345)^0100h+07h,f
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??_KeyUpStopSmoke+0)+0,w
	skipc
	incfsz	1+(??_KeyUpStopSmoke+0)+0,w
	goto	u3405
	goto	u3406
u3405:
	bsf	status, 6	;RP1=1, select bank2
	subwf	1+(345)^0100h+07h,f
u3406:
	bcf	status, 6	;RP1=0, select bank0
	movf	2+(??_KeyUpStopSmoke+0)+0,w
	skipc
	incfsz	2+(??_KeyUpStopSmoke+0)+0,w
	goto	u3407
	goto	u3408
u3407:
	bsf	status, 6	;RP1=1, select bank2
	subwf	2+(345)^0100h+07h,f
u3408:
	bcf	status, 6	;RP1=0, select bank0
	movf	3+(??_KeyUpStopSmoke+0)+0,w
	skipc
	incfsz	3+(??_KeyUpStopSmoke+0)+0,w
	goto	u3409
	goto	u3400
u3409:
	bsf	status, 6	;RP1=1, select bank2
	subwf	3+(345)^0100h+07h,f
u3400:
	bcf	status, 6	;RP1=0, select bank0
	bsf	status, 6	;RP1=1, select bank2

	line	208
;key.c: 208: }
	goto	l17451
	line	211
	
l17449:	
;key.c: 209: else
;key.c: 210: {
;key.c: 211: TimeCnt.SmokeTime = 0;
	movlw	low(345+07h)
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	
	clrf	indf
	incf	fsr0,f
	clrf	indf
	incf	fsr0,f
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	213
	
l17451:	
;key.c: 212: }
;key.c: 213: TimeCnt.SmokeTask = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	0+(345)^0100h+05h
	clrf	1+(345)^0100h+05h
	line	215
	
l17453:	
;key.c: 215: oilPerCent=(unsigned long)(TimeCnt.SmokeTime*100)/(2500UL*100+5000UL);
	movlw	0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lldiv+3)
	movlw	03h
	movwf	(?___lldiv+2)
	movlw	0E4h
	movwf	(?___lldiv+1)
	movlw	018h
	movwf	(?___lldiv)

	movlw	(07h)
	addlw	345&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	movwf	(?___lmul)
	incf	fsr0,f
	movf	indf,w
	movwf	(?___lmul+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(?___lmul+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(?___lmul+3)
	movlw	064h
	movwf	0+(?___lmul)+04h
	clrf	1+(?___lmul)+04h
	clrf	2+(?___lmul)+04h
	clrf	3+(?___lmul)+04h

	fcall	___lmul
	movf	(3+(?___lmul)),w
	movwf	3+(?___lldiv)+04h
	movf	(2+(?___lmul)),w
	movwf	2+(?___lldiv)+04h
	movf	(1+(?___lmul)),w
	movwf	1+(?___lldiv)+04h
	movf	(0+(?___lmul)),w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	0+(((0+(?___lldiv)))),w
	movwf	(_oilPerCent)
	line	219
	
l3268:	
	return
	opt stack 0
GLOBAL	__end_of_KeyUpStopSmoke
	__end_of_KeyUpStopSmoke:
;; =============== function _KeyUpStopSmoke ends ============

	signat	_KeyUpStopSmoke,88
	global	_gearSwitch
psect	text943,local,class=CODE,delta=2
global __ptext943
__ptext943:

;; *************** function _gearSwitch *****************
;; Defined at:
;;		line 25 in file "D:\资料\P2\P2code_0429\code\key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_openNewPage
;; This function is called by:
;;		_PortScan
;; This function uses a non-reentrant model
;;
psect	text943
	file	"D:\资料\P2\P2code_0429\code\key.c"
	line	25
	global	__size_of_gearSwitch
	__size_of_gearSwitch	equ	__end_of_gearSwitch-_gearSwitch
	
_gearSwitch:	
	opt	stack 2
; Regs used in _gearSwitch: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	26
	
l17395:	
;key.c: 26: switch (GetADC.Vout_Lx)
	goto	l17405
	line	29
	
l17397:	
;key.c: 29: GetADC.Vout_Lx = 0x40;
	movlw	(040h)
	movwf	0+(_GetADC)+04h
	line	30
;key.c: 30: break;
	goto	l3223
	line	32
	
l17399:	
;key.c: 32: GetADC.Vout_Lx = 0x80;
	movlw	(080h)
	movwf	0+(_GetADC)+04h
	line	33
;key.c: 33: break;
	goto	l3223
	line	35
	
l17401:	
;key.c: 35: GetADC.Vout_Lx = 0x00;
	clrf	0+(_GetADC)+04h
	line	36
;key.c: 36: break;
	goto	l3223
	line	26
	
l17405:	
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(_GetADC)+04h,w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 128
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; jumptable            260     6 (fixed)
; rangetable           133     6 (fixed)
; spacedrange          264     9 (fixed)
; locatedrange         129     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l17397
	xorlw	64^0	; case 64
	skipnz
	goto	l17399
	xorlw	128^64	; case 128
	skipnz
	goto	l17401
	goto	l3223
	opt asmopt_on

	line	37
	
l3223:	
	line	39
;key.c: 39: SysInfoFlag.bits.b1 = 1;
	bsf	(_SysInfoFlag),1
	line	40
	
l17407:	
;key.c: 40: openNewPage(PAGE_GEAR_SWITCH);
	movlw	(04h)
	fcall	_openNewPage
	line	41
	
l3226:	
	return
	opt stack 0
GLOBAL	__end_of_gearSwitch
	__end_of_gearSwitch:
;; =============== function _gearSwitch ends ============

	signat	_gearSwitch,88
	global	_SystemClockInit
psect	text944,local,class=CODE,delta=2
global __ptext944
__ptext944:

;; *************** function _SystemClockInit *****************
;; Defined at:
;;		line 40 in file "D:\资料\P2\P2code_0429\code\init.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 0/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Delay_16nop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text944
	file	"D:\资料\P2\P2code_0429\code\init.c"
	line	40
	global	__size_of_SystemClockInit
	__size_of_SystemClockInit	equ	__end_of_SystemClockInit-_SystemClockInit
	
_SystemClockInit:	
	opt	stack 3
; Regs used in _SystemClockInit: [wreg+status,2+status,0+pclath+cstack]
	line	46
	
l17383:	
;init.c: 46: CLKCTL = (CLKCTL&0xFC)|0x03;
	movf	(15),w
	andlw	0FCh
	iorlw	03h
	movwf	(15)	;volatile
	line	47
	
l17385:	
;init.c: 47: Delay_16nop();
	fcall	_Delay_16nop
	line	49
	
l17387:	
;init.c: 49: CLKCTL = (CLKCTL&0xF7);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(15)+(3/8),(3)&7	;volatile
	line	50
	
l17389:	
;init.c: 50: Delay_16nop();
	fcall	_Delay_16nop
	line	52
	
l17391:	
;init.c: 52: CLKCTL = (CLKCTL|0x04);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(15)+(2/8),(2)&7	;volatile
	line	53
	
l17393:	
;init.c: 53: Delay_16nop();
	fcall	_Delay_16nop
	line	54
	
l1594:	
	return
	opt stack 0
GLOBAL	__end_of_SystemClockInit
	__end_of_SystemClockInit:
;; =============== function _SystemClockInit ends ============

	signat	_SystemClockInit,88
	global	___aldiv
psect	text945,local,class=CODE,delta=2
global __ptext945
__ptext945:

;; *************** function ___aldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\aldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[BANK0 ] long 
;;  dividend        4    4[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   10[BANK0 ] long 
;;  sign            1    9[BANK0 ] unsigned char 
;;  counter         1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       8       0       0       0       0
;;      Locals:         0       6       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0      14       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_PowerProgress
;; This function uses a non-reentrant model
;;
psect	text945
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\aldiv.c"
	line	5
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:	
	opt	stack 3
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	9
	
l17311:	
	clrf	(___aldiv@sign)
	line	10
	
l17313:	
	btfss	(___aldiv@divisor+3),7
	goto	u3251
	goto	u3250
u3251:
	goto	l14620
u3250:
	line	11
	
l17315:	
	comf	(___aldiv@divisor),f
	comf	(___aldiv@divisor+1),f
	comf	(___aldiv@divisor+2),f
	comf	(___aldiv@divisor+3),f
	incf	(___aldiv@divisor),f
	skipnz
	incf	(___aldiv@divisor+1),f
	skipnz
	incf	(___aldiv@divisor+2),f
	skipnz
	incf	(___aldiv@divisor+3),f
	line	12
	clrf	(___aldiv@sign)
	incf	(___aldiv@sign),f
	line	13
	
l14620:	
	line	14
	btfss	(___aldiv@dividend+3),7
	goto	u3261
	goto	u3260
u3261:
	goto	l17321
u3260:
	line	15
	
l17317:	
	comf	(___aldiv@dividend),f
	comf	(___aldiv@dividend+1),f
	comf	(___aldiv@dividend+2),f
	comf	(___aldiv@dividend+3),f
	incf	(___aldiv@dividend),f
	skipnz
	incf	(___aldiv@dividend+1),f
	skipnz
	incf	(___aldiv@dividend+2),f
	skipnz
	incf	(___aldiv@dividend+3),f
	line	16
	
l17319:	
	movlw	(01h)
	xorwf	(___aldiv@sign),f
	line	18
	
l17321:	
	clrf	(___aldiv@quotient)
	clrf	(___aldiv@quotient+1)
	clrf	(___aldiv@quotient+2)
	clrf	(___aldiv@quotient+3)
	line	19
	
l17323:	
	movf	(___aldiv@divisor+3),w
	iorwf	(___aldiv@divisor+2),w
	iorwf	(___aldiv@divisor+1),w
	iorwf	(___aldiv@divisor),w
	skipnz
	goto	u3271
	goto	u3270
u3271:
	goto	l17343
u3270:
	line	20
	
l17325:	
	clrf	(___aldiv@counter)
	incf	(___aldiv@counter),f
	line	21
	goto	l17329
	line	22
	
l17327:	
	clrc
	rlf	(___aldiv@divisor),f
	rlf	(___aldiv@divisor+1),f
	rlf	(___aldiv@divisor+2),f
	rlf	(___aldiv@divisor+3),f
	line	23
	incf	(___aldiv@counter),f
	line	21
	
l17329:	
	btfss	(___aldiv@divisor+3),(31)&7
	goto	u3281
	goto	u3280
u3281:
	goto	l17327
u3280:
	line	26
	
l17331:	
	clrc
	rlf	(___aldiv@quotient),f
	rlf	(___aldiv@quotient+1),f
	rlf	(___aldiv@quotient+2),f
	rlf	(___aldiv@quotient+3),f
	line	27
	
l17333:	
	movf	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),w
	skipz
	goto	u3295
	movf	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),w
	skipz
	goto	u3295
	movf	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),w
	skipz
	goto	u3295
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),w
u3295:
	skipc
	goto	u3291
	goto	u3290
u3291:
	goto	l17339
u3290:
	line	28
	
l17335:	
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),f
	movf	(___aldiv@divisor+1),w
	skipc
	incfsz	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),f
	movf	(___aldiv@divisor+2),w
	skipc
	incfsz	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),f
	movf	(___aldiv@divisor+3),w
	skipc
	incfsz	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),f
	line	29
	
l17337:	
	bsf	(___aldiv@quotient)+(0/8),(0)&7
	line	31
	
l17339:	
	clrc
	rrf	(___aldiv@divisor+3),f
	rrf	(___aldiv@divisor+2),f
	rrf	(___aldiv@divisor+1),f
	rrf	(___aldiv@divisor),f
	line	32
	
l17341:	
	decfsz	(___aldiv@counter),f
	goto	u3301
	goto	u3300
u3301:
	goto	l17331
u3300:
	line	34
	
l17343:	
	movf	(___aldiv@sign),w
	skipz
	goto	u3310
	goto	l17347
u3310:
	line	35
	
l17345:	
	comf	(___aldiv@quotient),f
	comf	(___aldiv@quotient+1),f
	comf	(___aldiv@quotient+2),f
	comf	(___aldiv@quotient+3),f
	incf	(___aldiv@quotient),f
	skipnz
	incf	(___aldiv@quotient+1),f
	skipnz
	incf	(___aldiv@quotient+2),f
	skipnz
	incf	(___aldiv@quotient+3),f
	line	36
	
l17347:	
	movf	(___aldiv@quotient+3),w
	movwf	(?___aldiv+3)
	movf	(___aldiv@quotient+2),w
	movwf	(?___aldiv+2)
	movf	(___aldiv@quotient+1),w
	movwf	(?___aldiv+1)
	movf	(___aldiv@quotient),w
	movwf	(?___aldiv)

	line	37
	
l14630:	
	return
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
;; =============== function ___aldiv ends ============

	signat	___aldiv,8316
	global	___lldiv
psect	text946,local,class=CODE,delta=2
global __ptext946
__ptext946:

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4   12[BANK0 ] unsigned long 
;;  dividend        4   16[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   20[BANK0 ] unsigned long 
;;  counter         1   24[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   12[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       8       0       0       0       0
;;      Locals:         0       5       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0      13       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_KeyUpStopSmoke
;;		_PowerProgress
;; This function uses a non-reentrant model
;;
psect	text946
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lldiv.c"
	line	5
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
	opt	stack 3
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	9
	
l17285:	
	clrf	(___lldiv@quotient)
	clrf	(___lldiv@quotient+1)
	clrf	(___lldiv@quotient+2)
	clrf	(___lldiv@quotient+3)
	line	10
	
l17287:	
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u3211
	goto	u3210
u3211:
	goto	l17307
u3210:
	line	11
	
l17289:	
	clrf	(___lldiv@counter)
	incf	(___lldiv@counter),f
	line	12
	goto	l17293
	line	13
	
l17291:	
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	line	14
	incf	(___lldiv@counter),f
	line	12
	
l17293:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u3221
	goto	u3220
u3221:
	goto	l17291
u3220:
	line	17
	
l17295:	
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	line	18
	
l17297:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u3235
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u3235
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u3235
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u3235:
	skipc
	goto	u3231
	goto	u3230
u3231:
	goto	l17303
u3230:
	line	19
	
l17299:	
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),f
	movf	(___lldiv@divisor+1),w
	skipc
	incfsz	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),f
	movf	(___lldiv@divisor+2),w
	skipc
	incfsz	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),f
	movf	(___lldiv@divisor+3),w
	skipc
	incfsz	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),f
	line	20
	
l17301:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	line	22
	
l17303:	
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	line	23
	
l17305:	
	decfsz	(___lldiv@counter),f
	goto	u3241
	goto	u3240
u3241:
	goto	l17295
u3240:
	line	25
	
l17307:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	line	26
	
l14604:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
;; =============== function ___lldiv ends ============

	signat	___lldiv,8316
	global	___lmul
psect	text947,local,class=CODE,delta=2
global __ptext947
__ptext947:

;; *************** function ___lmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      4    0[BANK0 ] unsigned long 
;;  multiplicand    4    4[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  product         4    8[BANK0 ] unsigned long 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       8       0       0       0       0
;;      Locals:         0       4       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0      12       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_KeyUpStopSmoke
;;		_PowerProgress
;; This function uses a non-reentrant model
;;
psect	text947
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lmul.c"
	line	3
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:	
	opt	stack 3
; Regs used in ___lmul: [wreg+status,2+status,0]
	line	4
	
l17273:	
	clrf	(___lmul@product)
	clrf	(___lmul@product+1)
	clrf	(___lmul@product+2)
	clrf	(___lmul@product+3)
	line	6
	
l14405:	
	line	7
	btfss	(___lmul@multiplier),(0)&7
	goto	u3181
	goto	u3180
u3181:
	goto	l17277
u3180:
	line	8
	
l17275:	
	movf	(___lmul@multiplicand),w
	addwf	(___lmul@product),f
	movf	(___lmul@multiplicand+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3191
	addwf	(___lmul@product+1),f
u3191:
	movf	(___lmul@multiplicand+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3192
	addwf	(___lmul@product+2),f
u3192:
	movf	(___lmul@multiplicand+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3193
	addwf	(___lmul@product+3),f
u3193:

	line	9
	
l17277:	
	clrc
	rlf	(___lmul@multiplicand),f
	rlf	(___lmul@multiplicand+1),f
	rlf	(___lmul@multiplicand+2),f
	rlf	(___lmul@multiplicand+3),f
	line	10
	
l17279:	
	clrc
	rrf	(___lmul@multiplier+3),f
	rrf	(___lmul@multiplier+2),f
	rrf	(___lmul@multiplier+1),f
	rrf	(___lmul@multiplier),f
	line	11
	movf	(___lmul@multiplier+3),w
	iorwf	(___lmul@multiplier+2),w
	iorwf	(___lmul@multiplier+1),w
	iorwf	(___lmul@multiplier),w
	skipz
	goto	u3201
	goto	u3200
u3201:
	goto	l14405
u3200:
	line	12
	
l17281:	
	movf	(___lmul@product+3),w
	movwf	(?___lmul+3)
	movf	(___lmul@product+2),w
	movwf	(?___lmul+2)
	movf	(___lmul@product+1),w
	movwf	(?___lmul+1)
	movf	(___lmul@product),w
	movwf	(?___lmul)

	line	13
	
l14408:	
	return
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
;; =============== function ___lmul ends ============

	signat	___lmul,8316
	global	___lwdiv
psect	text948,local,class=CODE,delta=2
global __ptext948
__ptext948:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    6[BANK0 ] unsigned int 
;;  dividend        2    8[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   10[BANK0 ] unsigned int 
;;  counter         1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    6[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/100
;;		On exit  : 60/100
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       4       0       0       0       0
;;      Locals:         0       3       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_KeyUpStopSmoke
;; This function uses a non-reentrant model
;;
psect	text948
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 2
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l17247:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l17249:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u3141
	goto	u3140
u3141:
	goto	l17269
u3140:
	line	11
	
l17251:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l17255
	line	13
	
l17253:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l17255:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u3151
	goto	u3150
u3151:
	goto	l17253
u3150:
	line	17
	
l17257:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l17259:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u3165
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u3165:
	skipc
	goto	u3161
	goto	u3160
u3161:
	goto	l17265
u3160:
	line	19
	
l17261:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l17263:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l17265:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l17267:	
	decfsz	(___lwdiv@counter),f
	goto	u3171
	goto	u3170
u3171:
	goto	l17257
u3170:
	line	25
	
l17269:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l14343:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text949,local,class=CODE,delta=2
global __ptext949
__ptext949:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[BANK0 ] unsigned int 
;;  multiplicand    2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       4       0       0       0       0
;;      Locals:         0       2       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_KeyUpStopSmoke
;;		_led_show_num
;; This function uses a non-reentrant model
;;
psect	text949
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 2
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l17231:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l17233:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u3121
	goto	u3120
u3121:
	goto	l17237
u3120:
	line	8
	
l17235:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l17237:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l17239:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l17241:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u3131
	goto	u3130
u3131:
	goto	l17233
u3130:
	line	12
	
l17243:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l14333:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	___bmul
psect	text950,local,class=CODE,delta=2
global __ptext950
__ptext950:

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    2[BANK0 ] unsigned char 
;;  product         1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       1       0       0       0       0
;;      Locals:         0       2       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_led_show_num
;; This function uses a non-reentrant model
;;
psect	text950
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	4
	
l17215:	
	clrf	(___bmul@product)
	line	7
	
l17217:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u3101
	goto	u3100
u3101:
	goto	l17221
u3100:
	line	8
	
l17219:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	9
	
l17221:	
	clrc
	rlf	(___bmul@multiplicand),f
	line	10
	
l17223:	
	clrc
	rrf	(___bmul@multiplier),f
	line	11
	
l17225:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u3111
	goto	u3110
u3111:
	goto	l17217
u3110:
	line	12
	
l17227:	
	movf	(___bmul@product),w
	line	13
	
l14327:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	_UIOneSecondEvent
psect	text951,local,class=CODE,delta=2
global __ptext951
__ptext951:

;; *************** function _UIOneSecondEvent *****************
;; Defined at:
;;		line 28 in file "D:\资料\P2\P2code_0429\code\tyw_uiEvent.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_UIEvent
;; This function uses a non-reentrant model
;;
psect	text951
	file	"D:\资料\P2\P2code_0429\code\tyw_uiEvent.c"
	line	28
	global	__size_of_UIOneSecondEvent
	__size_of_UIOneSecondEvent	equ	__end_of_UIOneSecondEvent-_UIOneSecondEvent
	
_UIOneSecondEvent:	
	opt	stack 3
; Regs used in _UIOneSecondEvent: [wreg+status,2+status,0]
	line	30
	
l17207:	
;tyw_uiEvent.c: 30: if(DispayCount>10)
	movlw	(0Bh)
	subwf	(_DispayCount),w
	skipc
	goto	u3071
	goto	u3070
u3071:
	goto	l13377
u3070:
	line	31
	
l17209:	
;tyw_uiEvent.c: 31: DispayCount=10;
	movlw	(0Ah)
	movwf	(_DispayCount)
	
l13377:	
	line	32
;tyw_uiEvent.c: 32: if( DispayCount > 0 )
	movf	(_DispayCount),w
	skipz
	goto	u3080
	goto	l13380
u3080:
	line	34
	
l17211:	
;tyw_uiEvent.c: 33: {
;tyw_uiEvent.c: 34: DispayCount--;
	decf	(_DispayCount),f
	line	35
;tyw_uiEvent.c: 35: if( DispayCount == 0 )
	movf	(_DispayCount),f
	skipz
	goto	u3091
	goto	u3090
u3091:
	goto	l13380
u3090:
	line	37
	
l17213:	
;tyw_uiEvent.c: 36: {
;tyw_uiEvent.c: 37: DisplaySwitchNum = PAGE_WAIT_CLOSE;
	movlw	(0Ch)
	movwf	(_DisplaySwitchNum)
	line	38
;tyw_uiEvent.c: 38: oldDisplayPage = DisplaySwitchNum;
	movf	(_DisplaySwitchNum),w
	movwf	(_oldDisplayPage)
	line	41
	
l13380:	
	return
	opt stack 0
GLOBAL	__end_of_UIOneSecondEvent
	__end_of_UIOneSecondEvent:
;; =============== function _UIOneSecondEvent ends ============

	signat	_UIOneSecondEvent,88
	global	_showSmokeMode
psect	text952,local,class=CODE,delta=2
global __ptext952
__ptext952:

;; *************** function _showSmokeMode *****************
;; Defined at:
;;		line 490 in file "D:\资料\P2\P2code_0429\code\tyw_led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  mode            1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 40/0
;;		On exit  : 40/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_showBase
;;		_gearPage
;; This function uses a non-reentrant model
;;
psect	text952
	file	"D:\资料\P2\P2code_0429\code\tyw_led.c"
	line	490
	global	__size_of_showSmokeMode
	__size_of_showSmokeMode	equ	__end_of_showSmokeMode-_showSmokeMode
	
_showSmokeMode:	
	opt	stack 2
; Regs used in _showSmokeMode: [wreg-fsr0h+status,2+status,0]
	line	491
	
l17181:	
;tyw_led.c: 491: uint8_t mode=0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(showSmokeMode@mode)
	line	493
;tyw_led.c: 492: static uint8_t oldMode=0;
;tyw_led.c: 493: switch (GetADC.Vout_Lx)
	goto	l17189
	line	496
	
l17183:	
;tyw_led.c: 496: mode=0;
	clrf	(showSmokeMode@mode)
	line	497
;tyw_led.c: 497: break;
	goto	l17191
	line	498
;tyw_led.c: 498: case 0x40:
	
l10112:	
	line	499
;tyw_led.c: 499: mode=1;
	clrf	(showSmokeMode@mode)
	incf	(showSmokeMode@mode),f
	line	500
;tyw_led.c: 500: break;
	goto	l17191
	line	502
	
l17185:	
;tyw_led.c: 502: mode=2;
	movlw	(02h)
	movwf	(showSmokeMode@mode)
	line	503
;tyw_led.c: 503: break;
	goto	l17191
	line	493
	
l17189:	
	movf	0+(_GetADC)+04h,w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 128
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; jumptable            260     6 (fixed)
; rangetable           133     6 (fixed)
; spacedrange          264     9 (fixed)
; locatedrange         129     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l17183
	xorlw	64^0	; case 64
	skipnz
	goto	l10112
	xorlw	128^64	; case 128
	skipnz
	goto	l17185
	goto	l17191
	opt asmopt_on

	line	506
	
l17191:	
;tyw_led.c: 506: if(oldMode !=mode)
	movf	(showSmokeMode@oldMode),w
	xorwf	(showSmokeMode@mode),w
	skipnz
	goto	u3061
	goto	u3060
u3061:
	goto	l17205
u3060:
	line	508
	
l17193:	
;tyw_led.c: 507: {
;tyw_led.c: 508: led_duty_cycles[0][6]=0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	0+(_led_duty_cycles)^080h+06h
	line	509
;tyw_led.c: 509: led_duty_cycles[1][6]=0;
	clrf	0+(_led_duty_cycles)^080h+0Eh
	line	510
;tyw_led.c: 510: led_duty_cycles[2][6]=0;
	clrf	0+(_led_duty_cycles)^080h+016h
	line	511
;tyw_led.c: 511: led_duty_cycles[3][6]=0;
	clrf	0+(_led_duty_cycles)^080h+01Eh
	line	512
;tyw_led.c: 512: led_duty_cycles[4][6]=0;
	clrf	0+(_led_duty_cycles)^080h+026h
	line	513
;tyw_led.c: 513: led_duty_cycles[5][6]=0;
	clrf	0+(_led_duty_cycles)^080h+02Eh
	line	514
;tyw_led.c: 514: led_duty_cycles[7][6]=0;
	clrf	0+(_led_duty_cycles)^080h+03Eh
	line	515
;tyw_led.c: 515: led_duty_cycles[0][7]=0;
	clrf	0+(_led_duty_cycles)^080h+07h
	line	516
;tyw_led.c: 516: led_duty_cycles[1][7]=0;
	clrf	0+(_led_duty_cycles)^080h+0Fh
	line	517
	
l17195:	
;tyw_led.c: 517: oldMode=mode;
	bcf	status, 5	;RP0=0, select bank0
	movf	(showSmokeMode@mode),w
	movwf	(showSmokeMode@oldMode)
	goto	l17205
	line	528
	
l17197:	
;tyw_led.c: 528: led_duty_cycles[0][6]=16;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_led_duty_cycles)^080h+06h
	line	529
;tyw_led.c: 529: led_duty_cycles[1][6]=16;
	movlw	(010h)
	movwf	0+(_led_duty_cycles)^080h+0Eh
	line	530
;tyw_led.c: 530: led_duty_cycles[2][6]=16;
	movlw	(010h)
	movwf	0+(_led_duty_cycles)^080h+016h
	line	532
;tyw_led.c: 532: break;
	goto	l10121
	line	534
	
l17199:	
;tyw_led.c: 534: led_duty_cycles[3][6]=16;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_led_duty_cycles)^080h+01Eh
	line	535
;tyw_led.c: 535: led_duty_cycles[4][6]=16;
	movlw	(010h)
	movwf	0+(_led_duty_cycles)^080h+026h
	line	536
;tyw_led.c: 536: led_duty_cycles[5][6]=16;
	movlw	(010h)
	movwf	0+(_led_duty_cycles)^080h+02Eh
	line	537
;tyw_led.c: 537: break;
	goto	l10121
	line	539
	
l17201:	
;tyw_led.c: 539: led_duty_cycles[7][6]=16;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_led_duty_cycles)^080h+03Eh
	line	540
;tyw_led.c: 540: led_duty_cycles[0][7]=16;
	movlw	(010h)
	movwf	0+(_led_duty_cycles)^080h+07h
	line	541
;tyw_led.c: 541: led_duty_cycles[1][7]=16;
	movlw	(010h)
	movwf	0+(_led_duty_cycles)^080h+0Fh
	line	542
;tyw_led.c: 542: break;
	goto	l10121
	line	525
	
l17205:	
	movf	(showSmokeMode@mode),w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte           13     7 (fixed)
; jumptable            260     6 (fixed)
; rangetable             7     6 (fixed)
; spacedrange           12     9 (fixed)
; locatedrange           3     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l17197
	xorlw	1^0	; case 1
	skipnz
	goto	l17199
	xorlw	2^1	; case 2
	skipnz
	goto	l17201
	goto	l10121
	opt asmopt_on

	line	546
	
l10121:	
	return
	opt stack 0
GLOBAL	__end_of_showSmokeMode
	__end_of_showSmokeMode:
;; =============== function _showSmokeMode ends ============

	signat	_showSmokeMode,88
	global	_showOilBar
psect	text953,local,class=CODE,delta=2
global __ptext953
__ptext953:

;; *************** function _showOilBar *****************
;; Defined at:
;;		line 405 in file "D:\资料\P2\P2code_0429\code\tyw_led.c"
;; Parameters:    Size  Location     Type
;;  lv              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  lv              1    1[BANK0 ] unsigned char 
;;  i               1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 140/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0
;;      Temps:          0       1       0       0       0       0
;;      Totals:         0       3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_led_show_oil
;; This function uses a non-reentrant model
;;
psect	text953
	file	"D:\资料\P2\P2code_0429\code\tyw_led.c"
	line	405
	global	__size_of_showOilBar
	__size_of_showOilBar	equ	__end_of_showOilBar-_showOilBar
	
_showOilBar:	
	opt	stack 0
; Regs used in _showOilBar: [wreg-fsr0h+status,2+status,0]
;showOilBar@lv stored from wreg
	line	407
	movwf	(showOilBar@lv)
	
l17163:	
;tyw_led.c: 406: uint8_t i;
;tyw_led.c: 407: for (i = 0; i < 7; ++i)
	clrf	(showOilBar@i)
	line	409
	
l17169:	
;tyw_led.c: 408: {
;tyw_led.c: 409: led_duty_cycles[i][4]= 0;
	movf	(showOilBar@i),w
	movwf	(??_showOilBar+0)+0
	clrc
	rlf	(??_showOilBar+0)+0,f
	clrc
	rlf	(??_showOilBar+0)+0,f
	clrc
	rlf	(??_showOilBar+0)+0,w
	addlw	_led_duty_cycles+04h&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	line	407
	
l17171:	
	incf	(showOilBar@i),f
	
l17173:	
	movlw	(07h)
	subwf	(showOilBar@i),w
	skipc
	goto	u3051
	goto	u3050
u3051:
	goto	l17169
u3050:
	goto	l17179
	line	417
	
l17175:	
;tyw_led.c: 417: led_duty_cycles[6][4]=16;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_led_duty_cycles)^080h+034h
	line	418
;tyw_led.c: 418: case 5:
	
l10081:	
	line	419
;tyw_led.c: 419: led_duty_cycles[4][4]=16;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_led_duty_cycles)^080h+024h
	line	420
;tyw_led.c: 420: case 4:
	
l10082:	
	line	421
;tyw_led.c: 421: led_duty_cycles[3][4]=16;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_led_duty_cycles)^080h+01Ch
	line	422
;tyw_led.c: 422: case 3:
	
l10083:	
	line	423
;tyw_led.c: 423: led_duty_cycles[2][4]=16;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_led_duty_cycles)^080h+014h
	line	424
;tyw_led.c: 424: case 2:
	
l10084:	
	line	425
;tyw_led.c: 425: led_duty_cycles[1][4]=16;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_led_duty_cycles)^080h+0Ch
	line	426
;tyw_led.c: 426: case 1:
	
l10085:	
	line	427
;tyw_led.c: 427: led_duty_cycles[0][4]=16;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_led_duty_cycles)^080h+04h
	line	428
;tyw_led.c: 428: break;
	goto	l10088
	line	414
	
l17179:	
	movf	(showOilBar@lv),w
	; Switch size 1, requested type "space"
; Number of cases is 6, Range of values is 1 to 6
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           19    10 (average)
; direct_byte           22    10 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l10085
	xorlw	2^1	; case 2
	skipnz
	goto	l10084
	xorlw	3^2	; case 3
	skipnz
	goto	l10083
	xorlw	4^3	; case 4
	skipnz
	goto	l10082
	xorlw	5^4	; case 5
	skipnz
	goto	l10081
	xorlw	6^5	; case 6
	skipnz
	goto	l17175
	goto	l10088
	opt asmopt_on

	line	432
	
l10088:	
	return
	opt stack 0
GLOBAL	__end_of_showOilBar
	__end_of_showOilBar:
;; =============== function _showOilBar ends ============

	signat	_showOilBar,4216
	global	_showPowerBar
psect	text954,local,class=CODE,delta=2
global __ptext954
__ptext954:

;; *************** function _showPowerBar *****************
;; Defined at:
;;		line 312 in file "D:\资料\P2\P2code_0429\code\tyw_led.c"
;; Parameters:    Size  Location     Type
;;  lv              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  lv              1    1[BANK0 ] unsigned char 
;;  i               1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 140/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0
;;      Temps:          0       1       0       0       0       0
;;      Totals:         0       3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_led_show_power
;; This function uses a non-reentrant model
;;
psect	text954
	file	"D:\资料\P2\P2code_0429\code\tyw_led.c"
	line	312
	global	__size_of_showPowerBar
	__size_of_showPowerBar	equ	__end_of_showPowerBar-_showPowerBar
	
_showPowerBar:	
	opt	stack 0
; Regs used in _showPowerBar: [wreg-fsr0h+status,2+status,0]
;showPowerBar@lv stored from wreg
	line	315
	movwf	(showPowerBar@lv)
	
l17145:	
;tyw_led.c: 313: uint8_t i;
;tyw_led.c: 315: for (i = 0; i < 7; ++i)
	clrf	(showPowerBar@i)
	line	317
	
l17151:	
;tyw_led.c: 316: {
;tyw_led.c: 317: led_duty_cycles[i][5]=0;
	movf	(showPowerBar@i),w
	movwf	(??_showPowerBar+0)+0
	clrc
	rlf	(??_showPowerBar+0)+0,f
	clrc
	rlf	(??_showPowerBar+0)+0,f
	clrc
	rlf	(??_showPowerBar+0)+0,w
	addlw	_led_duty_cycles+05h&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	line	315
	
l17153:	
	incf	(showPowerBar@i),f
	
l17155:	
	movlw	(07h)
	subwf	(showPowerBar@i),w
	skipc
	goto	u3041
	goto	u3040
u3041:
	goto	l17151
u3040:
	goto	l17161
	line	323
	
l17157:	
;tyw_led.c: 323: led_duty_cycles[6][5]=16;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_led_duty_cycles)^080h+035h
	line	324
;tyw_led.c: 324: case 5:
	
l10053:	
	line	325
;tyw_led.c: 325: led_duty_cycles[4][5]=16;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_led_duty_cycles)^080h+025h
	line	326
;tyw_led.c: 326: case 4:
	
l10054:	
	line	327
;tyw_led.c: 327: led_duty_cycles[3][5]=16;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_led_duty_cycles)^080h+01Dh
	line	328
;tyw_led.c: 328: case 3:
	
l10055:	
	line	329
;tyw_led.c: 329: led_duty_cycles[2][5]=16;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_led_duty_cycles)^080h+015h
	line	330
;tyw_led.c: 330: case 2:
	
l10056:	
	line	331
;tyw_led.c: 331: led_duty_cycles[1][5]=16;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_led_duty_cycles)^080h+0Dh
	line	332
;tyw_led.c: 332: case 1:
	
l10057:	
	line	333
;tyw_led.c: 333: led_duty_cycles[0][5]=16;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_led_duty_cycles)^080h+05h
	line	334
;tyw_led.c: 334: break;
	goto	l10060
	line	320
	
l17161:	
	movf	(showPowerBar@lv),w
	; Switch size 1, requested type "space"
; Number of cases is 6, Range of values is 1 to 6
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           19    10 (average)
; direct_byte           22    10 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l10057
	xorlw	2^1	; case 2
	skipnz
	goto	l10056
	xorlw	3^2	; case 3
	skipnz
	goto	l10055
	xorlw	4^3	; case 4
	skipnz
	goto	l10054
	xorlw	5^4	; case 5
	skipnz
	goto	l10053
	xorlw	6^5	; case 6
	skipnz
	goto	l17157
	goto	l10060
	opt asmopt_on

	line	338
	
l10060:	
	return
	opt stack 0
GLOBAL	__end_of_showPowerBar
	__end_of_showPowerBar:
;; =============== function _showPowerBar ends ============

	signat	_showPowerBar,4216
	global	_tyw_memset
psect	text955,local,class=CODE,delta=2
global __ptext955
__ptext955:

;; *************** function _tyw_memset *****************
;; Defined at:
;;		line 13 in file "D:\资料\P2\P2code_0429\code\tyw_led.c"
;; Parameters:    Size  Location     Type
;;  ptr             1    wreg     PTR void 
;;		 -> led_duty_cycles(64), 
;;  value           1    0[BANK0 ] unsigned char 
;;  num             1    1[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  ptr             1    3[BANK0 ] PTR void 
;;		 -> led_duty_cycles(64), 
;;  i               1    5[BANK0 ] unsigned char 
;;  p               1    4[BANK0 ] PTR unsigned char 
;;		 -> led_duty_cycles(64), 
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       2       0       0       0       0
;;      Locals:         0       3       0       0       0       0
;;      Temps:          0       1       0       0       0       0
;;      Totals:         0       6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_led_show_clear
;; This function uses a non-reentrant model
;;
psect	text955
	file	"D:\资料\P2\P2code_0429\code\tyw_led.c"
	line	13
	global	__size_of_tyw_memset
	__size_of_tyw_memset	equ	__end_of_tyw_memset-_tyw_memset
	
_tyw_memset:	
	opt	stack 2
; Regs used in _tyw_memset: [wreg-fsr0h+status,2+status,0]
;tyw_memset@ptr stored from wreg
	movwf	(tyw_memset@ptr)
	line	14
	
l17049:	
;tyw_led.c: 14: uint8_t* p = (uint8_t*)ptr;
	movf	(tyw_memset@ptr),w
	movwf	(tyw_memset@p)
	line	15
	
l17051:	
	line	16
	
l17053:	
;tyw_led.c: 16: for ( i = 0; i < num; i++)
	clrf	(tyw_memset@i)
	goto	l17059
	line	18
	
l17055:	
;tyw_led.c: 17: {
;tyw_led.c: 18: *(p+i) = (uint8_t)value;
	movf	(tyw_memset@i),w
	addwf	(tyw_memset@p),w
	movwf	(??_tyw_memset+0)+0
	movf	0+(??_tyw_memset+0)+0,w
	movwf	fsr0
	movf	(tyw_memset@value),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	16
	
l17057:	
	incf	(tyw_memset@i),f
	
l17059:	
	movf	(tyw_memset@num),w
	subwf	(tyw_memset@i),w
	skipc
	goto	u2951
	goto	u2950
u2951:
	goto	l17055
u2950:
	line	21
	
l9972:	
	return
	opt stack 0
GLOBAL	__end_of_tyw_memset
	__end_of_tyw_memset:
;; =============== function _tyw_memset ends ============

	signat	_tyw_memset,12409
	global	_PlugProgress
psect	text956,local,class=CODE,delta=2
global __ptext956
__ptext956:

;; *************** function _PlugProgress *****************
;; Defined at:
;;		line 333 in file "D:\资料\P2\P2code_0429\code\task.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 20/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text956
	file	"D:\资料\P2\P2code_0429\code\task.c"
	line	333
	global	__size_of_PlugProgress
	__size_of_PlugProgress	equ	__end_of_PlugProgress-_PlugProgress
	
_PlugProgress:	
	opt	stack 4
; Regs used in _PlugProgress: [wreg+status,2+status,0]
	line	334
	
l16935:	
;task.c: 334: if(SysInfoFlag.bits.b2 != 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_SysInfoFlag),2
	goto	u2651
	goto	u2650
u2651:
	goto	l16967
u2650:
	line	338
	
l16937:	
;task.c: 335: {
;task.c: 338: if(SysInfoFlag.bits.b3 == 0)
	btfsc	(_SysInfoFlag),3
	goto	u2661
	goto	u2660
u2661:
	goto	l16959
u2660:
	line	340
	
l16939:	
;task.c: 339: {
;task.c: 340: if(GetADC.BatteryVoltage >= 3950)
	movlw	high(0F6Eh)
	subwf	1+(_GetADC)+05h,w
	movlw	low(0F6Eh)
	skipnz
	subwf	0+(_GetADC)+05h,w
	skipc
	goto	u2671
	goto	u2670
u2671:
	goto	l16955
u2670:
	line	342
	
l16941:	
;task.c: 341: {
;task.c: 342: if(GetADC.BatteryVoltage >= 4220 || PAD6 == 1 || GetADC.BatteryPercent >= 100)
	movlw	high(0107Ch)
	subwf	1+(_GetADC)+05h,w
	movlw	low(0107Ch)
	skipnz
	subwf	0+(_GetADC)+05h,w
	skipnc
	goto	u2681
	goto	u2680
u2681:
	goto	l16947
u2680:
	
l16943:	
	btfsc	(46/8),(46)&7
	goto	u2691
	goto	u2690
u2691:
	goto	l16947
u2690:
	
l16945:	
	movlw	(064h)
	subwf	0+(_GetADC)+0Fh,w
	skipc
	goto	u2701
	goto	u2700
u2701:
	goto	l16955
u2700:
	line	344
	
l16947:	
;task.c: 343: {
;task.c: 344: if(TimeCnt.RechgFullTime < 20) TimeCnt.RechgFullTime++;
	movlw	high(014h)
	bsf	status, 6	;RP1=1, select bank2
	subwf	1+(345)^0100h+01h,w
	movlw	low(014h)
	skipnz
	subwf	0+(345)^0100h+01h,w
	skipnc
	goto	u2711
	goto	u2710
u2711:
	goto	l16951
u2710:
	
l16949:	
	incf	0+(345)^0100h+01h,f
	skipnz
	incf	1+(345)^0100h+01h,f
	goto	l8356
	line	347
	
l16951:	
;task.c: 345: else
;task.c: 346: {
;task.c: 347: TimeCnt.RechgFullTime = 0;
	clrf	0+(345)^0100h+01h
	clrf	1+(345)^0100h+01h
	line	348
	
l16953:	
;task.c: 348: SysInfoFlag.bits.b3 = 1;
	bcf	status, 6	;RP1=0, select bank0
	bsf	(_SysInfoFlag),3
	goto	l8356
	line	351
	
l16955:	
;task.c: 351: else TimeCnt.RechgFullTime = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	0+(345)^0100h+01h
	clrf	1+(345)^0100h+01h
	goto	l8356
	line	357
	
l16959:	
;task.c: 355: else
;task.c: 356: {
;task.c: 357: if(DisplaySwitchNum == PAGE_POWER && GetADC.BatteryPercent == 100)
	movf	(_DisplaySwitchNum),w
	xorlw	05h
	skipz
	goto	u2721
	goto	u2720
u2721:
	goto	l8356
u2720:
	
l16961:	
	movf	0+(_GetADC)+0Fh,w
	xorlw	064h
	skipz
	goto	u2731
	goto	u2730
u2731:
	goto	l8356
u2730:
	line	360
	
l16963:	
;task.c: 358: {
;task.c: 360: GetADC.BatteryLevel = GetADC.BatteryPercent;
	movf	0+(_GetADC)+0Fh,w
	movwf	0+(_GetADC)+01h
	goto	l16955
	line	369
	
l16967:	
;task.c: 367: else
;task.c: 368: {
;task.c: 369: if(DispayCount==0)
	movf	(_DispayCount),f
	skipz
	goto	u2741
	goto	u2740
u2741:
	goto	l8356
u2740:
	line	371
	
l16969:	
;task.c: 370: {
;task.c: 371: if(TimeCnt.SleepTime<300)
	movlw	high(012Ch)
	bsf	status, 6	;RP1=1, select bank2
	subwf	1+(345)^0100h+03h,w
	movlw	low(012Ch)
	skipnz
	subwf	0+(345)^0100h+03h,w
	skipnc
	goto	u2751
	goto	u2750
u2751:
	goto	l8354
u2750:
	line	372
	
l16971:	
;task.c: 372: TimeCnt.SleepTime++;
	incf	0+(345)^0100h+03h,f
	skipnz
	incf	1+(345)^0100h+03h,f
	goto	l8356
	line	373
	
l8354:	
	line	374
;task.c: 373: else
;task.c: 374: SysInfoFlag.bits.b0 = 0;
	bcf	status, 6	;RP1=0, select bank0
	bcf	(_SysInfoFlag),0
	line	377
	
l8356:	
	return
	opt stack 0
GLOBAL	__end_of_PlugProgress
	__end_of_PlugProgress:
;; =============== function _PlugProgress ends ============

	signat	_PlugProgress,88
	global	_UpdateElectricityGrade
psect	text957,local,class=CODE,delta=2
global __ptext957
__ptext957:

;; *************** function _UpdateElectricityGrade *****************
;; Defined at:
;;		line 88 in file "D:\资料\P2\P2code_0429\code\modular.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp_TimeUp     2    3[BANK0 ] unsigned int 
;;  temp_Percent    1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 0/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0
;;      Temps:          0       3       0       0       0       0
;;      Totals:         0       6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text957
	file	"D:\资料\P2\P2code_0429\code\modular.c"
	line	88
	global	__size_of_UpdateElectricityGrade
	__size_of_UpdateElectricityGrade	equ	__end_of_UpdateElectricityGrade-_UpdateElectricityGrade
	
_UpdateElectricityGrade:	
	opt	stack 4
; Regs used in _UpdateElectricityGrade: [wreg-fsr0h+status,2+status,0+btemp+1+pclath]
	line	91
	
l16815:	
;modular.c: 89: uint8_t temp_Percent;
;modular.c: 90: uint16_t temp_TimeUp;
;modular.c: 91: if(SysInfoFlag.bits.b5 != 0)
	btfss	(_SysInfoFlag),5
	goto	u2391
	goto	u2390
u2391:
	goto	l16915
u2390:
	line	97
	
l16817:	
;modular.c: 92: {
;modular.c: 97: if(VoutInfoFlag.bits.b7 != 0)
	btfss	(_VoutInfoFlag),7
	goto	u2401
	goto	u2400
u2401:
	goto	l6582
u2400:
	line	99
	
l16819:	
;modular.c: 98: {
;modular.c: 99: GetADC.PercentAddCount = 0;
	clrf	0+(_GetADC)+010h
	clrf	1+(_GetADC)+010h
	line	100
;modular.c: 100: GetADC.PercentSubCount = 0;
	clrf	0+(_GetADC)+012h
	clrf	1+(_GetADC)+012h
	line	101
;modular.c: 101: }
	goto	l6619
	line	102
	
l6582:	
	line	104
;modular.c: 102: else
;modular.c: 103: {
;modular.c: 104: if(SysInfoFlag.bits.b2 != 0)
	btfss	(_SysInfoFlag),2
	goto	u2411
	goto	u2410
u2411:
	goto	l16867
u2410:
	line	106
	
l16821:	
;modular.c: 105: {
;modular.c: 106: if((GetADC.BatteryVoltage + 20) < GetADC.BatteryVoltageOld && SysInfoFlag.bits.b1 == 0)
	movf	0+(_GetADC)+05h,w
	addlw	low(014h)
	movwf	(??_UpdateElectricityGrade+0)+0
	movf	1+(_GetADC)+05h,w
	skipnc
	addlw	1
	addlw	high(014h)
	movwf	1+(??_UpdateElectricityGrade+0)+0
	movf	1+(_GetADC)+014h,w
	subwf	1+(??_UpdateElectricityGrade+0)+0,w
	skipz
	goto	u2425
	movf	0+(_GetADC)+014h,w
	subwf	0+(??_UpdateElectricityGrade+0)+0,w
u2425:
	skipnc
	goto	u2421
	goto	u2420
u2421:
	goto	l16833
u2420:
	
l16823:	
	btfsc	(_SysInfoFlag),1
	goto	u2431
	goto	u2430
u2431:
	goto	l16833
u2430:
	line	108
	
l16825:	
;modular.c: 107: {
;modular.c: 108: GetADC.PercentAddCount = 0;
	clrf	0+(_GetADC)+010h
	clrf	1+(_GetADC)+010h
	line	109
	
l16827:	
;modular.c: 109: GetADC.PercentSubCount++;
	incf	0+(_GetADC)+012h,f
	skipnz
	incf	1+(_GetADC)+012h,f
	line	110
	
l16829:	
;modular.c: 110: if(GetADC.PercentSubCount >= 100)
	movlw	high(064h)
	subwf	1+(_GetADC)+012h,w
	movlw	low(064h)
	skipnz
	subwf	0+(_GetADC)+012h,w
	skipc
	goto	u2441
	goto	u2440
u2441:
	goto	l16849
u2440:
	line	112
	
l16831:	
;modular.c: 111: {
;modular.c: 112: GetADC.PercentSubCount = 0;
	clrf	0+(_GetADC)+012h
	clrf	1+(_GetADC)+012h
	goto	l16849
	line	118
	
l16833:	
;modular.c: 116: else
;modular.c: 117: {
;modular.c: 118: GetADC.PercentSubCount = 0;
	clrf	0+(_GetADC)+012h
	clrf	1+(_GetADC)+012h
	line	120
	
l16835:	
;modular.c: 120: SysInfoFlag.bits.b1 = 1;
	bsf	(_SysInfoFlag),1
	line	122
	
l16837:	
;modular.c: 122: if(SysInfoFlag.bits.b3 == 0 && GetADC.BatteryVoltage < 4020)
	btfsc	(_SysInfoFlag),3
	goto	u2451
	goto	u2450
u2451:
	goto	l16843
u2450:
	
l16839:	
	movlw	high(0FB4h)
	subwf	1+(_GetADC)+05h,w
	movlw	low(0FB4h)
	skipnz
	subwf	0+(_GetADC)+05h,w
	skipnc
	goto	u2461
	goto	u2460
u2461:
	goto	l16843
u2460:
	line	124
	
l16841:	
;modular.c: 123: {
;modular.c: 124: if(GetADC.BatteryVoltage >= (D_BatVol_Table[GetADC.BatteryPercent] ))
	clrc
	rlf	0+(_GetADC)+0Fh,w
	addlw	low(_D_BatVol_Table|8000h)
	movwf	fsr0
	movlw	high(_D_BatVol_Table|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(??_UpdateElectricityGrade+0)+0
	fcall	stringtab
	movwf	(??_UpdateElectricityGrade+0)+0+1
	movf	1+(??_UpdateElectricityGrade+0)+0,w
	subwf	1+(_GetADC)+05h,w
	skipz
	goto	u2475
	movf	0+(??_UpdateElectricityGrade+0)+0,w
	subwf	0+(_GetADC)+05h,w
u2475:
	skipc
	goto	u2471
	goto	u2470
u2471:
	goto	l16845
u2470:
	line	126
	
l16843:	
;modular.c: 125: {
;modular.c: 126: GetADC.PercentAddCount++;
	incf	0+(_GetADC)+010h,f
	skipnz
	incf	1+(_GetADC)+010h,f
	line	127
;modular.c: 127: }
	goto	l16849
	line	130
	
l16845:	
;modular.c: 128: else
;modular.c: 129: {
;modular.c: 130: GetADC.PercentAddCount = 0;
	clrf	0+(_GetADC)+010h
	clrf	1+(_GetADC)+010h
	line	139
	
l16849:	
;modular.c: 136: }
;modular.c: 137: }
;modular.c: 139: if(GetADC.BatteryPercent >= 10 && GetADC.BatteryPercent < 90) temp_TimeUp = 3000;
	movlw	(0Ah)
	subwf	0+(_GetADC)+0Fh,w
	skipc
	goto	u2481
	goto	u2480
u2481:
	goto	l16855
u2480:
	
l16851:	
	movlw	(05Ah)
	subwf	0+(_GetADC)+0Fh,w
	skipnc
	goto	u2491
	goto	u2490
u2491:
	goto	l16855
u2490:
	
l16853:	
	movlw	low(0BB8h)
	movwf	(UpdateElectricityGrade@temp_TimeUp)
	movlw	high(0BB8h)
	movwf	((UpdateElectricityGrade@temp_TimeUp))+1
	goto	l6593
	line	140
	
l16855:	
;modular.c: 140: else temp_TimeUp = 4000;
	movlw	low(0FA0h)
	movwf	(UpdateElectricityGrade@temp_TimeUp)
	movlw	high(0FA0h)
	movwf	((UpdateElectricityGrade@temp_TimeUp))+1
	
l6593:	
	line	141
;modular.c: 141: if(GetADC.PercentAddCount >= temp_TimeUp)
	movf	(UpdateElectricityGrade@temp_TimeUp+1),w
	subwf	1+(_GetADC)+010h,w
	skipz
	goto	u2505
	movf	(UpdateElectricityGrade@temp_TimeUp),w
	subwf	0+(_GetADC)+010h,w
u2505:
	skipc
	goto	u2501
	goto	u2500
u2501:
	goto	l6619
u2500:
	line	143
	
l16857:	
;modular.c: 142: {
;modular.c: 143: GetADC.PercentAddCount = 0;
	clrf	0+(_GetADC)+010h
	clrf	1+(_GetADC)+010h
	line	144
	
l16859:	
;modular.c: 144: if(GetADC.BatteryPercent < 100) GetADC.BatteryPercent++;
	movlw	(064h)
	subwf	0+(_GetADC)+0Fh,w
	skipnc
	goto	u2511
	goto	u2510
u2511:
	goto	l16863
u2510:
	
l16861:	
	incf	0+(_GetADC)+0Fh,f
	line	146
	
l16863:	
;modular.c: 146: if(GetADC.BatteryPercent) VoutInfoFlag.bits.b3 = 0;
	movf	0+(_GetADC)+0Fh,w
	skipz
	goto	u2520
	goto	l6583
u2520:
	
l16865:	
	bcf	(_VoutInfoFlag),3
	goto	l6619
	line	151
	
l16867:	
;modular.c: 149: else
;modular.c: 150: {
;modular.c: 151: GetADC.PercentAddCount = 0;
	clrf	0+(_GetADC)+010h
	clrf	1+(_GetADC)+010h
	line	153
	
l16869:	
;modular.c: 153: if(GetADC.BatteryPercent >= 2)
	movlw	(02h)
	subwf	0+(_GetADC)+0Fh,w
	skipc
	goto	u2531
	goto	u2530
u2531:
	goto	l16897
u2530:
	line	155
	
l16871:	
;modular.c: 154: {
;modular.c: 155: if(GetADC.BatteryVoltage < D_BatVol_Table[GetADC.BatteryPercent])
	clrc
	rlf	0+(_GetADC)+0Fh,w
	addlw	low(_D_BatVol_Table|8000h)
	movwf	fsr0
	movlw	high(_D_BatVol_Table|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(??_UpdateElectricityGrade+0)+0
	fcall	stringtab
	movwf	(??_UpdateElectricityGrade+0)+0+1
	movf	1+(??_UpdateElectricityGrade+0)+0,w
	subwf	1+(_GetADC)+05h,w
	skipz
	goto	u2545
	movf	0+(??_UpdateElectricityGrade+0)+0,w
	subwf	0+(_GetADC)+05h,w
u2545:
	skipnc
	goto	u2541
	goto	u2540
u2541:
	goto	l16875
u2540:
	line	157
	
l16873:	
;modular.c: 156: {
;modular.c: 157: GetADC.PercentSubCount++;
	incf	0+(_GetADC)+012h,f
	skipnz
	incf	1+(_GetADC)+012h,f
	line	158
;modular.c: 158: }
	goto	l16877
	line	161
	
l16875:	
;modular.c: 159: else
;modular.c: 160: {
;modular.c: 161: GetADC.PercentSubCount = 0;
	clrf	0+(_GetADC)+012h
	clrf	1+(_GetADC)+012h
	line	164
	
l16877:	
;modular.c: 162: }
;modular.c: 164: if(GetADC.PercentSubCount >= 100)
	movlw	high(064h)
	subwf	1+(_GetADC)+012h,w
	movlw	low(064h)
	skipnz
	subwf	0+(_GetADC)+012h,w
	skipc
	goto	u2551
	goto	u2550
u2551:
	goto	l6619
u2550:
	line	166
	
l16879:	
;modular.c: 165: {
;modular.c: 166: GetADC.PercentSubCount = 0;
	clrf	0+(_GetADC)+012h
	clrf	1+(_GetADC)+012h
	line	168
	
l16881:	
;modular.c: 168: temp_Percent = GetADC.BatteryPercent;
	movf	0+(_GetADC)+0Fh,w
	movwf	(UpdateElectricityGrade@temp_Percent)
	line	169
;modular.c: 169: while(temp_Percent)
	goto	l16889
	line	171
	
l16883:	
;modular.c: 170: {
;modular.c: 171: temp_Percent--;
	decf	(UpdateElectricityGrade@temp_Percent),f
	line	172
	
l16885:	
;modular.c: 172: if(GetADC.BatteryVoltage >= D_BatVol_Table[temp_Percent]) break;
	clrc
	rlf	(UpdateElectricityGrade@temp_Percent),w
	addlw	low(_D_BatVol_Table|8000h)
	movwf	fsr0
	movlw	high(_D_BatVol_Table|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(??_UpdateElectricityGrade+0)+0
	fcall	stringtab
	movwf	(??_UpdateElectricityGrade+0)+0+1
	movf	1+(??_UpdateElectricityGrade+0)+0,w
	subwf	1+(_GetADC)+05h,w
	skipz
	goto	u2565
	movf	0+(??_UpdateElectricityGrade+0)+0,w
	subwf	0+(_GetADC)+05h,w
u2565:
	skipc
	goto	u2561
	goto	u2560
u2561:
	goto	l16889
u2560:
	goto	l16891
	line	169
	
l16889:	
	movf	(UpdateElectricityGrade@temp_Percent),f
	skipz
	goto	u2571
	goto	u2570
u2571:
	goto	l16883
u2570:
	line	175
	
l16891:	
;modular.c: 173: }
;modular.c: 175: if((temp_Percent + 30) < GetADC.BatteryPercent)
	movf	(UpdateElectricityGrade@temp_Percent),w
	addlw	low(01Eh)
	movwf	(??_UpdateElectricityGrade+0)+0
	movlw	high(01Eh)
	skipnc
	movlw	(high(01Eh)+1)&0ffh
	movwf	((??_UpdateElectricityGrade+0)+0)+1
	movf	1+(??_UpdateElectricityGrade+0)+0,w
	xorlw	80h
	movwf	(??_UpdateElectricityGrade+2)+0
	movlw	80h
	subwf	(??_UpdateElectricityGrade+2)+0,w
	skipz
	goto	u2585
	movf	0+(_GetADC)+0Fh,w
	subwf	0+(??_UpdateElectricityGrade+0)+0,w
u2585:

	skipnc
	goto	u2581
	goto	u2580
u2581:
	goto	l6583
u2580:
	line	177
	
l16893:	
;modular.c: 176: {
;modular.c: 177: GetADC.BatteryPercent = temp_Percent;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(UpdateElectricityGrade@temp_Percent),w
	movwf	0+(_GetADC)+0Fh
	line	179
	
l16895:	
;modular.c: 179: SysInfoFlag.bits.b1 = 1;
	bsf	(_SysInfoFlag),1
	goto	l6619
	line	187
	
l16897:	
;modular.c: 185: else
;modular.c: 186: {
;modular.c: 187: if(GetADC.BatteryVoltage < 3250)
	movlw	high(0CB2h)
	subwf	1+(_GetADC)+05h,w
	movlw	low(0CB2h)
	skipnz
	subwf	0+(_GetADC)+05h,w
	skipnc
	goto	u2591
	goto	u2590
u2591:
	goto	l16907
u2590:
	line	189
	
l16899:	
;modular.c: 188: {
;modular.c: 189: GetADC.PercentSubCount++;
	incf	0+(_GetADC)+012h,f
	skipnz
	incf	1+(_GetADC)+012h,f
	line	190
	
l16901:	
;modular.c: 190: if(GetADC.PercentSubCount >= 100)
	movlw	high(064h)
	subwf	1+(_GetADC)+012h,w
	movlw	low(064h)
	skipnz
	subwf	0+(_GetADC)+012h,w
	skipc
	goto	u2601
	goto	u2600
u2601:
	goto	l6583
u2600:
	line	192
	
l16903:	
;modular.c: 191: {
;modular.c: 192: GetADC.PercentSubCount = 0;
	clrf	0+(_GetADC)+012h
	clrf	1+(_GetADC)+012h
	line	193
;modular.c: 193: GetADC.BatteryPercent = 0;
	clrf	0+(_GetADC)+0Fh
	goto	l16895
	line	200
	
l16907:	
;modular.c: 198: else
;modular.c: 199: {
;modular.c: 200: GetADC.PercentSubCount = 0;
	clrf	0+(_GetADC)+012h
	clrf	1+(_GetADC)+012h
	line	201
	
l16909:	
;modular.c: 201: if(GetADC.BatteryVoltage < 3300 )
	movlw	high(0CE4h)
	subwf	1+(_GetADC)+05h,w
	movlw	low(0CE4h)
	skipnz
	subwf	0+(_GetADC)+05h,w
	skipnc
	goto	u2611
	goto	u2610
u2611:
	goto	l6583
u2610:
	line	203
	
l16911:	
;modular.c: 202: {
;modular.c: 203: GetADC.BatteryPercent = 0;
	clrf	0+(_GetADC)+0Fh
	goto	l16895
	line	210
	
l6583:	
	line	211
;modular.c: 206: }
;modular.c: 207: }
;modular.c: 208: }
;modular.c: 209: }
;modular.c: 210: }
;modular.c: 211: }
	goto	l6619
	line	214
	
l16915:	
;modular.c: 212: else
;modular.c: 213: {
;modular.c: 214: if(PAGE_LOG !=DisplaySwitchNum)
	decf	(_DisplaySwitchNum),w
	skipnz
	goto	u2621
	goto	u2620
u2621:
	goto	l16933
u2620:
	line	216
	
l16917:	
;modular.c: 215: {
;modular.c: 216: SysInfoFlag.bits.b5 = 1;
	bsf	(_SysInfoFlag),5
	line	217
	
l16919:	
;modular.c: 217: GetADC.PercentAddCount = 0;
	clrf	0+(_GetADC)+010h
	clrf	1+(_GetADC)+010h
	line	218
;modular.c: 218: GetADC.PercentSubCount = 0;
	clrf	0+(_GetADC)+012h
	clrf	1+(_GetADC)+012h
	line	219
	
l16921:	
;modular.c: 219: SysInfoFlag.bits.b1 = 1;
	bsf	(_SysInfoFlag),1
	line	220
;modular.c: 220: for(GetADC.BatteryPercent = 0;GetADC.BatteryPercent<100;GetADC.BatteryPercent++)
	clrf	0+(_GetADC)+0Fh
	goto	l16929
	line	222
	
l16923:	
;modular.c: 221: {
;modular.c: 222: if(GetADC.BatteryVoltageOld < D_BatVol_Table[GetADC.BatteryPercent]) break;
	clrc
	rlf	0+(_GetADC)+0Fh,w
	addlw	low(_D_BatVol_Table|8000h)
	movwf	fsr0
	movlw	high(_D_BatVol_Table|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(??_UpdateElectricityGrade+0)+0
	fcall	stringtab
	movwf	(??_UpdateElectricityGrade+0)+0+1
	movf	1+(??_UpdateElectricityGrade+0)+0,w
	subwf	1+(_GetADC)+014h,w
	skipz
	goto	u2635
	movf	0+(??_UpdateElectricityGrade+0)+0,w
	subwf	0+(_GetADC)+014h,w
u2635:
	skipnc
	goto	u2631
	goto	u2630
u2631:
	goto	l16927
u2630:
	goto	l16931
	line	220
	
l16927:	
	incf	0+(_GetADC)+0Fh,f
	
l16929:	
	movlw	(064h)
	subwf	0+(_GetADC)+0Fh,w
	skipc
	goto	u2641
	goto	u2640
u2641:
	goto	l16923
u2640:
	line	225
	
l16931:	
;modular.c: 223: }
;modular.c: 225: GetADC.BatteryLevel = GetADC.BatteryPercent;
	movf	0+(_GetADC)+0Fh,w
	movwf	0+(_GetADC)+01h
	line	226
;modular.c: 226: }
	goto	l6619
	line	229
	
l16933:	
;modular.c: 227: else
;modular.c: 228: {
;modular.c: 229: GetADC.BatteryVoltageOld = GetADC.BatteryVoltage;
	movf	1+(_GetADC)+05h,w
	movwf	1+(_GetADC)+014h
	movf	0+(_GetADC)+05h,w
	movwf	0+(_GetADC)+014h
	line	232
	
l6619:	
	return
	opt stack 0
GLOBAL	__end_of_UpdateElectricityGrade
	__end_of_UpdateElectricityGrade:
;; =============== function _UpdateElectricityGrade ends ============

	signat	_UpdateElectricityGrade,88
	global	_HAL_ADC_Sample
psect	text958,local,class=CODE,delta=2
global __ptext958
__ptext958:

;; *************** function _HAL_ADC_Sample *****************
;; Defined at:
;;		line 47 in file "D:\资料\P2\P2code_0429\code\modular.c"
;; Parameters:    Size  Location     Type
;;  ADC_CHx         1    wreg     unsigned char 
;;  Filter          1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  ADC_CHx         1    4[BANK0 ] unsigned char 
;;  Value           2   12[BANK0 ] unsigned int 
;;  Value_Max       2   10[BANK0 ] unsigned int 
;;  Value_Min       2    8[BANK0 ] unsigned int 
;;  Value_Sum       2    5[BANK0 ] unsigned int 
;;  i_max           1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       2       0       0       0       0
;;      Locals:         0      10       0       0       0       0
;;      Temps:          0       2       0       0       0       0
;;      Totals:         0      14       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_PowerProgress
;; This function uses a non-reentrant model
;;
psect	text958
	file	"D:\资料\P2\P2code_0429\code\modular.c"
	line	47
	global	__size_of_HAL_ADC_Sample
	__size_of_HAL_ADC_Sample	equ	__end_of_HAL_ADC_Sample-_HAL_ADC_Sample
	
_HAL_ADC_Sample:	
	opt	stack 3
; Regs used in _HAL_ADC_Sample: [wreg+status,2+status,0]
;HAL_ADC_Sample@ADC_CHx stored from wreg
	movwf	(HAL_ADC_Sample@ADC_CHx)
	line	48
	
l16773:	
	
l16775:	
	movlw	low(01000h)
	movwf	(HAL_ADC_Sample@Value_Min)
	movlw	high(01000h)
	movwf	((HAL_ADC_Sample@Value_Min))+1
	
l16777:	
	clrf	(HAL_ADC_Sample@Value_Max)
	clrf	(HAL_ADC_Sample@Value_Max+1)
	
l16779:	
	clrf	(HAL_ADC_Sample@Value_Sum)
	clrf	(HAL_ADC_Sample@Value_Sum+1)
	line	49
	
l16781:	
;modular.c: 49: unsigned char i_max = 0;
	clrf	(HAL_ADC_Sample@i_max)
	line	51
	
l16783:	
;modular.c: 51: ADCTL2 &= 0xE0;
	movlw	(0E0h)
	andwf	(25),f	;volatile
	line	52
	
l16785:	
;modular.c: 52: ADCTL2 |= ADC_CHx;
	movf	(HAL_ADC_Sample@ADC_CHx),w
	iorwf	(25),f	;volatile
	line	56
	
l16787:	
;modular.c: 55: {
;modular.c: 56: ADST = 1;
	bsf	(195/8),(195)&7
	line	57
;modular.c: 57: while(ADST != 0);
	
l6567:	
	btfsc	(195/8),(195)&7
	goto	u2331
	goto	u2330
u2331:
	goto	l6567
u2330:
	line	58
	
l16789:	
;modular.c: 58: Value = ADCDH;
	movf	(23),w	;volatile
	movwf	(HAL_ADC_Sample@Value)
	clrf	(HAL_ADC_Sample@Value+1)
	line	59
;modular.c: 59: Value <<= 4;
	swapf	(HAL_ADC_Sample@Value),f
	swapf	(HAL_ADC_Sample@Value+1),f
	movlw	0f0h
	andwf	(HAL_ADC_Sample@Value+1),f
	movf	(HAL_ADC_Sample@Value),w
	andlw	0fh
	iorwf	(HAL_ADC_Sample@Value+1),f
	movlw	0f0h
	andwf	(HAL_ADC_Sample@Value),f
	line	60
	
l16791:	
;modular.c: 60: Value |= (ADCTL>>4);
	swapf	(24),w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	iorwf	(HAL_ADC_Sample@Value),f
	line	62
	
l16793:	
;modular.c: 62: if(Value < Value_Min) Value_Min = Value;
	movf	(HAL_ADC_Sample@Value_Min+1),w
	subwf	(HAL_ADC_Sample@Value+1),w
	skipz
	goto	u2345
	movf	(HAL_ADC_Sample@Value_Min),w
	subwf	(HAL_ADC_Sample@Value),w
u2345:
	skipnc
	goto	u2341
	goto	u2340
u2341:
	goto	l6570
u2340:
	
l16795:	
	movf	(HAL_ADC_Sample@Value+1),w
	movwf	(HAL_ADC_Sample@Value_Min+1)
	movf	(HAL_ADC_Sample@Value),w
	movwf	(HAL_ADC_Sample@Value_Min)
	
l6570:	
	line	63
;modular.c: 63: if(Value >= Value_Max) Value_Max = Value;
	movf	(HAL_ADC_Sample@Value_Max+1),w
	subwf	(HAL_ADC_Sample@Value+1),w
	skipz
	goto	u2355
	movf	(HAL_ADC_Sample@Value_Max),w
	subwf	(HAL_ADC_Sample@Value),w
u2355:
	skipc
	goto	u2351
	goto	u2350
u2351:
	goto	l6571
u2350:
	
l16797:	
	movf	(HAL_ADC_Sample@Value+1),w
	movwf	(HAL_ADC_Sample@Value_Max+1)
	movf	(HAL_ADC_Sample@Value),w
	movwf	(HAL_ADC_Sample@Value_Max)
	
l6571:	
	line	64
;modular.c: 64: Value_Sum += Value;
	movf	(HAL_ADC_Sample@Value),w
	addwf	(HAL_ADC_Sample@Value_Sum),f
	skipnc
	incf	(HAL_ADC_Sample@Value_Sum+1),f
	movf	(HAL_ADC_Sample@Value+1),w
	addwf	(HAL_ADC_Sample@Value_Sum+1),f
	line	66
;modular.c: 66: if(Filter != 0)
	movf	(HAL_ADC_Sample@Filter),w
	skipz
	goto	u2360
	goto	l16805
u2360:
	line	68
	
l16799:	
;modular.c: 67: {
;modular.c: 68: i_max++;
	incf	(HAL_ADC_Sample@i_max),f
	line	69
	
l16801:	
;modular.c: 69: if(i_max>=6) break;
	movlw	(06h)
	subwf	(HAL_ADC_Sample@i_max),w
	skipc
	goto	u2371
	goto	u2370
u2371:
	goto	l16787
u2370:
	line	74
	
l16805:	
;modular.c: 72: }
;modular.c: 74: if(Filter != 0) Value = (Value_Sum-Value_Min-Value_Max)>>2;
	movf	(HAL_ADC_Sample@Filter),w
	skipz
	goto	u2380
	goto	l16811
u2380:
	
l16807:	
	movf	(HAL_ADC_Sample@Value_Max),w
	addwf	(HAL_ADC_Sample@Value_Min),w
	movwf	(??_HAL_ADC_Sample+0)+0
	movf	(HAL_ADC_Sample@Value_Max+1),w
	skipnc
	incf	(HAL_ADC_Sample@Value_Max+1),w
	addwf	(HAL_ADC_Sample@Value_Min+1),w
	movwf	1+(??_HAL_ADC_Sample+0)+0
	comf	(??_HAL_ADC_Sample+0)+0,f
	comf	(??_HAL_ADC_Sample+0)+1,f
	incf	(??_HAL_ADC_Sample+0)+0,f
	skipnz
	incf	(??_HAL_ADC_Sample+0)+1,f
	movf	0+(??_HAL_ADC_Sample+0)+0,w
	movwf	(HAL_ADC_Sample@Value)
	movf	1+(??_HAL_ADC_Sample+0)+0,w
	movwf	(HAL_ADC_Sample@Value+1)
	
l16809:	
	movf	(HAL_ADC_Sample@Value_Sum),w
	addwf	(HAL_ADC_Sample@Value),f
	skipnc
	incf	(HAL_ADC_Sample@Value+1),f
	movf	(HAL_ADC_Sample@Value_Sum+1),w
	addwf	(HAL_ADC_Sample@Value+1),f
	clrc
	rrf	(HAL_ADC_Sample@Value+1),f
	rrf	(HAL_ADC_Sample@Value),f
	clrc
	rrf	(HAL_ADC_Sample@Value+1),f
	rrf	(HAL_ADC_Sample@Value),f
	line	76
	
l16811:	
;modular.c: 76: return Value;
	movf	(HAL_ADC_Sample@Value+1),w
	movwf	(?_HAL_ADC_Sample+1)
	movf	(HAL_ADC_Sample@Value),w
	movwf	(?_HAL_ADC_Sample)
	line	77
	
l6578:	
	return
	opt stack 0
GLOBAL	__end_of_HAL_ADC_Sample
	__end_of_HAL_ADC_Sample:
;; =============== function _HAL_ADC_Sample ends ============

	signat	_HAL_ADC_Sample,8314
	global	_openNewPage
psect	text959,local,class=CODE,delta=2
global __ptext959
__ptext959:

;; *************** function _openNewPage *****************
;; Defined at:
;;		line 19 in file "D:\资料\P2\P2code_0429\code\tyw_uiEvent.c"
;; Parameters:    Size  Location     Type
;;  newPage         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  newPage         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_gearSwitch
;;		_PortScan
;;		_ReadChargerState
;;		_main
;;		_PowerProgress
;; This function uses a non-reentrant model
;;
psect	text959
	file	"D:\资料\P2\P2code_0429\code\tyw_uiEvent.c"
	line	19
	global	__size_of_openNewPage
	__size_of_openNewPage	equ	__end_of_openNewPage-_openNewPage
	
_openNewPage:	
	opt	stack 3
; Regs used in _openNewPage: [wreg+status,2]
;openNewPage@newPage stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(openNewPage@newPage)
	line	20
	
l16763:	
;tyw_uiEvent.c: 20: if(DisplaySwitchNum==newPage)
	movf	(_DisplaySwitchNum),w
	xorwf	(openNewPage@newPage),w
	skipz
	goto	u2321
	goto	u2320
u2321:
	goto	l16767
u2320:
	goto	l13374
	line	23
	
l16767:	
;tyw_uiEvent.c: 23: oldDisplayPage = PAGE_IDLE;
	clrf	(_oldDisplayPage)
	line	24
	
l16769:	
;tyw_uiEvent.c: 24: DispayCount=5;
	movlw	(05h)
	movwf	(_DispayCount)
	line	25
	
l16771:	
;tyw_uiEvent.c: 25: DisplaySwitchNum = newPage;
	movf	(openNewPage@newPage),w
	movwf	(_DisplaySwitchNum)
	line	26
	
l13374:	
	return
	opt stack 0
GLOBAL	__end_of_openNewPage
	__end_of_openNewPage:
;; =============== function _openNewPage ends ============

	signat	_openNewPage,4216
	global	_ClearAllRAM
psect	text960,local,class=CODE,delta=2
global __ptext960
__ptext960:

;; *************** function _ClearAllRAM *****************
;; Defined at:
;;		line 247 in file "D:\资料\P2\P2code_0429\code\init.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/40
;;		On exit  : 20/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text960
	file	"D:\资料\P2\P2code_0429\code\init.c"
	line	247
	global	__size_of_ClearAllRAM
	__size_of_ClearAllRAM	equ	__end_of_ClearAllRAM-_ClearAllRAM
	
_ClearAllRAM:	
	opt	stack 4
; Regs used in _ClearAllRAM: [wreg+status,2+status,0]
	line	248
	
l16731:	
;init.c: 248: IRP = 0;
	bcf	(31/8),(31)&7
	line	249
	
l16733:	
;init.c: 249: for(FSR = 0x20; FSR < 0x80; FSR++)
	movlw	(020h)
	movwf	(4)	;volatile
	movlw	(080h)
	subwf	(4),w	;volatile
	skipc
	goto	u2261
	goto	u2260
u2261:
	goto	l16737
u2260:
	goto	l16743
	line	251
	
l16737:	
;init.c: 250: {
;init.c: 251: INDF = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(0)	;volatile
	line	249
	
l16739:	
	incf	(4),f	;volatile
	
l16741:	
	movlw	(080h)
	subwf	(4),w	;volatile
	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l16737
u2270:
	line	254
	
l16743:	
;init.c: 252: }
;init.c: 254: for(FSR = 0xA0; FSR < 0xF0; FSR++)
	movlw	(0A0h)
	movwf	(4)	;volatile
	movlw	(0F0h)
	subwf	(4),w	;volatile
	skipc
	goto	u2281
	goto	u2280
u2281:
	goto	l16747
u2280:
	goto	l1609
	line	256
	
l16747:	
;init.c: 255: {
;init.c: 256: INDF = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(0)	;volatile
	line	254
	
l16749:	
	incf	(4),f	;volatile
	
l16751:	
	movlw	(0F0h)
	subwf	(4),w	;volatile
	skipc
	goto	u2291
	goto	u2290
u2291:
	goto	l16747
u2290:
	
l1609:	
	line	259
;init.c: 257: }
;init.c: 259: IRP = 1;
	bsf	(31/8),(31)&7
	line	260
	
l16753:	
;init.c: 260: for(FSR = 0x20; FSR < 0x60; FSR++)
	movlw	(020h)
	movwf	(4)	;volatile
	movlw	(060h)
	subwf	(4),w	;volatile
	skipc
	goto	u2301
	goto	u2300
u2301:
	goto	l16757
u2300:
	goto	l1611
	line	262
	
l16757:	
;init.c: 261: {
;init.c: 262: INDF = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(0)	;volatile
	line	260
	
l16759:	
	incf	(4),f	;volatile
	
l16761:	
	movlw	(060h)
	subwf	(4),w	;volatile
	skipc
	goto	u2311
	goto	u2310
u2311:
	goto	l16757
u2310:
	
l1611:	
	line	266
;init.c: 263: }
;init.c: 266: IRP = 0;RP0 = 0;RP1 = 0;
	bcf	(31/8),(31)&7
	bcf	(29/8),(29)&7
	bcf	(30/8),(30)&7
	line	267
	
l1612:	
	return
	opt stack 0
GLOBAL	__end_of_ClearAllRAM
	__end_of_ClearAllRAM:
;; =============== function _ClearAllRAM ends ============

	signat	_ClearAllRAM,88
	global	_MCU_INIT_TIMER
psect	text961,local,class=CODE,delta=2
global __ptext961
__ptext961:

;; *************** function _MCU_INIT_TIMER *****************
;; Defined at:
;;		line 139 in file "D:\资料\P2\P2code_0429\code\init.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 40/20
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_EnterSleep
;; This function uses a non-reentrant model
;;
psect	text961
	file	"D:\资料\P2\P2code_0429\code\init.c"
	line	139
	global	__size_of_MCU_INIT_TIMER
	__size_of_MCU_INIT_TIMER	equ	__end_of_MCU_INIT_TIMER-_MCU_INIT_TIMER
	
_MCU_INIT_TIMER:	
	opt	stack 2
; Regs used in _MCU_INIT_TIMER: [wreg+status,2+status,0]
	line	141
	
l16701:	
;init.c: 141: TM0CTL |= 0x40;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(17)+(6/8),(6)&7	;volatile
	line	142
;init.c: 142: TM0IE = 0;
	bcf	(92/8),(92)&7
	line	143
;init.c: 143: TM0IF = 0;
	bcf	(100/8),(100)&7
	line	144
;init.c: 144: TM0CTL &= 0xEF;
	bcf	(17)+(4/8),(4)&7	;volatile
	line	145
	
l16703:	
;init.c: 145: TM0CTL &= 0xF0;TM0CTL |= 0x01;
	movlw	(0F0h)
	andwf	(17),f	;volatile
	
l16705:	
	bsf	(17)+(0/8),(0)&7	;volatile
	line	146
	
l16707:	
;init.c: 146: TM0 = 256 - 100;
	movlw	(09Ch)
	movwf	(1)	;volatile
	line	147
	
l16709:	
;init.c: 147: TM0RLD = 256 - 100;
	movlw	(09Ch)
	movwf	(16)	;volatile
	line	150
	
l16711:	
;init.c: 150: TM1CTL |= 0x40;
	bsf	(20)+(6/8),(6)&7	;volatile
	line	151
	
l16713:	
;init.c: 151: TM1IE = 0;
	bcf	(93/8),(93)&7
	line	152
	
l16715:	
;init.c: 152: TM1IF = 0;
	bcf	(101/8),(101)&7
	line	153
;init.c: 153: TM1CTL &= 0xF0;TM1CTL |= 0x05;
	movlw	(0F0h)
	andwf	(20),f	;volatile
	movlw	(05h)
	iorwf	(20),f	;volatile
	line	154
	
l16717:	
;init.c: 154: TM1 = 256 - 125;
	movlw	(083h)
	movwf	(18)	;volatile
	line	155
	
l16719:	
;init.c: 155: TM1RLD = 256 - 125;
	movlw	(083h)
	movwf	(19)	;volatile
	line	158
	
l16721:	
;init.c: 158: T2CTL |= 0x10;
	bsf	(21)+(4/8),(4)&7	;volatile
	line	159
	
l16723:	
;init.c: 159: T2IE = 0;
	bcf	(94/8),(94)&7
	line	160
	
l16725:	
;init.c: 160: T2IF = 0;
	bcf	(102/8),(102)&7
	line	161
;init.c: 161: T2CTL &= 0xFC;
	movlw	(0FCh)
	andwf	(21),f	;volatile
	line	164
	
l16727:	
;init.c: 164: TM0IE = 1;
	bsf	(92/8),(92)&7
	line	165
	
l16729:	
;init.c: 165: TM0CTL &= 0xBF;
	bcf	(17)+(6/8),(6)&7	;volatile
	line	172
	
l1603:	
	return
	opt stack 0
GLOBAL	__end_of_MCU_INIT_TIMER
	__end_of_MCU_INIT_TIMER:
;; =============== function _MCU_INIT_TIMER ends ============

	signat	_MCU_INIT_TIMER,88
	global	_InitGpio
psect	text962,local,class=CODE,delta=2
global __ptext962
__ptext962:

;; *************** function _InitGpio *****************
;; Defined at:
;;		line 94 in file "D:\资料\P2\P2code_0429\code\init.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_EnterSleep
;; This function uses a non-reentrant model
;;
psect	text962
	file	"D:\资料\P2\P2code_0429\code\init.c"
	line	94
	global	__size_of_InitGpio
	__size_of_InitGpio	equ	__end_of_InitGpio-_InitGpio
	
_InitGpio:	
	opt	stack 2
; Regs used in _InitGpio: [wreg+status,2+status,0]
	line	96
	
l16687:	
;init.c: 96: PAD = 0xFC;
	movlw	(0FCh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	97
;init.c: 97: PAMOD76 = PAMOD76 & 0x00 | 0x80 | 0x09;
	movlw	(089h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(136)^080h	;volatile
	line	98
;init.c: 98: PAMOD54 = PAMOD54 & 0x00 | 0x30 | 0x06;
	movlw	(036h)
	movwf	(135)^080h	;volatile
	line	99
;init.c: 99: PAMOD32 = PAMOD32 & 0x00 | 0x30 | 0x06;
	movlw	(036h)
	movwf	(134)^080h	;volatile
	line	100
;init.c: 100: PAMOD10 = PAMOD10 & 0x00 | 0x10 | 0x01;
	movlw	(011h)
	movwf	(133)^080h	;volatile
	line	103
;init.c: 103: PBD = 0x04;
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(6)	;volatile
	line	104
;init.c: 104: PBMOD76 = PBMOD76 & 0x00 | 0x60 | 0x06;
	movlw	(066h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(143)^080h	;volatile
	line	105
;init.c: 105: PBMOD54 = PBMOD54 & 0x00 | 0x60 | 0x06;
	movlw	(066h)
	movwf	(142)^080h	;volatile
	line	106
;init.c: 106: PBMOD32 = PBMOD32 & 0x00 | 0x60 | 0x90;
	movlw	(0F0h)
	movwf	(141)^080h	;volatile
	line	107
;init.c: 107: PBMOD10 = PBMOD10 & 0x00 | 0x60 | 0x06;
	movlw	(066h)
	movwf	(140)^080h	;volatile
	line	109
	
l16689:	
;init.c: 109: PDD = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(7)	;volatile
	line	110
	
l16691:	
;init.c: 110: PDMOD10 = PDMOD10 & 0x00 | 0x60 | 0x06;
	movlw	(066h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(144)^080h	;volatile
	line	112
	
l16693:	
;init.c: 112: PINMOD &= 0xD8;
	movlw	(0D8h)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	andwf	(261)^0100h,f	;volatile
	line	125
	
l16695:	
;init.c: 125: ADCTL &= 0xF8;
	movlw	(0F8h)
	bcf	status, 6	;RP1=0, select bank0
	andwf	(24),f	;volatile
	line	126
	
l16697:	
;init.c: 126: ADCTL |= 0x05;
	movlw	(05h)
	iorwf	(24),f	;volatile
	line	127
	
l16699:	
;init.c: 127: ADCTL2 &= 0x3F;
	movlw	(03Fh)
	andwf	(25),f	;volatile
	line	128
	
l1600:	
	return
	opt stack 0
GLOBAL	__end_of_InitGpio
	__end_of_InitGpio:
;; =============== function _InitGpio ends ============

	signat	_InitGpio,88
	global	_Init_BOD_WDT
psect	text963,local,class=CODE,delta=2
global __ptext963
__ptext963:

;; *************** function _Init_BOD_WDT *****************
;; Defined at:
;;		line 65 in file "D:\资料\P2\P2code_0429\code\init.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/20
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_EnterSleep
;; This function uses a non-reentrant model
;;
psect	text963
	file	"D:\资料\P2\P2code_0429\code\init.c"
	line	65
	global	__size_of_Init_BOD_WDT
	__size_of_Init_BOD_WDT	equ	__end_of_Init_BOD_WDT-_Init_BOD_WDT
	
_Init_BOD_WDT:	
	opt	stack 2
; Regs used in _Init_BOD_WDT: [wreg+status,2+status,0]
	line	67
	
l16671:	
;init.c: 67: LVDIE = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(104/8),(104)&7
	line	68
;init.c: 68: LVDIF = 0;
	bcf	(112/8),(112)&7
	line	69
	
l16673:	
;init.c: 69: LVCTL &= 0xF0;LVCTL |= 0x03;
	movlw	(0F0h)
	andwf	(22),f	;volatile
	movlw	(03h)
	iorwf	(22),f	;volatile
	line	70
	
l16675:	
;init.c: 70: LVCTL |= 0x40;
	bsf	(22)+(6/8),(6)&7	;volatile
	line	71
	
l16677:	
;init.c: 71: LVCTL |= 0x20;
	bsf	(22)+(5/8),(5)&7	;volatile
	line	72
	
l16679:	
;init.c: 72: LVCTL |= 0x10;
	bsf	(22)+(4/8),(4)&7	;volatile
	line	75
;init.c: 75: OPTION &= 0xF3;
	movlw	(0F3h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(129)^080h,f	;volatile
	line	76
;init.c: 76: OPTION |= 0x0C;
	movlw	(0Ch)
	iorwf	(129)^080h,f	;volatile
	line	77
	
l16681:	
# 77 "D:\资料\P2\P2code_0429\code\init.c"
CLRWDT ;#
psect	text963
	line	79
	
l16683:	
;init.c: 79: WKTIE = 0;
	bcf	(91/8),(91)&7
	line	80
	
l16685:	
;init.c: 80: WKTIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(99/8),(99)&7
	line	81
;init.c: 81: OPTION &= 0xFC;
	movlw	(0FCh)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(129)^080h,f	;volatile
	line	82
;init.c: 82: OPTION |= 0x03;
	movlw	(03h)
	iorwf	(129)^080h,f	;volatile
	line	83
	
l1597:	
	return
	opt stack 0
GLOBAL	__end_of_Init_BOD_WDT
	__end_of_Init_BOD_WDT:
;; =============== function _Init_BOD_WDT ends ============

	signat	_Init_BOD_WDT,88
	global	_Delay_16nop
psect	text964,local,class=CODE,delta=2
global __ptext964
__ptext964:

;; *************** function _Delay_16nop *****************
;; Defined at:
;;		line 23 in file "D:\资料\P2\P2code_0429\code\init.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 0/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SystemClockInit
;;		_EnterSleep
;; This function uses a non-reentrant model
;;
psect	text964
	file	"D:\资料\P2\P2code_0429\code\init.c"
	line	23
	global	__size_of_Delay_16nop
	__size_of_Delay_16nop	equ	__end_of_Delay_16nop-_Delay_16nop
	
_Delay_16nop:	
	opt	stack 2
; Regs used in _Delay_16nop: []
	line	24
	
l16669:	
# 24 "D:\资料\P2\P2code_0429\code\init.c"
nop ;#
# 24 "D:\资料\P2\P2code_0429\code\init.c"
nop ;#
# 24 "D:\资料\P2\P2code_0429\code\init.c"
nop ;#
# 24 "D:\资料\P2\P2code_0429\code\init.c"
nop ;#
	line	25
# 25 "D:\资料\P2\P2code_0429\code\init.c"
nop ;#
# 25 "D:\资料\P2\P2code_0429\code\init.c"
nop ;#
# 25 "D:\资料\P2\P2code_0429\code\init.c"
nop ;#
# 25 "D:\资料\P2\P2code_0429\code\init.c"
nop ;#
	line	26
# 26 "D:\资料\P2\P2code_0429\code\init.c"
nop ;#
# 26 "D:\资料\P2\P2code_0429\code\init.c"
nop ;#
# 26 "D:\资料\P2\P2code_0429\code\init.c"
nop ;#
# 26 "D:\资料\P2\P2code_0429\code\init.c"
nop ;#
	line	27
# 27 "D:\资料\P2\P2code_0429\code\init.c"
nop ;#
# 27 "D:\资料\P2\P2code_0429\code\init.c"
nop ;#
# 27 "D:\资料\P2\P2code_0429\code\init.c"
nop ;#
# 27 "D:\资料\P2\P2code_0429\code\init.c"
nop ;#
psect	text964
	line	28
	
l1591:	
	return
	opt stack 0
GLOBAL	__end_of_Delay_16nop
	__end_of_Delay_16nop:
;; =============== function _Delay_16nop ends ============

	signat	_Delay_16nop,88
	global	_Interrupt_ISR
psect	text965,local,class=CODE,delta=2
global __ptext965
__ptext965:

;; *************** function _Interrupt_ISR *****************
;; Defined at:
;;		line 171 in file "D:\资料\P2\P2code_0429\code\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_led_matrix_run
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text965
	file	"D:\资料\P2\P2code_0429\code\main.c"
	line	171
	global	__size_of_Interrupt_ISR
	__size_of_Interrupt_ISR	equ	__end_of_Interrupt_ISR-_Interrupt_ISR
	
_Interrupt_ISR:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _Interrupt_ISR: [allreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_Interrupt_ISR+0)
	movf	fsr0,w
	movwf	(??_Interrupt_ISR+1)
	movf	pclath,w
	movwf	(??_Interrupt_ISR+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_Interrupt_ISR+3)
	ljmp	_Interrupt_ISR
psect	text965
	line	172
	
i1l16973:	
;main.c: 172: if(CMPIF != 0)
	btfss	(116/8),(116)&7
	goto	u276_21
	goto	u276_20
u276_21:
	goto	i1l4943
u276_20:
	line	174
	
i1l16975:	
;main.c: 173: {
;main.c: 174: if(VoutInfoFlag.bits.b7 != 0 && VoutInfoFlag.bits.b6 == 0)
	btfss	(_VoutInfoFlag),7
	goto	u277_21
	goto	u277_20
u277_21:
	goto	i1l4944
u277_20:
	
i1l16977:	
	btfsc	(_VoutInfoFlag),6
	goto	u278_21
	goto	u278_20
u278_21:
	goto	i1l4944
u278_20:
	line	176
	
i1l16979:	
;main.c: 175: {
;main.c: 176: PAD4 = 1;
	bsf	(44/8),(44)&7
	line	177
;main.c: 177: PAD2 = 1;
	bsf	(42/8),(42)&7
	line	178
;main.c: 178: VoutInfoFlag.bits.b6 = 1;
	bsf	(_VoutInfoFlag),6
	line	179
	
i1l4944:	
	line	181
;main.c: 179: }
;main.c: 181: CMPIF = 0;
	bcf	(116/8),(116)&7
	line	182
;main.c: 182: }
	goto	i1l4963
	line	183
	
i1l4943:	
;main.c: 183: else if(LVDIF != 0)
	btfss	(112/8),(112)&7
	goto	u279_21
	goto	u279_20
u279_21:
	goto	i1l4946
u279_20:
	line	185
	
i1l16981:	
;main.c: 184: {
;main.c: 185: if(((VoutInfoFlag.bits.b7 != 0) || (LVDIE != 0)) && VoutInfoFlag.bits.b6 == 0)
	btfsc	(_VoutInfoFlag),7
	goto	u280_21
	goto	u280_20
u280_21:
	goto	i1l4949
u280_20:
	
i1l16983:	
	btfss	(104/8),(104)&7
	goto	u281_21
	goto	u281_20
u281_21:
	goto	i1l4947
u281_20:
	
i1l4949:	
	btfsc	(_VoutInfoFlag),6
	goto	u282_21
	goto	u282_20
u282_21:
	goto	i1l4947
u282_20:
	line	187
	
i1l16985:	
;main.c: 186: {
;main.c: 187: PAD4 = 1;
	bsf	(44/8),(44)&7
	line	188
;main.c: 188: PAD2 = 1;
	bsf	(42/8),(42)&7
	line	189
;main.c: 189: VoutInfoFlag.bits.b6 = 1;
	bsf	(_VoutInfoFlag),6
	line	190
	
i1l4947:	
	line	191
;main.c: 190: }
;main.c: 191: LVDIF = 0;
	bcf	(112/8),(112)&7
	line	192
;main.c: 192: }
	goto	i1l4963
	line	193
	
i1l4946:	
;main.c: 193: else if(TM0IF != 0)
	btfss	(100/8),(100)&7
	goto	u283_21
	goto	u283_20
u283_21:
	goto	i1l4951
u283_20:
	line	195
	
i1l16987:	
;main.c: 194: {
;main.c: 195: TimeCnt.TimeBase++;
	bsf	status, 6	;RP1=1, select bank2
	incf	(345)^0100h,f
	line	196
	
i1l16989:	
;main.c: 196: if(TimeCnt.TimeBase >= 100)
	movlw	(064h)
	subwf	(345)^0100h,w
	skipc
	goto	u284_21
	goto	u284_20
u284_21:
	goto	i1l16995
u284_20:
	line	198
	
i1l16991:	
;main.c: 197: {
;main.c: 198: TimeCnt.TimeBase = 0;
	clrf	(345)^0100h
	line	199
	
i1l16993:	
;main.c: 199: SysInfoFlag.bits.b6 = 1;
	bcf	status, 6	;RP1=0, select bank0
	bsf	(_SysInfoFlag),6
	line	203
	
i1l16995:	
;main.c: 200: }
;main.c: 203: led_matrix_run();
	fcall	_led_matrix_run
	line	204
	
i1l16997:	
;main.c: 204: if(testBit)
	movf	(_testBit),w
	skipz
	goto	u285_20
	goto	i1l4953
u285_20:
	line	206
	
i1l16999:	
;main.c: 205: {
;main.c: 206: PBD1=0;
	bcf	(49/8),(49)&7
	line	207
	
i1l17001:	
;main.c: 207: testBit=0;
	clrf	(_testBit)
	line	208
;main.c: 208: }
	goto	i1l4954
	line	209
	
i1l4953:	
	line	211
;main.c: 209: else
;main.c: 210: {
;main.c: 211: PBD1=1;
	bsf	(49/8),(49)&7
	line	212
;main.c: 212: testBit=1;
	clrf	(_testBit)
	incf	(_testBit),f
	line	213
	
i1l4954:	
	line	217
;main.c: 213: }
;main.c: 217: TM0IF = 0;
	bcf	(100/8),(100)&7
	line	218
;main.c: 218: }
	goto	i1l4963
	line	219
	
i1l4951:	
;main.c: 219: else if(INT0IF != 0)
	btfss	(96/8),(96)&7
	goto	u286_21
	goto	u286_20
u286_21:
	goto	i1l4956
u286_20:
	line	221
	
i1l17003:	
;main.c: 220: {
;main.c: 221: INT0IF = 0;
	bcf	(96/8),(96)&7
	line	222
;main.c: 222: }
	goto	i1l4963
	line	223
	
i1l4956:	
;main.c: 223: else if(INT1IF != 0)
	btfss	(97/8),(97)&7
	goto	u287_21
	goto	u287_20
u287_21:
	goto	i1l4958
u287_20:
	line	225
	
i1l17005:	
;main.c: 224: {
;main.c: 225: INT1IF = 0;
	bcf	(97/8),(97)&7
	line	226
;main.c: 226: }
	goto	i1l4963
	line	227
	
i1l4958:	
;main.c: 227: else if(INT2IF != 0)
	btfss	(98/8),(98)&7
	goto	u288_21
	goto	u288_20
u288_21:
	goto	i1l4960
u288_20:
	line	229
	
i1l17007:	
;main.c: 228: {
;main.c: 229: INT2IF = 0;
	bcf	(98/8),(98)&7
	line	230
;main.c: 230: }
	goto	i1l4963
	line	231
	
i1l4960:	
;main.c: 231: else if (WKTIF != 0)
	btfss	(99/8),(99)&7
	goto	u289_21
	goto	u289_20
u289_21:
	goto	i1l4957
u289_20:
	line	233
	
i1l17009:	
;main.c: 232: {
;main.c: 233: WKTIF = 0;
	bcf	(99/8),(99)&7
	goto	i1l4963
	line	235
	
i1l4957:	
	
i1l4963:	
	movf	(??_Interrupt_ISR+3),w
	movwf	btemp+1
	movf	(??_Interrupt_ISR+2),w
	movwf	pclath
	movf	(??_Interrupt_ISR+1),w
	movwf	fsr0
	swapf	(??_Interrupt_ISR+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_Interrupt_ISR
	__end_of_Interrupt_ISR:
;; =============== function _Interrupt_ISR ends ============

	signat	_Interrupt_ISR,88
	global	_led_matrix_run
psect	text966,local,class=CODE,delta=2
global __ptext966
__ptext966:

;; *************** function _led_matrix_run *****************
;; Defined at:
;;		line 62 in file "D:\资料\P2\P2code_0429\code\tyw_led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  rowCount        1    9[COMMON] unsigned char 
;;  y               1    8[COMMON] unsigned char 
;;  x               1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 20/40
;;		On exit  : 60/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_led_set_io_od
;;		i1___bmul
;;		_led_set_io_pp
;; This function is called by:
;;		_Interrupt_ISR
;; This function uses a non-reentrant model
;;
psect	text966
	file	"D:\资料\P2\P2code_0429\code\tyw_led.c"
	line	62
	global	__size_of_led_matrix_run
	__size_of_led_matrix_run	equ	__end_of_led_matrix_run-_led_matrix_run
	
_led_matrix_run:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _led_matrix_run: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	64
	
i1l17011:	
	clrf	(led_matrix_run@y)
	line	66
;tyw_led.c: 66: uint8_t rowCount = 0;
	clrf	(led_matrix_run@rowCount)
	line	69
;tyw_led.c: 69: for (rowCount = 0; rowCount < 8; rowCount++)
	clrf	(led_matrix_run@rowCount)
	line	71
	
i1l17017:	
;tyw_led.c: 70: {
;tyw_led.c: 71: led_set_io_od(rowCount);
	movf	(led_matrix_run@rowCount),w
	fcall	_led_set_io_od
	line	69
	
i1l17019:	
	incf	(led_matrix_run@rowCount),f
	
i1l17021:	
	movlw	(08h)
	subwf	(led_matrix_run@rowCount),w
	skipc
	goto	u290_21
	goto	u290_20
u290_21:
	goto	i1l17017
u290_20:
	line	74
	
i1l17023:	
;tyw_led.c: 72: }
;tyw_led.c: 74: for (rowCount = 0; rowCount < 3; rowCount++)
	clrf	(led_matrix_run@rowCount)
	line	77
	
i1l17029:	
;tyw_led.c: 75: {
;tyw_led.c: 77: if (ledShowIndex[row][rowCount][0] == 0)
	movlw	(06h)
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(led_matrix_run@row),w
	fcall	i1___bmul
	addlw	low(_ledShowIndex|8000h)
	movwf	(??_led_matrix_run+0)+0
	movlw	high(_ledShowIndex|8000h)
	skipnc
	addlw	1
	movwf	1+((??_led_matrix_run+0)+0)
	clrc
	rlf	(led_matrix_run@rowCount),w
	addwf	0+(??_led_matrix_run+0)+0,w
	movwf	fsr0
	movf	1+(??_led_matrix_run+0)+0,w
	skipnc
	incf	1+(??_led_matrix_run+0)+0,w
	movwf	btemp+1
	fcall	stringtab
	iorlw	0
	skipz
	goto	u291_21
	goto	u291_20
u291_21:
	goto	i1l17033
u291_20:
	goto	i1l17043
	line	80
	
i1l17033:	
;tyw_led.c: 80: x = ledShowIndex[row][rowCount][0] - 1;
	movlw	(06h)
	movwf	(?i1___bmul)
	movf	(led_matrix_run@row),w
	fcall	i1___bmul
	addlw	low(_ledShowIndex|8000h)
	movwf	(??_led_matrix_run+0)+0
	movlw	high(_ledShowIndex|8000h)
	skipnc
	addlw	1
	movwf	1+((??_led_matrix_run+0)+0)
	clrc
	rlf	(led_matrix_run@rowCount),w
	addwf	0+(??_led_matrix_run+0)+0,w
	movwf	fsr0
	movf	1+(??_led_matrix_run+0)+0,w
	skipnc
	incf	1+(??_led_matrix_run+0)+0,w
	movwf	btemp+1
	fcall	stringtab
	addlw	0FFh
	movwf	(led_matrix_run@x)
	line	81
;tyw_led.c: 81: y = ledShowIndex[row][rowCount][1] - 1;
	movlw	(06h)
	movwf	(?i1___bmul)
	movf	(led_matrix_run@row),w
	fcall	i1___bmul
	addlw	low(_ledShowIndex|8000h)
	movwf	(??_led_matrix_run+0)+0
	movlw	high(_ledShowIndex|8000h)
	skipnc
	addlw	1
	movwf	1+((??_led_matrix_run+0)+0)
	clrc
	rlf	(led_matrix_run@rowCount),w
	addwf	0+(??_led_matrix_run+0)+0,w
	movwf	(??_led_matrix_run+2)+0
	movf	1+(??_led_matrix_run+0)+0,w
	skipnc
	addlw	1
	movwf	1+((??_led_matrix_run+2)+0)
	movlw	01h
	addwf	0+(??_led_matrix_run+2)+0,w
	movwf	fsr0
	movf	1+(??_led_matrix_run+2)+0,w
	skipnc
	incf	1+(??_led_matrix_run+2)+0,w
	movwf	btemp+1
	fcall	stringtab
	addlw	0FFh
	movwf	(led_matrix_run@y)
	line	83
	
i1l17035:	
;tyw_led.c: 83: if(led_duty_cycles[x][y])
	movf	(led_matrix_run@x),w
	movwf	(??_led_matrix_run+0)+0
	clrc
	rlf	(??_led_matrix_run+0)+0,f
	clrc
	rlf	(??_led_matrix_run+0)+0,f
	clrc
	rlf	(??_led_matrix_run+0)+0,f
	movlw	(_led_duty_cycles)&0ffh
	addwf	0+(??_led_matrix_run+0)+0,w
	movwf	(??_led_matrix_run+1)+0
	movf	(led_matrix_run@y),w
	addwf	0+(??_led_matrix_run+1)+0,w
	movwf	(??_led_matrix_run+2)+0
	movf	0+(??_led_matrix_run+2)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf
	skipnz
	goto	u292_21
	goto	u292_20
u292_21:
	goto	i1l17039
u292_20:
	line	86
	
i1l17037:	
;tyw_led.c: 84: {
;tyw_led.c: 86: led_set_io_pp(y, 1);
	clrf	(?_led_set_io_pp)
	incf	(?_led_set_io_pp),f
	movf	(led_matrix_run@y),w
	fcall	_led_set_io_pp
	line	74
	
i1l17039:	
	incf	(led_matrix_run@rowCount),f
	
i1l17041:	
	movlw	(03h)
	subwf	(led_matrix_run@rowCount),w
	skipc
	goto	u293_21
	goto	u293_20
u293_21:
	goto	i1l17029
u293_20:
	line	89
	
i1l17043:	
;tyw_led.c: 87: }
;tyw_led.c: 88: }
;tyw_led.c: 89: row++;
	incf	(led_matrix_run@row),f
	line	90
	
i1l17045:	
;tyw_led.c: 90: if (row == 18)
	movf	(led_matrix_run@row),w
	xorlw	012h
	skipz
	goto	u294_21
	goto	u294_20
u294_21:
	goto	i1l9984
u294_20:
	line	92
	
i1l17047:	
;tyw_led.c: 91: {
;tyw_led.c: 92: row = 0;
	clrf	(led_matrix_run@row)
	line	96
	
i1l9984:	
	return
	opt stack 0
GLOBAL	__end_of_led_matrix_run
	__end_of_led_matrix_run:
;; =============== function _led_matrix_run ends ============

	signat	_led_matrix_run,88
	global	i1___bmul
psect	text967,local,class=CODE,delta=2
global __ptext967
__ptext967:

;; *************** function i1___bmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
;; Parameters:    Size  Location     Type
;;  __bmul          1    wreg     unsigned char 
;;  __bmul          1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  __bmul          1    1[COMMON] unsigned char 
;;  __bmul          1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         1       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_led_matrix_run
;; This function uses a non-reentrant model
;;
psect	text967
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
	line	3
	global	__size_ofi1___bmul
	__size_ofi1___bmul	equ	__end_ofi1___bmul-i1___bmul
	
i1___bmul:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1___bmul: [wreg+status,2+status,0]
;i1___bmul@multiplier stored from wreg
	movwf	(i1___bmul@multiplier)
	line	4
	
i1l17367:	
	clrf	(i1___bmul@product)
	line	7
	
i1l17369:	
	btfss	(i1___bmul@multiplier),(0)&7
	goto	u334_21
	goto	u334_20
u334_21:
	goto	i1l17373
u334_20:
	line	8
	
i1l17371:	
	movf	(i1___bmul@multiplicand),w
	addwf	(i1___bmul@product),f
	line	9
	
i1l17373:	
	clrc
	rlf	(i1___bmul@multiplicand),f
	line	10
	
i1l17375:	
	clrc
	rrf	(i1___bmul@multiplier),f
	line	11
	
i1l17377:	
	movf	(i1___bmul@multiplier),f
	skipz
	goto	u335_21
	goto	u335_20
u335_21:
	goto	i1l17369
u335_20:
	line	12
	
i1l17379:	
	movf	(i1___bmul@product),w
	line	13
	
i1l14327:	
	return
	opt stack 0
GLOBAL	__end_ofi1___bmul
	__end_ofi1___bmul:
;; =============== function i1___bmul ends ============

	signat	i1___bmul,89
	global	_led_set_io_pp
psect	text968,local,class=CODE,delta=2
global __ptext968
__ptext968:

;; *************** function _led_set_io_pp *****************
;; Defined at:
;;		line 216 in file "D:\资料\P2\P2code_0429\code\tyw_led.c"
;; Parameters:    Size  Location     Type
;;  io_num          1    wreg     unsigned char 
;;  type            1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  io_num          1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         1       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_led_matrix_run
;; This function uses a non-reentrant model
;;
psect	text968
	file	"D:\资料\P2\P2code_0429\code\tyw_led.c"
	line	216
	global	__size_of_led_set_io_pp
	__size_of_led_set_io_pp	equ	__end_of_led_set_io_pp-_led_set_io_pp
	
_led_set_io_pp:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _led_set_io_pp: [wreg-fsr0h+status,2+status,0]
;led_set_io_pp@io_num stored from wreg
	movwf	(led_set_io_pp@io_num)
	line	217
	
i1l17087:	
;tyw_led.c: 217: switch(io_num)
	goto	i1l17139
	line	220
	
i1l17089:	
;tyw_led.c: 220: {PBMOD32= PBMOD32 & 0x0F | 0x60; if(type)PBD3=1;else PBD3=0;};
	bsf	status, 5	;RP0=1, select bank1
	movf	(141)^080h,w
	andlw	0Fh
	iorlw	060h
	movwf	(141)^080h	;volatile
	
i1l17091:	
	movf	(led_set_io_pp@type),w
	skipz
	goto	u296_20
	goto	i1l10003
u296_20:
	
i1l17093:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(51/8),(51)&7
	goto	i1l10028
	
i1l10003:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(51/8),(51)&7
	goto	i1l10028
	line	224
	
i1l17095:	
;tyw_led.c: 224: {PDMOD10= PDMOD10 & 0xF0 | 0x06; if(type)PDD0=1;else PDD0=0;};
	bsf	status, 5	;RP0=1, select bank1
	movf	(144)^080h,w
	andlw	0F0h
	iorlw	06h
	movwf	(144)^080h	;volatile
	
i1l17097:	
	movf	(led_set_io_pp@type),w
	skipz
	goto	u297_20
	goto	i1l10007
u297_20:
	
i1l17099:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(56/8),(56)&7
	goto	i1l10028
	
i1l10007:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(56/8),(56)&7
	goto	i1l10028
	line	227
	
i1l17101:	
;tyw_led.c: 227: {PDMOD10= PDMOD10 & 0x0F | 0x60; if(type)PDD1=1;else PDD1=0;};
	bsf	status, 5	;RP0=1, select bank1
	movf	(144)^080h,w
	andlw	0Fh
	iorlw	060h
	movwf	(144)^080h	;volatile
	
i1l17103:	
	movf	(led_set_io_pp@type),w
	skipz
	goto	u298_20
	goto	i1l10010
u298_20:
	
i1l17105:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(57/8),(57)&7
	goto	i1l10028
	
i1l10010:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(57/8),(57)&7
	goto	i1l10028
	line	230
	
i1l17107:	
;tyw_led.c: 230: {PBMOD54= PBMOD54 & 0xF0 | 0x06; if(type)PBD4=1;else PBD4=0;};
	bsf	status, 5	;RP0=1, select bank1
	movf	(142)^080h,w
	andlw	0F0h
	iorlw	06h
	movwf	(142)^080h	;volatile
	
i1l17109:	
	movf	(led_set_io_pp@type),w
	skipz
	goto	u299_20
	goto	i1l10013
u299_20:
	
i1l17111:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(52/8),(52)&7
	goto	i1l10028
	
i1l10013:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(52/8),(52)&7
	goto	i1l10028
	line	233
	
i1l17113:	
;tyw_led.c: 233: {PBMOD54= PBMOD54 & 0x0F | 0x60; if(type)PBD5=1;else PBD5=0;};
	bsf	status, 5	;RP0=1, select bank1
	movf	(142)^080h,w
	andlw	0Fh
	iorlw	060h
	movwf	(142)^080h	;volatile
	
i1l17115:	
	movf	(led_set_io_pp@type),w
	skipz
	goto	u300_20
	goto	i1l10016
u300_20:
	
i1l17117:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(53/8),(53)&7
	goto	i1l10028
	
i1l10016:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(53/8),(53)&7
	goto	i1l10028
	line	236
	
i1l17119:	
;tyw_led.c: 236: {PBMOD76= PBMOD76 & 0xF0 | 0x06; if(type)PBD6=1;else PBD6=0;};
	bsf	status, 5	;RP0=1, select bank1
	movf	(143)^080h,w
	andlw	0F0h
	iorlw	06h
	movwf	(143)^080h	;volatile
	
i1l17121:	
	movf	(led_set_io_pp@type),w
	skipz
	goto	u301_20
	goto	i1l10019
u301_20:
	
i1l17123:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(54/8),(54)&7
	goto	i1l10028
	
i1l10019:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(54/8),(54)&7
	goto	i1l10028
	line	239
	
i1l17125:	
;tyw_led.c: 239: {PBMOD76= PBMOD76 & 0x0F | 0x60; if(type)PBD7=1;else PBD7=0;};
	bsf	status, 5	;RP0=1, select bank1
	movf	(143)^080h,w
	andlw	0Fh
	iorlw	060h
	movwf	(143)^080h	;volatile
	
i1l17127:	
	movf	(led_set_io_pp@type),w
	skipz
	goto	u302_20
	goto	i1l10022
u302_20:
	
i1l17129:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(55/8),(55)&7
	goto	i1l10028
	
i1l10022:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(55/8),(55)&7
	goto	i1l10028
	line	242
	
i1l17131:	
;tyw_led.c: 242: {PBMOD10= PBMOD10 & 0xF0 | 0x06; if(type)PBD0=1;else PBD0=0;};
	bsf	status, 5	;RP0=1, select bank1
	movf	(140)^080h,w
	andlw	0F0h
	iorlw	06h
	movwf	(140)^080h	;volatile
	
i1l17133:	
	movf	(led_set_io_pp@type),w
	skipz
	goto	u303_20
	goto	i1l10025
u303_20:
	
i1l17135:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(48/8),(48)&7
	goto	i1l10028
	
i1l10025:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(48/8),(48)&7
	goto	i1l10028
	line	217
	
i1l17139:	
	movf	(led_set_io_pp@io_num),w
	; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 0 to 7
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           23     7 (fixed)
; simple_byte           25    13 (average)
; jumptable            260     6 (fixed)
; rangetable            12     6 (fixed)
; spacedrange           22     9 (fixed)
; locatedrange           8     3 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr
	movlw	8
	subwf	fsr,w
skipnc
goto i1l10028
movlw high(i1S18147)
movwf pclath
	clrc
	rlf fsr,w
	addlw low(i1S18147)
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
i1S18147:
	ljmp	i1l17089
	ljmp	i1l17095
	ljmp	i1l17101
	ljmp	i1l17107
	ljmp	i1l17113
	ljmp	i1l17119
	ljmp	i1l17125
	ljmp	i1l17131
psect	text968

	line	248
	
i1l10028:	
	return
	opt stack 0
GLOBAL	__end_of_led_set_io_pp
	__end_of_led_set_io_pp:
;; =============== function _led_set_io_pp ends ============

	signat	_led_set_io_pp,8312
	global	_led_set_io_od
psect	text969,local,class=CODE,delta=2
global __ptext969
__ptext969:

;; *************** function _led_set_io_od *****************
;; Defined at:
;;		line 181 in file "D:\资料\P2\P2code_0429\code\tyw_led.c"
;; Parameters:    Size  Location     Type
;;  io_num          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  io_num          1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/40
;;		On exit  : 0/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3  BANK2h  BANK2l
;;      Params:         0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_led_matrix_run
;; This function uses a non-reentrant model
;;
psect	text969
	file	"D:\资料\P2\P2code_0429\code\tyw_led.c"
	line	181
	global	__size_of_led_set_io_od
	__size_of_led_set_io_od	equ	__end_of_led_set_io_od-_led_set_io_od
	
_led_set_io_od:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _led_set_io_od: [wreg-fsr0h+status,2+status,0]
;led_set_io_od@io_num stored from wreg
	movwf	(led_set_io_od@io_num)
	line	182
	
i1l17061:	
;tyw_led.c: 182: switch(io_num)
	goto	i1l17081
	line	184
;tyw_led.c: 183: {
;tyw_led.c: 184: case 0:
	
i1l9988:	
	line	185
;tyw_led.c: 185: {PBD3=1; PBMOD32= PBMOD32 & 0x0F | 0x10;};
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7
	
i1l17063:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(141)^080h,w
	andlw	0Fh
	iorlw	010h
	movwf	(141)^080h	;volatile
	line	186
;tyw_led.c: 186: break;
	goto	i1l9998
	line	187
;tyw_led.c: 187: case 1:
	
i1l9990:	
	line	188
;tyw_led.c: 188: {PDD0=1; PDMOD10= PDMOD10 & 0xF0 | 0x01;};
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	
i1l17065:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(144)^080h,w
	andlw	0F0h
	iorlw	01h
	movwf	(144)^080h	;volatile
	line	189
;tyw_led.c: 189: break;
	goto	i1l9998
	line	190
;tyw_led.c: 190: case 2:
	
i1l9991:	
	line	191
;tyw_led.c: 191: {PDD1=1; PDMOD10= PDMOD10 & 0x0F | 0x10;};
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	
i1l17067:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(144)^080h,w
	andlw	0Fh
	iorlw	010h
	movwf	(144)^080h	;volatile
	line	192
;tyw_led.c: 192: break;
	goto	i1l9998
	line	193
;tyw_led.c: 193: case 3:
	
i1l9992:	
	line	194
;tyw_led.c: 194: {PBD4=1; PBMOD54= PBMOD54 & 0xF0 | 0x01;};
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7
	
i1l17069:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(142)^080h,w
	andlw	0F0h
	iorlw	01h
	movwf	(142)^080h	;volatile
	line	195
;tyw_led.c: 195: break;
	goto	i1l9998
	line	196
;tyw_led.c: 196: case 4:
	
i1l9993:	
	line	197
;tyw_led.c: 197: {PBD5=1; PBMOD54= PBMOD54 & 0x0F | 0x10;};
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(53/8),(53)&7
	
i1l17071:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(142)^080h,w
	andlw	0Fh
	iorlw	010h
	movwf	(142)^080h	;volatile
	line	198
;tyw_led.c: 198: break;
	goto	i1l9998
	line	199
;tyw_led.c: 199: case 5:
	
i1l9994:	
	line	200
;tyw_led.c: 200: {PBD6=1; PBMOD76= PBMOD76 & 0xF0 | 0x01;};
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7
	
i1l17073:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(143)^080h,w
	andlw	0F0h
	iorlw	01h
	movwf	(143)^080h	;volatile
	line	201
;tyw_led.c: 201: break;
	goto	i1l9998
	line	202
;tyw_led.c: 202: case 6:
	
i1l9995:	
	line	203
;tyw_led.c: 203: {PBD7=1; PBMOD76= PBMOD76 & 0x0F | 0x10;};
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7
	
i1l17075:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(143)^080h,w
	andlw	0Fh
	iorlw	010h
	movwf	(143)^080h	;volatile
	line	204
;tyw_led.c: 204: break;
	goto	i1l9998
	line	205
;tyw_led.c: 205: case 7:
	
i1l9996:	
	line	206
;tyw_led.c: 206: {PBD0=1; PBMOD10= PBMOD10 & 0xF0 | 0x01;};
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	
i1l17077:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(140)^080h,w
	andlw	0F0h
	iorlw	01h
	movwf	(140)^080h	;volatile
	line	207
;tyw_led.c: 207: break;
	goto	i1l9998
	line	182
	
i1l17081:	
	movf	(led_set_io_od@io_num),w
	; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 0 to 7
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           23     7 (fixed)
; simple_byte           25    13 (average)
; jumptable            260     6 (fixed)
; rangetable            12     6 (fixed)
; spacedrange           22     9 (fixed)
; locatedrange           8     3 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr
	movlw	8
	subwf	fsr,w
skipnc
goto i1l9998
movlw high(i1S18149)
movwf pclath
	clrc
	rlf fsr,w
	addlw low(i1S18149)
	movwf pc
psect	swtext2,local,class=CONST,delta=2
global __pswtext2
__pswtext2:
i1S18149:
	ljmp	i1l9988
	ljmp	i1l9990
	ljmp	i1l9991
	ljmp	i1l9992
	ljmp	i1l9993
	ljmp	i1l9994
	ljmp	i1l9995
	ljmp	i1l9996
psect	text969

	line	212
	
i1l9998:	
	return
	opt stack 0
GLOBAL	__end_of_led_set_io_od
	__end_of_led_set_io_od:
;; =============== function _led_set_io_od ends ============

	signat	_led_set_io_od,4216
psect	text970,local,class=CODE,delta=2
global __ptext970
__ptext970:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
