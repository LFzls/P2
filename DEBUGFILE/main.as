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
	FNCALL	_main,_UIEvent
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
	FNCALL	_led_show_num,___bmul
	FNCALL	_led_show_clear,_tyw_memset
	FNCALL	_KeyUpStopSmoke,___lwdiv
	FNCALL	_KeyUpStopSmoke,___wmul
	FNCALL	_KeyUpStopSmoke,___lmul
	FNCALL	_KeyUpStopSmoke,___lldiv
	FNCALL	_SystemClockInit,_Delay_16nop
	FNROOT	_main
	FNCALL	_Interrupt_ISR,_led_matrix_run
	FNCALL	_led_matrix_run,_led_set_io_od
	FNCALL	_led_matrix_run,i1___bmul
	FNCALL	_led_matrix_run,_led_set_io_pp
	FNCALL	intlevel1,_Interrupt_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_ledShowIndex
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
	file	"D:\xx\P2\code\tyw_led.c"
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
	file	"D:\xx\P2\code\tyw_led.c"
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
	file	"D:\xx\P2\code\tyw_led.c"
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
	file	"D:\xx\P2\code\tyw_led.c"
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

	global	_ReadPort
	global	_DispayCount
	global	_DisplaySwitchNum
	global	_Over_Current_Cnt
	global	_SysInfoFlag
	global	_VoutInfoFlag
	global	_oilPerCent
	global	_oldDisplayPage
	global	_testBit
	global	_uieventTime
	global	led_matrix_run@row
	global	showSmokeMode@oldMode
	global	_GetADC
	global	_led_duty_cycles
	global	_TimeCnt
_TimeCnt	set	345
	DABS	1,345,11	;_TimeCnt

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

	file	"DEBUGFILE\main.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_ReadPort:
       ds      9

_DispayCount:
       ds      1

_DisplaySwitchNum:
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
	movlw	low((__pbssBANK0)+02Ah)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+040h)
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
	global	?_SystemClockInit
?_SystemClockInit:	; 0 bytes @ 0x0
	global	?_InitGpio
?_InitGpio:	; 0 bytes @ 0x0
	global	?_Init_BOD_WDT
?_Init_BOD_WDT:	; 0 bytes @ 0x0
	global	?_MCU_INIT_TIMER
?_MCU_INIT_TIMER:	; 0 bytes @ 0x0
	global	?_KeyUpStopSmoke
?_KeyUpStopSmoke:	; 0 bytes @ 0x0
	global	?_openNewPage
?_openNewPage:	; 0 bytes @ 0x0
	global	?_ClearAllRAM
?_ClearAllRAM:	; 0 bytes @ 0x0
	global	?_UIEvent
?_UIEvent:	; 0 bytes @ 0x0
	global	?_led_matrix_run
?_led_matrix_run:	; 0 bytes @ 0x0
	global	?_led_set_io_od
?_led_set_io_od:	; 0 bytes @ 0x0
	global	??_led_set_io_od
??_led_set_io_od:	; 0 bytes @ 0x0
	global	?_led_set_io_pp
?_led_set_io_pp:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_Interrupt_ISR
?_Interrupt_ISR:	; 0 bytes @ 0x0
	global	?_Delay_16nop
?_Delay_16nop:	; 0 bytes @ 0x0
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
	global	led_matrix_run@y
led_matrix_run@y:	; 1 bytes @ 0x7
	ds	1
	global	led_matrix_run@x
led_matrix_run@x:	; 1 bytes @ 0x8
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
	global	??_SystemClockInit
??_SystemClockInit:	; 0 bytes @ 0x0
	global	??_InitGpio
??_InitGpio:	; 0 bytes @ 0x0
	global	??_Init_BOD_WDT
??_Init_BOD_WDT:	; 0 bytes @ 0x0
	global	??_MCU_INIT_TIMER
??_MCU_INIT_TIMER:	; 0 bytes @ 0x0
	global	??_openNewPage
??_openNewPage:	; 0 bytes @ 0x0
	global	??_ClearAllRAM
??_ClearAllRAM:	; 0 bytes @ 0x0
	global	??_Delay_16nop
??_Delay_16nop:	; 0 bytes @ 0x0
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
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___lmul
?___lmul:	; 4 bytes @ 0x0
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
	ds	1
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
	ds	1
	global	??_led_show_num
??_led_show_num:	; 0 bytes @ 0x4
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	tyw_memset@p
tyw_memset@p:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x4
	ds	1
	global	tyw_memset@i
tyw_memset@i:	; 1 bytes @ 0x5
	ds	1
	global	??_led_show_clear
??_led_show_clear:	; 0 bytes @ 0x6
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x6
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x6
	ds	2
	global	??___lmul
??___lmul:	; 0 bytes @ 0x8
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x8
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x8
	ds	2
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0xA
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0xA
	ds	2
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0xC
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0xC
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0xC
	ds	1
	global	_led_show_num$12223
_led_show_num$12223:	; 2 bytes @ 0xD
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
	global	??_main
??_main:	; 0 bytes @ 0x1D
;;Data sizes: Strings 0, constant 181, data 0, bss 106, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     29      71
;; BANK1           80      0      64
;; BANK3           80      0       0
;; BANK2h          10      0       0
;; BANK2l          57      0       0

;;
;; Pointer list with targets:

;; ?_tyw_memset	PTR void  size(1) Largest target is 64
;;		 -> led_duty_cycles(BANK1[64]), 
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
;;   _main->_KeyUpStopSmoke
;;   _UIEvent->_smokePage
;;   _UIEvent->_gearPage
;;   _showBase->_led_show_oil
;;   _led_show_oil->_led_show_num
;;   _led_show_power->_led_show_num
;;   _led_show_num->___bmul
;;   _led_show_clear->_tyw_memset
;;   _KeyUpStopSmoke->___lldiv
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
;; (0) _main                                                 0     0      0    4431
;;                    _SystemClockInit
;;                           _InitGpio
;;                       _Init_BOD_WDT
;;                     _MCU_INIT_TIMER
;;                     _KeyUpStopSmoke
;;                        _openNewPage
;;                        _ClearAllRAM
;;                            _UIEvent
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
;; (5) _led_show_num                                        15    14      1     317
;;                                              3 BANK0     15    14      1
;;                             ___bmul
;; ---------------------------------------------------------------------------------
;; (2) _led_show_clear                                       0     0      0     142
;;                         _tyw_memset
;; ---------------------------------------------------------------------------------
;; (1) _KeyUpStopSmoke                                       4     4      0     508
;;                                             25 BANK0      4     4      0
;;                            ___lwdiv
;;                             ___wmul
;;                             ___lmul
;;                            ___lldiv
;; ---------------------------------------------------------------------------------
;; (1) _SystemClockInit                                      0     0      0       0
;;                        _Delay_16nop
;; ---------------------------------------------------------------------------------
;; (2) ___lldiv                                             13     5      8     162
;;                                             12 BANK0     13     5      8
;;                             ___lmul (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___lmul                                              12     4      8      92
;;                                              0 BANK0     12     4      8
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              7     3      4     162
;;                                              6 BANK0      7     3      4
;;                             ___wmul (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4      92
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
;; (2) _Delay_16nop                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _ClearAllRAM                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _openNewPage                                          1     1      0      44
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _MCU_INIT_TIMER                                       0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _Init_BOD_WDT                                         0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _InitGpio                                             0     0      0       0
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
;;BANK0               50     1D      47       4       88.8%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK1               50      0      40       5       80.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BANK3               50      0       0       6        0.0%
;;ABS                  0      0      95       7        0.0%
;;BITBANK1            50      0       0       8        0.0%
;;BITBANK3            50      0       0       9        0.0%
;;BITBANK2h            A      0       0      10        0.0%
;;BITBANK2l           39      0       0      11        0.0%
;;BANK2h               A      0       0      12        0.0%
;;BANK2l              39      0       0      13        0.0%
;;DATA                 0      0      A1      14        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 50 in file "D:\xx\P2\code\main.c"
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
;;		On exit  : 40/0
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
;;		_UIEvent
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\xx\P2\code\main.c"
	line	50
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	52
	
l16677:	
# 52 "D:\xx\P2\code\main.c"
CLRWDT ;#
psect	maintext
	line	53
	
l16679:	
;main.c: 53: INTIE = 0x00;
	clrf	(11)	;volatile
	line	54
;main.c: 54: INTIE1 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(13)	;volatile
	line	58
	
l16681:	
;main.c: 58: SystemClockInit();
	fcall	_SystemClockInit
	line	59
	
l16683:	
;main.c: 59: InitGpio();
	fcall	_InitGpio
	line	82
	
l16685:	
;main.c: 82: Init_BOD_WDT();
	fcall	_Init_BOD_WDT
	line	86
	
l16687:	
;main.c: 86: MCU_INIT_TIMER();
	fcall	_MCU_INIT_TIMER
	line	89
	
l16689:	
;main.c: 89: if(FlagSmoke == 0xA55A)
	bsf	status, 6	;RP1=1, select bank2
		movf	(356+1)^0100h,w	;volatile
	xorlw	165
	movlw	90
	skipnz
	xorwf	(356)^0100h,w	;volatile

	skipz
	goto	u1851
	goto	u1850
u1851:
	goto	l16709
u1850:
	line	91
	
l16691:	
;main.c: 90: {
;main.c: 91: VoutInfoFlag.bits.b7 = 1;
	bcf	status, 6	;RP1=0, select bank0
	bsf	(_VoutInfoFlag),7
	line	92
;main.c: 92: VoutInfoFlag.bits.b0 = 0;
	bcf	(_VoutInfoFlag),0
	line	93
	
l16693:	
;main.c: 93: KeyUpStopSmoke();
	fcall	_KeyUpStopSmoke
	line	94
	
l16695:	
;main.c: 94: openNewPage(PAGE_SHORT_PROTECTION);
	movlw	(0Ah)
	fcall	_openNewPage
	line	95
	
l16697:	
;main.c: 95: if(PAD6 == 1) SysInfoFlag.bits.b2 = 1;
	btfss	(46/8),(46)&7
	goto	u1861
	goto	u1860
u1861:
	goto	l1630
u1860:
	
l16699:	
	bsf	(_SysInfoFlag),2
	
l1630:	
	line	96
;main.c: 96: if(PBD2 == 1) ReadPort.ScanOld |= 0x01;
	btfss	(50/8),(50)&7
	goto	u1871
	goto	u1870
u1871:
	goto	l16703
u1870:
	
l16701:	
	bsf	0+(_ReadPort)+02h+(0/8),(0)&7
	line	98
	
l16703:	
;main.c: 98: ReadPort.KeyState = 0x00;
	clrf	0+(_ReadPort)+04h
	line	99
;main.c: 99: ReadPort.KeyNum = 0;
	clrf	0+(_ReadPort)+05h
	line	100
	
l16705:	
;main.c: 100: SysInfoFlag.bits.b4 = 0;
	bcf	(_SysInfoFlag),4
	line	101
;main.c: 101: TimeCnt.SleepTime = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	0+(345)^0100h+03h
	clrf	1+(345)^0100h+03h
	line	102
	
l16707:	
;main.c: 102: SysInfoFlag.bits.b0 = 1;
	bcf	status, 6	;RP1=0, select bank0
	bsf	(_SysInfoFlag),0
	line	103
;main.c: 103: }
	goto	l16721
	line	106
	
l16709:	
;main.c: 104: else
;main.c: 105: {
;main.c: 106: ClearAllRAM();
	fcall	_ClearAllRAM
	line	107
	
l16711:	
;main.c: 107: GetADC.Vout_Lx = 0x00;
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(_GetADC)+04h
	line	108
	
l16713:	
;main.c: 108: TimeCnt.SmokeTime = (2500UL*100+5000UL);
	movlw	0
	bsf	status, 6	;RP1=1, select bank2
	movwf	3+(345)^0100h+07h
	movlw	03h
	movwf	2+(345)^0100h+07h
	movlw	0E4h
	movwf	1+(345)^0100h+07h
	movlw	018h
	movwf	0+(345)^0100h+07h

	line	109
	
l16715:	
;main.c: 109: oilPerCent=100;
	movlw	(064h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_oilPerCent)
	line	110
	
l16717:	
;main.c: 110: openNewPage(PAGE_LOG);
	movlw	(01h)
	fcall	_openNewPage
	line	111
	
l16719:	
;main.c: 111: SysInfoFlag.bits.b4 = 1;
	bsf	(_SysInfoFlag),4
	line	116
	
l16721:	
;main.c: 115: {
;main.c: 116: if(SysInfoFlag.bits.b6 != 0)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(_SysInfoFlag),6
	goto	u1881
	goto	u1880
u1881:
	goto	l16721
u1880:
	line	118
	
l16723:	
;main.c: 117: {
;main.c: 118: SysInfoFlag.bits.b6 = 0;
	bcf	(_SysInfoFlag),6
	line	119
# 119 "D:\xx\P2\code\main.c"
CLRWDT ;#
psect	maintext
	line	153
	
l16725:	
;main.c: 153: UIEvent();
	fcall	_UIEvent
	goto	l16721
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	161
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_UIEvent
psect	text693,local,class=CODE,delta=2
global __ptext693
__ptext693:

;; *************** function _UIEvent *****************
;; Defined at:
;;		line 44 in file "D:\xx\P2\code\tyw_uiEvent.c"
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
psect	text693
	file	"D:\xx\P2\code\tyw_uiEvent.c"
	line	44
	global	__size_of_UIEvent
	__size_of_UIEvent	equ	__end_of_UIEvent-_UIEvent
	
_UIEvent:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _UIEvent: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	45
	
l16637:	
;tyw_uiEvent.c: 45: uint8_t needUpdaeShow = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(UIEvent@needUpdaeShow)
	line	47
	
l16639:	
;tyw_uiEvent.c: 47: uieventTime++;
	incf	(_uieventTime),f
	line	48
	
l16641:	
;tyw_uiEvent.c: 48: if(uieventTime>=100)
	movlw	(064h)
	subwf	(_uieventTime),w
	skipc
	goto	u1801
	goto	u1800
u1801:
	goto	l16647
u1800:
	line	50
	
l16643:	
;tyw_uiEvent.c: 49: {
;tyw_uiEvent.c: 50: uieventTime=0;
	clrf	(_uieventTime)
	line	51
	
l16645:	
;tyw_uiEvent.c: 51: UIOneSecondEvent();
	fcall	_UIOneSecondEvent
	line	56
	
l16647:	
;tyw_uiEvent.c: 52: }
;tyw_uiEvent.c: 56: if( SysInfoFlag.bits.b2 == 1 && DisplaySwitchNum != PAGE_LOG )
	btfss	(_SysInfoFlag),2
	goto	u1811
	goto	u1810
u1811:
	goto	l13360
u1810:
	
l16649:	
	decf	(_DisplaySwitchNum),w
	skipnz
	goto	u1821
	goto	u1820
u1821:
	goto	l13360
u1820:
	line	58
	
l16651:	
;tyw_uiEvent.c: 57: {
;tyw_uiEvent.c: 58: DisplaySwitchNum = PAGE_POWER;
	movlw	(05h)
	movwf	(_DisplaySwitchNum)
	line	59
	
l13360:	
	line	61
;tyw_uiEvent.c: 59: }
;tyw_uiEvent.c: 61: if ( oldDisplayPage != DisplaySwitchNum )
	movf	(_oldDisplayPage),w
	xorwf	(_DisplaySwitchNum),w
	skipnz
	goto	u1831
	goto	u1830
u1831:
	goto	l16673
u1830:
	line	63
	
l16653:	
;tyw_uiEvent.c: 62: {
;tyw_uiEvent.c: 63: needUpdaeShow = 1;
	clrf	(UIEvent@needUpdaeShow)
	incf	(UIEvent@needUpdaeShow),f
	line	64
	
l16655:	
;tyw_uiEvent.c: 64: oldDisplayPage = DisplaySwitchNum;
	movf	(_DisplaySwitchNum),w
	movwf	(_oldDisplayPage)
	goto	l16673
	line	72
	
l16657:	
;tyw_uiEvent.c: 72: smokePage(needUpdaeShow);
	movf	(UIEvent@needUpdaeShow),w
	fcall	_smokePage
	line	74
;tyw_uiEvent.c: 74: break;
	goto	l16675
	line	76
	
l16659:	
;tyw_uiEvent.c: 76: gearPage(needUpdaeShow);
	movf	(UIEvent@needUpdaeShow),w
	fcall	_gearPage
	line	77
;tyw_uiEvent.c: 77: break;
	goto	l16675
	line	79
	
l16661:	
;tyw_uiEvent.c: 79: smokePage(needUpdaeShow);
	movf	(UIEvent@needUpdaeShow),w
	fcall	_smokePage
	line	80
;tyw_uiEvent.c: 80: break;
	goto	l16675
	line	97
;tyw_uiEvent.c: 97: case PAGE_WAIT_CLOSE:
	
l13368:	
	line	98
;tyw_uiEvent.c: 98: if( SysInfoFlag.bits.b2 == 1 )
	btfss	(_SysInfoFlag),2
	goto	u1841
	goto	u1840
u1841:
	goto	l16665
u1840:
	line	100
	
l16663:	
;tyw_uiEvent.c: 99: {
;tyw_uiEvent.c: 100: DisplaySwitchNum = PAGE_POWER;
	movlw	(05h)
	movwf	(_DisplaySwitchNum)
	line	101
;tyw_uiEvent.c: 101: }
	goto	l16675
	line	104
	
l16665:	
;tyw_uiEvent.c: 102: else
;tyw_uiEvent.c: 103: {
;tyw_uiEvent.c: 104: DispayCount = 0;
	clrf	(_DispayCount)
	line	105
;tyw_uiEvent.c: 105: DisplaySwitchNum = PAGE_IDLE;
	clrf	(_DisplaySwitchNum)
	line	106
	
l16667:	
;tyw_uiEvent.c: 106: oldDisplayPage = DisplaySwitchNum;
	movf	(_DisplaySwitchNum),w
	movwf	(_oldDisplayPage)
	line	107
	
l16669:	
;tyw_uiEvent.c: 107: led_show_clear();
	fcall	_led_show_clear
	goto	l16675
	line	67
	
l16673:	
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
	goto	l16675
	xorlw	1^0	; case 1
	skipnz
	goto	l16657
	xorlw	4^1	; case 4
	skipnz
	goto	l16659
	xorlw	8^4	; case 8
	skipnz
	goto	l16661
	xorlw	12^8	; case 12
	skipnz
	goto	l13368
	goto	l16675
	opt asmopt_on

	line	114
	
l16675:	
	line	116
	
l13371:	
	return
	opt stack 0
GLOBAL	__end_of_UIEvent
	__end_of_UIEvent:
;; =============== function _UIEvent ends ============

	signat	_UIEvent,88
	global	_smokePage
psect	text694,local,class=CODE,delta=2
global __ptext694
__ptext694:

;; *************** function _smokePage *****************
;; Defined at:
;;		line 59 in file "D:\xx\P2\code\tyw_page.c"
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
psect	text694
	file	"D:\xx\P2\code\tyw_page.c"
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
	
l16629:	
;tyw_page.c: 61: if(firstUse==1)
	decf	(smokePage@firstUse),w
	skipz
	goto	u1791
	goto	u1790
u1791:
	goto	l11724
u1790:
	line	63
	
l16631:	
;tyw_page.c: 62: {
;tyw_page.c: 63: DispayCount=11;
	movlw	(0Bh)
	movwf	(_DispayCount)
	line	64
	
l16633:	
;tyw_page.c: 64: led_show_clear();
	fcall	_led_show_clear
	line	65
	
l16635:	
;tyw_page.c: 66: pageTime=0;
	fcall	_showBase
	line	96
	
l11724:	
	return
	opt stack 0
GLOBAL	__end_of_smokePage
	__end_of_smokePage:
;; =============== function _smokePage ends ============

	signat	_smokePage,4216
	global	_gearPage
psect	text695,local,class=CODE,delta=2
global __ptext695
__ptext695:

;; *************** function _gearPage *****************
;; Defined at:
;;		line 45 in file "D:\xx\P2\code\tyw_page.c"
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
psect	text695
	file	"D:\xx\P2\code\tyw_page.c"
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
	
l16619:	
;tyw_page.c: 47: if(firstUse==1)
	decf	(gearPage@firstUse),w
	skipz
	goto	u1781
	goto	u1780
u1781:
	goto	l16627
u1780:
	line	49
	
l16621:	
;tyw_page.c: 48: {
;tyw_page.c: 49: DispayCount=3;
	movlw	(03h)
	movwf	(_DispayCount)
	line	50
	
l16623:	
;tyw_page.c: 50: led_show_clear();
	fcall	_led_show_clear
	line	51
	
l16625:	
;tyw_page.c: 51: showBase() ;
	fcall	_showBase
	line	54
	
l16627:	
;tyw_page.c: 52: }
;tyw_page.c: 54: showSmokeMode();
	fcall	_showSmokeMode
	line	57
	
l11720:	
	return
	opt stack 0
GLOBAL	__end_of_gearPage
	__end_of_gearPage:
;; =============== function _gearPage ends ============

	signat	_gearPage,4216
	global	_showBase
psect	text696,local,class=CODE,delta=2
global __ptext696
__ptext696:

;; *************** function _showBase *****************
;; Defined at:
;;		line 19 in file "D:\xx\P2\code\tyw_page.c"
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
psect	text696
	file	"D:\xx\P2\code\tyw_page.c"
	line	19
	global	__size_of_showBase
	__size_of_showBase	equ	__end_of_showBase-_showBase
	
_showBase:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _showBase: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	22
	
l16611:	
;tyw_page.c: 22: GetADC.BatteryPercent=100;
	movlw	(064h)
	movwf	0+(_GetADC)+0Fh
	line	24
	
l16613:	
;tyw_page.c: 24: led_show_power(GetADC.BatteryPercent);
	movf	0+(_GetADC)+0Fh,w
	fcall	_led_show_power
	line	27
	
l16615:	
;tyw_page.c: 27: led_show_oil(oilPerCent);
	bcf	status, 5	;RP0=0, select bank0
	movf	(_oilPerCent),w
	fcall	_led_show_oil
	line	29
	
l16617:	
;tyw_page.c: 29: showSmokeMode();
	fcall	_showSmokeMode
	line	30
	
l11712:	
	return
	opt stack 0
GLOBAL	__end_of_showBase
	__end_of_showBase:
;; =============== function _showBase ends ============

	signat	_showBase,88
	global	_led_show_oil
psect	text697,local,class=CODE,delta=2
global __ptext697
__ptext697:

;; *************** function _led_show_oil *****************
;; Defined at:
;;		line 434 in file "D:\xx\P2\code\tyw_led.c"
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
psect	text697
	file	"D:\xx\P2\code\tyw_led.c"
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
	
l16541:	
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
	
l16543:	
;tyw_led.c: 439: if(TobaccoOilPercent>=99)
	movlw	(063h)
	subwf	(led_show_oil@TobaccoOilPercent),w
	skipc
	goto	u1701
	goto	u1700
u1701:
	goto	l16559
u1700:
	line	441
	
l16545:	
;tyw_led.c: 440: {
;tyw_led.c: 441: for (i = 0; i < 7; ++i)
	clrf	(led_show_oil@i)
	line	443
	
l16551:	
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
	
l16553:	
	incf	(led_show_oil@i),f
	
l16555:	
	movlw	(07h)
	subwf	(led_show_oil@i),w
	skipc
	goto	u1711
	goto	u1710
u1711:
	goto	l16551
u1710:
	line	446
	
l16557:	
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
	goto	l16589
	line	457
	
l16559:	
;tyw_led.c: 449: else
;tyw_led.c: 450: {
;tyw_led.c: 457: ones=TobaccoOilPercent;
	movf	(led_show_oil@TobaccoOilPercent),w
	movwf	(led_show_oil@ones)
	line	458
	
l16561:	
;tyw_led.c: 458: for (tens = 0; tens < 10; tens++)
	clrf	(led_show_oil@tens)
	line	460
	
l16567:	
;tyw_led.c: 459: {
;tyw_led.c: 460: if (ones < 10)
	movlw	(0Ah)
	subwf	(led_show_oil@ones),w
	skipnc
	goto	u1721
	goto	u1720
u1721:
	goto	l16571
u1720:
	goto	l16575
	line	462
	
l16571:	
;tyw_led.c: 462: ones = ones - 10;
	movlw	(0F6h)
	addwf	(led_show_oil@ones),f
	line	458
	
l16573:	
	incf	(led_show_oil@tens),f
	movlw	(0Ah)
	subwf	(led_show_oil@tens),w
	skipc
	goto	u1731
	goto	u1730
u1731:
	goto	l16567
u1730:
	line	466
	
l16575:	
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
	
l16577:	
;tyw_led.c: 468: for (i = 0; i < 7; ++i)
	clrf	(led_show_oil@i)
	line	470
	
l16583:	
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
	
l16585:	
	incf	(led_show_oil@i),f
	
l16587:	
	movlw	(07h)
	subwf	(led_show_oil@i),w
	skipc
	goto	u1741
	goto	u1740
u1741:
	goto	l16583
u1740:
	line	474
	
l16589:	
;tyw_led.c: 471: }
;tyw_led.c: 472: }
;tyw_led.c: 474: for(level=0;level<7;level++)
	clrf	(led_show_oil@level)
	line	476
	
l16595:	
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
	goto	u1751
	goto	u1750
u1751:
	goto	l16599
u1750:
	goto	l16603
	line	474
	
l16599:	
	incf	(led_show_oil@level),f
	
l16601:	
	movlw	(07h)
	subwf	(led_show_oil@level),w
	skipc
	goto	u1761
	goto	u1760
u1761:
	goto	l16595
u1760:
	line	479
	
l16603:	
;tyw_led.c: 478: }
;tyw_led.c: 479: if(level>6)
	movlw	(07h)
	subwf	(led_show_oil@level),w
	skipc
	goto	u1771
	goto	u1770
u1771:
	goto	l16607
u1770:
	line	480
	
l16605:	
;tyw_led.c: 480: level=6;
	movlw	(06h)
	movwf	(led_show_oil@level)
	line	482
	
l16607:	
;tyw_led.c: 482: showOilBar(level);
	movf	(led_show_oil@level),w
	fcall	_showOilBar
	line	485
	
l16609:	
;tyw_led.c: 485: led_duty_cycles[7][4]=16;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_led_duty_cycles)^080h+03Ch
	line	487
	
l10080:	
	return
	opt stack 0
GLOBAL	__end_of_led_show_oil
	__end_of_led_show_oil:
;; =============== function _led_show_oil ends ============

	signat	_led_show_oil,4216
	global	_led_show_power
psect	text698,local,class=CODE,delta=2
global __ptext698
__ptext698:

;; *************** function _led_show_power *****************
;; Defined at:
;;		line 342 in file "D:\xx\P2\code\tyw_led.c"
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
psect	text698
	file	"D:\xx\P2\code\tyw_led.c"
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
	
l16475:	
	line	344
;tyw_led.c: 344: uint8_t ones=0;
	clrf	(led_show_power@ones)
	line	345
;tyw_led.c: 345: uint8_t level=0;
	clrf	(led_show_power@level)
	line	346
	
l16477:	
;tyw_led.c: 346: if(powerPercent>=99)
	movlw	(063h)
	subwf	(led_show_power@powerPercent),w
	skipc
	goto	u1631
	goto	u1630
u1631:
	goto	l16485
u1630:
	line	348
	
l16479:	
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
	
l16481:	
;tyw_led.c: 355: led_show_num(2,9);
	movlw	(09h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_led_show_num)
	movlw	(02h)
	fcall	_led_show_num
	line	356
	
l16483:	
;tyw_led.c: 356: led_show_num(3,9);
	movlw	(09h)
	movwf	(?_led_show_num)
	movlw	(03h)
	fcall	_led_show_num
	line	357
;tyw_led.c: 357: }
	goto	l16515
	line	365
	
l16485:	
;tyw_led.c: 358: else
;tyw_led.c: 359: {
;tyw_led.c: 365: ones=powerPercent;
	movf	(led_show_power@powerPercent),w
	movwf	(led_show_power@ones)
	line	366
	
l16487:	
;tyw_led.c: 366: for (tens = 0; tens < 10; tens++)
	clrf	(led_show_power@tens)
	line	368
	
l16493:	
;tyw_led.c: 367: {
;tyw_led.c: 368: if (ones < 10)
	movlw	(0Ah)
	subwf	(led_show_power@ones),w
	skipnc
	goto	u1641
	goto	u1640
u1641:
	goto	l16497
u1640:
	goto	l16501
	line	370
	
l16497:	
;tyw_led.c: 370: ones = ones - 10;
	movlw	(0F6h)
	addwf	(led_show_power@ones),f
	line	366
	
l16499:	
	incf	(led_show_power@tens),f
	movlw	(0Ah)
	subwf	(led_show_power@tens),w
	skipc
	goto	u1651
	goto	u1650
u1651:
	goto	l16493
u1650:
	line	372
	
l16501:	
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
	
l16503:	
;tyw_led.c: 376: led_duty_cycles[0][5]=0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	0+(_led_duty_cycles)^080h+05h
	line	377
	
l16505:	
;tyw_led.c: 377: led_duty_cycles[1][5]=0;
	clrf	0+(_led_duty_cycles)^080h+0Dh
	line	378
	
l16507:	
;tyw_led.c: 378: led_duty_cycles[2][5]=0;
	clrf	0+(_led_duty_cycles)^080h+015h
	line	379
	
l16509:	
;tyw_led.c: 379: led_duty_cycles[3][5]=0;
	clrf	0+(_led_duty_cycles)^080h+01Dh
	line	380
	
l16511:	
;tyw_led.c: 380: led_duty_cycles[4][5]=0;
	clrf	0+(_led_duty_cycles)^080h+025h
	line	381
	
l16513:	
;tyw_led.c: 381: led_duty_cycles[6][5]=0;
	clrf	0+(_led_duty_cycles)^080h+035h
	line	383
	
l16515:	
;tyw_led.c: 382: }
;tyw_led.c: 383: for(level=0;level<7;level++)
	bcf	status, 5	;RP0=0, select bank0
	clrf	(led_show_power@level)
	line	385
	
l16521:	
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
	goto	u1661
	goto	u1660
u1661:
	goto	l16525
u1660:
	goto	l16529
	line	383
	
l16525:	
	incf	(led_show_power@level),f
	
l16527:	
	movlw	(07h)
	subwf	(led_show_power@level),w
	skipc
	goto	u1671
	goto	u1670
u1671:
	goto	l16521
u1670:
	line	389
	
l16529:	
;tyw_led.c: 387: }
;tyw_led.c: 389: if(level>6)
	movlw	(07h)
	subwf	(led_show_power@level),w
	skipc
	goto	u1681
	goto	u1680
u1681:
	goto	l16533
u1680:
	line	390
	
l16531:	
;tyw_led.c: 390: level=6;
	movlw	(06h)
	movwf	(led_show_power@level)
	line	394
	
l16533:	
;tyw_led.c: 394: showPowerBar(level);
	movf	(led_show_power@level),w
	fcall	_showPowerBar
	line	396
	
l16535:	
;tyw_led.c: 396: if( SysInfoFlag.bits.b2 == 1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(_SysInfoFlag),2
	goto	u1691
	goto	u1690
u1691:
	goto	l16539
u1690:
	line	398
	
l16537:	
;tyw_led.c: 397: {
;tyw_led.c: 398: led_duty_cycles[7][5]=16;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_led_duty_cycles)^080h+03Dh
	line	399
;tyw_led.c: 399: }
	goto	l10050
	line	401
	
l16539:	
;tyw_led.c: 400: else
;tyw_led.c: 401: led_duty_cycles[7][5]=0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	0+(_led_duty_cycles)^080h+03Dh
	line	403
	
l10050:	
	return
	opt stack 0
GLOBAL	__end_of_led_show_power
	__end_of_led_show_power:
;; =============== function _led_show_power ends ============

	signat	_led_show_power,4216
	global	_led_show_num
psect	text699,local,class=CODE,delta=2
global __ptext699
__ptext699:

;; *************** function _led_show_num *****************
;; Defined at:
;;		line 284 in file "D:\xx\P2\code\tyw_led.c"
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
psect	text699
	file	"D:\xx\P2\code\tyw_led.c"
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
	
l16449:	
	line	288
	
l16451:	
;tyw_led.c: 288: if(num>9 || id>4)
	movlw	(0Ah)
	subwf	(led_show_num@num),w
	skipnc
	goto	u1591
	goto	u1590
u1591:
	goto	l10016
u1590:
	
l16453:	
	movlw	(05h)
	subwf	(led_show_num@id),w
	skipc
	goto	u1601
	goto	u1600
u1601:
	goto	l16455
u1600:
	goto	l10016
	line	290
	
l16455:	
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
	
l16457:	
;tyw_led.c: 293: for(i=0;i<7;i++)
	clrf	(led_show_num@i)
	line	294
	
l10017:	
	line	303
;tyw_led.c: 294: {
;tyw_led.c: 303: led_duty_cycles[numberIndex[id][i][0]][numberIndex[id][i][1]] = (ch & 0x01) ? 16 : 0;
	btfsc	(led_show_num@ch),(0)&7
	goto	u1611
	goto	u1610
u1611:
	goto	l16465
u1610:
	
l16463:	
	clrf	(_led_show_num$12223)
	clrf	(_led_show_num$12223+1)
	goto	l16467
	
l16465:	
	movlw	010h
	movwf	(_led_show_num$12223)
	clrf	(_led_show_num$12223+1)
	
l16467:	
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
	movf	(_led_show_num$12223),w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	304
	
l16469:	
;tyw_led.c: 304: ch >>= 1;
	clrc
	rrf	(led_show_num@ch),f
	line	293
	
l16471:	
	incf	(led_show_num@i),f
	
l16473:	
	movlw	(07h)
	subwf	(led_show_num@i),w
	skipc
	goto	u1621
	goto	u1620
u1621:
	goto	l10017
u1620:
	line	308
	
l10016:	
	return
	opt stack 0
GLOBAL	__end_of_led_show_num
	__end_of_led_show_num:
;; =============== function _led_show_num ends ============

	signat	_led_show_num,8312
	global	_led_show_clear
psect	text700,local,class=CODE,delta=2
global __ptext700
__ptext700:

;; *************** function _led_show_clear *****************
;; Defined at:
;;		line 251 in file "D:\xx\P2\code\tyw_led.c"
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
psect	text700
	file	"D:\xx\P2\code\tyw_led.c"
	line	251
	global	__size_of_led_show_clear
	__size_of_led_show_clear	equ	__end_of_led_show_clear-_led_show_clear
	
_led_show_clear:	
	opt	stack 2
; Regs used in _led_show_clear: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	252
	
l16447:	
;tyw_led.c: 252: tyw_memset(led_duty_cycles,0,sizeof(led_duty_cycles));
	clrf	(?_tyw_memset)
	movlw	(040h)
	movwf	0+(?_tyw_memset)+01h
	movlw	(_led_duty_cycles)&0ffh
	fcall	_tyw_memset
	line	253
	
l10007:	
	return
	opt stack 0
GLOBAL	__end_of_led_show_clear
	__end_of_led_show_clear:
;; =============== function _led_show_clear ends ============

	signat	_led_show_clear,88
	global	_KeyUpStopSmoke
psect	text701,local,class=CODE,delta=2
global __ptext701
__ptext701:

;; *************** function _KeyUpStopSmoke *****************
;; Defined at:
;;		line 157 in file "D:\xx\P2\code\key.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text701
	file	"D:\xx\P2\code\key.c"
	line	157
	global	__size_of_KeyUpStopSmoke
	__size_of_KeyUpStopSmoke	equ	__end_of_KeyUpStopSmoke-_KeyUpStopSmoke
	
_KeyUpStopSmoke:	
	opt	stack 3
; Regs used in _KeyUpStopSmoke: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	158
	
l16401:	
;key.c: 158: if(VoutInfoFlag.bits.b7 != 0)
	btfss	(_VoutInfoFlag),7
	goto	u1541
	goto	u1540
u1541:
	goto	l4928
u1540:
	line	160
	
l16403:	
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
	
l16405:	
;key.c: 164: FlagSmoke = 0x0000;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(356)^0100h	;volatile
	clrf	(356+1)^0100h	;volatile
	line	165
	
l16407:	
;key.c: 165: ReadPort.KeyState &= 0x4F;
	movlw	(04Fh)
	bcf	status, 6	;RP1=0, select bank0
	andwf	0+(_ReadPort)+04h,f
	line	168
	
l16409:	
;key.c: 168: PAMOD32 = PAMOD32 & 0x0F | 0x90;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w
	andlw	0Fh
	iorlw	090h
	movwf	(134)^080h	;volatile
	line	169
	
l16411:	
;key.c: 169: PAD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(43/8),(43)&7
	line	171
	
l16413:	
;key.c: 171: PAMOD54 = PAMOD54 & 0x0F | 0x90;
	bsf	status, 5	;RP0=1, select bank1
	movf	(135)^080h,w
	andlw	0Fh
	iorlw	090h
	movwf	(135)^080h	;volatile
	line	172
	
l16415:	
;key.c: 172: PAD5 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(45/8),(45)&7
	line	174
	
l16417:	
;key.c: 174: if( ( GetADC.Vout_Lx & 0xc0 ) == 0 )
	movf	0+(_GetADC)+04h,w
	andlw	0C0h
	btfss	status,2
	goto	u1551
	goto	u1550
u1551:
	goto	l16427
u1550:
	line	176
	
l16419:	
;key.c: 175: {
;key.c: 176: GetADC.smokeCount++;
	incf	0+(_GetADC)+02h,f
	line	177
	
l16421:	
;key.c: 177: if(GetADC.smokeCount>5)
	movlw	(06h)
	subwf	0+(_GetADC)+02h,w
	skipc
	goto	u1561
	goto	u1560
u1561:
	goto	l16435
u1560:
	line	179
	
l16423:	
;key.c: 178: {
;key.c: 179: GetADC.smokeCount=0;
	clrf	0+(_GetADC)+02h
	line	180
	
l16425:	
;key.c: 180: GetADC.Vout_Lx ^= 0x01;
	movlw	(01h)
	xorwf	0+(_GetADC)+04h,f
	goto	l16435
	line	186
	
l16427:	
;key.c: 184: else
;key.c: 185: {
;key.c: 186: GetADC.smokeCount=0;
	clrf	0+(_GetADC)+02h
	goto	l16435
	line	195
	
l16429:	
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
	goto	l16437
	line	199
	
l16431:	
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
	goto	l16437
	line	189
	
l16435:	
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
	goto	l16437
	xorlw	64^0	; case 64
	skipnz
	goto	l16429
	xorlw	128^64	; case 128
	skipnz
	goto	l16431
	goto	l16437
	opt asmopt_on

	line	205
	
l16437:	
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
	goto	u1575
	bsf	status, 6	;RP1=1, select bank2
	movf	2+(345)^0100h+07h,w
	bcf	status, 6	;RP1=0, select bank0
	subwf	2+(??_KeyUpStopSmoke+0)+0,w
	skipz
	goto	u1575
	bsf	status, 6	;RP1=1, select bank2
	movf	1+(345)^0100h+07h,w
	bcf	status, 6	;RP1=0, select bank0
	subwf	1+(??_KeyUpStopSmoke+0)+0,w
	skipz
	goto	u1575
	bsf	status, 6	;RP1=1, select bank2
	movf	0+(345)^0100h+07h,w
	bcf	status, 6	;RP1=0, select bank0
	subwf	0+(??_KeyUpStopSmoke+0)+0,w
u1575:
	skipnc
	goto	u1571
	goto	u1570
u1571:
	goto	l16441
u1570:
	line	207
	
l16439:	
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
	goto	u1585
	goto	u1586
u1585:
	bsf	status, 6	;RP1=1, select bank2
	subwf	1+(345)^0100h+07h,f
u1586:
	bcf	status, 6	;RP1=0, select bank0
	movf	2+(??_KeyUpStopSmoke+0)+0,w
	skipc
	incfsz	2+(??_KeyUpStopSmoke+0)+0,w
	goto	u1587
	goto	u1588
u1587:
	bsf	status, 6	;RP1=1, select bank2
	subwf	2+(345)^0100h+07h,f
u1588:
	bcf	status, 6	;RP1=0, select bank0
	movf	3+(??_KeyUpStopSmoke+0)+0,w
	skipc
	incfsz	3+(??_KeyUpStopSmoke+0)+0,w
	goto	u1589
	goto	u1580
u1589:
	bsf	status, 6	;RP1=1, select bank2
	subwf	3+(345)^0100h+07h,f
u1580:
	bcf	status, 6	;RP1=0, select bank0
	bsf	status, 6	;RP1=1, select bank2

	line	208
;key.c: 208: }
	goto	l16443
	line	211
	
l16441:	
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
	
l16443:	
;key.c: 212: }
;key.c: 213: TimeCnt.SmokeTask = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	0+(345)^0100h+05h
	clrf	1+(345)^0100h+05h
	line	215
	
l16445:	
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
	
l4928:	
	return
	opt stack 0
GLOBAL	__end_of_KeyUpStopSmoke
	__end_of_KeyUpStopSmoke:
;; =============== function _KeyUpStopSmoke ends ============

	signat	_KeyUpStopSmoke,88
	global	_SystemClockInit
psect	text702,local,class=CODE,delta=2
global __ptext702
__ptext702:

;; *************** function _SystemClockInit *****************
;; Defined at:
;;		line 40 in file "D:\xx\P2\code\init.c"
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
psect	text702
	file	"D:\xx\P2\code\init.c"
	line	40
	global	__size_of_SystemClockInit
	__size_of_SystemClockInit	equ	__end_of_SystemClockInit-_SystemClockInit
	
_SystemClockInit:	
	opt	stack 3
; Regs used in _SystemClockInit: [wreg+status,2+status,0+pclath+cstack]
	line	46
	
l16389:	
;init.c: 46: CLKCTL = (CLKCTL&0xFC)|0x03;
	movf	(15),w
	andlw	0FCh
	iorlw	03h
	movwf	(15)	;volatile
	line	47
	
l16391:	
;init.c: 47: Delay_16nop();
	fcall	_Delay_16nop
	line	49
	
l16393:	
;init.c: 49: CLKCTL = (CLKCTL&0xF7);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(15)+(3/8),(3)&7	;volatile
	line	50
	
l16395:	
;init.c: 50: Delay_16nop();
	fcall	_Delay_16nop
	line	52
	
l16397:	
;init.c: 52: CLKCTL = (CLKCTL|0x04);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(15)+(2/8),(2)&7	;volatile
	line	53
	
l16399:	
;init.c: 53: Delay_16nop();
	fcall	_Delay_16nop
	line	54
	
l3254:	
	return
	opt stack 0
GLOBAL	__end_of_SystemClockInit
	__end_of_SystemClockInit:
;; =============== function _SystemClockInit ends ============

	signat	_SystemClockInit,88
	global	___lldiv
psect	text703,local,class=CODE,delta=2
global __ptext703
__ptext703:

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
;;		On entry : 160/100
;;		On exit  : 160/100
;;		Unchanged: FFE9F/0
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
;; This function uses a non-reentrant model
;;
psect	text703
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lldiv.c"
	line	5
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
	opt	stack 3
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	9
	
l16331:	
	clrf	(___lldiv@quotient)
	clrf	(___lldiv@quotient+1)
	clrf	(___lldiv@quotient+2)
	clrf	(___lldiv@quotient+3)
	line	10
	
l16333:	
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u1461
	goto	u1460
u1461:
	goto	l16353
u1460:
	line	11
	
l16335:	
	clrf	(___lldiv@counter)
	incf	(___lldiv@counter),f
	line	12
	goto	l16339
	line	13
	
l16337:	
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	line	14
	incf	(___lldiv@counter),f
	line	12
	
l16339:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u1471
	goto	u1470
u1471:
	goto	l16337
u1470:
	line	17
	
l16341:	
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	line	18
	
l16343:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u1485
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u1485
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u1485
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u1485:
	skipc
	goto	u1481
	goto	u1480
u1481:
	goto	l16349
u1480:
	line	19
	
l16345:	
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
	
l16347:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	line	22
	
l16349:	
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	line	23
	
l16351:	
	decfsz	(___lldiv@counter),f
	goto	u1491
	goto	u1490
u1491:
	goto	l16341
u1490:
	line	25
	
l16353:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	line	26
	
l14580:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
;; =============== function ___lldiv ends ============

	signat	___lldiv,8316
	global	___lmul
psect	text704,local,class=CODE,delta=2
global __ptext704
__ptext704:

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
;;		On entry : 160/100
;;		On exit  : 160/100
;;		Unchanged: FFE9F/0
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
;; This function uses a non-reentrant model
;;
psect	text704
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lmul.c"
	line	3
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:	
	opt	stack 3
; Regs used in ___lmul: [wreg+status,2+status,0]
	line	4
	
l16319:	
	clrf	(___lmul@product)
	clrf	(___lmul@product+1)
	clrf	(___lmul@product+2)
	clrf	(___lmul@product+3)
	line	6
	
l14381:	
	line	7
	btfss	(___lmul@multiplier),(0)&7
	goto	u1431
	goto	u1430
u1431:
	goto	l16323
u1430:
	line	8
	
l16321:	
	movf	(___lmul@multiplicand),w
	addwf	(___lmul@product),f
	movf	(___lmul@multiplicand+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1441
	addwf	(___lmul@product+1),f
u1441:
	movf	(___lmul@multiplicand+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1442
	addwf	(___lmul@product+2),f
u1442:
	movf	(___lmul@multiplicand+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1443
	addwf	(___lmul@product+3),f
u1443:

	line	9
	
l16323:	
	clrc
	rlf	(___lmul@multiplicand),f
	rlf	(___lmul@multiplicand+1),f
	rlf	(___lmul@multiplicand+2),f
	rlf	(___lmul@multiplicand+3),f
	line	10
	
l16325:	
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
	goto	u1451
	goto	u1450
u1451:
	goto	l14381
u1450:
	line	12
	
l16327:	
	movf	(___lmul@product+3),w
	movwf	(?___lmul+3)
	movf	(___lmul@product+2),w
	movwf	(?___lmul+2)
	movf	(___lmul@product+1),w
	movwf	(?___lmul+1)
	movf	(___lmul@product),w
	movwf	(?___lmul)

	line	13
	
l14384:	
	return
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
;; =============== function ___lmul ends ============

	signat	___lmul,8316
	global	___lwdiv
psect	text705,local,class=CODE,delta=2
global __ptext705
__ptext705:

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
psect	text705
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 3
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l16293:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l16295:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u1391
	goto	u1390
u1391:
	goto	l16315
u1390:
	line	11
	
l16297:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l16301
	line	13
	
l16299:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l16301:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u1401
	goto	u1400
u1401:
	goto	l16299
u1400:
	line	17
	
l16303:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l16305:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u1415
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u1415:
	skipc
	goto	u1411
	goto	u1410
u1411:
	goto	l16311
u1410:
	line	19
	
l16307:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l16309:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l16311:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l16313:	
	decfsz	(___lwdiv@counter),f
	goto	u1421
	goto	u1420
u1421:
	goto	l16303
u1420:
	line	25
	
l16315:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l14319:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text706,local,class=CODE,delta=2
global __ptext706
__ptext706:

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
psect	text706
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 3
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l16277:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l16279:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u1371
	goto	u1370
u1371:
	goto	l16283
u1370:
	line	8
	
l16281:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l16283:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l16285:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l16287:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u1381
	goto	u1380
u1381:
	goto	l16279
u1380:
	line	12
	
l16289:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l14309:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	___bmul
psect	text707,local,class=CODE,delta=2
global __ptext707
__ptext707:

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
psect	text707
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
	
l16261:	
	clrf	(___bmul@product)
	line	7
	
l16263:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u1351
	goto	u1350
u1351:
	goto	l16267
u1350:
	line	8
	
l16265:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	9
	
l16267:	
	clrc
	rlf	(___bmul@multiplicand),f
	line	10
	
l16269:	
	clrc
	rrf	(___bmul@multiplier),f
	line	11
	
l16271:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u1361
	goto	u1360
u1361:
	goto	l16263
u1360:
	line	12
	
l16273:	
	movf	(___bmul@product),w
	line	13
	
l14303:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	_UIOneSecondEvent
psect	text708,local,class=CODE,delta=2
global __ptext708
__ptext708:

;; *************** function _UIOneSecondEvent *****************
;; Defined at:
;;		line 28 in file "D:\xx\P2\code\tyw_uiEvent.c"
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
psect	text708
	file	"D:\xx\P2\code\tyw_uiEvent.c"
	line	28
	global	__size_of_UIOneSecondEvent
	__size_of_UIOneSecondEvent	equ	__end_of_UIOneSecondEvent-_UIOneSecondEvent
	
_UIOneSecondEvent:	
	opt	stack 3
; Regs used in _UIOneSecondEvent: [wreg+status,2+status,0]
	line	30
	
l16253:	
;tyw_uiEvent.c: 30: if(DispayCount>10)
	movlw	(0Bh)
	subwf	(_DispayCount),w
	skipc
	goto	u1321
	goto	u1320
u1321:
	goto	l13353
u1320:
	line	31
	
l16255:	
;tyw_uiEvent.c: 31: DispayCount=10;
	movlw	(0Ah)
	movwf	(_DispayCount)
	
l13353:	
	line	32
;tyw_uiEvent.c: 32: if( DispayCount > 0 )
	movf	(_DispayCount),w
	skipz
	goto	u1330
	goto	l13356
u1330:
	line	34
	
l16257:	
;tyw_uiEvent.c: 33: {
;tyw_uiEvent.c: 34: DispayCount--;
	decf	(_DispayCount),f
	line	35
;tyw_uiEvent.c: 35: if( DispayCount == 0 )
	movf	(_DispayCount),f
	skipz
	goto	u1341
	goto	u1340
u1341:
	goto	l13356
u1340:
	line	37
	
l16259:	
;tyw_uiEvent.c: 36: {
;tyw_uiEvent.c: 37: DisplaySwitchNum = PAGE_WAIT_CLOSE;
	movlw	(0Ch)
	movwf	(_DisplaySwitchNum)
	line	38
;tyw_uiEvent.c: 38: oldDisplayPage = DisplaySwitchNum;
	movf	(_DisplaySwitchNum),w
	movwf	(_oldDisplayPage)
	line	41
	
l13356:	
	return
	opt stack 0
GLOBAL	__end_of_UIOneSecondEvent
	__end_of_UIOneSecondEvent:
;; =============== function _UIOneSecondEvent ends ============

	signat	_UIOneSecondEvent,88
	global	_showSmokeMode
psect	text709,local,class=CODE,delta=2
global __ptext709
__ptext709:

;; *************** function _showSmokeMode *****************
;; Defined at:
;;		line 490 in file "D:\xx\P2\code\tyw_led.c"
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
psect	text709
	file	"D:\xx\P2\code\tyw_led.c"
	line	490
	global	__size_of_showSmokeMode
	__size_of_showSmokeMode	equ	__end_of_showSmokeMode-_showSmokeMode
	
_showSmokeMode:	
	opt	stack 2
; Regs used in _showSmokeMode: [wreg-fsr0h+status,2+status,0]
	line	491
	
l16227:	
;tyw_led.c: 491: uint8_t mode=0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(showSmokeMode@mode)
	line	493
;tyw_led.c: 492: static uint8_t oldMode=0;
;tyw_led.c: 493: switch (GetADC.Vout_Lx)
	goto	l16235
	line	496
	
l16229:	
;tyw_led.c: 496: mode=0;
	clrf	(showSmokeMode@mode)
	line	497
;tyw_led.c: 497: break;
	goto	l16237
	line	498
;tyw_led.c: 498: case 0x40:
	
l10088:	
	line	499
;tyw_led.c: 499: mode=1;
	clrf	(showSmokeMode@mode)
	incf	(showSmokeMode@mode),f
	line	500
;tyw_led.c: 500: break;
	goto	l16237
	line	502
	
l16231:	
;tyw_led.c: 502: mode=2;
	movlw	(02h)
	movwf	(showSmokeMode@mode)
	line	503
;tyw_led.c: 503: break;
	goto	l16237
	line	493
	
l16235:	
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
	goto	l16229
	xorlw	64^0	; case 64
	skipnz
	goto	l10088
	xorlw	128^64	; case 128
	skipnz
	goto	l16231
	goto	l16237
	opt asmopt_on

	line	506
	
l16237:	
;tyw_led.c: 506: if(oldMode !=mode)
	movf	(showSmokeMode@oldMode),w
	xorwf	(showSmokeMode@mode),w
	skipnz
	goto	u1311
	goto	u1310
u1311:
	goto	l16251
u1310:
	line	508
	
l16239:	
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
	
l16241:	
;tyw_led.c: 517: oldMode=mode;
	bcf	status, 5	;RP0=0, select bank0
	movf	(showSmokeMode@mode),w
	movwf	(showSmokeMode@oldMode)
	goto	l16251
	line	528
	
l16243:	
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
	goto	l10097
	line	534
	
l16245:	
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
	goto	l10097
	line	539
	
l16247:	
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
	goto	l10097
	line	525
	
l16251:	
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
	goto	l16243
	xorlw	1^0	; case 1
	skipnz
	goto	l16245
	xorlw	2^1	; case 2
	skipnz
	goto	l16247
	goto	l10097
	opt asmopt_on

	line	546
	
l10097:	
	return
	opt stack 0
GLOBAL	__end_of_showSmokeMode
	__end_of_showSmokeMode:
;; =============== function _showSmokeMode ends ============

	signat	_showSmokeMode,88
	global	_showOilBar
psect	text710,local,class=CODE,delta=2
global __ptext710
__ptext710:

;; *************** function _showOilBar *****************
;; Defined at:
;;		line 405 in file "D:\xx\P2\code\tyw_led.c"
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
psect	text710
	file	"D:\xx\P2\code\tyw_led.c"
	line	405
	global	__size_of_showOilBar
	__size_of_showOilBar	equ	__end_of_showOilBar-_showOilBar
	
_showOilBar:	
	opt	stack 0
; Regs used in _showOilBar: [wreg-fsr0h+status,2+status,0]
;showOilBar@lv stored from wreg
	line	407
	movwf	(showOilBar@lv)
	
l16209:	
;tyw_led.c: 406: uint8_t i;
;tyw_led.c: 407: for (i = 0; i < 7; ++i)
	clrf	(showOilBar@i)
	line	409
	
l16215:	
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
	
l16217:	
	incf	(showOilBar@i),f
	
l16219:	
	movlw	(07h)
	subwf	(showOilBar@i),w
	skipc
	goto	u1301
	goto	u1300
u1301:
	goto	l16215
u1300:
	goto	l16225
	line	417
	
l16221:	
;tyw_led.c: 417: led_duty_cycles[6][4]=16;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_led_duty_cycles)^080h+034h
	line	418
;tyw_led.c: 418: case 5:
	
l10057:	
	line	419
;tyw_led.c: 419: led_duty_cycles[4][4]=16;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_led_duty_cycles)^080h+024h
	line	420
;tyw_led.c: 420: case 4:
	
l10058:	
	line	421
;tyw_led.c: 421: led_duty_cycles[3][4]=16;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_led_duty_cycles)^080h+01Ch
	line	422
;tyw_led.c: 422: case 3:
	
l10059:	
	line	423
;tyw_led.c: 423: led_duty_cycles[2][4]=16;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_led_duty_cycles)^080h+014h
	line	424
;tyw_led.c: 424: case 2:
	
l10060:	
	line	425
;tyw_led.c: 425: led_duty_cycles[1][4]=16;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_led_duty_cycles)^080h+0Ch
	line	426
;tyw_led.c: 426: case 1:
	
l10061:	
	line	427
;tyw_led.c: 427: led_duty_cycles[0][4]=16;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_led_duty_cycles)^080h+04h
	line	428
;tyw_led.c: 428: break;
	goto	l10064
	line	414
	
l16225:	
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
	goto	l10061
	xorlw	2^1	; case 2
	skipnz
	goto	l10060
	xorlw	3^2	; case 3
	skipnz
	goto	l10059
	xorlw	4^3	; case 4
	skipnz
	goto	l10058
	xorlw	5^4	; case 5
	skipnz
	goto	l10057
	xorlw	6^5	; case 6
	skipnz
	goto	l16221
	goto	l10064
	opt asmopt_on

	line	432
	
l10064:	
	return
	opt stack 0
GLOBAL	__end_of_showOilBar
	__end_of_showOilBar:
;; =============== function _showOilBar ends ============

	signat	_showOilBar,4216
	global	_showPowerBar
psect	text711,local,class=CODE,delta=2
global __ptext711
__ptext711:

;; *************** function _showPowerBar *****************
;; Defined at:
;;		line 312 in file "D:\xx\P2\code\tyw_led.c"
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
psect	text711
	file	"D:\xx\P2\code\tyw_led.c"
	line	312
	global	__size_of_showPowerBar
	__size_of_showPowerBar	equ	__end_of_showPowerBar-_showPowerBar
	
_showPowerBar:	
	opt	stack 0
; Regs used in _showPowerBar: [wreg-fsr0h+status,2+status,0]
;showPowerBar@lv stored from wreg
	line	315
	movwf	(showPowerBar@lv)
	
l16191:	
;tyw_led.c: 313: uint8_t i;
;tyw_led.c: 315: for (i = 0; i < 7; ++i)
	clrf	(showPowerBar@i)
	line	317
	
l16197:	
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
	
l16199:	
	incf	(showPowerBar@i),f
	
l16201:	
	movlw	(07h)
	subwf	(showPowerBar@i),w
	skipc
	goto	u1291
	goto	u1290
u1291:
	goto	l16197
u1290:
	goto	l16207
	line	323
	
l16203:	
;tyw_led.c: 323: led_duty_cycles[6][5]=16;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_led_duty_cycles)^080h+035h
	line	324
;tyw_led.c: 324: case 5:
	
l10029:	
	line	325
;tyw_led.c: 325: led_duty_cycles[4][5]=16;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_led_duty_cycles)^080h+025h
	line	326
;tyw_led.c: 326: case 4:
	
l10030:	
	line	327
;tyw_led.c: 327: led_duty_cycles[3][5]=16;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_led_duty_cycles)^080h+01Dh
	line	328
;tyw_led.c: 328: case 3:
	
l10031:	
	line	329
;tyw_led.c: 329: led_duty_cycles[2][5]=16;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_led_duty_cycles)^080h+015h
	line	330
;tyw_led.c: 330: case 2:
	
l10032:	
	line	331
;tyw_led.c: 331: led_duty_cycles[1][5]=16;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_led_duty_cycles)^080h+0Dh
	line	332
;tyw_led.c: 332: case 1:
	
l10033:	
	line	333
;tyw_led.c: 333: led_duty_cycles[0][5]=16;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_led_duty_cycles)^080h+05h
	line	334
;tyw_led.c: 334: break;
	goto	l10036
	line	320
	
l16207:	
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
	goto	l10033
	xorlw	2^1	; case 2
	skipnz
	goto	l10032
	xorlw	3^2	; case 3
	skipnz
	goto	l10031
	xorlw	4^3	; case 4
	skipnz
	goto	l10030
	xorlw	5^4	; case 5
	skipnz
	goto	l10029
	xorlw	6^5	; case 6
	skipnz
	goto	l16203
	goto	l10036
	opt asmopt_on

	line	338
	
l10036:	
	return
	opt stack 0
GLOBAL	__end_of_showPowerBar
	__end_of_showPowerBar:
;; =============== function _showPowerBar ends ============

	signat	_showPowerBar,4216
	global	_tyw_memset
psect	text712,local,class=CODE,delta=2
global __ptext712
__ptext712:

;; *************** function _tyw_memset *****************
;; Defined at:
;;		line 13 in file "D:\xx\P2\code\tyw_led.c"
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
psect	text712
	file	"D:\xx\P2\code\tyw_led.c"
	line	13
	global	__size_of_tyw_memset
	__size_of_tyw_memset	equ	__end_of_tyw_memset-_tyw_memset
	
_tyw_memset:	
	opt	stack 2
; Regs used in _tyw_memset: [wreg-fsr0h+status,2+status,0]
;tyw_memset@ptr stored from wreg
	movwf	(tyw_memset@ptr)
	line	14
	
l16095:	
;tyw_led.c: 14: uint8_t* p = (uint8_t*)ptr;
	movf	(tyw_memset@ptr),w
	movwf	(tyw_memset@p)
	line	15
	
l16097:	
	line	16
	
l16099:	
;tyw_led.c: 16: for ( i = 0; i < num; i++)
	clrf	(tyw_memset@i)
	goto	l16105
	line	18
	
l16101:	
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
	
l16103:	
	incf	(tyw_memset@i),f
	
l16105:	
	movf	(tyw_memset@num),w
	subwf	(tyw_memset@i),w
	skipc
	goto	u1201
	goto	u1200
u1201:
	goto	l16101
u1200:
	line	21
	
l9948:	
	return
	opt stack 0
GLOBAL	__end_of_tyw_memset
	__end_of_tyw_memset:
;; =============== function _tyw_memset ends ============

	signat	_tyw_memset,12409
	global	_Delay_16nop
psect	text713,local,class=CODE,delta=2
global __ptext713
__ptext713:

;; *************** function _Delay_16nop *****************
;; Defined at:
;;		line 23 in file "D:\xx\P2\code\init.c"
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
;; This function uses a non-reentrant model
;;
psect	text713
	file	"D:\xx\P2\code\init.c"
	line	23
	global	__size_of_Delay_16nop
	__size_of_Delay_16nop	equ	__end_of_Delay_16nop-_Delay_16nop
	
_Delay_16nop:	
	opt	stack 3
; Regs used in _Delay_16nop: []
	line	24
	
l16093:	
# 24 "D:\xx\P2\code\init.c"
nop ;#
# 24 "D:\xx\P2\code\init.c"
nop ;#
# 24 "D:\xx\P2\code\init.c"
nop ;#
# 24 "D:\xx\P2\code\init.c"
nop ;#
	line	25
# 25 "D:\xx\P2\code\init.c"
nop ;#
# 25 "D:\xx\P2\code\init.c"
nop ;#
# 25 "D:\xx\P2\code\init.c"
nop ;#
# 25 "D:\xx\P2\code\init.c"
nop ;#
	line	26
# 26 "D:\xx\P2\code\init.c"
nop ;#
# 26 "D:\xx\P2\code\init.c"
nop ;#
# 26 "D:\xx\P2\code\init.c"
nop ;#
# 26 "D:\xx\P2\code\init.c"
nop ;#
	line	27
# 27 "D:\xx\P2\code\init.c"
nop ;#
# 27 "D:\xx\P2\code\init.c"
nop ;#
# 27 "D:\xx\P2\code\init.c"
nop ;#
# 27 "D:\xx\P2\code\init.c"
nop ;#
psect	text713
	line	28
	
l3251:	
	return
	opt stack 0
GLOBAL	__end_of_Delay_16nop
	__end_of_Delay_16nop:
;; =============== function _Delay_16nop ends ============

	signat	_Delay_16nop,88
	global	_ClearAllRAM
psect	text714,local,class=CODE,delta=2
global __ptext714
__ptext714:

;; *************** function _ClearAllRAM *****************
;; Defined at:
;;		line 247 in file "D:\xx\P2\code\init.c"
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
psect	text714
	file	"D:\xx\P2\code\init.c"
	line	247
	global	__size_of_ClearAllRAM
	__size_of_ClearAllRAM	equ	__end_of_ClearAllRAM-_ClearAllRAM
	
_ClearAllRAM:	
	opt	stack 4
; Regs used in _ClearAllRAM: [wreg+status,2+status,0]
	line	248
	
l15985:	
;init.c: 248: IRP = 0;
	bcf	(31/8),(31)&7
	line	249
	
l15987:	
;init.c: 249: for(FSR = 0x20; FSR < 0x80; FSR++)
	movlw	(020h)
	movwf	(4)	;volatile
	movlw	(080h)
	subwf	(4),w	;volatile
	skipc
	goto	u951
	goto	u950
u951:
	goto	l15991
u950:
	goto	l15997
	line	251
	
l15991:	
;init.c: 250: {
;init.c: 251: INDF = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(0)	;volatile
	line	249
	
l15993:	
	incf	(4),f	;volatile
	
l15995:	
	movlw	(080h)
	subwf	(4),w	;volatile
	skipc
	goto	u961
	goto	u960
u961:
	goto	l15991
u960:
	line	254
	
l15997:	
;init.c: 252: }
;init.c: 254: for(FSR = 0xA0; FSR < 0xF0; FSR++)
	movlw	(0A0h)
	movwf	(4)	;volatile
	movlw	(0F0h)
	subwf	(4),w	;volatile
	skipc
	goto	u971
	goto	u970
u971:
	goto	l16001
u970:
	goto	l3269
	line	256
	
l16001:	
;init.c: 255: {
;init.c: 256: INDF = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(0)	;volatile
	line	254
	
l16003:	
	incf	(4),f	;volatile
	
l16005:	
	movlw	(0F0h)
	subwf	(4),w	;volatile
	skipc
	goto	u981
	goto	u980
u981:
	goto	l16001
u980:
	
l3269:	
	line	259
;init.c: 257: }
;init.c: 259: IRP = 1;
	bsf	(31/8),(31)&7
	line	260
	
l16007:	
;init.c: 260: for(FSR = 0x20; FSR < 0x60; FSR++)
	movlw	(020h)
	movwf	(4)	;volatile
	movlw	(060h)
	subwf	(4),w	;volatile
	skipc
	goto	u991
	goto	u990
u991:
	goto	l16011
u990:
	goto	l3271
	line	262
	
l16011:	
;init.c: 261: {
;init.c: 262: INDF = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(0)	;volatile
	line	260
	
l16013:	
	incf	(4),f	;volatile
	
l16015:	
	movlw	(060h)
	subwf	(4),w	;volatile
	skipc
	goto	u1001
	goto	u1000
u1001:
	goto	l16011
u1000:
	
l3271:	
	line	266
;init.c: 263: }
;init.c: 266: IRP = 0;RP0 = 0;RP1 = 0;
	bcf	(31/8),(31)&7
	bcf	(29/8),(29)&7
	bcf	(30/8),(30)&7
	line	267
	
l3272:	
	return
	opt stack 0
GLOBAL	__end_of_ClearAllRAM
	__end_of_ClearAllRAM:
;; =============== function _ClearAllRAM ends ============

	signat	_ClearAllRAM,88
	global	_openNewPage
psect	text715,local,class=CODE,delta=2
global __ptext715
__ptext715:

;; *************** function _openNewPage *****************
;; Defined at:
;;		line 19 in file "D:\xx\P2\code\tyw_uiEvent.c"
;; Parameters:    Size  Location     Type
;;  newPage         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  newPage         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 60/0
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text715
	file	"D:\xx\P2\code\tyw_uiEvent.c"
	line	19
	global	__size_of_openNewPage
	__size_of_openNewPage	equ	__end_of_openNewPage-_openNewPage
	
_openNewPage:	
	opt	stack 4
; Regs used in _openNewPage: [wreg+status,2]
;openNewPage@newPage stored from wreg
	movwf	(openNewPage@newPage)
	line	20
	
l15975:	
;tyw_uiEvent.c: 20: if(DisplaySwitchNum==newPage)
	movf	(_DisplaySwitchNum),w
	xorwf	(openNewPage@newPage),w
	skipz
	goto	u941
	goto	u940
u941:
	goto	l15979
u940:
	goto	l13350
	line	23
	
l15979:	
;tyw_uiEvent.c: 23: oldDisplayPage = PAGE_IDLE;
	clrf	(_oldDisplayPage)
	line	24
	
l15981:	
;tyw_uiEvent.c: 24: DispayCount=5;
	movlw	(05h)
	movwf	(_DispayCount)
	line	25
	
l15983:	
;tyw_uiEvent.c: 25: DisplaySwitchNum = newPage;
	movf	(openNewPage@newPage),w
	movwf	(_DisplaySwitchNum)
	line	26
	
l13350:	
	return
	opt stack 0
GLOBAL	__end_of_openNewPage
	__end_of_openNewPage:
;; =============== function _openNewPage ends ============

	signat	_openNewPage,4216
	global	_MCU_INIT_TIMER
psect	text716,local,class=CODE,delta=2
global __ptext716
__ptext716:

;; *************** function _MCU_INIT_TIMER *****************
;; Defined at:
;;		line 139 in file "D:\xx\P2\code\init.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text716
	file	"D:\xx\P2\code\init.c"
	line	139
	global	__size_of_MCU_INIT_TIMER
	__size_of_MCU_INIT_TIMER	equ	__end_of_MCU_INIT_TIMER-_MCU_INIT_TIMER
	
_MCU_INIT_TIMER:	
	opt	stack 4
; Regs used in _MCU_INIT_TIMER: [wreg+status,2+status,0]
	line	141
	
l15945:	
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
	
l15947:	
;init.c: 145: TM0CTL &= 0xF0;TM0CTL |= 0x01;
	movlw	(0F0h)
	andwf	(17),f	;volatile
	
l15949:	
	bsf	(17)+(0/8),(0)&7	;volatile
	line	146
	
l15951:	
;init.c: 146: TM0 = 256 - 100;
	movlw	(09Ch)
	movwf	(1)	;volatile
	line	147
	
l15953:	
;init.c: 147: TM0RLD = 256 - 100;
	movlw	(09Ch)
	movwf	(16)	;volatile
	line	150
	
l15955:	
;init.c: 150: TM1CTL |= 0x40;
	bsf	(20)+(6/8),(6)&7	;volatile
	line	151
	
l15957:	
;init.c: 151: TM1IE = 0;
	bcf	(93/8),(93)&7
	line	152
	
l15959:	
;init.c: 152: TM1IF = 0;
	bcf	(101/8),(101)&7
	line	153
;init.c: 153: TM1CTL &= 0xF0;TM1CTL |= 0x05;
	movlw	(0F0h)
	andwf	(20),f	;volatile
	movlw	(05h)
	iorwf	(20),f	;volatile
	line	154
	
l15961:	
;init.c: 154: TM1 = 256 - 125;
	movlw	(083h)
	movwf	(18)	;volatile
	line	155
	
l15963:	
;init.c: 155: TM1RLD = 256 - 125;
	movlw	(083h)
	movwf	(19)	;volatile
	line	158
	
l15965:	
;init.c: 158: T2CTL |= 0x10;
	bsf	(21)+(4/8),(4)&7	;volatile
	line	159
	
l15967:	
;init.c: 159: T2IE = 0;
	bcf	(94/8),(94)&7
	line	160
	
l15969:	
;init.c: 160: T2IF = 0;
	bcf	(102/8),(102)&7
	line	161
;init.c: 161: T2CTL &= 0xFC;
	movlw	(0FCh)
	andwf	(21),f	;volatile
	line	164
	
l15971:	
;init.c: 164: TM0IE = 1;
	bsf	(92/8),(92)&7
	line	165
	
l15973:	
;init.c: 165: TM0CTL &= 0xBF;
	bcf	(17)+(6/8),(6)&7	;volatile
	line	172
	
l3263:	
	return
	opt stack 0
GLOBAL	__end_of_MCU_INIT_TIMER
	__end_of_MCU_INIT_TIMER:
;; =============== function _MCU_INIT_TIMER ends ============

	signat	_MCU_INIT_TIMER,88
	global	_Init_BOD_WDT
psect	text717,local,class=CODE,delta=2
global __ptext717
__ptext717:

;; *************** function _Init_BOD_WDT *****************
;; Defined at:
;;		line 65 in file "D:\xx\P2\code\init.c"
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
;; This function uses a non-reentrant model
;;
psect	text717
	file	"D:\xx\P2\code\init.c"
	line	65
	global	__size_of_Init_BOD_WDT
	__size_of_Init_BOD_WDT	equ	__end_of_Init_BOD_WDT-_Init_BOD_WDT
	
_Init_BOD_WDT:	
	opt	stack 4
; Regs used in _Init_BOD_WDT: [wreg+status,2+status,0]
	line	67
	
l15929:	
;init.c: 67: LVDIE = 0;
	bcf	(104/8),(104)&7
	line	68
;init.c: 68: LVDIF = 0;
	bcf	(112/8),(112)&7
	line	69
	
l15931:	
;init.c: 69: LVCTL &= 0xF0;LVCTL |= 0x03;
	movlw	(0F0h)
	andwf	(22),f	;volatile
	movlw	(03h)
	iorwf	(22),f	;volatile
	line	70
	
l15933:	
;init.c: 70: LVCTL |= 0x40;
	bsf	(22)+(6/8),(6)&7	;volatile
	line	71
	
l15935:	
;init.c: 71: LVCTL |= 0x20;
	bsf	(22)+(5/8),(5)&7	;volatile
	line	72
	
l15937:	
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
	
l15939:	
# 77 "D:\xx\P2\code\init.c"
CLRWDT ;#
psect	text717
	line	79
	
l15941:	
;init.c: 79: WKTIE = 0;
	bcf	(91/8),(91)&7
	line	80
	
l15943:	
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
	
l3257:	
	return
	opt stack 0
GLOBAL	__end_of_Init_BOD_WDT
	__end_of_Init_BOD_WDT:
;; =============== function _Init_BOD_WDT ends ============

	signat	_Init_BOD_WDT,88
	global	_InitGpio
psect	text718,local,class=CODE,delta=2
global __ptext718
__ptext718:

;; *************** function _InitGpio *****************
;; Defined at:
;;		line 94 in file "D:\xx\P2\code\init.c"
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
;; This function uses a non-reentrant model
;;
psect	text718
	file	"D:\xx\P2\code\init.c"
	line	94
	global	__size_of_InitGpio
	__size_of_InitGpio	equ	__end_of_InitGpio-_InitGpio
	
_InitGpio:	
	opt	stack 4
; Regs used in _InitGpio: [wreg+status,2+status,0]
	line	96
	
l15915:	
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
	
l15917:	
;init.c: 109: PDD = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(7)	;volatile
	line	110
	
l15919:	
;init.c: 110: PDMOD10 = PDMOD10 & 0x00 | 0x60 | 0x06;
	movlw	(066h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(144)^080h	;volatile
	line	112
	
l15921:	
;init.c: 112: PINMOD &= 0xD8;
	movlw	(0D8h)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	andwf	(261)^0100h,f	;volatile
	line	125
	
l15923:	
;init.c: 125: ADCTL &= 0xF8;
	movlw	(0F8h)
	bcf	status, 6	;RP1=0, select bank0
	andwf	(24),f	;volatile
	line	126
	
l15925:	
;init.c: 126: ADCTL |= 0x05;
	movlw	(05h)
	iorwf	(24),f	;volatile
	line	127
	
l15927:	
;init.c: 127: ADCTL2 &= 0x3F;
	movlw	(03Fh)
	andwf	(25),f	;volatile
	line	128
	
l3260:	
	return
	opt stack 0
GLOBAL	__end_of_InitGpio
	__end_of_InitGpio:
;; =============== function _InitGpio ends ============

	signat	_InitGpio,88
	global	_Interrupt_ISR
psect	text719,local,class=CODE,delta=2
global __ptext719
__ptext719:

;; *************** function _Interrupt_ISR *****************
;; Defined at:
;;		line 174 in file "D:\xx\P2\code\main.c"
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
psect	text719
	file	"D:\xx\P2\code\main.c"
	line	174
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
psect	text719
	line	175
	
i1l16017:	
;main.c: 175: if(CMPIF != 0)
	btfss	(116/8),(116)&7
	goto	u101_21
	goto	u101_20
u101_21:
	goto	i1l1640
u101_20:
	line	177
	
i1l16019:	
;main.c: 176: {
;main.c: 177: if(VoutInfoFlag.bits.b7 != 0 && VoutInfoFlag.bits.b6 == 0)
	btfss	(_VoutInfoFlag),7
	goto	u102_21
	goto	u102_20
u102_21:
	goto	i1l1641
u102_20:
	
i1l16021:	
	btfsc	(_VoutInfoFlag),6
	goto	u103_21
	goto	u103_20
u103_21:
	goto	i1l1641
u103_20:
	line	179
	
i1l16023:	
;main.c: 178: {
;main.c: 179: PAD4 = 1;
	bsf	(44/8),(44)&7
	line	180
;main.c: 180: PAD2 = 1;
	bsf	(42/8),(42)&7
	line	181
;main.c: 181: VoutInfoFlag.bits.b6 = 1;
	bsf	(_VoutInfoFlag),6
	line	182
	
i1l1641:	
	line	184
;main.c: 182: }
;main.c: 184: CMPIF = 0;
	bcf	(116/8),(116)&7
	line	185
;main.c: 185: }
	goto	i1l1660
	line	186
	
i1l1640:	
;main.c: 186: else if(LVDIF != 0)
	btfss	(112/8),(112)&7
	goto	u104_21
	goto	u104_20
u104_21:
	goto	i1l1643
u104_20:
	line	188
	
i1l16025:	
;main.c: 187: {
;main.c: 188: if(((VoutInfoFlag.bits.b7 != 0) || (LVDIE != 0)) && VoutInfoFlag.bits.b6 == 0)
	btfsc	(_VoutInfoFlag),7
	goto	u105_21
	goto	u105_20
u105_21:
	goto	i1l1646
u105_20:
	
i1l16027:	
	btfss	(104/8),(104)&7
	goto	u106_21
	goto	u106_20
u106_21:
	goto	i1l1644
u106_20:
	
i1l1646:	
	btfsc	(_VoutInfoFlag),6
	goto	u107_21
	goto	u107_20
u107_21:
	goto	i1l1644
u107_20:
	line	190
	
i1l16029:	
;main.c: 189: {
;main.c: 190: PAD4 = 1;
	bsf	(44/8),(44)&7
	line	191
;main.c: 191: PAD2 = 1;
	bsf	(42/8),(42)&7
	line	192
;main.c: 192: VoutInfoFlag.bits.b6 = 1;
	bsf	(_VoutInfoFlag),6
	line	193
	
i1l1644:	
	line	194
;main.c: 193: }
;main.c: 194: LVDIF = 0;
	bcf	(112/8),(112)&7
	line	195
;main.c: 195: }
	goto	i1l1660
	line	196
	
i1l1643:	
;main.c: 196: else if(TM0IF != 0)
	btfss	(100/8),(100)&7
	goto	u108_21
	goto	u108_20
u108_21:
	goto	i1l1648
u108_20:
	line	198
	
i1l16031:	
;main.c: 197: {
;main.c: 198: TimeCnt.TimeBase++;
	bsf	status, 6	;RP1=1, select bank2
	incf	(345)^0100h,f
	line	199
	
i1l16033:	
;main.c: 199: if(TimeCnt.TimeBase >= 100)
	movlw	(064h)
	subwf	(345)^0100h,w
	skipc
	goto	u109_21
	goto	u109_20
u109_21:
	goto	i1l16039
u109_20:
	line	201
	
i1l16035:	
;main.c: 200: {
;main.c: 201: TimeCnt.TimeBase = 0;
	clrf	(345)^0100h
	line	202
	
i1l16037:	
;main.c: 202: SysInfoFlag.bits.b6 = 1;
	bcf	status, 6	;RP1=0, select bank0
	bsf	(_SysInfoFlag),6
	line	206
	
i1l16039:	
;main.c: 203: }
;main.c: 206: led_matrix_run();
	fcall	_led_matrix_run
	line	207
	
i1l16041:	
;main.c: 207: if(testBit)
	movf	(_testBit),w
	skipz
	goto	u110_20
	goto	i1l1650
u110_20:
	line	209
	
i1l16043:	
;main.c: 208: {
;main.c: 209: PBD1=0;
	bcf	(49/8),(49)&7
	line	210
	
i1l16045:	
;main.c: 210: testBit=0;
	clrf	(_testBit)
	line	211
;main.c: 211: }
	goto	i1l1651
	line	212
	
i1l1650:	
	line	214
;main.c: 212: else
;main.c: 213: {
;main.c: 214: PBD1=1;
	bsf	(49/8),(49)&7
	line	215
;main.c: 215: testBit=1;
	clrf	(_testBit)
	incf	(_testBit),f
	line	216
	
i1l1651:	
	line	220
;main.c: 216: }
;main.c: 220: TM0IF = 0;
	bcf	(100/8),(100)&7
	line	221
;main.c: 221: }
	goto	i1l1660
	line	222
	
i1l1648:	
;main.c: 222: else if(INT0IF != 0)
	btfss	(96/8),(96)&7
	goto	u111_21
	goto	u111_20
u111_21:
	goto	i1l1653
u111_20:
	line	224
	
i1l16047:	
;main.c: 223: {
;main.c: 224: INT0IF = 0;
	bcf	(96/8),(96)&7
	line	225
;main.c: 225: }
	goto	i1l1660
	line	226
	
i1l1653:	
;main.c: 226: else if(INT1IF != 0)
	btfss	(97/8),(97)&7
	goto	u112_21
	goto	u112_20
u112_21:
	goto	i1l1655
u112_20:
	line	228
	
i1l16049:	
;main.c: 227: {
;main.c: 228: INT1IF = 0;
	bcf	(97/8),(97)&7
	line	229
;main.c: 229: }
	goto	i1l1660
	line	230
	
i1l1655:	
;main.c: 230: else if(INT2IF != 0)
	btfss	(98/8),(98)&7
	goto	u113_21
	goto	u113_20
u113_21:
	goto	i1l1657
u113_20:
	line	232
	
i1l16051:	
;main.c: 231: {
;main.c: 232: INT2IF = 0;
	bcf	(98/8),(98)&7
	line	233
;main.c: 233: }
	goto	i1l1660
	line	234
	
i1l1657:	
;main.c: 234: else if (WKTIF != 0)
	btfss	(99/8),(99)&7
	goto	u114_21
	goto	u114_20
u114_21:
	goto	i1l1654
u114_20:
	line	236
	
i1l16053:	
;main.c: 235: {
;main.c: 236: WKTIF = 0;
	bcf	(99/8),(99)&7
	goto	i1l1660
	line	238
	
i1l1654:	
	
i1l1660:	
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
psect	text720,local,class=CODE,delta=2
global __ptext720
__ptext720:

;; *************** function _led_matrix_run *****************
;; Defined at:
;;		line 62 in file "D:\xx\P2\code\tyw_led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  rowCount        1    9[COMMON] unsigned char 
;;  x               1    8[COMMON] unsigned char 
;;  y               1    7[COMMON] unsigned char 
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
psect	text720
	file	"D:\xx\P2\code\tyw_led.c"
	line	62
	global	__size_of_led_matrix_run
	__size_of_led_matrix_run	equ	__end_of_led_matrix_run-_led_matrix_run
	
_led_matrix_run:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _led_matrix_run: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	64
	
i1l16055:	
	clrf	(led_matrix_run@y)
	line	66
;tyw_led.c: 66: uint8_t rowCount = 0;
	clrf	(led_matrix_run@rowCount)
	line	69
;tyw_led.c: 69: for (rowCount = 0; rowCount < 8; rowCount++)
	clrf	(led_matrix_run@rowCount)
	line	71
	
i1l16061:	
;tyw_led.c: 70: {
;tyw_led.c: 71: led_set_io_od(rowCount);
	movf	(led_matrix_run@rowCount),w
	fcall	_led_set_io_od
	line	69
	
i1l16063:	
	incf	(led_matrix_run@rowCount),f
	
i1l16065:	
	movlw	(08h)
	subwf	(led_matrix_run@rowCount),w
	skipc
	goto	u115_21
	goto	u115_20
u115_21:
	goto	i1l16061
u115_20:
	line	74
	
i1l16067:	
;tyw_led.c: 72: }
;tyw_led.c: 74: for (rowCount = 0; rowCount < 3; rowCount++)
	clrf	(led_matrix_run@rowCount)
	line	77
	
i1l16073:	
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
	goto	u116_21
	goto	u116_20
u116_21:
	goto	i1l16077
u116_20:
	goto	i1l16087
	line	80
	
i1l16077:	
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
	
i1l16079:	
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
	goto	u117_21
	goto	u117_20
u117_21:
	goto	i1l16083
u117_20:
	line	85
	
i1l16081:	
;tyw_led.c: 84: {
;tyw_led.c: 85: led_set_io_pp(x, 0);
	clrf	(?_led_set_io_pp)
	movf	(led_matrix_run@x),w
	fcall	_led_set_io_pp
	line	74
	
i1l16083:	
	incf	(led_matrix_run@rowCount),f
	
i1l16085:	
	movlw	(03h)
	subwf	(led_matrix_run@rowCount),w
	skipc
	goto	u118_21
	goto	u118_20
u118_21:
	goto	i1l16073
u118_20:
	line	89
	
i1l16087:	
;tyw_led.c: 87: }
;tyw_led.c: 88: }
;tyw_led.c: 89: row++;
	incf	(led_matrix_run@row),f
	line	90
	
i1l16089:	
;tyw_led.c: 90: if (row == 18)
	movf	(led_matrix_run@row),w
	xorlw	012h
	skipz
	goto	u119_21
	goto	u119_20
u119_21:
	goto	i1l9960
u119_20:
	line	92
	
i1l16091:	
;tyw_led.c: 91: {
;tyw_led.c: 92: row = 0;
	clrf	(led_matrix_run@row)
	line	96
	
i1l9960:	
	return
	opt stack 0
GLOBAL	__end_of_led_matrix_run
	__end_of_led_matrix_run:
;; =============== function _led_matrix_run ends ============

	signat	_led_matrix_run,88
	global	i1___bmul
psect	text721,local,class=CODE,delta=2
global __ptext721
__ptext721:

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
psect	text721
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
	
i1l16373:	
	clrf	(i1___bmul@product)
	line	7
	
i1l16375:	
	btfss	(i1___bmul@multiplier),(0)&7
	goto	u152_21
	goto	u152_20
u152_21:
	goto	i1l16379
u152_20:
	line	8
	
i1l16377:	
	movf	(i1___bmul@multiplicand),w
	addwf	(i1___bmul@product),f
	line	9
	
i1l16379:	
	clrc
	rlf	(i1___bmul@multiplicand),f
	line	10
	
i1l16381:	
	clrc
	rrf	(i1___bmul@multiplier),f
	line	11
	
i1l16383:	
	movf	(i1___bmul@multiplier),f
	skipz
	goto	u153_21
	goto	u153_20
u153_21:
	goto	i1l16375
u153_20:
	line	12
	
i1l16385:	
	movf	(i1___bmul@product),w
	line	13
	
i1l14303:	
	return
	opt stack 0
GLOBAL	__end_ofi1___bmul
	__end_ofi1___bmul:
;; =============== function i1___bmul ends ============

	signat	i1___bmul,89
	global	_led_set_io_pp
psect	text722,local,class=CODE,delta=2
global __ptext722
__ptext722:

;; *************** function _led_set_io_pp *****************
;; Defined at:
;;		line 216 in file "D:\xx\P2\code\tyw_led.c"
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
psect	text722
	file	"D:\xx\P2\code\tyw_led.c"
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
	
i1l16133:	
;tyw_led.c: 217: switch(io_num)
	goto	i1l16185
	line	220
	
i1l16135:	
;tyw_led.c: 220: {PBMOD32= PBMOD32 & 0x0F | 0x60; if(type)PBD3=1;else PBD3=0;};
	bsf	status, 5	;RP0=1, select bank1
	movf	(141)^080h,w
	andlw	0Fh
	iorlw	060h
	movwf	(141)^080h	;volatile
	
i1l16137:	
	movf	(led_set_io_pp@type),w
	skipz
	goto	u121_20
	goto	i1l9979
u121_20:
	
i1l16139:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(51/8),(51)&7
	goto	i1l10004
	
i1l9979:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(51/8),(51)&7
	goto	i1l10004
	line	224
	
i1l16141:	
;tyw_led.c: 224: {PDMOD10= PDMOD10 & 0xF0 | 0x06; if(type)PDD0=1;else PDD0=0;};
	bsf	status, 5	;RP0=1, select bank1
	movf	(144)^080h,w
	andlw	0F0h
	iorlw	06h
	movwf	(144)^080h	;volatile
	
i1l16143:	
	movf	(led_set_io_pp@type),w
	skipz
	goto	u122_20
	goto	i1l9983
u122_20:
	
i1l16145:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(56/8),(56)&7
	goto	i1l10004
	
i1l9983:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(56/8),(56)&7
	goto	i1l10004
	line	227
	
i1l16147:	
;tyw_led.c: 227: {PDMOD10= PDMOD10 & 0x0F | 0x60; if(type)PDD1=1;else PDD1=0;};
	bsf	status, 5	;RP0=1, select bank1
	movf	(144)^080h,w
	andlw	0Fh
	iorlw	060h
	movwf	(144)^080h	;volatile
	
i1l16149:	
	movf	(led_set_io_pp@type),w
	skipz
	goto	u123_20
	goto	i1l9986
u123_20:
	
i1l16151:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(57/8),(57)&7
	goto	i1l10004
	
i1l9986:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(57/8),(57)&7
	goto	i1l10004
	line	230
	
i1l16153:	
;tyw_led.c: 230: {PBMOD54= PBMOD54 & 0xF0 | 0x06; if(type)PBD4=1;else PBD4=0;};
	bsf	status, 5	;RP0=1, select bank1
	movf	(142)^080h,w
	andlw	0F0h
	iorlw	06h
	movwf	(142)^080h	;volatile
	
i1l16155:	
	movf	(led_set_io_pp@type),w
	skipz
	goto	u124_20
	goto	i1l9989
u124_20:
	
i1l16157:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(52/8),(52)&7
	goto	i1l10004
	
i1l9989:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(52/8),(52)&7
	goto	i1l10004
	line	233
	
i1l16159:	
;tyw_led.c: 233: {PBMOD54= PBMOD54 & 0x0F | 0x60; if(type)PBD5=1;else PBD5=0;};
	bsf	status, 5	;RP0=1, select bank1
	movf	(142)^080h,w
	andlw	0Fh
	iorlw	060h
	movwf	(142)^080h	;volatile
	
i1l16161:	
	movf	(led_set_io_pp@type),w
	skipz
	goto	u125_20
	goto	i1l9992
u125_20:
	
i1l16163:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(53/8),(53)&7
	goto	i1l10004
	
i1l9992:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(53/8),(53)&7
	goto	i1l10004
	line	236
	
i1l16165:	
;tyw_led.c: 236: {PBMOD76= PBMOD76 & 0xF0 | 0x06; if(type)PBD6=1;else PBD6=0;};
	bsf	status, 5	;RP0=1, select bank1
	movf	(143)^080h,w
	andlw	0F0h
	iorlw	06h
	movwf	(143)^080h	;volatile
	
i1l16167:	
	movf	(led_set_io_pp@type),w
	skipz
	goto	u126_20
	goto	i1l9995
u126_20:
	
i1l16169:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(54/8),(54)&7
	goto	i1l10004
	
i1l9995:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(54/8),(54)&7
	goto	i1l10004
	line	239
	
i1l16171:	
;tyw_led.c: 239: {PBMOD76= PBMOD76 & 0x0F | 0x60; if(type)PBD7=1;else PBD7=0;};
	bsf	status, 5	;RP0=1, select bank1
	movf	(143)^080h,w
	andlw	0Fh
	iorlw	060h
	movwf	(143)^080h	;volatile
	
i1l16173:	
	movf	(led_set_io_pp@type),w
	skipz
	goto	u127_20
	goto	i1l9998
u127_20:
	
i1l16175:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(55/8),(55)&7
	goto	i1l10004
	
i1l9998:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(55/8),(55)&7
	goto	i1l10004
	line	242
	
i1l16177:	
;tyw_led.c: 242: {PBMOD10= PBMOD10 & 0xF0 | 0x06; if(type)PBD0=1;else PBD0=0;};
	bsf	status, 5	;RP0=1, select bank1
	movf	(140)^080h,w
	andlw	0F0h
	iorlw	06h
	movwf	(140)^080h	;volatile
	
i1l16179:	
	movf	(led_set_io_pp@type),w
	skipz
	goto	u128_20
	goto	i1l10001
u128_20:
	
i1l16181:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(48/8),(48)&7
	goto	i1l10004
	
i1l10001:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(48/8),(48)&7
	goto	i1l10004
	line	217
	
i1l16185:	
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
goto i1l10004
movlw high(i1S16767)
movwf pclath
	clrc
	rlf fsr,w
	addlw low(i1S16767)
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
i1S16767:
	ljmp	i1l16135
	ljmp	i1l16141
	ljmp	i1l16147
	ljmp	i1l16153
	ljmp	i1l16159
	ljmp	i1l16165
	ljmp	i1l16171
	ljmp	i1l16177
psect	text722

	line	248
	
i1l10004:	
	return
	opt stack 0
GLOBAL	__end_of_led_set_io_pp
	__end_of_led_set_io_pp:
;; =============== function _led_set_io_pp ends ============

	signat	_led_set_io_pp,8312
	global	_led_set_io_od
psect	text723,local,class=CODE,delta=2
global __ptext723
__ptext723:

;; *************** function _led_set_io_od *****************
;; Defined at:
;;		line 181 in file "D:\xx\P2\code\tyw_led.c"
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
psect	text723
	file	"D:\xx\P2\code\tyw_led.c"
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
	
i1l16107:	
;tyw_led.c: 182: switch(io_num)
	goto	i1l16127
	line	184
;tyw_led.c: 183: {
;tyw_led.c: 184: case 0:
	
i1l9964:	
	line	185
;tyw_led.c: 185: {PBD3=1;PBMOD32= PBMOD32 & 0x0F | 0x10; };
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7
	
i1l16109:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(141)^080h,w
	andlw	0Fh
	iorlw	010h
	movwf	(141)^080h	;volatile
	line	186
;tyw_led.c: 186: break;
	goto	i1l9974
	line	187
;tyw_led.c: 187: case 1:
	
i1l9966:	
	line	188
;tyw_led.c: 188: {PDD0=1; PDMOD10= PDMOD10 & 0xF0 | 0x01; };
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	
i1l16111:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(144)^080h,w
	andlw	0F0h
	iorlw	01h
	movwf	(144)^080h	;volatile
	line	189
;tyw_led.c: 189: break;
	goto	i1l9974
	line	190
;tyw_led.c: 190: case 2:
	
i1l9967:	
	line	191
;tyw_led.c: 191: {PDD1=1; PDMOD10= PDMOD10 & 0x0F | 0x10; };
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	
i1l16113:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(144)^080h,w
	andlw	0Fh
	iorlw	010h
	movwf	(144)^080h	;volatile
	line	192
;tyw_led.c: 192: break;
	goto	i1l9974
	line	193
;tyw_led.c: 193: case 3:
	
i1l9968:	
	line	194
;tyw_led.c: 194: {PBD4=1; PBMOD54= PBMOD54 & 0xF0 | 0x01; };
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7
	
i1l16115:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(142)^080h,w
	andlw	0F0h
	iorlw	01h
	movwf	(142)^080h	;volatile
	line	195
;tyw_led.c: 195: break;
	goto	i1l9974
	line	196
;tyw_led.c: 196: case 4:
	
i1l9969:	
	line	197
;tyw_led.c: 197: {PBD5=1; PBMOD54= PBMOD54 & 0x0F| 0x10; };
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(53/8),(53)&7
	
i1l16117:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(142)^080h,w
	andlw	0Fh
	iorlw	010h
	movwf	(142)^080h	;volatile
	line	198
;tyw_led.c: 198: break;
	goto	i1l9974
	line	199
;tyw_led.c: 199: case 5:
	
i1l9970:	
	line	200
;tyw_led.c: 200: {PBD6=1; PBMOD76= PBMOD76 & 0xF0 | 0x01; };
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7
	
i1l16119:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(143)^080h,w
	andlw	0F0h
	iorlw	01h
	movwf	(143)^080h	;volatile
	line	201
;tyw_led.c: 201: break;
	goto	i1l9974
	line	202
;tyw_led.c: 202: case 6:
	
i1l9971:	
	line	203
;tyw_led.c: 203: {PBD7=1; PBMOD76= PBMOD76 & 0x0F | 0x10; };
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7
	
i1l16121:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(143)^080h,w
	andlw	0Fh
	iorlw	010h
	movwf	(143)^080h	;volatile
	line	204
;tyw_led.c: 204: break;
	goto	i1l9974
	line	205
;tyw_led.c: 205: case 7:
	
i1l9972:	
	line	206
;tyw_led.c: 206: {PBD0=1; PBMOD10= PBMOD10 & 0xF0 | 0x01; };
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	
i1l16123:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(140)^080h,w
	andlw	0F0h
	iorlw	01h
	movwf	(140)^080h	;volatile
	line	207
;tyw_led.c: 207: break;
	goto	i1l9974
	line	182
	
i1l16127:	
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
goto i1l9974
movlw high(i1S16769)
movwf pclath
	clrc
	rlf fsr,w
	addlw low(i1S16769)
	movwf pc
psect	swtext2,local,class=CONST,delta=2
global __pswtext2
__pswtext2:
i1S16769:
	ljmp	i1l9964
	ljmp	i1l9966
	ljmp	i1l9967
	ljmp	i1l9968
	ljmp	i1l9969
	ljmp	i1l9970
	ljmp	i1l9971
	ljmp	i1l9972
psect	text723

	line	212
	
i1l9974:	
	return
	opt stack 0
GLOBAL	__end_of_led_set_io_od
	__end_of_led_set_io_od:
;; =============== function _led_set_io_od ends ============

	signat	_led_set_io_od,4216
psect	text724,local,class=CODE,delta=2
global __ptext724
__ptext724:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
