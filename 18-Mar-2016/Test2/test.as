opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	16F877A
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
	FNCALL	_main,_Setup_IOports
	FNCALL	_main,_atod_init
	FNCALL	_main,_lcd_init
	FNCALL	_main,_clr_display
	FNCALL	_main,_Serial_Init
	FNCALL	_main,_Timer1_Init
	FNCALL	_main,_enableInterrupt
	FNCALL	_main,_printf
	FNCALL	_main,_position
	FNCALL	_main,_Serial_Print
	FNCALL	_main,_bdnu_unid
	FNCALL	_printf,_putch
	FNCALL	_printf,_isdigit
	FNCALL	_printf,___wmul
	FNCALL	_printf,___bmul
	FNCALL	_printf,___lwdiv
	FNCALL	_printf,___lwmod
	FNCALL	_position,_lcd_add
	FNCALL	_clr_display,_lcd_add
	FNCALL	_putch,_lcd_add
	FNROOT	_main
	FNCALL	_isr,i1_lcd_init
	FNCALL	_isr,i1_clr_display
	FNCALL	_isr,i1___lwmod
	FNCALL	i1_clr_display,i1_lcd_add
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_bed_nu
	global	_i
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\Automated Solar Panel Orientation Setter.c"
	line	19

;initializer for _bed_nu
	retlw	01h
	line	20

;initializer for _i
	retlw	01h
	global	_octpowers
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
	line	365
_octpowers:
	retlw	01h
	retlw	0

	retlw	08h
	retlw	0

	retlw	040h
	retlw	0

	retlw	0
	retlw	02h

	retlw	0
	retlw	010h

	retlw	0
	retlw	080h

	global	_dpowers
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
	line	350
_dpowers:
	retlw	01h
	retlw	0

	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	retlw	010h
	retlw	027h

	global	_hexpowers
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
	line	358
_hexpowers:
	retlw	01h
	retlw	0

	retlw	010h
	retlw	0

	retlw	0
	retlw	01h

	retlw	0
	retlw	010h

	global	_octpowers
	global	_dpowers
	global	_hexpowers
	global	_temperature
	global	_HeartRate
	global	_HeartRateCount
	global	_analogReadVal
	global	_heartRate
	global	_hour
	global	_ldr1
	global	_ldr2
	global	_minute
	global	_msecond
	global	_second
	global	_j
	global	_lcd_bus
	global	_lcd_data
	global	_lcd_data_high
	global	_state
	global	_v
	global	_w
	global	_wtmp
	global	_x
	global	_y
	global	_z
	global	_lcd_data_low
	global	_bit0
	global	_bit1
	global	_bit2
	global	_bit3
	global	_bit4
	global	_bit5
	global	_bit6
	global	_bit7
	global	_nop
	global	_buffer
	global	_rc
	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_PORTE
_PORTE	set	9
	global	_RCREG
_RCREG	set	26
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_TXREG
_TXREG	set	25
	global	_ADDEN
_ADDEN	set	195
	global	_ADON
_ADON	set	248
	global	_CARRY
_CARRY	set	24
	global	_CREN
_CREN	set	196
	global	_FERR
_FERR	set	194
	global	_GIE
_GIE	set	95
	global	_GO
_GO	set	250
	global	_INTE
_INTE	set	92
	global	_OERR
_OERR	set	193
	global	_PEIE
_PEIE	set	94
	global	_RBIE
_RBIE	set	91
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RC3
_RC3	set	59
	global	_RCIF
_RCIF	set	101
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_RD6
_RD6	set	70
	global	_RX9
_RX9	set	198
	global	_SPEN
_SPEN	set	199
	global	_T0IE
_T0IE	set	93
	global	_T1CKPS0
_T1CKPS0	set	132
	global	_T1CKPS1
_T1CKPS1	set	133
	global	_T1OSCEN
_T1OSCEN	set	131
	global	_TMR1CS
_TMR1CS	set	129
	global	_TMR1IF
_TMR1IF	set	96
	global	_TMR1ON
_TMR1ON	set	128
	global	_TXIF
_TXIF	set	100
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_SPBRG
_SPBRG	set	153
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_ADIE
_ADIE	set	1126
	global	_BCLIE
_BCLIE	set	1131
	global	_BRGH
_BRGH	set	1218
	global	_CCP1IE
_CCP1IE	set	1122
	global	_CCP2IE
_CCP2IE	set	1128
	global	_EEIE
_EEIE	set	1132
	global	_PSPIE
_PSPIE	set	1127
	global	_RCIE
_RCIE	set	1125
	global	_SSPIE
_SSPIE	set	1123
	global	_SYNC
_SYNC	set	1220
	global	_TMR1IE
_TMR1IE	set	1120
	global	_TMR2IE
_TMR2IE	set	1121
	global	_TX9
_TX9	set	1222
	global	_TXEN
_TXEN	set	1221
	global	_TXIE
_TXIE	set	1124
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
	
STR_9:	
	retlw	83	;'S'
	retlw	119	;'w'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	99	;'c'
	retlw	104	;'h'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	77	;'M'
	retlw	111	;'o'
	retlw	100	;'d'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_4:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	83	;'S'
	retlw	121	;'y'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_3:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	77	;'M'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_2:	
	retlw	32	;' '
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	72	;'H'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	82	;'R'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_1:	
	retlw	66	;'B'
	retlw	111	;'o'
	retlw	100	;'d'
	retlw	121	;'y'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	112	;'p'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	117	;'u'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_10:	
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	50	;'2'
	retlw	51	;'3'
	retlw	52	;'4'
	retlw	53	;'5'
	retlw	54	;'6'
	retlw	55	;'7'
	retlw	56	;'8'
	retlw	57	;'9'
	retlw	65	;'A'
	retlw	66	;'B'
	retlw	67	;'C'
	retlw	68	;'D'
	retlw	69	;'E'
	retlw	70	;'F'
	retlw	0
psect	strings
	
STR_11:	
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	50	;'2'
	retlw	51	;'3'
	retlw	52	;'4'
	retlw	53	;'5'
	retlw	54	;'6'
	retlw	55	;'7'
	retlw	56	;'8'
	retlw	57	;'9'
	retlw	97	;'a'
	retlw	98	;'b'
	retlw	99	;'c'
	retlw	100	;'d'
	retlw	101	;'e'
	retlw	102	;'f'
	retlw	0
psect	strings
	
STR_5:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	102	;'f'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_6:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	80	;'P'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_8:	
	retlw	84	;'T'
	retlw	58	;':'
	retlw	32	;' '
	retlw	32	;' '
	retlw	56	;'8'
	retlw	52	;'4'
	retlw	70	;'F'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	76	;'L'
	retlw	111	;'o'
	retlw	119	;'w'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_7:	
	retlw	72	;'H'
	retlw	58	;':'
	retlw	32	;' '
	retlw	32	;' '
	retlw	54	;'6'
	retlw	50	;'2'
	retlw	80	;'P'
	retlw	80	;'P'
	retlw	77	;'M'
	retlw	32	;' '
	retlw	76	;'L'
	retlw	111	;'o'
	retlw	119	;'w'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	file	"test.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bitbssCOMMON,class=COMMON,bit,space=1
global __pbitbssCOMMON
__pbitbssCOMMON:
_bit0:
       ds      1

_bit1:
       ds      1

_bit2:
       ds      1

_bit3:
       ds      1

_bit4:
       ds      1

_bit5:
       ds      1

_bit6:
       ds      1

_bit7:
       ds      1

_nop:
       ds      1

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_lcd_data_low:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_temperature:
       ds      3

_HeartRate:
       ds      2

_HeartRateCount:
       ds      2

_analogReadVal:
       ds      2

_heartRate:
       ds      2

_hour:
       ds      2

_ldr1:
       ds      2

_ldr2:
       ds      2

_minute:
       ds      2

_msecond:
       ds      2

_second:
       ds      2

_j:
       ds      1

_lcd_bus:
       ds      1

_lcd_data:
       ds      1

_lcd_data_high:
       ds      1

_state:
       ds      1

_v:
       ds      1

_w:
       ds      1

_wtmp:
       ds      1

_x:
       ds      1

_y:
       ds      1

_z:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\Automated Solar Panel Orientation Setter.c"
	line	19
_bed_nu:
       ds      1

psect	dataBANK0
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\Automated Solar Panel Orientation Setter.c"
	line	20
_i:
       ds      1

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_buffer:
       ds      20

_rc:
       ds      9

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

; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
	clrf	((__pbitbssCOMMON/8)+1)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+022h)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+01Dh)
	fcall	clear_ram
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_lcd_add
?_lcd_add:	; 0 bytes @ 0x0
	global	?_bdnu_unid
?_bdnu_unid:	; 0 bytes @ 0x0
	global	?_isdigit
?_isdigit:	; 1 bit 
	global	?_Setup_IOports
?_Setup_IOports:	; 0 bytes @ 0x0
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_putch
?_putch:	; 0 bytes @ 0x0
	global	?_clr_display
?_clr_display:	; 0 bytes @ 0x0
	global	?_atod_init
?_atod_init:	; 0 bytes @ 0x0
	global	?_Serial_Init
?_Serial_Init:	; 0 bytes @ 0x0
	global	?_Serial_Print
?_Serial_Print:	; 1 bit 
	global	?_enableInterrupt
?_enableInterrupt:	; 0 bytes @ 0x0
	global	?_Timer1_Init
?_Timer1_Init:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_isr
?_isr:	; 0 bytes @ 0x0
	global	?i1_lcd_init
?i1_lcd_init:	; 0 bytes @ 0x0
	global	??i1_lcd_init
??i1_lcd_init:	; 0 bytes @ 0x0
	global	?i1_clr_display
?i1_clr_display:	; 0 bytes @ 0x0
	global	?i1_lcd_add
?i1_lcd_add:	; 0 bytes @ 0x0
	global	??i1_lcd_add
??i1_lcd_add:	; 0 bytes @ 0x0
	global	?i1___lwmod
?i1___lwmod:	; 2 bytes @ 0x0
	global	i1lcd_init@DelayLCD
i1lcd_init@DelayLCD:	; 2 bytes @ 0x0
	global	i1___lwmod@divisor
i1___lwmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	??i1_clr_display
??i1_clr_display:	; 0 bytes @ 0x2
	global	i1___lwmod@dividend
i1___lwmod@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??i1___lwmod
??i1___lwmod:	; 0 bytes @ 0x4
	ds	1
	global	i1___lwmod@counter
i1___lwmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	??_isr
??_isr:	; 0 bytes @ 0x6
	ds	5
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_lcd_add
??_lcd_add:	; 0 bytes @ 0x0
	global	??_bdnu_unid
??_bdnu_unid:	; 0 bytes @ 0x0
	global	??_isdigit
??_isdigit:	; 0 bytes @ 0x0
	global	??_Setup_IOports
??_Setup_IOports:	; 0 bytes @ 0x0
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x0
	global	??_atod_init
??_atod_init:	; 0 bytes @ 0x0
	global	??_Serial_Init
??_Serial_Init:	; 0 bytes @ 0x0
	global	??_Serial_Print
??_Serial_Print:	; 0 bytes @ 0x0
	global	??_enableInterrupt
??_enableInterrupt:	; 0 bytes @ 0x0
	global	??_Timer1_Init
??_Timer1_Init:	; 0 bytes @ 0x0
	global	?___bmul
?___bmul:	; 1 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	_isdigit$1750
_isdigit$1750:	; 1 bytes @ 0x0
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x0
	global	lcd_init@DelayLCD
lcd_init@DelayLCD:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	ds	1
	global	??___bmul
??___bmul:	; 0 bytes @ 0x1
	global	Serial_Print@a
Serial_Print@a:	; 1 bytes @ 0x1
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x1
	ds	1
	global	??_putch
??_putch:	; 0 bytes @ 0x2
	global	??_clr_display
??_clr_display:	; 0 bytes @ 0x2
	global	?_position
?_position:	; 0 bytes @ 0x2
	global	position@collum
position@collum:	; 1 bytes @ 0x2
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_position
??_position:	; 0 bytes @ 0x3
	global	putch@print_value
putch@print_value:	; 1 bytes @ 0x3
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x3
	ds	1
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
	global	position@post
position@post:	; 1 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
	global	position@row
position@row:	; 1 bytes @ 0x6
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x8
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x8
	ds	2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0xA
	ds	2
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0xC
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xD
	ds	1
	global	?_printf
?_printf:	; 2 bytes @ 0xE
	ds	2
	global	??_printf
??_printf:	; 0 bytes @ 0x10
	ds	3
	global	_printf$1391
_printf$1391:	; 2 bytes @ 0x13
	ds	2
	global	_printf$1392
_printf$1392:	; 2 bytes @ 0x15
	ds	2
	global	_printf$1395
_printf$1395:	; 1 bytes @ 0x17
	ds	1
	global	printf@ap
printf@ap:	; 1 bytes @ 0x18
	ds	1
	global	printf@f
printf@f:	; 1 bytes @ 0x19
	ds	1
	global	printf@prec
printf@prec:	; 1 bytes @ 0x1A
	ds	1
	global	printf@width
printf@width:	; 2 bytes @ 0x1B
	ds	2
	global	printf@_val
printf@_val:	; 3 bytes @ 0x1D
	ds	3
	global	printf@c
printf@c:	; 1 bytes @ 0x20
	ds	1
	global	printf@flag
printf@flag:	; 2 bytes @ 0x21
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x23
	ds	3
;;Data sizes: Strings 193, constant 30, data 2, bss 64, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     11      14
;; BANK0           80     38      74
;; BANK1           80      0      29
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?i1___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; printf$1395	PTR const unsigned char  size(1) Largest target is 17
;;		 -> STR_11(CODE[17]), STR_10(CODE[17]), 
;;
;; printf@_val._cp	PTR const unsigned char  size(1) Largest target is 1
;;		 -> printf@c(BANK0[1]), 
;;
;; printf@f	PTR const unsigned char  size(1) Largest target is 18
;;		 -> STR_8(CODE[17]), STR_7(CODE[17]), STR_6(CODE[17]), STR_5(CODE[17]), 
;;		 -> STR_4(CODE[18]), STR_3(CODE[18]), STR_2(CODE[18]), STR_1(CODE[18]), 
;;
;; ?_printf	int  size(1) Largest target is 0
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_printf(BANK0[2]), 
;;
;; S1378$_cp	PTR const unsigned char  size(1) Largest target is 1
;;		 -> printf@c(BANK0[1]), 
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 1
;;		 -> printf@c(BANK0[1]), 
;;
;; Serial_Print@a	PTR unsigned char  size(1) Largest target is 19
;;		 -> STR_9(CODE[19]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _isr in COMMON
;;
;;   _isr->i1___lwmod
;;   i1_clr_display->i1_lcd_add
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_printf
;;   _printf->___lwmod
;;   _position->_lcd_add
;;   _clr_display->_lcd_add
;;   _putch->_lcd_add
;;   ___lwmod->___lwdiv
;;
;; Critical Paths under _isr in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _isr in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _isr in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _isr in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 3     3      0    3398
;;                                             35 BANK0      3     3      0
;;                      _Setup_IOports
;;                          _atod_init
;;                           _lcd_init
;;                        _clr_display
;;                        _Serial_Init
;;                        _Timer1_Init
;;                    _enableInterrupt
;;                             _printf
;;                           _position
;;                       _Serial_Print
;;                          _bdnu_unid
;; ---------------------------------------------------------------------------------
;; (1) _printf                                              21    19      2    2986
;;                                             14 BANK0     21    19      2
;;                              _putch
;;                            _isdigit
;;                             ___wmul
;;                             ___bmul
;;                            ___lwdiv
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (1) _position                                             5     4      1     115
;;                                              2 BANK0      5     4      1
;;                            _lcd_add
;; ---------------------------------------------------------------------------------
;; (1) _clr_display                                          2     2      0       0
;;                                              2 BANK0      2     2      0
;;                            _lcd_add
;; ---------------------------------------------------------------------------------
;; (2) _putch                                                2     2      0      22
;;                                              2 BANK0      2     2      0
;;                            _lcd_add
;; ---------------------------------------------------------------------------------
;; (1) _bdnu_unid                                            1     1      0       0
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _Serial_Print                                         2     2      0      67
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _Serial_Init                                          3     3      0       0
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (2) _lcd_add                                              2     2      0       0
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (2) ___lwmod                                              6     2      4     159
;;                                              8 BANK0      6     2      4
;;                            ___lwdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              8     4      4     162
;;                                              0 BANK0      8     4      4
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4      92
;;                                              0 BANK0      6     2      4
;; ---------------------------------------------------------------------------------
;; (2) ___bmul                                               4     3      1      92
;;                                              0 BANK0      4     3      1
;; ---------------------------------------------------------------------------------
;; (2) _isdigit                                              2     2      0      68
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _Timer1_Init                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _enableInterrupt                                      0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _atod_init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             2     2      0     230
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _Setup_IOports                                        0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (4) _isr                                                  5     5      0    1271
;;                                              6 COMMON     5     5      0
;;                         i1_lcd_init
;;                      i1_clr_display
;;                          i1___lwmod
;; ---------------------------------------------------------------------------------
;; (5) i1_clr_display                                        2     2      0       0
;;                                              2 COMMON     2     2      0
;;                          i1_lcd_add
;; ---------------------------------------------------------------------------------
;; (6) i1_lcd_add                                            2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (5) i1___lwmod                                            6     2      4     521
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (5) i1_lcd_init                                           2     2      0     750
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 6
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Setup_IOports
;;   _atod_init
;;   _lcd_init
;;   _clr_display
;;     _lcd_add
;;   _Serial_Init
;;   _Timer1_Init
;;   _enableInterrupt
;;   _printf
;;     _putch
;;       _lcd_add
;;     _isdigit
;;     ___wmul
;;     ___bmul
;;     ___lwdiv
;;     ___lwmod
;;       ___lwdiv (ARG)
;;   _position
;;     _lcd_add
;;   _Serial_Print
;;   _bdnu_unid
;;
;; _isr (ROOT)
;;   i1_lcd_init
;;   i1_clr_display
;;     i1_lcd_add
;;   i1___lwmod
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0      1D       7       36.3%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      7E      12        0.0%
;;ABS                  0      0      75       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       9       2        0.0%
;;BANK0               50     26      4A       5       92.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      B       E       1      100.0%
;;BITCOMMON            E      0       2       0       14.3%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 62 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\Automated Solar Panel Orientation Setter.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Setup_IOports
;;		_atod_init
;;		_lcd_init
;;		_clr_display
;;		_Serial_Init
;;		_Timer1_Init
;;		_enableInterrupt
;;		_printf
;;		_position
;;		_Serial_Print
;;		_bdnu_unid
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\Automated Solar Panel Orientation Setter.c"
	line	62
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	63
	
l5283:	
;Automated Solar Panel Orientation Setter.c: 63: Setup_IOports();
	fcall	_Setup_IOports
	line	66
;Automated Solar Panel Orientation Setter.c: 66: atod_init();
	fcall	_atod_init
	line	70
;Automated Solar Panel Orientation Setter.c: 70: lcd_init();
	fcall	_lcd_init
	line	71
;Automated Solar Panel Orientation Setter.c: 71: clr_display();
	fcall	_clr_display
	line	73
;Automated Solar Panel Orientation Setter.c: 73: Serial_Init();
	fcall	_Serial_Init
	line	74
;Automated Solar Panel Orientation Setter.c: 74: Timer1_Init();
	fcall	_Timer1_Init
	line	75
	
l5285:	
;Automated Solar Panel Orientation Setter.c: 75: enableInterrupt();
	fcall	_enableInterrupt
	line	79
	
l5287:	
;Automated Solar Panel Orientation Setter.c: 79: lcd_init();
	fcall	_lcd_init
	line	80
	
l5289:	
;Automated Solar Panel Orientation Setter.c: 80: clr_display();
	fcall	_clr_display
	line	82
	
l5291:	
;Automated Solar Panel Orientation Setter.c: 82: printf("Body Temperature ");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_printf
	line	83
	
l5293:	
;Automated Solar Panel Orientation Setter.c: 83: position(2,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_position)
	bsf	status,0
	rlf	(?_position),f
	movlw	(02h)
	fcall	_position
	line	84
	
l5295:	
;Automated Solar Panel Orientation Setter.c: 84: printf(" and Heart Rate  ");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_printf
	line	85
	
l5297:	
;Automated Solar Panel Orientation Setter.c: 85: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u7277:
	decfsz	((??_main+0)+0),f
	goto	u7277
	decfsz	((??_main+0)+0+1),f
	goto	u7277
	decfsz	((??_main+0)+0+2),f
	goto	u7277
	nop2
opt asmopt_on

	line	86
;Automated Solar Panel Orientation Setter.c: 86: position(1,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_position)
	bsf	status,0
	rlf	(?_position),f
	movlw	(01h)
	fcall	_position
	line	87
	
l5299:	
;Automated Solar Panel Orientation Setter.c: 87: printf("    Monitoring   ");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_printf
	line	88
	
l5301:	
;Automated Solar Panel Orientation Setter.c: 88: position(2,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_position)
	bsf	status,0
	rlf	(?_position),f
	movlw	(02h)
	fcall	_position
	line	89
;Automated Solar Panel Orientation Setter.c: 89: printf("      System     ");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_printf
	line	90
	
l5303:	
;Automated Solar Panel Orientation Setter.c: 90: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u7287:
	decfsz	((??_main+0)+0),f
	goto	u7287
	decfsz	((??_main+0)+0+1),f
	goto	u7287
	decfsz	((??_main+0)+0+2),f
	goto	u7287
	nop2
opt asmopt_on

	line	91
	
l5305:	
;Automated Solar Panel Orientation Setter.c: 91: position(1,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_position)
	bsf	status,0
	rlf	(?_position),f
	movlw	(01h)
	fcall	_position
	line	92
	
l5307:	
;Automated Solar Panel Orientation Setter.c: 92: printf("       for      ");
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_printf
	line	93
	
l5309:	
;Automated Solar Panel Orientation Setter.c: 93: position(2,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_position)
	bsf	status,0
	rlf	(?_position),f
	movlw	(02h)
	fcall	_position
	line	94
	
l5311:	
;Automated Solar Panel Orientation Setter.c: 94: printf("    Patients    ");
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_printf
	line	95
	
l5313:	
;Automated Solar Panel Orientation Setter.c: 95: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u7297:
	decfsz	((??_main+0)+0),f
	goto	u7297
	decfsz	((??_main+0)+0+1),f
	goto	u7297
	decfsz	((??_main+0)+0+2),f
	goto	u7297
	nop2
opt asmopt_on

	line	96
	
l5315:	
;Automated Solar Panel Orientation Setter.c: 96: position(1,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_position)
	bsf	status,0
	rlf	(?_position),f
	movlw	(01h)
	fcall	_position
	line	97
	
l5317:	
;Automated Solar Panel Orientation Setter.c: 97: printf("H:  62PPM Low   ",HeartRate);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_HeartRate+1),w
	clrf	(?_printf+1)
	addwf	(?_printf+1)
	movf	(_HeartRate),w
	clrf	(?_printf)
	addwf	(?_printf)

	movlw	((STR_7-__stringbase))&0ffh
	fcall	_printf
	line	98
