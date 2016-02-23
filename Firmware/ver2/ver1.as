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
	FNCALL	_main,_CheckKeyPad
	FNCALL	_printf,_putch
	FNCALL	_printf,_isdigit
	FNCALL	_printf,___wmul
	FNCALL	_printf,___bmul
	FNCALL	_printf,___lwdiv
	FNCALL	_printf,___lwmod
	FNCALL	_CheckKeyPad,_RowNo
	FNCALL	_CheckKeyPad,_ColomnNo
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
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\Automated Solar Panel Orientation Setter.c"
	line	29

;initializer for _bed_nu
	retlw	01h
	line	30

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
	global	_lcd_data_low
	global	_state
	global	_v
	global	_w
	global	_wtmp
	global	_x
	global	_y
	global	_z
	global	_nop
	global	_bit0
	global	_bit1
	global	_bit2
	global	_bit3
	global	_bit4
	global	_bit5
	global	_bit6
	global	_bit7
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
	global	_RC4
_RC4	set	60
	global	_RC5
_RC5	set	61
	global	_RCIF
_RCIF	set	101
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_RD4
_RD4	set	68
	global	_RD5
_RD5	set	69
	global	_RD6
_RD6	set	70
	global	_RD7
_RD7	set	71
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
	
STR_9:	
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
	file	"ver1.as"
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

psect	bitbssBANK0,class=BANK0,bit,space=1
global __pbitbssBANK0
__pbitbssBANK0:
_nop:
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

_lcd_data_low:
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
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\Automated Solar Panel Orientation Setter.c"
	line	29
_bed_nu:
       ds      1

psect	dataBANK0
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\Automated Solar Panel Orientation Setter.c"
	line	30
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
; Clear objects allocated to BITBANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbitbssBANK0/8)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+023h)
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
	global	?_CheckKeyPad
?_CheckKeyPad:	; 1 bytes @ 0x0
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
	global	??_enableInterrupt
??_enableInterrupt:	; 0 bytes @ 0x0
	global	??_Timer1_Init
??_Timer1_Init:	; 0 bytes @ 0x0
	global	?___bmul
?___bmul:	; 1 bytes @ 0x0
	global	?_RowNo
?_RowNo:	; 2 bytes @ 0x0
	global	?_ColomnNo
?_ColomnNo:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	_isdigit$1773
_isdigit$1773:	; 1 bytes @ 0x0
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x0
	global	lcd_init@DelayLCD
lcd_init@DelayLCD:	; 2 bytes @ 0x0
	global	ColomnNo@rowNo
ColomnNo@rowNo:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	ds	1
	global	??___bmul
??___bmul:	; 0 bytes @ 0x1
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x1
	ds	1
	global	??_RowNo
??_RowNo:	; 0 bytes @ 0x2
	global	??_ColomnNo
??_ColomnNo:	; 0 bytes @ 0x2
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
	global	RowNo@row
RowNo@row:	; 2 bytes @ 0x2
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
	global	??_CheckKeyPad
??_CheckKeyPad:	; 0 bytes @ 0x4
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
	global	position@post
position@post:	; 1 bytes @ 0x5
	global	CheckKeyPad@charactor
CheckKeyPad@charactor:	; 1 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
	global	position@row
position@row:	; 1 bytes @ 0x6
	global	CheckKeyPad@colomnNo
CheckKeyPad@colomnNo:	; 2 bytes @ 0x6
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x8
	global	CheckKeyPad@rowNo
CheckKeyPad@rowNo:	; 2 bytes @ 0x8
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
	global	_printf$1414
_printf$1414:	; 2 bytes @ 0x13
	ds	2
	global	_printf$1415
_printf$1415:	; 2 bytes @ 0x15
	ds	2
	global	_printf$1418
_printf$1418:	; 1 bytes @ 0x17
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
	global	main@pressedKey
main@pressedKey:	; 1 bytes @ 0x26
	ds	1
;;Data sizes: Strings 174, constant 30, data 2, bss 64, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          13     11      12
;; BANK0           80     39      77
;; BANK1           80      0      29
;; BANK3           85      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?i1___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?_RowNo	int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; printf$1418	PTR const unsigned char  size(1) Largest target is 17
;;		 -> STR_10(CODE[17]), STR_9(CODE[17]), 
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
;; S1401$_cp	PTR const unsigned char  size(1) Largest target is 1
;;		 -> printf@c(BANK0[1]), 
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 1
;;		 -> printf@c(BANK0[1]), 
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
;;   _CheckKeyPad->_RowNo
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
;; (0) _main                                                 4     4      0    4370
;;                                             35 BANK0      4     4      0
;;                      _Setup_IOports
;;                          _atod_init
;;                           _lcd_init
;;                        _clr_display
;;                        _Serial_Init
;;                        _Timer1_Init
;;                    _enableInterrupt
;;                             _printf
;;                           _position
;;                        _CheckKeyPad
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
;; (1) _CheckKeyPad                                          6     6      0     994
;;                                              4 BANK0      6     6      0
;;                              _RowNo
;;                           _ColomnNo
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
;; (2) _ColomnNo                                             2     0      2      88
;;                                              0 BANK0      2     0      2
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
;; (2) _RowNo                                                4     2      2      27
;;                                              0 BANK0      4     2      2
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
;;   _CheckKeyPad
;;     _RowNo
;;     _ColomnNo
;;
;; _isr (ROOT)
;;   i1_lcd_init
;;   i1_clr_display
;;     i1_lcd_add
;;   i1___lwmod
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               55      0       0       9        0.0%
;;BITBANK3            55      0       0       8        0.0%
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
;;DATA                 0      0      7F      12        0.0%
;;ABS                  0      0      76       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       9       2        0.0%
;;BANK0               50     27      4D       5       96.3%
;;BITBANK0            50      0       1       4        1.3%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               D      B       C       1       92.3%
;;BITCOMMON            D      0       1       0        7.7%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 75 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\Automated Solar Panel Orientation Setter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  pressedKey      1   38[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
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
;;		_CheckKeyPad
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\Automated Solar Panel Orientation Setter.c"
	line	75
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	79
	
l5866:	
;Automated Solar Panel Orientation Setter.c: 77: char pressedKey;
;Automated Solar Panel Orientation Setter.c: 79: Setup_IOports();
	fcall	_Setup_IOports
	line	82
;Automated Solar Panel Orientation Setter.c: 82: atod_init();
	fcall	_atod_init
	line	86
;Automated Solar Panel Orientation Setter.c: 86: lcd_init();
	fcall	_lcd_init
	line	87
;Automated Solar Panel Orientation Setter.c: 87: clr_display();
	fcall	_clr_display
	line	89
;Automated Solar Panel Orientation Setter.c: 89: Serial_Init();
	fcall	_Serial_Init
	line	90
;Automated Solar Panel Orientation Setter.c: 90: Timer1_Init();
	fcall	_Timer1_Init
	line	91
	
l5868:	
;Automated Solar Panel Orientation Setter.c: 91: enableInterrupt();
	fcall	_enableInterrupt
	line	95
	
l5870:	
;Automated Solar Panel Orientation Setter.c: 95: lcd_init();
	fcall	_lcd_init
	line	96
	
l5872:	
;Automated Solar Panel Orientation Setter.c: 96: clr_display();
	fcall	_clr_display
	line	98
	
l5874:	
;Automated Solar Panel Orientation Setter.c: 98: printf("Body Temperature ");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_printf
	line	99
	
l5876:	
;Automated Solar Panel Orientation Setter.c: 99: position(2,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_position)
	bsf	status,0
	rlf	(?_position),f
	movlw	(02h)
	fcall	_position
	line	100
	
l5878:	
;Automated Solar Panel Orientation Setter.c: 100: printf(" and Heart Rate  ");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_printf
	line	101
	
l5880:	
;Automated Solar Panel Orientation Setter.c: 101: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u8907:
	decfsz	((??_main+0)+0),f
	goto	u8907
	decfsz	((??_main+0)+0+1),f
	goto	u8907
	decfsz	((??_main+0)+0+2),f
	goto	u8907
	nop2
opt asmopt_on

	line	102
;Automated Solar Panel Orientation Setter.c: 102: position(1,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_position)
	bsf	status,0
	rlf	(?_position),f
	movlw	(01h)
	fcall	_position
	line	103
	
l5882:	
;Automated Solar Panel Orientation Setter.c: 103: printf("    Monitoring   ");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_printf
	line	104
	
l5884:	
;Automated Solar Panel Orientation Setter.c: 104: position(2,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_position)
	bsf	status,0
	rlf	(?_position),f
	movlw	(02h)
	fcall	_position
	line	105
;Automated Solar Panel Orientation Setter.c: 105: printf("      System     ");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_printf
	line	106
	
l5886:	
;Automated Solar Panel Orientation Setter.c: 106: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u8917:
	decfsz	((??_main+0)+0),f
	goto	u8917
	decfsz	((??_main+0)+0+1),f
	goto	u8917
	decfsz	((??_main+0)+0+2),f
	goto	u8917
	nop2
opt asmopt_on

	line	107
	
l5888:	
;Automated Solar Panel Orientation Setter.c: 107: position(1,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_position)
	bsf	status,0
	rlf	(?_position),f
	movlw	(01h)
	fcall	_position
	line	108
	
l5890:	
;Automated Solar Panel Orientation Setter.c: 108: printf("       for      ");
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_printf
	line	109
	
l5892:	
;Automated Solar Panel Orientation Setter.c: 109: position(2,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_position)
	bsf	status,0
	rlf	(?_position),f
	movlw	(02h)
	fcall	_position
	line	110
	
l5894:	
;Automated Solar Panel Orientation Setter.c: 110: printf("    Patients    ");
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_printf
	line	111
	
l5896:	
;Automated Solar Panel Orientation Setter.c: 111: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u8927:
	decfsz	((??_main+0)+0),f
	goto	u8927
	decfsz	((??_main+0)+0+1),f
	goto	u8927
	decfsz	((??_main+0)+0+2),f
	goto	u8927
	nop2
opt asmopt_on

	line	112
	
l5898:	
;Automated Solar Panel Orientation Setter.c: 112: position(1,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_position)
	bsf	status,0
	rlf	(?_position),f
	movlw	(01h)
	fcall	_position
	line	113
	
l5900:	
;Automated Solar Panel Orientation Setter.c: 113: printf("H:  62PPM Low   ",HeartRate);
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
	line	114
;Automated Solar Panel Orientation Setter.c: 114: position(2,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_position)
	bsf	status,0
	rlf	(?_position),f
	movlw	(02h)
	fcall	_position
	line	115
	
l5902:	
;Automated Solar Panel Orientation Setter.c: 115: printf("T:  84F   Low   ",analogReadVal);
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
	line	119
	
l5904:	
;Automated Solar Panel Orientation Setter.c: 119: clr_display();
	fcall	_clr_display
	line	120
	
l5906:	
;Automated Solar Panel Orientation Setter.c: 120: state = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_state)
	bsf	status,0
	rlf	(_state),f
	goto	l5922
	line	121
;Automated Solar Panel Orientation Setter.c: 121: while(1){
	
l889:	
	line	122
;Automated Solar Panel Orientation Setter.c: 122: switch (state){
	goto	l5922
	line	127
;Automated Solar Panel Orientation Setter.c: 127: case 1:
	
l891:	
	line	132
	
l5908:	
;Automated Solar Panel Orientation Setter.c: 132: state = 10;
	movlw	(0Ah)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_state)
	line	133
;Automated Solar Panel Orientation Setter.c: 133: break;
	goto	l5922
	line	134
;Automated Solar Panel Orientation Setter.c: 134: case 10 :
	
l893:	
	line	135
;Automated Solar Panel Orientation Setter.c: 135: RC1 = 1;
	bsf	(57/8),(57)&7
	line	138
	
l5910:	
;Automated Solar Panel Orientation Setter.c: 138: pressedKey = CheckKeyPad();
	fcall	_CheckKeyPad
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@pressedKey)
	line	139
	
l5912:	
;Automated Solar Panel Orientation Setter.c: 139: if( pressedKey!='$'){
	movf	(main@pressedKey),w
	xorlw	024h
	skipnz
	goto	u8591
	goto	u8590
u8591:
	goto	l5918
u8590:
	goto	l895
	line	140
	
l5914:	
;Automated Solar Panel Orientation Setter.c: 140: while(!TXIF);
	goto	l895
	
l896:	
	
l895:	
	btfss	(100/8),(100)&7
	goto	u8601
	goto	u8600
u8601:
	goto	l895
u8600:
	goto	l5916
	
l897:	
	line	141
	
l5916:	
;Automated Solar Panel Orientation Setter.c: 141: TXREG = pressedKey;
	movf	(main@pressedKey),w
	movwf	(25)	;volatile
	line	142
;Automated Solar Panel Orientation Setter.c: 142: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_main+0)+0,f
u8937:
	clrwdt
decfsz	(??_main+0)+0,f
	goto	u8937
	nop2	;nop
	clrwdt
opt asmopt_on

	goto	l5918
	line	143
	
l894:	
	line	144
	
l5918:	
;Automated Solar Panel Orientation Setter.c: 143: }
;Automated Solar Panel Orientation Setter.c: 144: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	146
;Automated Solar Panel Orientation Setter.c: 146: break;
	goto	l5922
	line	149
;Automated Solar Panel Orientation Setter.c: 149: case 2 :
	
l898:	
	line	151
;Automated Solar Panel Orientation Setter.c: 151: break;
	goto	l5922
	line	152
;Automated Solar Panel Orientation Setter.c: 152: case 20 :
	
l899:	
	line	154
;Automated Solar Panel Orientation Setter.c: 154: break;
	goto	l5922
	line	155
;Automated Solar Panel Orientation Setter.c: 155: case 3 :
	
l900:	
	goto	l5922
	line	157
	
l901:	
	line	159
;Automated Solar Panel Orientation Setter.c: 157: case 30 :
;Automated Solar Panel Orientation Setter.c: 159: break;
	goto	l5922
	line	163
	
l5920:	
;Automated Solar Panel Orientation Setter.c: 163: }
	goto	l5922
	line	122
	
l890:	
	
l5922:	
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
	goto	l5908
	xorlw	2^1	; case 2
	skipnz
	goto	l5922
	xorlw	3^2	; case 3
	skipnz
	goto	l5922
	xorlw	10^3	; case 10
	skipnz
	goto	l893
	xorlw	20^10	; case 20
	skipnz
	goto	l5922
	xorlw	30^20	; case 30
	skipnz
	goto	l5922
	goto	l5922
	opt asmopt_on

	line	163
	
l892:	
	goto	l5922
	line	164
	
l902:	
	line	121
	goto	l5922
	
l903:	
	line	165
	
l904:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_printf
psect	text902,local,class=CODE,delta=2
global __ptext902
__ptext902:

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
psect	text902
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
	
l5570:	
	movlw	(?_printf)&0ffh
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@ap)
	line	540
	goto	l5864
	
l1091:	
	line	542
	
l5572:	
	movf	(printf@c),w
	xorlw	025h
	skipnz
	goto	u7981
	goto	u7980
u7981:
	goto	l5576
u7980:
	line	545
	
l5574:	
	movf	(printf@c),w
	fcall	_putch
	line	546
	goto	l5864
	line	547
	
l1092:	
	line	550
	
l5576:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(printf@width)
	clrf	(printf@width+1)
	line	552
	clrf	(printf@flag)
	clrf	(printf@flag+1)
	goto	l5588
	line	554
	
l1093:	
	line	555
	goto	l5588
	line	557
	
l1095:	
	line	558
	bsf	(printf@flag)+(3/8),(3)&7
	line	559
	
l5578:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@f),f
	line	560
	goto	l5588
	line	564
	
l1097:	
	line	565
	bsf	(printf@flag)+(0/8),(0)&7
	line	566
	
l5580:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@f),f
	line	567
	goto	l5588
	line	577
	
l1098:	
	line	578
	bsf	(printf@flag)+(11/8),(11)&7
	line	579
	
l5582:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@f),f
	line	580
	goto	l5588
	line	583
	
l1099:	
	line	584
	bsf	(printf@flag)+(2/8),(2)&7
	line	585
	
l5584:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@f),f
	line	586
	goto	l5588
	line	588
	
l5586:	
	goto	l1101
	line	555
	
l1094:	
	
l5588:	
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
	goto	l1097
	xorlw	35^32	; case 35
	skipnz
	goto	l1098
	xorlw	45^35	; case 45
	skipnz
	goto	l1095
	xorlw	48^45	; case 48
	skipnz
	goto	l1099
	goto	l1101
	opt asmopt_on

	line	588
	
l1100:	
	line	589
	goto	l1101
	line	590
	
l1096:	
	goto	l5588
	
l1101:	
	line	597
	btfss	(printf@flag),(3)&7
	goto	u7991
	goto	u7990
u7991:
	goto	l5592
u7990:
	line	598
	
l5590:	
	movlw	low(0FFFBh)
	andwf	(printf@flag),f
	movlw	high(0FFFBh)
	andwf	(printf@flag+1),f
	goto	l5592
	
l1102:	
	line	601
	
l5592:	
	movf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u8001
	goto	u8000
u8001:
	goto	l5602
u8000:
	line	602
	
l5594:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(printf@width)
	clrf	(printf@width+1)
	goto	l5596
	line	603
	
l1104:	
	line	604
	
l5596:	
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
	
l5598:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@f),f
	line	605
	
l5600:	
	movf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u8011
	goto	u8010
u8011:
	goto	l5596
u8010:
	goto	l5610
	
l1105:	
	line	607
	goto	l5610
	
l1103:	
	
l5602:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	xorlw	02Ah
	skipz
	goto	u8021
	goto	u8020
u8021:
	goto	l5610
u8020:
	line	608
	
l5604:	
	movf	(printf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(printf@width)
	incf	fsr0,f
	movf	indf,w
	movwf	(printf@width+1)
	
l5606:	
	movlw	(02h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@ap),f
	line	609
	
l5608:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@f),f
	goto	l5610
	line	611
	
l1107:	
	goto	l5610
	line	614
	
l1106:	
	
l5610:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	xorlw	02Eh
	skipz
	goto	u8031
	goto	u8030
u8031:
	goto	l1108
u8030:
	line	615
	
l5612:	
	bsf	(printf@flag)+(14/8),(14)&7
	line	616
	
l5614:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@f),f
	line	618
	
l5616:	
	movf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	xorlw	02Ah
	skipz
	goto	u8041
	goto	u8040
u8041:
	goto	l1109
u8040:
	line	619
	
l5618:	
	movf	(printf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@prec)
	
l5620:	
	movlw	(02h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@ap),f
	line	620
	
l5622:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@f),f
	line	621
	goto	l5674
	
l1109:	
	line	624
	clrf	(printf@prec)
	line	625
	goto	l5628
	
l1112:	
	line	626
	
l5624:	
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
	
l5626:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@f),f
	goto	l5628
	
l1111:	
	line	625
	
l5628:	
	movf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u8051
	goto	u8050
u8051:
	goto	l5624
u8050:
	goto	l5674
	
l1113:	
	goto	l5674
	line	627
	
l1110:	
	line	628
	goto	l5674
	
l1108:	
	line	629
	clrf	(printf@prec)
	goto	l5674
	line	633
	
l1114:	
	line	638
	goto	l5674
	line	640
	
l1116:	
	line	641
	goto	l1220
	line	692
	
l1118:	
	line	694
	bsf	(printf@flag)+(6/8),(6)&7
	line	696
	goto	l5676
	line	700
	
l1120:	
	goto	l5676
	line	701
	
l1121:	
	line	702
	goto	l5676
	line	715
	
l1122:	
	line	717
	bsf	(printf@flag)+(5/8),(5)&7
	line	721
	
l1123:	
	line	724
	bsf	(printf@flag)+(7/8),(7)&7
	line	726
	goto	l5676
	line	753
	
l1124:	
	line	756
	
l5630:	
	movf	(printf@prec),w
	skipz
	goto	u8060
	goto	l5636
u8060:
	
l5632:	
	movf	(printf@prec),w
	movwf	(??_printf+0)+0
	clrf	(??_printf+0)+0+1
	btfsc	(??_printf+0)+0,7
	decf	(??_printf+0)+0+1,f
	movf	1+(printf@_val)+01h,w
	subwf	1+(??_printf+0)+0,w
	skipz
	goto	u8075
	movf	0+(printf@_val)+01h,w
	subwf	0+(??_printf+0)+0,w
u8075:
	skipnc
	goto	u8071
	goto	u8070
u8071:
	goto	l5636
u8070:
	line	757
	
l5634:	
	movf	(printf@prec),w
	movwf	0+(printf@_val)+01h
	clrf	1+(printf@_val)+01h
	btfsc	0+(printf@_val)+01h,7
	decf	1+(printf@_val)+01h,f
	goto	l5636
	
l1125:	
	line	760
	
l5636:	
	movf	(printf@width+1),w
	subwf	1+(printf@_val)+01h,w
	skipz
	goto	u8085
	movf	(printf@width),w
	subwf	0+(printf@_val)+01h,w
u8085:
	skipnc
	goto	u8081
	goto	u8080
u8081:
	goto	l5640
u8080:
	line	761
	
l5638:	
	movf	0+(printf@_val)+01h,w
	subwf	(printf@width),f
	movf	1+(printf@_val)+01h,w
	skipc
	decf	(printf@width+1),f
	subwf	(printf@width+1),f
	goto	l5642
	line	762
	
l1126:	
	line	763
	
l5640:	
	clrf	(printf@width)
	clrf	(printf@width+1)
	goto	l5642
	
l1127:	
	line	765
	
l5642:	
	btfsc	(printf@flag),(3)&7
	goto	u8091
	goto	u8090
u8091:
	goto	l5654
u8090:
	goto	l5648
	line	767
	
l5644:	
	goto	l5648
	
l1130:	
	line	768
	
l5646:	
	movlw	(020h)
	fcall	_putch
	goto	l5648
	
l1129:	
	line	767
	
l5648:	
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
	goto	u8105
	movlw	low(-1)
	xorwf	((printf@width)),w
u8105:

	skipz
	goto	u8101
	goto	u8100
u8101:
	goto	l5646
u8100:
	goto	l5654
	
l1131:	
	goto	l5654
	line	768
	
l1128:	
	line	770
	goto	l5654
	
l1133:	
	line	771
	
l5650:	
	movf	(printf@_val),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_putch
	
l5652:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@_val),f
	goto	l5654
	
l1132:	
	line	770
	
l5654:	
	movlw	low(01h)
	subwf	0+(printf@_val)+01h,f
	movlw	high(01h)
	skipc
	decf	1+(printf@_val)+01h,f
	subwf	1+(printf@_val)+01h,f
	movlw	high(0FFFFh)
	xorwf	(1+(printf@_val)+01h),w
	skipz
	goto	u8115
	movlw	low(0FFFFh)
	xorwf	(0+(printf@_val)+01h),w
u8115:

	skipz
	goto	u8111
	goto	u8110
u8111:
	goto	l5650
u8110:
	
l1134:	
	line	773
	btfss	(printf@flag),(3)&7
	goto	u8121
	goto	u8120
u8121:
	goto	l5864
u8120:
	goto	l5660
	line	774
	
l5656:	
	goto	l5660
	
l1137:	
	line	775
	
l5658:	
	movlw	(020h)
	fcall	_putch
	goto	l5660
	
l1136:	
	line	774
	
l5660:	
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
	goto	u8135
	movlw	low(-1)
	xorwf	((printf@width)),w
u8135:

	skipz
	goto	u8131
	goto	u8130
u8131:
	goto	l5658
u8130:
	goto	l5864
	
l1138:	
	goto	l5864
	line	775
	
l1135:	
	line	777
	goto	l5864
	line	787
	
l1139:	
	line	802
	
l5662:	
	movf	(printf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@c)
	
l5664:	
	movlw	(02h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@ap),f
	goto	l5666
	line	805
	
l1140:	
	line	808
	
l5666:	
	movlw	(printf@c)&0ffh
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@_val)
	line	809
	
l5668:	
	movlw	low(01h)
	movwf	0+(printf@_val)+01h
	movlw	high(01h)
	movwf	(0+(printf@_val)+01h)+1
	line	810
	goto	l5630
	line	820
	
l1141:	
	line	821
	
l5670:	
	movlw	low(0C0h)
	iorwf	(printf@flag),f
	movlw	high(0C0h)
	iorwf	(printf@flag+1),f
	line	822
	goto	l5676
	line	825
	
l5672:	
	goto	l5676
	line	638
	
l1115:	
	
l5674:	
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
	goto	l1220
	xorlw	88^0	; case 88
	skipnz
	goto	l1122
	xorlw	99^88	; case 99
	skipnz
	goto	l5662
	xorlw	100^99	; case 100
	skipnz
	goto	l5676
	xorlw	105^100	; case 105
	skipnz
	goto	l5676
	xorlw	111^105	; case 111
	skipnz
	goto	l1118
	xorlw	117^111	; case 117
	skipnz
	goto	l5670
	xorlw	120^117	; case 120
	skipnz
	goto	l1123
	goto	l5666
	opt asmopt_on

	line	825
	
l1119:	
	line	1246
	
l5676:	
	movlw	low(0C0h)
	andwf	(printf@flag),w
	movwf	(??_printf+0)+0
	movlw	high(0C0h)
	andwf	(printf@flag+1),w
	movwf	1+(??_printf+0)+0
	movf	1+(??_printf+0)+0,w
	iorwf	0+(??_printf+0)+0,w
	skipz
	goto	u8141
	goto	u8140
u8141:
	goto	l5688
u8140:
	line	1254
	
l5678:	
	movf	(printf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(printf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(printf@_val+1)
	
l5680:	
	movlw	(02h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@ap),f
	line	1256
	
l5682:	
	btfss	(printf@_val+1),7
	goto	u8151
	goto	u8150
u8151:
	goto	l5692
u8150:
	line	1257
	
l5684:	
	movlw	low(03h)
	iorwf	(printf@flag),f
	movlw	high(03h)
	iorwf	(printf@flag+1),f
	line	1258
	
l5686:	
	comf	(printf@_val),f
	comf	(printf@_val+1),f
	incf	(printf@_val),f
	skipnz
	incf	(printf@_val+1),f
	goto	l5692
	line	1259
	
l1143:	
	line	1261
	goto	l5692
	line	1263
	
l1142:	
	line	1281
	
l5688:	
	movf	(printf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(printf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(printf@_val+1)
	
l5690:	
	movlw	(02h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@ap),f
	goto	l5692
	line	1282
	
l1144:	
	line	1285
	
l5692:	
	movf	(printf@prec),f
	skipz
	goto	u8161
	goto	u8160
u8161:
	goto	l5742
u8160:
	
l5694:	
	movf	((printf@_val+1)),w
	iorwf	((printf@_val)),w
	skipz
	goto	u8171
	goto	u8170
u8171:
	goto	l5742
u8170:
	line	1286
	
l5696:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@prec),f
	goto	l5742
	
l1145:	
	line	1289
	goto	l5742
	line	1294
	
l1147:	
	goto	l5698
	line	1297
	
l1148:	
	line	1300
	
l5698:	
	clrf	(printf@c)
	bsf	status,0
	rlf	(printf@c),f
	
l5700:	
	movf	(printf@c),w
	xorlw	05h
	skipz
	goto	u8181
	goto	u8180
u8181:
	goto	l5704
u8180:
	goto	l5744
	
l5702:	
	goto	l5744
	line	1301
	
l1149:	
	
l5704:	
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
	goto	u8195
	movf	0+(??_printf+1)+0,w
	subwf	(printf@_val),w
u8195:
	skipnc
	goto	u8191
	goto	u8190
u8191:
	goto	l5708
u8190:
	goto	l5744
	line	1302
	
l5706:	
	goto	l5744
	
l1151:	
	line	1300
	
l5708:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@c),f
	
l5710:	
	movf	(printf@c),w
	xorlw	05h
	skipz
	goto	u8201
	goto	u8200
u8201:
	goto	l5704
u8200:
	goto	l5744
	
l1150:	
	line	1304
	goto	l5744
	line	1309
	
l1153:	
	line	1311
	
l5712:	
	clrf	(printf@c)
	bsf	status,0
	rlf	(printf@c),f
	
l5714:	
	movf	(printf@c),w
	xorlw	04h
	skipz
	goto	u8211
	goto	u8210
u8211:
	goto	l5718
u8210:
	goto	l5744
	
l5716:	
	goto	l5744
	line	1312
	
l1154:	
	
l5718:	
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
	goto	u8225
	movf	0+(??_printf+1)+0,w
	subwf	(printf@_val),w
u8225:
	skipnc
	goto	u8221
	goto	u8220
u8221:
	goto	l5722
u8220:
	goto	l5744
	line	1313
	
l5720:	
	goto	l5744
	
l1156:	
	line	1311
	
l5722:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@c),f
	
l5724:	
	movf	(printf@c),w
	xorlw	04h
	skipz
	goto	u8231
	goto	u8230
u8231:
	goto	l5718
u8230:
	goto	l5744
	
l1155:	
	line	1315
	goto	l5744
	line	1321
	
l1157:	
	line	1323
	
l5726:	
	clrf	(printf@c)
	bsf	status,0
	rlf	(printf@c),f
	
l5728:	
	movf	(printf@c),w
	xorlw	06h
	skipz
	goto	u8241
	goto	u8240
u8241:
	goto	l5732
u8240:
	goto	l5744
	
l5730:	
	goto	l5744
	line	1324
	
l1158:	
	
l5732:	
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
	goto	u8255
	movf	0+(??_printf+1)+0,w
	subwf	(printf@_val),w
u8255:
	skipnc
	goto	u8251
	goto	u8250
u8251:
	goto	l5736
u8250:
	goto	l5744
	line	1325
	
l5734:	
	goto	l5744
	
l1160:	
	line	1323
	
l5736:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@c),f
	
l5738:	
	movf	(printf@c),w
	xorlw	06h
	skipz
	goto	u8261
	goto	u8260
u8261:
	goto	l5732
u8260:
	goto	l5744
	
l1159:	
	line	1327
	goto	l5744
	line	1331
	
l5740:	
	goto	l5744
	line	1289
	
l1146:	
	
l5742:	
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
	goto	l5698
	xorlw	64^0	; case 64
	skipnz
	goto	l5726
	xorlw	128^64	; case 128
	skipnz
	goto	l5712
	xorlw	192^128	; case 192
	skipnz
	goto	l5698
	goto	l5744
	opt asmopt_on

	line	1331
	
l1152:	
	line	1334
	
l5744:	
	movf	(printf@c),w
	xorlw	80h
	movwf	(??_printf+0)+0
	movf	(printf@prec),w
	xorlw	80h
	subwf	(??_printf+0)+0
	skipnc
	goto	u8271
	goto	u8270
u8271:
	goto	l5748
u8270:
	line	1335
	
l5746:	
	movf	(printf@prec),w
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@c)
	goto	l1162
	line	1336
	
l1161:	
	
l5748:	
	movf	(printf@prec),w
	xorlw	80h
	movwf	(??_printf+0)+0
	movf	(printf@c),w
	xorlw	80h
	subwf	(??_printf+0)+0
	skipnc
	goto	u8281
	goto	u8280
u8281:
	goto	l1162
u8280:
	line	1337
	
l5750:	
	movf	(printf@c),w
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@prec)
	goto	l1162
	
l1163:	
	line	1340
	
l1162:	
	movf	(printf@width+1),w
	iorwf	(printf@width),w
	skipnz
	goto	u8291
	goto	u8290
u8291:
	goto	l5756
u8290:
	
l5752:	
	movlw	low(03h)
	andwf	(printf@flag),w
	movwf	(??_printf+0)+0
	movlw	high(03h)
	andwf	(printf@flag+1),w
	movwf	1+(??_printf+0)+0
	movf	1+(??_printf+0)+0,w
	iorwf	0+(??_printf+0)+0,w
	skipnz
	goto	u8301
	goto	u8300
u8301:
	goto	l5756
u8300:
	line	1341
	
l5754:	
	movlw	low(-1)
	addwf	(printf@width),f
	skipnc
	incf	(printf@width+1),f
	movlw	high(-1)
	addwf	(printf@width+1),f
	goto	l5756
	
l1164:	
	line	1343
	
l5756:	
	btfss	(printf@flag+1),(14)&7
	goto	u8311
	goto	u8310
u8311:
	goto	l5764
u8310:
	line	1344
	
l5758:	
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
	goto	u8325
	movf	(printf@width),w
	subwf	0+(??_printf+0)+0,w
u8325:

	skipnc
	goto	u8321
	goto	u8320
u8321:
	goto	l5762
u8320:
	line	1345
	
l5760:	
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
	goto	l5764
	line	1346
	
l1166:	
	line	1347
	
l5762:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(printf@width)
	clrf	(printf@width+1)
	goto	l5764
	
l1167:	
	goto	l5764
	line	1348
	
l1165:	
	line	1356
	
l5764:	
	movlw	low(08C4h)
	andwf	(printf@flag),w
	movwf	(??_printf+0)+0
	movlw	high(08C4h)
	andwf	(printf@flag+1),w
	movwf	1+(??_printf+0)+0
	movlw	high(0840h)
	xorwf	1+(??_printf+0)+0,w
	skipz
	goto	u8335
	movlw	low(0840h)
	xorwf	0+(??_printf+0)+0,w
u8335:

	skipz
	goto	u8331
	goto	u8330
u8331:
	goto	l5770
u8330:
	line	1357
	
l5766:	
	movf	(printf@width+1),w
	iorwf	(printf@width),w
	skipnz
	goto	u8341
	goto	u8340
u8341:
	goto	l5778
u8340:
	line	1358
	
l5768:	
	movlw	low(-1)
	addwf	(printf@width),f
	skipnc
	incf	(printf@width+1),f
	movlw	high(-1)
	addwf	(printf@width+1),f
	goto	l5778
	
l1169:	
	line	1359
	goto	l5778
	
l1168:	
	line	1363
	