;Automated Solar Panel Orientation Setter.c: 98: position(2,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_position)
	bsf	status,0
	rlf	(?_position),f
	movlw	(02h)
	fcall	_position
	line	99
	
l5319:	
;Automated Solar Panel Orientation Setter.c: 99: printf("T:  84F   Low   ",analogReadVal);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_analogReadVal+1),w
	clrf	(?_printf+1)
	addwf	(?_printf+1)
	movf	(_analogReadVal),w
	clrf	(?_printf)
	addwf	(?_printf)

	movlw	((STR_8-__stringbase))&0ffh
	fcall	_printf
	line	103
	
l5321:	
;Automated Solar Panel Orientation Setter.c: 103: clr_display();
	fcall	_clr_display
	line	104
	
l5323:	
;Automated Solar Panel Orientation Setter.c: 104: state = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_state)
	bsf	status,0
	rlf	(_state),f
	goto	l5335
	line	105
;Automated Solar Panel Orientation Setter.c: 105: while(1){
	
l874:	
	line	106
;Automated Solar Panel Orientation Setter.c: 106: switch (state){
	goto	l5335
	line	111
;Automated Solar Panel Orientation Setter.c: 111: case 1:
	
l876:	
	line	116
	
l5325:	
;Automated Solar Panel Orientation Setter.c: 116: state = 10;
	movlw	(0Ah)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_state)
	line	117
;Automated Solar Panel Orientation Setter.c: 117: break;
	goto	l5335
	line	118
;Automated Solar Panel Orientation Setter.c: 118: case 10 :
	
l878:	
	line	119
;Automated Solar Panel Orientation Setter.c: 119: RC1 = 1;
	bsf	(57/8),(57)&7
	line	120
	
l5327:	
;Automated Solar Panel Orientation Setter.c: 120: Serial_Print( "Switched to Mode 1" );
	movlw	((STR_9-__stringbase))&0ffh
	fcall	_Serial_Print
	line	121
	
l5329:	
;Automated Solar Panel Orientation Setter.c: 121: bdnu_unid();
	fcall	_bdnu_unid
	line	122
	
l5331:	
;Automated Solar Panel Orientation Setter.c: 122: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	123
;Automated Solar Panel Orientation Setter.c: 123: break;
	goto	l5335
	line	126
;Automated Solar Panel Orientation Setter.c: 126: case 2 :
	
l879:	
	line	128
;Automated Solar Panel Orientation Setter.c: 128: break;
	goto	l5335
	line	129
;Automated Solar Panel Orientation Setter.c: 129: case 20 :
	
l880:	
	line	131
;Automated Solar Panel Orientation Setter.c: 131: break;
	goto	l5335
	line	132
;Automated Solar Panel Orientation Setter.c: 132: case 3 :
	
l881:	
	goto	l5335
	line	134
	
l882:	
	line	136
;Automated Solar Panel Orientation Setter.c: 134: case 30 :
;Automated Solar Panel Orientation Setter.c: 136: break;
	goto	l5335
	line	140
	
l5333:	
;Automated Solar Panel Orientation Setter.c: 140: }
	goto	l5335
	line	106
	
l875:	
	
l5335:	
	movf	(_state),w
	; Switch size 1, requested type "space"
; Number of cases is 6, Range of values is 1 to 30
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           19    10 (average)
; direct_byte          101    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l5325
	xorlw	2^1	; case 2
	skipnz
	goto	l5335
	xorlw	3^2	; case 3
	skipnz
	goto	l5335
	xorlw	10^3	; case 10
	skipnz
	goto	l878
	xorlw	20^10	; case 20
	skipnz
	goto	l5335
	xorlw	30^20	; case 30
	skipnz
	goto	l5335
	goto	l5335
	opt asmopt_on

	line	140
	
l877:	
	goto	l5335
	line	141
	
l883:	
	line	105
	goto	l5335
	
l884:	
	line	142
	
l885:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_printf
psect	text637,local,class=CODE,delta=2
global __ptext637
__ptext637:

;; *************** function _printf *****************
;; Defined at:
;;		line 461 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_8(17), STR_7(17), STR_6(17), STR_5(17), 
;;		 -> STR_4(18), STR_3(18), STR_2(18), STR_1(18), 
;; Auto vars:     Size  Location     Type
;;  f               1   25[BANK0 ] PTR const unsigned char 
;;		 -> STR_8(17), STR_7(17), STR_6(17), STR_5(17), 
;;		 -> STR_4(18), STR_3(18), STR_2(18), STR_1(18), 
;;  _val            3   29[BANK0 ] struct .
;;  flag            2   33[BANK0 ] unsigned short 
;;  width           2   27[BANK0 ] int 
;;  c               1   32[BANK0 ] char 
;;  prec            1   26[BANK0 ] char 
;;  ap              1   24[BANK0 ] PTR void [1]
;;		 -> ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2   14[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0      16       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      21       0       0       0
;;Total ram usage:       21 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_putch
;;		_isdigit
;;		___wmul
;;		___bmul
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text637
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	461
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
	opt	stack 2
; Regs used in _printf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;printf@f stored from wreg
	line	537
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printf@f)
	
l4987:	
	movlw	(?_printf)&0ffh
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@ap)
	line	540
	goto	l5281
	
l980:	
	line	542
	
l4989:	
	movf	(printf@c),w
	xorlw	025h
	skipnz
	goto	u6661
	goto	u6660
u6661:
	goto	l4993
u6660:
	line	545
	
l4991:	
	movf	(printf@c),w
	fcall	_putch
	line	546
	goto	l5281
	line	547
	
l981:	
	line	550
	
l4993:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(printf@width)
	clrf	(printf@width+1)
	line	552
	clrf	(printf@flag)
	clrf	(printf@flag+1)
	goto	l5005
	line	554
	
l982:	
	line	555
	goto	l5005
	line	557
	
l984:	
	line	558
	bsf	(printf@flag)+(3/8),(3)&7
	line	559
	
l4995:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@f),f
	line	560
	goto	l5005
	line	564
	
l986:	
	line	565
	bsf	(printf@flag)+(0/8),(0)&7
	line	566
	
l4997:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@f),f
	line	567
	goto	l5005
	line	577
	
l987:	
	line	578
	bsf	(printf@flag)+(11/8),(11)&7
	line	579
	
l4999:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@f),f
	line	580
	goto	l5005
	line	583
	
l988:	
	line	584
	bsf	(printf@flag)+(2/8),(2)&7
	line	585
	
l5001:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@f),f
	line	586
	goto	l5005
	line	588
	
l5003:	
	goto	l990
	line	555
	
l983:	
	
l5005:	
	movf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 32 to 48
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           62    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	32^0	; case 32
	skipnz
	goto	l986
	xorlw	35^32	; case 35
	skipnz
	goto	l987
	xorlw	45^35	; case 45
	skipnz
	goto	l984
	xorlw	48^45	; case 48
	skipnz
	goto	l988
	goto	l990
	opt asmopt_on

	line	588
	
l989:	
	line	589
	goto	l990
	line	590
	
l985:	
	goto	l5005
	
l990:	
	line	597
	btfss	(printf@flag),(3)&7
	goto	u6671
	goto	u6670
u6671:
	goto	l5009
u6670:
	line	598
	
l5007:	
	movlw	low(0FFFBh)
	andwf	(printf@flag),f
	movlw	high(0FFFBh)
	andwf	(printf@flag+1),f
	goto	l5009
	
l991:	
	line	601
	
l5009:	
	movf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u6681
	goto	u6680
u6681:
	goto	l5019
u6680:
	line	602
	
l5011:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(printf@width)
	clrf	(printf@width+1)
	goto	l5013
	line	603
	
l993:	
	line	604
	
l5013:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printf@width+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(printf@width),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(0Ah)
	movwf	0+(?___wmul)+02h
	movlw	high(0Ah)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	addwf	(0+(?___wmul)),w
	movwf	(??_printf+0)+0
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(??_printf+0)+0
	movf	0+(??_printf+0)+0,w
	addlw	low(0FFD0h)
	movwf	(printf@width)
	movf	1+(??_printf+0)+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	movwf	1+(printf@width)
	
l5015:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@f),f
	line	605
	
l5017:	
	movf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u6691
	goto	u6690
u6691:
	goto	l5013
u6690:
	goto	l5027
	
l994:	
	line	607
	goto	l5027
	
l992:	
	
l5019:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	xorlw	02Ah
	skipz
	goto	u6701
	goto	u6700
u6701:
	goto	l5027
u6700:
	line	608
	
l5021:	
	movf	(printf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(printf@width)
	incf	fsr0,f
	movf	indf,w
	movwf	(printf@width+1)
	
l5023:	
	movlw	(02h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@ap),f
	line	609
	
l5025:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@f),f
	goto	l5027
	line	611
	
l996:	
	goto	l5027
	line	614
	
l995:	
	
l5027:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	xorlw	02Eh
	skipz
	goto	u6711
	goto	u6710
u6711:
	goto	l997
u6710:
	line	615
	
l5029:	
	bsf	(printf@flag)+(14/8),(14)&7
	line	616
	
l5031:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@f),f
	line	618
	
l5033:	
	movf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	xorlw	02Ah
	skipz
	goto	u6721
	goto	u6720
u6721:
	goto	l998
u6720:
	line	619
	
l5035:	
	movf	(printf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@prec)
	
l5037:	
	movlw	(02h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@ap),f
	line	620
	
l5039:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@f),f
	line	621
	goto	l5091
	
l998:	
	line	624
	clrf	(printf@prec)
	line	625
	goto	l5045
	
l1001:	
	line	626
	
l5041:	
	movlw	(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(?___bmul)
	movf	(printf@prec),w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_printf+1)+0
	movf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	addwf	0+(??_printf+1)+0,w
	addlw	-48
	movwf	(??_printf+2)+0
	movf	(??_printf+2)+0,w
	movwf	(printf@prec)
	
l5043:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@f),f
	goto	l5045
	
l1000:	
	line	625
	
l5045:	
	movf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u6731
	goto	u6730
u6731:
	goto	l5041
u6730:
	goto	l5091
	
l1002:	
	goto	l5091
	line	627
	
l999:	
	line	628
	goto	l5091
	
l997:	
	line	629
	clrf	(printf@prec)
	goto	l5091
	line	633
	
l1003:	
	line	638
	goto	l5091
	line	640
	
l1005:	
	line	641
	goto	l1109
	line	692
	
l1007:	
	line	694
	bsf	(printf@flag)+(6/8),(6)&7
	line	696
	goto	l5093
	line	700
	
l1009:	
	goto	l5093
	line	701
	
l1010:	
	line	702
	goto	l5093
	line	715
	
l1011:	
	line	717
	bsf	(printf@flag)+(5/8),(5)&7
	line	721
	
l1012:	
	line	724
	bsf	(printf@flag)+(7/8),(7)&7
	line	726
	goto	l5093
	line	753
	
l1013:	
	line	756
	
l5047:	
	movf	(printf@prec),w
	skipz
	goto	u6740
	goto	l5053
u6740:
	
l5049:	
	movf	(printf@prec),w
	movwf	(??_printf+0)+0
	clrf	(??_printf+0)+0+1
	btfsc	(??_printf+0)+0,7
	decf	(??_printf+0)+0+1,f
	movf	1+(printf@_val)+01h,w
	subwf	1+(??_printf+0)+0,w
	skipz
	goto	u6755
	movf	0+(printf@_val)+01h,w
	subwf	0+(??_printf+0)+0,w
u6755:
	skipnc
	goto	u6751
	goto	u6750
u6751:
	goto	l5053
u6750:
	line	757
	
l5051:	
	movf	(printf@prec),w
	movwf	0+(printf@_val)+01h
	clrf	1+(printf@_val)+01h
	btfsc	0+(printf@_val)+01h,7
	decf	1+(printf@_val)+01h,f
	goto	l5053
	
l1014:	
	line	760
	
l5053:	
	movf	(printf@width+1),w
	subwf	1+(printf@_val)+01h,w
	skipz
	goto	u6765
	movf	(printf@width),w
	subwf	0+(printf@_val)+01h,w
u6765:
	skipnc
	goto	u6761
	goto	u6760
u6761:
	goto	l5057
u6760:
	line	761
	
l5055:	
	movf	0+(printf@_val)+01h,w
	subwf	(printf@width),f
	movf	1+(printf@_val)+01h,w
	skipc
	decf	(printf@width+1),f
	subwf	(printf@width+1),f
	goto	l5059
	line	762
	
l1015:	
	line	763
	
l5057:	
	clrf	(printf@width)
	clrf	(printf@width+1)
	goto	l5059
	
l1016:	
	line	765
	
l5059:	
	btfsc	(printf@flag),(3)&7
	goto	u6771
	goto	u6770
u6771:
	goto	l5071
u6770:
	goto	l5065
	line	767
	
l5061:	
	goto	l5065
	
l1019:	
	line	768
	
l5063:	
	movlw	(020h)
	fcall	_putch
	goto	l5065
	
l1018:	
	line	767
	
l5065:	
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(printf@width),f
	skipnc
	incf	(printf@width+1),f
	movlw	high(-1)
	addwf	(printf@width+1),f
	movlw	high(-1)
	xorwf	((printf@width+1)),w
	skipz
	goto	u6785
	movlw	low(-1)
	xorwf	((printf@width)),w
u6785:

	skipz
	goto	u6781
	goto	u6780
u6781:
	goto	l5063
u6780:
	goto	l5071
	
l1020:	
	goto	l5071
	line	768
	
l1017:	
	line	770
	goto	l5071
	
l1022:	
	line	771
	
l5067:	
	movf	(printf@_val),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_putch
	
l5069:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@_val),f
	goto	l5071
	
l1021:	
	line	770
	
l5071:	
	movlw	low(01h)
	subwf	0+(printf@_val)+01h,f
	movlw	high(01h)
	skipc
	decf	1+(printf@_val)+01h,f
	subwf	1+(printf@_val)+01h,f
	movlw	high(0FFFFh)
	xorwf	(1+(printf@_val)+01h),w
	skipz
	goto	u6795
	movlw	low(0FFFFh)
	xorwf	(0+(printf@_val)+01h),w
u6795:

	skipz
	goto	u6791
	goto	u6790
u6791:
	goto	l5067
u6790:
	
l1023:	
	line	773
	btfss	(printf@flag),(3)&7
	goto	u6801
	goto	u6800
u6801:
	goto	l5281
u6800:
	goto	l5077
	line	774
	
l5073:	
	goto	l5077
	
l1026:	
	line	775
	
l5075:	
	movlw	(020h)
	fcall	_putch
	goto	l5077
	
l1025:	
	line	774
	
l5077:	
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(printf@width),f
	skipnc
	incf	(printf@width+1),f
	movlw	high(-1)
	addwf	(printf@width+1),f
	movlw	high(-1)
	xorwf	((printf@width+1)),w
	skipz
	goto	u6815
	movlw	low(-1)
	xorwf	((printf@width)),w
u6815:

	skipz
	goto	u6811
	goto	u6810
u6811:
	goto	l5075
u6810:
	goto	l5281
	
l1027:	
	goto	l5281
	line	775
	
l1024:	
	line	777
	goto	l5281
	line	787
	
l1028:	
	line	802
	
l5079:	
	movf	(printf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@c)
	
l5081:	
	movlw	(02h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@ap),f
	goto	l5083
	line	805
	
l1029:	
	line	808
	
l5083:	
	movlw	(printf@c)&0ffh
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@_val)
	line	809
	
l5085:	
	movlw	low(01h)
	movwf	0+(printf@_val)+01h
	movlw	high(01h)
	movwf	(0+(printf@_val)+01h)+1
	line	810
	goto	l5047
	line	820
	
l1030:	
	line	821
	
l5087:	
	movlw	low(0C0h)
	iorwf	(printf@flag),f
	movlw	high(0C0h)
	iorwf	(printf@flag+1),f
	line	822
	goto	l5093
	line	825
	
l5089:	
	goto	l5093
	line	638
	
l1004:	
	
l5091:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(printf@f),f
	movlw	-01h
	addwf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(printf@c)
	; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 0 to 120
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           25    13 (average)
; jumptable            260     6 (fixed)
; rangetable           125     6 (fixed)
; spacedrange          248     9 (fixed)
; locatedrange         121     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l1109
	xorlw	88^0	; case 88
	skipnz
	goto	l1011
	xorlw	99^88	; case 99
	skipnz
	goto	l5079
	xorlw	100^99	; case 100
	skipnz
	goto	l5093
	xorlw	105^100	; case 105
	skipnz
	goto	l5093
	xorlw	111^105	; case 111
	skipnz
	goto	l1007
	xorlw	117^111	; case 117
	skipnz
	goto	l5087
	xorlw	120^117	; case 120
	skipnz
	goto	l1012
	goto	l5083
	opt asmopt_on

	line	825
	
l1008:	
	line	1246
	
l5093:	
	movlw	low(0C0h)
	andwf	(printf@flag),w
	movwf	(??_printf+0)+0
	movlw	high(0C0h)
	andwf	(printf@flag+1),w
	movwf	1+(??_printf+0)+0
	movf	1+(??_printf+0)+0,w
	iorwf	0+(??_printf+0)+0,w
	skipz
	goto	u6821
	goto	u6820
u6821:
	goto	l5105
u6820:
	line	1254
	
l5095:	
	movf	(printf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(printf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(printf@_val+1)
	
l5097:	
	movlw	(02h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@ap),f
	line	1256
	
l5099:	
	btfss	(printf@_val+1),7
	goto	u6831
	goto	u6830
u6831:
	goto	l5109
u6830:
	line	1257
	
l5101:	
	movlw	low(03h)
	iorwf	(printf@flag),f
	movlw	high(03h)
	iorwf	(printf@flag+1),f
	line	1258
	
l5103:	
	comf	(printf@_val),f
	comf	(printf@_val+1),f
	incf	(printf@_val),f
	skipnz
	incf	(printf@_val+1),f
	goto	l5109
	line	1259
	
l1032:	
	line	1261
	goto	l5109
	line	1263
	
l1031:	
	line	1281
	
l5105:	
	movf	(printf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(printf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(printf@_val+1)
	
l5107:	
	movlw	(02h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@ap),f
	goto	l5109
	line	1282
	
l1033:	
	line	1285
	
l5109:	
	movf	(printf@prec),f
	skipz
	goto	u6841
	goto	u6840
u6841:
	goto	l5159
u6840:
	
l5111:	
	movf	((printf@_val+1)),w
	iorwf	((printf@_val)),w
	skipz
	goto	u6851
	goto	u6850
u6851:
	goto	l5159
u6850:
	line	1286
	
l5113:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@prec),f
	goto	l5159
	
l1034:	
	line	1289
	goto	l5159
	line	1294
	
l1036:	
	goto	l5115
	line	1297
	
l1037:	
	line	1300
	
l5115:	
	clrf	(printf@c)
	bsf	status,0
	rlf	(printf@c),f
	
l5117:	
	movf	(printf@c),w
	xorlw	05h
	skipz
	goto	u6861
	goto	u6860
u6861:
	goto	l5121
u6860:
	goto	l5161
	
l5119:	
	goto	l5161
	line	1301
	
l1038:	
	
l5121:	
	movf	(printf@c),w
	movwf	(??_printf+0)+0
	addwf	(??_printf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_printf+1)+0
	fcall	stringdir
	movwf	(??_printf+1)+0+1
	movf	1+(??_printf+1)+0,w
	subwf	(printf@_val+1),w
	skipz
	goto	u6875
	movf	0+(??_printf+1)+0,w
	subwf	(printf@_val),w
u6875:
	skipnc
	goto	u6871
	goto	u6870
u6871:
	goto	l5125
u6870:
	goto	l5161
	line	1302
	
l5123:	
	goto	l5161
	
l1040:	
	line	1300
	
l5125:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@c),f
	
l5127:	
	movf	(printf@c),w
	xorlw	05h
	skipz
	goto	u6881
	goto	u6880
u6881:
	goto	l5121
u6880:
	goto	l5161
	
l1039:	
	line	1304
	goto	l5161
	line	1309
	
l1042:	
	line	1311
	
l5129:	
	clrf	(printf@c)
	bsf	status,0
	rlf	(printf@c),f
	
l5131:	
	movf	(printf@c),w
	xorlw	04h
	skipz
	goto	u6891
	goto	u6890
u6891:
	goto	l5135
u6890:
	goto	l5161
	
l5133:	
	goto	l5161
	line	1312
	
l1043:	
	
l5135:	
	movf	(printf@c),w
	movwf	(??_printf+0)+0
	addwf	(??_printf+0)+0,w
	addlw	low((_hexpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_printf+1)+0
	fcall	stringdir
	movwf	(??_printf+1)+0+1
	movf	1+(??_printf+1)+0,w
	subwf	(printf@_val+1),w
	skipz
	goto	u6905
	movf	0+(??_printf+1)+0,w
	subwf	(printf@_val),w
u6905:
	skipnc
	goto	u6901
	goto	u6900
u6901:
	goto	l5139
u6900:
	goto	l5161
	line	1313
	
l5137:	
	goto	l5161
	
l1045:	
	line	1311
	
l5139:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@c),f
	
l5141:	
	movf	(printf@c),w
	xorlw	04h
	skipz
	goto	u6911
	goto	u6910
u6911:
	goto	l5135
u6910:
	goto	l5161
	
l1044:	
	line	1315
	goto	l5161
	line	1321
	
l1046:	
	line	1323
	
l5143:	
	clrf	(printf@c)
	bsf	status,0
	rlf	(printf@c),f
	
l5145:	
	movf	(printf@c),w
	xorlw	06h
	skipz
	goto	u6921
	goto	u6920
u6921:
	goto	l5149
u6920:
	goto	l5161
	
l5147:	
	goto	l5161
	line	1324
	
l1047:	
	
l5149:	
	movf	(printf@c),w
	movwf	(??_printf+0)+0
	addwf	(??_printf+0)+0,w
	addlw	low((_octpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_printf+1)+0
	fcall	stringdir
	movwf	(??_printf+1)+0+1
	movf	1+(??_printf+1)+0,w
	subwf	(printf@_val+1),w
	skipz
	goto	u6935
	movf	0+(??_printf+1)+0,w
	subwf	(printf@_val),w
u6935:
	skipnc
	goto	u6931
	goto	u6930
u6931:
	goto	l5153
u6930:
	goto	l5161
	line	1325
	
l5151:	
	goto	l5161
	
l1049:	
	line	1323
	
l5153:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@c),f
	
l5155:	
	movf	(printf@c),w
	xorlw	06h
	skipz
	goto	u6941
	goto	u6940
u6941:
	goto	l5149
u6940:
	goto	l5161
	
l1048:	
	line	1327
	goto	l5161
	line	1331
	
l5157:	
	goto	l5161
	line	1289
	
l1035:	
	
l5159:	
	movf	(printf@flag),w
	andlw	0C0h
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 192
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; jumptable            260     6 (fixed)
; rangetable           197     6 (fixed)
; spacedrange          392     9 (fixed)
; locatedrange         193     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l5115
	xorlw	64^0	; case 64
	skipnz
	goto	l5143
	xorlw	128^64	; case 128
	skipnz
	goto	l5129
	xorlw	192^128	; case 192
	skipnz
	goto	l5115
	goto	l5161
	opt asmopt_on

	line	1331
	
l1041:	
	line	1334
	
l5161:	
	movf	(printf@c),w
	xorlw	80h
	movwf	(??_printf+0)+0
	movf	(printf@prec),w
	xorlw	80h
	subwf	(??_printf+0)+0
	skipnc
	goto	u6951
	goto	u6950
u6951:
	goto	l5165
u6950:
	line	1335
	
l5163:	
	movf	(printf@prec),w
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@c)
	goto	l1051
	line	1336
	
l1050:	
	
l5165:	
	movf	(printf@prec),w
	xorlw	80h
	movwf	(??_printf+0)+0
	movf	(printf@c),w
	xorlw	80h
	subwf	(??_printf+0)+0
	skipnc
	goto	u6961
	goto	u6960
u6961:
	goto	l1051
u6960:
	line	1337
	
l5167:	
	movf	(printf@c),w
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@prec)
	goto	l1051
	
l1052:	
	line	1340
	
l1051:	
	movf	(printf@width+1),w
	iorwf	(printf@width),w
	skipnz
	goto	u6971
	goto	u6970
u6971:
	goto	l5173
u6970:
	
l5169:	
	movlw	low(03h)
	andwf	(printf@flag),w
	movwf	(??_printf+0)+0
	movlw	high(03h)
	andwf	(printf@flag+1),w
	movwf	1+(??_printf+0)+0
	movf	1+(??_printf+0)+0,w
	iorwf	0+(??_printf+0)+0,w
	skipnz
	goto	u6981
	goto	u6980
u6981:
	goto	l5173
u6980:
	line	1341
	
l5171:	
	movlw	low(-1)
	addwf	(printf@width),f
	skipnc
	incf	(printf@width+1),f
	movlw	high(-1)
	addwf	(printf@width+1),f
	goto	l5173
	
l1053:	
	line	1343
	
l5173:	
	btfss	(printf@flag+1),(14)&7
	goto	u6991
	goto	u6990
u6991:
	goto	l5181
u6990:
	line	1344
	
l5175:	
	movf	(printf@prec),w
	movwf	(??_printf+0)+0
	clrf	(??_printf+0)+0+1
	btfsc	(??_printf+0)+0,7
	decf	(??_printf+0)+0+1,f
	movf	1+(??_printf+0)+0,w
	xorlw	80h
	movwf	(??_printf+2)+0
	movf	(printf@width+1),w
	xorlw	80h
	subwf	(??_printf+2)+0,w
	skipz
	goto	u7005
	movf	(printf@width),w
	subwf	0+(??_printf+0)+0,w
u7005:

	skipnc
	goto	u7001
	goto	u7000
u7001:
	goto	l5179
u7000:
	line	1345
	
l5177:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printf@prec),w
	movwf	(??_printf+0)+0
	clrf	(??_printf+0)+0+1
	btfsc	(??_printf+0)+0,7
	decf	(??_printf+0)+0+1,f
	movf	0+(??_printf+0)+0,w
	subwf	(printf@width),f
	movf	1+(??_printf+0)+0,w
	skipc
	decf	(printf@width+1),f
	subwf	(printf@width+1),f
	goto	l5181
	line	1346
	
l1055:	
	line	1347
	
l5179:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(printf@width)
	clrf	(printf@width+1)
	goto	l5181
	
l1056:	
	goto	l5181
	line	1348
	
l1054:	
	line	1356
	
l5181:	
	movlw	low(08C4h)
	andwf	(printf@flag),w
	movwf	(??_printf+0)+0
	movlw	high(08C4h)
	andwf	(printf@flag+1),w
	movwf	1+(??_printf+0)+0
	movlw	high(0840h)
	xorwf	1+(??_printf+0)+0,w
	skipz
	goto	u7015
	movlw	low(0840h)
	xorwf	0+(??_printf+0)+0,w
u7015:

	skipz
	goto	u7011
	goto	u7010
u7011:
	goto	l5187
u7010:
	line	1357
	
l5183:	
	movf	(printf@width+1),w
	iorwf	(printf@width),w
	skipnz
	goto	u7021
	goto	u7020
u7021:
	goto	l5195
u7020:
	line	1358
	
l5185:	
	movlw	low(-1)
	addwf	(printf@width),f
	skipnc
	incf	(printf@width+1),f
	movlw	high(-1)
	addwf	(printf@width+1),f
	goto	l5195
	
l1058:	
	line	1359
	goto	l5195
	
l1057:	
	line	1363
	
l5187:	
	movlw	low(08C0h)
	andwf	(printf@flag),w
	movwf	(??_printf+0)+0
	movlw	high(08C0h)
	andwf	(printf@flag+1),w
	movwf	1+(??_printf+0)+0
	movlw	high(0880h)
	xorwf	1+(??_printf+0)+0,w
	skipz
	goto	u7035
	movlw	low(0880h)
	xorwf	0+(??_printf+0)+0,w
u7035:

	skipz
	goto	u7031
	goto	u7030
u7031:
	goto	l5195
u7030:
	line	1367
	