l5770:	
	movlw	low(08C0h)
	andwf	(printf@flag),w
	movwf	(??_printf+0)+0
	movlw	high(08C0h)
	andwf	(printf@flag+1),w
	movwf	1+(??_printf+0)+0
	movlw	high(0880h)
	xorwf	1+(??_printf+0)+0,w
	skipz
	goto	u8355
	movlw	low(0880h)
	xorwf	0+(??_printf+0)+0,w
u8355:

	skipz
	goto	u8351
	goto	u8350
u8351:
	goto	l5778
u8350:
	line	1367
	
l5772:	
	movf	(printf@width+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u8365
	movlw	low(03h)
	subwf	(printf@width),w
u8365:

	skipc
	goto	u8361
	goto	u8360
u8361:
	goto	l5776
u8360:
	line	1368
	
l5774:	
	movlw	low(-2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(printf@width),f
	skipnc
	incf	(printf@width+1),f
	movlw	high(-2)
	addwf	(printf@width+1),f
	goto	l5778
	line	1369
	
l1172:	
	line	1370
	
l5776:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(printf@width)
	clrf	(printf@width+1)
	goto	l5778
	
l1173:	
	goto	l5778
	line	1371
	
l1171:	
	goto	l5778
	line	1376
	
l1170:	
	
l5778:	
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
	goto	u8375
	movf	(printf@width),w
	subwf	0+(??_printf+0)+0,w
u8375:

	skipnc
	goto	u8371
	goto	u8370
u8371:
	goto	l5782
u8370:
	line	1377
	
l5780:	
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
	goto	l5784
	line	1378
	
l1174:	
	line	1379
	
l5782:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(printf@width)
	clrf	(printf@width+1)
	goto	l5784
	
l1175:	
	line	1382
	
l5784:	
	btfss	(printf@flag),(2)&7
	goto	u8381
	goto	u8380
u8381:
	goto	l5810
u8380:
	line	1387
	
l5786:	
	movlw	low(03h)
	andwf	(printf@flag),w
	movwf	(??_printf+0)+0
	movlw	high(03h)
	andwf	(printf@flag+1),w
	movwf	1+(??_printf+0)+0
	movf	1+(??_printf+0)+0,w
	iorwf	0+(??_printf+0)+0,w
	skipnz
	goto	u8391
	goto	u8390
u8391:
	goto	l1177
u8390:
	line	1388
	
l5788:	
	movlw	(02Dh)
	fcall	_putch
	goto	l5804
	line	1391
	
l1177:	
	line	1394
	btfss	(printf@flag),(0)&7
	goto	u8401
	goto	u8400
u8401:
	goto	l5792
u8400:
	line	1395
	
l5790:	
	movlw	(020h)
	fcall	_putch
	goto	l5804
	line	1398
	
l1179:	
	
l5792:	
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
	goto	u8415
	movlw	low(0880h)
	xorwf	0+(??_printf+0)+0,w
u8415:

	skipz
	goto	u8411
	goto	u8410
u8411:
	goto	l5804
u8410:
	line	1399
	
l5794:	
	movlw	(030h)
	fcall	_putch
	line	1401
	
l5796:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(printf@flag),(5)&7
	goto	u8421
	goto	u8420
u8421:
	goto	l5800
u8420:
	
l5798:	
	movlw	low(078h)
	movwf	(_printf$1414)
	movlw	high(078h)
	movwf	((_printf$1414))+1
	goto	l5802
	
l1183:	
	
l5800:	
	movlw	low(058h)
	movwf	(_printf$1414)
	movlw	high(058h)
	movwf	((_printf$1414))+1
	goto	l5802
	
l1185:	
	
l5802:	
	movf	(_printf$1414),w
	fcall	_putch
	goto	l5804
	line	1407
	
l1181:	
	goto	l5804
	line	1410
	
l1180:	
	goto	l5804
	
l1178:	
	
l5804:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printf@width+1),w
	iorwf	(printf@width),w
	skipnz
	goto	u8431
	goto	u8430
u8431:
	goto	l5856
u8430:
	goto	l5806
	line	1411
	
l1187:	
	line	1412
	
l5806:	
	movlw	(030h)
	fcall	_putch
	line	1413
	
l5808:	
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
	goto	u8441
	goto	u8440
u8441:
	goto	l5806
u8440:
	goto	l5856
	
l1188:	
	goto	l5856
	
l1186:	
	line	1415
	goto	l5856
	
l1176:	
	line	1423
	
l5810:	
	movf	(printf@width+1),w
	iorwf	(printf@width),w
	skipnz
	goto	u8451
	goto	u8450
u8451:
	goto	l5818
u8450:
	
l5812:	
	btfsc	(printf@flag),(3)&7
	goto	u8461
	goto	u8460
u8461:
	goto	l5818
u8460:
	goto	l5814
	line	1424
	
l1191:	
	line	1425
	
l5814:	
	movlw	(020h)
	fcall	_putch
	line	1426
	
l5816:	
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
	goto	u8471
	goto	u8470
u8471:
	goto	l5814
u8470:
	goto	l5818
	
l1192:	
	goto	l5818
	
l1190:	
	line	1433
	
l5818:	
	movlw	low(03h)
	andwf	(printf@flag),w
	movwf	(??_printf+0)+0
	movlw	high(03h)
	andwf	(printf@flag+1),w
	movwf	1+(??_printf+0)+0
	movf	1+(??_printf+0)+0,w
	iorwf	0+(??_printf+0)+0,w
	skipnz
	goto	u8481
	goto	u8480
u8481:
	goto	l1193
u8480:
	line	1434
	
l5820:	
	movlw	(02Dh)
	fcall	_putch
	goto	l5824
	line	1438
	
l1193:	
	btfss	(printf@flag),(0)&7
	goto	u8491
	goto	u8490
u8491:
	goto	l5824
u8490:
	line	1439
	
l5822:	
	movlw	(020h)
	fcall	_putch
	goto	l5824
	
l1195:	
	goto	l5824
	line	1443
	
l1194:	
	
l5824:	
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
	goto	u8505
	movlw	low(0840h)
	xorwf	0+(??_printf+0)+0,w
u8505:

	skipz
	goto	u8501
	goto	u8500
u8501:
	goto	l5828
u8500:
	line	1444
	
l5826:	
	movlw	(030h)
	fcall	_putch
	goto	l5856
	line	1445
	
l1196:	
	line	1449
	
l5828:	
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
	goto	u8515
	movlw	low(0880h)
	xorwf	0+(??_printf+0)+0,w
u8515:

	skipz
	goto	u8511
	goto	u8510
u8511:
	goto	l5856
u8510:
	line	1453
	
l5830:	
	movlw	(030h)
	fcall	_putch
	line	1455
	
l5832:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(printf@flag),(5)&7
	goto	u8521
	goto	u8520
u8521:
	goto	l5836
u8520:
	
l5834:	
	movlw	low(078h)
	movwf	(_printf$1415)
	movlw	high(078h)
	movwf	((_printf$1415))+1
	goto	l5838
	
l1200:	
	
l5836:	
	movlw	low(058h)
	movwf	(_printf$1415)
	movlw	high(058h)
	movwf	((_printf$1415))+1
	goto	l5838
	
l1202:	
	
l5838:	
	movf	(_printf$1415),w
	fcall	_putch
	goto	l5856
	line	1461
	
l1198:	
	goto	l5856
	line	1464
	
l1197:	
	goto	l5856
	
l1189:	
	line	1469
	goto	l5856
	
l1204:	
	line	1471
	goto	l5852
	line	1478
	
l1206:	
	goto	l5840
	line	1481
	
l1207:	
	line	1484
	
l5840:	
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
	goto	l5854
	line	1492
	
l1209:	
	line	1495
	btfsc	(printf@flag),(5)&7
	goto	u8531
	goto	u8530
u8531:
	goto	l5844
u8530:
	
l5842:	
	movlw	((STR_10-__stringbase))&0ffh
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(_printf$1418)
	goto	l5846
	
l1211:	
	
l5844:	
	movlw	((STR_9-__stringbase))&0ffh
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(_printf$1418)
	goto	l5846
	
l1213:	
	
l5846:	
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
	addwf	(_printf$1418),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_printf+1)+0
	movf	(??_printf+1)+0,w
	movwf	(printf@c)
	line	1502
	goto	l5854
	line	1508
	
l1214:	
	line	1510
	
l5848:	
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
	goto	l5854
	line	1515
	
l5850:	
	goto	l5854
	line	1471
	
l1205:	
	
l5852:	
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
	goto	l5840
	xorlw	64^0	; case 64
	skipnz
	goto	l5848
	xorlw	128^64	; case 128
	skipnz
	goto	l1209
	xorlw	192^128	; case 192
	skipnz
	goto	l5840
	goto	l5854
	opt asmopt_on

	line	1515
	
l1208:	
	line	1516
	
l5854:	
	movf	(printf@c),w
	fcall	_putch
	goto	l5856
	line	1517
	
l1203:	
	line	1469
	
l5856:	
	movlw	(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@prec),f
	movf	((printf@prec)),w
	xorlw	-1
	skipz
	goto	u8541
	goto	u8540
u8541:
	goto	l5852
u8540:
	
l1215:	
	line	1520
	btfss	(printf@flag),(3)&7
	goto	u8551
	goto	u8550
u8551:
	goto	l5864
u8550:
	
l5858:	
	movf	(printf@width+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u8565
	movlw	low(01h)
	subwf	(printf@width),w
u8565:

	skipc
	goto	u8561
	goto	u8560
u8561:
	goto	l5864
u8560:
	goto	l5860
	line	1521
	
l1217:	
	line	1522
	
l5860:	
	movlw	(020h)
	fcall	_putch
	line	1523
	
l5862:	
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
	goto	u8571
	goto	u8570
u8571:
	goto	l5860
u8570:
	goto	l5864
	
l1218:	
	goto	l5864
	
l1216:	
	goto	l5864
	line	1525
	
l1090:	
	line	540
	
l5864:	
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
	goto	u8581
	goto	u8580
u8581:
	goto	l5572
u8580:
	goto	l1220
	
l1219:	
	goto	l1220
	line	1527
	
l1117:	
	line	1533
;	Return value of _printf is never used
	
l1220:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	_CheckKeyPad
psect	text903,local,class=CODE,delta=2
global __ptext903
__ptext903:

;; *************** function _CheckKeyPad *****************
;; Defined at:
;;		line 167 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\Automated Solar Panel Orientation Setter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  rowNo           2    8[BANK0 ] int 
;;  colomnNo        2    6[BANK0 ] int 
;;  charactor       1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_RowNo
;;		_ColomnNo
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text903
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\Automated Solar Panel Orientation Setter.c"
	line	167
	global	__size_of_CheckKeyPad
	__size_of_CheckKeyPad	equ	__end_of_CheckKeyPad-_CheckKeyPad
	
_CheckKeyPad:	
	opt	stack 3
; Regs used in _CheckKeyPad: [wreg+status,2+status,0+pclath+cstack]
	line	168
	
l5434:	
;Automated Solar Panel Orientation Setter.c: 168: RC4 = 0; RD5 = 0; RC5=0; RD4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	bcf	(69/8),(69)&7
	bcf	(61/8),(61)&7
	bcf	(68/8),(68)&7
	line	169
	
l5436:	
;Automated Solar Panel Orientation Setter.c: 169: char charactor = '$';
	movlw	(024h)
	movwf	(??_CheckKeyPad+0)+0
	movf	(??_CheckKeyPad+0)+0,w
	movwf	(CheckKeyPad@charactor)
	line	170
	
l5438:	
;Automated Solar Panel Orientation Setter.c: 170: int colomnNo = 0;
	clrf	(CheckKeyPad@colomnNo)
	clrf	(CheckKeyPad@colomnNo+1)
	line	171
	
l5440:	
;Automated Solar Panel Orientation Setter.c: 171: int rowNo = RowNo();
	fcall	_RowNo
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_RowNo)),w
	clrf	(CheckKeyPad@rowNo+1)
	addwf	(CheckKeyPad@rowNo+1)
	movf	(0+(?_RowNo)),w
	clrf	(CheckKeyPad@rowNo)
	addwf	(CheckKeyPad@rowNo)

	line	172
	
l5442:	
;Automated Solar Panel Orientation Setter.c: 172: if (rowNo != 0){
	movf	(CheckKeyPad@rowNo+1),w
	iorwf	(CheckKeyPad@rowNo),w
	skipnz
	goto	u7571
	goto	u7570
u7571:
	goto	l907
u7570:
	line	173
	
l5444:	
;Automated Solar Panel Orientation Setter.c: 173: colomnNo = ColomnNo(rowNo);
	movf	(CheckKeyPad@rowNo+1),w
	clrf	(?_ColomnNo+1)
	addwf	(?_ColomnNo+1)
	movf	(CheckKeyPad@rowNo),w
	clrf	(?_ColomnNo)
	addwf	(?_ColomnNo)

	fcall	_ColomnNo
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_ColomnNo)),w
	clrf	(CheckKeyPad@colomnNo+1)
	addwf	(CheckKeyPad@colomnNo+1)
	movf	(0+(?_ColomnNo)),w
	clrf	(CheckKeyPad@colomnNo)
	addwf	(CheckKeyPad@colomnNo)

	line	174
	
l5446:	
;Automated Solar Panel Orientation Setter.c: 174: RC4 = 0; RD5 = 0; RC5=0; RD4=0;
	bcf	(60/8),(60)&7
	
l5448:	
	bcf	(69/8),(69)&7
	
l5450:	
	bcf	(61/8),(61)&7
	
l5452:	
	bcf	(68/8),(68)&7
	line	175
	
l5454:	
;Automated Solar Panel Orientation Setter.c: 175: if(colomnNo==1 && rowNo == 1) charactor = '1';
	movlw	01h
	xorwf	(CheckKeyPad@colomnNo),w
	iorwf	(CheckKeyPad@colomnNo+1),w
	skipz
	goto	u7581
	goto	u7580
u7581:
	goto	l5460
u7580:
	
l5456:	
	movlw	01h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u7591
	goto	u7590
u7591:
	goto	l5460
u7590:
	
l5458:	
	movlw	(031h)
	movwf	(??_CheckKeyPad+0)+0
	movf	(??_CheckKeyPad+0)+0,w
	movwf	(CheckKeyPad@charactor)
	goto	l907
	line	176
	
l908:	
	
l5460:	
;Automated Solar Panel Orientation Setter.c: 176: else if(colomnNo==1 && rowNo == 2) charactor = '2';
	movlw	01h
	xorwf	(CheckKeyPad@colomnNo),w
	iorwf	(CheckKeyPad@colomnNo+1),w
	skipz
	goto	u7601
	goto	u7600
u7601:
	goto	l5466
u7600:
	
l5462:	
	movlw	02h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u7611
	goto	u7610
u7611:
	goto	l5466
u7610:
	
l5464:	
	movlw	(032h)
	movwf	(??_CheckKeyPad+0)+0
	movf	(??_CheckKeyPad+0)+0,w
	movwf	(CheckKeyPad@charactor)
	goto	l907
	line	177
	
l910:	
	
l5466:	
;Automated Solar Panel Orientation Setter.c: 177: else if(colomnNo==1 && rowNo == 3) charactor = '3';
	movlw	01h
	xorwf	(CheckKeyPad@colomnNo),w
	iorwf	(CheckKeyPad@colomnNo+1),w
	skipz
	goto	u7621
	goto	u7620
u7621:
	goto	l5472
u7620:
	
l5468:	
	movlw	03h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u7631
	goto	u7630
u7631:
	goto	l5472
u7630:
	
l5470:	
	movlw	(033h)
	movwf	(??_CheckKeyPad+0)+0
	movf	(??_CheckKeyPad+0)+0,w
	movwf	(CheckKeyPad@charactor)
	goto	l907
	line	178
	
l912:	
	
l5472:	
;Automated Solar Panel Orientation Setter.c: 178: else if(colomnNo==1 && rowNo == 4) charactor = 'A';
	movlw	01h
	xorwf	(CheckKeyPad@colomnNo),w
	iorwf	(CheckKeyPad@colomnNo+1),w
	skipz
	goto	u7641
	goto	u7640
u7641:
	goto	l5478
u7640:
	
l5474:	
	movlw	04h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u7651
	goto	u7650
u7651:
	goto	l5478
u7650:
	
l5476:	
	movlw	(041h)
	movwf	(??_CheckKeyPad+0)+0
	movf	(??_CheckKeyPad+0)+0,w
	movwf	(CheckKeyPad@charactor)
	goto	l907
	line	180
	
l914:	
	
l5478:	
;Automated Solar Panel Orientation Setter.c: 180: else if(colomnNo==2 && rowNo == 1) charactor = '4';
	movlw	02h
	xorwf	(CheckKeyPad@colomnNo),w
	iorwf	(CheckKeyPad@colomnNo+1),w
	skipz
	goto	u7661
	goto	u7660
u7661:
	goto	l5484
u7660:
	
l5480:	
	movlw	01h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u7671
	goto	u7670
u7671:
	goto	l5484
u7670:
	
l5482:	
	movlw	(034h)
	movwf	(??_CheckKeyPad+0)+0
	movf	(??_CheckKeyPad+0)+0,w
	movwf	(CheckKeyPad@charactor)
	goto	l907
	line	181
	
l916:	
	