l5189:	
	movf	(printf@width+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u7045
	movlw	low(03h)
	subwf	(printf@width),w
u7045:

	skipc
	goto	u7041
	goto	u7040
u7041:
	goto	l5193
u7040:
	line	1368
	
l5191:	
	movlw	low(-2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(printf@width),f
	skipnc
	incf	(printf@width+1),f
	movlw	high(-2)
	addwf	(printf@width+1),f
	goto	l5195
	line	1369
	
l1061:	
	line	1370
	
l5193:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(printf@width)
	clrf	(printf@width+1)
	goto	l5195
	
l1062:	
	goto	l5195
	line	1371
	
l1060:	
	goto	l5195
	line	1376
	
l1059:	
	
l5195:	
	movf	(printf@c),w
	movwf	(??_printf+0)+0
	clrf	(??_printf+0)+0+1
	btfsc	(??_printf+0)+0,7
	decf	(??_printf+0)+0+1,f
	movf	1+(??_printf+0)+0,w
	xorlw	80h
	movwf	(??_printf+2)+0
	movf	(printf@width+1),w
	xorlw	80h
	subwf	(??_printf+2)+0,w
	skipz
	goto	u7055
	movf	(printf@width),w
	subwf	0+(??_printf+0)+0,w
u7055:

	skipnc
	goto	u7051
	goto	u7050
u7051:
	goto	l5199
u7050:
	line	1377
	
l5197:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printf@c),w
	movwf	(??_printf+0)+0
	clrf	(??_printf+0)+0+1
	btfsc	(??_printf+0)+0,7
	decf	(??_printf+0)+0+1,f
	movf	0+(??_printf+0)+0,w
	subwf	(printf@width),f
	movf	1+(??_printf+0)+0,w
	skipc
	decf	(printf@width+1),f
	subwf	(printf@width+1),f
	goto	l5201
	line	1378
	
l1063:	
	line	1379
	
l5199:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(printf@width)
	clrf	(printf@width+1)
	goto	l5201
	
l1064:	
	line	1382
	
l5201:	
	btfss	(printf@flag),(2)&7
	goto	u7061
	goto	u7060
u7061:
	goto	l5227
u7060:
	line	1387
	
l5203:	
	movlw	low(03h)
	andwf	(printf@flag),w
	movwf	(??_printf+0)+0
	movlw	high(03h)
	andwf	(printf@flag+1),w
	movwf	1+(??_printf+0)+0
	movf	1+(??_printf+0)+0,w
	iorwf	0+(??_printf+0)+0,w
	skipnz
	goto	u7071
	goto	u7070
u7071:
	goto	l1066
u7070:
	line	1388
	
l5205:	
	movlw	(02Dh)
	fcall	_putch
	goto	l5221
	line	1391
	
l1066:	
	line	1394
	btfss	(printf@flag),(0)&7
	goto	u7081
	goto	u7080
u7081:
	goto	l5209
u7080:
	line	1395
	
l5207:	
	movlw	(020h)
	fcall	_putch
	goto	l5221
	line	1398
	
l1068:	
	
l5209:	
	movlw	low(08C0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(printf@flag),w
	movwf	(??_printf+0)+0
	movlw	high(08C0h)
	andwf	(printf@flag+1),w
	movwf	1+(??_printf+0)+0
	movlw	high(0880h)
	xorwf	1+(??_printf+0)+0,w
	skipz
	goto	u7095
	movlw	low(0880h)
	xorwf	0+(??_printf+0)+0,w
u7095:

	skipz
	goto	u7091
	goto	u7090
u7091:
	goto	l5221
u7090:
	line	1399
	
l5211:	
	movlw	(030h)
	fcall	_putch
	line	1401
	
l5213:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(printf@flag),(5)&7
	goto	u7101
	goto	u7100
u7101:
	goto	l5217
u7100:
	
l5215:	
	movlw	low(078h)
	movwf	(_printf$1391)
	movlw	high(078h)
	movwf	((_printf$1391))+1
	goto	l5219
	
l1072:	
	
l5217:	
	movlw	low(058h)
	movwf	(_printf$1391)
	movlw	high(058h)
	movwf	((_printf$1391))+1
	goto	l5219
	
l1074:	
	
l5219:	
	movf	(_printf$1391),w
	fcall	_putch
	goto	l5221
	line	1407
	
l1070:	
	goto	l5221
	line	1410
	
l1069:	
	goto	l5221
	
l1067:	
	
l5221:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printf@width+1),w
	iorwf	(printf@width),w
	skipnz
	goto	u7111
	goto	u7110
u7111:
	goto	l5273
u7110:
	goto	l5223
	line	1411
	
l1076:	
	line	1412
	
l5223:	
	movlw	(030h)
	fcall	_putch
	line	1413
	
l5225:	
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(printf@width),f
	skipnc
	incf	(printf@width+1),f
	movlw	high(-1)
	addwf	(printf@width+1),f
	movf	(((printf@width+1))),w
	iorwf	(((printf@width))),w
	skipz
	goto	u7121
	goto	u7120
u7121:
	goto	l5223
u7120:
	goto	l5273
	
l1077:	
	goto	l5273
	
l1075:	
	line	1415
	goto	l5273
	
l1065:	
	line	1423
	
l5227:	
	movf	(printf@width+1),w
	iorwf	(printf@width),w
	skipnz
	goto	u7131
	goto	u7130
u7131:
	goto	l5235
u7130:
	
l5229:	
	btfsc	(printf@flag),(3)&7
	goto	u7141
	goto	u7140
u7141:
	goto	l5235
u7140:
	goto	l5231
	line	1424
	
l1080:	
	line	1425
	
l5231:	
	movlw	(020h)
	fcall	_putch
	line	1426
	
l5233:	
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(printf@width),f
	skipnc
	incf	(printf@width+1),f
	movlw	high(-1)
	addwf	(printf@width+1),f
	movf	(((printf@width+1))),w
	iorwf	(((printf@width))),w
	skipz
	goto	u7151
	goto	u7150
u7151:
	goto	l5231
u7150:
	goto	l5235
	
l1081:	
	goto	l5235
	
l1079:	
	line	1433
	
l5235:	
	movlw	low(03h)
	andwf	(printf@flag),w
	movwf	(??_printf+0)+0
	movlw	high(03h)
	andwf	(printf@flag+1),w
	movwf	1+(??_printf+0)+0
	movf	1+(??_printf+0)+0,w
	iorwf	0+(??_printf+0)+0,w
	skipnz
	goto	u7161
	goto	u7160
u7161:
	goto	l1082
u7160:
	line	1434
	
l5237:	
	movlw	(02Dh)
	fcall	_putch
	goto	l5241
	line	1438
	
l1082:	
	btfss	(printf@flag),(0)&7
	goto	u7171
	goto	u7170
u7171:
	goto	l5241
u7170:
	line	1439
	
l5239:	
	movlw	(020h)
	fcall	_putch
	goto	l5241
	
l1084:	
	goto	l5241
	line	1443
	
l1083:	
	
l5241:	
	movlw	low(08C0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(printf@flag),w
	movwf	(??_printf+0)+0
	movlw	high(08C0h)
	andwf	(printf@flag+1),w
	movwf	1+(??_printf+0)+0
	movlw	high(0840h)
	xorwf	1+(??_printf+0)+0,w
	skipz
	goto	u7185
	movlw	low(0840h)
	xorwf	0+(??_printf+0)+0,w
u7185:

	skipz
	goto	u7181
	goto	u7180
u7181:
	goto	l5245
u7180:
	line	1444
	
l5243:	
	movlw	(030h)
	fcall	_putch
	goto	l5273
	line	1445
	
l1085:	
	line	1449
	
l5245:	
	movlw	low(08C0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(printf@flag),w
	movwf	(??_printf+0)+0
	movlw	high(08C0h)
	andwf	(printf@flag+1),w
	movwf	1+(??_printf+0)+0
	movlw	high(0880h)
	xorwf	1+(??_printf+0)+0,w
	skipz
	goto	u7195
	movlw	low(0880h)
	xorwf	0+(??_printf+0)+0,w
u7195:

	skipz
	goto	u7191
	goto	u7190
u7191:
	goto	l5273
u7190:
	line	1453
	
l5247:	
	movlw	(030h)
	fcall	_putch
	line	1455
	
l5249:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(printf@flag),(5)&7
	goto	u7201
	goto	u7200
u7201:
	goto	l5253
u7200:
	
l5251:	
	movlw	low(078h)
	movwf	(_printf$1392)
	movlw	high(078h)
	movwf	((_printf$1392))+1
	goto	l5255
	
l1089:	
	
l5253:	
	movlw	low(058h)
	movwf	(_printf$1392)
	movlw	high(058h)
	movwf	((_printf$1392))+1
	goto	l5255
	
l1091:	
	
l5255:	
	movf	(_printf$1392),w
	fcall	_putch
	goto	l5273
	line	1461
	
l1087:	
	goto	l5273
	line	1464
	
l1086:	
	goto	l5273
	
l1078:	
	line	1469
	goto	l5273
	
l1093:	
	line	1471
	goto	l5269
	line	1478
	
l1095:	
	goto	l5257
	line	1481
	
l1096:	
	line	1484
	
l5257:	
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	movf	(printf@prec),w
	movwf	(??_printf+0)+0
	addwf	(??_printf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lwdiv)
	fcall	stringdir
	movwf	(?___lwdiv+1)
	movf	(printf@_val+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(printf@_val),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwdiv)),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(0+(?___lwdiv)),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(??_printf+1)+0
	movf	(??_printf+1)+0,w
	movwf	(printf@c)
	line	1486
	goto	l5271
	line	1492
	
l1098:	
	line	1495
	btfsc	(printf@flag),(5)&7
	goto	u7211
	goto	u7210
u7211:
	goto	l5261
u7210:
	
l5259:	
	movlw	((STR_11-__stringbase))&0ffh
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(_printf$1395)
	goto	l5263
	
l1100:	
	
l5261:	
	movlw	((STR_10-__stringbase))&0ffh
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(_printf$1395)
	goto	l5263
	
l1102:	
	
l5263:	
	movf	(printf@prec),w
	movwf	(??_printf+0)+0
	addwf	(??_printf+0)+0,w
	addlw	low((_hexpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lwdiv)
	fcall	stringdir
	movwf	(?___lwdiv+1)
	movf	(printf@_val+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(printf@_val),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	andlw	0Fh
	addwf	(_printf$1395),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_printf+1)+0
	movf	(??_printf+1)+0,w
	movwf	(printf@c)
	line	1502
	goto	l5271
	line	1508
	
l1103:	
	line	1510
	
l5265:	
	movf	(printf@prec),w
	movwf	(??_printf+0)+0
	addwf	(??_printf+0)+0,w
	addlw	low((_octpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lwdiv)
	fcall	stringdir
	movwf	(?___lwdiv+1)
	movf	(printf@_val+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(printf@_val),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	andlw	07h
	addlw	030h
	movwf	(??_printf+1)+0
	movf	(??_printf+1)+0,w
	movwf	(printf@c)
	line	1512
	goto	l5271
	line	1515
	
l5267:	
	goto	l5271
	line	1471
	
l1094:	
	
l5269:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printf@flag),w
	andlw	0C0h
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 192
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; jumptable            260     6 (fixed)
; rangetable           197     6 (fixed)
; spacedrange          392     9 (fixed)
; locatedrange         193     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l5257
	xorlw	64^0	; case 64
	skipnz
	goto	l5265
	xorlw	128^64	; case 128
	skipnz
	goto	l1098
	xorlw	192^128	; case 192
	skipnz
	goto	l5257
	goto	l5271
	opt asmopt_on

	line	1515
	
l1097:	
	line	1516
	
l5271:	
	movf	(printf@c),w
	fcall	_putch
	goto	l5273
	line	1517
	
l1092:	
	line	1469
	
l5273:	
	movlw	(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@prec),f
	movf	((printf@prec)),w
	xorlw	-1
	skipz
	goto	u7221
	goto	u7220
u7221:
	goto	l5269
u7220:
	
l1104:	
	line	1520
	btfss	(printf@flag),(3)&7
	goto	u7231
	goto	u7230
u7231:
	goto	l5281
u7230:
	
l5275:	
	movf	(printf@width+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u7245
	movlw	low(01h)
	subwf	(printf@width),w
u7245:

	skipc
	goto	u7241
	goto	u7240
u7241:
	goto	l5281
u7240:
	goto	l5277
	line	1521
	
l1106:	
	line	1522
	
l5277:	
	movlw	(020h)
	fcall	_putch
	line	1523
	
l5279:	
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(printf@width),f
	skipnc
	incf	(printf@width+1),f
	movlw	high(-1)
	addwf	(printf@width+1),f
	movf	(((printf@width+1))),w
	iorwf	(((printf@width))),w
	skipz
	goto	u7251
	goto	u7250
u7251:
	goto	l5277
u7250:
	goto	l5281
	
l1107:	
	goto	l5281
	
l1105:	
	goto	l5281
	line	1525
	
l979:	
	line	540
	
l5281:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(printf@f),f
	movlw	-01h
	addwf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@c)
	movf	((printf@c)),f
	skipz
	goto	u7261
	goto	u7260
u7261:
	goto	l4989
u7260:
	goto	l1109
	
l1108:	
	goto	l1109
	line	1527
	
l1006:	
	line	1533
;	Return value of _printf is never used
	
l1109:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	_position
psect	text638,local,class=CODE,delta=2
global __ptext638
__ptext638:

;; *************** function _position *****************
;; Defined at:
;;		line 201 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\lcdV2.h"
;; Parameters:    Size  Location     Type
;;  row             1    wreg     unsigned char 
;;  collum          1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  row             1    6[BANK0 ] unsigned char 
;;  post            1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_add
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text638
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\lcdV2.h"
	line	201
	global	__size_of_position
	__size_of_position	equ	__end_of_position-_position
	
_position:	
	opt	stack 3
; Regs used in _position: [wreg+status,2+status,0+pclath+cstack]
;position@row stored from wreg
	line	203
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(position@row)
	
l4965:	
;lcdV2.h: 202: char post ;
;lcdV2.h: 203: if( row == 1 ) row = 128;
	movf	(position@row),w
	xorlw	01h
	skipz
	goto	u6641
	goto	u6640
u6641:
	goto	l806
u6640:
	
l4967:	
	movlw	(080h)
	movwf	(??_position+0)+0
	movf	(??_position+0)+0,w
	movwf	(position@row)
	
l806:	
	line	204
;lcdV2.h: 204: if( row == 2 ) row = 192;
	movf	(position@row),w
	xorlw	02h
	skipz
	goto	u6651
	goto	u6650
u6651:
	goto	l4971
u6650:
	
l4969:	
	movlw	(0C0h)
	movwf	(??_position+0)+0
	movf	(??_position+0)+0,w
	movwf	(position@row)
	goto	l4971
	
l807:	
	line	205
	
l4971:	
;lcdV2.h: 205: post = row + collum - 1;
	movf	(position@collum),w
	addwf	(position@row),w
	addlw	0FFh
	movwf	(??_position+0)+0
	movf	(??_position+0)+0,w
	movwf	(position@post)
	line	206
	
l4973:	
;lcdV2.h: 206: RC2 = 0;
	bcf	(58/8),(58)&7
	line	207
	
l4975:	
;lcdV2.h: 207: _delay(20);
	opt asmopt_off
movlw	6
movwf	(??_position+0)+0,f
u7307:
decfsz	(??_position+0)+0,f
	goto	u7307
	clrwdt
opt asmopt_on

	line	208
	
l4977:	
;lcdV2.h: 208: lcd_data = post ;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(position@post),w
	movwf	(??_position+0)+0
	movf	(??_position+0)+0,w
	movwf	(_lcd_data)
	line	209
	
l4979:	
;lcdV2.h: 209: lcd_add();
	fcall	_lcd_add
	line	210
	
l4981:	
;lcdV2.h: 210: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_position+0)+0+1),f
	movlw	251
movwf	((??_position+0)+0),f
u7317:
	decfsz	((??_position+0)+0),f
	goto	u7317
	decfsz	((??_position+0)+0+1),f
	goto	u7317
	nop2
opt asmopt_on

	line	211
	
l4983:	
;lcdV2.h: 211: row = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(position@row)
	line	212
	
l4985:	
;lcdV2.h: 212: collum = 0;
	clrf	(position@collum)
	line	213
	
l808:	
	return
	opt stack 0
GLOBAL	__end_of_position
	__end_of_position:
;; =============== function _position ends ============

	signat	_position,8312
	global	_clr_display
psect	text639,local,class=CODE,delta=2
global __ptext639
__ptext639:

;; *************** function _clr_display *****************
;; Defined at:
;;		line 176 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\lcdV2.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_add
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text639
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\lcdV2.h"
	line	176
	global	__size_of_clr_display
	__size_of_clr_display	equ	__end_of_clr_display-_clr_display
	
_clr_display:	
	opt	stack 3
; Regs used in _clr_display: [wreg+status,2+status,0+pclath+cstack]
	line	177
	
l4953:	
;lcdV2.h: 177: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	178
	
l4955:	
;lcdV2.h: 178: _delay(20);
	opt asmopt_off
movlw	6
movwf	(??_clr_display+0)+0,f
u7327:
decfsz	(??_clr_display+0)+0,f
	goto	u7327
	clrwdt
opt asmopt_on

	line	179
	
l4957:	
;lcdV2.h: 179: lcd_data = 0b00000001;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_lcd_data)
	bsf	status,0
	rlf	(_lcd_data),f
	line	180
	
l4959:	
;lcdV2.h: 180: lcd_add();
	fcall	_lcd_add
	line	181
	
l4961:	
;lcdV2.h: 181: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_clr_display+0)+0+1),f
	movlw	251
movwf	((??_clr_display+0)+0),f
u7337:
	decfsz	((??_clr_display+0)+0),f
	goto	u7337
	decfsz	((??_clr_display+0)+0+1),f
	goto	u7337
	nop2
opt asmopt_on

	line	182
	
l4963:	
;lcdV2.h: 182: RC2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	line	183
	
l798:	
	return
	opt stack 0
GLOBAL	__end_of_clr_display
	__end_of_clr_display:
;; =============== function _clr_display ends ============

	signat	_clr_display,88
	global	_putch
psect	text640,local,class=CODE,delta=2
global __ptext640
__ptext640:

;; *************** function _putch *****************
;; Defined at:
;;		line 166 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\lcdV2.h"
;; Parameters:    Size  Location     Type
;;  print_value     1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  print_value     1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_add
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text640
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\lcdV2.h"
	line	166
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 2
; Regs used in _putch: [wreg+status,2+status,0+pclath+cstack]
;putch@print_value stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(putch@print_value)
	line	167
	
l4945:	
;lcdV2.h: 167: RC2 = 1;
	bsf	(58/8),(58)&7
	line	168
	
l4947:	
;lcdV2.h: 168: _delay(20);
	opt asmopt_off
movlw	6
movwf	(??_putch+0)+0,f
u7347:
decfsz	(??_putch+0)+0,f
	goto	u7347
	clrwdt
opt asmopt_on

	line	169
;lcdV2.h: 169: lcd_data = print_value;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(putch@print_value),w
	movwf	(??_putch+0)+0
	movf	(??_putch+0)+0,w
	movwf	(_lcd_data)
	line	170
	
l4949:	
;lcdV2.h: 170: lcd_add();
	fcall	_lcd_add
	line	171
	
l4951:	
;lcdV2.h: 171: _delay(100);
	opt asmopt_off
movlw	33
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_putch+0)+0,f
u7357:
decfsz	(??_putch+0)+0,f
	goto	u7357
opt asmopt_on

	line	172
	
l795:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_bdnu_unid
psect	text641,local,class=CODE,delta=2
global __ptext641
__ptext641:

;; *************** function _bdnu_unid *****************
;; Defined at:
;;		line 308 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\Automated Solar Panel Orientation Setter.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text641
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\Automated Solar Panel Orientation Setter.c"
	line	308
	global	__size_of_bdnu_unid
	__size_of_bdnu_unid	equ	__end_of_bdnu_unid-_bdnu_unid
	
_bdnu_unid:	
	opt	stack 4
; Regs used in _bdnu_unid: [wreg+status,2+status,0]
	line	309
	
l4923:	
;Automated Solar Panel Orientation Setter.c: 309: z = 3;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_bdnu_unid+0)+0
	movf	(??_bdnu_unid+0)+0,w
	movwf	(_z)
	line	310
;Automated Solar Panel Orientation Setter.c: 310: w = 4;
	movlw	(04h)
	movwf	(??_bdnu_unid+0)+0
	movf	(??_bdnu_unid+0)+0,w
	movwf	(_w)
	line	311
;Automated Solar Panel Orientation Setter.c: 311: v = 2;
	movlw	(02h)
	movwf	(??_bdnu_unid+0)+0
	movf	(??_bdnu_unid+0)+0,w
	movwf	(_v)
	line	312
;Automated Solar Panel Orientation Setter.c: 312: y = 6;
	movlw	(06h)
	movwf	(??_bdnu_unid+0)+0
	movf	(??_bdnu_unid+0)+0,w
	movwf	(_y)
	line	313
;Automated Solar Panel Orientation Setter.c: 313: while(!TXIF);
	goto	l939
	
l940:	
	
l939:	
	btfss	(100/8),(100)&7
	goto	u6581
	goto	u6580
u6581:
	goto	l939
u6580:
	goto	l4925
	
l941:	
	line	314
	
l4925:	
;Automated Solar Panel Orientation Setter.c: 314: TXREG = (z+48);
	movf	(_z),w
	addlw	030h
	movwf	(25)	;volatile
	line	315
	
l4927:	
;Automated Solar Panel Orientation Setter.c: 315: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_bdnu_unid+0)+0,f
u7367:
	clrwdt
decfsz	(??_bdnu_unid+0)+0,f
	goto	u7367
	nop2	;nop
	clrwdt
opt asmopt_on

	line	316
;Automated Solar Panel Orientation Setter.c: 316: while(!TXIF);
	goto	l942
	
l943:	
	
l942:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u6591
	goto	u6590
u6591:
	goto	l942
u6590:
	goto	l4929
	
l944:	
	line	317
	
l4929:	
;Automated Solar Panel Orientation Setter.c: 317: TXREG = (w+48);
	movf	(_w),w
	addlw	030h
	movwf	(25)	;volatile
	line	318
	
l4931:	
;Automated Solar Panel Orientation Setter.c: 318: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_bdnu_unid+0)+0,f
u7377:
	clrwdt
decfsz	(??_bdnu_unid+0)+0,f
	goto	u7377
	nop2	;nop
	clrwdt
opt asmopt_on

	line	319
;Automated Solar Panel Orientation Setter.c: 319: while(!TXIF);
	goto	l945
	
l946:	
	
l945:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u6601
	goto	u6600
u6601:
	goto	l945
u6600:
	goto	l4933
	
l947:	
	line	320
	
l4933:	
;Automated Solar Panel Orientation Setter.c: 320: TXREG = 13;
	movlw	(0Dh)
	movwf	(25)	;volatile
	line	321
;Automated Solar Panel Orientation Setter.c: 321: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_bdnu_unid+0)+0,f
u7387:
	clrwdt
decfsz	(??_bdnu_unid+0)+0,f
	goto	u7387
	nop2	;nop
	clrwdt
opt asmopt_on

	line	322
;Automated Solar Panel Orientation Setter.c: 322: while(!TXIF);
	goto	l948
	
l949:	
	
l948:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u6611
	goto	u6610
u6611:
	goto	l948
u6610:
	goto	l4935
	
l950:	
	line	323
	
l4935:	
;Automated Solar Panel Orientation Setter.c: 323: TXREG = (v+48);
	movf	(_v),w
	addlw	030h
	movwf	(25)	;volatile
	line	324
	
l4937:	
;Automated Solar Panel Orientation Setter.c: 324: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_bdnu_unid+0)+0,f
u7397:
	clrwdt
decfsz	(??_bdnu_unid+0)+0,f
	goto	u7397
	nop2	;nop
	clrwdt
opt asmopt_on

	line	325
;Automated Solar Panel Orientation Setter.c: 325: while(!TXIF);
	goto	l951
	
l952:	
	
l951:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u6621
	goto	u6620
u6621:
	goto	l951
u6620:
	goto	l4939
	
l953:	
	line	326
	
l4939:	
;Automated Solar Panel Orientation Setter.c: 326: TXREG = (y+48);
	movf	(_y),w
	addlw	030h
	movwf	(25)	;volatile
	line	327
	
l4941:	
;Automated Solar Panel Orientation Setter.c: 327: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_bdnu_unid+0)+0,f
u7407:
	clrwdt
decfsz	(??_bdnu_unid+0)+0,f
	goto	u7407
	nop2	;nop
	clrwdt
opt asmopt_on

	line	328
;Automated Solar Panel Orientation Setter.c: 328: while(!TXIF);
	goto	l954
	
l955:	
	
l954:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u6631
	goto	u6630
u6631:
	goto	l954
u6630:
	goto	l4943
	
l956:	
	line	329
	
l4943:	
;Automated Solar Panel Orientation Setter.c: 329: TXREG = 13;
	movlw	(0Dh)
	movwf	(25)	;volatile
	line	330
;Automated Solar Panel Orientation Setter.c: 330: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_bdnu_unid+0)+0,f
u7417:
	clrwdt
decfsz	(??_bdnu_unid+0)+0,f
	goto	u7417
	nop2	;nop
	clrwdt
opt asmopt_on

	line	331
	
l957:	
	return
	opt stack 0
GLOBAL	__end_of_bdnu_unid
	__end_of_bdnu_unid:
;; =============== function _bdnu_unid ends ============

	signat	_bdnu_unid,88
	global	_Serial_Print
psect	text642,local,class=CODE,delta=2
global __ptext642
__ptext642:

;; *************** function _Serial_Print *****************
;; Defined at:
;;		line 22 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\serial.h"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     PTR unsigned char 
;;		 -> STR_9(19), 
;; Auto vars:     Size  Location     Type
;;  a               1    1[BANK0 ] PTR unsigned char 
;;		 -> STR_9(19), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text642
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\serial.h"
	line	22
	global	__size_of_Serial_Print
	__size_of_Serial_Print	equ	__end_of_Serial_Print-_Serial_Print
	
_Serial_Print:	
	opt	stack 4
; Regs used in _Serial_Print: [wreg-fsr0h+status,2+status,0+pclath]
;Serial_Print@a stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Serial_Print@a)
	line	23
	
l4913:	
;serial.h: 23: while( *a!='\0'){
	goto	l4921
	
l830:	
	line	24
;serial.h: 24: while(!TXIF);
	goto	l831
	
l832:	
	
l831:	
	btfss	(100/8),(100)&7
	goto	u6561
	goto	u6560
u6561:
	goto	l831
u6560:
	goto	l4915
	
l833:	
	line	25
	
l4915:	
;serial.h: 25: TXREG = *a;
	movf	(Serial_Print@a),w
	movwf	fsr0
	fcall	stringdir
	movwf	(25)	;volatile
	line	26
	
l4917:	
;serial.h: 26: _delay(10);
	opt asmopt_off
movlw	3
movwf	(??_Serial_Print+0)+0,f
u7427:
decfsz	(??_Serial_Print+0)+0,f
	goto	u7427
opt asmopt_on

	line	27
	
l4919:	
;serial.h: 27: a = a+1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Serial_Print@a),w
	addlw	01h
	movwf	(??_Serial_Print+0)+0
	movf	(??_Serial_Print+0)+0,w
	movwf	(Serial_Print@a)
	goto	l4921
	line	28
	
l829:	
	line	23
	
l4921:	
	movf	(Serial_Print@a),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u6571
	goto	u6570
u6571:
	goto	l831
u6570:
	goto	l835
	
l834:	
	line	30
;serial.h: 28: }
;serial.h: 29: return 1;
;	Return value of _Serial_Print is never used
	
l835:	
	return
	opt stack 0
GLOBAL	__end_of_Serial_Print
	__end_of_Serial_Print:
;; =============== function _Serial_Print ends ============

	signat	_Serial_Print,4216
	global	_Serial_Init
psect	text643,local,class=CODE,delta=2
global __ptext643
__ptext643:

;; *************** function _Serial_Init *****************
;; Defined at:
;;		line 5 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\serial.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text643
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\serial.h"
	line	5
	global	__size_of_Serial_Init
	__size_of_Serial_Init	equ	__end_of_Serial_Init-_Serial_Init
	
_Serial_Init:	
	opt	stack 4
; Regs used in _Serial_Init: [wreg]
	line	8
	
l4903:	
;serial.h: 8: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	line	9
;serial.h: 9: RX9 = 0;
	bcf	(198/8),(198)&7
	line	10
;serial.h: 10: CREN = 1;
	bsf	(196/8),(196)&7
	line	11
;serial.h: 11: TX9 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1222/8)^080h,(1222)&7
	line	12
;serial.h: 12: TXEN = 1;
	bsf	(1221/8)^080h,(1221)&7
	line	13
;serial.h: 13: SYNC = 0;
	bcf	(1220/8)^080h,(1220)&7
	line	14
;serial.h: 14: BRGH = 1;
	bsf	(1218/8)^080h,(1218)&7
	line	15
	
l4905:	
;serial.h: 15: SPBRG = 129;
	movlw	(081h)
	movwf	(153)^080h	;volatile
	line	16
	
l4907:	
;serial.h: 16: RCIE = 1;
	bsf	(1125/8)^080h,(1125)&7
	line	17
	
l4909:	
;serial.h: 17: TXIE = 0;
	bcf	(1124/8)^080h,(1124)&7
	line	18
	
l4911:	
;serial.h: 18: ADDEN = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(195/8),(195)&7
	line	19
;serial.h: 19: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_Serial_Init+0)+0+2),f
movlw	138
movwf	((??_Serial_Init+0)+0+1),f
	movlw	86
movwf	((??_Serial_Init+0)+0),f
u7437:
	decfsz	((??_Serial_Init+0)+0),f
	goto	u7437
	decfsz	((??_Serial_Init+0)+0+1),f
	goto	u7437
	decfsz	((??_Serial_Init+0)+0+2),f
	goto	u7437
	nop2
opt asmopt_on

	line	20
	
l826:	
	return
	opt stack 0
GLOBAL	__end_of_Serial_Init
	__end_of_Serial_Init:
;; =============== function _Serial_Init ends ============

	signat	_Serial_Init,88
	global	_lcd_add
psect	text644,local,class=CODE,delta=2
global __ptext644
__ptext644:

;; *************** function _lcd_add *****************
;; Defined at:
;;		line 217 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\lcdV2.h"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_putch
;;		_clr_display
;;		_position
;;		_curser
;; This function uses a non-reentrant model
;;
psect	text644
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\lcdV2.h"
	line	217
	global	__size_of_lcd_add
	__size_of_lcd_add	equ	__end_of_lcd_add-_lcd_add
	
_lcd_add:	
	opt	stack 3
; Regs used in _lcd_add: [wreg+status,2+status,0]
	line	218
	
l4855:	
;lcdV2.h: 218: lcd_data_high = lcd_data >> 4;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??_lcd_add+0)+0
	movlw	04h
u6225:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u6225
	movf	0+(??_lcd_add+0)+0,w
	movwf	(??_lcd_add+1)+0
	movf	(??_lcd_add+1)+0,w
	movwf	(_lcd_data_high)
	line	219
;lcdV2.h: 219: lcd_data_low = lcd_data << 4;
	movf	(_lcd_data),w
	movwf	(??_lcd_add+0)+0
	movlw	(04h)-1
u6235:
	clrc
	rlf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u6235
	clrc
	rlf	(??_lcd_add+0)+0,w
	movwf	(??_lcd_add+1)+0
	movf	(??_lcd_add+1)+0,w
	movwf	(_lcd_data_low)
	line	220
;lcdV2.h: 220: lcd_data_low = lcd_data_low >> 4;
	movf	(_lcd_data_low),w
	movwf	(??_lcd_add+0)+0
	movlw	04h
u6245:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u6245
	movf	0+(??_lcd_add+0)+0,w
	movwf	(??_lcd_add+1)+0
	movf	(??_lcd_add+1)+0,w
	movwf	(_lcd_data_low)
	line	222
	
l4857:	
;lcdV2.h: 222: bit0 = lcd_data;
	bcf	(_bit0/8),(_bit0)&7
	btfss	(_lcd_data),0
	goto	u6255
	bsf	(_bit0/8),(_bit0)&7
u6255:

	line	223
;lcdV2.h: 223: bit1 = lcd_data>>1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??_lcd_add+0)+0
	movlw	01h
u6265:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u6265
	bcf	(_bit1/8),(_bit1)&7
	btfss	0+(??_lcd_add+0)+0,0
	goto	u6275
	bsf	(_bit1/8),(_bit1)&7
u6275:

	line	224
;lcdV2.h: 224: bit2 = lcd_data>>2;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??_lcd_add+0)+0
	movlw	02h
u6285:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u6285
	bcf	(_bit2/8),(_bit2)&7
	btfss	0+(??_lcd_add+0)+0,0
	goto	u6295
	bsf	(_bit2/8),(_bit2)&7
u6295:

	line	225
;lcdV2.h: 225: bit3 = lcd_data>>3;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??_lcd_add+0)+0
	movlw	03h
u6305:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u6305
	bcf	(_bit3/8),(_bit3)&7
	btfss	0+(??_lcd_add+0)+0,0
	goto	u6315
	bsf	(_bit3/8),(_bit3)&7
u6315:

	line	226
;lcdV2.h: 226: bit4 = lcd_data>>4;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??_lcd_add+0)+0
	movlw	04h
u6325:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u6325
	bcf	(_bit4/8),(_bit4)&7
	btfss	0+(??_lcd_add+0)+0,0
	goto	u6335
	bsf	(_bit4/8),(_bit4)&7
u6335:

	line	227
;lcdV2.h: 227: bit5 = lcd_data>>5;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??_lcd_add+0)+0
	movlw	05h
u6345:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u6345
	bcf	(_bit5/8),(_bit5)&7
	btfss	0+(??_lcd_add+0)+0,0
	goto	u6355
	bsf	(_bit5/8),(_bit5)&7
u6355:

	line	228
;lcdV2.h: 228: bit6 = lcd_data>>6;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??_lcd_add+0)+0
	movlw	06h
u6365:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u6365
	bcf	(_bit6/8),(_bit6)&7
	btfss	0+(??_lcd_add+0)+0,0
	goto	u6375
	bsf	(_bit6/8),(_bit6)&7
u6375:

	line	229
;lcdV2.h: 229: bit7 = lcd_data>>7;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??_lcd_add+0)+0
	movlw	07h
u6385:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u6385
	bcf	(_bit7/8),(_bit7)&7
	btfss	0+(??_lcd_add+0)+0,0
	goto	u6395
	bsf	(_bit7/8),(_bit7)&7
u6395:

	line	231
	
l4859:	
;lcdV2.h: 231: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	232
	
l4861:	
;lcdV2.h: 232: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	233
	
l4863:	
;lcdV2.h: 233: RC3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	line	234
	
l4865:	
;lcdV2.h: 234: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	236
	
l4867:	
;lcdV2.h: 236: RC1 = bit4;
	btfsc	(_bit4/8),(_bit4)&7
	goto	u6401
	goto	u6400
	
u6401:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u6414
u6400:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u6414:
	line	237
	
l4869:	
;lcdV2.h: 237: RD0 = bit5;
	btfsc	(_bit5/8),(_bit5)&7
	goto	u6421
	goto	u6420
	
u6421:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	goto	u6434
u6420:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
u6434:
	line	238
	
l4871:	
;lcdV2.h: 238: RC0 = bit6;
	btfsc	(_bit6/8),(_bit6)&7
	goto	u6441
	goto	u6440
	
u6441:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u6454
u6440:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u6454:
	line	239
	
l4873:	
;lcdV2.h: 239: RD1 = bit7;
	btfsc	(_bit7/8),(_bit7)&7
	goto	u6461
	goto	u6460
	
u6461:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	goto	u6474
u6460:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
u6474:
	line	241
	
l4875:	
;lcdV2.h: 241: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	242
	
l4877:	
;lcdV2.h: 242: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	243
	
l4879:	
;lcdV2.h: 243: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	247
	
l4881:	
;lcdV2.h: 247: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	248
	
l4883:	
;lcdV2.h: 248: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	249
	
l4885:	
;lcdV2.h: 249: RC3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	line	250
	
l4887:	
;lcdV2.h: 250: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	252
	
l4889:	
;lcdV2.h: 252: RC1 = bit0;
	btfsc	(_bit0/8),(_bit0)&7
	goto	u6481
	goto	u6480
	
u6481:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u6494
u6480:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u6494:
	line	253
	
l4891:	
;lcdV2.h: 253: RD0 = bit1;
	btfsc	(_bit1/8),(_bit1)&7
	goto	u6501
	goto	u6500
	
u6501:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	goto	u6514
u6500:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
u6514:
	line	254
	
l4893:	
;lcdV2.h: 254: RC0 = bit2;
	btfsc	(_bit2/8),(_bit2)&7
	goto	u6521
	goto	u6520
	
u6521:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u6534
u6520:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u6534:
	line	255
	
l4895:	
;lcdV2.h: 255: RD1 = bit3;
	btfsc	(_bit3/8),(_bit3)&7
	goto	u6541
	goto	u6540
	
u6541:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	goto	u6554
u6540:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
u6554:
	line	257
	
l4897:	
;lcdV2.h: 257: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	258
	
l4899:	
;lcdV2.h: 258: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	259
	
l4901:	
;lcdV2.h: 259: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	260
	
l811:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_add
	__end_of_lcd_add:
;; =============== function _lcd_add ends ============

	signat	_lcd_add,88
	global	___lwmod
psect	text645,local,class=CODE,delta=2
global __ptext645
__ptext645:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    8[BANK0 ] unsigned int 
;;  dividend        2   10[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;;		_Serial_PrintlnVal
;; This function uses a non-reentrant model
;;
psect	text645
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 3
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l4709:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u5661
	goto	u5660
u5661:
	goto	l4727
u5660:
	line	9
	
l4711:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l4717
	
l1815:	
	line	11
	
l4713:	
	movlw	01h
	
u5675:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u5675
	line	12
	
l4715:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l4717
	line	13
	
l1814:	
	line	10
	
l4717:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u5681
	goto	u5680
u5681:
	goto	l4713
u5680:
	goto	l4719
	
l1816:	
	goto	l4719
	line	14
	
l1817:	
	line	15
	
l4719:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u5695
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u5695:
	skipc
	goto	u5691
	goto	u5690
u5691:
	goto	l4723
u5690:
	line	16
	
l4721:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l4723
	
l1818:	
	line	17
	
l4723:	
	movlw	01h
	
u5705:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u5705
	line	18
	
l4725:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u5711
	goto	u5710
u5711:
	goto	l4719
u5710:
	goto	l4727
	
l1819:	
	goto	l4727
	line	19
	
l1813:	
	line	20
	
l4727:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l1820
	
l4729:	
	line	21
	
l1820:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text646,local,class=CODE,delta=2
global __ptext646
__ptext646:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[BANK0 ] unsigned int 
;;  counter         1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;;		_Serial_PrintlnVal
;; This function uses a non-reentrant model
;;
psect	text646
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 3
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l4683:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l4685:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u5591
	goto	u5590
u5591:
	goto	l4705
u5590:
	line	11
	
l4687:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l4693
	
l1805:	
	line	13
	
l4689:	
	movlw	01h
	
u5605:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u5605
	line	14
	
l4691:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l4693
	line	15
	
l1804:	
	line	12
	
l4693:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u5611
	goto	u5610
u5611:
	goto	l4689
u5610:
	goto	l4695
	
l1806:	
	goto	l4695
	line	16
	
l1807:	
	line	17
	
l4695:	
	movlw	01h
	
u5625:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u5625
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u5635
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u5635:
	skipc
	goto	u5631
	goto	u5630
u5631:
	goto	l4701
u5630:
	line	19
	
l4697:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l4699:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l4701
	line	21
	
l1808:	
	line	22
	
l4701:	
	movlw	01h
	
u5645:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u5645
	line	23
	
l4703:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u5651
	goto	u5650
u5651:
	goto	l4695
u5650:
	goto	l4705
	
l1809:	
	goto	l4705
	line	24
	
l1803:	
	line	25
	
l4705:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l1810
	
l4707:	
	line	26
	
l1810:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text647,local,class=CODE,delta=2
global __ptext647
__ptext647:

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
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text647
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 3
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l4671:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l4673
	line	6
	
l1797:	
	line	7
	
l4673:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u5551
	goto	u5550
u5551:
	goto	l1798
u5550:
	line	8
	
l4675:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l1798:	
	line	9
	movlw	01h
	
u5565:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u5565
	line	10
	
l4677:	
	movlw	01h
	
u5575:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u5575
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u5581
	goto	u5580
u5581:
	goto	l4673
u5580:
	goto	l4679
	
l1799:	
	line	12
	
l4679:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l1800
	
l4681:	
	line	13
	
l1800:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	___bmul
psect	text648,local,class=CODE,delta=2
global __ptext648
__ptext648:

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    3[BANK0 ] unsigned char 
;;  product         1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text648
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 3
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___bmul@multiplier)
	line	4
	
l4657:	
	clrf	(___bmul@product)
	line	6
	
l1791:	
	line	7
	btfss	(___bmul@multiplier),(0)&7
	goto	u5531
	goto	u5530
u5531:
	goto	l4661
u5530:
	line	8
	
l4659:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l4661
	
l1792:	
	line	9
	
l4661:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	10
	
l4663:	
	clrc
	rrf	(___bmul@multiplier),f

	line	11
	
l4665:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u5541
	goto	u5540
u5541:
	goto	l1791
u5540:
	goto	l4667
	
l1793:	
	line	12
	
l4667:	
	movf	(___bmul@product),w
	goto	l1794
	
l4669:	
	line	13
	
l1794:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	_isdigit
psect	text649,local,class=CODE,delta=2
global __ptext649
__ptext649:

;; *************** function _isdigit *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isdigit.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text649
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isdigit.c"
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
	opt	stack 3
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(isdigit@c)
	line	14
	
l4645:	
	clrf	(_isdigit$1750)
	
l4647:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u5511
	goto	u5510
u5511:
	goto	l4653
u5510:
	
l4649:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u5521
	goto	u5520
u5521:
	goto	l4653
u5520:
	
l4651:	
	clrf	(_isdigit$1750)
	bsf	status,0
	rlf	(_isdigit$1750),f
	goto	l4653
	
l1787:	
	
l4653:	
	rrf	(_isdigit$1750),w
	
	goto	l1788
	
l4655:	
	line	15
	
l1788:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_Timer1_Init
psect	text650,local,class=CODE,delta=2
global __ptext650
__ptext650:

;; *************** function _Timer1_Init *****************
;; Defined at:
;;		line 4 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\timer1.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text650
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\timer1.h"
	line	4
	global	__size_of_Timer1_Init
	__size_of_Timer1_Init	equ	__end_of_Timer1_Init-_Timer1_Init
	
_Timer1_Init:	
	opt	stack 4
; Regs used in _Timer1_Init: [wreg]
	line	6
	
l4483:	
;timer1.h: 6: T1CKPS1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(133/8),(133)&7
	line	7