l5484:	
;Automated Solar Panel Orientation Setter.c: 181: else if(colomnNo==2 && rowNo == 2) charactor = '5';
	movlw	02h
	xorwf	(CheckKeyPad@colomnNo),w
	iorwf	(CheckKeyPad@colomnNo+1),w
	skipz
	goto	u7681
	goto	u7680
u7681:
	goto	l5490
u7680:
	
l5486:	
	movlw	02h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u7691
	goto	u7690
u7691:
	goto	l5490
u7690:
	
l5488:	
	movlw	(035h)
	movwf	(??_CheckKeyPad+0)+0
	movf	(??_CheckKeyPad+0)+0,w
	movwf	(CheckKeyPad@charactor)
	goto	l907
	line	182
	
l918:	
	
l5490:	
;Automated Solar Panel Orientation Setter.c: 182: else if(colomnNo==2 && rowNo == 3) charactor = '6';
	movlw	02h
	xorwf	(CheckKeyPad@colomnNo),w
	iorwf	(CheckKeyPad@colomnNo+1),w
	skipz
	goto	u7701
	goto	u7700
u7701:
	goto	l5496
u7700:
	
l5492:	
	movlw	03h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u7711
	goto	u7710
u7711:
	goto	l5496
u7710:
	
l5494:	
	movlw	(036h)
	movwf	(??_CheckKeyPad+0)+0
	movf	(??_CheckKeyPad+0)+0,w
	movwf	(CheckKeyPad@charactor)
	goto	l907
	line	183
	
l920:	
	
l5496:	
;Automated Solar Panel Orientation Setter.c: 183: else if(colomnNo==2 && rowNo == 4) charactor = 'B';
	movlw	02h
	xorwf	(CheckKeyPad@colomnNo),w
	iorwf	(CheckKeyPad@colomnNo+1),w
	skipz
	goto	u7721
	goto	u7720
u7721:
	goto	l5502
u7720:
	
l5498:	
	movlw	04h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u7731
	goto	u7730
u7731:
	goto	l5502
u7730:
	
l5500:	
	movlw	(042h)
	movwf	(??_CheckKeyPad+0)+0
	movf	(??_CheckKeyPad+0)+0,w
	movwf	(CheckKeyPad@charactor)
	goto	l907
	line	185
	
l922:	
	
l5502:	
;Automated Solar Panel Orientation Setter.c: 185: else if(colomnNo==3 && rowNo == 1) charactor = '7';
	movlw	03h
	xorwf	(CheckKeyPad@colomnNo),w
	iorwf	(CheckKeyPad@colomnNo+1),w
	skipz
	goto	u7741
	goto	u7740
u7741:
	goto	l5508
u7740:
	
l5504:	
	movlw	01h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u7751
	goto	u7750
u7751:
	goto	l5508
u7750:
	
l5506:	
	movlw	(037h)
	movwf	(??_CheckKeyPad+0)+0
	movf	(??_CheckKeyPad+0)+0,w
	movwf	(CheckKeyPad@charactor)
	goto	l907
	line	186
	
l924:	
	
l5508:	
;Automated Solar Panel Orientation Setter.c: 186: else if(colomnNo==3 && rowNo == 2) charactor = '8';
	movlw	03h
	xorwf	(CheckKeyPad@colomnNo),w
	iorwf	(CheckKeyPad@colomnNo+1),w
	skipz
	goto	u7761
	goto	u7760
u7761:
	goto	l5514
u7760:
	
l5510:	
	movlw	02h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u7771
	goto	u7770
u7771:
	goto	l5514
u7770:
	
l5512:	
	movlw	(038h)
	movwf	(??_CheckKeyPad+0)+0
	movf	(??_CheckKeyPad+0)+0,w
	movwf	(CheckKeyPad@charactor)
	goto	l907
	line	187
	
l926:	
	
l5514:	
;Automated Solar Panel Orientation Setter.c: 187: else if(colomnNo==3 && rowNo == 3) charactor = '9';
	movlw	03h
	xorwf	(CheckKeyPad@colomnNo),w
	iorwf	(CheckKeyPad@colomnNo+1),w
	skipz
	goto	u7781
	goto	u7780
u7781:
	goto	l5520
u7780:
	
l5516:	
	movlw	03h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u7791
	goto	u7790
u7791:
	goto	l5520
u7790:
	
l5518:	
	movlw	(039h)
	movwf	(??_CheckKeyPad+0)+0
	movf	(??_CheckKeyPad+0)+0,w
	movwf	(CheckKeyPad@charactor)
	goto	l907
	line	188
	
l928:	
	
l5520:	
;Automated Solar Panel Orientation Setter.c: 188: else if(colomnNo==3 && rowNo == 4) charactor = 'C';
	movlw	03h
	xorwf	(CheckKeyPad@colomnNo),w
	iorwf	(CheckKeyPad@colomnNo+1),w
	skipz
	goto	u7801
	goto	u7800
u7801:
	goto	l5526
u7800:
	
l5522:	
	movlw	04h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u7811
	goto	u7810
u7811:
	goto	l5526
u7810:
	
l5524:	
	movlw	(043h)
	movwf	(??_CheckKeyPad+0)+0
	movf	(??_CheckKeyPad+0)+0,w
	movwf	(CheckKeyPad@charactor)
	goto	l907
	line	190
	
l930:	
	
l5526:	
;Automated Solar Panel Orientation Setter.c: 190: else if(colomnNo==4 && rowNo == 1) charactor = '*';
	movlw	04h
	xorwf	(CheckKeyPad@colomnNo),w
	iorwf	(CheckKeyPad@colomnNo+1),w
	skipz
	goto	u7821
	goto	u7820
u7821:
	goto	l5532
u7820:
	
l5528:	
	movlw	01h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u7831
	goto	u7830
u7831:
	goto	l5532
u7830:
	
l5530:	
	movlw	(02Ah)
	movwf	(??_CheckKeyPad+0)+0
	movf	(??_CheckKeyPad+0)+0,w
	movwf	(CheckKeyPad@charactor)
	goto	l907
	line	191
	
l932:	
	
l5532:	
;Automated Solar Panel Orientation Setter.c: 191: else if(colomnNo==4 && rowNo == 2) charactor = '0';
	movlw	04h
	xorwf	(CheckKeyPad@colomnNo),w
	iorwf	(CheckKeyPad@colomnNo+1),w
	skipz
	goto	u7841
	goto	u7840
u7841:
	goto	l5538
u7840:
	
l5534:	
	movlw	02h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u7851
	goto	u7850
u7851:
	goto	l5538
u7850:
	
l5536:	
	movlw	(030h)
	movwf	(??_CheckKeyPad+0)+0
	movf	(??_CheckKeyPad+0)+0,w
	movwf	(CheckKeyPad@charactor)
	goto	l907
	line	192
	
l934:	
	
l5538:	
;Automated Solar Panel Orientation Setter.c: 192: else if(colomnNo==4 && rowNo == 3) charactor = '#';
	movlw	04h
	xorwf	(CheckKeyPad@colomnNo),w
	iorwf	(CheckKeyPad@colomnNo+1),w
	skipz
	goto	u7861
	goto	u7860
u7861:
	goto	l5544
u7860:
	
l5540:	
	movlw	03h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u7871
	goto	u7870
u7871:
	goto	l5544
u7870:
	
l5542:	
	movlw	(023h)
	movwf	(??_CheckKeyPad+0)+0
	movf	(??_CheckKeyPad+0)+0,w
	movwf	(CheckKeyPad@charactor)
	goto	l907
	line	193
	
l936:	
	
l5544:	
;Automated Solar Panel Orientation Setter.c: 193: else if(colomnNo==4 && rowNo == 4) charactor = 'D';
	movlw	04h
	xorwf	(CheckKeyPad@colomnNo),w
	iorwf	(CheckKeyPad@colomnNo+1),w
	skipz
	goto	u7881
	goto	u7880
u7881:
	goto	l5550
u7880:
	
l5546:	
	movlw	04h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u7891
	goto	u7890
u7891:
	goto	l5550
u7890:
	
l5548:	
	movlw	(044h)
	movwf	(??_CheckKeyPad+0)+0
	movf	(??_CheckKeyPad+0)+0,w
	movwf	(CheckKeyPad@charactor)
	goto	l907
	line	195
	
l938:	
	
l5550:	
;Automated Solar Panel Orientation Setter.c: 195: else charactor = '@';
	movlw	(040h)
	movwf	(??_CheckKeyPad+0)+0
	movf	(??_CheckKeyPad+0)+0,w
	movwf	(CheckKeyPad@charactor)
	goto	l907
	
l939:	
	goto	l907
	
l937:	
	goto	l907
	
l935:	
	goto	l907
	
l933:	
	goto	l907
	
l931:	
	goto	l907
	
l929:	
	goto	l907
	
l927:	
	goto	l907
	
l925:	
	goto	l907
	
l923:	
	goto	l907
	
l921:	
	goto	l907
	
l919:	
	goto	l907
	
l917:	
	goto	l907
	
l915:	
	goto	l907
	
l913:	
	goto	l907
	
l911:	
	goto	l907
	
l909:	
	line	196
	
l907:	
	line	197
;Automated Solar Panel Orientation Setter.c: 196: }
;Automated Solar Panel Orientation Setter.c: 197: if(rowNo==1) while(RD2==0);
	movlw	01h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u7901
	goto	u7900
u7901:
	goto	l5554
u7900:
	goto	l941
	
l5552:	
	goto	l941
	
l942:	
	
l941:	
	btfss	(66/8),(66)&7
	goto	u7911
	goto	u7910
u7911:
	goto	l941
u7910:
	goto	l5566
	
l943:	
	goto	l5566
	line	198
	
l940:	
	
l5554:	
;Automated Solar Panel Orientation Setter.c: 198: else if(rowNo==2) while(RD7==0);
	movlw	02h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u7921
	goto	u7920
u7921:
	goto	l5558
u7920:
	goto	l946
	
l5556:	
	goto	l946
	
l947:	
	
l946:	
	btfss	(71/8),(71)&7
	goto	u7931
	goto	u7930
u7931:
	goto	l946
u7930:
	goto	l5566
	
l948:	
	goto	l5566
	line	199
	
l945:	
	
l5558:	
;Automated Solar Panel Orientation Setter.c: 199: else if(rowNo==3) while(RD3==0);
	movlw	03h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u7941
	goto	u7940
u7941:
	goto	l5562
u7940:
	goto	l951
	
l5560:	
	goto	l951
	
l952:	
	
l951:	
	btfss	(67/8),(67)&7
	goto	u7951
	goto	u7950
u7951:
	goto	l951
u7950:
	goto	l5566
	
l953:	
	goto	l5566
	line	200
	
l950:	
	
l5562:	
;Automated Solar Panel Orientation Setter.c: 200: else if(rowNo==4) while(RD6==0);
	movlw	04h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u7961
	goto	u7960
u7961:
	goto	l5566
u7960:
	goto	l956
	
l5564:	
	goto	l956
	
l957:	
	
l956:	
	btfss	(70/8),(70)&7
	goto	u7971
	goto	u7970
u7971:
	goto	l956
u7970:
	goto	l5566
	
l958:	
	goto	l5566
	
l955:	
	goto	l5566
	line	201
	
l954:	
	goto	l5566
	
l949:	
	goto	l5566
	
l944:	
	
l5566:	
;Automated Solar Panel Orientation Setter.c: 201: return charactor;
	movf	(CheckKeyPad@charactor),w
	goto	l959
	
l5568:	
	line	202
	
l959:	
	return
	opt stack 0
GLOBAL	__end_of_CheckKeyPad
	__end_of_CheckKeyPad:
;; =============== function _CheckKeyPad ends ============

	signat	_CheckKeyPad,89
	global	_position
psect	text904,local,class=CODE,delta=2
global __ptext904
__ptext904:

;; *************** function _position *****************
;; Defined at:
;;		line 201 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\lcdV2.h"
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
psect	text904
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\lcdV2.h"
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
	
l5412:	
;lcdV2.h: 202: char post ;
;lcdV2.h: 203: if( row == 1 ) row = 128;
	movf	(position@row),w
	xorlw	01h
	skipz
	goto	u7551
	goto	u7550
u7551:
	goto	l812
u7550:
	
l5414:	
	movlw	(080h)
	movwf	(??_position+0)+0
	movf	(??_position+0)+0,w
	movwf	(position@row)
	
l812:	
	line	204
;lcdV2.h: 204: if( row == 2 ) row = 192;
	movf	(position@row),w
	xorlw	02h
	skipz
	goto	u7561
	goto	u7560
u7561:
	goto	l5418
u7560:
	
l5416:	
	movlw	(0C0h)
	movwf	(??_position+0)+0
	movf	(??_position+0)+0,w
	movwf	(position@row)
	goto	l5418
	
l813:	
	line	205
	
l5418:	
;lcdV2.h: 205: post = row + collum - 1;
	movf	(position@collum),w
	addwf	(position@row),w
	addlw	0FFh
	movwf	(??_position+0)+0
	movf	(??_position+0)+0,w
	movwf	(position@post)
	line	206
	
l5420:	
;lcdV2.h: 206: RC2 = 0;
	bcf	(58/8),(58)&7
	line	207
	
l5422:	
;lcdV2.h: 207: _delay(20);
	opt asmopt_off
movlw	6
movwf	(??_position+0)+0,f
u8947:
decfsz	(??_position+0)+0,f
	goto	u8947
	clrwdt
opt asmopt_on

	line	208
	
l5424:	
;lcdV2.h: 208: lcd_data = post ;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(position@post),w
	movwf	(??_position+0)+0
	movf	(??_position+0)+0,w
	movwf	(_lcd_data)
	line	209
	
l5426:	
;lcdV2.h: 209: lcd_add();
	fcall	_lcd_add
	line	210
	
l5428:	
;lcdV2.h: 210: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_position+0)+0+1),f
	movlw	251
movwf	((??_position+0)+0),f
u8957:
	decfsz	((??_position+0)+0),f
	goto	u8957
	decfsz	((??_position+0)+0+1),f
	goto	u8957
	nop2
opt asmopt_on

	line	211
	
l5430:	
;lcdV2.h: 211: row = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(position@row)
	line	212
	
l5432:	
;lcdV2.h: 212: collum = 0;
	clrf	(position@collum)
	line	213
	
l814:	
	return
	opt stack 0
GLOBAL	__end_of_position
	__end_of_position:
;; =============== function _position ends ============

	signat	_position,8312
	global	_clr_display
psect	text905,local,class=CODE,delta=2
global __ptext905
__ptext905:

;; *************** function _clr_display *****************
;; Defined at:
;;		line 176 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\lcdV2.h"
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
psect	text905
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\lcdV2.h"
	line	176
	global	__size_of_clr_display
	__size_of_clr_display	equ	__end_of_clr_display-_clr_display
	
_clr_display:	
	opt	stack 3
; Regs used in _clr_display: [wreg+status,2+status,0+pclath+cstack]
	line	177
	
l5400:	
;lcdV2.h: 177: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	178
	
l5402:	
;lcdV2.h: 178: _delay(20);
	opt asmopt_off
movlw	6
movwf	(??_clr_display+0)+0,f
u8967:
decfsz	(??_clr_display+0)+0,f
	goto	u8967
	clrwdt
opt asmopt_on

	line	179
	
l5404:	
;lcdV2.h: 179: lcd_data = 0b00000001;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_lcd_data)
	bsf	status,0
	rlf	(_lcd_data),f
	line	180
	
l5406:	
;lcdV2.h: 180: lcd_add();
	fcall	_lcd_add
	line	181
	
l5408:	
;lcdV2.h: 181: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_clr_display+0)+0+1),f
	movlw	251
movwf	((??_clr_display+0)+0),f
u8977:
	decfsz	((??_clr_display+0)+0),f
	goto	u8977
	decfsz	((??_clr_display+0)+0+1),f
	goto	u8977
	nop2
opt asmopt_on

	line	182
	
l5410:	
;lcdV2.h: 182: RC2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	line	183
	
l804:	
	return
	opt stack 0
GLOBAL	__end_of_clr_display
	__end_of_clr_display:
;; =============== function _clr_display ends ============

	signat	_clr_display,88
	global	_putch
psect	text906,local,class=CODE,delta=2
global __ptext906
__ptext906:

;; *************** function _putch *****************
;; Defined at:
;;		line 166 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\lcdV2.h"
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
psect	text906
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\lcdV2.h"
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
	
l5392:	
;lcdV2.h: 167: RC2 = 1;
	bsf	(58/8),(58)&7
	line	168
	
l5394:	
;lcdV2.h: 168: _delay(20);
	opt asmopt_off
movlw	6
movwf	(??_putch+0)+0,f
u8987:
decfsz	(??_putch+0)+0,f
	goto	u8987
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
	
l5396:	
;lcdV2.h: 170: lcd_add();
	fcall	_lcd_add
	line	171
	
l5398:	
;lcdV2.h: 171: _delay(100);
	opt asmopt_off
movlw	33
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_putch+0)+0,f
u8997:
decfsz	(??_putch+0)+0,f
	goto	u8997
opt asmopt_on

	line	172
	
l801:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_ColomnNo
psect	text907,local,class=CODE,delta=2
global __ptext907
__ptext907:

;; *************** function _ColomnNo *****************
;; Defined at:
;;		line 204 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\Automated Solar Panel Orientation Setter.c"
;; Parameters:    Size  Location     Type
;;  rowNo           2    0[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_CheckKeyPad
;; This function uses a non-reentrant model
;;
psect	text907
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\Automated Solar Panel Orientation Setter.c"
	line	204
	global	__size_of_ColomnNo
	__size_of_ColomnNo	equ	__end_of_ColomnNo-_ColomnNo
	
_ColomnNo:	
	opt	stack 3
; Regs used in _ColomnNo: [wreg]
	line	205
	
l5310:	
;Automated Solar Panel Orientation Setter.c: 205: RC4 = 0; RD5 = 0; RC5=0; RD4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	bcf	(69/8),(69)&7
	bcf	(61/8),(61)&7
	bcf	(68/8),(68)&7
	line	206
	
l5312:	
;Automated Solar Panel Orientation Setter.c: 206: if(rowNo==1){
	movlw	01h
	xorwf	(ColomnNo@rowNo),w
	iorwf	(ColomnNo@rowNo+1),w
	skipz
	goto	u7351
	goto	u7350
u7351:
	goto	l5332
u7350:
	line	207
	
l5314:	
;Automated Solar Panel Orientation Setter.c: 207: RC4 = 1;
	bsf	(60/8),(60)&7
	line	208
;Automated Solar Panel Orientation Setter.c: 208: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	209
;Automated Solar Panel Orientation Setter.c: 209: if(RD2==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(66/8),(66)&7
	goto	u7361
	goto	u7360
u7361:
	goto	l963
u7360:
	line	210
	
l5316:	
;Automated Solar Panel Orientation Setter.c: 210: return 1;
	movlw	low(01h)
	movwf	(?_ColomnNo)
	movlw	high(01h)
	movwf	((?_ColomnNo))+1
	goto	l964
	
l5318:	
	goto	l964
	line	211
	
l963:	
	line	212
;Automated Solar Panel Orientation Setter.c: 211: }
;Automated Solar Panel Orientation Setter.c: 212: RD5 = 1;
	bsf	(69/8),(69)&7
	line	213
;Automated Solar Panel Orientation Setter.c: 213: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	214
;Automated Solar Panel Orientation Setter.c: 214: if(RD2==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(66/8),(66)&7
	goto	u7371
	goto	u7370
u7371:
	goto	l965
u7370:
	line	215
	
l5320:	
;Automated Solar Panel Orientation Setter.c: 215: return 2;
	movlw	low(02h)
	movwf	(?_ColomnNo)
	movlw	high(02h)
	movwf	((?_ColomnNo))+1
	goto	l964
	
l5322:	
	goto	l964
	line	216
	
l965:	
	line	217
;Automated Solar Panel Orientation Setter.c: 216: }
;Automated Solar Panel Orientation Setter.c: 217: RC5 = 1;
	bsf	(61/8),(61)&7
	line	218
;Automated Solar Panel Orientation Setter.c: 218: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	219
;Automated Solar Panel Orientation Setter.c: 219: if(RD2==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(66/8),(66)&7
	goto	u7381
	goto	u7380
u7381:
	goto	l966
u7380:
	line	220
	
l5324:	
;Automated Solar Panel Orientation Setter.c: 220: return 3;
	movlw	low(03h)
	movwf	(?_ColomnNo)
	movlw	high(03h)
	movwf	((?_ColomnNo))+1
	goto	l964
	
l5326:	
	goto	l964
	line	221
	
l966:	
	line	222
;Automated Solar Panel Orientation Setter.c: 221: }
;Automated Solar Panel Orientation Setter.c: 222: RD4 = 1;
	bsf	(68/8),(68)&7
	line	223
;Automated Solar Panel Orientation Setter.c: 223: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	224
;Automated Solar Panel Orientation Setter.c: 224: if(RD2==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(66/8),(66)&7
	goto	u7391
	goto	u7390
u7391:
	goto	l964
u7390:
	line	225
	
l5328:	
;Automated Solar Panel Orientation Setter.c: 225: return 4;
	movlw	low(04h)
	movwf	(?_ColomnNo)
	movlw	high(04h)
	movwf	((?_ColomnNo))+1
	goto	l964
	
l5330:	
	goto	l964
	line	226
	
l967:	
	line	227
;Automated Solar Panel Orientation Setter.c: 226: }
;Automated Solar Panel Orientation Setter.c: 227: }
	goto	l964
	line	228
	
l962:	
	
l5332:	
;Automated Solar Panel Orientation Setter.c: 228: else if(rowNo==2){
	movlw	02h
	xorwf	(ColomnNo@rowNo),w
	iorwf	(ColomnNo@rowNo+1),w
	skipz
	goto	u7401
	goto	u7400
u7401:
	goto	l5352
u7400:
	line	229
	
l5334:	
;Automated Solar Panel Orientation Setter.c: 229: RC4 = 1;
	bsf	(60/8),(60)&7
	line	230
;Automated Solar Panel Orientation Setter.c: 230: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	231
;Automated Solar Panel Orientation Setter.c: 231: if(RD7==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(71/8),(71)&7
	goto	u7411
	goto	u7410
u7411:
	goto	l970
u7410:
	line	232
	
l5336:	
;Automated Solar Panel Orientation Setter.c: 232: return 1;
	movlw	low(01h)
	movwf	(?_ColomnNo)
	movlw	high(01h)
	movwf	((?_ColomnNo))+1
	goto	l964
	
l5338:	
	goto	l964
	line	233
	
l970:	
	line	234
;Automated Solar Panel Orientation Setter.c: 233: }
;Automated Solar Panel Orientation Setter.c: 234: RD5 = 1;
	bsf	(69/8),(69)&7
	line	235
;Automated Solar Panel Orientation Setter.c: 235: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	236
;Automated Solar Panel Orientation Setter.c: 236: if(RD7==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(71/8),(71)&7
	goto	u7421
	goto	u7420
u7421:
	goto	l971
u7420:
	line	237
	
l5340:	
;Automated Solar Panel Orientation Setter.c: 237: return 2;
	movlw	low(02h)
	movwf	(?_ColomnNo)
	movlw	high(02h)
	movwf	((?_ColomnNo))+1
	goto	l964
	
l5342:	
	goto	l964
	line	238
	
l971:	
	line	239
;Automated Solar Panel Orientation Setter.c: 238: }
;Automated Solar Panel Orientation Setter.c: 239: RC5 = 1;
	bsf	(61/8),(61)&7
	line	240
;Automated Solar Panel Orientation Setter.c: 240: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	241
;Automated Solar Panel Orientation Setter.c: 241: if(RD7==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(71/8),(71)&7
	goto	u7431
	goto	u7430
u7431:
	goto	l972
u7430:
	line	242
	
l5344:	
;Automated Solar Panel Orientation Setter.c: 242: return 3;
	movlw	low(03h)
	movwf	(?_ColomnNo)
	movlw	high(03h)
	movwf	((?_ColomnNo))+1
	goto	l964
	
l5346:	
	goto	l964
	line	243
	
l972:	
	line	244
;Automated Solar Panel Orientation Setter.c: 243: }
;Automated Solar Panel Orientation Setter.c: 244: RD4 = 1;
	bsf	(68/8),(68)&7
	line	245
;Automated Solar Panel Orientation Setter.c: 245: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	246
;Automated Solar Panel Orientation Setter.c: 246: if(RD7==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(71/8),(71)&7
	goto	u7441
	goto	u7440
u7441:
	goto	l964
u7440:
	line	247
	
l5348:	
;Automated Solar Panel Orientation Setter.c: 247: return 4;
	movlw	low(04h)
	movwf	(?_ColomnNo)
	movlw	high(04h)
	movwf	((?_ColomnNo))+1
	goto	l964
	
l5350:	
	goto	l964
	line	248
	
l973:	
	line	249
;Automated Solar Panel Orientation Setter.c: 248: }
;Automated Solar Panel Orientation Setter.c: 249: }
	goto	l964
	line	250
	
l969:	
	
l5352:	
;Automated Solar Panel Orientation Setter.c: 250: else if(rowNo==3){
	movlw	03h
	xorwf	(ColomnNo@rowNo),w
	iorwf	(ColomnNo@rowNo+1),w
	skipz
	goto	u7451
	goto	u7450
u7451:
	goto	l5372
u7450:
	line	251
	
l5354:	
;Automated Solar Panel Orientation Setter.c: 251: RC4 = 1;
	bsf	(60/8),(60)&7
	line	252
;Automated Solar Panel Orientation Setter.c: 252: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	253
;Automated Solar Panel Orientation Setter.c: 253: if(RD3==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(67/8),(67)&7
	goto	u7461
	goto	u7460
u7461:
	goto	l976
u7460:
	line	254
	
l5356:	
;Automated Solar Panel Orientation Setter.c: 254: return 1;
	movlw	low(01h)
	movwf	(?_ColomnNo)
	movlw	high(01h)
	movwf	((?_ColomnNo))+1
	goto	l964
	
l5358:	
	goto	l964
	line	255
	
l976:	
	line	256
;Automated Solar Panel Orientation Setter.c: 255: }
;Automated Solar Panel Orientation Setter.c: 256: RD5 = 1;
	bsf	(69/8),(69)&7
	line	257
;Automated Solar Panel Orientation Setter.c: 257: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	258
;Automated Solar Panel Orientation Setter.c: 258: if(RD3==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(67/8),(67)&7
	goto	u7471
	goto	u7470
u7471:
	goto	l977
u7470:
	line	259
	
l5360:	
;Automated Solar Panel Orientation Setter.c: 259: return 2;
	movlw	low(02h)
	movwf	(?_ColomnNo)
	movlw	high(02h)
	movwf	((?_ColomnNo))+1
	goto	l964
	
l5362:	
	goto	l964
	line	260
	
l977:	
	line	261
;Automated Solar Panel Orientation Setter.c: 260: }
;Automated Solar Panel Orientation Setter.c: 261: RC5 = 1;
	bsf	(61/8),(61)&7
	line	262
;Automated Solar Panel Orientation Setter.c: 262: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	263
;Automated Solar Panel Orientation Setter.c: 263: if(RD3==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(67/8),(67)&7
	goto	u7481
	goto	u7480
u7481:
	goto	l978
u7480:
	line	264
	
l5364:	
;Automated Solar Panel Orientation Setter.c: 264: return 3;
	movlw	low(03h)
	movwf	(?_ColomnNo)
	movlw	high(03h)
	movwf	((?_ColomnNo))+1
	goto	l964
	
l5366:	
	goto	l964
	line	265
	
l978:	
	line	266
;Automated Solar Panel Orientation Setter.c: 265: }
;Automated Solar Panel Orientation Setter.c: 266: RD4 = 1;
	bsf	(68/8),(68)&7
	line	267
;Automated Solar Panel Orientation Setter.c: 267: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	268
;Automated Solar Panel Orientation Setter.c: 268: if(RD3==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(67/8),(67)&7
	goto	u7491
	goto	u7490
u7491:
	goto	l964
u7490:
	line	269
	
l5368:	
;Automated Solar Panel Orientation Setter.c: 269: return 4;
	movlw	low(04h)
	movwf	(?_ColomnNo)
	movlw	high(04h)
	movwf	((?_ColomnNo))+1
	goto	l964
	
l5370:	
	goto	l964
	line	270
	
l979:	
	line	271
;Automated Solar Panel Orientation Setter.c: 270: }
;Automated Solar Panel Orientation Setter.c: 271: }
	goto	l964
	line	272
	
l975:	
	
l5372:	
;Automated Solar Panel Orientation Setter.c: 272: else if(rowNo==4){
	movlw	04h
	xorwf	(ColomnNo@rowNo),w
	iorwf	(ColomnNo@rowNo+1),w
	skipz
	goto	u7501
	goto	u7500
u7501:
	goto	l964
u7500:
	line	273
	
l5374:	
;Automated Solar Panel Orientation Setter.c: 273: RC4 = 1;
	bsf	(60/8),(60)&7
	line	274
;Automated Solar Panel Orientation Setter.c: 274: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	275
;Automated Solar Panel Orientation Setter.c: 275: if(RD6==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(70/8),(70)&7
	goto	u7511
	goto	u7510
u7511:
	goto	l982
u7510:
	line	276
	
l5376:	
;Automated Solar Panel Orientation Setter.c: 276: return 1;
	movlw	low(01h)
	movwf	(?_ColomnNo)
	movlw	high(01h)
	movwf	((?_ColomnNo))+1
	goto	l964
	
l5378:	
	goto	l964
	line	277
	
l982:	
	line	278
;Automated Solar Panel Orientation Setter.c: 277: }
;Automated Solar Panel Orientation Setter.c: 278: RD5 = 1;
	bsf	(69/8),(69)&7
	line	279
;Automated Solar Panel Orientation Setter.c: 279: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	280
;Automated Solar Panel Orientation Setter.c: 280: if(RD6==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(70/8),(70)&7
	goto	u7521
	goto	u7520
u7521:
	goto	l983
u7520:
	line	281
	
l5380:	
;Automated Solar Panel Orientation Setter.c: 281: return 2;
	movlw	low(02h)
	movwf	(?_ColomnNo)
	movlw	high(02h)
	movwf	((?_ColomnNo))+1
	goto	l964
	
l5382:	
	goto	l964
	line	282
	
l983:	
	line	283
;Automated Solar Panel Orientation Setter.c: 282: }
;Automated Solar Panel Orientation Setter.c: 283: RC5 = 1;
	bsf	(61/8),(61)&7
	line	284
;Automated Solar Panel Orientation Setter.c: 284: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	285
;Automated Solar Panel Orientation Setter.c: 285: if(RD6==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(70/8),(70)&7
	goto	u7531
	goto	u7530
u7531:
	goto	l984
u7530:
	line	286
	
l5384:	
;Automated Solar Panel Orientation Setter.c: 286: return 3;
	movlw	low(03h)
	movwf	(?_ColomnNo)
	movlw	high(03h)
	movwf	((?_ColomnNo))+1
	goto	l964
	
l5386:	
	goto	l964
	line	287
	
l984:	
	line	288
;Automated Solar Panel Orientation Setter.c: 287: }
;Automated Solar Panel Orientation Setter.c: 288: RD4 = 1;
	bsf	(68/8),(68)&7
	line	289
;Automated Solar Panel Orientation Setter.c: 289: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	290
;Automated Solar Panel Orientation Setter.c: 290: if(RD6==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(70/8),(70)&7
	goto	u7541
	goto	u7540
u7541:
	goto	l964
u7540:
	line	291
	
l5388:	
;Automated Solar Panel Orientation Setter.c: 291: return 4;
	movlw	low(04h)
	movwf	(?_ColomnNo)
	movlw	high(04h)
	movwf	((?_ColomnNo))+1
	goto	l964
	
l5390:	
	goto	l964
	line	292
	
l985:	
	goto	l964
	line	293
	
l981:	
	goto	l964
	line	294
	
l980:	
	goto	l964
	
l974:	
	goto	l964
	
l968:	
	
l964:	
	return
	opt stack 0
GLOBAL	__end_of_ColomnNo
	__end_of_ColomnNo:
;; =============== function _ColomnNo ends ============

	signat	_ColomnNo,4218
	global	_Serial_Init
psect	text908,local,class=CODE,delta=2
global __ptext908
__ptext908:

;; *************** function _Serial_Init *****************
;; Defined at:
;;		line 7 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\serial.h"
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
psect	text908
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\serial.h"
	line	7
	global	__size_of_Serial_Init
	__size_of_Serial_Init	equ	__end_of_Serial_Init-_Serial_Init
	
_Serial_Init:	
	opt	stack 4
; Regs used in _Serial_Init: [wreg]
	line	10
	
l5300:	
;serial.h: 10: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	line	11
;serial.h: 11: RX9 = 0;
	bcf	(198/8),(198)&7
	line	12
;serial.h: 12: CREN = 1;
	bsf	(196/8),(196)&7
	line	13
;serial.h: 13: TX9 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1222/8)^080h,(1222)&7
	line	14
;serial.h: 14: TXEN = 1;
	bsf	(1221/8)^080h,(1221)&7
	line	15
;serial.h: 15: SYNC = 0;
	bcf	(1220/8)^080h,(1220)&7
	line	16
;serial.h: 16: BRGH = 1;
	bsf	(1218/8)^080h,(1218)&7
	line	17
	
l5302:	
;serial.h: 17: SPBRG = 129;
	movlw	(081h)
	movwf	(153)^080h	;volatile
	line	18
	
l5304:	
;serial.h: 18: RCIE = 1;
	bsf	(1125/8)^080h,(1125)&7
	line	19
	
l5306:	
;serial.h: 19: TXIE = 0;
	bcf	(1124/8)^080h,(1124)&7
	line	20
	
l5308:	
;serial.h: 20: ADDEN = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(195/8),(195)&7
	line	21
;serial.h: 21: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_Serial_Init+0)+0+2),f
movlw	138
movwf	((??_Serial_Init+0)+0+1),f
	movlw	86