;timer1.h: 7: T1CKPS0 = 1;
	bsf	(132/8),(132)&7
	line	8
;timer1.h: 8: TMR1CS = 0;
	bcf	(129/8),(129)&7
	line	9
;timer1.h: 9: TMR1ON = 1;
	bsf	(128/8),(128)&7
	line	10
;timer1.h: 10: T1OSCEN = 0;
	bcf	(131/8),(131)&7
	line	11
	
l4485:	
;timer1.h: 11: TMR1L = 0xB0;
	movlw	(0B0h)
	movwf	(14)	;volatile
	line	12
;timer1.h: 12: TMR1H = 60;
	movlw	(03Ch)
	movwf	(15)	;volatile
	line	13
	
l4487:	
;timer1.h: 13: TMR1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	14
	
l871:	
	return
	opt stack 0
GLOBAL	__end_of_Timer1_Init
	__end_of_Timer1_Init:
;; =============== function _Timer1_Init ends ============

	signat	_Timer1_Init,88
	global	_enableInterrupt
psect	text651,local,class=CODE,delta=2
global __ptext651
__ptext651:

;; *************** function _enableInterrupt *****************
;; Defined at:
;;		line 7 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\interrupts.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text651
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\interrupts.h"
	line	7
	global	__size_of_enableInterrupt
	__size_of_enableInterrupt	equ	__end_of_enableInterrupt-_enableInterrupt
	
_enableInterrupt:	
	opt	stack 4
; Regs used in _enableInterrupt: []
	line	9
	
l4481:	
;interrupts.h: 9: RBIE = 0;
	bcf	(91/8),(91)&7
	line	10
;interrupts.h: 10: INTE = 0;
	bcf	(92/8),(92)&7
	line	12
;interrupts.h: 12: PSPIE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1127/8)^080h,(1127)&7
	line	13
;interrupts.h: 13: ADIE = 0;
	bcf	(1126/8)^080h,(1126)&7
	line	15
;interrupts.h: 15: TXIE = 0;
	bcf	(1124/8)^080h,(1124)&7
	line	16
;interrupts.h: 16: RCIE = 1;
	bsf	(1125/8)^080h,(1125)&7
	line	18
;interrupts.h: 18: SSPIE = 0;
	bcf	(1123/8)^080h,(1123)&7
	line	19
;interrupts.h: 19: CCP1IE = 0;
	bcf	(1122/8)^080h,(1122)&7
	line	21
;interrupts.h: 21: TMR1IE = 1;
	bsf	(1120/8)^080h,(1120)&7
	line	22
;interrupts.h: 22: TMR2IE = 0;
	bcf	(1121/8)^080h,(1121)&7
	line	23
;interrupts.h: 23: T0IE = 0;
	bcf	(93/8),(93)&7
	line	25
;interrupts.h: 25: EEIE = 0;
	bcf	(1132/8)^080h,(1132)&7
	line	26
;interrupts.h: 26: BCLIE = 0;
	bcf	(1131/8)^080h,(1131)&7
	line	27
;interrupts.h: 27: CCP2IE = 0;
	bcf	(1128/8)^080h,(1128)&7
	line	30
;interrupts.h: 30: GIE = 1;
	bsf	(95/8),(95)&7
	line	31
;interrupts.h: 31: PEIE = 1;
	bsf	(94/8),(94)&7
	line	32
	
l868:	
	return
	opt stack 0
GLOBAL	__end_of_enableInterrupt
	__end_of_enableInterrupt:
;; =============== function _enableInterrupt ends ============

	signat	_enableInterrupt,88
	global	_atod_init
psect	text652,local,class=CODE,delta=2
global __ptext652
__ptext652:

;; *************** function _atod_init *****************
;; Defined at:
;;		line 9 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\a2d.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text652
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\a2d.h"
	line	9
	global	__size_of_atod_init
	__size_of_atod_init	equ	__end_of_atod_init-_atod_init
	
_atod_init:	
	opt	stack 4
; Regs used in _atod_init: [wreg]
	line	10
	
l4437:	
;a2d.h: 10: ADCON0 = 0b01000000;
	movlw	(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	11
;a2d.h: 11: ADCON1 = 0b10000100;
	movlw	(084h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	12
	
l817:	
	return
	opt stack 0
GLOBAL	__end_of_atod_init
	__end_of_atod_init:
;; =============== function _atod_init ends ============

	signat	_atod_init,88
	global	_lcd_init
psect	text653,local,class=CODE,delta=2
global __ptext653
__ptext653:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 60 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\lcdV2.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  DelayLCD        2    0[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text653
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\lcdV2.h"
	line	60
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 4
; Regs used in _lcd_init: [wreg+status,2]
	line	62
	
l4379:	
;lcdV2.h: 62: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	66
;lcdV2.h: 64: unsigned int DelayLCD;
;lcdV2.h: 66: RC2 = 0;
	bcf	(58/8),(58)&7
	line	67
;lcdV2.h: 67: RD1 = 0;
	bcf	(65/8),(65)&7
	line	68
;lcdV2.h: 68: RC0 = 0;
	bcf	(56/8),(56)&7
	line	69
;lcdV2.h: 69: RD0 = 1;
	bsf	(64/8),(64)&7
	line	70
;lcdV2.h: 70: RC1 = 0;
	bcf	(57/8),(57)&7
	line	71
;lcdV2.h: 71: RC3 = 1;
	bsf	(59/8),(59)&7
	line	72
;lcdV2.h: 72: RC3 = 0;
	bcf	(59/8),(59)&7
	line	73
;lcdV2.h: 73: RD1 = 1;
	bsf	(65/8),(65)&7
	line	74
;lcdV2.h: 74: RC0 = 0;
	bcf	(56/8),(56)&7
	line	75
;lcdV2.h: 75: RD0 = 0;
	bcf	(64/8),(64)&7
	line	76
;lcdV2.h: 76: RC1 = 0;
	bcf	(57/8),(57)&7
	line	77
;lcdV2.h: 77: RC3 = 1;
	bsf	(59/8),(59)&7
	line	78
;lcdV2.h: 78: RC3 = 0;
	bcf	(59/8),(59)&7
	line	79
	
l4381:	
;lcdV2.h: 79: for(DelayLCD=0;DelayLCD<2500;DelayLCD++);
	clrf	(lcd_init@DelayLCD)
	clrf	(lcd_init@DelayLCD+1)
	
l4383:	
	movlw	high(09C4h)
	subwf	(lcd_init@DelayLCD+1),w
	movlw	low(09C4h)
	skipnz
	subwf	(lcd_init@DelayLCD),w
	skipc
	goto	u4921
	goto	u4920
u4921:
	goto	l4387
u4920:
	goto	l777
	
l4385:	
	goto	l777
	
l776:	
	
l4387:	
	movlw	low(01h)
	addwf	(lcd_init@DelayLCD),f
	skipnc
	incf	(lcd_init@DelayLCD+1),f
	movlw	high(01h)
	addwf	(lcd_init@DelayLCD+1),f
	movlw	high(09C4h)
	subwf	(lcd_init@DelayLCD+1),w
	movlw	low(09C4h)
	skipnz
	subwf	(lcd_init@DelayLCD),w
	skipc
	goto	u4931
	goto	u4930
u4931:
	goto	l4387
u4930:
	
l777:	
	line	82
;lcdV2.h: 82: RC2 = 0;
	bcf	(58/8),(58)&7
	line	83
;lcdV2.h: 83: RD1 = 0;
	bcf	(65/8),(65)&7
	line	84
;lcdV2.h: 84: RC0 = 0;
	bcf	(56/8),(56)&7
	line	85
;lcdV2.h: 85: RD0 = 1;
	bsf	(64/8),(64)&7
	line	86
;lcdV2.h: 86: RC1 = 0;
	bcf	(57/8),(57)&7
	line	87
;lcdV2.h: 87: RC3 = 1;
	bsf	(59/8),(59)&7
	line	88
;lcdV2.h: 88: RC3 = 0;
	bcf	(59/8),(59)&7
	line	89
;lcdV2.h: 89: RD1 = 1;
	bsf	(65/8),(65)&7
	line	90
;lcdV2.h: 90: RC0 = 0;
	bcf	(56/8),(56)&7
	line	91
;lcdV2.h: 91: RD0 = 0;
	bcf	(64/8),(64)&7
	line	92
;lcdV2.h: 92: RC1 = 0;
	bcf	(57/8),(57)&7
	line	93
;lcdV2.h: 93: RC3 = 1;
	bsf	(59/8),(59)&7
	line	94
;lcdV2.h: 94: RC3 = 0;
	bcf	(59/8),(59)&7
	line	95
	
l4389:	
;lcdV2.h: 95: for(DelayLCD=0;DelayLCD<2500;DelayLCD++);
	clrf	(lcd_init@DelayLCD)
	clrf	(lcd_init@DelayLCD+1)
	
l4391:	
	movlw	high(09C4h)
	subwf	(lcd_init@DelayLCD+1),w
	movlw	low(09C4h)
	skipnz
	subwf	(lcd_init@DelayLCD),w
	skipc
	goto	u4941
	goto	u4940
u4941:
	goto	l4395
u4940:
	goto	l779
	
l4393:	
	goto	l779
	
l778:	
	
l4395:	
	movlw	low(01h)
	addwf	(lcd_init@DelayLCD),f
	skipnc
	incf	(lcd_init@DelayLCD+1),f
	movlw	high(01h)
	addwf	(lcd_init@DelayLCD+1),f
	movlw	high(09C4h)
	subwf	(lcd_init@DelayLCD+1),w
	movlw	low(09C4h)
	skipnz
	subwf	(lcd_init@DelayLCD),w
	skipc
	goto	u4951
	goto	u4950
u4951:
	goto	l4395
u4950:
	
l779:	
	line	98
;lcdV2.h: 98: RC2 = 0;
	bcf	(58/8),(58)&7
	line	99
;lcdV2.h: 99: RD1 = 0;
	bcf	(65/8),(65)&7
	line	100
;lcdV2.h: 100: RC0 = 0;
	bcf	(56/8),(56)&7
	line	101
;lcdV2.h: 101: RD0 = 0;
	bcf	(64/8),(64)&7
	line	102
;lcdV2.h: 102: RC1 = 0;
	bcf	(57/8),(57)&7
	line	103
;lcdV2.h: 103: RC3 = 1;
	bsf	(59/8),(59)&7
	line	104
;lcdV2.h: 104: RC3 = 0;
	bcf	(59/8),(59)&7
	line	105
;lcdV2.h: 105: RD1 = 0;
	bcf	(65/8),(65)&7
	line	106
;lcdV2.h: 106: RC0 = 1;
	bsf	(56/8),(56)&7
	line	107
;lcdV2.h: 107: RD0 = 1;
	bsf	(64/8),(64)&7
	line	108
;lcdV2.h: 108: RC1 = 0;
	bcf	(57/8),(57)&7
	line	109
;lcdV2.h: 109: RC3 = 1;
	bsf	(59/8),(59)&7
	line	110
;lcdV2.h: 110: RC3 = 0;
	bcf	(59/8),(59)&7
	line	111
	
l4397:	
;lcdV2.h: 111: for(DelayLCD=0;DelayLCD<2500;DelayLCD++);
	clrf	(lcd_init@DelayLCD)
	clrf	(lcd_init@DelayLCD+1)
	
l4399:	
	movlw	high(09C4h)
	subwf	(lcd_init@DelayLCD+1),w
	movlw	low(09C4h)
	skipnz
	subwf	(lcd_init@DelayLCD),w
	skipc
	goto	u4961
	goto	u4960
u4961:
	goto	l4403
u4960:
	goto	l781
	
l4401:	
	goto	l781
	
l780:	
	
l4403:	
	movlw	low(01h)
	addwf	(lcd_init@DelayLCD),f
	skipnc
	incf	(lcd_init@DelayLCD+1),f
	movlw	high(01h)
	addwf	(lcd_init@DelayLCD+1),f
	movlw	high(09C4h)
	subwf	(lcd_init@DelayLCD+1),w
	movlw	low(09C4h)
	skipnz
	subwf	(lcd_init@DelayLCD),w
	skipc
	goto	u4971
	goto	u4970
u4971:
	goto	l4403
u4970:
	
l781:	
	line	114
;lcdV2.h: 114: RC2 = 0;
	bcf	(58/8),(58)&7
	line	115
;lcdV2.h: 115: RD1 = 0;
	bcf	(65/8),(65)&7
	line	116
;lcdV2.h: 116: RC0 = 0;
	bcf	(56/8),(56)&7
	line	117
;lcdV2.h: 117: RD0 = 0;
	bcf	(64/8),(64)&7
	line	118
;lcdV2.h: 118: RC1 = 0;
	bcf	(57/8),(57)&7
	line	119
;lcdV2.h: 119: RC3 = 1;
	bsf	(59/8),(59)&7
	line	120
;lcdV2.h: 120: RC3 = 0;
	bcf	(59/8),(59)&7
	line	121
;lcdV2.h: 121: RD1 = 1;
	bsf	(65/8),(65)&7
	line	122
;lcdV2.h: 122: RC0 = 1;
	bsf	(56/8),(56)&7
	line	123
;lcdV2.h: 123: RD0 = 0;
	bcf	(64/8),(64)&7
	line	124
;lcdV2.h: 124: RC1 = 1;
	bsf	(57/8),(57)&7
	line	125
;lcdV2.h: 125: RC3 = 1;
	bsf	(59/8),(59)&7
	line	126
;lcdV2.h: 126: RC3 = 0;
	bcf	(59/8),(59)&7
	line	127
	
l4405:	
;lcdV2.h: 127: for(DelayLCD=0;DelayLCD<2500;DelayLCD++);
	clrf	(lcd_init@DelayLCD)
	clrf	(lcd_init@DelayLCD+1)
	
l4407:	
	movlw	high(09C4h)
	subwf	(lcd_init@DelayLCD+1),w
	movlw	low(09C4h)
	skipnz
	subwf	(lcd_init@DelayLCD),w
	skipc
	goto	u4981
	goto	u4980
u4981:
	goto	l4411
u4980:
	goto	l783
	
l4409:	
	goto	l783
	
l782:	
	
l4411:	
	movlw	low(01h)
	addwf	(lcd_init@DelayLCD),f
	skipnc
	incf	(lcd_init@DelayLCD+1),f
	movlw	high(01h)
	addwf	(lcd_init@DelayLCD+1),f
	movlw	high(09C4h)
	subwf	(lcd_init@DelayLCD+1),w
	movlw	low(09C4h)
	skipnz
	subwf	(lcd_init@DelayLCD),w
	skipc
	goto	u4991
	goto	u4990
u4991:
	goto	l4411
u4990:
	
l783:	
	line	130
;lcdV2.h: 130: RC2 = 0;
	bcf	(58/8),(58)&7
	line	131
;lcdV2.h: 131: RD1 = 0;
	bcf	(65/8),(65)&7
	line	132
;lcdV2.h: 132: RC0 = 0;
	bcf	(56/8),(56)&7
	line	133
;lcdV2.h: 133: RD0 = 0;
	bcf	(64/8),(64)&7
	line	134
;lcdV2.h: 134: RC1 = 0;
	bcf	(57/8),(57)&7
	line	135
;lcdV2.h: 135: RC3 = 1;
	bsf	(59/8),(59)&7
	line	136
;lcdV2.h: 136: RC3 = 0;
	bcf	(59/8),(59)&7
	line	137
;lcdV2.h: 137: RD1 = 0;
	bcf	(65/8),(65)&7
	line	138
;lcdV2.h: 138: RC0 = 0;
	bcf	(56/8),(56)&7
	line	139
;lcdV2.h: 139: RD0 = 0;
	bcf	(64/8),(64)&7
	line	140
;lcdV2.h: 140: RC1 = 1;
	bsf	(57/8),(57)&7
	line	141
;lcdV2.h: 141: RC3 = 1;
	bsf	(59/8),(59)&7
	line	142
;lcdV2.h: 142: RC3 = 0;
	bcf	(59/8),(59)&7
	line	143
	
l4413:	
;lcdV2.h: 143: for(DelayLCD=0;DelayLCD<2500;DelayLCD++);
	clrf	(lcd_init@DelayLCD)
	clrf	(lcd_init@DelayLCD+1)
	
l4415:	
	movlw	high(09C4h)
	subwf	(lcd_init@DelayLCD+1),w
	movlw	low(09C4h)
	skipnz
	subwf	(lcd_init@DelayLCD),w
	skipc
	goto	u5001
	goto	u5000
u5001:
	goto	l4419
u5000:
	goto	l786
	
l4417:	
	goto	l786
	
l784:	
	
l4419:	
	movlw	low(01h)
	addwf	(lcd_init@DelayLCD),f
	skipnc
	incf	(lcd_init@DelayLCD+1),f
	movlw	high(01h)
	addwf	(lcd_init@DelayLCD+1),f
	movlw	high(09C4h)
	subwf	(lcd_init@DelayLCD+1),w
	movlw	low(09C4h)
	skipnz
	subwf	(lcd_init@DelayLCD),w
	skipc
	goto	u5011
	goto	u5010
u5011:
	goto	l4419
u5010:
	goto	l786
	
l785:	
	line	146
	
l786:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_Setup_IOports
psect	text654,local,class=CODE,delta=2
global __ptext654
__ptext654:

;; *************** function _Setup_IOports *****************
;; Defined at:
;;		line 50 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\setup.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text654
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\setup.h"
	line	50
	global	__size_of_Setup_IOports
	__size_of_Setup_IOports	equ	__end_of_Setup_IOports-_Setup_IOports
	
_Setup_IOports:	
	opt	stack 4
; Regs used in _Setup_IOports: [wreg+status,2]
	line	52
	
l4365:	
;setup.h: 52: TRISA = 0b11111111;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	53
	
l4367:	
;setup.h: 53: PORTA = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	55
	
l4369:	
;setup.h: 55: TRISB = 0b11000000;
	movlw	(0C0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	56
;setup.h: 56: PORTB = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	58
	
l4371:	
;setup.h: 58: TRISC = 0b10000000;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	59
	
l4373:	
;setup.h: 59: PORTC = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	61
;setup.h: 61: TRISD = 0b00001100;
	movlw	(0Ch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	62
	
l4375:	
;setup.h: 62: PORTD = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	64
	
l4377:	
;setup.h: 64: TRISE = 0b10000000;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(137)^080h	;volatile
	line	65
;setup.h: 65: PORTE = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	66
	
l773:	
	return
	opt stack 0
GLOBAL	__end_of_Setup_IOports
	__end_of_Setup_IOports:
;; =============== function _Setup_IOports ends ============

	signat	_Setup_IOports,88
	global	_isr
psect	text655,local,class=CODE,delta=2
global __ptext655
__ptext655:

;; *************** function _isr *****************
;; Defined at:
;;		line 190 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\Automated Solar Panel Orientation Setter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          5       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		i1_lcd_init
;;		i1_clr_display
;;		i1___lwmod
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text655
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\Automated Solar Panel Orientation Setter.c"
	line	190
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:	
	opt	stack 2
; Regs used in _isr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_isr+1)
	movf	fsr0,w
	movwf	(??_isr+2)
	movf	pclath,w
	movwf	(??_isr+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_isr+4)
	ljmp	_isr
psect	text655
	line	191
	
i1l4497:	
;Automated Solar Panel Orientation Setter.c: 191: if(TMR1IF==1){
	btfss	(96/8),(96)&7
	goto	u512_21
	goto	u512_20
u512_21:
	goto	i1l4533
u512_20:
	line	192
	
i1l4499:	
;Automated Solar Panel Orientation Setter.c: 192: msecond ++;
	movlw	low(01h)
	addwf	(_msecond),f
	skipnc
	incf	(_msecond+1),f
	movlw	high(01h)
	addwf	(_msecond+1),f
	line	193
;Automated Solar Panel Orientation Setter.c: 193: if(msecond == 10){
	movlw	0Ah
	xorwf	(_msecond),w
	iorwf	(_msecond+1),w
	skipz
	goto	u513_21
	goto	u513_20
u513_21:
	goto	i1l915
u513_20:
	line	194
	
i1l4501:	
;Automated Solar Panel Orientation Setter.c: 194: second ++;
	movlw	low(01h)
	addwf	(_second),f
	skipnc
	incf	(_second+1),f
	movlw	high(01h)
	addwf	(_second+1),f
	line	197
;Automated Solar Panel Orientation Setter.c: 197: RD6 = !RD6;
	movlw	1<<((70)&7)
	xorwf	((70)/8),f
	line	198
	
i1l4503:	
;Automated Solar Panel Orientation Setter.c: 198: msecond = 0;
	clrf	(_msecond)
	clrf	(_msecond+1)
	line	199
	
i1l4505:	
;Automated Solar Panel Orientation Setter.c: 199: if( second == 60){
	movlw	03Ch
	xorwf	(_second),w
	iorwf	(_second+1),w
	skipz
	goto	u514_21
	goto	u514_20
u514_21:
	goto	i1l915
u514_20:
	line	200
	
i1l4507:	
;Automated Solar Panel Orientation Setter.c: 200: HeartRate = HeartRateCount;
	movf	(_HeartRateCount+1),w
	clrf	(_HeartRate+1)
	addwf	(_HeartRate+1)
	movf	(_HeartRateCount),w
	clrf	(_HeartRate)
	addwf	(_HeartRate)

	line	201
	
i1l4509:	
;Automated Solar Panel Orientation Setter.c: 201: HeartRateCount = 0;
	clrf	(_HeartRateCount)
	clrf	(_HeartRateCount+1)
	line	202
	
i1l4511:	
;Automated Solar Panel Orientation Setter.c: 202: minute ++;
	movlw	low(01h)
	addwf	(_minute),f
	skipnc
	incf	(_minute+1),f
	movlw	high(01h)
	addwf	(_minute+1),f
	line	203
	
i1l4513:	
;Automated Solar Panel Orientation Setter.c: 203: lcd_init();
	fcall	i1_lcd_init
	line	204
	
i1l4515:	
;Automated Solar Panel Orientation Setter.c: 204: clr_display();
	fcall	i1_clr_display
	line	205
	
i1l4517:	
;Automated Solar Panel Orientation Setter.c: 205: second = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_second)
	clrf	(_second+1)
	line	207
	
i1l4519:	
;Automated Solar Panel Orientation Setter.c: 207: x = minute%30 ;
	movlw	low(01Eh)
	movwf	(?i1___lwmod)
	movlw	high(01Eh)
	movwf	((?i1___lwmod))+1
	movf	(_minute+1),w
	clrf	1+(?i1___lwmod)+02h
	addwf	1+(?i1___lwmod)+02h
	movf	(_minute),w
	clrf	0+(?i1___lwmod)+02h
	addwf	0+(?i1___lwmod)+02h

	fcall	i1___lwmod
	movf	(0+(?i1___lwmod)),w
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_x)
	goto	i1l4523
	line	208
	
i1l4521:	
	goto	i1l4523
	line	211
	
i1l917:	
	line	214
	
i1l4523:	
;Automated Solar Panel Orientation Setter.c: 211: }
;Automated Solar Panel Orientation Setter.c: 214: if( minute == 60){
	movlw	03Ch
	xorwf	(_minute),w
	iorwf	(_minute+1),w
	skipz
	goto	u515_21
	goto	u515_20
u515_21:
	goto	i1l915
u515_20:
	line	215
	
i1l4525:	
;Automated Solar Panel Orientation Setter.c: 215: minute = 0;
	clrf	(_minute)
	clrf	(_minute+1)
	line	216
	
i1l4527:	
;Automated Solar Panel Orientation Setter.c: 216: hour ++;
	movlw	low(01h)
	addwf	(_hour),f
	skipnc
	incf	(_hour+1),f
	movlw	high(01h)
	addwf	(_hour+1),f
	goto	i1l915
	line	217
	
i1l4529:	
	goto	i1l915
	
i1l919:	
	goto	i1l915
	line	218
	
i1l918:	
	goto	i1l915
	line	219
	
i1l916:	
	line	220
	
i1l915:	
	line	221
;Automated Solar Panel Orientation Setter.c: 218: }
;Automated Solar Panel Orientation Setter.c: 219: }
;Automated Solar Panel Orientation Setter.c: 220: }
;Automated Solar Panel Orientation Setter.c: 221: TMR1IF = 0;
	bcf	(96/8),(96)&7
	line	222
	
i1l4531:	
;Automated Solar Panel Orientation Setter.c: 222: TMR1L = 0xB0;
	movlw	(0B0h)
	movwf	(14)	;volatile
	line	223
;Automated Solar Panel Orientation Setter.c: 223: TMR1H = 0x3C;
	movlw	(03Ch)
	movwf	(15)	;volatile
	goto	i1l4533
	line	224
	
i1l914:	
	line	225
	
i1l4533:	
;Automated Solar Panel Orientation Setter.c: 224: }
;Automated Solar Panel Orientation Setter.c: 225: if( RCIF == 1){
	btfss	(101/8),(101)&7
	goto	u516_21
	goto	u516_20
u516_21:
	goto	i1l4553
u516_20:
	line	226
	
i1l4535:	
;Automated Solar Panel Orientation Setter.c: 226: if ((FERR == 0) && (OERR == 0))
	btfsc	(194/8),(194)&7
	goto	u517_21
	goto	u517_20
u517_21:
	goto	i1l921
u517_20:
	
i1l4537:	
	btfsc	(193/8),(193)&7
	goto	u518_21
	goto	u518_20
u518_21:
	goto	i1l921
u518_20:
	line	228
	
i1l4539:	
;Automated Solar Panel Orientation Setter.c: 227: {
;Automated Solar Panel Orientation Setter.c: 228: wtmp = RCREG;
	movf	(26),w	;volatile
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	movwf	(_wtmp)
	line	229
;Automated Solar Panel Orientation Setter.c: 229: if( RCREG=='*' || j > 20-1 ){
	movf	(26),w	;volatile
	xorlw	02Ah
	skipnz
	goto	u519_21
	goto	u519_20
u519_21:
	goto	i1l924
u519_20:
	
i1l4541:	
	movlw	(014h)
	subwf	(_j),w
	skipc
	goto	u520_21
	goto	u520_20
u520_21:
	goto	i1l4543
u520_20:
	
i1l924:	
	line	230
;Automated Solar Panel Orientation Setter.c: 230: j=0;
	clrf	(_j)
	goto	i1l4543
	line	231
	
i1l922:	
	line	232
	
i1l4543:	
;Automated Solar Panel Orientation Setter.c: 231: }
;Automated Solar Panel Orientation Setter.c: 232: buffer[j] = RCREG;
	movf	(26),w	;volatile
	movwf	(??_isr+0)+0
	movf	(_j),w
	addlw	_buffer&0ffh
	movwf	fsr0
	movf	(??_isr+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	233
	
i1l4545:	
;Automated Solar Panel Orientation Setter.c: 233: j ++;
	movlw	(01h)
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	addwf	(_j),f
	line	234
;Automated Solar Panel Orientation Setter.c: 234: }
	goto	i1l4551
	line	235
	
i1l921:	
	line	237
;Automated Solar Panel Orientation Setter.c: 235: else
;Automated Solar Panel Orientation Setter.c: 236: {
;Automated Solar Panel Orientation Setter.c: 237: CREN = 0;
	bcf	(196/8),(196)&7
	line	238
;Automated Solar Panel Orientation Setter.c: 238: FERR = 0;
	bcf	(194/8),(194)&7
	line	239
	
i1l4547:	
;Automated Solar Panel Orientation Setter.c: 239: wtmp = RCREG;
	movf	(26),w	;volatile
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	movwf	(_wtmp)
	line	240
;Automated Solar Panel Orientation Setter.c: 240: wtmp = RCREG;
	movf	(26),w	;volatile
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	movwf	(_wtmp)
	line	241
	
i1l4549:	
;Automated Solar Panel Orientation Setter.c: 241: CREN = 1;
	bsf	(196/8),(196)&7
	goto	i1l4551
	line	242
	
i1l925:	
	line	243
	
i1l4551:	
;Automated Solar Panel Orientation Setter.c: 242: }
;Automated Solar Panel Orientation Setter.c: 243: RCIF = 0;
	bcf	(101/8),(101)&7
	goto	i1l4553
	line	244
	
i1l920:	
	line	245
	
i1l4553:	
;Automated Solar Panel Orientation Setter.c: 244: }
;Automated Solar Panel Orientation Setter.c: 245: if(OERR == 1)
	btfss	(193/8),(193)&7
	goto	u521_21
	goto	u521_20
u521_21:
	goto	i1l927
u521_20:
	line	247
	
i1l4555:	
;Automated Solar Panel Orientation Setter.c: 246: {
;Automated Solar Panel Orientation Setter.c: 247: CREN = 0;
	bcf	(196/8),(196)&7
	line	249
	
i1l4557:	
;Automated Solar Panel Orientation Setter.c: 249: wtmp = RCREG;
	movf	(26),w	;volatile
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	movwf	(_wtmp)
	line	250
;Automated Solar Panel Orientation Setter.c: 250: wtmp = RCREG;
	movf	(26),w	;volatile
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	movwf	(_wtmp)
	line	251
	
i1l4559:	
;Automated Solar Panel Orientation Setter.c: 251: CREN = 1;
	bsf	(196/8),(196)&7
	goto	i1l927
	line	252
	
i1l926:	
	line	254
	
i1l927:	
	movf	(??_isr+4),w
	movwf	btemp+1
	movf	(??_isr+3),w
	movwf	pclath
	movf	(??_isr+2),w
	movwf	fsr0
	swapf	(??_isr+1)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_isr
	__end_of_isr:
;; =============== function _isr ends ============

	signat	_isr,88
	global	i1_clr_display
psect	text656,local,class=CODE,delta=2
global __ptext656
__ptext656:

;; *************** function i1_clr_display *****************
;; Defined at:
;;		line 176 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\lcdV2.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_lcd_add
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text656
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\lcdV2.h"
	line	176
	global	__size_ofi1_clr_display
	__size_ofi1_clr_display	equ	__end_ofi1_clr_display-i1_clr_display
	
i1_clr_display:	
	opt	stack 2
; Regs used in i1_clr_display: [wreg+status,2+status,0+pclath+cstack]
	line	177
	
i1l4773:	
;lcdV2.h: 177: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	178
	
i1l4775:	
;lcdV2.h: 178: _delay(20);
	opt asmopt_off
movlw	6
movwf	(??i1_clr_display+0)+0,f
u744_27:
decfsz	(??i1_clr_display+0)+0,f
	goto	u744_27
	clrwdt
opt asmopt_on

	line	179
	
i1l4777:	
;lcdV2.h: 179: lcd_data = 0b00000001;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_lcd_data)
	bsf	status,0
	rlf	(_lcd_data),f
	line	180
	
i1l4779:	
;lcdV2.h: 180: lcd_add();
	fcall	i1_lcd_add
	line	181
	
i1l4781:	
;lcdV2.h: 181: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??i1_clr_display+0)+0+1),f
	movlw	251