movwf	((??_Serial_Init+0)+0),f
u9007:
	decfsz	((??_Serial_Init+0)+0),f
	goto	u9007
	decfsz	((??_Serial_Init+0)+0+1),f
	goto	u9007
	decfsz	((??_Serial_Init+0)+0+2),f
	goto	u9007
	nop2
opt asmopt_on

	line	22
	
l832:	
	return
	opt stack 0
GLOBAL	__end_of_Serial_Init
	__end_of_Serial_Init:
;; =============== function _Serial_Init ends ============

	signat	_Serial_Init,88
	global	_lcd_add
psect	text909,local,class=CODE,delta=2
global __ptext909
__ptext909:

;; *************** function _lcd_add *****************
;; Defined at:
;;		line 217 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\lcdV2.h"
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
psect	text909
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\lcdV2.h"
	line	217
	global	__size_of_lcd_add
	__size_of_lcd_add	equ	__end_of_lcd_add-_lcd_add
	
_lcd_add:	
	opt	stack 3
; Regs used in _lcd_add: [wreg+status,2+status,0]
	line	218
	
l5252:	
;lcdV2.h: 218: lcd_data_high = lcd_data >> 4;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??_lcd_add+0)+0
	movlw	04h
u7015:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u7015
	movf	0+(??_lcd_add+0)+0,w
	movwf	(??_lcd_add+1)+0
	movf	(??_lcd_add+1)+0,w
	movwf	(_lcd_data_high)
	line	219
;lcdV2.h: 219: lcd_data_low = lcd_data << 4;
	movf	(_lcd_data),w
	movwf	(??_lcd_add+0)+0
	movlw	(04h)-1
u7025:
	clrc
	rlf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u7025
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
u7035:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u7035
	movf	0+(??_lcd_add+0)+0,w
	movwf	(??_lcd_add+1)+0
	movf	(??_lcd_add+1)+0,w
	movwf	(_lcd_data_low)
	line	222
	
l5254:	
;lcdV2.h: 222: bit0 = lcd_data;
	bcf	(_bit0/8),(_bit0)&7
	btfss	(_lcd_data),0
	goto	u7045
	bsf	(_bit0/8),(_bit0)&7
u7045:

	line	223
;lcdV2.h: 223: bit1 = lcd_data>>1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??_lcd_add+0)+0
	movlw	01h
u7055:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u7055
	bcf	(_bit1/8),(_bit1)&7
	btfss	0+(??_lcd_add+0)+0,0
	goto	u7065
	bsf	(_bit1/8),(_bit1)&7
u7065:

	line	224
;lcdV2.h: 224: bit2 = lcd_data>>2;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??_lcd_add+0)+0
	movlw	02h
u7075:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u7075
	bcf	(_bit2/8),(_bit2)&7
	btfss	0+(??_lcd_add+0)+0,0
	goto	u7085
	bsf	(_bit2/8),(_bit2)&7
u7085:

	line	225
;lcdV2.h: 225: bit3 = lcd_data>>3;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??_lcd_add+0)+0
	movlw	03h
u7095:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u7095
	bcf	(_bit3/8),(_bit3)&7
	btfss	0+(??_lcd_add+0)+0,0
	goto	u7105
	bsf	(_bit3/8),(_bit3)&7
u7105:

	line	226
;lcdV2.h: 226: bit4 = lcd_data>>4;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??_lcd_add+0)+0
	movlw	04h
u7115:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u7115
	bcf	(_bit4/8),(_bit4)&7
	btfss	0+(??_lcd_add+0)+0,0
	goto	u7125
	bsf	(_bit4/8),(_bit4)&7
u7125:

	line	227
;lcdV2.h: 227: bit5 = lcd_data>>5;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??_lcd_add+0)+0
	movlw	05h
u7135:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u7135
	bcf	(_bit5/8),(_bit5)&7
	btfss	0+(??_lcd_add+0)+0,0
	goto	u7145
	bsf	(_bit5/8),(_bit5)&7
u7145:

	line	228
;lcdV2.h: 228: bit6 = lcd_data>>6;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??_lcd_add+0)+0
	movlw	06h
u7155:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u7155
	bcf	(_bit6/8),(_bit6)&7
	btfss	0+(??_lcd_add+0)+0,0
	goto	u7165
	bsf	(_bit6/8),(_bit6)&7
u7165:

	line	229
;lcdV2.h: 229: bit7 = lcd_data>>7;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??_lcd_add+0)+0
	movlw	07h
u7175:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u7175
	bcf	(_bit7/8),(_bit7)&7
	btfss	0+(??_lcd_add+0)+0,0
	goto	u7185
	bsf	(_bit7/8),(_bit7)&7
u7185:

	line	231
	
l5256:	
;lcdV2.h: 231: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	232
	
l5258:	
;lcdV2.h: 232: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	233
	
l5260:	
;lcdV2.h: 233: RC3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	line	234
	
l5262:	
;lcdV2.h: 234: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	236
	
l5264:	
;lcdV2.h: 236: RC1 = bit4;
	btfsc	(_bit4/8),(_bit4)&7
	goto	u7191
	goto	u7190
	
u7191:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u7204
u7190:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u7204:
	line	237
	
l5266:	
;lcdV2.h: 237: RD0 = bit5;
	btfsc	(_bit5/8),(_bit5)&7
	goto	u7211
	goto	u7210
	
u7211:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	goto	u7224
u7210:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
u7224:
	line	238
	
l5268:	
;lcdV2.h: 238: RC0 = bit6;
	btfsc	(_bit6/8),(_bit6)&7
	goto	u7231
	goto	u7230
	
u7231:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u7244
u7230:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u7244:
	line	239
	
l5270:	
;lcdV2.h: 239: RD1 = bit7;
	btfsc	(_bit7/8),(_bit7)&7
	goto	u7251
	goto	u7250
	
u7251:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	goto	u7264
u7250:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
u7264:
	line	241
	
l5272:	
;lcdV2.h: 241: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	242
	
l5274:	
;lcdV2.h: 242: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	243
	
l5276:	
;lcdV2.h: 243: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	247
	
l5278:	
;lcdV2.h: 247: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	248
	
l5280:	
;lcdV2.h: 248: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	249
	
l5282:	
;lcdV2.h: 249: RC3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	line	250
	
l5284:	
;lcdV2.h: 250: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	252
	
l5286:	
;lcdV2.h: 252: RC1 = bit0;
	btfsc	(_bit0/8),(_bit0)&7
	goto	u7271
	goto	u7270
	
u7271:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u7284
u7270:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u7284:
	line	253
	
l5288:	
;lcdV2.h: 253: RD0 = bit1;
	btfsc	(_bit1/8),(_bit1)&7
	goto	u7291
	goto	u7290
	
u7291:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	goto	u7304
u7290:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
u7304:
	line	254
	
l5290:	
;lcdV2.h: 254: RC0 = bit2;
	btfsc	(_bit2/8),(_bit2)&7
	goto	u7311
	goto	u7310
	
u7311:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u7324
u7310:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u7324:
	line	255
	
l5292:	
;lcdV2.h: 255: RD1 = bit3;
	btfsc	(_bit3/8),(_bit3)&7
	goto	u7331
	goto	u7330
	
u7331:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	goto	u7344
u7330:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
u7344:
	line	257
	
l5294:	
;lcdV2.h: 257: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	258
	
l5296:	
;lcdV2.h: 258: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	259
	
l5298:	
;lcdV2.h: 259: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	260
	
l817:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_add
	__end_of_lcd_add:
;; =============== function _lcd_add ends ============

	signat	_lcd_add,88
	global	___lwmod
psect	text910,local,class=CODE,delta=2
global __ptext910
__ptext910:

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
psect	text910
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 3
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l5106:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u6451
	goto	u6450
u6451:
	goto	l5124
u6450:
	line	9
	
l5108:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l5114
	
l1926:	
	line	11
	
l5110:	
	movlw	01h
	
u6465:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u6465
	line	12
	
l5112:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l5114
	line	13
	
l1925:	
	line	10
	
l5114:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u6471
	goto	u6470
u6471:
	goto	l5110
u6470:
	goto	l5116
	
l1927:	
	goto	l5116
	line	14
	
l1928:	
	line	15
	
l5116:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u6485
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u6485:
	skipc
	goto	u6481
	goto	u6480
u6481:
	goto	l5120
u6480:
	line	16
	
l5118:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l5120
	
l1929:	
	line	17
	
l5120:	
	movlw	01h
	
u6495:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u6495
	line	18
	
l5122:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u6501
	goto	u6500
u6501:
	goto	l5116
u6500:
	goto	l5124
	
l1930:	
	goto	l5124
	line	19
	
l1924:	
	line	20
	
l5124:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l1931
	
l5126:	
	line	21
	
l1931:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text911,local,class=CODE,delta=2
global __ptext911
__ptext911:

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
psect	text911
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 3
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l5080:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l5082:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u6381
	goto	u6380
u6381:
	goto	l5102
u6380:
	line	11
	
l5084:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l5090
	
l1916:	
	line	13
	
l5086:	
	movlw	01h
	
u6395:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u6395
	line	14
	
l5088:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l5090
	line	15
	
l1915:	
	line	12
	
l5090:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u6401
	goto	u6400
u6401:
	goto	l5086
u6400:
	goto	l5092
	
l1917:	
	goto	l5092
	line	16
	
l1918:	
	line	17
	
l5092:	
	movlw	01h
	
u6415:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u6415
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u6425
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u6425:
	skipc
	goto	u6421
	goto	u6420
u6421:
	goto	l5098
u6420:
	line	19
	
l5094:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l5096:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l5098
	line	21
	
l1919:	
	line	22
	
l5098:	
	movlw	01h
	
u6435:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u6435
	line	23
	
l5100:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u6441
	goto	u6440
u6441:
	goto	l5092
u6440:
	goto	l5102
	
l1920:	
	goto	l5102
	line	24
	
l1914:	
	line	25
	
l5102:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l1921
	
l5104:	
	line	26
	
l1921:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text912,local,class=CODE,delta=2
global __ptext912
__ptext912:

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
psect	text912
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 3
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l5068:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l5070
	line	6
	
l1908:	
	line	7
	
l5070:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u6341
	goto	u6340
u6341:
	goto	l1909
u6340:
	line	8
	
l5072:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l1909:	
	line	9
	movlw	01h
	
u6355:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u6355
	line	10
	
l5074:	
	movlw	01h
	
u6365:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u6365
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u6371
	goto	u6370
u6371:
	goto	l5070
u6370:
	goto	l5076
	
l1910:	
	line	12
	
l5076:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l1911
	
l5078:	
	line	13
	
l1911:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	___bmul
psect	text913,local,class=CODE,delta=2
global __ptext913
__ptext913:

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
psect	text913
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
	
l5054:	
	clrf	(___bmul@product)
	line	6
	
l1902:	
	line	7
	btfss	(___bmul@multiplier),(0)&7
	goto	u6321
	goto	u6320
u6321:
	goto	l5058
u6320:
	line	8
	
l5056:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l5058
	
l1903:	
	line	9
	
l5058:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	10
	
l5060:	
	clrc
	rrf	(___bmul@multiplier),f

	line	11
	
l5062:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u6331
	goto	u6330
u6331:
	goto	l1902
u6330:
	goto	l5064
	
l1904:	
	line	12
	
l5064:	
	movf	(___bmul@product),w
	goto	l1905
	
l5066:	
	line	13
	
l1905:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	_isdigit
psect	text914,local,class=CODE,delta=2
global __ptext914
__ptext914:

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
psect	text914
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
	
l5042:	
	clrf	(_isdigit$1773)
	
l5044:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u6301
	goto	u6300
u6301:
	goto	l5050
u6300:
	
l5046:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u6311
	goto	u6310
u6311:
	goto	l5050
u6310:
	
l5048:	
	clrf	(_isdigit$1773)
	bsf	status,0
	rlf	(_isdigit$1773),f
	goto	l5050
	
l1898:	
	
l5050:	
	rrf	(_isdigit$1773),w
	
	goto	l1899
	
l5052:	
	line	15
	
l1899:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_RowNo
psect	text915,local,class=CODE,delta=2
global __ptext915
__ptext915:

;; *************** function _RowNo *****************
;; Defined at:
;;		line 296 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\Automated Solar Panel Orientation Setter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  row             2    2[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_CheckKeyPad
;; This function uses a non-reentrant model
;;
psect	text915
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\Automated Solar Panel Orientation Setter.c"
	line	296
	global	__size_of_RowNo
	__size_of_RowNo	equ	__end_of_RowNo-_RowNo
	
_RowNo:	
	opt	stack 3
; Regs used in _RowNo: [wreg+status,2+status,0]
	line	298
	
l4848:	
;Automated Solar Panel Orientation Setter.c: 297: int row;
;Automated Solar Panel Orientation Setter.c: 298: if( RD2!=1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(66/8),(66)&7
	goto	u5811
	goto	u5810
u5811:
	goto	l988
u5810:
	line	299
	
l4850:	
;Automated Solar Panel Orientation Setter.c: 299: row = 1;
	movlw	low(01h)
	movwf	(RowNo@row)
	movlw	high(01h)
	movwf	((RowNo@row))+1
	line	300
;Automated Solar Panel Orientation Setter.c: 300: }
	goto	l4860
	line	301
	
l988:	
;Automated Solar Panel Orientation Setter.c: 301: else if( RD7!=1 ){
	btfsc	(71/8),(71)&7
	goto	u5821
	goto	u5820
u5821:
	goto	l990
u5820:
	line	302
	
l4852:	
;Automated Solar Panel Orientation Setter.c: 302: row = 2;
	movlw	low(02h)
	movwf	(RowNo@row)
	movlw	high(02h)
	movwf	((RowNo@row))+1
	line	303
;Automated Solar Panel Orientation Setter.c: 303: }
	goto	l4860
	line	304
	
l990:	
;Automated Solar Panel Orientation Setter.c: 304: else if( RD3!=1 ){
	btfsc	(67/8),(67)&7
	goto	u5831
	goto	u5830
u5831:
	goto	l992
u5830:
	line	305
	
l4854:	
;Automated Solar Panel Orientation Setter.c: 305: row = 3;
	movlw	low(03h)
	movwf	(RowNo@row)
	movlw	high(03h)
	movwf	((RowNo@row))+1
	line	306
;Automated Solar Panel Orientation Setter.c: 306: }
	goto	l4860
	line	307
	
l992:	
;Automated Solar Panel Orientation Setter.c: 307: else if( RD6!=1 ){
	btfsc	(70/8),(70)&7
	goto	u5841
	goto	u5840
u5841:
	goto	l4858
u5840:
	line	308
	
l4856:	
;Automated Solar Panel Orientation Setter.c: 308: row = 4;
	movlw	low(04h)
	movwf	(RowNo@row)
	movlw	high(04h)
	movwf	((RowNo@row))+1
	line	309
;Automated Solar Panel Orientation Setter.c: 309: }
	goto	l4860
	line	310
	
l994:	
	line	311
	
l4858:	
;Automated Solar Panel Orientation Setter.c: 310: else{
;Automated Solar Panel Orientation Setter.c: 311: row = 0;
	clrf	(RowNo@row)
	clrf	(RowNo@row+1)
	goto	l4860
	line	312
	
l995:	
	goto	l4860
	
l993:	
	goto	l4860
	
l991:	
	goto	l4860
	
l989:	
	line	313
	
l4860:	
;Automated Solar Panel Orientation Setter.c: 312: }
;Automated Solar Panel Orientation Setter.c: 313: return row;
	movf	(RowNo@row+1),w
	clrf	(?_RowNo+1)
	addwf	(?_RowNo+1)
	movf	(RowNo@row),w
	clrf	(?_RowNo)
	addwf	(?_RowNo)

	goto	l996
	
l4862:	
	line	314
	
l996:	
	return
	opt stack 0
GLOBAL	__end_of_RowNo
	__end_of_RowNo:
;; =============== function _RowNo ends ============

	signat	_RowNo,90
	global	_Timer1_Init
psect	text916,local,class=CODE,delta=2
global __ptext916
__ptext916:

;; *************** function _Timer1_Init *****************
;; Defined at:
;;		line 4 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\timer1.h"
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
psect	text916
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\timer1.h"
	line	4
	global	__size_of_Timer1_Init
	__size_of_Timer1_Init	equ	__end_of_Timer1_Init-_Timer1_Init
	
_Timer1_Init:	
	opt	stack 4
; Regs used in _Timer1_Init: [wreg]
	line	6
	
l4842:	
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
	
l4844:	
;timer1.h: 11: TMR1L = 0xB0;
	movlw	(0B0h)
	movwf	(14)	;volatile
	line	12
;timer1.h: 12: TMR1H = 60;
	movlw	(03Ch)
	movwf	(15)	;volatile
	line	13
	
l4846:	
;timer1.h: 13: TMR1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	14
	
l886:	
	return
	opt stack 0
GLOBAL	__end_of_Timer1_Init
	__end_of_Timer1_Init:
;; =============== function _Timer1_Init ends ============

	signat	_Timer1_Init,88
	global	_enableInterrupt
psect	text917,local,class=CODE,delta=2
global __ptext917
__ptext917:

;; *************** function _enableInterrupt *****************
;; Defined at:
;;		line 7 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\interrupts.h"
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
psect	text917
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\interrupts.h"
	line	7
	global	__size_of_enableInterrupt
	__size_of_enableInterrupt	equ	__end_of_enableInterrupt-_enableInterrupt
	
_enableInterrupt:	
	opt	stack 4
; Regs used in _enableInterrupt: []
	line	9
	
l4840:	
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
	
l883:	
	return
	opt stack 0
GLOBAL	__end_of_enableInterrupt
	__end_of_enableInterrupt:
;; =============== function _enableInterrupt ends ============

	signat	_enableInterrupt,88
	global	_atod_init
psect	text918,local,class=CODE,delta=2
global __ptext918
__ptext918:

;; *************** function _atod_init *****************
;; Defined at:
;;		line 9 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\a2d.h"
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
psect	text918
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\a2d.h"
	line	9
	global	__size_of_atod_init
	__size_of_atod_init	equ	__end_of_atod_init-_atod_init
	
_atod_init:	
	opt	stack 4
; Regs used in _atod_init: [wreg]
	line	10
	
l4796:	
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
	
l823:	
	return
	opt stack 0
GLOBAL	__end_of_atod_init
	__end_of_atod_init:
;; =============== function _atod_init ends ============

	signat	_atod_init,88
	global	_lcd_init
psect	text919,local,class=CODE,delta=2
global __ptext919
__ptext919:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 60 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\lcdV2.h"
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
psect	text919
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\lcdV2.h"
	line	60
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 4
; Regs used in _lcd_init: [wreg+status,2]
	line	62
	
l4738:	
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
	
l4740:	
;lcdV2.h: 79: for(DelayLCD=0;DelayLCD<2500;DelayLCD++);
	clrf	(lcd_init@DelayLCD)
	clrf	(lcd_init@DelayLCD+1)
	
l4742:	
	movlw	high(09C4h)
	subwf	(lcd_init@DelayLCD+1),w
	movlw	low(09C4h)
	skipnz
	subwf	(lcd_init@DelayLCD),w
	skipc
	goto	u5611
	goto	u5610
u5611:
	goto	l4746
u5610:
	goto	l783
	
l4744:	
	goto	l783
	
l782:	
	
l4746:	
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
	goto	u5621
	goto	u5620
u5621:
	goto	l4746
u5620:
	
l783:	
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
	
l4748:	
;lcdV2.h: 95: for(DelayLCD=0;DelayLCD<2500;DelayLCD++);
	clrf	(lcd_init@DelayLCD)
	clrf	(lcd_init@DelayLCD+1)
	
l4750:	
	movlw	high(09C4h)
	subwf	(lcd_init@DelayLCD+1),w
	movlw	low(09C4h)
	skipnz
	subwf	(lcd_init@DelayLCD),w
	skipc
	goto	u5631
	goto	u5630
u5631:
	goto	l4754
u5630:
	goto	l785
	
l4752:	
	goto	l785
	
l784:	
	
l4754:	
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
	goto	u5641
	goto	u5640
u5641:
	goto	l4754
u5640:
	
l785:	
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
	
l4756:	
;lcdV2.h: 111: for(DelayLCD=0;DelayLCD<2500;DelayLCD++);
	clrf	(lcd_init@DelayLCD)
	clrf	(lcd_init@DelayLCD+1)
	
l4758:	
	movlw	high(09C4h)
	subwf	(lcd_init@DelayLCD+1),w
	movlw	low(09C4h)
	skipnz
	subwf	(lcd_init@DelayLCD),w
	skipc
	goto	u5651
	goto	u5650
u5651:
	goto	l4762
u5650:
	goto	l787
	
l4760:	
	goto	l787
	
l786:	
	
l4762:	
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
	goto	u5661
	goto	u5660
u5661:
	goto	l4762
u5660:
	
l787:	
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
	
l4764:	
;lcdV2.h: 127: for(DelayLCD=0;DelayLCD<2500;DelayLCD++);
	clrf	(lcd_init@DelayLCD)
	clrf	(lcd_init@DelayLCD+1)
	
l4766:	
	movlw	high(09C4h)
	subwf	(lcd_init@DelayLCD+1),w
	movlw	low(09C4h)
	skipnz
	subwf	(lcd_init@DelayLCD),w
	skipc
	goto	u5671
	goto	u5670
u5671:
	goto	l4770
u5670:
	goto	l789
	
l4768:	
	goto	l789
	
l788:	
	
l4770:	
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
	goto	u5681
	goto	u5680
u5681:
	goto	l4770
u5680:
	
l789:	
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
	
l4772:	
;lcdV2.h: 143: for(DelayLCD=0;DelayLCD<2500;DelayLCD++);
	clrf	(lcd_init@DelayLCD)
	clrf	(lcd_init@DelayLCD+1)
	
l4774:	
	movlw	high(09C4h)
	subwf	(lcd_init@DelayLCD+1),w
	movlw	low(09C4h)
	skipnz
	subwf	(lcd_init@DelayLCD),w
	skipc
	goto	u5691
	goto	u5690
u5691:
	goto	l4778
u5690:
	goto	l792
	
l4776:	
	goto	l792
	
l790:	
	
l4778:	
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
	goto	u5701
	goto	u5700
u5701:
	goto	l4778
u5700:
	goto	l792
	
l791:	
	line	146
	
l792:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_Setup_IOports
psect	text920,local,class=CODE,delta=2
global __ptext920
__ptext920:

;; *************** function _Setup_IOports *****************
;; Defined at:
;;		line 50 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\setup.h"
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
psect	text920
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\setup.h"
	line	50
	global	__size_of_Setup_IOports
	__size_of_Setup_IOports	equ	__end_of_Setup_IOports-_Setup_IOports
	
_Setup_IOports:	
	opt	stack 4
; Regs used in _Setup_IOports: [wreg+status,2]
	line	52
	
l4724:	
;setup.h: 52: TRISA = 0b11111111;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	53
	
l4726:	
;setup.h: 53: PORTA = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	55
	
l4728:	
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
	
l4730:	
;setup.h: 58: TRISC = 0b10000000;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	59
	
l4732:	
;setup.h: 59: PORTC = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	61
;setup.h: 61: TRISD = 0b11001100;
	movlw	(0CCh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	62
	
l4734:	
;setup.h: 62: PORTD = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	64
	
l4736:	
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
	
l779:	
	return
	opt stack 0
GLOBAL	__end_of_Setup_IOports
	__end_of_Setup_IOports:
;; =============== function _Setup_IOports ends ============

	signat	_Setup_IOports,88
	global	_isr
psect	text921,local,class=CODE,delta=2
global __ptext921
__ptext921:

;; *************** function _isr *****************
;; Defined at:
;;		line 363 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\Automated Solar Panel Orientation Setter.c"
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
psect	text921
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\Automated Solar Panel Orientation Setter.c"
	line	363
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
psect	text921
	line	364
	
i1l4872:	
;Automated Solar Panel Orientation Setter.c: 364: if(TMR1IF==1){
	btfss	(96/8),(96)&7
	goto	u585_21
	goto	u585_20
u585_21:
	goto	i1l4908
u585_20:
	line	365
	
i1l4874:	
;Automated Solar Panel Orientation Setter.c: 365: msecond ++;
	movlw	low(01h)
	addwf	(_msecond),f
	skipnc
	incf	(_msecond+1),f
	movlw	high(01h)
	addwf	(_msecond+1),f
	line	366
;Automated Solar Panel Orientation Setter.c: 366: if(msecond == 10){
	movlw	0Ah
	xorwf	(_msecond),w
	iorwf	(_msecond+1),w
	skipz
	goto	u586_21
	goto	u586_20
u586_21:
	goto	i1l1026
u586_20:
	line	367
	
i1l4876:	
;Automated Solar Panel Orientation Setter.c: 367: second ++;
	movlw	low(01h)
	addwf	(_second),f
	skipnc
	incf	(_second+1),f
	movlw	high(01h)
	addwf	(_second+1),f
	line	370
;Automated Solar Panel Orientation Setter.c: 370: RD6 = !RD6;
	movlw	1<<((70)&7)
	xorwf	((70)/8),f
	line	371
	
i1l4878:	
;Automated Solar Panel Orientation Setter.c: 371: msecond = 0;
	clrf	(_msecond)
	clrf	(_msecond+1)
	line	372
	
i1l4880:	
;Automated Solar Panel Orientation Setter.c: 372: if( second == 60){
	movlw	03Ch
	xorwf	(_second),w
	iorwf	(_second+1),w
	skipz
	goto	u587_21
	goto	u587_20
u587_21:
	goto	i1l1026
u587_20:
	line	373
	
i1l4882:	
;Automated Solar Panel Orientation Setter.c: 373: HeartRate = HeartRateCount;
	movf	(_HeartRateCount+1),w
	clrf	(_HeartRate+1)
	addwf	(_HeartRate+1)
	movf	(_HeartRateCount),w
	clrf	(_HeartRate)
	addwf	(_HeartRate)

	line	374
	
i1l4884:	
;Automated Solar Panel Orientation Setter.c: 374: HeartRateCount = 0;
	clrf	(_HeartRateCount)
	clrf	(_HeartRateCount+1)
	line	375
	
i1l4886:	
;Automated Solar Panel Orientation Setter.c: 375: minute ++;
	movlw	low(01h)
	addwf	(_minute),f
	skipnc
	incf	(_minute+1),f
	movlw	high(01h)
	addwf	(_minute+1),f
	line	376
	
i1l4888:	
;Automated Solar Panel Orientation Setter.c: 376: lcd_init();
	fcall	i1_lcd_init
	line	377
	
i1l4890:	
;Automated Solar Panel Orientation Setter.c: 377: clr_display();
	fcall	i1_clr_display
	line	378
	
i1l4892:	
;Automated Solar Panel Orientation Setter.c: 378: second = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_second)
	clrf	(_second+1)
	line	380
	
i1l4894:	
;Automated Solar Panel Orientation Setter.c: 380: x = minute%30 ;
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
	goto	i1l4898
	line	381
	
i1l4896:	
	goto	i1l4898
	line	384
	
i1l1028:	
	line	387
	
i1l4898:	
;Automated Solar Panel Orientation Setter.c: 384: }
;Automated Solar Panel Orientation Setter.c: 387: if( minute == 60){
	movlw	03Ch
	xorwf	(_minute),w
	iorwf	(_minute+1),w
	skipz
	goto	u588_21
	goto	u588_20
u588_21:
	goto	i1l1026
u588_20:
	line	388
	
i1l4900:	
;Automated Solar Panel Orientation Setter.c: 388: minute = 0;
	clrf	(_minute)
	clrf	(_minute+1)
	line	389
	
i1l4902:	
;Automated Solar Panel Orientation Setter.c: 389: hour ++;
	movlw	low(01h)
	addwf	(_hour),f
	skipnc
	incf	(_hour+1),f
	movlw	high(01h)
	addwf	(_hour+1),f
	goto	i1l1026
	line	390
	
i1l4904:	
	goto	i1l1026
	
i1l1030:	
	goto	i1l1026
	line	391
	
i1l1029:	
	goto	i1l1026
	line	392
	
i1l1027:	
	line	393
	
i1l1026:	
	line	394
;Automated Solar Panel Orientation Setter.c: 391: }
;Automated Solar Panel Orientation Setter.c: 392: }
;Automated Solar Panel Orientation Setter.c: 393: }
;Automated Solar Panel Orientation Setter.c: 394: TMR1IF = 0;
	bcf	(96/8),(96)&7
	line	395
	
i1l4906:	
;Automated Solar Panel Orientation Setter.c: 395: TMR1L = 0xB0;
	movlw	(0B0h)
	movwf	(14)	;volatile
	line	396
;Automated Solar Panel Orientation Setter.c: 396: TMR1H = 0x3C;
	movlw	(03Ch)
	movwf	(15)	;volatile
	goto	i1l4908
	line	397
	
i1l1025:	
	line	398
	
i1l4908:	
;Automated Solar Panel Orientation Setter.c: 397: }
;Automated Solar Panel Orientation Setter.c: 398: if( RCIF == 1){
	btfss	(101/8),(101)&7
	goto	u589_21
	goto	u589_20
u589_21:
	goto	i1l4928
u589_20:
	line	399
	
i1l4910:	
;Automated Solar Panel Orientation Setter.c: 399: if ((FERR == 0) && (OERR == 0))
	btfsc	(194/8),(194)&7
	goto	u590_21
	goto	u590_20
u590_21:
	goto	i1l1032
u590_20:
	
i1l4912:	
	btfsc	(193/8),(193)&7
	goto	u591_21
	goto	u591_20
u591_21:
	goto	i1l1032
u591_20:
	line	401
	
i1l4914:	
;Automated Solar Panel Orientation Setter.c: 400: {
;Automated Solar Panel Orientation Setter.c: 401: wtmp = RCREG;
	movf	(26),w	;volatile
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	movwf	(_wtmp)
	line	402
;Automated Solar Panel Orientation Setter.c: 402: if( RCREG=='*' || j > 20-1 ){
	movf	(26),w	;volatile
	xorlw	02Ah
	skipnz
	goto	u592_21
	goto	u592_20
u592_21:
	goto	i1l1035
u592_20:
	
i1l4916:	
	movlw	(014h)
	subwf	(_j),w
	skipc
	goto	u593_21
	goto	u593_20
u593_21:
	goto	i1l4918
u593_20:
	
i1l1035:	
	line	403
;Automated Solar Panel Orientation Setter.c: 403: j=0;
	clrf	(_j)
	goto	i1l4918
	line	404
	
i1l1033:	
	line	405
	
i1l4918:	
;Automated Solar Panel Orientation Setter.c: 404: }
;Automated Solar Panel Orientation Setter.c: 405: buffer[j] = RCREG;
	movf	(26),w	;volatile
	movwf	(??_isr+0)+0
	movf	(_j),w
	addlw	_buffer&0ffh
	movwf	fsr0
	movf	(??_isr+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	406
	
i1l4920:	
;Automated Solar Panel Orientation Setter.c: 406: j ++;
	movlw	(01h)
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	addwf	(_j),f
	line	407
;Automated Solar Panel Orientation Setter.c: 407: }
	goto	i1l4926
	line	408
	
i1l1032:	
	line	410
;Automated Solar Panel Orientation Setter.c: 408: else
;Automated Solar Panel Orientation Setter.c: 409: {
;Automated Solar Panel Orientation Setter.c: 410: CREN = 0;
	bcf	(196/8),(196)&7
	line	411
;Automated Solar Panel Orientation Setter.c: 411: FERR = 0;
	bcf	(194/8),(194)&7
	line	412
	
i1l4922:	
;Automated Solar Panel Orientation Setter.c: 412: wtmp = RCREG;
	movf	(26),w	;volatile
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	movwf	(_wtmp)
	line	413
;Automated Solar Panel Orientation Setter.c: 413: wtmp = RCREG;
	movf	(26),w	;volatile
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	movwf	(_wtmp)
	line	414
	
i1l4924:	
;Automated Solar Panel Orientation Setter.c: 414: CREN = 1;
	bsf	(196/8),(196)&7
	goto	i1l4926
	line	415
	
i1l1036:	
	line	416
	
i1l4926:	
;Automated Solar Panel Orientation Setter.c: 415: }
;Automated Solar Panel Orientation Setter.c: 416: RCIF = 0;
	bcf	(101/8),(101)&7
	goto	i1l4928
	line	417
	
i1l1031:	
	line	418
	
i1l4928:	
;Automated Solar Panel Orientation Setter.c: 417: }
;Automated Solar Panel Orientation Setter.c: 418: if(OERR == 1)
	btfss	(193/8),(193)&7
	goto	u594_21
	goto	u594_20
u594_21:
	goto	i1l1038
u594_20:
	line	420
	
i1l4930:	
;Automated Solar Panel Orientation Setter.c: 419: {
;Automated Solar Panel Orientation Setter.c: 420: CREN = 0;
	bcf	(196/8),(196)&7
	line	422
	
i1l4932:	
;Automated Solar Panel Orientation Setter.c: 422: wtmp = RCREG;
	movf	(26),w	;volatile
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	movwf	(_wtmp)
	line	423
;Automated Solar Panel Orientation Setter.c: 423: wtmp = RCREG;
	movf	(26),w	;volatile
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	movwf	(_wtmp)
	line	424
	
i1l4934:	
;Automated Solar Panel Orientation Setter.c: 424: CREN = 1;
	bsf	(196/8),(196)&7
	goto	i1l1038
	line	425
	
i1l1037:	
	line	427
	
i1l1038:	
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
psect	text922,local,class=CODE,delta=2
global __ptext922
__ptext922:

;; *************** function i1_clr_display *****************
;; Defined at:
;;		line 176 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\lcdV2.h"
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
psect	text922
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\lcdV2.h"
	line	176
	global	__size_ofi1_clr_display
	__size_ofi1_clr_display	equ	__end_ofi1_clr_display-i1_clr_display
	
i1_clr_display:	
	opt	stack 2
; Regs used in i1_clr_display: [wreg+status,2+status,0+pclath+cstack]
	line	177
	
i1l5170:	
;lcdV2.h: 177: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	178
	
i1l5172:	
;lcdV2.h: 178: _delay(20);
	opt asmopt_off
movlw	6
movwf	(??i1_clr_display+0)+0,f
u901_27:
decfsz	(??i1_clr_display+0)+0,f
	goto	u901_27
	clrwdt
opt asmopt_on

	line	179
	
i1l5174:	
;lcdV2.h: 179: lcd_data = 0b00000001;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_lcd_data)
	bsf	status,0
	rlf	(_lcd_data),f
	line	180
	
i1l5176:	
;lcdV2.h: 180: lcd_add();
	fcall	i1_lcd_add
	line	181
	
i1l5178:	
;lcdV2.h: 181: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??i1_clr_display+0)+0+1),f
	movlw	251
movwf	((??i1_clr_display+0)+0),f
u902_27:
	decfsz	((??i1_clr_display+0)+0),f
	goto	u902_27
	decfsz	((??i1_clr_display+0)+0+1),f
	goto	u902_27
	nop2
opt asmopt_on

	line	182
	
i1l5180:	
;lcdV2.h: 182: RC2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	line	183
	
i1l804:	
	return
	opt stack 0
GLOBAL	__end_ofi1_clr_display
	__end_ofi1_clr_display:
;; =============== function i1_clr_display ends ============

	signat	i1_clr_display,88
	global	i1_lcd_add
psect	text923,local,class=CODE,delta=2
global __ptext923
__ptext923:

;; *************** function i1_lcd_add *****************
;; Defined at:
;;		line 217 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\lcdV2.h"
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
psect	text923
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\lcdV2.h"
	line	217
	global	__size_ofi1_lcd_add
	__size_ofi1_lcd_add	equ	__end_ofi1_lcd_add-i1_lcd_add
	
i1_lcd_add:	
	opt	stack 2
; Regs used in i1_lcd_add: [wreg+status,2+status,0]
	line	218
	
i1l5182:	
;lcdV2.h: 218: lcd_data_high = lcd_data >> 4;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??i1_lcd_add+0)+0
	movlw	04h
u661_25:
	clrc
	rrf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u661_25
	movf	0+(??i1_lcd_add+0)+0,w
	movwf	(??i1_lcd_add+1)+0
	movf	(??i1_lcd_add+1)+0,w
	movwf	(_lcd_data_high)
	line	219
;lcdV2.h: 219: lcd_data_low = lcd_data << 4;
	movf	(_lcd_data),w
	movwf	(??i1_lcd_add+0)+0
	movlw	(04h)-1
u662_25:
	clrc
	rlf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u662_25
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
u663_25:
	clrc
	rrf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u663_25
	movf	0+(??i1_lcd_add+0)+0,w
	movwf	(??i1_lcd_add+1)+0
	movf	(??i1_lcd_add+1)+0,w
	movwf	(_lcd_data_low)
	line	222
	
i1l5184:	
;lcdV2.h: 222: bit0 = lcd_data;
	bcf	(_bit0/8),(_bit0)&7
	btfss	(_lcd_data),0
	goto	u664_25
	bsf	(_bit0/8),(_bit0)&7
u664_25:

	line	223
;lcdV2.h: 223: bit1 = lcd_data>>1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??i1_lcd_add+0)+0
	movlw	01h
u665_25:
	clrc
	rrf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u665_25
	bcf	(_bit1/8),(_bit1)&7
	btfss	0+(??i1_lcd_add+0)+0,0
	goto	u666_25
	bsf	(_bit1/8),(_bit1)&7
u666_25:

	line	224
;lcdV2.h: 224: bit2 = lcd_data>>2;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??i1_lcd_add+0)+0
	movlw	02h
u667_25:
	clrc
	rrf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u667_25
	bcf	(_bit2/8),(_bit2)&7
	btfss	0+(??i1_lcd_add+0)+0,0
	goto	u668_25
	bsf	(_bit2/8),(_bit2)&7
u668_25:

	line	225
;lcdV2.h: 225: bit3 = lcd_data>>3;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??i1_lcd_add+0)+0
	movlw	03h
u669_25:
	clrc
	rrf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u669_25
	bcf	(_bit3/8),(_bit3)&7
	btfss	0+(??i1_lcd_add+0)+0,0
	goto	u670_25
	bsf	(_bit3/8),(_bit3)&7
u670_25:

	line	226
;lcdV2.h: 226: bit4 = lcd_data>>4;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??i1_lcd_add+0)+0
	movlw	04h
u671_25:
	clrc
	rrf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u671_25
	bcf	(_bit4/8),(_bit4)&7
	btfss	0+(??i1_lcd_add+0)+0,0
	goto	u672_25
	bsf	(_bit4/8),(_bit4)&7
u672_25:

	line	227
;lcdV2.h: 227: bit5 = lcd_data>>5;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??i1_lcd_add+0)+0
	movlw	05h
u673_25:
	clrc
	rrf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u673_25
	bcf	(_bit5/8),(_bit5)&7
	btfss	0+(??i1_lcd_add+0)+0,0
	goto	u674_25
	bsf	(_bit5/8),(_bit5)&7
u674_25:

	line	228
;lcdV2.h: 228: bit6 = lcd_data>>6;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??i1_lcd_add+0)+0
	movlw	06h
u675_25:
	clrc
	rrf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u675_25
	bcf	(_bit6/8),(_bit6)&7
	btfss	0+(??i1_lcd_add+0)+0,0
	goto	u676_25
	bsf	(_bit6/8),(_bit6)&7
u676_25:

	line	229
;lcdV2.h: 229: bit7 = lcd_data>>7;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??i1_lcd_add+0)+0
	movlw	07h
u677_25:
	clrc
	rrf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u677_25
	bcf	(_bit7/8),(_bit7)&7
	btfss	0+(??i1_lcd_add+0)+0,0
	goto	u678_25
	bsf	(_bit7/8),(_bit7)&7
u678_25:

	line	231
	
i1l5186:	
;lcdV2.h: 231: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	232
	
i1l5188:	
;lcdV2.h: 232: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	233
	
i1l5190:	
;lcdV2.h: 233: RC3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	line	234
	
i1l5192:	
;lcdV2.h: 234: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	236
	
i1l5194:	
;lcdV2.h: 236: RC1 = bit4;
	btfsc	(_bit4/8),(_bit4)&7
	goto	u679_21
	goto	u679_20
	
u679_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u680_24
u679_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u680_24:
	line	237
	
i1l5196:	
;lcdV2.h: 237: RD0 = bit5;
	btfsc	(_bit5/8),(_bit5)&7
	goto	u681_21
	goto	u681_20
	
u681_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	goto	u682_24
u681_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
u682_24:
	line	238
	
i1l5198:	
;lcdV2.h: 238: RC0 = bit6;
	btfsc	(_bit6/8),(_bit6)&7
	goto	u683_21
	goto	u683_20
	
u683_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u684_24
u683_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u684_24:
	line	239
	
i1l5200:	
;lcdV2.h: 239: RD1 = bit7;
	btfsc	(_bit7/8),(_bit7)&7
	goto	u685_21
	goto	u685_20
	
u685_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	goto	u686_24
u685_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
u686_24:
	line	241
	
i1l5202:	
;lcdV2.h: 241: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	242
	
i1l5204:	
;lcdV2.h: 242: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	243
	
i1l5206:	
;lcdV2.h: 243: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	247
	
i1l5208:	
;lcdV2.h: 247: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	248
	
i1l5210:	
;lcdV2.h: 248: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	249
	
i1l5212:	
;lcdV2.h: 249: RC3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	line	250
	
i1l5214:	
;lcdV2.h: 250: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	252
	
i1l5216:	
;lcdV2.h: 252: RC1 = bit0;
	btfsc	(_bit0/8),(_bit0)&7
	goto	u687_21
	goto	u687_20
	
u687_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u688_24
u687_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u688_24:
	line	253
	
i1l5218:	
;lcdV2.h: 253: RD0 = bit1;
	btfsc	(_bit1/8),(_bit1)&7
	goto	u689_21
	goto	u689_20
	
u689_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	goto	u690_24
u689_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
u690_24:
	line	254
	
i1l5220:	
;lcdV2.h: 254: RC0 = bit2;
	btfsc	(_bit2/8),(_bit2)&7
	goto	u691_21
	goto	u691_20
	
u691_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u692_24
u691_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u692_24:
	line	255
	
i1l5222:	
;lcdV2.h: 255: RD1 = bit3;
	btfsc	(_bit3/8),(_bit3)&7
	goto	u693_21
	goto	u693_20
	
u693_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	goto	u694_24
u693_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
u694_24:
	line	257
	
i1l5224:	
;lcdV2.h: 257: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	258
	
i1l5226:	
;lcdV2.h: 258: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	259
	
i1l5228:	
;lcdV2.h: 259: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	260
	
i1l817:	
	return
	opt stack 0
GLOBAL	__end_ofi1_lcd_add
	__end_ofi1_lcd_add:
;; =============== function i1_lcd_add ends ============

	signat	i1_lcd_add,88
	global	i1___lwmod
psect	text924,local,class=CODE,delta=2
global __ptext924
__ptext924:

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
psect	text924
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_ofi1___lwmod
	__size_ofi1___lwmod	equ	__end_ofi1___lwmod-i1___lwmod
	
i1___lwmod:	
	opt	stack 3
; Regs used in i1___lwmod: [wreg+status,2+status,0]
	line	8
	
i1l5230:	
	movf	(i1___lwmod@divisor+1),w
	iorwf	(i1___lwmod@divisor),w
	skipnz
	goto	u695_21
	goto	u695_20
u695_21:
	goto	i1l5248
u695_20:
	line	9
	
i1l5232:	
	clrf	(i1___lwmod@counter)
	bsf	status,0
	rlf	(i1___lwmod@counter),f
	line	10
	goto	i1l5238
	
i1l1926:	
	line	11
	
i1l5234:	
	movlw	01h
	
u696_25:
	clrc
	rlf	(i1___lwmod@divisor),f
	rlf	(i1___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u696_25
	line	12
	
i1l5236:	
	movlw	(01h)
	movwf	(??i1___lwmod+0)+0
	movf	(??i1___lwmod+0)+0,w
	addwf	(i1___lwmod@counter),f
	goto	i1l5238
	line	13
	
i1l1925:	
	line	10
	
i1l5238:	
	btfss	(i1___lwmod@divisor+1),(15)&7
	goto	u697_21
	goto	u697_20
u697_21:
	goto	i1l5234
u697_20:
	goto	i1l5240
	
i1l1927:	
	goto	i1l5240
	line	14
	
i1l1928:	
	line	15
	
i1l5240:	
	movf	(i1___lwmod@divisor+1),w
	subwf	(i1___lwmod@dividend+1),w
	skipz
	goto	u698_25
	movf	(i1___lwmod@divisor),w
	subwf	(i1___lwmod@dividend),w
u698_25:
	skipc
	goto	u698_21
	goto	u698_20
u698_21:
	goto	i1l5244
u698_20:
	line	16
	
i1l5242:	
	movf	(i1___lwmod@divisor),w
	subwf	(i1___lwmod@dividend),f
	movf	(i1___lwmod@divisor+1),w
	skipc
	decf	(i1___lwmod@dividend+1),f
	subwf	(i1___lwmod@dividend+1),f
	goto	i1l5244
	
i1l1929:	
	line	17
	
i1l5244:	
	movlw	01h
	
u699_25:
	clrc
	rrf	(i1___lwmod@divisor+1),f
	rrf	(i1___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u699_25
	line	18
	
i1l5246:	
	movlw	low(01h)
	subwf	(i1___lwmod@counter),f
	btfss	status,2
	goto	u700_21
	goto	u700_20
u700_21:
	goto	i1l5240
u700_20:
	goto	i1l5248
	
i1l1930:	
	goto	i1l5248
	line	19
	
i1l1924:	
	line	20
	
i1l5248:	
	movf	(i1___lwmod@dividend+1),w
	clrf	(?i1___lwmod+1)
	addwf	(?i1___lwmod+1)
	movf	(i1___lwmod@dividend),w
	clrf	(?i1___lwmod)
	addwf	(?i1___lwmod)

	goto	i1l1931
	
i1l5250:	
	line	21
	
i1l1931:	
	return
	opt stack 0
GLOBAL	__end_ofi1___lwmod
	__end_ofi1___lwmod:
;; =============== function i1___lwmod ends ============

	signat	i1___lwmod,90
	global	i1_lcd_init
psect	text925,local,class=CODE,delta=2
global __ptext925
__ptext925:

;; *************** function i1_lcd_init *****************
;; Defined at:
;;		line 60 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\lcdV2.h"
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
psect	text925
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver2\lcdV2.h"
	line	60
	global	__size_ofi1_lcd_init
	__size_ofi1_lcd_init	equ	__end_ofi1_lcd_init-i1_lcd_init
	
i1_lcd_init:	
	opt	stack 3
; Regs used in i1_lcd_init: [wreg+status,2]
	line	62
	
i1l5128:	
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
	
i1l5130:	
;lcdV2.h: 79: for(DelayLCD=0;DelayLCD<2500;DelayLCD++);
	clrf	(i1lcd_init@DelayLCD)
	clrf	(i1lcd_init@DelayLCD+1)
	
i1l5132:	
	movlw	high(09C4h)
	subwf	(i1lcd_init@DelayLCD+1),w
	movlw	low(09C4h)
	skipnz
	subwf	(i1lcd_init@DelayLCD),w
	skipc
	goto	u651_21
	goto	u651_20
u651_21:
	goto	i1l5136
u651_20:
	goto	i1l783
	
i1l5134:	
	goto	i1l783
	
i1l782:	
	
i1l5136:	
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
	goto	u652_21
	goto	u652_20
u652_21:
	goto	i1l5136
u652_20:
	
i1l783:	
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
	
i1l5138:	
;lcdV2.h: 95: for(DelayLCD=0;DelayLCD<2500;DelayLCD++);
	clrf	(i1lcd_init@DelayLCD)
	clrf	(i1lcd_init@DelayLCD+1)
	
i1l5140:	
	movlw	high(09C4h)
	subwf	(i1lcd_init@DelayLCD+1),w
	movlw	low(09C4h)
	skipnz
	subwf	(i1lcd_init@DelayLCD),w
	skipc
	goto	u653_21
	goto	u653_20
u653_21:
	goto	i1l5144
u653_20:
	goto	i1l785
	
i1l5142:	
	goto	i1l785
	
i1l784:	
	
i1l5144:	
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
	goto	u654_21
	goto	u654_20
u654_21:
	goto	i1l5144
u654_20:
	
i1l785:	
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
	
i1l5146:	
;lcdV2.h: 111: for(DelayLCD=0;DelayLCD<2500;DelayLCD++);
	clrf	(i1lcd_init@DelayLCD)
	clrf	(i1lcd_init@DelayLCD+1)
	
i1l5148:	
	movlw	high(09C4h)
	subwf	(i1lcd_init@DelayLCD+1),w
	movlw	low(09C4h)
	skipnz
	subwf	(i1lcd_init@DelayLCD),w
	skipc
	goto	u655_21
	goto	u655_20
u655_21:
	goto	i1l5152
u655_20:
	goto	i1l787
	
i1l5150:	
	goto	i1l787
	
i1l786:	
	
i1l5152:	
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
	goto	u656_21
	goto	u656_20
u656_21:
	goto	i1l5152
u656_20:
	
i1l787:	
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
	
i1l5154:	
;lcdV2.h: 127: for(DelayLCD=0;DelayLCD<2500;DelayLCD++);
	clrf	(i1lcd_init@DelayLCD)
	clrf	(i1lcd_init@DelayLCD+1)
	
i1l5156:	
	movlw	high(09C4h)
	subwf	(i1lcd_init@DelayLCD+1),w
	movlw	low(09C4h)
	skipnz
	subwf	(i1lcd_init@DelayLCD),w
	skipc
	goto	u657_21
	goto	u657_20
u657_21:
	goto	i1l5160
u657_20:
	goto	i1l789
	
i1l5158:	
	goto	i1l789
	
i1l788:	
	
i1l5160:	
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
	goto	u658_21
	goto	u658_20
u658_21:
	goto	i1l5160
u658_20:
	
i1l789:	
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
	
i1l5162:	
;lcdV2.h: 143: for(DelayLCD=0;DelayLCD<2500;DelayLCD++);
	clrf	(i1lcd_init@DelayLCD)
	clrf	(i1lcd_init@DelayLCD+1)
	
i1l5164:	
	movlw	high(09C4h)
	subwf	(i1lcd_init@DelayLCD+1),w
	movlw	low(09C4h)
	skipnz
	subwf	(i1lcd_init@DelayLCD),w
	skipc
	goto	u659_21
	goto	u659_20
u659_21:
	goto	i1l5168
u659_20:
	goto	i1l792
	
i1l5166:	
	goto	i1l792
	
i1l790:	
	
i1l5168:	
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
	goto	u660_21
	goto	u660_20
u660_21:
	goto	i1l5168
u660_20:
	goto	i1l792
	
i1l791:	
	line	146
	
i1l792:	
	return
	opt stack 0
GLOBAL	__end_ofi1_lcd_init
	__end_ofi1_lcd_init:
;; =============== function i1_lcd_init ends ============

	signat	i1_lcd_init,88
psect	text926,local,class=CODE,delta=2
global __ptext926
__ptext926:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