movwf	((??i1_clr_display+0)+0),f
u745_27:
	decfsz	((??i1_clr_display+0)+0),f
	goto	u745_27
	decfsz	((??i1_clr_display+0)+0+1),f
	goto	u745_27
	nop2
opt asmopt_on

	line	182
	
i1l4783:	
;lcdV2.h: 182: RC2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	line	183
	
i1l798:	
	return
	opt stack 0
GLOBAL	__end_ofi1_clr_display
	__end_ofi1_clr_display:
;; =============== function i1_clr_display ends ============

	signat	i1_clr_display,88
	global	i1_lcd_add
psect	text657,local,class=CODE,delta=2
global __ptext657
__ptext657:

;; *************** function i1_lcd_add *****************
;; Defined at:
;;		line 217 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\lcdV2.h"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1_clr_display
;; This function uses a non-reentrant model
;;
psect	text657
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\lcdV2.h"
	line	217
	global	__size_ofi1_lcd_add
	__size_ofi1_lcd_add	equ	__end_ofi1_lcd_add-i1_lcd_add
	
i1_lcd_add:	
	opt	stack 2
; Regs used in i1_lcd_add: [wreg+status,2+status,0]
	line	218
	
i1l4785:	
;lcdV2.h: 218: lcd_data_high = lcd_data >> 4;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??i1_lcd_add+0)+0
	movlw	04h
u582_25:
	clrc
	rrf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u582_25
	movf	0+(??i1_lcd_add+0)+0,w
	movwf	(??i1_lcd_add+1)+0
	movf	(??i1_lcd_add+1)+0,w
	movwf	(_lcd_data_high)
	line	219
;lcdV2.h: 219: lcd_data_low = lcd_data << 4;
	movf	(_lcd_data),w
	movwf	(??i1_lcd_add+0)+0
	movlw	(04h)-1
u583_25:
	clrc
	rlf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u583_25
	clrc
	rlf	(??i1_lcd_add+0)+0,w
	movwf	(??i1_lcd_add+1)+0
	movf	(??i1_lcd_add+1)+0,w
	movwf	(_lcd_data_low)
	line	220
;lcdV2.h: 220: lcd_data_low = lcd_data_low >> 4;
	movf	(_lcd_data_low),w
	movwf	(??i1_lcd_add+0)+0
	movlw	04h
u584_25:
	clrc
	rrf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u584_25
	movf	0+(??i1_lcd_add+0)+0,w
	movwf	(??i1_lcd_add+1)+0
	movf	(??i1_lcd_add+1)+0,w
	movwf	(_lcd_data_low)
	line	222
	
i1l4787:	
;lcdV2.h: 222: bit0 = lcd_data;
	bcf	(_bit0/8),(_bit0)&7
	btfss	(_lcd_data),0
	goto	u585_25
	bsf	(_bit0/8),(_bit0)&7
u585_25:

	line	223
;lcdV2.h: 223: bit1 = lcd_data>>1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??i1_lcd_add+0)+0
	movlw	01h
u586_25:
	clrc
	rrf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u586_25
	bcf	(_bit1/8),(_bit1)&7
	btfss	0+(??i1_lcd_add+0)+0,0
	goto	u587_25
	bsf	(_bit1/8),(_bit1)&7
u587_25:

	line	224
;lcdV2.h: 224: bit2 = lcd_data>>2;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??i1_lcd_add+0)+0
	movlw	02h
u588_25:
	clrc
	rrf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u588_25
	bcf	(_bit2/8),(_bit2)&7
	btfss	0+(??i1_lcd_add+0)+0,0
	goto	u589_25
	bsf	(_bit2/8),(_bit2)&7
u589_25:

	line	225
;lcdV2.h: 225: bit3 = lcd_data>>3;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??i1_lcd_add+0)+0
	movlw	03h
u590_25:
	clrc
	rrf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u590_25
	bcf	(_bit3/8),(_bit3)&7
	btfss	0+(??i1_lcd_add+0)+0,0
	goto	u591_25
	bsf	(_bit3/8),(_bit3)&7
u591_25:

	line	226
;lcdV2.h: 226: bit4 = lcd_data>>4;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??i1_lcd_add+0)+0
	movlw	04h
u592_25:
	clrc
	rrf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u592_25
	bcf	(_bit4/8),(_bit4)&7
	btfss	0+(??i1_lcd_add+0)+0,0
	goto	u593_25
	bsf	(_bit4/8),(_bit4)&7
u593_25:

	line	227
;lcdV2.h: 227: bit5 = lcd_data>>5;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??i1_lcd_add+0)+0
	movlw	05h
u594_25:
	clrc
	rrf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u594_25
	bcf	(_bit5/8),(_bit5)&7
	btfss	0+(??i1_lcd_add+0)+0,0
	goto	u595_25
	bsf	(_bit5/8),(_bit5)&7
u595_25:

	line	228
;lcdV2.h: 228: bit6 = lcd_data>>6;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??i1_lcd_add+0)+0
	movlw	06h
u596_25:
	clrc
	rrf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u596_25
	bcf	(_bit6/8),(_bit6)&7
	btfss	0+(??i1_lcd_add+0)+0,0
	goto	u597_25
	bsf	(_bit6/8),(_bit6)&7
u597_25:

	line	229
;lcdV2.h: 229: bit7 = lcd_data>>7;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??i1_lcd_add+0)+0
	movlw	07h
u598_25:
	clrc
	rrf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u598_25
	bcf	(_bit7/8),(_bit7)&7
	btfss	0+(??i1_lcd_add+0)+0,0
	goto	u599_25
	bsf	(_bit7/8),(_bit7)&7
u599_25:

	line	231
	
i1l4789:	
;lcdV2.h: 231: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	232
	
i1l4791:	
;lcdV2.h: 232: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	233
	
i1l4793:	
;lcdV2.h: 233: RC3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	line	234
	
i1l4795:	
;lcdV2.h: 234: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	236
	
i1l4797:	
;lcdV2.h: 236: RC1 = bit4;
	btfsc	(_bit4/8),(_bit4)&7
	goto	u600_21
	goto	u600_20
	
u600_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u601_24
u600_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u601_24:
	line	237
	
i1l4799:	
;lcdV2.h: 237: RD0 = bit5;
	btfsc	(_bit5/8),(_bit5)&7
	goto	u602_21
	goto	u602_20
	
u602_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	goto	u603_24
u602_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
u603_24:
	line	238
	
i1l4801:	
;lcdV2.h: 238: RC0 = bit6;
	btfsc	(_bit6/8),(_bit6)&7
	goto	u604_21
	goto	u604_20
	
u604_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u605_24
u604_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u605_24:
	line	239
	
i1l4803:	
;lcdV2.h: 239: RD1 = bit7;
	btfsc	(_bit7/8),(_bit7)&7
	goto	u606_21
	goto	u606_20
	
u606_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	goto	u607_24
u606_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
u607_24:
	line	241
	
i1l4805:	
;lcdV2.h: 241: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	242
	
i1l4807:	
;lcdV2.h: 242: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	243
	
i1l4809:	
;lcdV2.h: 243: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	247
	
i1l4811:	
;lcdV2.h: 247: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	248
	
i1l4813:	
;lcdV2.h: 248: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	249
	
i1l4815:	
;lcdV2.h: 249: RC3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	line	250
	
i1l4817:	
;lcdV2.h: 250: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	252
	
i1l4819:	
;lcdV2.h: 252: RC1 = bit0;
	btfsc	(_bit0/8),(_bit0)&7
	goto	u608_21
	goto	u608_20
	
u608_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u609_24
u608_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u609_24:
	line	253
	
i1l4821:	
;lcdV2.h: 253: RD0 = bit1;
	btfsc	(_bit1/8),(_bit1)&7
	goto	u610_21
	goto	u610_20
	
u610_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	goto	u611_24
u610_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
u611_24:
	line	254
	
i1l4823:	
;lcdV2.h: 254: RC0 = bit2;
	btfsc	(_bit2/8),(_bit2)&7
	goto	u612_21
	goto	u612_20
	
u612_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u613_24
u612_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u613_24:
	line	255
	
i1l4825:	
;lcdV2.h: 255: RD1 = bit3;
	btfsc	(_bit3/8),(_bit3)&7
	goto	u614_21
	goto	u614_20
	
u614_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	goto	u615_24
u614_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
u615_24:
	line	257
	
i1l4827:	
;lcdV2.h: 257: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	258
	
i1l4829:	
;lcdV2.h: 258: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	259
	
i1l4831:	
;lcdV2.h: 259: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	260
	
i1l811:	
	return
	opt stack 0
GLOBAL	__end_ofi1_lcd_add
	__end_ofi1_lcd_add:
;; =============== function i1_lcd_add ends ============

	signat	i1_lcd_add,88
	global	i1___lwmod
psect	text658,local,class=CODE,delta=2
global __ptext658
__ptext658:

;; *************** function i1___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  __lwmod         2    0[COMMON] unsigned int 
;;  __lwmod         2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  __lwmod         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text658
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_ofi1___lwmod
	__size_ofi1___lwmod	equ	__end_ofi1___lwmod-i1___lwmod
	
i1___lwmod:	
	opt	stack 3
; Regs used in i1___lwmod: [wreg+status,2+status,0]
	line	8
	
i1l4833:	
	movf	(i1___lwmod@divisor+1),w
	iorwf	(i1___lwmod@divisor),w
	skipnz
	goto	u616_21
	goto	u616_20
u616_21:
	goto	i1l4851
u616_20:
	line	9
	
i1l4835:	
	clrf	(i1___lwmod@counter)
	bsf	status,0
	rlf	(i1___lwmod@counter),f
	line	10
	goto	i1l4841
	
i1l1815:	
	line	11
	
i1l4837:	
	movlw	01h
	
u617_25:
	clrc
	rlf	(i1___lwmod@divisor),f
	rlf	(i1___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u617_25
	line	12
	
i1l4839:	
	movlw	(01h)
	movwf	(??i1___lwmod+0)+0
	movf	(??i1___lwmod+0)+0,w
	addwf	(i1___lwmod@counter),f
	goto	i1l4841
	line	13
	
i1l1814:	
	line	10
	
i1l4841:	
	btfss	(i1___lwmod@divisor+1),(15)&7
	goto	u618_21
	goto	u618_20
u618_21:
	goto	i1l4837
u618_20:
	goto	i1l4843
	
i1l1816:	
	goto	i1l4843
	line	14
	
i1l1817:	
	line	15
	
i1l4843:	
	movf	(i1___lwmod@divisor+1),w
	subwf	(i1___lwmod@dividend+1),w
	skipz
	goto	u619_25
	movf	(i1___lwmod@divisor),w
	subwf	(i1___lwmod@dividend),w
u619_25:
	skipc
	goto	u619_21
	goto	u619_20
u619_21:
	goto	i1l4847
u619_20:
	line	16
	
i1l4845:	
	movf	(i1___lwmod@divisor),w
	subwf	(i1___lwmod@dividend),f
	movf	(i1___lwmod@divisor+1),w
	skipc
	decf	(i1___lwmod@dividend+1),f
	subwf	(i1___lwmod@dividend+1),f
	goto	i1l4847
	
i1l1818:	
	line	17
	
i1l4847:	
	movlw	01h
	
u620_25:
	clrc
	rrf	(i1___lwmod@divisor+1),f
	rrf	(i1___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u620_25
	line	18
	
i1l4849:	
	movlw	low(01h)
	subwf	(i1___lwmod@counter),f
	btfss	status,2
	goto	u621_21
	goto	u621_20
u621_21:
	goto	i1l4843
u621_20:
	goto	i1l4851
	
i1l1819:	
	goto	i1l4851
	line	19
	
i1l1813:	
	line	20
	
i1l4851:	
	movf	(i1___lwmod@dividend+1),w
	clrf	(?i1___lwmod+1)
	addwf	(?i1___lwmod+1)
	movf	(i1___lwmod@dividend),w
	clrf	(?i1___lwmod)
	addwf	(?i1___lwmod)

	goto	i1l1820
	
i1l4853:	
	line	21
	
i1l1820:	
	return
	opt stack 0
GLOBAL	__end_ofi1___lwmod
	__end_ofi1___lwmod:
;; =============== function i1___lwmod ends ============

	signat	i1___lwmod,90
	global	i1_lcd_init
psect	text659,local,class=CODE,delta=2
global __ptext659
__ptext659:

;; *************** function i1_lcd_init *****************
;; Defined at:
;;		line 60 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\lcdV2.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  lcd_init        2    0[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text659
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\Test2\lcdV2.h"
	line	60
	global	__size_ofi1_lcd_init
	__size_ofi1_lcd_init	equ	__end_ofi1_lcd_init-i1_lcd_init
	
i1_lcd_init:	
	opt	stack 3
; Regs used in i1_lcd_init: [wreg+status,2]
	line	62
	
i1l4731:	
;lcdV2.h: 62: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	66
;lcdV2.h: 64: unsigned int DelayLCD;
;lcdV2.h: 66: RC2 = 0;
	bcf	(58/8),(58)&7
	line	67
;lcdV2.h: 67: RD1 = 0;
	bcf	(65/8),(65)&7
	line	68
;lcdV2.h: 68: RC0 = 0;
	bcf	(56/8),(56)&7
	line	69
;lcdV2.h: 69: RD0 = 1;
	bsf	(64/8),(64)&7
	line	70
;lcdV2.h: 70: RC1 = 0;
	bcf	(57/8),(57)&7
	line	71
;lcdV2.h: 71: RC3 = 1;
	bsf	(59/8),(59)&7
	line	72
;lcdV2.h: 72: RC3 = 0;
	bcf	(59/8),(59)&7
	line	73
;lcdV2.h: 73: RD1 = 1;
	bsf	(65/8),(65)&7
	line	74
;lcdV2.h: 74: RC0 = 0;
	bcf	(56/8),(56)&7
	line	75
;lcdV2.h: 75: RD0 = 0;
	bcf	(64/8),(64)&7
	line	76
;lcdV2.h: 76: RC1 = 0;
	bcf	(57/8),(57)&7
	line	77
;lcdV2.h: 77: RC3 = 1;
	bsf	(59/8),(59)&7
	line	78
;lcdV2.h: 78: RC3 = 0;
	bcf	(59/8),(59)&7
	line	79
	
i1l4733:	
;lcdV2.h: 79: for(DelayLCD=0;DelayLCD<2500;DelayLCD++);
	clrf	(i1lcd_init@DelayLCD)
	clrf	(i1lcd_init@DelayLCD+1)
	
i1l4735:	
	movlw	high(09C4h)
	subwf	(i1lcd_init@DelayLCD+1),w
	movlw	low(09C4h)
	skipnz
	subwf	(i1lcd_init@DelayLCD),w
	skipc
	goto	u572_21
	goto	u572_20
u572_21:
	goto	i1l4739
u572_20:
	goto	i1l777
	
i1l4737:	
	goto	i1l777
	
i1l776:	
	
i1l4739:	
	movlw	low(01h)
	addwf	(i1lcd_init@DelayLCD),f
	skipnc
	incf	(i1lcd_init@DelayLCD+1),f
	movlw	high(01h)
	addwf	(i1lcd_init@DelayLCD+1),f
	movlw	high(09C4h)
	subwf	(i1lcd_init@DelayLCD+1),w
	movlw	low(09C4h)
	skipnz
	subwf	(i1lcd_init@DelayLCD),w
	skipc
	goto	u573_21
	goto	u573_20
u573_21:
	goto	i1l4739
u573_20:
	
i1l777:	
	line	82
;lcdV2.h: 82: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	83
;lcdV2.h: 83: RD1 = 0;
	bcf	(65/8),(65)&7
	line	84
;lcdV2.h: 84: RC0 = 0;
	bcf	(56/8),(56)&7
	line	85
;lcdV2.h: 85: RD0 = 1;
	bsf	(64/8),(64)&7
	line	86
;lcdV2.h: 86: RC1 = 0;
	bcf	(57/8),(57)&7
	line	87
;lcdV2.h: 87: RC3 = 1;
	bsf	(59/8),(59)&7
	line	88
;lcdV2.h: 88: RC3 = 0;
	bcf	(59/8),(59)&7
	line	89
;lcdV2.h: 89: RD1 = 1;
	bsf	(65/8),(65)&7
	line	90
;lcdV2.h: 90: RC0 = 0;
	bcf	(56/8),(56)&7
	line	91
;lcdV2.h: 91: RD0 = 0;
	bcf	(64/8),(64)&7
	line	92
;lcdV2.h: 92: RC1 = 0;
	bcf	(57/8),(57)&7
	line	93
;lcdV2.h: 93: RC3 = 1;
	bsf	(59/8),(59)&7
	line	94
;lcdV2.h: 94: RC3 = 0;
	bcf	(59/8),(59)&7
	line	95
	
i1l4741:	
;lcdV2.h: 95: for(DelayLCD=0;DelayLCD<2500;DelayLCD++);
	clrf	(i1lcd_init@DelayLCD)
	clrf	(i1lcd_init@DelayLCD+1)
	
i1l4743:	
	movlw	high(09C4h)
	subwf	(i1lcd_init@DelayLCD+1),w
	movlw	low(09C4h)
	skipnz
	subwf	(i1lcd_init@DelayLCD),w
	skipc
	goto	u574_21
	goto	u574_20
u574_21:
	goto	i1l4747
u574_20:
	goto	i1l779
	
i1l4745:	
	goto	i1l779
	
i1l778:	
	
i1l4747:	
	movlw	low(01h)
	addwf	(i1lcd_init@DelayLCD),f
	skipnc
	incf	(i1lcd_init@DelayLCD+1),f
	movlw	high(01h)
	addwf	(i1lcd_init@DelayLCD+1),f
	movlw	high(09C4h)
	subwf	(i1lcd_init@DelayLCD+1),w
	movlw	low(09C4h)
	skipnz
	subwf	(i1lcd_init@DelayLCD),w
	skipc
	goto	u575_21
	goto	u575_20
u575_21:
	goto	i1l4747
u575_20:
	
i1l779:	
	line	98
;lcdV2.h: 98: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	99
;lcdV2.h: 99: RD1 = 0;
	bcf	(65/8),(65)&7
	line	100
;lcdV2.h: 100: RC0 = 0;
	bcf	(56/8),(56)&7
	line	101
;lcdV2.h: 101: RD0 = 0;
	bcf	(64/8),(64)&7
	line	102
;lcdV2.h: 102: RC1 = 0;
	bcf	(57/8),(57)&7
	line	103
;lcdV2.h: 103: RC3 = 1;
	bsf	(59/8),(59)&7
	line	104
;lcdV2.h: 104: RC3 = 0;
	bcf	(59/8),(59)&7
	line	105
;lcdV2.h: 105: RD1 = 0;
	bcf	(65/8),(65)&7
	line	106
;lcdV2.h: 106: RC0 = 1;
	bsf	(56/8),(56)&7
	line	107
;lcdV2.h: 107: RD0 = 1;
	bsf	(64/8),(64)&7
	line	108
;lcdV2.h: 108: RC1 = 0;
	bcf	(57/8),(57)&7
	line	109
;lcdV2.h: 109: RC3 = 1;
	bsf	(59/8),(59)&7
	line	110
;lcdV2.h: 110: RC3 = 0;
	bcf	(59/8),(59)&7
	line	111
	
i1l4749:	
;lcdV2.h: 111: for(DelayLCD=0;DelayLCD<2500;DelayLCD++);
	clrf	(i1lcd_init@DelayLCD)
	clrf	(i1lcd_init@DelayLCD+1)
	
i1l4751:	
	movlw	high(09C4h)
	subwf	(i1lcd_init@DelayLCD+1),w
	movlw	low(09C4h)
	skipnz
	subwf	(i1lcd_init@DelayLCD),w
	skipc
	goto	u576_21
	goto	u576_20
u576_21:
	goto	i1l4755
u576_20:
	goto	i1l781
	
i1l4753:	
	goto	i1l781
	
i1l780:	
	
i1l4755:	
	movlw	low(01h)
	addwf	(i1lcd_init@DelayLCD),f
	skipnc
	incf	(i1lcd_init@DelayLCD+1),f
	movlw	high(01h)
	addwf	(i1lcd_init@DelayLCD+1),f
	movlw	high(09C4h)
	subwf	(i1lcd_init@DelayLCD+1),w
	movlw	low(09C4h)
	skipnz
	subwf	(i1lcd_init@DelayLCD),w
	skipc
	goto	u577_21
	goto	u577_20
u577_21:
	goto	i1l4755
u577_20:
	
i1l781:	
	line	114
;lcdV2.h: 114: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	115
;lcdV2.h: 115: RD1 = 0;
	bcf	(65/8),(65)&7
	line	116
;lcdV2.h: 116: RC0 = 0;
	bcf	(56/8),(56)&7
	line	117
;lcdV2.h: 117: RD0 = 0;
	bcf	(64/8),(64)&7
	line	118
;lcdV2.h: 118: RC1 = 0;
	bcf	(57/8),(57)&7
	line	119
;lcdV2.h: 119: RC3 = 1;
	bsf	(59/8),(59)&7
	line	120
;lcdV2.h: 120: RC3 = 0;
	bcf	(59/8),(59)&7
	line	121
;lcdV2.h: 121: RD1 = 1;
	bsf	(65/8),(65)&7
	line	122
;lcdV2.h: 122: RC0 = 1;
	bsf	(56/8),(56)&7
	line	123
;lcdV2.h: 123: RD0 = 0;
	bcf	(64/8),(64)&7
	line	124
;lcdV2.h: 124: RC1 = 1;
	bsf	(57/8),(57)&7
	line	125
;lcdV2.h: 125: RC3 = 1;
	bsf	(59/8),(59)&7
	line	126
;lcdV2.h: 126: RC3 = 0;
	bcf	(59/8),(59)&7
	line	127
	
i1l4757:	
;lcdV2.h: 127: for(DelayLCD=0;DelayLCD<2500;DelayLCD++);
	clrf	(i1lcd_init@DelayLCD)
	clrf	(i1lcd_init@DelayLCD+1)
	
i1l4759:	
	movlw	high(09C4h)
	subwf	(i1lcd_init@DelayLCD+1),w
	movlw	low(09C4h)
	skipnz
	subwf	(i1lcd_init@DelayLCD),w
	skipc
	goto	u578_21
	goto	u578_20
u578_21:
	goto	i1l4763
u578_20:
	goto	i1l783
	
i1l4761:	
	goto	i1l783
	
i1l782:	
	
i1l4763:	
	movlw	low(01h)
	addwf	(i1lcd_init@DelayLCD),f
	skipnc
	incf	(i1lcd_init@DelayLCD+1),f
	movlw	high(01h)
	addwf	(i1lcd_init@DelayLCD+1),f
	movlw	high(09C4h)
	subwf	(i1lcd_init@DelayLCD+1),w
	movlw	low(09C4h)
	skipnz
	subwf	(i1lcd_init@DelayLCD),w
	skipc
	goto	u579_21
	goto	u579_20
u579_21:
	goto	i1l4763
u579_20:
	
i1l783:	
	line	130
;lcdV2.h: 130: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	131
;lcdV2.h: 131: RD1 = 0;
	bcf	(65/8),(65)&7
	line	132
;lcdV2.h: 132: RC0 = 0;
	bcf	(56/8),(56)&7
	line	133
;lcdV2.h: 133: RD0 = 0;
	bcf	(64/8),(64)&7
	line	134
;lcdV2.h: 134: RC1 = 0;
	bcf	(57/8),(57)&7
	line	135
;lcdV2.h: 135: RC3 = 1;
	bsf	(59/8),(59)&7
	line	136
;lcdV2.h: 136: RC3 = 0;
	bcf	(59/8),(59)&7
	line	137
;lcdV2.h: 137: RD1 = 0;
	bcf	(65/8),(65)&7
	line	138
;lcdV2.h: 138: RC0 = 0;
	bcf	(56/8),(56)&7
	line	139
;lcdV2.h: 139: RD0 = 0;
	bcf	(64/8),(64)&7
	line	140
;lcdV2.h: 140: RC1 = 1;
	bsf	(57/8),(57)&7
	line	141
;lcdV2.h: 141: RC3 = 1;
	bsf	(59/8),(59)&7
	line	142
;lcdV2.h: 142: RC3 = 0;
	bcf	(59/8),(59)&7
	line	143
	
i1l4765:	
;lcdV2.h: 143: for(DelayLCD=0;DelayLCD<2500;DelayLCD++);
	clrf	(i1lcd_init@DelayLCD)
	clrf	(i1lcd_init@DelayLCD+1)
	
i1l4767:	
	movlw	high(09C4h)
	subwf	(i1lcd_init@DelayLCD+1),w
	movlw	low(09C4h)
	skipnz
	subwf	(i1lcd_init@DelayLCD),w
	skipc
	goto	u580_21
	goto	u580_20
u580_21:
	goto	i1l4771
u580_20:
	goto	i1l786
	
i1l4769:	
	goto	i1l786
	
i1l784:	
	
i1l4771:	
	movlw	low(01h)
	addwf	(i1lcd_init@DelayLCD),f
	skipnc
	incf	(i1lcd_init@DelayLCD+1),f
	movlw	high(01h)
	addwf	(i1lcd_init@DelayLCD+1),f
	movlw	high(09C4h)
	subwf	(i1lcd_init@DelayLCD+1),w
	movlw	low(09C4h)
	skipnz
	subwf	(i1lcd_init@DelayLCD),w
	skipc
	goto	u581_21
	goto	u581_20
u581_21:
	goto	i1l4771
u581_20:
	goto	i1l786
	
i1l785:	
	line	146
	
i1l786:	
	return
	opt stack 0
GLOBAL	__end_ofi1_lcd_init
	__end_ofi1_lcd_init:
;; =============== function i1_lcd_init ends ============

	signat	i1_lcd_init,88
psect	text660,local,class=CODE,delta=2
global __ptext660
__ptext660:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
