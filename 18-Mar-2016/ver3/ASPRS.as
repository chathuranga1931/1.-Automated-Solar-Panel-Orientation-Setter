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
	FNCALL	_main,_eeprom_write
	FNCALL	_main,_eeprom_read
	FNCALL	_main,_nop
	FNCALL	_main,_LCDTimeUpdate
	FNCALL	_main,_a2d_read
	FNCALL	_main,_Serial_Print_Int
	FNCALL	_main,_Serial_Print
	FNCALL	_main,_Serial_NewLine
	FNCALL	_main,_CheckMode
	FNCALL	_main,_RotateMotorLeft
	FNCALL	_main,_RotateMotorRight
	FNCALL	_LCDTimeUpdate,___lwdiv
	FNCALL	_LCDTimeUpdate,_LCD_print_char
	FNCALL	_LCDTimeUpdate,___lwmod
	FNCALL	_CheckMode,_CheckKeyPad
	FNCALL	_CheckMode,_Serial_Print
	FNCALL	_CheckMode,_Serial_Println_Int
	FNCALL	_CheckMode,_nop
	FNCALL	_printf,_putch
	FNCALL	_printf,_isdigit
	FNCALL	_printf,___wmul
	FNCALL	_printf,___bmul
	FNCALL	_printf,___lwdiv
	FNCALL	_printf,___lwmod
	FNCALL	_LCD_print_char,_position
	FNCALL	_LCD_print_char,_lcd_add
	FNCALL	_CheckKeyPad,_RowNo
	FNCALL	_CheckKeyPad,_ColomnNo
	FNCALL	_a2d_read,_read_a2d_value
	FNCALL	_clr_display,_lcd_add
	FNCALL	_position,_lcd_add
	FNCALL	_putch,_lcd_add
	FNCALL	_Serial_Print_Int,___awdiv
	FNCALL	_Serial_Print_Int,___awmod
	FNCALL	_Serial_Println_Int,___awdiv
	FNCALL	_Serial_Println_Int,___awmod
	FNROOT	_main
	FNCALL	_isr,i1_LCD_print_char
	FNCALL	_isr,i1___lwmod
	FNCALL	i1_LCD_print_char,i1_position
	FNCALL	i1_LCD_print_char,i1_lcd_add
	FNCALL	i1_position,i1_lcd_add
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_bed_nu
	global	_i
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\Automated Solar Panel Orientation Setter.c"
	line	13

;initializer for _bed_nu
	retlw	01h
	line	14

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
	global	_C_Bat
	global	_HeartRate
	global	_V_Bat
	global	_analogReadVal
	global	_currentMode
	global	_hour
	global	_ldr1
	global	_ldr2
	global	_minute
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
	global	_BlinkDet
	global	_Nop
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
	global	_temperature
	global	_HeartRateCount
	global	_heartRate
	global	_msecond
	global	_second
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
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
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
	
STR_13:	
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
	retlw	58	;':'
	retlw	32	;' '
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
	
STR_14:	
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
	
STR_15:	
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
	
STR_9:	
	retlw	44	;','
	retlw	32	;' '
	retlw	0
psect	strings
STR_10	equ	STR_9+0
STR_11	equ	STR_9+0
STR_12	equ	STR_9+0
	file	"ASPRS.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bitbssBANK0,class=BANK0,bit,space=1
global __pbitbssBANK0
__pbitbssBANK0:
_BlinkDet:
       ds      1

_Nop:
       ds      1

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

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_C_Bat:
       ds      2

_HeartRate:
       ds      2

_V_Bat:
       ds      2

_analogReadVal:
       ds      2

_currentMode:
       ds      2

_hour:
       ds      2

_ldr1:
       ds      2

_ldr2:
       ds      2

_minute:
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
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\Automated Solar Panel Orientation Setter.c"
	line	13
_bed_nu:
       ds      1

psect	dataBANK0
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\Automated Solar Panel Orientation Setter.c"
	line	14
_i:
       ds      1

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_buffer:
       ds      20

_rc:
       ds      9

_temperature:
       ds      3

_HeartRateCount:
       ds      2

_heartRate:
       ds      2

_msecond:
       ds      2

_second:
       ds      2

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

; Clear objects allocated to BITBANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbitbssBANK0/8)+0)&07Fh
	clrf	((__pbitbssBANK0/8)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+01Eh)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+028h)
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
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	??_main
??_main:	; 0 bytes @ 0x0
	ds	3
	global	main@abc
main@abc:	; 2 bytes @ 0x3
	ds	2
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_lcd_add
?_lcd_add:	; 0 bytes @ 0x0
	global	?_LCDTimeUpdate
?_LCDTimeUpdate:	; 0 bytes @ 0x0
	global	?_a2d_read
?_a2d_read:	; 0 bytes @ 0x0
	global	?_CheckMode
?_CheckMode:	; 0 bytes @ 0x0
	global	?_isdigit
?_isdigit:	; 1 bit 
	global	?_nop
?_nop:	; 0 bytes @ 0x0
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
	global	?_Serial_NewLine
?_Serial_NewLine:	; 0 bytes @ 0x0
	global	?_enableInterrupt
?_enableInterrupt:	; 0 bytes @ 0x0
	global	?_Timer1_Init
?_Timer1_Init:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_isr
?_isr:	; 0 bytes @ 0x0
	global	?i1_lcd_add
?i1_lcd_add:	; 0 bytes @ 0x0
	global	??i1_lcd_add
??i1_lcd_add:	; 0 bytes @ 0x0
	global	?_eeprom_read
?_eeprom_read:	; 1 bytes @ 0x0
	global	?_CheckKeyPad
?_CheckKeyPad:	; 1 bytes @ 0x0
	global	?i1___lwmod
?i1___lwmod:	; 2 bytes @ 0x0
	global	i1___lwmod@divisor
i1___lwmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	?i1_position
?i1_position:	; 0 bytes @ 0x2
	global	i1position@collum
i1position@collum:	; 1 bytes @ 0x2
	global	i1___lwmod@dividend
i1___lwmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??i1_position
??i1_position:	; 0 bytes @ 0x3
	ds	1
	global	??i1___lwmod
??i1___lwmod:	; 0 bytes @ 0x4
	ds	1
	global	i1position@post
i1position@post:	; 1 bytes @ 0x5
	global	i1___lwmod@counter
i1___lwmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	i1position@row
i1position@row:	; 1 bytes @ 0x6
	ds	1
	global	?i1_LCD_print_char
?i1_LCD_print_char:	; 0 bytes @ 0x7
	global	i1LCD_print_char@row
i1LCD_print_char@row:	; 2 bytes @ 0x7
	ds	2
	global	i1LCD_print_char@column
i1LCD_print_char@column:	; 2 bytes @ 0x9
	ds	2
	global	i1LCD_print_char@print_value
i1LCD_print_char@print_value:	; 1 bytes @ 0xB
	ds	1
	global	??i1_LCD_print_char
??i1_LCD_print_char:	; 0 bytes @ 0xC
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_isr
??_isr:	; 0 bytes @ 0x0
	ds	5
	global	??_lcd_add
??_lcd_add:	; 0 bytes @ 0x5
	global	??_eeprom_read
??_eeprom_read:	; 0 bytes @ 0x5
	global	?_RotateMotorLeft
?_RotateMotorLeft:	; 0 bytes @ 0x5
	global	?_RotateMotorRight
?_RotateMotorRight:	; 0 bytes @ 0x5
	global	??_isdigit
??_isdigit:	; 0 bytes @ 0x5
	global	??_nop
??_nop:	; 0 bytes @ 0x5
	global	??_Setup_IOports
??_Setup_IOports:	; 0 bytes @ 0x5
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x5
	global	??_atod_init
??_atod_init:	; 0 bytes @ 0x5
	global	??_Serial_Init
??_Serial_Init:	; 0 bytes @ 0x5
	global	??_Serial_Print
??_Serial_Print:	; 0 bytes @ 0x5
	global	??_Serial_NewLine
??_Serial_NewLine:	; 0 bytes @ 0x5
	global	??_enableInterrupt
??_enableInterrupt:	; 0 bytes @ 0x5
	global	??_Timer1_Init
??_Timer1_Init:	; 0 bytes @ 0x5
	global	?_eeprom_write
?_eeprom_write:	; 1 bytes @ 0x5
	global	?___bmul
?___bmul:	; 1 bytes @ 0x5
	global	?_RowNo
?_RowNo:	; 2 bytes @ 0x5
	global	?_ColomnNo
?_ColomnNo:	; 2 bytes @ 0x5
	global	?_read_a2d_value
?_read_a2d_value:	; 2 bytes @ 0x5
	global	?___wmul
?___wmul:	; 2 bytes @ 0x5
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x5
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x5
	global	?___awmod
?___awmod:	; 2 bytes @ 0x5
	global	eeprom_write@value
eeprom_write@value:	; 1 bytes @ 0x5
	global	_isdigit$2439
_isdigit$2439:	; 1 bytes @ 0x5
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x5
	global	lcd_init@DelayLCD
lcd_init@DelayLCD:	; 2 bytes @ 0x5
	global	ColomnNo@rowNo
ColomnNo@rowNo:	; 2 bytes @ 0x5
	global	RotateMotorLeft@value
RotateMotorLeft@value:	; 2 bytes @ 0x5
	global	RotateMotorRight@value
RotateMotorRight@value:	; 2 bytes @ 0x5
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x5
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x5
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x5
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x5
	ds	1
	global	??_eeprom_write
??_eeprom_write:	; 0 bytes @ 0x6
	global	??___bmul
??___bmul:	; 0 bytes @ 0x6
	global	Serial_Print@a
Serial_Print@a:	; 1 bytes @ 0x6
	global	eeprom_read@addr
eeprom_read@addr:	; 1 bytes @ 0x6
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x6
	ds	1
	global	?_position
?_position:	; 0 bytes @ 0x7
	global	??_RotateMotorLeft
??_RotateMotorLeft:	; 0 bytes @ 0x7
	global	??_RotateMotorRight
??_RotateMotorRight:	; 0 bytes @ 0x7
	global	??_RowNo
??_RowNo:	; 0 bytes @ 0x7
	global	??_ColomnNo
??_ColomnNo:	; 0 bytes @ 0x7
	global	??_putch
??_putch:	; 0 bytes @ 0x7
	global	??_clr_display
??_clr_display:	; 0 bytes @ 0x7
	global	??_read_a2d_value
??_read_a2d_value:	; 0 bytes @ 0x7
	global	position@collum
position@collum:	; 1 bytes @ 0x7
	global	eeprom_write@addr
eeprom_write@addr:	; 1 bytes @ 0x7
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x7
	global	RowNo@row
RowNo@row:	; 2 bytes @ 0x7
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x7
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x7
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x7
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x7
	ds	1
	global	??_position
??_position:	; 0 bytes @ 0x8
	global	putch@print_value
putch@print_value:	; 1 bytes @ 0x8
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x8
	ds	1
	global	??_CheckKeyPad
??_CheckKeyPad:	; 0 bytes @ 0x9
	global	??___wmul
??___wmul:	; 0 bytes @ 0x9
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x9
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x9
	global	??___awmod
??___awmod:	; 0 bytes @ 0x9
	global	read_a2d_value@channel
read_a2d_value@channel:	; 1 bytes @ 0x9
	global	RotateMotorLeft@i
RotateMotorLeft@i:	; 2 bytes @ 0x9
	global	RotateMotorRight@i
RotateMotorRight@i:	; 2 bytes @ 0x9
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x9
	ds	1
	global	position@post
position@post:	; 1 bytes @ 0xA
	global	CheckKeyPad@charactor
CheckKeyPad@charactor:	; 1 bytes @ 0xA
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0xA
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0xA
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0xA
	global	read_a2d_value@a2d_value
read_a2d_value@a2d_value:	; 2 bytes @ 0xA
	ds	1
	global	position@row
position@row:	; 1 bytes @ 0xB
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0xB
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0xB
	global	CheckKeyPad@colomnNo
CheckKeyPad@colomnNo:	; 2 bytes @ 0xB
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0xB
	ds	1
	global	??_a2d_read
??_a2d_read:	; 0 bytes @ 0xC
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0xC
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0xD
	global	CheckKeyPad@rowNo
CheckKeyPad@rowNo:	; 2 bytes @ 0xD
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0xD
	ds	1
	global	?_Serial_Println_Int
?_Serial_Println_Int:	; 1 bit 
	global	?_Serial_Print_Int
?_Serial_Print_Int:	; 1 bit 
	global	Serial_Println_Int@val
Serial_Println_Int@val:	; 2 bytes @ 0xE
	global	Serial_Print_Int@val
Serial_Print_Int@val:	; 2 bytes @ 0xE
	ds	1
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0xF
	ds	1
	global	??_Serial_Println_Int
??_Serial_Println_Int:	; 0 bytes @ 0x10
	global	??_Serial_Print_Int
??_Serial_Print_Int:	; 0 bytes @ 0x10
	ds	1
	global	??_CheckMode
??_CheckMode:	; 0 bytes @ 0x11
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x11
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x12
	ds	1
	global	?_LCD_print_char
?_LCD_print_char:	; 0 bytes @ 0x13
	global	?_printf
?_printf:	; 2 bytes @ 0x13
	global	CheckMode@pressedKey
CheckMode@pressedKey:	; 1 bytes @ 0x13
	global	LCD_print_char@row
LCD_print_char@row:	; 2 bytes @ 0x13
	ds	2
	global	??_printf
??_printf:	; 0 bytes @ 0x15
	global	LCD_print_char@column
LCD_print_char@column:	; 2 bytes @ 0x15
	ds	2
	global	LCD_print_char@print_value
LCD_print_char@print_value:	; 1 bytes @ 0x17
	ds	1
	global	??_LCD_print_char
??_LCD_print_char:	; 0 bytes @ 0x18
	global	_printf$1463
_printf$1463:	; 2 bytes @ 0x18
	ds	1
	global	??_LCDTimeUpdate
??_LCDTimeUpdate:	; 0 bytes @ 0x19
	ds	1
	global	_printf$1464
_printf$1464:	; 2 bytes @ 0x1A
	ds	2
	global	_printf$1467
_printf$1467:	; 1 bytes @ 0x1C
	ds	1
	global	printf@ap
printf@ap:	; 1 bytes @ 0x1D
	ds	1
	global	printf@f
printf@f:	; 1 bytes @ 0x1E
	ds	1
	global	printf@prec
printf@prec:	; 1 bytes @ 0x1F
	ds	1
	global	printf@width
printf@width:	; 2 bytes @ 0x20
	ds	2
	global	printf@_val
printf@_val:	; 3 bytes @ 0x22
	ds	3
	global	printf@c
printf@c:	; 1 bytes @ 0x25
	ds	1
	global	printf@flag
printf@flag:	; 2 bytes @ 0x26
	ds	2
;;Data sizes: Strings 197, constant 30, data 2, bss 70, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          13     13      13
;; BANK0           80     40      74
;; BANK1           80      5      45
;; BANK3           85      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?i1___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?_RowNo	int  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?_read_a2d_value	unsigned int  size(1) Largest target is 0
;;
;; printf$1467	PTR const unsigned char  size(1) Largest target is 17
;;		 -> STR_15(CODE[17]), STR_14(CODE[17]), 
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
;; S1450$_cp	PTR const unsigned char  size(1) Largest target is 1
;;		 -> printf@c(BANK0[1]), 
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 1
;;		 -> printf@c(BANK0[1]), 
;;
;; Serial_Print@a	PTR unsigned char  size(1) Largest target is 20
;;		 -> STR_13(CODE[20]), STR_12(CODE[3]), STR_11(CODE[3]), STR_10(CODE[3]), 
;;		 -> STR_9(CODE[3]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _isr in COMMON
;;
;;   _isr->i1_LCD_print_char
;;   i1_LCD_print_char->i1_position
;;   i1_position->i1_lcd_add
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_printf
;;   _LCDTimeUpdate->_LCD_print_char
;;   _CheckMode->_Serial_Println_Int
;;   _printf->___lwmod
;;   _LCD_print_char->___lwmod
;;   _CheckKeyPad->_RowNo
;;   _a2d_read->_read_a2d_value
;;   _clr_display->_lcd_add
;;   _position->_lcd_add
;;   _putch->_lcd_add
;;   _Serial_Print_Int->___awdiv
;;   _Serial_Println_Int->___awdiv
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
;; (0) _main                                                 6     6      0   11195
;;                                              0 BANK1      5     5      0
;;                      _Setup_IOports
;;                          _atod_init
;;                           _lcd_init
;;                        _clr_display
;;                        _Serial_Init
;;                        _Timer1_Init
;;                    _enableInterrupt
;;                             _printf
;;                           _position
;;                       _eeprom_write
;;                        _eeprom_read
;;                                _nop
;;                      _LCDTimeUpdate
;;                           _a2d_read
;;                   _Serial_Print_Int
;;                       _Serial_Print
;;                     _Serial_NewLine
;;                          _CheckMode
;;                    _RotateMotorLeft
;;                   _RotateMotorRight
;; ---------------------------------------------------------------------------------
;; (1) _LCDTimeUpdate                                        1     1      0     736
;;                                             25 BANK0      1     1      0
;;                            ___lwdiv
;;                     _LCD_print_char
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (1) _CheckMode                                            3     3      0    3320
;;                                             17 BANK0      3     3      0
;;                        _CheckKeyPad
;;                       _Serial_Print
;;                 _Serial_Println_Int
;;                                _nop
;; ---------------------------------------------------------------------------------
;; (1) _printf                                              21    19      2    4373
;;                                             19 BANK0     21    19      2
;;                              _putch
;;                            _isdigit
;;                             ___wmul
;;                             ___bmul
;;                            ___lwdiv
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (2) _LCD_print_char                                       6     1      5     263
;;                                             19 BANK0      6     1      5
;;                           _position
;;                            _lcd_add
;;                            ___lwdiv (ARG)
;;                            ___lwmod (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _CheckKeyPad                                          6     6      0    1442
;;                                              9 BANK0      6     6      0
;;                              _RowNo
;;                           _ColomnNo
;; ---------------------------------------------------------------------------------
;; (1) _a2d_read                                             0     0      0     167
;;                     _read_a2d_value
;; ---------------------------------------------------------------------------------
;; (1) _clr_display                                          2     2      0       0
;;                                              7 BANK0      2     2      0
;;                            _lcd_add
;; ---------------------------------------------------------------------------------
;; (3) _position                                             5     4      1     170
;;                                              7 BANK0      5     4      1
;;                            _lcd_add
;; ---------------------------------------------------------------------------------
;; (2) _putch                                                2     2      0      31
;;                                              7 BANK0      2     2      0
;;                            _lcd_add
;; ---------------------------------------------------------------------------------
;; (3) _ColomnNo                                             2     0      2     124
;;                                              5 BANK0      2     0      2
;; ---------------------------------------------------------------------------------
;; (1) _RotateMotorRight                                     6     4      2      71
;;                                              5 BANK0      6     4      2
;; ---------------------------------------------------------------------------------
;; (1) _RotateMotorLeft                                      6     4      2      71
;;                                              5 BANK0      6     4      2
;; ---------------------------------------------------------------------------------
;; (1) _Serial_Print_Int                                     3     1      2    1748
;;                                             14 BANK0      3     1      2
;;                            ___awdiv
;;                            ___awmod
;; ---------------------------------------------------------------------------------
;; (2) _Serial_Println_Int                                   3     1      2    1748
;;                                             14 BANK0      3     1      2
;;                            ___awdiv
;;                            ___awmod
;; ---------------------------------------------------------------------------------
;; (1) _Serial_NewLine                                       1     1      0       0
;;                                              5 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _Serial_Print                                         2     2      0      96
;;                                              5 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _Serial_Init                                          3     3      0       0
;;                                              5 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (2) _read_a2d_value                                       7     5      2     167
;;                                              5 BANK0      7     5      2
;; ---------------------------------------------------------------------------------
;; (3) _lcd_add                                              2     2      0       0
;;                                              5 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (3) ___awmod                                              7     3      4     433
;;                                              5 BANK0      7     3      4
;; ---------------------------------------------------------------------------------
;; (3) ___awdiv                                              9     5      4     445
;;                                              5 BANK0      9     5      4
;; ---------------------------------------------------------------------------------
;; (2) ___lwmod                                              6     2      4     232
;;                                             13 BANK0      6     2      4
;;                            ___lwdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              8     4      4     241
;;                                              5 BANK0      8     4      4
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4     136
;;                                              5 BANK0      6     2      4
;; ---------------------------------------------------------------------------------
;; (2) ___bmul                                               4     3      1     136
;;                                              5 BANK0      4     3      1
;; ---------------------------------------------------------------------------------
;; (2) _isdigit                                              2     2      0      99
;;                                              5 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (3) _RowNo                                                4     2      2      46
;;                                              5 BANK0      4     2      2
;; ---------------------------------------------------------------------------------
;; (1) _eeprom_read                                          2     2      0      31
;;                                              5 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _eeprom_write                                         3     2      1      69
;;                                              5 BANK0      3     2      1
;; ---------------------------------------------------------------------------------
;; (1) _Timer1_Init                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _enableInterrupt                                      0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _atod_init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             2     2      0     340
;;                                              5 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _Setup_IOports                                        0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _nop                                                  0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (5) _isr                                                  5     5      0    1115
;;                                              0 BANK0      5     5      0
;;                   i1_LCD_print_char
;;                          i1___lwmod
;; ---------------------------------------------------------------------------------
;; (6) i1_LCD_print_char                                     6     1      5     594
;;                                              7 COMMON     6     1      5
;;                         i1_position
;;                          i1_lcd_add
;;                          i1___lwmod (ARG)
;; ---------------------------------------------------------------------------------
;; (7) i1_position                                           5     4      1     375
;;                                              2 COMMON     5     4      1
;;                          i1_lcd_add
;; ---------------------------------------------------------------------------------
;; (7) i1_lcd_add                                            2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (6) i1___lwmod                                            6     2      4     521
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 7
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
;;   _eeprom_write
;;   _eeprom_read
;;   _nop
;;   _LCDTimeUpdate
;;     ___lwdiv
;;     _LCD_print_char
;;       _position
;;         _lcd_add
;;       _lcd_add
;;       ___lwdiv (ARG)
;;       ___lwmod (ARG)
;;         ___lwdiv (ARG)
;;     ___lwmod
;;       ___lwdiv (ARG)
;;   _a2d_read
;;     _read_a2d_value
;;   _Serial_Print_Int
;;     ___awdiv
;;     ___awmod
;;   _Serial_Print
;;   _Serial_NewLine
;;   _CheckMode
;;     _CheckKeyPad
;;       _RowNo
;;       _ColomnNo
;;     _Serial_Print
;;     _Serial_Println_Int
;;       ___awdiv
;;       ___awmod
;;     _nop
;;   _RotateMotorLeft
;;   _RotateMotorRight
;;
;; _isr (ROOT)
;;   i1_LCD_print_char
;;     i1_position
;;       i1_lcd_add
;;     i1_lcd_add
;;     i1___lwmod (ARG)
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
;;BANK1               50      5      2D       7       56.3%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      90      12        0.0%
;;ABS                  0      0      84       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       C       2        0.0%
;;BANK0               50     28      4A       5       92.5%
;;BITBANK0            50      0       2       4        2.5%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               D      D       D       1      100.0%
;;BITCOMMON            D      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 64 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\Automated Solar Panel Orientation Setter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  abc             2    3[BANK1 ] int 
;;  pressedKey      1    0        unsigned char 
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
;;      Locals:         0       0       2       0       0
;;      Temps:          0       0       3       0       0
;;      Totals:         0       0       5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called:    8
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
;;		_eeprom_write
;;		_eeprom_read
;;		_nop
;;		_LCDTimeUpdate
;;		_a2d_read
;;		_Serial_Print_Int
;;		_Serial_Print
;;		_Serial_NewLine
;;		_CheckMode
;;		_RotateMotorLeft
;;		_RotateMotorRight
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\Automated Solar Panel Orientation Setter.c"
	line	64
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	68
	
l10186:	
;Automated Solar Panel Orientation Setter.c: 66: char pressedKey;
;Automated Solar Panel Orientation Setter.c: 68: Setup_IOports();
	fcall	_Setup_IOports
	line	71
;Automated Solar Panel Orientation Setter.c: 71: atod_init();
	fcall	_atod_init
	line	75
;Automated Solar Panel Orientation Setter.c: 75: lcd_init();
	fcall	_lcd_init
	line	76
;Automated Solar Panel Orientation Setter.c: 76: clr_display();
	fcall	_clr_display
	line	78
;Automated Solar Panel Orientation Setter.c: 78: Serial_Init();
	fcall	_Serial_Init
	line	79
;Automated Solar Panel Orientation Setter.c: 79: Timer1_Init();
	fcall	_Timer1_Init
	line	80
	
l10188:	
;Automated Solar Panel Orientation Setter.c: 80: enableInterrupt();
	fcall	_enableInterrupt
	line	84
	
l10190:	
;Automated Solar Panel Orientation Setter.c: 84: lcd_init();
	fcall	_lcd_init
	line	85
	
l10192:	
;Automated Solar Panel Orientation Setter.c: 85: clr_display();
	fcall	_clr_display
	line	87
	
l10194:	
;Automated Solar Panel Orientation Setter.c: 87: printf("Body Temperature ");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_printf
	line	88
	
l10196:	
;Automated Solar Panel Orientation Setter.c: 88: position(2,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_position)
	bsf	status,0
	rlf	(?_position),f
	movlw	(02h)
	fcall	_position
	line	89
	
l10198:	
;Automated Solar Panel Orientation Setter.c: 89: printf(" and Heart Rate  ");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_printf
	line	90
	
l10200:	
;Automated Solar Panel Orientation Setter.c: 90: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	((??_main+0)^080h+0+2),f
movlw	19
movwf	((??_main+0)^080h+0+1),f
	movlw	177
movwf	((??_main+0)^080h+0),f
u12347:
	decfsz	((??_main+0)^080h+0),f
	goto	u12347
	decfsz	((??_main+0)^080h+0+1),f
	goto	u12347
	decfsz	((??_main+0)^080h+0+2),f
	goto	u12347
	nop2
opt asmopt_on

	line	91
;Automated Solar Panel Orientation Setter.c: 91: position(1,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_position)
	bsf	status,0
	rlf	(?_position),f
	movlw	(01h)
	fcall	_position
	line	92
	
l10202:	
;Automated Solar Panel Orientation Setter.c: 92: printf("    Monitoring   ");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_printf
	line	93
	
l10204:	
;Automated Solar Panel Orientation Setter.c: 93: position(2,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_position)
	bsf	status,0
	rlf	(?_position),f
	movlw	(02h)
	fcall	_position
	line	94
;Automated Solar Panel Orientation Setter.c: 94: printf("      System     ");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_printf
	line	95
	
l10206:	
;Automated Solar Panel Orientation Setter.c: 95: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	((??_main+0)^080h+0+2),f
movlw	19
movwf	((??_main+0)^080h+0+1),f
	movlw	177
movwf	((??_main+0)^080h+0),f
u12357:
	decfsz	((??_main+0)^080h+0),f
	goto	u12357
	decfsz	((??_main+0)^080h+0+1),f
	goto	u12357
	decfsz	((??_main+0)^080h+0+2),f
	goto	u12357
	nop2
opt asmopt_on

	line	96
	
l10208:	
;Automated Solar Panel Orientation Setter.c: 96: position(1,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_position)
	bsf	status,0
	rlf	(?_position),f
	movlw	(01h)
	fcall	_position
	line	97
	
l10210:	
;Automated Solar Panel Orientation Setter.c: 97: printf("       for      ");
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_printf
	line	98
	
l10212:	
;Automated Solar Panel Orientation Setter.c: 98: position(2,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_position)
	bsf	status,0
	rlf	(?_position),f
	movlw	(02h)
	fcall	_position
	line	99
	
l10214:	
;Automated Solar Panel Orientation Setter.c: 99: printf("    Patients    ");
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_printf
	line	100
	
l10216:	
;Automated Solar Panel Orientation Setter.c: 100: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	((??_main+0)^080h+0+2),f
movlw	19
movwf	((??_main+0)^080h+0+1),f
	movlw	177
movwf	((??_main+0)^080h+0),f
u12367:
	decfsz	((??_main+0)^080h+0),f
	goto	u12367
	decfsz	((??_main+0)^080h+0+1),f
	goto	u12367
	decfsz	((??_main+0)^080h+0+2),f
	goto	u12367
	nop2
opt asmopt_on

	line	101
	
l10218:	
;Automated Solar Panel Orientation Setter.c: 101: position(1,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_position)
	bsf	status,0
	rlf	(?_position),f
	movlw	(01h)
	fcall	_position
	line	102
	
l10220:	
;Automated Solar Panel Orientation Setter.c: 102: printf("H:  62PPM Low   ",HeartRate);
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
	line	103
;Automated Solar Panel Orientation Setter.c: 103: position(2,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_position)
	bsf	status,0
	rlf	(?_position),f
	movlw	(02h)
	fcall	_position
	line	104
	
l10222:	
;Automated Solar Panel Orientation Setter.c: 104: printf("T:  84F   Low   ",analogReadVal);
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
	line	108
	
l10224:	
;Automated Solar Panel Orientation Setter.c: 108: clr_display();
	fcall	_clr_display
	line	109
	
l10226:	
;Automated Solar Panel Orientation Setter.c: 109: state = 91;
	movlw	(05Bh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_state)
	line	112
	
l10228:	
;Automated Solar Panel Orientation Setter.c: 112: _delay((unsigned long)((20)*(4000000/4000.0)));
	opt asmopt_off
movlw	26
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	((??_main+0)^080h+0+1),f
	movlw	248
movwf	((??_main+0)^080h+0),f
u12377:
	decfsz	((??_main+0)^080h+0),f
	goto	u12377
	decfsz	((??_main+0)^080h+0+1),f
	goto	u12377
	clrwdt
opt asmopt_on

	line	113
	
l10230:	
;Automated Solar Panel Orientation Setter.c: 113: eeprom_write(0x01, 0x2A );
	movlw	(02Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_eeprom_write)
	movlw	(01h)
	fcall	_eeprom_write
	line	114
	
l10232:	
;Automated Solar Panel Orientation Setter.c: 114: int abc = eeprom_read(0x00);
	movlw	(0)
	fcall	_eeprom_read
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	clrf	(??_main+0)^080h+0+1
	movf	0+(??_main+0)^080h+0,w
	movwf	(main@abc)^080h
	movf	1+(??_main+0)^080h+0,w
	movwf	(main@abc+1)^080h
	line	115
	
l10234:	
;Automated Solar Panel Orientation Setter.c: 115: nop();
	fcall	_nop
	line	116
	
l10236:	
;Automated Solar Panel Orientation Setter.c: 116: LCDTimeUpdate();
	fcall	_LCDTimeUpdate
	goto	l10280
	line	117
;Automated Solar Panel Orientation Setter.c: 117: while(1){
	
l998:	
	line	118
;Automated Solar Panel Orientation Setter.c: 118: switch (state){
	goto	l10280
	line	122
;Automated Solar Panel Orientation Setter.c: 122: case 0:
	
l1000:	
	line	124
;Automated Solar Panel Orientation Setter.c: 124: break;
	goto	l10280
	line	126
;Automated Solar Panel Orientation Setter.c: 126: case 1:
	
l1002:	
	line	127
	
l10238:	
;Automated Solar Panel Orientation Setter.c: 127: state = 10;
	movlw	(0Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_state)
	line	128
;Automated Solar Panel Orientation Setter.c: 128: break;
	goto	l10280
	line	129
;Automated Solar Panel Orientation Setter.c: 129: case 2:
	
l1003:	
	line	130
	
l10240:	
;Automated Solar Panel Orientation Setter.c: 130: state = 20;
	movlw	(014h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_state)
	line	131
;Automated Solar Panel Orientation Setter.c: 131: break;
	goto	l10280
	line	132
;Automated Solar Panel Orientation Setter.c: 132: case 3:
	
l1004:	
	line	133
	
l10242:	
;Automated Solar Panel Orientation Setter.c: 133: state = 30;
	movlw	(01Eh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_state)
	line	134
;Automated Solar Panel Orientation Setter.c: 134: break;
	goto	l10280
	line	137
;Automated Solar Panel Orientation Setter.c: 137: case 91:
	
l1005:	
	line	142
	
l10244:	
;Automated Solar Panel Orientation Setter.c: 142: state = 10;
	movlw	(0Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_state)
	line	143
;Automated Solar Panel Orientation Setter.c: 143: break;
	goto	l10280
	line	144
;Automated Solar Panel Orientation Setter.c: 144: case 10 :
	
l1006:	
	line	145
	
l10246:	
;Automated Solar Panel Orientation Setter.c: 145: a2d_read();
	fcall	_a2d_read
	line	147
	
l10248:	
;Automated Solar Panel Orientation Setter.c: 147: Serial_Print_Int(ldr1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ldr1+1),w
	clrf	(?_Serial_Print_Int+1)
	addwf	(?_Serial_Print_Int+1)
	movf	(_ldr1),w
	clrf	(?_Serial_Print_Int)
	addwf	(?_Serial_Print_Int)

	fcall	_Serial_Print_Int
	line	148
	
l10250:	
;Automated Solar Panel Orientation Setter.c: 148: Serial_Print(", ");
	movlw	((STR_9-__stringbase))&0ffh
	fcall	_Serial_Print
	line	149
	
l10252:	
;Automated Solar Panel Orientation Setter.c: 149: Serial_Print_Int(ldr2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ldr2+1),w
	clrf	(?_Serial_Print_Int+1)
	addwf	(?_Serial_Print_Int+1)
	movf	(_ldr2),w
	clrf	(?_Serial_Print_Int)
	addwf	(?_Serial_Print_Int)

	fcall	_Serial_Print_Int
	line	150
	
l10254:	
;Automated Solar Panel Orientation Setter.c: 150: Serial_Print(", ");
	movlw	((STR_10-__stringbase))&0ffh
	fcall	_Serial_Print
	line	151
	
l10256:	
;Automated Solar Panel Orientation Setter.c: 151: Serial_Print_Int(V_Bat);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_V_Bat+1),w
	clrf	(?_Serial_Print_Int+1)
	addwf	(?_Serial_Print_Int+1)
	movf	(_V_Bat),w
	clrf	(?_Serial_Print_Int)
	addwf	(?_Serial_Print_Int)

	fcall	_Serial_Print_Int
	line	152
	
l10258:	
;Automated Solar Panel Orientation Setter.c: 152: Serial_Print(", ");
	movlw	((STR_11-__stringbase))&0ffh
	fcall	_Serial_Print
	line	153
	
l10260:	
;Automated Solar Panel Orientation Setter.c: 153: Serial_Print_Int(C_Bat);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_C_Bat+1),w
	clrf	(?_Serial_Print_Int+1)
	addwf	(?_Serial_Print_Int+1)
	movf	(_C_Bat),w
	clrf	(?_Serial_Print_Int)
	addwf	(?_Serial_Print_Int)

	fcall	_Serial_Print_Int
	line	154
	
l10262:	
;Automated Solar Panel Orientation Setter.c: 154: Serial_Print(", ");
	movlw	((STR_12-__stringbase))&0ffh
	fcall	_Serial_Print
	line	155
;Automated Solar Panel Orientation Setter.c: 155: Serial_NewLine();
	fcall	_Serial_NewLine
	line	156
	
l10264:	
;Automated Solar Panel Orientation Setter.c: 156: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	((??_main+0)^080h+0+1),f
	movlw	238
movwf	((??_main+0)^080h+0),f
u12387:
	decfsz	((??_main+0)^080h+0),f
	goto	u12387
	decfsz	((??_main+0)^080h+0+1),f
	goto	u12387
	clrwdt
opt asmopt_on

	line	157
	
l10266:	
;Automated Solar Panel Orientation Setter.c: 157: nop();
	fcall	_nop
	line	161
	
l10268:	
;Automated Solar Panel Orientation Setter.c: 161: CheckMode();
	fcall	_CheckMode
	line	163
	
l10270:	
;Automated Solar Panel Orientation Setter.c: 163: RotateMotorLeft(50);
	movlw	low(032h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_RotateMotorLeft)
	movlw	high(032h)
	movwf	((?_RotateMotorLeft))+1
	fcall	_RotateMotorLeft
	line	164
	
l10272:	
;Automated Solar Panel Orientation Setter.c: 164: RotateMotorRight(50);
	movlw	low(032h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_RotateMotorRight)
	movlw	high(032h)
	movwf	((?_RotateMotorRight))+1
	fcall	_RotateMotorRight
	line	166
;Automated Solar Panel Orientation Setter.c: 166: break;
	goto	l10280
	line	169
;Automated Solar Panel Orientation Setter.c: 169: case 92 :
	
l1007:	
	line	170
;Automated Solar Panel Orientation Setter.c: 170: break;
	goto	l10280
	line	172
;Automated Solar Panel Orientation Setter.c: 172: case 20 :
	
l1008:	
	line	173
	
l10274:	
;Automated Solar Panel Orientation Setter.c: 173: CheckMode();
	fcall	_CheckMode
	line	174
;Automated Solar Panel Orientation Setter.c: 174: break;
	goto	l10280
	line	176
;Automated Solar Panel Orientation Setter.c: 176: case 93 :
	
l1009:	
	line	177
;Automated Solar Panel Orientation Setter.c: 177: break;
	goto	l10280
	line	179
;Automated Solar Panel Orientation Setter.c: 179: case 30 :
	
l1010:	
	line	180
	
l10276:	
;Automated Solar Panel Orientation Setter.c: 180: CheckMode();
	fcall	_CheckMode
	line	181
;Automated Solar Panel Orientation Setter.c: 181: break;
	goto	l10280
	line	185
	
l10278:	
;Automated Solar Panel Orientation Setter.c: 185: }
	goto	l10280
	line	118
	
l999:	
	
l10280:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_state),w
	; Switch size 1, requested type "space"
; Number of cases is 10, Range of values is 0 to 93
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           31    16 (average)
; jumptable            260     6 (fixed)
; rangetable            98     6 (fixed)
; spacedrange          194     9 (fixed)
; locatedrange          94     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l10280
	xorlw	1^0	; case 1
	skipnz
	goto	l10238
	xorlw	2^1	; case 2
	skipnz
	goto	l10240
	xorlw	3^2	; case 3
	skipnz
	goto	l10242
	xorlw	10^3	; case 10
	skipnz
	goto	l10246
	xorlw	20^10	; case 20
	skipnz
	goto	l10274
	xorlw	30^20	; case 30
	skipnz
	goto	l10276
	xorlw	91^30	; case 91
	skipnz
	goto	l10244
	xorlw	92^91	; case 92
	skipnz
	goto	l10280
	xorlw	93^92	; case 93
	skipnz
	goto	l10280
	goto	l10280
	opt asmopt_on

	line	185
	
l1001:	
	goto	l10280
	line	186
	
l1011:	
	line	117
	goto	l10280
	
l1012:	
	line	187
	
l1013:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_LCDTimeUpdate
psect	text1487,local,class=CODE,delta=2
global __ptext1487
__ptext1487:

;; *************** function _LCDTimeUpdate *****************
;; Defined at:
;;		line 594 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\Automated Solar Panel Orientation Setter.c"
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
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		___lwdiv
;;		_LCD_print_char
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1487
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\Automated Solar Panel Orientation Setter.c"
	line	594
	global	__size_of_LCDTimeUpdate
	__size_of_LCDTimeUpdate	equ	__end_of_LCDTimeUpdate-_LCDTimeUpdate
	
_LCDTimeUpdate:	
	opt	stack 0
; Regs used in _LCDTimeUpdate: [wreg+status,2+status,0+pclath+cstack]
	line	595
	
l10184:	
;Automated Solar Panel Orientation Setter.c: 595: LCD_print_char(2,12,hour/10+48);
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_LCD_print_char)
	movlw	high(02h)
	movwf	((?_LCD_print_char))+1
	movlw	low(0Ch)
	movwf	0+(?_LCD_print_char)+02h
	movlw	high(0Ch)
	movwf	(0+(?_LCD_print_char)+02h)+1
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	movf	(_hour+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(_hour),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	addlw	030h
	movwf	(??_LCDTimeUpdate+0)+0
	movf	(??_LCDTimeUpdate+0)+0,w
	movwf	0+(?_LCD_print_char)+04h
	fcall	_LCD_print_char
	line	596
;Automated Solar Panel Orientation Setter.c: 596: LCD_print_char(2,13,hour%10+48);
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_LCD_print_char)
	movlw	high(02h)
	movwf	((?_LCD_print_char))+1
	movlw	low(0Dh)
	movwf	0+(?_LCD_print_char)+02h
	movlw	high(0Dh)
	movwf	(0+(?_LCD_print_char)+02h)+1
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	movf	(_hour+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_hour),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(??_LCDTimeUpdate+0)+0
	movf	(??_LCDTimeUpdate+0)+0,w
	movwf	0+(?_LCD_print_char)+04h
	fcall	_LCD_print_char
	line	597
;Automated Solar Panel Orientation Setter.c: 597: LCD_print_char(2,15,minute/10+48);
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_LCD_print_char)
	movlw	high(02h)
	movwf	((?_LCD_print_char))+1
	movlw	low(0Fh)
	movwf	0+(?_LCD_print_char)+02h
	movlw	high(0Fh)
	movwf	(0+(?_LCD_print_char)+02h)+1
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	movf	(_minute+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(_minute),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	addlw	030h
	movwf	(??_LCDTimeUpdate+0)+0
	movf	(??_LCDTimeUpdate+0)+0,w
	movwf	0+(?_LCD_print_char)+04h
	fcall	_LCD_print_char
	line	598
;Automated Solar Panel Orientation Setter.c: 598: LCD_print_char(2,16,minute%10+48);
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_LCD_print_char)
	movlw	high(02h)
	movwf	((?_LCD_print_char))+1
	movlw	low(010h)
	movwf	0+(?_LCD_print_char)+02h
	movlw	high(010h)
	movwf	(0+(?_LCD_print_char)+02h)+1
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	movf	(_minute+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_minute),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(??_LCDTimeUpdate+0)+0
	movf	(??_LCDTimeUpdate+0)+0,w
	movwf	0+(?_LCD_print_char)+04h
	fcall	_LCD_print_char
	line	599
	
l1196:	
	return
	opt stack 0
GLOBAL	__end_of_LCDTimeUpdate
	__end_of_LCDTimeUpdate:
;; =============== function _LCDTimeUpdate ends ============

	signat	_LCDTimeUpdate,88
	global	_CheckMode
psect	text1488,local,class=CODE,delta=2
global __ptext1488
__ptext1488:

;; *************** function _CheckMode *****************
;; Defined at:
;;		line 189 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\Automated Solar Panel Orientation Setter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  pressedKey      1   19[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_CheckKeyPad
;;		_Serial_Print
;;		_Serial_Println_Int
;;		_nop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1488
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\Automated Solar Panel Orientation Setter.c"
	line	189
	global	__size_of_CheckMode
	__size_of_CheckMode	equ	__end_of_CheckMode-_CheckMode
	
_CheckMode:	
	opt	stack 1
; Regs used in _CheckMode: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	191
	
l10096:	
;Automated Solar Panel Orientation Setter.c: 190: char pressedKey;
;Automated Solar Panel Orientation Setter.c: 191: pressedKey = CheckKeyPad();
	fcall	_CheckKeyPad
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_CheckMode+0)+0
	movf	(??_CheckMode+0)+0,w
	movwf	(CheckMode@pressedKey)
	line	193
	
l10098:	
;Automated Solar Panel Orientation Setter.c: 193: if( pressedKey=='*' ){
	movf	(CheckMode@pressedKey),w
	xorlw	02Ah
	skipz
	goto	u12321
	goto	u12320
u12321:
	goto	l1018
u12320:
	line	194
	
l10100:	
;Automated Solar Panel Orientation Setter.c: 194: currentMode++;
	movlw	low(01h)
	addwf	(_currentMode),f
	skipnc
	incf	(_currentMode+1),f
	movlw	high(01h)
	addwf	(_currentMode+1),f
	line	195
;Automated Solar Panel Orientation Setter.c: 195: if (currentMode>3) currentMode = 1;
	movlw	high(04h)
	subwf	(_currentMode+1),w
	movlw	low(04h)
	skipnz
	subwf	(_currentMode),w
	skipc
	goto	u12331
	goto	u12330
u12331:
	goto	l1017
u12330:
	
l10102:	
	movlw	low(01h)
	movwf	(_currentMode)
	movlw	high(01h)
	movwf	((_currentMode))+1
	
l1017:	
	line	196
;Automated Solar Panel Orientation Setter.c: 196: state = currentMode;
	movf	(_currentMode),w
	movwf	(??_CheckMode+0)+0
	movf	(??_CheckMode+0)+0,w
	movwf	(_state)
	line	198
	
l10104:	
;Automated Solar Panel Orientation Setter.c: 198: RC1 = 1;
	bsf	(57/8),(57)&7
	line	199
	
l10106:	
;Automated Solar Panel Orientation Setter.c: 199: Serial_Print("Switched to Mode : ");
	movlw	((STR_13-__stringbase))&0ffh
	fcall	_Serial_Print
	line	200
	
l10108:	
;Automated Solar Panel Orientation Setter.c: 200: Serial_Println_Int((int)state);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_state),w
	movwf	(??_CheckMode+0)+0
	clrf	(??_CheckMode+0)+0+1
	movf	0+(??_CheckMode+0)+0,w
	movwf	(?_Serial_Println_Int)
	movf	1+(??_CheckMode+0)+0,w
	movwf	(?_Serial_Println_Int+1)
	fcall	_Serial_Println_Int
	line	201
	
l10110:	
;Automated Solar Panel Orientation Setter.c: 201: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	203
	
l10112:	
;Automated Solar Panel Orientation Setter.c: 203: ; nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();;
	fcall	_nop
	
l10114:	
	fcall	_nop
	
l10116:	
	fcall	_nop
	
l10118:	
	fcall	_nop
	
l10120:	
	fcall	_nop
	
l10122:	
	fcall	_nop
	
l10124:	
	fcall	_nop
	
l10126:	
	fcall	_nop
	
l10128:	
	fcall	_nop
	
l10130:	
	fcall	_nop
	
l10132:	
	fcall	_nop
	
l10134:	
	fcall	_nop
	
l10136:	
	fcall	_nop
	
l10138:	
	fcall	_nop
	
l10140:	
	fcall	_nop
	
l10142:	
	fcall	_nop
	
l10144:	
	fcall	_nop
	
l10146:	
	fcall	_nop
	
l10148:	
	fcall	_nop
	
l10150:	
	fcall	_nop
	
l10152:	
	fcall	_nop
	
l10154:	
	fcall	_nop
	
l10156:	
	fcall	_nop
	
l10158:	
	fcall	_nop
	
l10160:	
	fcall	_nop
	
l10162:	
	fcall	_nop
	
l10164:	
	fcall	_nop
	
l10166:	
	fcall	_nop
	
l10168:	
	fcall	_nop
	
l10170:	
	fcall	_nop
	
l10172:	
	fcall	_nop
	
l10174:	
	fcall	_nop
	
l10176:	
	fcall	_nop
	
l10178:	
	fcall	_nop
	
l10180:	
	fcall	_nop
	
l10182:	
	fcall	_nop
	goto	l1018
	line	204
	
l1016:	
	line	205
	
l1018:	
	return
	opt stack 0
GLOBAL	__end_of_CheckMode
	__end_of_CheckMode:
;; =============== function _CheckMode ends ============

	signat	_CheckMode,88
	global	_printf
psect	text1489,local,class=CODE,delta=2
global __ptext1489
__ptext1489:

;; *************** function _printf *****************
;; Defined at:
;;		line 461 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_8(17), STR_7(17), STR_6(17), STR_5(17), 
;;		 -> STR_4(18), STR_3(18), STR_2(18), STR_1(18), 
;; Auto vars:     Size  Location     Type
;;  f               1   30[BANK0 ] PTR const unsigned char 
;;		 -> STR_8(17), STR_7(17), STR_6(17), STR_5(17), 
;;		 -> STR_4(18), STR_3(18), STR_2(18), STR_1(18), 
;;  _val            3   34[BANK0 ] struct .
;;  flag            2   38[BANK0 ] unsigned short 
;;  width           2   32[BANK0 ] int 
;;  c               1   37[BANK0 ] char 
;;  prec            1   31[BANK0 ] char 
;;  ap              1   29[BANK0 ] PTR void [1]
;;		 -> ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2   19[BANK0 ] int 
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
;; Hardware stack levels required when called:    6
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
psect	text1489
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	461
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
	opt	stack 1
; Regs used in _printf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;printf@f stored from wreg
	line	537
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printf@f)
	
l9800:	
	movlw	(?_printf)&0ffh
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@ap)
	line	540
	goto	l10094
	
l1214:	
	line	542
	
l9802:	
	movf	(printf@c),w
	xorlw	025h
	skipnz
	goto	u11711
	goto	u11710
u11711:
	goto	l9806
u11710:
	line	545
	
l9804:	
	movf	(printf@c),w
	fcall	_putch
	line	546
	goto	l10094
	line	547
	
l1215:	
	line	550
	
l9806:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(printf@width)
	clrf	(printf@width+1)
	line	552
	clrf	(printf@flag)
	clrf	(printf@flag+1)
	goto	l9818
	line	554
	
l1216:	
	line	555
	goto	l9818
	line	557
	
l1218:	
	line	558
	bsf	(printf@flag)+(3/8),(3)&7
	line	559
	
l9808:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@f),f
	line	560
	goto	l9818
	line	564
	
l1220:	
	line	565
	bsf	(printf@flag)+(0/8),(0)&7
	line	566
	
l9810:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@f),f
	line	567
	goto	l9818
	line	577
	
l1221:	
	line	578
	bsf	(printf@flag)+(11/8),(11)&7
	line	579
	
l9812:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@f),f
	line	580
	goto	l9818
	line	583
	
l1222:	
	line	584
	bsf	(printf@flag)+(2/8),(2)&7
	line	585
	
l9814:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@f),f
	line	586
	goto	l9818
	line	588
	
l9816:	
	goto	l1224
	line	555
	
l1217:	
	
l9818:	
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
	goto	l1220
	xorlw	35^32	; case 35
	skipnz
	goto	l1221
	xorlw	45^35	; case 45
	skipnz
	goto	l1218
	xorlw	48^45	; case 48
	skipnz
	goto	l1222
	goto	l1224
	opt asmopt_on

	line	588
	
l1223:	
	line	589
	goto	l1224
	line	590
	
l1219:	
	goto	l9818
	
l1224:	
	line	597
	btfss	(printf@flag),(3)&7
	goto	u11721
	goto	u11720
u11721:
	goto	l9822
u11720:
	line	598
	
l9820:	
	movlw	low(0FFFBh)
	andwf	(printf@flag),f
	movlw	high(0FFFBh)
	andwf	(printf@flag+1),f
	goto	l9822
	
l1225:	
	line	601
	
l9822:	
	movf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u11731
	goto	u11730
u11731:
	goto	l9832
u11730:
	line	602
	
l9824:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(printf@width)
	clrf	(printf@width+1)
	goto	l9826
	line	603
	
l1227:	
	line	604
	
l9826:	
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
	
l9828:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@f),f
	line	605
	
l9830:	
	movf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u11741
	goto	u11740
u11741:
	goto	l9826
u11740:
	goto	l9840
	
l1228:	
	line	607
	goto	l9840
	
l1226:	
	
l9832:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	xorlw	02Ah
	skipz
	goto	u11751
	goto	u11750
u11751:
	goto	l9840
u11750:
	line	608
	
l9834:	
	movf	(printf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(printf@width)
	incf	fsr0,f
	movf	indf,w
	movwf	(printf@width+1)
	
l9836:	
	movlw	(02h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@ap),f
	line	609
	
l9838:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@f),f
	goto	l9840
	line	611
	
l1230:	
	goto	l9840
	line	614
	
l1229:	
	
l9840:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	xorlw	02Eh
	skipz
	goto	u11761
	goto	u11760
u11761:
	goto	l1231
u11760:
	line	615
	
l9842:	
	bsf	(printf@flag)+(14/8),(14)&7
	line	616
	
l9844:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@f),f
	line	618
	
l9846:	
	movf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	xorlw	02Ah
	skipz
	goto	u11771
	goto	u11770
u11771:
	goto	l1232
u11770:
	line	619
	
l9848:	
	movf	(printf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@prec)
	
l9850:	
	movlw	(02h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@ap),f
	line	620
	
l9852:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@f),f
	line	621
	goto	l9904
	
l1232:	
	line	624
	clrf	(printf@prec)
	line	625
	goto	l9858
	
l1235:	
	line	626
	
l9854:	
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
	
l9856:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@f),f
	goto	l9858
	
l1234:	
	line	625
	
l9858:	
	movf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u11781
	goto	u11780
u11781:
	goto	l9854
u11780:
	goto	l9904
	
l1236:	
	goto	l9904
	line	627
	
l1233:	
	line	628
	goto	l9904
	
l1231:	
	line	629
	clrf	(printf@prec)
	goto	l9904
	line	633
	
l1237:	
	line	638
	goto	l9904
	line	640
	
l1239:	
	line	641
	goto	l1343
	line	692
	
l1241:	
	line	694
	bsf	(printf@flag)+(6/8),(6)&7
	line	696
	goto	l9906
	line	700
	
l1243:	
	goto	l9906
	line	701
	
l1244:	
	line	702
	goto	l9906
	line	715
	
l1245:	
	line	717
	bsf	(printf@flag)+(5/8),(5)&7
	line	721
	
l1246:	
	line	724
	bsf	(printf@flag)+(7/8),(7)&7
	line	726
	goto	l9906
	line	753
	
l1247:	
	line	756
	
l9860:	
	movf	(printf@prec),w
	skipz
	goto	u11790
	goto	l9866
u11790:
	
l9862:	
	movf	(printf@prec),w
	movwf	(??_printf+0)+0
	clrf	(??_printf+0)+0+1
	btfsc	(??_printf+0)+0,7
	decf	(??_printf+0)+0+1,f
	movf	1+(printf@_val)+01h,w
	subwf	1+(??_printf+0)+0,w
	skipz
	goto	u11805
	movf	0+(printf@_val)+01h,w
	subwf	0+(??_printf+0)+0,w
u11805:
	skipnc
	goto	u11801
	goto	u11800
u11801:
	goto	l9866
u11800:
	line	757
	
l9864:	
	movf	(printf@prec),w
	movwf	0+(printf@_val)+01h
	clrf	1+(printf@_val)+01h
	btfsc	0+(printf@_val)+01h,7
	decf	1+(printf@_val)+01h,f
	goto	l9866
	
l1248:	
	line	760
	
l9866:	
	movf	(printf@width+1),w
	subwf	1+(printf@_val)+01h,w
	skipz
	goto	u11815
	movf	(printf@width),w
	subwf	0+(printf@_val)+01h,w
u11815:
	skipnc
	goto	u11811
	goto	u11810
u11811:
	goto	l9870
u11810:
	line	761
	
l9868:	
	movf	0+(printf@_val)+01h,w
	subwf	(printf@width),f
	movf	1+(printf@_val)+01h,w
	skipc
	decf	(printf@width+1),f
	subwf	(printf@width+1),f
	goto	l9872
	line	762
	
l1249:	
	line	763
	
l9870:	
	clrf	(printf@width)
	clrf	(printf@width+1)
	goto	l9872
	
l1250:	
	line	765
	
l9872:	
	btfsc	(printf@flag),(3)&7
	goto	u11821
	goto	u11820
u11821:
	goto	l9884
u11820:
	goto	l9878
	line	767
	
l9874:	
	goto	l9878
	
l1253:	
	line	768
	
l9876:	
	movlw	(020h)
	fcall	_putch
	goto	l9878
	
l1252:	
	line	767
	
l9878:	
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
	goto	u11835
	movlw	low(-1)
	xorwf	((printf@width)),w
u11835:

	skipz
	goto	u11831
	goto	u11830
u11831:
	goto	l9876
u11830:
	goto	l9884
	
l1254:	
	goto	l9884
	line	768
	
l1251:	
	line	770
	goto	l9884
	
l1256:	
	line	771
	
l9880:	
	movf	(printf@_val),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_putch
	
l9882:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@_val),f
	goto	l9884
	
l1255:	
	line	770
	
l9884:	
	movlw	low(01h)
	subwf	0+(printf@_val)+01h,f
	movlw	high(01h)
	skipc
	decf	1+(printf@_val)+01h,f
	subwf	1+(printf@_val)+01h,f
	movlw	high(0FFFFh)
	xorwf	(1+(printf@_val)+01h),w
	skipz
	goto	u11845
	movlw	low(0FFFFh)
	xorwf	(0+(printf@_val)+01h),w
u11845:

	skipz
	goto	u11841
	goto	u11840
u11841:
	goto	l9880
u11840:
	
l1257:	
	line	773
	btfss	(printf@flag),(3)&7
	goto	u11851
	goto	u11850
u11851:
	goto	l10094
u11850:
	goto	l9890
	line	774
	
l9886:	
	goto	l9890
	
l1260:	
	line	775
	
l9888:	
	movlw	(020h)
	fcall	_putch
	goto	l9890
	
l1259:	
	line	774
	
l9890:	
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
	goto	u11865
	movlw	low(-1)
	xorwf	((printf@width)),w
u11865:

	skipz
	goto	u11861
	goto	u11860
u11861:
	goto	l9888
u11860:
	goto	l10094
	
l1261:	
	goto	l10094
	line	775
	
l1258:	
	line	777
	goto	l10094
	line	787
	
l1262:	
	line	802
	
l9892:	
	movf	(printf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@c)
	
l9894:	
	movlw	(02h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@ap),f
	goto	l9896
	line	805
	
l1263:	
	line	808
	
l9896:	
	movlw	(printf@c)&0ffh
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@_val)
	line	809
	
l9898:	
	movlw	low(01h)
	movwf	0+(printf@_val)+01h
	movlw	high(01h)
	movwf	(0+(printf@_val)+01h)+1
	line	810
	goto	l9860
	line	820
	
l1264:	
	line	821
	
l9900:	
	movlw	low(0C0h)
	iorwf	(printf@flag),f
	movlw	high(0C0h)
	iorwf	(printf@flag+1),f
	line	822
	goto	l9906
	line	825
	
l9902:	
	goto	l9906
	line	638
	
l1238:	
	
l9904:	
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
	goto	l1343
	xorlw	88^0	; case 88
	skipnz
	goto	l1245
	xorlw	99^88	; case 99
	skipnz
	goto	l9892
	xorlw	100^99	; case 100
	skipnz
	goto	l9906
	xorlw	105^100	; case 105
	skipnz
	goto	l9906
	xorlw	111^105	; case 111
	skipnz
	goto	l1241
	xorlw	117^111	; case 117
	skipnz
	goto	l9900
	xorlw	120^117	; case 120
	skipnz
	goto	l1246
	goto	l9896
	opt asmopt_on

	line	825
	
l1242:	
	line	1246
	
l9906:	
	movlw	low(0C0h)
	andwf	(printf@flag),w
	movwf	(??_printf+0)+0
	movlw	high(0C0h)
	andwf	(printf@flag+1),w
	movwf	1+(??_printf+0)+0
	movf	1+(??_printf+0)+0,w
	iorwf	0+(??_printf+0)+0,w
	skipz
	goto	u11871
	goto	u11870
u11871:
	goto	l9918
u11870:
	line	1254
	
l9908:	
	movf	(printf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(printf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(printf@_val+1)
	
l9910:	
	movlw	(02h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@ap),f
	line	1256
	
l9912:	
	btfss	(printf@_val+1),7
	goto	u11881
	goto	u11880
u11881:
	goto	l9922
u11880:
	line	1257
	
l9914:	
	movlw	low(03h)
	iorwf	(printf@flag),f
	movlw	high(03h)
	iorwf	(printf@flag+1),f
	line	1258
	
l9916:	
	comf	(printf@_val),f
	comf	(printf@_val+1),f
	incf	(printf@_val),f
	skipnz
	incf	(printf@_val+1),f
	goto	l9922
	line	1259
	
l1266:	
	line	1261
	goto	l9922
	line	1263
	
l1265:	
	line	1281
	
l9918:	
	movf	(printf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(printf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(printf@_val+1)
	
l9920:	
	movlw	(02h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@ap),f
	goto	l9922
	line	1282
	
l1267:	
	line	1285
	
l9922:	
	movf	(printf@prec),f
	skipz
	goto	u11891
	goto	u11890
u11891:
	goto	l9972
u11890:
	
l9924:	
	movf	((printf@_val+1)),w
	iorwf	((printf@_val)),w
	skipz
	goto	u11901
	goto	u11900
u11901:
	goto	l9972
u11900:
	line	1286
	
l9926:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@prec),f
	goto	l9972
	
l1268:	
	line	1289
	goto	l9972
	line	1294
	
l1270:	
	goto	l9928
	line	1297
	
l1271:	
	line	1300
	
l9928:	
	clrf	(printf@c)
	bsf	status,0
	rlf	(printf@c),f
	
l9930:	
	movf	(printf@c),w
	xorlw	05h
	skipz
	goto	u11911
	goto	u11910
u11911:
	goto	l9934
u11910:
	goto	l9974
	
l9932:	
	goto	l9974
	line	1301
	
l1272:	
	
l9934:	
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
	goto	u11925
	movf	0+(??_printf+1)+0,w
	subwf	(printf@_val),w
u11925:
	skipnc
	goto	u11921
	goto	u11920
u11921:
	goto	l9938
u11920:
	goto	l9974
	line	1302
	
l9936:	
	goto	l9974
	
l1274:	
	line	1300
	
l9938:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@c),f
	
l9940:	
	movf	(printf@c),w
	xorlw	05h
	skipz
	goto	u11931
	goto	u11930
u11931:
	goto	l9934
u11930:
	goto	l9974
	
l1273:	
	line	1304
	goto	l9974
	line	1309
	
l1276:	
	line	1311
	
l9942:	
	clrf	(printf@c)
	bsf	status,0
	rlf	(printf@c),f
	
l9944:	
	movf	(printf@c),w
	xorlw	04h
	skipz
	goto	u11941
	goto	u11940
u11941:
	goto	l9948
u11940:
	goto	l9974
	
l9946:	
	goto	l9974
	line	1312
	
l1277:	
	
l9948:	
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
	goto	u11955
	movf	0+(??_printf+1)+0,w
	subwf	(printf@_val),w
u11955:
	skipnc
	goto	u11951
	goto	u11950
u11951:
	goto	l9952
u11950:
	goto	l9974
	line	1313
	
l9950:	
	goto	l9974
	
l1279:	
	line	1311
	
l9952:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@c),f
	
l9954:	
	movf	(printf@c),w
	xorlw	04h
	skipz
	goto	u11961
	goto	u11960
u11961:
	goto	l9948
u11960:
	goto	l9974
	
l1278:	
	line	1315
	goto	l9974
	line	1321
	
l1280:	
	line	1323
	
l9956:	
	clrf	(printf@c)
	bsf	status,0
	rlf	(printf@c),f
	
l9958:	
	movf	(printf@c),w
	xorlw	06h
	skipz
	goto	u11971
	goto	u11970
u11971:
	goto	l9962
u11970:
	goto	l9974
	
l9960:	
	goto	l9974
	line	1324
	
l1281:	
	
l9962:	
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
	goto	u11985
	movf	0+(??_printf+1)+0,w
	subwf	(printf@_val),w
u11985:
	skipnc
	goto	u11981
	goto	u11980
u11981:
	goto	l9966
u11980:
	goto	l9974
	line	1325
	
l9964:	
	goto	l9974
	
l1283:	
	line	1323
	
l9966:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@c),f
	
l9968:	
	movf	(printf@c),w
	xorlw	06h
	skipz
	goto	u11991
	goto	u11990
u11991:
	goto	l9962
u11990:
	goto	l9974
	
l1282:	
	line	1327
	goto	l9974
	line	1331
	
l9970:	
	goto	l9974
	line	1289
	
l1269:	
	
l9972:	
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
	goto	l9928
	xorlw	64^0	; case 64
	skipnz
	goto	l9956
	xorlw	128^64	; case 128
	skipnz
	goto	l9942
	xorlw	192^128	; case 192
	skipnz
	goto	l9928
	goto	l9974
	opt asmopt_on

	line	1331
	
l1275:	
	line	1334
	
l9974:	
	movf	(printf@c),w
	xorlw	80h
	movwf	(??_printf+0)+0
	movf	(printf@prec),w
	xorlw	80h
	subwf	(??_printf+0)+0
	skipnc
	goto	u12001
	goto	u12000
u12001:
	goto	l9978
u12000:
	line	1335
	
l9976:	
	movf	(printf@prec),w
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@c)
	goto	l1285
	line	1336
	
l1284:	
	
l9978:	
	movf	(printf@prec),w
	xorlw	80h
	movwf	(??_printf+0)+0
	movf	(printf@c),w
	xorlw	80h
	subwf	(??_printf+0)+0
	skipnc
	goto	u12011
	goto	u12010
u12011:
	goto	l1285
u12010:
	line	1337
	
l9980:	
	movf	(printf@c),w
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@prec)
	goto	l1285
	
l1286:	
	line	1340
	
l1285:	
	movf	(printf@width+1),w
	iorwf	(printf@width),w
	skipnz
	goto	u12021
	goto	u12020
u12021:
	goto	l9986
u12020:
	
l9982:	
	movlw	low(03h)
	andwf	(printf@flag),w
	movwf	(??_printf+0)+0
	movlw	high(03h)
	andwf	(printf@flag+1),w
	movwf	1+(??_printf+0)+0
	movf	1+(??_printf+0)+0,w
	iorwf	0+(??_printf+0)+0,w
	skipnz
	goto	u12031
	goto	u12030
u12031:
	goto	l9986
u12030:
	line	1341
	
l9984:	
	movlw	low(-1)
	addwf	(printf@width),f
	skipnc
	incf	(printf@width+1),f
	movlw	high(-1)
	addwf	(printf@width+1),f
	goto	l9986
	
l1287:	
	line	1343
	
l9986:	
	btfss	(printf@flag+1),(14)&7
	goto	u12041
	goto	u12040
u12041:
	goto	l9994
u12040:
	line	1344
	
l9988:	
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
	goto	u12055
	movf	(printf@width),w
	subwf	0+(??_printf+0)+0,w
u12055:

	skipnc
	goto	u12051
	goto	u12050
u12051:
	goto	l9992
u12050:
	line	1345
	
l9990:	
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
	goto	l9994
	line	1346
	
l1289:	
	line	1347
	
l9992:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(printf@width)
	clrf	(printf@width+1)
	goto	l9994
	
l1290:	
	goto	l9994
	line	1348
	
l1288:	
	line	1356
	
l9994:	
	movlw	low(08C4h)
	andwf	(printf@flag),w
	movwf	(??_printf+0)+0
	movlw	high(08C4h)
	andwf	(printf@flag+1),w
	movwf	1+(??_printf+0)+0
	movlw	high(0840h)
	xorwf	1+(??_printf+0)+0,w
	skipz
	goto	u12065
	movlw	low(0840h)
	xorwf	0+(??_printf+0)+0,w
u12065:

	skipz
	goto	u12061
	goto	u12060
u12061:
	goto	l10000
u12060:
	line	1357
	
l9996:	
	movf	(printf@width+1),w
	iorwf	(printf@width),w
	skipnz
	goto	u12071
	goto	u12070
u12071:
	goto	l10008
u12070:
	line	1358
	
l9998:	
	movlw	low(-1)
	addwf	(printf@width),f
	skipnc
	incf	(printf@width+1),f
	movlw	high(-1)
	addwf	(printf@width+1),f
	goto	l10008
	
l1292:	
	line	1359
	goto	l10008
	
l1291:	
	line	1363
	
l10000:	
	movlw	low(08C0h)
	andwf	(printf@flag),w
	movwf	(??_printf+0)+0
	movlw	high(08C0h)
	andwf	(printf@flag+1),w
	movwf	1+(??_printf+0)+0
	movlw	high(0880h)
	xorwf	1+(??_printf+0)+0,w
	skipz
	goto	u12085
	movlw	low(0880h)
	xorwf	0+(??_printf+0)+0,w
u12085:

	skipz
	goto	u12081
	goto	u12080
u12081:
	goto	l10008
u12080:
	line	1367
	
l10002:	
	movf	(printf@width+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u12095
	movlw	low(03h)
	subwf	(printf@width),w
u12095:

	skipc
	goto	u12091
	goto	u12090
u12091:
	goto	l10006
u12090:
	line	1368
	
l10004:	
	movlw	low(-2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(printf@width),f
	skipnc
	incf	(printf@width+1),f
	movlw	high(-2)
	addwf	(printf@width+1),f
	goto	l10008
	line	1369
	
l1295:	
	line	1370
	
l10006:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(printf@width)
	clrf	(printf@width+1)
	goto	l10008
	
l1296:	
	goto	l10008
	line	1371
	
l1294:	
	goto	l10008
	line	1376
	
l1293:	
	
l10008:	
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
	goto	u12105
	movf	(printf@width),w
	subwf	0+(??_printf+0)+0,w
u12105:

	skipnc
	goto	u12101
	goto	u12100
u12101:
	goto	l10012
u12100:
	line	1377
	
l10010:	
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
	goto	l10014
	line	1378
	
l1297:	
	line	1379
	
l10012:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(printf@width)
	clrf	(printf@width+1)
	goto	l10014
	
l1298:	
	line	1382
	
l10014:	
	btfss	(printf@flag),(2)&7
	goto	u12111
	goto	u12110
u12111:
	goto	l10040
u12110:
	line	1387
	
l10016:	
	movlw	low(03h)
	andwf	(printf@flag),w
	movwf	(??_printf+0)+0
	movlw	high(03h)
	andwf	(printf@flag+1),w
	movwf	1+(??_printf+0)+0
	movf	1+(??_printf+0)+0,w
	iorwf	0+(??_printf+0)+0,w
	skipnz
	goto	u12121
	goto	u12120
u12121:
	goto	l1300
u12120:
	line	1388
	
l10018:	
	movlw	(02Dh)
	fcall	_putch
	goto	l10034
	line	1391
	
l1300:	
	line	1394
	btfss	(printf@flag),(0)&7
	goto	u12131
	goto	u12130
u12131:
	goto	l10022
u12130:
	line	1395
	
l10020:	
	movlw	(020h)
	fcall	_putch
	goto	l10034
	line	1398
	
l1302:	
	
l10022:	
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
	goto	u12145
	movlw	low(0880h)
	xorwf	0+(??_printf+0)+0,w
u12145:

	skipz
	goto	u12141
	goto	u12140
u12141:
	goto	l10034
u12140:
	line	1399
	
l10024:	
	movlw	(030h)
	fcall	_putch
	line	1401
	
l10026:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(printf@flag),(5)&7
	goto	u12151
	goto	u12150
u12151:
	goto	l10030
u12150:
	
l10028:	
	movlw	low(078h)
	movwf	(_printf$1463)
	movlw	high(078h)
	movwf	((_printf$1463))+1
	goto	l10032
	
l1306:	
	
l10030:	
	movlw	low(058h)
	movwf	(_printf$1463)
	movlw	high(058h)
	movwf	((_printf$1463))+1
	goto	l10032
	
l1308:	
	
l10032:	
	movf	(_printf$1463),w
	fcall	_putch
	goto	l10034
	line	1407
	
l1304:	
	goto	l10034
	line	1410
	
l1303:	
	goto	l10034
	
l1301:	
	
l10034:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printf@width+1),w
	iorwf	(printf@width),w
	skipnz
	goto	u12161
	goto	u12160
u12161:
	goto	l10086
u12160:
	goto	l10036
	line	1411
	
l1310:	
	line	1412
	
l10036:	
	movlw	(030h)
	fcall	_putch
	line	1413
	
l10038:	
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
	goto	u12171
	goto	u12170
u12171:
	goto	l10036
u12170:
	goto	l10086
	
l1311:	
	goto	l10086
	
l1309:	
	line	1415
	goto	l10086
	
l1299:	
	line	1423
	
l10040:	
	movf	(printf@width+1),w
	iorwf	(printf@width),w
	skipnz
	goto	u12181
	goto	u12180
u12181:
	goto	l10048
u12180:
	
l10042:	
	btfsc	(printf@flag),(3)&7
	goto	u12191
	goto	u12190
u12191:
	goto	l10048
u12190:
	goto	l10044
	line	1424
	
l1314:	
	line	1425
	
l10044:	
	movlw	(020h)
	fcall	_putch
	line	1426
	
l10046:	
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
	goto	u12201
	goto	u12200
u12201:
	goto	l10044
u12200:
	goto	l10048
	
l1315:	
	goto	l10048
	
l1313:	
	line	1433
	
l10048:	
	movlw	low(03h)
	andwf	(printf@flag),w
	movwf	(??_printf+0)+0
	movlw	high(03h)
	andwf	(printf@flag+1),w
	movwf	1+(??_printf+0)+0
	movf	1+(??_printf+0)+0,w
	iorwf	0+(??_printf+0)+0,w
	skipnz
	goto	u12211
	goto	u12210
u12211:
	goto	l1316
u12210:
	line	1434
	
l10050:	
	movlw	(02Dh)
	fcall	_putch
	goto	l10054
	line	1438
	
l1316:	
	btfss	(printf@flag),(0)&7
	goto	u12221
	goto	u12220
u12221:
	goto	l10054
u12220:
	line	1439
	
l10052:	
	movlw	(020h)
	fcall	_putch
	goto	l10054
	
l1318:	
	goto	l10054
	line	1443
	
l1317:	
	
l10054:	
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
	goto	u12235
	movlw	low(0840h)
	xorwf	0+(??_printf+0)+0,w
u12235:

	skipz
	goto	u12231
	goto	u12230
u12231:
	goto	l10058
u12230:
	line	1444
	
l10056:	
	movlw	(030h)
	fcall	_putch
	goto	l10086
	line	1445
	
l1319:	
	line	1449
	
l10058:	
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
	goto	u12245
	movlw	low(0880h)
	xorwf	0+(??_printf+0)+0,w
u12245:

	skipz
	goto	u12241
	goto	u12240
u12241:
	goto	l10086
u12240:
	line	1453
	
l10060:	
	movlw	(030h)
	fcall	_putch
	line	1455
	
l10062:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(printf@flag),(5)&7
	goto	u12251
	goto	u12250
u12251:
	goto	l10066
u12250:
	
l10064:	
	movlw	low(078h)
	movwf	(_printf$1464)
	movlw	high(078h)
	movwf	((_printf$1464))+1
	goto	l10068
	
l1323:	
	
l10066:	
	movlw	low(058h)
	movwf	(_printf$1464)
	movlw	high(058h)
	movwf	((_printf$1464))+1
	goto	l10068
	
l1325:	
	
l10068:	
	movf	(_printf$1464),w
	fcall	_putch
	goto	l10086
	line	1461
	
l1321:	
	goto	l10086
	line	1464
	
l1320:	
	goto	l10086
	
l1312:	
	line	1469
	goto	l10086
	
l1327:	
	line	1471
	goto	l10082
	line	1478
	
l1329:	
	goto	l10070
	line	1481
	
l1330:	
	line	1484
	
l10070:	
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
	goto	l10084
	line	1492
	
l1332:	
	line	1495
	btfsc	(printf@flag),(5)&7
	goto	u12261
	goto	u12260
u12261:
	goto	l10074
u12260:
	
l10072:	
	movlw	((STR_15-__stringbase))&0ffh
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(_printf$1467)
	goto	l10076
	
l1334:	
	
l10074:	
	movlw	((STR_14-__stringbase))&0ffh
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(_printf$1467)
	goto	l10076
	
l1336:	
	
l10076:	
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
	addwf	(_printf$1467),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_printf+1)+0
	movf	(??_printf+1)+0,w
	movwf	(printf@c)
	line	1502
	goto	l10084
	line	1508
	
l1337:	
	line	1510
	
l10078:	
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
	goto	l10084
	line	1515
	
l10080:	
	goto	l10084
	line	1471
	
l1328:	
	
l10082:	
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
	goto	l10070
	xorlw	64^0	; case 64
	skipnz
	goto	l10078
	xorlw	128^64	; case 128
	skipnz
	goto	l1332
	xorlw	192^128	; case 192
	skipnz
	goto	l10070
	goto	l10084
	opt asmopt_on

	line	1515
	
l1331:	
	line	1516
	
l10084:	
	movf	(printf@c),w
	fcall	_putch
	goto	l10086
	line	1517
	
l1326:	
	line	1469
	
l10086:	
	movlw	(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@prec),f
	movf	((printf@prec)),w
	xorlw	-1
	skipz
	goto	u12271
	goto	u12270
u12271:
	goto	l10082
u12270:
	
l1338:	
	line	1520
	btfss	(printf@flag),(3)&7
	goto	u12281
	goto	u12280
u12281:
	goto	l10094
u12280:
	
l10088:	
	movf	(printf@width+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u12295
	movlw	low(01h)
	subwf	(printf@width),w
u12295:

	skipc
	goto	u12291
	goto	u12290
u12291:
	goto	l10094
u12290:
	goto	l10090
	line	1521
	
l1340:	
	line	1522
	
l10090:	
	movlw	(020h)
	fcall	_putch
	line	1523
	
l10092:	
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
	goto	u12301
	goto	u12300
u12301:
	goto	l10090
u12300:
	goto	l10094
	
l1341:	
	goto	l10094
	
l1339:	
	goto	l10094
	line	1525
	
l1213:	
	line	540
	
l10094:	
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
	goto	u12311
	goto	u12310
u12311:
	goto	l9802
u12310:
	goto	l1343
	
l1342:	
	goto	l1343
	line	1527
	
l1240:	
	line	1533
;	Return value of _printf is never used
	
l1343:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	_LCD_print_char
psect	text1490,local,class=CODE,delta=2
global __ptext1490
__ptext1490:

;; *************** function _LCD_print_char *****************
;; Defined at:
;;		line 174 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\lcdV2.h"
;; Parameters:    Size  Location     Type
;;  row             2   19[BANK0 ] int 
;;  column          2   21[BANK0 ] int 
;;  print_value     1   23[BANK0 ] unsigned char 
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
;;      Params:         0       5       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_position
;;		_lcd_add
;; This function is called by:
;;		_LCDTimeUpdate
;; This function uses a non-reentrant model
;;
psect	text1490
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\lcdV2.h"
	line	174
	global	__size_of_LCD_print_char
	__size_of_LCD_print_char	equ	__end_of_LCD_print_char-_LCD_print_char
	
_LCD_print_char:	
	opt	stack 0
; Regs used in _LCD_print_char: [wreg+status,2+status,0+pclath+cstack]
	line	175
	
l9790:	
;lcdV2.h: 175: position(row,column);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCD_print_char@column),w
	movwf	(??_LCD_print_char+0)+0
	movf	(??_LCD_print_char+0)+0,w
	movwf	(?_position)
	movf	(LCD_print_char@row),w
	fcall	_position
	line	176
	
l9792:	
;lcdV2.h: 176: RC2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	line	177
	
l9794:	
;lcdV2.h: 177: _delay(20);
	opt asmopt_off
movlw	6
movwf	(??_LCD_print_char+0)+0,f
u12397:
decfsz	(??_LCD_print_char+0)+0,f
	goto	u12397
	clrwdt
opt asmopt_on

	line	178
	
l9796:	
;lcdV2.h: 178: lcd_data = print_value;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCD_print_char@print_value),w
	movwf	(??_LCD_print_char+0)+0
	movf	(??_LCD_print_char+0)+0,w
	movwf	(_lcd_data)
	line	179
;lcdV2.h: 179: lcd_add();
	fcall	_lcd_add
	line	180
	
l9798:	
;lcdV2.h: 180: _delay(100);
	opt asmopt_off
movlw	33
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_LCD_print_char+0)+0,f
u12407:
decfsz	(??_LCD_print_char+0)+0,f
	goto	u12407
opt asmopt_on

	line	181
	
l825:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_print_char
	__end_of_LCD_print_char:
;; =============== function _LCD_print_char ends ============

	signat	_LCD_print_char,12408
	global	_CheckKeyPad
psect	text1491,local,class=CODE,delta=2
global __ptext1491
__ptext1491:

;; *************** function _CheckKeyPad *****************
;; Defined at:
;;		line 220 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\Automated Solar Panel Orientation Setter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  rowNo           2   13[BANK0 ] int 
;;  colomnNo        2   11[BANK0 ] int 
;;  charactor       1   10[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_RowNo
;;		_ColomnNo
;; This function is called by:
;;		_CheckMode
;;		_KeyToSerial
;; This function uses a non-reentrant model
;;
psect	text1491
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\Automated Solar Panel Orientation Setter.c"
	line	220
	global	__size_of_CheckKeyPad
	__size_of_CheckKeyPad	equ	__end_of_CheckKeyPad-_CheckKeyPad
	
_CheckKeyPad:	
	opt	stack 1
; Regs used in _CheckKeyPad: [wreg+status,2+status,0+pclath+cstack]
	line	221
	
l9654:	
;Automated Solar Panel Orientation Setter.c: 221: RC4 = 0; RD5 = 0; RC5=0; RD4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	bcf	(69/8),(69)&7
	bcf	(61/8),(61)&7
	bcf	(68/8),(68)&7
	line	222
	
l9656:	
;Automated Solar Panel Orientation Setter.c: 222: char charactor = '$';
	movlw	(024h)
	movwf	(??_CheckKeyPad+0)+0
	movf	(??_CheckKeyPad+0)+0,w
	movwf	(CheckKeyPad@charactor)
	line	223
	
l9658:	
;Automated Solar Panel Orientation Setter.c: 223: int colomnNo = 0;
	clrf	(CheckKeyPad@colomnNo)
	clrf	(CheckKeyPad@colomnNo+1)
	line	224
	
l9660:	
;Automated Solar Panel Orientation Setter.c: 224: int rowNo = RowNo();
	fcall	_RowNo
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_RowNo)),w
	clrf	(CheckKeyPad@rowNo+1)
	addwf	(CheckKeyPad@rowNo+1)
	movf	(0+(?_RowNo)),w
	clrf	(CheckKeyPad@rowNo)
	addwf	(CheckKeyPad@rowNo)

	line	225
	
l9662:	
;Automated Solar Panel Orientation Setter.c: 225: if (rowNo != 0){
	movf	(CheckKeyPad@rowNo+1),w
	iorwf	(CheckKeyPad@rowNo),w
	skipnz
	goto	u11301
	goto	u11300
u11301:
	goto	l1025
u11300:
	line	226
	
l9664:	
;Automated Solar Panel Orientation Setter.c: 226: colomnNo = ColomnNo(rowNo);
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

	line	227
	
l9666:	
;Automated Solar Panel Orientation Setter.c: 227: RC4 = 0; RD5 = 0; RC5=0; RD4=0;
	bcf	(60/8),(60)&7
	
l9668:	
	bcf	(69/8),(69)&7
	
l9670:	
	bcf	(61/8),(61)&7
	
l9672:	
	bcf	(68/8),(68)&7
	line	228
	
l9674:	
;Automated Solar Panel Orientation Setter.c: 228: if(colomnNo==1 && rowNo == 1) charactor = '1';
	movlw	01h
	xorwf	(CheckKeyPad@colomnNo),w
	iorwf	(CheckKeyPad@colomnNo+1),w
	skipz
	goto	u11311
	goto	u11310
u11311:
	goto	l9680
u11310:
	
l9676:	
	movlw	01h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u11321
	goto	u11320
u11321:
	goto	l9680
u11320:
	
l9678:	
	movlw	(031h)
	movwf	(??_CheckKeyPad+0)+0
	movf	(??_CheckKeyPad+0)+0,w
	movwf	(CheckKeyPad@charactor)
	goto	l1025
	line	229
	
l1026:	
	
l9680:	
;Automated Solar Panel Orientation Setter.c: 229: else if(colomnNo==1 && rowNo == 2) charactor = '2';
	movlw	01h
	xorwf	(CheckKeyPad@colomnNo),w
	iorwf	(CheckKeyPad@colomnNo+1),w
	skipz
	goto	u11331
	goto	u11330
u11331:
	goto	l9686
u11330:
	
l9682:	
	movlw	02h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u11341
	goto	u11340
u11341:
	goto	l9686
u11340:
	
l9684:	
	movlw	(032h)
	movwf	(??_CheckKeyPad+0)+0
	movf	(??_CheckKeyPad+0)+0,w
	movwf	(CheckKeyPad@charactor)
	goto	l1025
	line	230
	
l1028:	
	
l9686:	
;Automated Solar Panel Orientation Setter.c: 230: else if(colomnNo==1 && rowNo == 3) charactor = '3';
	movlw	01h
	xorwf	(CheckKeyPad@colomnNo),w
	iorwf	(CheckKeyPad@colomnNo+1),w
	skipz
	goto	u11351
	goto	u11350
u11351:
	goto	l9692
u11350:
	
l9688:	
	movlw	03h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u11361
	goto	u11360
u11361:
	goto	l9692
u11360:
	
l9690:	
	movlw	(033h)
	movwf	(??_CheckKeyPad+0)+0
	movf	(??_CheckKeyPad+0)+0,w
	movwf	(CheckKeyPad@charactor)
	goto	l1025
	line	231
	
l1030:	
	
l9692:	
;Automated Solar Panel Orientation Setter.c: 231: else if(colomnNo==1 && rowNo == 4) charactor = 'A';
	movlw	01h
	xorwf	(CheckKeyPad@colomnNo),w
	iorwf	(CheckKeyPad@colomnNo+1),w
	skipz
	goto	u11371
	goto	u11370
u11371:
	goto	l9698
u11370:
	
l9694:	
	movlw	04h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u11381
	goto	u11380
u11381:
	goto	l9698
u11380:
	
l9696:	
	movlw	(041h)
	movwf	(??_CheckKeyPad+0)+0
	movf	(??_CheckKeyPad+0)+0,w
	movwf	(CheckKeyPad@charactor)
	goto	l1025
	line	233
	
l1032:	
	
l9698:	
;Automated Solar Panel Orientation Setter.c: 233: else if(colomnNo==2 && rowNo == 1) charactor = '4';
	movlw	02h
	xorwf	(CheckKeyPad@colomnNo),w
	iorwf	(CheckKeyPad@colomnNo+1),w
	skipz
	goto	u11391
	goto	u11390
u11391:
	goto	l9704
u11390:
	
l9700:	
	movlw	01h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u11401
	goto	u11400
u11401:
	goto	l9704
u11400:
	
l9702:	
	movlw	(034h)
	movwf	(??_CheckKeyPad+0)+0
	movf	(??_CheckKeyPad+0)+0,w
	movwf	(CheckKeyPad@charactor)
	goto	l1025
	line	234
	
l1034:	
	
l9704:	
;Automated Solar Panel Orientation Setter.c: 234: else if(colomnNo==2 && rowNo == 2) charactor = '5';
	movlw	02h
	xorwf	(CheckKeyPad@colomnNo),w
	iorwf	(CheckKeyPad@colomnNo+1),w
	skipz
	goto	u11411
	goto	u11410
u11411:
	goto	l9710
u11410:
	
l9706:	
	movlw	02h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u11421
	goto	u11420
u11421:
	goto	l9710
u11420:
	
l9708:	
	movlw	(035h)
	movwf	(??_CheckKeyPad+0)+0
	movf	(??_CheckKeyPad+0)+0,w
	movwf	(CheckKeyPad@charactor)
	goto	l1025
	line	235
	
l1036:	
	
l9710:	
;Automated Solar Panel Orientation Setter.c: 235: else if(colomnNo==2 && rowNo == 3) charactor = '6';
	movlw	02h
	xorwf	(CheckKeyPad@colomnNo),w
	iorwf	(CheckKeyPad@colomnNo+1),w
	skipz
	goto	u11431
	goto	u11430
u11431:
	goto	l9716
u11430:
	
l9712:	
	movlw	03h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u11441
	goto	u11440
u11441:
	goto	l9716
u11440:
	
l9714:	
	movlw	(036h)
	movwf	(??_CheckKeyPad+0)+0
	movf	(??_CheckKeyPad+0)+0,w
	movwf	(CheckKeyPad@charactor)
	goto	l1025
	line	236
	
l1038:	
	
l9716:	
;Automated Solar Panel Orientation Setter.c: 236: else if(colomnNo==2 && rowNo == 4) charactor = 'B';
	movlw	02h
	xorwf	(CheckKeyPad@colomnNo),w
	iorwf	(CheckKeyPad@colomnNo+1),w
	skipz
	goto	u11451
	goto	u11450
u11451:
	goto	l9722
u11450:
	
l9718:	
	movlw	04h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u11461
	goto	u11460
u11461:
	goto	l9722
u11460:
	
l9720:	
	movlw	(042h)
	movwf	(??_CheckKeyPad+0)+0
	movf	(??_CheckKeyPad+0)+0,w
	movwf	(CheckKeyPad@charactor)
	goto	l1025
	line	238
	
l1040:	
	
l9722:	
;Automated Solar Panel Orientation Setter.c: 238: else if(colomnNo==3 && rowNo == 1) charactor = '7';
	movlw	03h
	xorwf	(CheckKeyPad@colomnNo),w
	iorwf	(CheckKeyPad@colomnNo+1),w
	skipz
	goto	u11471
	goto	u11470
u11471:
	goto	l9728
u11470:
	
l9724:	
	movlw	01h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u11481
	goto	u11480
u11481:
	goto	l9728
u11480:
	
l9726:	
	movlw	(037h)
	movwf	(??_CheckKeyPad+0)+0
	movf	(??_CheckKeyPad+0)+0,w
	movwf	(CheckKeyPad@charactor)
	goto	l1025
	line	239
	
l1042:	
	
l9728:	
;Automated Solar Panel Orientation Setter.c: 239: else if(colomnNo==3 && rowNo == 2) charactor = '8';
	movlw	03h
	xorwf	(CheckKeyPad@colomnNo),w
	iorwf	(CheckKeyPad@colomnNo+1),w
	skipz
	goto	u11491
	goto	u11490
u11491:
	goto	l9734
u11490:
	
l9730:	
	movlw	02h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u11501
	goto	u11500
u11501:
	goto	l9734
u11500:
	
l9732:	
	movlw	(038h)
	movwf	(??_CheckKeyPad+0)+0
	movf	(??_CheckKeyPad+0)+0,w
	movwf	(CheckKeyPad@charactor)
	goto	l1025
	line	240
	
l1044:	
	
l9734:	
;Automated Solar Panel Orientation Setter.c: 240: else if(colomnNo==3 && rowNo == 3) charactor = '9';
	movlw	03h
	xorwf	(CheckKeyPad@colomnNo),w
	iorwf	(CheckKeyPad@colomnNo+1),w
	skipz
	goto	u11511
	goto	u11510
u11511:
	goto	l9740
u11510:
	
l9736:	
	movlw	03h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u11521
	goto	u11520
u11521:
	goto	l9740
u11520:
	
l9738:	
	movlw	(039h)
	movwf	(??_CheckKeyPad+0)+0
	movf	(??_CheckKeyPad+0)+0,w
	movwf	(CheckKeyPad@charactor)
	goto	l1025
	line	241
	
l1046:	
	
l9740:	
;Automated Solar Panel Orientation Setter.c: 241: else if(colomnNo==3 && rowNo == 4) charactor = 'C';
	movlw	03h
	xorwf	(CheckKeyPad@colomnNo),w
	iorwf	(CheckKeyPad@colomnNo+1),w
	skipz
	goto	u11531
	goto	u11530
u11531:
	goto	l9746
u11530:
	
l9742:	
	movlw	04h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u11541
	goto	u11540
u11541:
	goto	l9746
u11540:
	
l9744:	
	movlw	(043h)
	movwf	(??_CheckKeyPad+0)+0
	movf	(??_CheckKeyPad+0)+0,w
	movwf	(CheckKeyPad@charactor)
	goto	l1025
	line	243
	
l1048:	
	
l9746:	
;Automated Solar Panel Orientation Setter.c: 243: else if(colomnNo==4 && rowNo == 1) charactor = '*';
	movlw	04h
	xorwf	(CheckKeyPad@colomnNo),w
	iorwf	(CheckKeyPad@colomnNo+1),w
	skipz
	goto	u11551
	goto	u11550
u11551:
	goto	l9752
u11550:
	
l9748:	
	movlw	01h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u11561
	goto	u11560
u11561:
	goto	l9752
u11560:
	
l9750:	
	movlw	(02Ah)
	movwf	(??_CheckKeyPad+0)+0
	movf	(??_CheckKeyPad+0)+0,w
	movwf	(CheckKeyPad@charactor)
	goto	l1025
	line	244
	
l1050:	
	
l9752:	
;Automated Solar Panel Orientation Setter.c: 244: else if(colomnNo==4 && rowNo == 2) charactor = '0';
	movlw	04h
	xorwf	(CheckKeyPad@colomnNo),w
	iorwf	(CheckKeyPad@colomnNo+1),w
	skipz
	goto	u11571
	goto	u11570
u11571:
	goto	l9758
u11570:
	
l9754:	
	movlw	02h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u11581
	goto	u11580
u11581:
	goto	l9758
u11580:
	
l9756:	
	movlw	(030h)
	movwf	(??_CheckKeyPad+0)+0
	movf	(??_CheckKeyPad+0)+0,w
	movwf	(CheckKeyPad@charactor)
	goto	l1025
	line	245
	
l1052:	
	
l9758:	
;Automated Solar Panel Orientation Setter.c: 245: else if(colomnNo==4 && rowNo == 3) charactor = '#';
	movlw	04h
	xorwf	(CheckKeyPad@colomnNo),w
	iorwf	(CheckKeyPad@colomnNo+1),w
	skipz
	goto	u11591
	goto	u11590
u11591:
	goto	l9764
u11590:
	
l9760:	
	movlw	03h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u11601
	goto	u11600
u11601:
	goto	l9764
u11600:
	
l9762:	
	movlw	(023h)
	movwf	(??_CheckKeyPad+0)+0
	movf	(??_CheckKeyPad+0)+0,w
	movwf	(CheckKeyPad@charactor)
	goto	l1025
	line	246
	
l1054:	
	
l9764:	
;Automated Solar Panel Orientation Setter.c: 246: else if(colomnNo==4 && rowNo == 4) charactor = 'D';
	movlw	04h
	xorwf	(CheckKeyPad@colomnNo),w
	iorwf	(CheckKeyPad@colomnNo+1),w
	skipz
	goto	u11611
	goto	u11610
u11611:
	goto	l9770
u11610:
	
l9766:	
	movlw	04h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u11621
	goto	u11620
u11621:
	goto	l9770
u11620:
	
l9768:	
	movlw	(044h)
	movwf	(??_CheckKeyPad+0)+0
	movf	(??_CheckKeyPad+0)+0,w
	movwf	(CheckKeyPad@charactor)
	goto	l1025
	line	248
	
l1056:	
	
l9770:	
;Automated Solar Panel Orientation Setter.c: 248: else charactor = '@';
	movlw	(040h)
	movwf	(??_CheckKeyPad+0)+0
	movf	(??_CheckKeyPad+0)+0,w
	movwf	(CheckKeyPad@charactor)
	goto	l1025
	
l1057:	
	goto	l1025
	
l1055:	
	goto	l1025
	
l1053:	
	goto	l1025
	
l1051:	
	goto	l1025
	
l1049:	
	goto	l1025
	
l1047:	
	goto	l1025
	
l1045:	
	goto	l1025
	
l1043:	
	goto	l1025
	
l1041:	
	goto	l1025
	
l1039:	
	goto	l1025
	
l1037:	
	goto	l1025
	
l1035:	
	goto	l1025
	
l1033:	
	goto	l1025
	
l1031:	
	goto	l1025
	
l1029:	
	goto	l1025
	
l1027:	
	line	249
	
l1025:	
	line	250
;Automated Solar Panel Orientation Setter.c: 249: }
;Automated Solar Panel Orientation Setter.c: 250: if(rowNo==1) while(RD2==0);
	movlw	01h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u11631
	goto	u11630
u11631:
	goto	l9774
u11630:
	goto	l1059
	
l9772:	
	goto	l1059
	
l1060:	
	
l1059:	
	btfss	(66/8),(66)&7
	goto	u11641
	goto	u11640
u11641:
	goto	l1059
u11640:
	goto	l9786
	
l1061:	
	goto	l9786
	line	251
	
l1058:	
	
l9774:	
;Automated Solar Panel Orientation Setter.c: 251: else if(rowNo==2) while(RD7==0);
	movlw	02h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u11651
	goto	u11650
u11651:
	goto	l9778
u11650:
	goto	l1064
	
l9776:	
	goto	l1064
	
l1065:	
	
l1064:	
	btfss	(71/8),(71)&7
	goto	u11661
	goto	u11660
u11661:
	goto	l1064
u11660:
	goto	l9786
	
l1066:	
	goto	l9786
	line	252
	
l1063:	
	
l9778:	
;Automated Solar Panel Orientation Setter.c: 252: else if(rowNo==3) while(RD3==0);
	movlw	03h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u11671
	goto	u11670
u11671:
	goto	l9782
u11670:
	goto	l1069
	
l9780:	
	goto	l1069
	
l1070:	
	
l1069:	
	btfss	(67/8),(67)&7
	goto	u11681
	goto	u11680
u11681:
	goto	l1069
u11680:
	goto	l9786
	
l1071:	
	goto	l9786
	line	253
	
l1068:	
	
l9782:	
;Automated Solar Panel Orientation Setter.c: 253: else if(rowNo==4) while(RD6==0);
	movlw	04h
	xorwf	(CheckKeyPad@rowNo),w
	iorwf	(CheckKeyPad@rowNo+1),w
	skipz
	goto	u11691
	goto	u11690
u11691:
	goto	l9786
u11690:
	goto	l1074
	
l9784:	
	goto	l1074
	
l1075:	
	
l1074:	
	btfss	(70/8),(70)&7
	goto	u11701
	goto	u11700
u11701:
	goto	l1074
u11700:
	goto	l9786
	
l1076:	
	goto	l9786
	
l1073:	
	goto	l9786
	line	254
	
l1072:	
	goto	l9786
	
l1067:	
	goto	l9786
	
l1062:	
	
l9786:	
;Automated Solar Panel Orientation Setter.c: 254: return charactor;
	movf	(CheckKeyPad@charactor),w
	goto	l1077
	
l9788:	
	line	255
	
l1077:	
	return
	opt stack 0
GLOBAL	__end_of_CheckKeyPad
	__end_of_CheckKeyPad:
;; =============== function _CheckKeyPad ends ============

	signat	_CheckKeyPad,89
	global	_a2d_read
psect	text1492,local,class=CODE,delta=2
global __ptext1492
__ptext1492:

;; *************** function _a2d_read *****************
;; Defined at:
;;		line 415 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\Automated Solar Panel Orientation Setter.c"
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_read_a2d_value
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1492
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\Automated Solar Panel Orientation Setter.c"
	line	415
	global	__size_of_a2d_read
	__size_of_a2d_read	equ	__end_of_a2d_read-_a2d_read
	
_a2d_read:	
	opt	stack 2
; Regs used in _a2d_read: [wreg+status,2+status,0+pclath+cstack]
	line	416
	
l9652:	
;Automated Solar Panel Orientation Setter.c: 416: ldr1 = read_a2d_value(0);
	movlw	(0)
	fcall	_read_a2d_value
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_read_a2d_value)),w
	clrf	(_ldr1+1)
	addwf	(_ldr1+1)
	movf	(0+(?_read_a2d_value)),w
	clrf	(_ldr1)
	addwf	(_ldr1)

	line	417
;Automated Solar Panel Orientation Setter.c: 417: ldr2 = read_a2d_value(1);
	movlw	(01h)
	fcall	_read_a2d_value
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_read_a2d_value)),w
	clrf	(_ldr2+1)
	addwf	(_ldr2+1)
	movf	(0+(?_read_a2d_value)),w
	clrf	(_ldr2)
	addwf	(_ldr2)

	line	418
;Automated Solar Panel Orientation Setter.c: 418: V_Bat = read_a2d_value(2);
	movlw	(02h)
	fcall	_read_a2d_value
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_read_a2d_value)),w
	clrf	(_V_Bat+1)
	addwf	(_V_Bat+1)
	movf	(0+(?_read_a2d_value)),w
	clrf	(_V_Bat)
	addwf	(_V_Bat)

	line	419
;Automated Solar Panel Orientation Setter.c: 419: C_Bat = read_a2d_value(3);
	movlw	(03h)
	fcall	_read_a2d_value
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_read_a2d_value)),w
	clrf	(_C_Bat+1)
	addwf	(_C_Bat+1)
	movf	(0+(?_read_a2d_value)),w
	clrf	(_C_Bat)
	addwf	(_C_Bat)

	line	420
	
l1134:	
	return
	opt stack 0
GLOBAL	__end_of_a2d_read
	__end_of_a2d_read:
;; =============== function _a2d_read ends ============

	signat	_a2d_read,88
	global	_clr_display
psect	text1493,local,class=CODE,delta=2
global __ptext1493
__ptext1493:

;; *************** function _clr_display *****************
;; Defined at:
;;		line 184 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\lcdV2.h"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_add
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1493
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\lcdV2.h"
	line	184
	global	__size_of_clr_display
	__size_of_clr_display	equ	__end_of_clr_display-_clr_display
	
_clr_display:	
	opt	stack 2
; Regs used in _clr_display: [wreg+status,2+status,0+pclath+cstack]
	line	185
	
l9640:	
;lcdV2.h: 185: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	186
	
l9642:	
;lcdV2.h: 186: _delay(20);
	opt asmopt_off
movlw	6
movwf	(??_clr_display+0)+0,f
u12417:
decfsz	(??_clr_display+0)+0,f
	goto	u12417
	clrwdt
opt asmopt_on

	line	187
	
l9644:	
;lcdV2.h: 187: lcd_data = 0b00000001;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_lcd_data)
	bsf	status,0
	rlf	(_lcd_data),f
	line	188
	
l9646:	
;lcdV2.h: 188: lcd_add();
	fcall	_lcd_add
	line	189
	
l9648:	
;lcdV2.h: 189: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_clr_display+0)+0+1),f
	movlw	251
movwf	((??_clr_display+0)+0),f
u12427:
	decfsz	((??_clr_display+0)+0),f
	goto	u12427
	decfsz	((??_clr_display+0)+0+1),f
	goto	u12427
	nop2
opt asmopt_on

	line	190
	
l9650:	
;lcdV2.h: 190: RC2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	line	191
	
l828:	
	return
	opt stack 0
GLOBAL	__end_of_clr_display
	__end_of_clr_display:
;; =============== function _clr_display ends ============

	signat	_clr_display,88
	global	_position
psect	text1494,local,class=CODE,delta=2
global __ptext1494
__ptext1494:

;; *************** function _position *****************
;; Defined at:
;;		line 209 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\lcdV2.h"
;; Parameters:    Size  Location     Type
;;  row             1    wreg     unsigned char 
;;  collum          1    7[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  row             1   11[BANK0 ] unsigned char 
;;  post            1   10[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_add
;; This function is called by:
;;		_LCD_print_char
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1494
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\lcdV2.h"
	line	209
	global	__size_of_position
	__size_of_position	equ	__end_of_position-_position
	
_position:	
	opt	stack 0
; Regs used in _position: [wreg+status,2+status,0+pclath+cstack]
;position@row stored from wreg
	line	211
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(position@row)
	
l9618:	
;lcdV2.h: 210: char post ;
;lcdV2.h: 211: if( row == 1 ) row = 128;
	movf	(position@row),w
	xorlw	01h
	skipz
	goto	u11281
	goto	u11280
u11281:
	goto	l836
u11280:
	
l9620:	
	movlw	(080h)
	movwf	(??_position+0)+0
	movf	(??_position+0)+0,w
	movwf	(position@row)
	
l836:	
	line	212
;lcdV2.h: 212: if( row == 2 ) row = 192;
	movf	(position@row),w
	xorlw	02h
	skipz
	goto	u11291
	goto	u11290
u11291:
	goto	l9624
u11290:
	
l9622:	
	movlw	(0C0h)
	movwf	(??_position+0)+0
	movf	(??_position+0)+0,w
	movwf	(position@row)
	goto	l9624
	
l837:	
	line	213
	
l9624:	
;lcdV2.h: 213: post = row + collum - 1;
	movf	(position@collum),w
	addwf	(position@row),w
	addlw	0FFh
	movwf	(??_position+0)+0
	movf	(??_position+0)+0,w
	movwf	(position@post)
	line	214
	
l9626:	
;lcdV2.h: 214: RC2 = 0;
	bcf	(58/8),(58)&7
	line	215
	
l9628:	
;lcdV2.h: 215: _delay(20);
	opt asmopt_off
movlw	6
movwf	(??_position+0)+0,f
u12437:
decfsz	(??_position+0)+0,f
	goto	u12437
	clrwdt
opt asmopt_on

	line	216
	
l9630:	
;lcdV2.h: 216: lcd_data = post ;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(position@post),w
	movwf	(??_position+0)+0
	movf	(??_position+0)+0,w
	movwf	(_lcd_data)
	line	217
	
l9632:	
;lcdV2.h: 217: lcd_add();
	fcall	_lcd_add
	line	218
	
l9634:	
;lcdV2.h: 218: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_position+0)+0+1),f
	movlw	251
movwf	((??_position+0)+0),f
u12447:
	decfsz	((??_position+0)+0),f
	goto	u12447
	decfsz	((??_position+0)+0+1),f
	goto	u12447
	nop2
opt asmopt_on

	line	219
	
l9636:	
;lcdV2.h: 219: row = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(position@row)
	line	220
	
l9638:	
;lcdV2.h: 220: collum = 0;
	clrf	(position@collum)
	line	221
	
l838:	
	return
	opt stack 0
GLOBAL	__end_of_position
	__end_of_position:
;; =============== function _position ends ============

	signat	_position,8312
	global	_putch
psect	text1495,local,class=CODE,delta=2
global __ptext1495
__ptext1495:

;; *************** function _putch *****************
;; Defined at:
;;		line 166 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\lcdV2.h"
;; Parameters:    Size  Location     Type
;;  print_value     1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  print_value     1    8[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_add
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text1495
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\lcdV2.h"
	line	166
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 1
; Regs used in _putch: [wreg+status,2+status,0+pclath+cstack]
;putch@print_value stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(putch@print_value)
	line	167
	
l9610:	
;lcdV2.h: 167: RC2 = 1;
	bsf	(58/8),(58)&7
	line	168
	
l9612:	
;lcdV2.h: 168: _delay(20);
	opt asmopt_off
movlw	6
movwf	(??_putch+0)+0,f
u12457:
decfsz	(??_putch+0)+0,f
	goto	u12457
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
	
l9614:	
;lcdV2.h: 170: lcd_add();
	fcall	_lcd_add
	line	171
	
l9616:	
;lcdV2.h: 171: _delay(100);
	opt asmopt_off
movlw	33
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_putch+0)+0,f
u12467:
decfsz	(??_putch+0)+0,f
	goto	u12467
opt asmopt_on

	line	172
	
l822:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_ColomnNo
psect	text1496,local,class=CODE,delta=2
global __ptext1496
__ptext1496:

;; *************** function _ColomnNo *****************
;; Defined at:
;;		line 257 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\Automated Solar Panel Orientation Setter.c"
;; Parameters:    Size  Location     Type
;;  rowNo           2    5[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    5[BANK0 ] int 
;; Registers used:
;;		wreg, status,2
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_CheckKeyPad
;; This function uses a non-reentrant model
;;
psect	text1496
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\Automated Solar Panel Orientation Setter.c"
	line	257
	global	__size_of_ColomnNo
	__size_of_ColomnNo	equ	__end_of_ColomnNo-_ColomnNo
	
_ColomnNo:	
	opt	stack 1
; Regs used in _ColomnNo: [wreg+status,2]
	line	258
	
l9524:	
;Automated Solar Panel Orientation Setter.c: 258: RC4 = 0; RD5 = 0; RC5=0; RD4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	bcf	(69/8),(69)&7
	bcf	(61/8),(61)&7
	bcf	(68/8),(68)&7
	line	259
	
l9526:	
;Automated Solar Panel Orientation Setter.c: 259: if(rowNo==1){
	movlw	01h
	xorwf	(ColomnNo@rowNo),w
	iorwf	(ColomnNo@rowNo+1),w
	skipz
	goto	u11081
	goto	u11080
u11081:
	goto	l9546
u11080:
	line	260
	
l9528:	
;Automated Solar Panel Orientation Setter.c: 260: RC4 = 1;
	bsf	(60/8),(60)&7
	line	261
;Automated Solar Panel Orientation Setter.c: 261: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	262
;Automated Solar Panel Orientation Setter.c: 262: if(RD2==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(66/8),(66)&7
	goto	u11091
	goto	u11090
u11091:
	goto	l1081
u11090:
	line	263
	
l9530:	
;Automated Solar Panel Orientation Setter.c: 263: return 1;
	movlw	low(01h)
	movwf	(?_ColomnNo)
	movlw	high(01h)
	movwf	((?_ColomnNo))+1
	goto	l1082
	
l9532:	
	goto	l1082
	line	264
	
l1081:	
	line	265
;Automated Solar Panel Orientation Setter.c: 264: }
;Automated Solar Panel Orientation Setter.c: 265: RD5 = 1;
	bsf	(69/8),(69)&7
	line	266
;Automated Solar Panel Orientation Setter.c: 266: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	267
;Automated Solar Panel Orientation Setter.c: 267: if(RD2==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(66/8),(66)&7
	goto	u11101
	goto	u11100
u11101:
	goto	l1083
u11100:
	line	268
	
l9534:	
;Automated Solar Panel Orientation Setter.c: 268: return 2;
	movlw	low(02h)
	movwf	(?_ColomnNo)
	movlw	high(02h)
	movwf	((?_ColomnNo))+1
	goto	l1082
	
l9536:	
	goto	l1082
	line	269
	
l1083:	
	line	270
;Automated Solar Panel Orientation Setter.c: 269: }
;Automated Solar Panel Orientation Setter.c: 270: RC5 = 1;
	bsf	(61/8),(61)&7
	line	271
;Automated Solar Panel Orientation Setter.c: 271: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	272
;Automated Solar Panel Orientation Setter.c: 272: if(RD2==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(66/8),(66)&7
	goto	u11111
	goto	u11110
u11111:
	goto	l1084
u11110:
	line	273
	
l9538:	
;Automated Solar Panel Orientation Setter.c: 273: return 3;
	movlw	low(03h)
	movwf	(?_ColomnNo)
	movlw	high(03h)
	movwf	((?_ColomnNo))+1
	goto	l1082
	
l9540:	
	goto	l1082
	line	274
	
l1084:	
	line	275
;Automated Solar Panel Orientation Setter.c: 274: }
;Automated Solar Panel Orientation Setter.c: 275: RD4 = 1;
	bsf	(68/8),(68)&7
	line	276
;Automated Solar Panel Orientation Setter.c: 276: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	277
;Automated Solar Panel Orientation Setter.c: 277: if(RD2==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(66/8),(66)&7
	goto	u11121
	goto	u11120
u11121:
	goto	l9606
u11120:
	line	278
	
l9542:	
;Automated Solar Panel Orientation Setter.c: 278: return 4;
	movlw	low(04h)
	movwf	(?_ColomnNo)
	movlw	high(04h)
	movwf	((?_ColomnNo))+1
	goto	l1082
	
l9544:	
	goto	l1082
	line	279
	
l1085:	
	line	280
;Automated Solar Panel Orientation Setter.c: 279: }
;Automated Solar Panel Orientation Setter.c: 280: }
	goto	l9606
	line	281
	
l1080:	
	
l9546:	
;Automated Solar Panel Orientation Setter.c: 281: else if(rowNo==2){
	movlw	02h
	xorwf	(ColomnNo@rowNo),w
	iorwf	(ColomnNo@rowNo+1),w
	skipz
	goto	u11131
	goto	u11130
u11131:
	goto	l9566
u11130:
	line	282
	
l9548:	
;Automated Solar Panel Orientation Setter.c: 282: RC4 = 1;
	bsf	(60/8),(60)&7
	line	283
;Automated Solar Panel Orientation Setter.c: 283: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	284
;Automated Solar Panel Orientation Setter.c: 284: if(RD7==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(71/8),(71)&7
	goto	u11141
	goto	u11140
u11141:
	goto	l1088
u11140:
	line	285
	
l9550:	
;Automated Solar Panel Orientation Setter.c: 285: return 1;
	movlw	low(01h)
	movwf	(?_ColomnNo)
	movlw	high(01h)
	movwf	((?_ColomnNo))+1
	goto	l1082
	
l9552:	
	goto	l1082
	line	286
	
l1088:	
	line	287
;Automated Solar Panel Orientation Setter.c: 286: }
;Automated Solar Panel Orientation Setter.c: 287: RD5 = 1;
	bsf	(69/8),(69)&7
	line	288
;Automated Solar Panel Orientation Setter.c: 288: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	289
;Automated Solar Panel Orientation Setter.c: 289: if(RD7==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(71/8),(71)&7
	goto	u11151
	goto	u11150
u11151:
	goto	l1089
u11150:
	line	290
	
l9554:	
;Automated Solar Panel Orientation Setter.c: 290: return 2;
	movlw	low(02h)
	movwf	(?_ColomnNo)
	movlw	high(02h)
	movwf	((?_ColomnNo))+1
	goto	l1082
	
l9556:	
	goto	l1082
	line	291
	
l1089:	
	line	292
;Automated Solar Panel Orientation Setter.c: 291: }
;Automated Solar Panel Orientation Setter.c: 292: RC5 = 1;
	bsf	(61/8),(61)&7
	line	293
;Automated Solar Panel Orientation Setter.c: 293: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	294
;Automated Solar Panel Orientation Setter.c: 294: if(RD7==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(71/8),(71)&7
	goto	u11161
	goto	u11160
u11161:
	goto	l1090
u11160:
	line	295
	
l9558:	
;Automated Solar Panel Orientation Setter.c: 295: return 3;
	movlw	low(03h)
	movwf	(?_ColomnNo)
	movlw	high(03h)
	movwf	((?_ColomnNo))+1
	goto	l1082
	
l9560:	
	goto	l1082
	line	296
	
l1090:	
	line	297
;Automated Solar Panel Orientation Setter.c: 296: }
;Automated Solar Panel Orientation Setter.c: 297: RD4 = 1;
	bsf	(68/8),(68)&7
	line	298
;Automated Solar Panel Orientation Setter.c: 298: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	299
;Automated Solar Panel Orientation Setter.c: 299: if(RD7==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(71/8),(71)&7
	goto	u11171
	goto	u11170
u11171:
	goto	l9606
u11170:
	line	300
	
l9562:	
;Automated Solar Panel Orientation Setter.c: 300: return 4;
	movlw	low(04h)
	movwf	(?_ColomnNo)
	movlw	high(04h)
	movwf	((?_ColomnNo))+1
	goto	l1082
	
l9564:	
	goto	l1082
	line	301
	
l1091:	
	line	302
;Automated Solar Panel Orientation Setter.c: 301: }
;Automated Solar Panel Orientation Setter.c: 302: }
	goto	l9606
	line	303
	
l1087:	
	
l9566:	
;Automated Solar Panel Orientation Setter.c: 303: else if(rowNo==3){
	movlw	03h
	xorwf	(ColomnNo@rowNo),w
	iorwf	(ColomnNo@rowNo+1),w
	skipz
	goto	u11181
	goto	u11180
u11181:
	goto	l9586
u11180:
	line	304
	
l9568:	
;Automated Solar Panel Orientation Setter.c: 304: RC4 = 1;
	bsf	(60/8),(60)&7
	line	305
;Automated Solar Panel Orientation Setter.c: 305: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	306
;Automated Solar Panel Orientation Setter.c: 306: if(RD3==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(67/8),(67)&7
	goto	u11191
	goto	u11190
u11191:
	goto	l1094
u11190:
	line	307
	
l9570:	
;Automated Solar Panel Orientation Setter.c: 307: return 1;
	movlw	low(01h)
	movwf	(?_ColomnNo)
	movlw	high(01h)
	movwf	((?_ColomnNo))+1
	goto	l1082
	
l9572:	
	goto	l1082
	line	308
	
l1094:	
	line	309
;Automated Solar Panel Orientation Setter.c: 308: }
;Automated Solar Panel Orientation Setter.c: 309: RD5 = 1;
	bsf	(69/8),(69)&7
	line	310
;Automated Solar Panel Orientation Setter.c: 310: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	311
;Automated Solar Panel Orientation Setter.c: 311: if(RD3==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(67/8),(67)&7
	goto	u11201
	goto	u11200
u11201:
	goto	l1095
u11200:
	line	312
	
l9574:	
;Automated Solar Panel Orientation Setter.c: 312: return 2;
	movlw	low(02h)
	movwf	(?_ColomnNo)
	movlw	high(02h)
	movwf	((?_ColomnNo))+1
	goto	l1082
	
l9576:	
	goto	l1082
	line	313
	
l1095:	
	line	314
;Automated Solar Panel Orientation Setter.c: 313: }
;Automated Solar Panel Orientation Setter.c: 314: RC5 = 1;
	bsf	(61/8),(61)&7
	line	315
;Automated Solar Panel Orientation Setter.c: 315: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	316
;Automated Solar Panel Orientation Setter.c: 316: if(RD3==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(67/8),(67)&7
	goto	u11211
	goto	u11210
u11211:
	goto	l1096
u11210:
	line	317
	
l9578:	
;Automated Solar Panel Orientation Setter.c: 317: return 3;
	movlw	low(03h)
	movwf	(?_ColomnNo)
	movlw	high(03h)
	movwf	((?_ColomnNo))+1
	goto	l1082
	
l9580:	
	goto	l1082
	line	318
	
l1096:	
	line	319
;Automated Solar Panel Orientation Setter.c: 318: }
;Automated Solar Panel Orientation Setter.c: 319: RD4 = 1;
	bsf	(68/8),(68)&7
	line	320
;Automated Solar Panel Orientation Setter.c: 320: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	321
;Automated Solar Panel Orientation Setter.c: 321: if(RD3==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(67/8),(67)&7
	goto	u11221
	goto	u11220
u11221:
	goto	l9606
u11220:
	line	322
	
l9582:	
;Automated Solar Panel Orientation Setter.c: 322: return 4;
	movlw	low(04h)
	movwf	(?_ColomnNo)
	movlw	high(04h)
	movwf	((?_ColomnNo))+1
	goto	l1082
	
l9584:	
	goto	l1082
	line	323
	
l1097:	
	line	324
;Automated Solar Panel Orientation Setter.c: 323: }
;Automated Solar Panel Orientation Setter.c: 324: }
	goto	l9606
	line	325
	
l1093:	
	
l9586:	
;Automated Solar Panel Orientation Setter.c: 325: else if(rowNo==4){
	movlw	04h
	xorwf	(ColomnNo@rowNo),w
	iorwf	(ColomnNo@rowNo+1),w
	skipz
	goto	u11231
	goto	u11230
u11231:
	goto	l9606
u11230:
	line	326
	
l9588:	
;Automated Solar Panel Orientation Setter.c: 326: RC4 = 1;
	bsf	(60/8),(60)&7
	line	327
;Automated Solar Panel Orientation Setter.c: 327: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	328
;Automated Solar Panel Orientation Setter.c: 328: if(RD6==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(70/8),(70)&7
	goto	u11241
	goto	u11240
u11241:
	goto	l1100
u11240:
	line	329
	
l9590:	
;Automated Solar Panel Orientation Setter.c: 329: return 1;
	movlw	low(01h)
	movwf	(?_ColomnNo)
	movlw	high(01h)
	movwf	((?_ColomnNo))+1
	goto	l1082
	
l9592:	
	goto	l1082
	line	330
	
l1100:	
	line	331
;Automated Solar Panel Orientation Setter.c: 330: }
;Automated Solar Panel Orientation Setter.c: 331: RD5 = 1;
	bsf	(69/8),(69)&7
	line	332
;Automated Solar Panel Orientation Setter.c: 332: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	333
;Automated Solar Panel Orientation Setter.c: 333: if(RD6==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(70/8),(70)&7
	goto	u11251
	goto	u11250
u11251:
	goto	l1101
u11250:
	line	334
	
l9594:	
;Automated Solar Panel Orientation Setter.c: 334: return 2;
	movlw	low(02h)
	movwf	(?_ColomnNo)
	movlw	high(02h)
	movwf	((?_ColomnNo))+1
	goto	l1082
	
l9596:	
	goto	l1082
	line	335
	
l1101:	
	line	336
;Automated Solar Panel Orientation Setter.c: 335: }
;Automated Solar Panel Orientation Setter.c: 336: RC5 = 1;
	bsf	(61/8),(61)&7
	line	337
;Automated Solar Panel Orientation Setter.c: 337: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	338
;Automated Solar Panel Orientation Setter.c: 338: if(RD6==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(70/8),(70)&7
	goto	u11261
	goto	u11260
u11261:
	goto	l1102
u11260:
	line	339
	
l9598:	
;Automated Solar Panel Orientation Setter.c: 339: return 3;
	movlw	low(03h)
	movwf	(?_ColomnNo)
	movlw	high(03h)
	movwf	((?_ColomnNo))+1
	goto	l1082
	
l9600:	
	goto	l1082
	line	340
	
l1102:	
	line	341
;Automated Solar Panel Orientation Setter.c: 340: }
;Automated Solar Panel Orientation Setter.c: 341: RD4 = 1;
	bsf	(68/8),(68)&7
	line	342
;Automated Solar Panel Orientation Setter.c: 342: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	343
;Automated Solar Panel Orientation Setter.c: 343: if(RD6==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(70/8),(70)&7
	goto	u11271
	goto	u11270
u11271:
	goto	l9606
u11270:
	line	344
	
l9602:	
;Automated Solar Panel Orientation Setter.c: 344: return 4;
	movlw	low(04h)
	movwf	(?_ColomnNo)
	movlw	high(04h)
	movwf	((?_ColomnNo))+1
	goto	l1082
	
l9604:	
	goto	l1082
	line	345
	
l1103:	
	goto	l9606
	line	346
	
l1099:	
	goto	l9606
	line	347
	
l1098:	
	goto	l9606
	
l1092:	
	goto	l9606
	
l1086:	
	
l9606:	
;Automated Solar Panel Orientation Setter.c: 345: }
;Automated Solar Panel Orientation Setter.c: 346: }
;Automated Solar Panel Orientation Setter.c: 347: return 0;
	clrf	(?_ColomnNo)
	clrf	(?_ColomnNo+1)
	goto	l1082
	
l9608:	
	line	348
	
l1082:	
	return
	opt stack 0
GLOBAL	__end_of_ColomnNo
	__end_of_ColomnNo:
;; =============== function _ColomnNo ends ============

	signat	_ColomnNo,4218
	global	_RotateMotorRight
psect	text1497,local,class=CODE,delta=2
global __ptext1497
__ptext1497:

;; *************** function _RotateMotorRight *****************
;; Defined at:
;;		line 399 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\Automated Solar Panel Orientation Setter.c"
;; Parameters:    Size  Location     Type
;;  value           2    5[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  i               2    9[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_Rotation
;; This function uses a non-reentrant model
;;
psect	text1497
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\Automated Solar Panel Orientation Setter.c"
	line	399
	global	__size_of_RotateMotorRight
	__size_of_RotateMotorRight	equ	__end_of_RotateMotorRight-_RotateMotorRight
	
_RotateMotorRight:	
	opt	stack 3
; Regs used in _RotateMotorRight: [wreg+status,2]
	line	401
	
l9496:	
;Automated Solar Panel Orientation Setter.c: 401: int i=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(RotateMotorRight@i)
	clrf	(RotateMotorRight@i+1)
	line	402
;Automated Solar Panel Orientation Setter.c: 402: for(i=0; i<value; i++){
	clrf	(RotateMotorRight@i)
	clrf	(RotateMotorRight@i+1)
	goto	l1128
	
l1129:	
	line	403
;Automated Solar Panel Orientation Setter.c: 403: RB2=1; RB3=1; RB4=1; RB5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	bsf	(51/8),(51)&7
	bsf	(52/8),(52)&7
	bcf	(53/8),(53)&7
	line	404
	
l9498:	
;Automated Solar Panel Orientation Setter.c: 404: _delay((unsigned long)((15)*(4000000/4000.0)));
	opt asmopt_off
movlw	20
movwf	((??_RotateMotorRight+0)+0+1),f
	movlw	121
movwf	((??_RotateMotorRight+0)+0),f
u12477:
	decfsz	((??_RotateMotorRight+0)+0),f
	goto	u12477
	decfsz	((??_RotateMotorRight+0)+0+1),f
	goto	u12477
	nop2
opt asmopt_on

	line	405
	
l9500:	
;Automated Solar Panel Orientation Setter.c: 405: RB2=1; RB3=1; RB4=0; RB5=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	
l9502:	
	bsf	(51/8),(51)&7
	
l9504:	
	bcf	(52/8),(52)&7
	
l9506:	
	bsf	(53/8),(53)&7
	line	406
;Automated Solar Panel Orientation Setter.c: 406: _delay((unsigned long)((15)*(4000000/4000.0)));
	opt asmopt_off
movlw	20
movwf	((??_RotateMotorRight+0)+0+1),f
	movlw	121
movwf	((??_RotateMotorRight+0)+0),f
u12487:
	decfsz	((??_RotateMotorRight+0)+0),f
	goto	u12487
	decfsz	((??_RotateMotorRight+0)+0+1),f
	goto	u12487
	nop2
opt asmopt_on

	line	407
	
l9508:	
;Automated Solar Panel Orientation Setter.c: 407: RB2=1; RB3=0; RB4=1; RB5=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	
l9510:	
	bcf	(51/8),(51)&7
	
l9512:	
	bsf	(52/8),(52)&7
	
l9514:	
	bsf	(53/8),(53)&7
	line	408
;Automated Solar Panel Orientation Setter.c: 408: _delay((unsigned long)((15)*(4000000/4000.0)));
	opt asmopt_off
movlw	20
movwf	((??_RotateMotorRight+0)+0+1),f
	movlw	121
movwf	((??_RotateMotorRight+0)+0),f
u12497:
	decfsz	((??_RotateMotorRight+0)+0),f
	goto	u12497
	decfsz	((??_RotateMotorRight+0)+0+1),f
	goto	u12497
	nop2
opt asmopt_on

	line	409
	
l9516:	
;Automated Solar Panel Orientation Setter.c: 409: RB2=0; RB3=1; RB4=1; RB5=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	
l9518:	
	bsf	(51/8),(51)&7
	
l9520:	
	bsf	(52/8),(52)&7
	
l9522:	
	bsf	(53/8),(53)&7
	line	410
;Automated Solar Panel Orientation Setter.c: 410: _delay((unsigned long)((15)*(4000000/4000.0)));
	opt asmopt_off
movlw	20
movwf	((??_RotateMotorRight+0)+0+1),f
	movlw	121
movwf	((??_RotateMotorRight+0)+0),f
u12507:
	decfsz	((??_RotateMotorRight+0)+0),f
	goto	u12507
	decfsz	((??_RotateMotorRight+0)+0+1),f
	goto	u12507
	nop2
opt asmopt_on

	line	402
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(RotateMotorRight@i),f
	skipnc
	incf	(RotateMotorRight@i+1),f
	movlw	high(01h)
	addwf	(RotateMotorRight@i+1),f
	
l1128:	
	movf	(RotateMotorRight@i+1),w
	xorlw	80h
	movwf	(??_RotateMotorRight+0)+0
	movf	(RotateMotorRight@value+1),w
	xorlw	80h
	subwf	(??_RotateMotorRight+0)+0,w
	skipz
	goto	u11075
	movf	(RotateMotorRight@value),w
	subwf	(RotateMotorRight@i),w
u11075:

	skipc
	goto	u11071
	goto	u11070
u11071:
	goto	l1129
u11070:
	
l1130:	
	line	412
;Automated Solar Panel Orientation Setter.c: 411: }
;Automated Solar Panel Orientation Setter.c: 412: RB2=1; RB3=1; RB4=1; RB5=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	bsf	(51/8),(51)&7
	bsf	(52/8),(52)&7
	bsf	(53/8),(53)&7
	line	413
	
l1131:	
	return
	opt stack 0
GLOBAL	__end_of_RotateMotorRight
	__end_of_RotateMotorRight:
;; =============== function _RotateMotorRight ends ============

	signat	_RotateMotorRight,4216
	global	_RotateMotorLeft
psect	text1498,local,class=CODE,delta=2
global __ptext1498
__ptext1498:

;; *************** function _RotateMotorLeft *****************
;; Defined at:
;;		line 382 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\Automated Solar Panel Orientation Setter.c"
;; Parameters:    Size  Location     Type
;;  value           2    5[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  i               2    9[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_Rotation
;; This function uses a non-reentrant model
;;
psect	text1498
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\Automated Solar Panel Orientation Setter.c"
	line	382
	global	__size_of_RotateMotorLeft
	__size_of_RotateMotorLeft	equ	__end_of_RotateMotorLeft-_RotateMotorLeft
	
_RotateMotorLeft:	
	opt	stack 3
; Regs used in _RotateMotorLeft: [wreg+status,2]
	line	384
	
l9468:	
;Automated Solar Panel Orientation Setter.c: 384: int i=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(RotateMotorLeft@i)
	clrf	(RotateMotorLeft@i+1)
	line	385
;Automated Solar Panel Orientation Setter.c: 385: for(i=0; i<value; i++){
	clrf	(RotateMotorLeft@i)
	clrf	(RotateMotorLeft@i+1)
	goto	l1122
	
l1123:	
	line	386
;Automated Solar Panel Orientation Setter.c: 386: RB2=0; RB3=1; RB4=1; RB5=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	bsf	(51/8),(51)&7
	bsf	(52/8),(52)&7
	bsf	(53/8),(53)&7
	line	387
	
l9470:	
;Automated Solar Panel Orientation Setter.c: 387: _delay((unsigned long)((15)*(4000000/4000.0)));
	opt asmopt_off
movlw	20
movwf	((??_RotateMotorLeft+0)+0+1),f
	movlw	121
movwf	((??_RotateMotorLeft+0)+0),f
u12517:
	decfsz	((??_RotateMotorLeft+0)+0),f
	goto	u12517
	decfsz	((??_RotateMotorLeft+0)+0+1),f
	goto	u12517
	nop2
opt asmopt_on

	line	388
	
l9472:	
;Automated Solar Panel Orientation Setter.c: 388: RB2=1; RB3=0; RB4=1; RB5=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	
l9474:	
	bcf	(51/8),(51)&7
	
l9476:	
	bsf	(52/8),(52)&7
	
l9478:	
	bsf	(53/8),(53)&7
	line	389
;Automated Solar Panel Orientation Setter.c: 389: _delay((unsigned long)((15)*(4000000/4000.0)));
	opt asmopt_off
movlw	20
movwf	((??_RotateMotorLeft+0)+0+1),f
	movlw	121
movwf	((??_RotateMotorLeft+0)+0),f
u12527:
	decfsz	((??_RotateMotorLeft+0)+0),f
	goto	u12527
	decfsz	((??_RotateMotorLeft+0)+0+1),f
	goto	u12527
	nop2
opt asmopt_on

	line	390
	
l9480:	
;Automated Solar Panel Orientation Setter.c: 390: RB2=1; RB3=1; RB4=0; RB5=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	
l9482:	
	bsf	(51/8),(51)&7
	
l9484:	
	bcf	(52/8),(52)&7
	
l9486:	
	bsf	(53/8),(53)&7
	line	391
;Automated Solar Panel Orientation Setter.c: 391: _delay((unsigned long)((15)*(4000000/4000.0)));
	opt asmopt_off
movlw	20
movwf	((??_RotateMotorLeft+0)+0+1),f
	movlw	121
movwf	((??_RotateMotorLeft+0)+0),f
u12537:
	decfsz	((??_RotateMotorLeft+0)+0),f
	goto	u12537
	decfsz	((??_RotateMotorLeft+0)+0+1),f
	goto	u12537
	nop2
opt asmopt_on

	line	392
	
l9488:	
;Automated Solar Panel Orientation Setter.c: 392: RB2=1; RB3=1; RB4=1; RB5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	
l9490:	
	bsf	(51/8),(51)&7
	
l9492:	
	bsf	(52/8),(52)&7
	
l9494:	
	bcf	(53/8),(53)&7
	line	393
;Automated Solar Panel Orientation Setter.c: 393: _delay((unsigned long)((15)*(4000000/4000.0)));
	opt asmopt_off
movlw	20
movwf	((??_RotateMotorLeft+0)+0+1),f
	movlw	121
movwf	((??_RotateMotorLeft+0)+0),f
u12547:
	decfsz	((??_RotateMotorLeft+0)+0),f
	goto	u12547
	decfsz	((??_RotateMotorLeft+0)+0+1),f
	goto	u12547
	nop2
opt asmopt_on

	line	385
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(RotateMotorLeft@i),f
	skipnc
	incf	(RotateMotorLeft@i+1),f
	movlw	high(01h)
	addwf	(RotateMotorLeft@i+1),f
	
l1122:	
	movf	(RotateMotorLeft@i+1),w
	xorlw	80h
	movwf	(??_RotateMotorLeft+0)+0
	movf	(RotateMotorLeft@value+1),w
	xorlw	80h
	subwf	(??_RotateMotorLeft+0)+0,w
	skipz
	goto	u11065
	movf	(RotateMotorLeft@value),w
	subwf	(RotateMotorLeft@i),w
u11065:

	skipc
	goto	u11061
	goto	u11060
u11061:
	goto	l1123
u11060:
	
l1124:	
	line	395
;Automated Solar Panel Orientation Setter.c: 394: }
;Automated Solar Panel Orientation Setter.c: 395: RB2=1; RB3=1; RB4=1; RB5=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	bsf	(51/8),(51)&7
	bsf	(52/8),(52)&7
	bsf	(53/8),(53)&7
	line	397
	
l1125:	
	return
	opt stack 0
GLOBAL	__end_of_RotateMotorLeft
	__end_of_RotateMotorLeft:
;; =============== function _RotateMotorLeft ends ============

	signat	_RotateMotorLeft,4216
	global	_Serial_Print_Int
psect	text1499,local,class=CODE,delta=2
global __ptext1499
__ptext1499:

;; *************** function _Serial_Print_Int *****************
;; Defined at:
;;		line 141 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\serial.h"
;; Parameters:    Size  Location     Type
;;  val             2   14[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1499
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\serial.h"
	line	141
	global	__size_of_Serial_Print_Int
	__size_of_Serial_Print_Int	equ	__end_of_Serial_Print_Int-_Serial_Print_Int
	
_Serial_Print_Int:	
	opt	stack 2
; Regs used in _Serial_Print_Int: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	144
	
l9378:	
;serial.h: 144: if(val < 0){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(Serial_Print_Int@val+1),7
	goto	u10891
	goto	u10890
u10891:
	goto	l9386
u10890:
	goto	l946
	line	145
	
l9380:	
;serial.h: 145: while(!TXIF);
	goto	l946
	
l947:	
	
l946:	
	btfss	(100/8),(100)&7
	goto	u10901
	goto	u10900
u10901:
	goto	l946
u10900:
	goto	l9382
	
l948:	
	line	146
	
l9382:	
;serial.h: 146: TXREG = '-';
	movlw	(02Dh)
	movwf	(25)	;volatile
	line	147
;serial.h: 147: _delay(10);
	opt asmopt_off
movlw	3
movwf	(??_Serial_Print_Int+0)+0,f
u12557:
decfsz	(??_Serial_Print_Int+0)+0,f
	goto	u12557
opt asmopt_on

	line	148
	
l9384:	
;serial.h: 148: val = -val;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(Serial_Print_Int@val),f
	comf	(Serial_Print_Int@val+1),f
	incf	(Serial_Print_Int@val),f
	skipnz
	incf	(Serial_Print_Int@val+1),f
	goto	l9386
	line	149
	
l945:	
	line	150
	
l9386:	
;serial.h: 149: }
;serial.h: 150: if(val > 9999){
	movf	(Serial_Print_Int@val+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02710h))^80h
	subwf	btemp+1,w
	skipz
	goto	u10915
	movlw	low(02710h)
	subwf	(Serial_Print_Int@val),w
u10915:

	skipc
	goto	u10911
	goto	u10910
u10911:
	goto	l9414
u10910:
	goto	l950
	line	151
	
l9388:	
;serial.h: 151: while(!TXIF);
	goto	l950
	
l951:	
	
l950:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u10921
	goto	u10920
u10921:
	goto	l950
u10920:
	goto	l9390
	
l952:	
	line	152
	
l9390:	
;serial.h: 152: TXREG = val/10000+48;
	movlw	low(02710h)
	movwf	(?___awdiv)
	movlw	high(02710h)
	movwf	((?___awdiv))+1
	movf	(Serial_Print_Int@val+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(Serial_Print_Int@val),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	030h
	movwf	(25)	;volatile
	line	153
	
l9392:	
;serial.h: 153: _delay(10);
	opt asmopt_off
movlw	3
movwf	(??_Serial_Print_Int+0)+0,f
u12567:
decfsz	(??_Serial_Print_Int+0)+0,f
	goto	u12567
opt asmopt_on

	line	154
	
l9394:	
;serial.h: 154: val = val%10000;
	movlw	low(02710h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	movlw	high(02710h)
	movwf	((?___awmod))+1
	movf	(Serial_Print_Int@val+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(Serial_Print_Int@val),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(Serial_Print_Int@val+1)
	addwf	(Serial_Print_Int@val+1)
	movf	(0+(?___awmod)),w
	clrf	(Serial_Print_Int@val)
	addwf	(Serial_Print_Int@val)

	line	156
;serial.h: 156: while(!TXIF);
	goto	l953
	
l954:	
	
l953:	
	btfss	(100/8),(100)&7
	goto	u10931
	goto	u10930
u10931:
	goto	l953
u10930:
	goto	l9396
	
l955:	
	line	157
	
l9396:	
;serial.h: 157: TXREG = val/1000+48;
	movlw	low(03E8h)
	movwf	(?___awdiv)
	movlw	high(03E8h)
	movwf	((?___awdiv))+1
	movf	(Serial_Print_Int@val+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(Serial_Print_Int@val),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	030h
	movwf	(25)	;volatile
	line	158
	
l9398:	
;serial.h: 158: _delay(10);
	opt asmopt_off
movlw	3
movwf	(??_Serial_Print_Int+0)+0,f
u12577:
decfsz	(??_Serial_Print_Int+0)+0,f
	goto	u12577
opt asmopt_on

	line	159
	
l9400:	
;serial.h: 159: val = val%1000;
	movlw	low(03E8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	movlw	high(03E8h)
	movwf	((?___awmod))+1
	movf	(Serial_Print_Int@val+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(Serial_Print_Int@val),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(Serial_Print_Int@val+1)
	addwf	(Serial_Print_Int@val+1)
	movf	(0+(?___awmod)),w
	clrf	(Serial_Print_Int@val)
	addwf	(Serial_Print_Int@val)

	line	161
;serial.h: 161: while(!TXIF);
	goto	l956
	
l957:	
	
l956:	
	btfss	(100/8),(100)&7
	goto	u10941
	goto	u10940
u10941:
	goto	l956
u10940:
	goto	l9402
	
l958:	
	line	162
	
l9402:	
;serial.h: 162: TXREG = val/100+48;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(Serial_Print_Int@val+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(Serial_Print_Int@val),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	030h
	movwf	(25)	;volatile
	line	163
	
l9404:	
;serial.h: 163: _delay(10);
	opt asmopt_off
movlw	3
movwf	(??_Serial_Print_Int+0)+0,f
u12587:
decfsz	(??_Serial_Print_Int+0)+0,f
	goto	u12587
opt asmopt_on

	line	164
	
l9406:	
;serial.h: 164: val = val%100;
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(Serial_Print_Int@val+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(Serial_Print_Int@val),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(Serial_Print_Int@val+1)
	addwf	(Serial_Print_Int@val+1)
	movf	(0+(?___awmod)),w
	clrf	(Serial_Print_Int@val)
	addwf	(Serial_Print_Int@val)

	line	166
;serial.h: 166: while(!TXIF);
	goto	l959
	
l960:	
	
l959:	
	btfss	(100/8),(100)&7
	goto	u10951
	goto	u10950
u10951:
	goto	l959
u10950:
	goto	l9408
	
l961:	
	line	167
	
l9408:	
;serial.h: 167: TXREG = val/10+48;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(Serial_Print_Int@val+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(Serial_Print_Int@val),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	030h
	movwf	(25)	;volatile
	line	168
	
l9410:	
;serial.h: 168: _delay(10);
	opt asmopt_off
movlw	3
movwf	(??_Serial_Print_Int+0)+0,f
u12597:
decfsz	(??_Serial_Print_Int+0)+0,f
	goto	u12597
opt asmopt_on

	line	169
	
l9412:	
;serial.h: 169: val = val%10;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(Serial_Print_Int@val+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(Serial_Print_Int@val),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(Serial_Print_Int@val+1)
	addwf	(Serial_Print_Int@val+1)
	movf	(0+(?___awmod)),w
	clrf	(Serial_Print_Int@val)
	addwf	(Serial_Print_Int@val)

	line	170
;serial.h: 170: }
	goto	l986
	line	171
	
l949:	
	
l9414:	
;serial.h: 171: else if(val > 999){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Serial_Print_Int@val+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u10965
	movlw	low(03E8h)
	subwf	(Serial_Print_Int@val),w
u10965:

	skipc
	goto	u10961
	goto	u10960
u10961:
	goto	l9436
u10960:
	goto	l964
	line	172
	
l9416:	
;serial.h: 172: while(!TXIF);
	goto	l964
	
l965:	
	
l964:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u10971
	goto	u10970
u10971:
	goto	l964
u10970:
	goto	l9418
	
l966:	
	line	173
	
l9418:	
;serial.h: 173: TXREG = val/1000+48;
	movlw	low(03E8h)
	movwf	(?___awdiv)
	movlw	high(03E8h)
	movwf	((?___awdiv))+1
	movf	(Serial_Print_Int@val+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(Serial_Print_Int@val),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	030h
	movwf	(25)	;volatile
	line	174
	
l9420:	
;serial.h: 174: _delay(10);
	opt asmopt_off
movlw	3
movwf	(??_Serial_Print_Int+0)+0,f
u12607:
decfsz	(??_Serial_Print_Int+0)+0,f
	goto	u12607
opt asmopt_on

	line	175
	
l9422:	
;serial.h: 175: val = val%1000;
	movlw	low(03E8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	movlw	high(03E8h)
	movwf	((?___awmod))+1
	movf	(Serial_Print_Int@val+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(Serial_Print_Int@val),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(Serial_Print_Int@val+1)
	addwf	(Serial_Print_Int@val+1)
	movf	(0+(?___awmod)),w
	clrf	(Serial_Print_Int@val)
	addwf	(Serial_Print_Int@val)

	line	177
;serial.h: 177: while(!TXIF);
	goto	l967
	
l968:	
	
l967:	
	btfss	(100/8),(100)&7
	goto	u10981
	goto	u10980
u10981:
	goto	l967
u10980:
	goto	l9424
	
l969:	
	line	178
	
l9424:	
;serial.h: 178: TXREG = val/100+48;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(Serial_Print_Int@val+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(Serial_Print_Int@val),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	030h
	movwf	(25)	;volatile
	line	179
	
l9426:	
;serial.h: 179: _delay(10);
	opt asmopt_off
movlw	3
movwf	(??_Serial_Print_Int+0)+0,f
u12617:
decfsz	(??_Serial_Print_Int+0)+0,f
	goto	u12617
opt asmopt_on

	line	180
	
l9428:	
;serial.h: 180: val = val%100;
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(Serial_Print_Int@val+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(Serial_Print_Int@val),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(Serial_Print_Int@val+1)
	addwf	(Serial_Print_Int@val+1)
	movf	(0+(?___awmod)),w
	clrf	(Serial_Print_Int@val)
	addwf	(Serial_Print_Int@val)

	line	182
;serial.h: 182: while(!TXIF);
	goto	l970
	
l971:	
	
l970:	
	btfss	(100/8),(100)&7
	goto	u10991
	goto	u10990
u10991:
	goto	l970
u10990:
	goto	l9430
	
l972:	
	line	183
	
l9430:	
;serial.h: 183: TXREG = val/10+48;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(Serial_Print_Int@val+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(Serial_Print_Int@val),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	030h
	movwf	(25)	;volatile
	line	184
	
l9432:	
;serial.h: 184: _delay(10);
	opt asmopt_off
movlw	3
movwf	(??_Serial_Print_Int+0)+0,f
u12627:
decfsz	(??_Serial_Print_Int+0)+0,f
	goto	u12627
opt asmopt_on

	line	185
	
l9434:	
;serial.h: 185: val = val%10;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(Serial_Print_Int@val+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(Serial_Print_Int@val),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(Serial_Print_Int@val+1)
	addwf	(Serial_Print_Int@val+1)
	movf	(0+(?___awmod)),w
	clrf	(Serial_Print_Int@val)
	addwf	(Serial_Print_Int@val)

	line	186
;serial.h: 186: }
	goto	l986
	line	187
	
l963:	
	
l9436:	
;serial.h: 187: else if(val > 99){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Serial_Print_Int@val+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(064h))^80h
	subwf	btemp+1,w
	skipz
	goto	u11005
	movlw	low(064h)
	subwf	(Serial_Print_Int@val),w
u11005:

	skipc
	goto	u11001
	goto	u11000
u11001:
	goto	l9452
u11000:
	goto	l975
	line	188
	
l9438:	
;serial.h: 188: while(!TXIF);
	goto	l975
	
l976:	
	
l975:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u11011
	goto	u11010
u11011:
	goto	l975
u11010:
	goto	l9440
	
l977:	
	line	189
	
l9440:	
;serial.h: 189: TXREG = val/100+48;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(Serial_Print_Int@val+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(Serial_Print_Int@val),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	030h
	movwf	(25)	;volatile
	line	190
	
l9442:	
;serial.h: 190: _delay(10);
	opt asmopt_off
movlw	3
movwf	(??_Serial_Print_Int+0)+0,f
u12637:
decfsz	(??_Serial_Print_Int+0)+0,f
	goto	u12637
opt asmopt_on

	line	191
	
l9444:	
;serial.h: 191: val = val%100;
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(Serial_Print_Int@val+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(Serial_Print_Int@val),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(Serial_Print_Int@val+1)
	addwf	(Serial_Print_Int@val+1)
	movf	(0+(?___awmod)),w
	clrf	(Serial_Print_Int@val)
	addwf	(Serial_Print_Int@val)

	line	193
;serial.h: 193: while(!TXIF);
	goto	l978
	
l979:	
	
l978:	
	btfss	(100/8),(100)&7
	goto	u11021
	goto	u11020
u11021:
	goto	l978
u11020:
	goto	l9446
	
l980:	
	line	194
	
l9446:	
;serial.h: 194: TXREG = val/10+48;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(Serial_Print_Int@val+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(Serial_Print_Int@val),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	030h
	movwf	(25)	;volatile
	line	195
	
l9448:	
;serial.h: 195: _delay(10);
	opt asmopt_off
movlw	3
movwf	(??_Serial_Print_Int+0)+0,f
u12647:
decfsz	(??_Serial_Print_Int+0)+0,f
	goto	u12647
opt asmopt_on

	line	196
	
l9450:	
;serial.h: 196: val = val%10;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(Serial_Print_Int@val+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(Serial_Print_Int@val),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(Serial_Print_Int@val+1)
	addwf	(Serial_Print_Int@val+1)
	movf	(0+(?___awmod)),w
	clrf	(Serial_Print_Int@val)
	addwf	(Serial_Print_Int@val)

	line	197
;serial.h: 197: }
	goto	l986
	line	198
	
l974:	
	
l9452:	
;serial.h: 198: else if(val > 9){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Serial_Print_Int@val+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u11035
	movlw	low(0Ah)
	subwf	(Serial_Print_Int@val),w
u11035:

	skipc
	goto	u11031
	goto	u11030
u11031:
	goto	l986
u11030:
	goto	l983
	line	199
	
l9454:	
;serial.h: 199: while(!TXIF);
	goto	l983
	
l984:	
	
l983:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u11041
	goto	u11040
u11041:
	goto	l983
u11040:
	goto	l9456
	
l985:	
	line	200
	
l9456:	
;serial.h: 200: TXREG = val/10+48;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(Serial_Print_Int@val+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(Serial_Print_Int@val),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	030h
	movwf	(25)	;volatile
	line	201
	
l9458:	
;serial.h: 201: _delay(10);
	opt asmopt_off
movlw	3
movwf	(??_Serial_Print_Int+0)+0,f
u12657:
decfsz	(??_Serial_Print_Int+0)+0,f
	goto	u12657
opt asmopt_on

	line	202
	
l9460:	
;serial.h: 202: val = val%10;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(Serial_Print_Int@val+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(Serial_Print_Int@val),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(Serial_Print_Int@val+1)
	addwf	(Serial_Print_Int@val+1)
	movf	(0+(?___awmod)),w
	clrf	(Serial_Print_Int@val)
	addwf	(Serial_Print_Int@val)

	goto	l986
	line	203
	
l982:	
	goto	l986
	line	204
	
l981:	
	goto	l986
	
l973:	
	goto	l986
	
l962:	
;serial.h: 203: }
;serial.h: 204: while(!TXIF);
	goto	l986
	
l987:	
	
l986:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u11051
	goto	u11050
u11051:
	goto	l986
u11050:
	goto	l9462
	
l988:	
	line	205
	
l9462:	
;serial.h: 205: TXREG = val+48;
	movf	(Serial_Print_Int@val),w
	addlw	030h
	movwf	(25)	;volatile
	line	206
	
l9464:	
;serial.h: 206: _delay(10);
	opt asmopt_off
movlw	3
movwf	(??_Serial_Print_Int+0)+0,f
u12667:
decfsz	(??_Serial_Print_Int+0)+0,f
	goto	u12667
opt asmopt_on

	goto	l989
	line	208
	
l9466:	
	line	209
;serial.h: 208: return 1;
;	Return value of _Serial_Print_Int is never used
	
l989:	
	return
	opt stack 0
GLOBAL	__end_of_Serial_Print_Int
	__end_of_Serial_Print_Int:
;; =============== function _Serial_Print_Int ends ============

	signat	_Serial_Print_Int,4216
	global	_Serial_Println_Int
psect	text1500,local,class=CODE,delta=2
global __ptext1500
__ptext1500:

;; *************** function _Serial_Println_Int *****************
;; Defined at:
;;		line 58 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\serial.h"
;; Parameters:    Size  Location     Type
;;  val             2   14[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		_CheckMode
;; This function uses a non-reentrant model
;;
psect	text1500
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\serial.h"
	line	58
	global	__size_of_Serial_Println_Int
	__size_of_Serial_Println_Int	equ	__end_of_Serial_Println_Int-_Serial_Println_Int
	
_Serial_Println_Int:	
	opt	stack 1
; Regs used in _Serial_Println_Int: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	61
	
l9284:	
;serial.h: 61: if(val < 0){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(Serial_Println_Int@val+1),7
	goto	u10701
	goto	u10700
u10701:
	goto	l9292
u10700:
	goto	l887
	line	62
	
l9286:	
;serial.h: 62: while(!TXIF);
	goto	l887
	
l888:	
	
l887:	
	btfss	(100/8),(100)&7
	goto	u10711
	goto	u10710
u10711:
	goto	l887
u10710:
	goto	l9288
	
l889:	
	line	63
	
l9288:	
;serial.h: 63: TXREG = '-';
	movlw	(02Dh)
	movwf	(25)	;volatile
	line	64
;serial.h: 64: _delay(10);
	opt asmopt_off
movlw	3
movwf	(??_Serial_Println_Int+0)+0,f
u12677:
decfsz	(??_Serial_Println_Int+0)+0,f
	goto	u12677
opt asmopt_on

	line	65
	
l9290:	
;serial.h: 65: val = -val;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(Serial_Println_Int@val),f
	comf	(Serial_Println_Int@val+1),f
	incf	(Serial_Println_Int@val),f
	skipnz
	incf	(Serial_Println_Int@val+1),f
	goto	l9292
	line	66
	
l886:	
	line	67
	
l9292:	
;serial.h: 66: }
;serial.h: 67: if(val > 9999){
	movf	(Serial_Println_Int@val+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02710h))^80h
	subwf	btemp+1,w
	skipz
	goto	u10725
	movlw	low(02710h)
	subwf	(Serial_Println_Int@val),w
u10725:

	skipc
	goto	u10721
	goto	u10720
u10721:
	goto	l9320
u10720:
	goto	l891
	line	68
	
l9294:	
;serial.h: 68: while(!TXIF);
	goto	l891
	
l892:	
	
l891:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u10731
	goto	u10730
u10731:
	goto	l891
u10730:
	goto	l9296
	
l893:	
	line	69
	
l9296:	
;serial.h: 69: TXREG = val/10000+48;
	movlw	low(02710h)
	movwf	(?___awdiv)
	movlw	high(02710h)
	movwf	((?___awdiv))+1
	movf	(Serial_Println_Int@val+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(Serial_Println_Int@val),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	030h
	movwf	(25)	;volatile
	line	70
	
l9298:	
;serial.h: 70: _delay(10);
	opt asmopt_off
movlw	3
movwf	(??_Serial_Println_Int+0)+0,f
u12687:
decfsz	(??_Serial_Println_Int+0)+0,f
	goto	u12687
opt asmopt_on

	line	71
	
l9300:	
;serial.h: 71: val = val%10000;
	movlw	low(02710h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	movlw	high(02710h)
	movwf	((?___awmod))+1
	movf	(Serial_Println_Int@val+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(Serial_Println_Int@val),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(Serial_Println_Int@val+1)
	addwf	(Serial_Println_Int@val+1)
	movf	(0+(?___awmod)),w
	clrf	(Serial_Println_Int@val)
	addwf	(Serial_Println_Int@val)

	line	73
;serial.h: 73: while(!TXIF);
	goto	l894
	
l895:	
	
l894:	
	btfss	(100/8),(100)&7
	goto	u10741
	goto	u10740
u10741:
	goto	l894
u10740:
	goto	l9302
	
l896:	
	line	74
	
l9302:	
;serial.h: 74: TXREG = val/1000+48;
	movlw	low(03E8h)
	movwf	(?___awdiv)
	movlw	high(03E8h)
	movwf	((?___awdiv))+1
	movf	(Serial_Println_Int@val+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(Serial_Println_Int@val),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	030h
	movwf	(25)	;volatile
	line	75
	
l9304:	
;serial.h: 75: _delay(10);
	opt asmopt_off
movlw	3
movwf	(??_Serial_Println_Int+0)+0,f
u12697:
decfsz	(??_Serial_Println_Int+0)+0,f
	goto	u12697
opt asmopt_on

	line	76
	
l9306:	
;serial.h: 76: val = val%1000;
	movlw	low(03E8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	movlw	high(03E8h)
	movwf	((?___awmod))+1
	movf	(Serial_Println_Int@val+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(Serial_Println_Int@val),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(Serial_Println_Int@val+1)
	addwf	(Serial_Println_Int@val+1)
	movf	(0+(?___awmod)),w
	clrf	(Serial_Println_Int@val)
	addwf	(Serial_Println_Int@val)

	line	78
;serial.h: 78: while(!TXIF);
	goto	l897
	
l898:	
	
l897:	
	btfss	(100/8),(100)&7
	goto	u10751
	goto	u10750
u10751:
	goto	l897
u10750:
	goto	l9308
	
l899:	
	line	79
	
l9308:	
;serial.h: 79: TXREG = val/100+48;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(Serial_Println_Int@val+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(Serial_Println_Int@val),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	030h
	movwf	(25)	;volatile
	line	80
	
l9310:	
;serial.h: 80: _delay(10);
	opt asmopt_off
movlw	3
movwf	(??_Serial_Println_Int+0)+0,f
u12707:
decfsz	(??_Serial_Println_Int+0)+0,f
	goto	u12707
opt asmopt_on

	line	81
	
l9312:	
;serial.h: 81: val = val%100;
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(Serial_Println_Int@val+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(Serial_Println_Int@val),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(Serial_Println_Int@val+1)
	addwf	(Serial_Println_Int@val+1)
	movf	(0+(?___awmod)),w
	clrf	(Serial_Println_Int@val)
	addwf	(Serial_Println_Int@val)

	line	83
;serial.h: 83: while(!TXIF);
	goto	l900
	
l901:	
	
l900:	
	btfss	(100/8),(100)&7
	goto	u10761
	goto	u10760
u10761:
	goto	l900
u10760:
	goto	l9314
	
l902:	
	line	84
	
l9314:	
;serial.h: 84: TXREG = val/10+48;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(Serial_Println_Int@val+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(Serial_Println_Int@val),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	030h
	movwf	(25)	;volatile
	line	85
	
l9316:	
;serial.h: 85: _delay(10);
	opt asmopt_off
movlw	3
movwf	(??_Serial_Println_Int+0)+0,f
u12717:
decfsz	(??_Serial_Println_Int+0)+0,f
	goto	u12717
opt asmopt_on

	line	86
	
l9318:	
;serial.h: 86: val = val%10;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(Serial_Println_Int@val+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(Serial_Println_Int@val),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(Serial_Println_Int@val+1)
	addwf	(Serial_Println_Int@val+1)
	movf	(0+(?___awmod)),w
	clrf	(Serial_Println_Int@val)
	addwf	(Serial_Println_Int@val)

	line	87
;serial.h: 87: }
	goto	l927
	line	88
	
l890:	
	
l9320:	
;serial.h: 88: else if(val > 999){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Serial_Println_Int@val+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u10775
	movlw	low(03E8h)
	subwf	(Serial_Println_Int@val),w
u10775:

	skipc
	goto	u10771
	goto	u10770
u10771:
	goto	l9342
u10770:
	goto	l905
	line	89
	
l9322:	
;serial.h: 89: while(!TXIF);
	goto	l905
	
l906:	
	
l905:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u10781
	goto	u10780
u10781:
	goto	l905
u10780:
	goto	l9324
	
l907:	
	line	90
	
l9324:	
;serial.h: 90: TXREG = val/1000+48;
	movlw	low(03E8h)
	movwf	(?___awdiv)
	movlw	high(03E8h)
	movwf	((?___awdiv))+1
	movf	(Serial_Println_Int@val+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(Serial_Println_Int@val),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	030h
	movwf	(25)	;volatile
	line	91
	
l9326:	
;serial.h: 91: _delay(10);
	opt asmopt_off
movlw	3
movwf	(??_Serial_Println_Int+0)+0,f
u12727:
decfsz	(??_Serial_Println_Int+0)+0,f
	goto	u12727
opt asmopt_on

	line	92
	
l9328:	
;serial.h: 92: val = val%1000;
	movlw	low(03E8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	movlw	high(03E8h)
	movwf	((?___awmod))+1
	movf	(Serial_Println_Int@val+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(Serial_Println_Int@val),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(Serial_Println_Int@val+1)
	addwf	(Serial_Println_Int@val+1)
	movf	(0+(?___awmod)),w
	clrf	(Serial_Println_Int@val)
	addwf	(Serial_Println_Int@val)

	line	94
;serial.h: 94: while(!TXIF);
	goto	l908
	
l909:	
	
l908:	
	btfss	(100/8),(100)&7
	goto	u10791
	goto	u10790
u10791:
	goto	l908
u10790:
	goto	l9330
	
l910:	
	line	95
	
l9330:	
;serial.h: 95: TXREG = val/100+48;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(Serial_Println_Int@val+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(Serial_Println_Int@val),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	030h
	movwf	(25)	;volatile
	line	96
	
l9332:	
;serial.h: 96: _delay(10);
	opt asmopt_off
movlw	3
movwf	(??_Serial_Println_Int+0)+0,f
u12737:
decfsz	(??_Serial_Println_Int+0)+0,f
	goto	u12737
opt asmopt_on

	line	97
	
l9334:	
;serial.h: 97: val = val%100;
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(Serial_Println_Int@val+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(Serial_Println_Int@val),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(Serial_Println_Int@val+1)
	addwf	(Serial_Println_Int@val+1)
	movf	(0+(?___awmod)),w
	clrf	(Serial_Println_Int@val)
	addwf	(Serial_Println_Int@val)

	line	99
;serial.h: 99: while(!TXIF);
	goto	l911
	
l912:	
	
l911:	
	btfss	(100/8),(100)&7
	goto	u10801
	goto	u10800
u10801:
	goto	l911
u10800:
	goto	l9336
	
l913:	
	line	100
	
l9336:	
;serial.h: 100: TXREG = val/10+48;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(Serial_Println_Int@val+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(Serial_Println_Int@val),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	030h
	movwf	(25)	;volatile
	line	101
	
l9338:	
;serial.h: 101: _delay(10);
	opt asmopt_off
movlw	3
movwf	(??_Serial_Println_Int+0)+0,f
u12747:
decfsz	(??_Serial_Println_Int+0)+0,f
	goto	u12747
opt asmopt_on

	line	102
	
l9340:	
;serial.h: 102: val = val%10;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(Serial_Println_Int@val+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(Serial_Println_Int@val),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(Serial_Println_Int@val+1)
	addwf	(Serial_Println_Int@val+1)
	movf	(0+(?___awmod)),w
	clrf	(Serial_Println_Int@val)
	addwf	(Serial_Println_Int@val)

	line	103
;serial.h: 103: }
	goto	l927
	line	104
	
l904:	
	
l9342:	
;serial.h: 104: else if(val > 99){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Serial_Println_Int@val+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(064h))^80h
	subwf	btemp+1,w
	skipz
	goto	u10815
	movlw	low(064h)
	subwf	(Serial_Println_Int@val),w
u10815:

	skipc
	goto	u10811
	goto	u10810
u10811:
	goto	l9358
u10810:
	goto	l916
	line	105
	
l9344:	
;serial.h: 105: while(!TXIF);
	goto	l916
	
l917:	
	
l916:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u10821
	goto	u10820
u10821:
	goto	l916
u10820:
	goto	l9346
	
l918:	
	line	106
	
l9346:	
;serial.h: 106: TXREG = val/100+48;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(Serial_Println_Int@val+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(Serial_Println_Int@val),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	030h
	movwf	(25)	;volatile
	line	107
	
l9348:	
;serial.h: 107: _delay(10);
	opt asmopt_off
movlw	3
movwf	(??_Serial_Println_Int+0)+0,f
u12757:
decfsz	(??_Serial_Println_Int+0)+0,f
	goto	u12757
opt asmopt_on

	line	108
	
l9350:	
;serial.h: 108: val = val%100;
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(Serial_Println_Int@val+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(Serial_Println_Int@val),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(Serial_Println_Int@val+1)
	addwf	(Serial_Println_Int@val+1)
	movf	(0+(?___awmod)),w
	clrf	(Serial_Println_Int@val)
	addwf	(Serial_Println_Int@val)

	line	110
;serial.h: 110: while(!TXIF);
	goto	l919
	
l920:	
	
l919:	
	btfss	(100/8),(100)&7
	goto	u10831
	goto	u10830
u10831:
	goto	l919
u10830:
	goto	l9352
	
l921:	
	line	111
	
l9352:	
;serial.h: 111: TXREG = val/10+48;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(Serial_Println_Int@val+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(Serial_Println_Int@val),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	030h
	movwf	(25)	;volatile
	line	112
	
l9354:	
;serial.h: 112: _delay(10);
	opt asmopt_off
movlw	3
movwf	(??_Serial_Println_Int+0)+0,f
u12767:
decfsz	(??_Serial_Println_Int+0)+0,f
	goto	u12767
opt asmopt_on

	line	113
	
l9356:	
;serial.h: 113: val = val%10;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(Serial_Println_Int@val+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(Serial_Println_Int@val),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(Serial_Println_Int@val+1)
	addwf	(Serial_Println_Int@val+1)
	movf	(0+(?___awmod)),w
	clrf	(Serial_Println_Int@val)
	addwf	(Serial_Println_Int@val)

	line	114
;serial.h: 114: }
	goto	l927
	line	115
	
l915:	
	
l9358:	
;serial.h: 115: else if(val > 9){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Serial_Println_Int@val+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u10845
	movlw	low(0Ah)
	subwf	(Serial_Println_Int@val),w
u10845:

	skipc
	goto	u10841
	goto	u10840
u10841:
	goto	l927
u10840:
	goto	l924
	line	116
	
l9360:	
;serial.h: 116: while(!TXIF);
	goto	l924
	
l925:	
	
l924:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u10851
	goto	u10850
u10851:
	goto	l924
u10850:
	goto	l9362
	
l926:	
	line	117
	
l9362:	
;serial.h: 117: TXREG = val/10+48;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(Serial_Println_Int@val+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(Serial_Println_Int@val),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	030h
	movwf	(25)	;volatile
	line	118
	
l9364:	
;serial.h: 118: _delay(10);
	opt asmopt_off
movlw	3
movwf	(??_Serial_Println_Int+0)+0,f
u12777:
decfsz	(??_Serial_Println_Int+0)+0,f
	goto	u12777
opt asmopt_on

	line	119
	
l9366:	
;serial.h: 119: val = val%10;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(Serial_Println_Int@val+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(Serial_Println_Int@val),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(Serial_Println_Int@val+1)
	addwf	(Serial_Println_Int@val+1)
	movf	(0+(?___awmod)),w
	clrf	(Serial_Println_Int@val)
	addwf	(Serial_Println_Int@val)

	goto	l927
	line	120
	
l923:	
	goto	l927
	line	121
	
l922:	
	goto	l927
	
l914:	
	goto	l927
	
l903:	
;serial.h: 120: }
;serial.h: 121: while(!TXIF);
	goto	l927
	
l928:	
	
l927:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u10861
	goto	u10860
u10861:
	goto	l927
u10860:
	goto	l9368
	
l929:	
	line	122
	
l9368:	
;serial.h: 122: TXREG = val+48;
	movf	(Serial_Println_Int@val),w
	addlw	030h
	movwf	(25)	;volatile
	line	123
	
l9370:	
;serial.h: 123: _delay(10);
	opt asmopt_off
movlw	3
movwf	(??_Serial_Println_Int+0)+0,f
u12787:
decfsz	(??_Serial_Println_Int+0)+0,f
	goto	u12787
opt asmopt_on

	line	124
;serial.h: 124: while(!TXIF);
	goto	l930
	
l931:	
	
l930:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u10871
	goto	u10870
u10871:
	goto	l930
u10870:
	goto	l9372
	
l932:	
	line	125
	
l9372:	
;serial.h: 125: TXREG = 13;
	movlw	(0Dh)
	movwf	(25)	;volatile
	line	126
;serial.h: 126: _delay(10);
	opt asmopt_off
movlw	3
movwf	(??_Serial_Println_Int+0)+0,f
u12797:
decfsz	(??_Serial_Println_Int+0)+0,f
	goto	u12797
opt asmopt_on

	line	127
;serial.h: 127: while(!TXIF);
	goto	l933
	
l934:	
	
l933:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u10881
	goto	u10880
u10881:
	goto	l933
u10880:
	goto	l9374
	
l935:	
	line	128
	
l9374:	
;serial.h: 128: TXREG = 10;
	movlw	(0Ah)
	movwf	(25)	;volatile
	line	129
;serial.h: 129: _delay(10);
	opt asmopt_off
movlw	3
movwf	(??_Serial_Println_Int+0)+0,f
u12807:
decfsz	(??_Serial_Println_Int+0)+0,f
	goto	u12807
opt asmopt_on

	goto	l936
	line	130
	
l9376:	
	line	131
;serial.h: 130: return 1;
;	Return value of _Serial_Println_Int is never used
	
l936:	
	return
	opt stack 0
GLOBAL	__end_of_Serial_Println_Int
	__end_of_Serial_Println_Int:
;; =============== function _Serial_Println_Int ends ============

	signat	_Serial_Println_Int,4216
	global	_Serial_NewLine
psect	text1501,local,class=CODE,delta=2
global __ptext1501
__ptext1501:

;; *************** function _Serial_NewLine *****************
;; Defined at:
;;		line 37 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\serial.h"
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
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_Serial_Println
;; This function uses a non-reentrant model
;;
psect	text1501
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\serial.h"
	line	37
	global	__size_of_Serial_NewLine
	__size_of_Serial_NewLine	equ	__end_of_Serial_NewLine-_Serial_NewLine
	
_Serial_NewLine:	
	opt	stack 3
; Regs used in _Serial_NewLine: [wreg]
	line	38
	
l9278:	
;serial.h: 38: while(!TXIF);
	goto	l868
	
l869:	
	
l868:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u10681
	goto	u10680
u10681:
	goto	l868
u10680:
	goto	l9280
	
l870:	
	line	39
	
l9280:	
;serial.h: 39: TXREG = 13;
	movlw	(0Dh)
	movwf	(25)	;volatile
	line	40
;serial.h: 40: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_Serial_NewLine+0)+0,f
u12817:
	clrwdt
decfsz	(??_Serial_NewLine+0)+0,f
	goto	u12817
	nop2	;nop
	clrwdt
opt asmopt_on

	line	41
;serial.h: 41: while(!TXIF);
	goto	l871
	
l872:	
	
l871:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u10691
	goto	u10690
u10691:
	goto	l871
u10690:
	goto	l9282
	
l873:	
	line	42
	
l9282:	
;serial.h: 42: TXREG = 10;
	movlw	(0Ah)
	movwf	(25)	;volatile
	line	43
;serial.h: 43: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_Serial_NewLine+0)+0,f
u12827:
	clrwdt
decfsz	(??_Serial_NewLine+0)+0,f
	goto	u12827
	nop2	;nop
	clrwdt
opt asmopt_on

	line	44
	
l874:	
	return
	opt stack 0
GLOBAL	__end_of_Serial_NewLine
	__end_of_Serial_NewLine:
;; =============== function _Serial_NewLine ends ============

	signat	_Serial_NewLine,88
	global	_Serial_Print
psect	text1502,local,class=CODE,delta=2
global __ptext1502
__ptext1502:

;; *************** function _Serial_Print *****************
;; Defined at:
;;		line 27 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\serial.h"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     PTR unsigned char 
;;		 -> STR_13(20), STR_12(3), STR_11(3), STR_10(3), 
;;		 -> STR_9(3), 
;; Auto vars:     Size  Location     Type
;;  a               1    6[BANK0 ] PTR unsigned char 
;;		 -> STR_13(20), STR_12(3), STR_11(3), STR_10(3), 
;;		 -> STR_9(3), 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_CheckMode
;; This function uses a non-reentrant model
;;
psect	text1502
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\serial.h"
	line	27
	global	__size_of_Serial_Print
	__size_of_Serial_Print	equ	__end_of_Serial_Print-_Serial_Print
	
_Serial_Print:	
	opt	stack 2
; Regs used in _Serial_Print: [wreg-fsr0h+status,2+status,0+pclath]
;Serial_Print@a stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Serial_Print@a)
	line	28
	
l9268:	
;serial.h: 28: while( *a!='\0'){
	goto	l9276
	
l860:	
	line	29
;serial.h: 29: while(!TXIF);
	goto	l861
	
l862:	
	
l861:	
	btfss	(100/8),(100)&7
	goto	u10661
	goto	u10660
u10661:
	goto	l861
u10660:
	goto	l9270
	
l863:	
	line	30
	
l9270:	
;serial.h: 30: TXREG = *a;
	movf	(Serial_Print@a),w
	movwf	fsr0
	fcall	stringdir
	movwf	(25)	;volatile
	line	31
	
l9272:	
;serial.h: 31: _delay(10);
	opt asmopt_off
movlw	3
movwf	(??_Serial_Print+0)+0,f
u12837:
decfsz	(??_Serial_Print+0)+0,f
	goto	u12837
opt asmopt_on

	line	32
	
l9274:	
;serial.h: 32: a = a+1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Serial_Print@a),w
	addlw	01h
	movwf	(??_Serial_Print+0)+0
	movf	(??_Serial_Print+0)+0,w
	movwf	(Serial_Print@a)
	goto	l9276
	line	33
	
l859:	
	line	28
	
l9276:	
	movf	(Serial_Print@a),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u10671
	goto	u10670
u10671:
	goto	l861
u10670:
	goto	l865
	
l864:	
	line	35
;serial.h: 33: }
;serial.h: 34: return 1;
;	Return value of _Serial_Print is never used
	
l865:	
	return
	opt stack 0
GLOBAL	__end_of_Serial_Print
	__end_of_Serial_Print:
;; =============== function _Serial_Print ends ============

	signat	_Serial_Print,4216
	global	_Serial_Init
psect	text1503,local,class=CODE,delta=2
global __ptext1503
__ptext1503:

;; *************** function _Serial_Init *****************
;; Defined at:
;;		line 10 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\serial.h"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1503
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\serial.h"
	line	10
	global	__size_of_Serial_Init
	__size_of_Serial_Init	equ	__end_of_Serial_Init-_Serial_Init
	
_Serial_Init:	
	opt	stack 3
; Regs used in _Serial_Init: [wreg]
	line	13
	
l9258:	
;serial.h: 13: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	line	14
;serial.h: 14: RX9 = 0;
	bcf	(198/8),(198)&7
	line	15
;serial.h: 15: CREN = 1;
	bsf	(196/8),(196)&7
	line	16
;serial.h: 16: TX9 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1222/8)^080h,(1222)&7
	line	17
;serial.h: 17: TXEN = 1;
	bsf	(1221/8)^080h,(1221)&7
	line	18
;serial.h: 18: SYNC = 0;
	bcf	(1220/8)^080h,(1220)&7
	line	19
;serial.h: 19: BRGH = 1;
	bsf	(1218/8)^080h,(1218)&7
	line	20
	
l9260:	
;serial.h: 20: SPBRG = 129;
	movlw	(081h)
	movwf	(153)^080h	;volatile
	line	21
	
l9262:	
;serial.h: 21: RCIE = 1;
	bsf	(1125/8)^080h,(1125)&7
	line	22
	
l9264:	
;serial.h: 22: TXIE = 0;
	bcf	(1124/8)^080h,(1124)&7
	line	23
	
l9266:	
;serial.h: 23: ADDEN = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(195/8),(195)&7
	line	24
;serial.h: 24: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_Serial_Init+0)+0+2),f
movlw	138
movwf	((??_Serial_Init+0)+0+1),f
	movlw	86
movwf	((??_Serial_Init+0)+0),f
u12847:
	decfsz	((??_Serial_Init+0)+0),f
	goto	u12847
	decfsz	((??_Serial_Init+0)+0+1),f
	goto	u12847
	decfsz	((??_Serial_Init+0)+0+2),f
	goto	u12847
	nop2
opt asmopt_on

	line	25
	
l856:	
	return
	opt stack 0
GLOBAL	__end_of_Serial_Init
	__end_of_Serial_Init:
;; =============== function _Serial_Init ends ============

	signat	_Serial_Init,88
	global	_read_a2d_value
psect	text1504,local,class=CODE,delta=2
global __ptext1504
__ptext1504:

;; *************** function _read_a2d_value *****************
;; Defined at:
;;		line 13 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\a2d.h"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    9[BANK0 ] unsigned char 
;;  a2d_value       2   10[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    5[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_a2d_read
;; This function uses a non-reentrant model
;;
psect	text1504
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\a2d.h"
	line	13
	global	__size_of_read_a2d_value
	__size_of_read_a2d_value	equ	__end_of_read_a2d_value-_read_a2d_value
	
_read_a2d_value:	
	opt	stack 2
; Regs used in _read_a2d_value: [wreg+status,2+status,0]
;read_a2d_value@channel stored from wreg
	line	15
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(read_a2d_value@channel)
	
l9240:	
;a2d.h: 14: unsigned int a2d_value;
;a2d.h: 15: channel = channel << 3;
	movf	(read_a2d_value@channel),w
	movwf	(??_read_a2d_value+0)+0
	movlw	(03h)-1
u10645:
	clrc
	rlf	(??_read_a2d_value+0)+0,f
	addlw	-1
	skipz
	goto	u10645
	clrc
	rlf	(??_read_a2d_value+0)+0,w
	movwf	(??_read_a2d_value+1)+0
	movf	(??_read_a2d_value+1)+0,w
	movwf	(read_a2d_value@channel)
	line	16
	
l9242:	
;a2d.h: 16: ADCON0 = ADCON0 & 0b11000111;
	movf	(31),w
	andlw	0C7h
	movwf	(31)	;volatile
	line	17
	
l9244:	
;a2d.h: 17: ADCON0 = ADCON0 | channel;
	movf	(31),w	;volatile
	iorwf	(read_a2d_value@channel),w
	movwf	(31)	;volatile
	line	18
	
l9246:	
;a2d.h: 18: ADON = 1;
	bsf	(248/8),(248)&7
	line	19
	
l9248:	
;a2d.h: 19: _delay(50);
	opt asmopt_off
movlw	16
movwf	(??_read_a2d_value+0)+0,f
u12857:
decfsz	(??_read_a2d_value+0)+0,f
	goto	u12857
	clrwdt
opt asmopt_on

	line	20
	
l9250:	
;a2d.h: 20: GO = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7
	line	21
;a2d.h: 21: while( GO == 1 );
	goto	l850
	
l851:	
	
l850:	
	btfsc	(250/8),(250)&7
	goto	u10651
	goto	u10650
u10651:
	goto	l850
u10650:
	goto	l9252
	
l852:	
	line	22
	
l9252:	
;a2d.h: 22: a2d_value = ADRESH;
	movf	(30),w	;volatile
	movwf	(??_read_a2d_value+0)+0
	clrf	(??_read_a2d_value+0)+0+1
	movf	0+(??_read_a2d_value+0)+0,w
	movwf	(read_a2d_value@a2d_value)
	movf	1+(??_read_a2d_value+0)+0,w
	movwf	(read_a2d_value@a2d_value+1)
	line	23
;a2d.h: 23: a2d_value = a2d_value << 8;
	movf	(read_a2d_value@a2d_value),w
	movwf	(??_read_a2d_value+0)+0+1
	clrf	(??_read_a2d_value+0)+0
	movf	0+(??_read_a2d_value+0)+0,w
	movwf	(read_a2d_value@a2d_value)
	movf	1+(??_read_a2d_value+0)+0,w
	movwf	(read_a2d_value@a2d_value+1)
	line	24
;a2d.h: 24: a2d_value = a2d_value + ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(read_a2d_value@a2d_value),w
	movwf	(read_a2d_value@a2d_value)
	movf	(read_a2d_value@a2d_value+1),w
	skipnc
	incf	(read_a2d_value@a2d_value+1),w
	movwf	((read_a2d_value@a2d_value))+1
	line	25
	
l9254:	
;a2d.h: 25: return a2d_value;
	movf	(read_a2d_value@a2d_value+1),w
	clrf	(?_read_a2d_value+1)
	addwf	(?_read_a2d_value+1)
	movf	(read_a2d_value@a2d_value),w
	clrf	(?_read_a2d_value)
	addwf	(?_read_a2d_value)

	goto	l853
	
l9256:	
	line	26
	
l853:	
	return
	opt stack 0
GLOBAL	__end_of_read_a2d_value
	__end_of_read_a2d_value:
;; =============== function _read_a2d_value ends ============

	signat	_read_a2d_value,4218
	global	_lcd_add
psect	text1505,local,class=CODE,delta=2
global __ptext1505
__ptext1505:

;; *************** function _lcd_add *****************
;; Defined at:
;;		line 225 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\lcdV2.h"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_putch
;;		_LCD_print_char
;;		_clr_display
;;		_position
;;		_curser
;; This function uses a non-reentrant model
;;
psect	text1505
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\lcdV2.h"
	line	225
	global	__size_of_lcd_add
	__size_of_lcd_add	equ	__end_of_lcd_add-_lcd_add
	
_lcd_add:	
	opt	stack 1
; Regs used in _lcd_add: [wreg+status,2+status,0]
	line	226
	
l9192:	
;lcdV2.h: 226: lcd_data_high = lcd_data >> 4;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??_lcd_add+0)+0
	movlw	04h
u10305:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u10305
	movf	0+(??_lcd_add+0)+0,w
	movwf	(??_lcd_add+1)+0
	movf	(??_lcd_add+1)+0,w
	movwf	(_lcd_data_high)
	line	227
;lcdV2.h: 227: lcd_data_low = lcd_data << 4;
	movf	(_lcd_data),w
	movwf	(??_lcd_add+0)+0
	movlw	(04h)-1
u10315:
	clrc
	rlf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u10315
	clrc
	rlf	(??_lcd_add+0)+0,w
	movwf	(??_lcd_add+1)+0
	movf	(??_lcd_add+1)+0,w
	movwf	(_lcd_data_low)
	line	228
;lcdV2.h: 228: lcd_data_low = lcd_data_low >> 4;
	movf	(_lcd_data_low),w
	movwf	(??_lcd_add+0)+0
	movlw	04h
u10325:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u10325
	movf	0+(??_lcd_add+0)+0,w
	movwf	(??_lcd_add+1)+0
	movf	(??_lcd_add+1)+0,w
	movwf	(_lcd_data_low)
	line	230
	
l9194:	
;lcdV2.h: 230: bit0 = lcd_data;
	bcf	(_bit0/8),(_bit0)&7
	btfss	(_lcd_data),0
	goto	u10335
	bsf	(_bit0/8),(_bit0)&7
u10335:

	line	231
;lcdV2.h: 231: bit1 = lcd_data>>1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??_lcd_add+0)+0
	movlw	01h
u10345:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u10345
	bcf	(_bit1/8),(_bit1)&7
	btfss	0+(??_lcd_add+0)+0,0
	goto	u10355
	bsf	(_bit1/8),(_bit1)&7
u10355:

	line	232
;lcdV2.h: 232: bit2 = lcd_data>>2;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??_lcd_add+0)+0
	movlw	02h
u10365:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u10365
	bcf	(_bit2/8),(_bit2)&7
	btfss	0+(??_lcd_add+0)+0,0
	goto	u10375
	bsf	(_bit2/8),(_bit2)&7
u10375:

	line	233
;lcdV2.h: 233: bit3 = lcd_data>>3;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??_lcd_add+0)+0
	movlw	03h
u10385:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u10385
	bcf	(_bit3/8),(_bit3)&7
	btfss	0+(??_lcd_add+0)+0,0
	goto	u10395
	bsf	(_bit3/8),(_bit3)&7
u10395:

	line	234
;lcdV2.h: 234: bit4 = lcd_data>>4;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??_lcd_add+0)+0
	movlw	04h
u10405:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u10405
	bcf	(_bit4/8),(_bit4)&7
	btfss	0+(??_lcd_add+0)+0,0
	goto	u10415
	bsf	(_bit4/8),(_bit4)&7
u10415:

	line	235
;lcdV2.h: 235: bit5 = lcd_data>>5;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??_lcd_add+0)+0
	movlw	05h
u10425:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u10425
	bcf	(_bit5/8),(_bit5)&7
	btfss	0+(??_lcd_add+0)+0,0
	goto	u10435
	bsf	(_bit5/8),(_bit5)&7
u10435:

	line	236
;lcdV2.h: 236: bit6 = lcd_data>>6;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??_lcd_add+0)+0
	movlw	06h
u10445:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u10445
	bcf	(_bit6/8),(_bit6)&7
	btfss	0+(??_lcd_add+0)+0,0
	goto	u10455
	bsf	(_bit6/8),(_bit6)&7
u10455:

	line	237
;lcdV2.h: 237: bit7 = lcd_data>>7;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??_lcd_add+0)+0
	movlw	07h
u10465:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u10465
	bcf	(_bit7/8),(_bit7)&7
	btfss	0+(??_lcd_add+0)+0,0
	goto	u10475
	bsf	(_bit7/8),(_bit7)&7
u10475:

	line	239
	
l9196:	
;lcdV2.h: 239: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	240
	
l9198:	
;lcdV2.h: 240: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	241
	
l9200:	
;lcdV2.h: 241: RC3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	line	242
	
l9202:	
;lcdV2.h: 242: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	244
	
l9204:	
;lcdV2.h: 244: RC1 = bit4;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(_bit4/8),(_bit4)&7
	goto	u10481
	goto	u10480
	
u10481:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u10494
u10480:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u10494:
	line	245
	
l9206:	
;lcdV2.h: 245: RD0 = bit5;
	btfsc	(_bit5/8),(_bit5)&7
	goto	u10501
	goto	u10500
	
u10501:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	goto	u10514
u10500:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
u10514:
	line	246
	
l9208:	
;lcdV2.h: 246: RC0 = bit6;
	btfsc	(_bit6/8),(_bit6)&7
	goto	u10521
	goto	u10520
	
u10521:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u10534
u10520:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u10534:
	line	247
	
l9210:	
;lcdV2.h: 247: RD1 = bit7;
	btfsc	(_bit7/8),(_bit7)&7
	goto	u10541
	goto	u10540
	
u10541:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	goto	u10554
u10540:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
u10554:
	line	249
	
l9212:	
;lcdV2.h: 249: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	250
	
l9214:	
;lcdV2.h: 250: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	251
	
l9216:	
;lcdV2.h: 251: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	255
	
l9218:	
;lcdV2.h: 255: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	256
	
l9220:	
;lcdV2.h: 256: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	257
	
l9222:	
;lcdV2.h: 257: RC3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	line	258
	
l9224:	
;lcdV2.h: 258: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	260
	
l9226:	
;lcdV2.h: 260: RC1 = bit0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(_bit0/8),(_bit0)&7
	goto	u10561
	goto	u10560
	
u10561:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u10574
u10560:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u10574:
	line	261
	
l9228:	
;lcdV2.h: 261: RD0 = bit1;
	btfsc	(_bit1/8),(_bit1)&7
	goto	u10581
	goto	u10580
	
u10581:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	goto	u10594
u10580:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
u10594:
	line	262
	
l9230:	
;lcdV2.h: 262: RC0 = bit2;
	btfsc	(_bit2/8),(_bit2)&7
	goto	u10601
	goto	u10600
	
u10601:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u10614
u10600:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u10614:
	line	263
	
l9232:	
;lcdV2.h: 263: RD1 = bit3;
	btfsc	(_bit3/8),(_bit3)&7
	goto	u10621
	goto	u10620
	
u10621:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	goto	u10634
u10620:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
u10634:
	line	265
	
l9234:	
;lcdV2.h: 265: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	266
	
l9236:	
;lcdV2.h: 266: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	267
	
l9238:	
;lcdV2.h: 267: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	268
	
l841:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_add
	__end_of_lcd_add:
;; =============== function _lcd_add ends ============

	signat	_lcd_add,88
	global	___awmod
psect	text1506,local,class=CODE,delta=2
global __ptext1506
__ptext1506:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    5[BANK0 ] int 
;;  dividend        2    7[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   11[BANK0 ] unsigned char 
;;  counter         1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    5[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Serial_Println_Int
;;		_Serial_Print_Int
;; This function uses a non-reentrant model
;;
psect	text1506
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 1
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l9158:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u10211
	goto	u10210
u10211:
	goto	l9162
u10210:
	line	10
	
l9160:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l9162
	line	12
	
l3478:	
	line	13
	
l9162:	
	btfss	(___awmod@divisor+1),7
	goto	u10221
	goto	u10220
u10221:
	goto	l9166
u10220:
	line	14
	
l9164:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l9166
	
l3479:	
	line	15
	
l9166:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u10231
	goto	u10230
u10231:
	goto	l9184
u10230:
	line	16
	
l9168:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l9174
	
l3482:	
	line	18
	
l9170:	
	movlw	01h
	
u10245:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u10245
	line	19
	
l9172:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l9174
	line	20
	
l3481:	
	line	17
	
l9174:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u10251
	goto	u10250
u10251:
	goto	l9170
u10250:
	goto	l9176
	
l3483:	
	goto	l9176
	line	21
	
l3484:	
	line	22
	
l9176:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u10265
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u10265:
	skipc
	goto	u10261
	goto	u10260
u10261:
	goto	l9180
u10260:
	line	23
	
l9178:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l9180
	
l3485:	
	line	24
	
l9180:	
	movlw	01h
	
u10275:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u10275
	line	25
	
l9182:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u10281
	goto	u10280
u10281:
	goto	l9176
u10280:
	goto	l9184
	
l3486:	
	goto	l9184
	line	26
	
l3480:	
	line	27
	
l9184:	
	movf	(___awmod@sign),w
	skipz
	goto	u10290
	goto	l9188
u10290:
	line	28
	
l9186:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l9188
	
l3487:	
	line	29
	
l9188:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l3488
	
l9190:	
	line	30
	
l3488:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text1507,local,class=CODE,delta=2
global __ptext1507
__ptext1507:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    5[BANK0 ] int 
;;  dividend        2    7[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   12[BANK0 ] int 
;;  sign            1   11[BANK0 ] unsigned char 
;;  counter         1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    5[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Serial_Println_Int
;;		_Serial_Print_Int
;; This function uses a non-reentrant model
;;
psect	text1507
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 1
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l9118:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u10111
	goto	u10110
u10111:
	goto	l9122
u10110:
	line	11
	
l9120:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l9122
	line	13
	
l3410:	
	line	14
	
l9122:	
	btfss	(___awdiv@dividend+1),7
	goto	u10121
	goto	u10120
u10121:
	goto	l9128
u10120:
	line	15
	
l9124:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l9126:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l9128
	line	17
	
l3411:	
	line	18
	
l9128:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l9130:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u10131
	goto	u10130
u10131:
	goto	l9150
u10130:
	line	20
	
l9132:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l9138
	
l3414:	
	line	22
	
l9134:	
	movlw	01h
	
u10145:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u10145
	line	23
	
l9136:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l9138
	line	24
	
l3413:	
	line	21
	
l9138:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u10151
	goto	u10150
u10151:
	goto	l9134
u10150:
	goto	l9140
	
l3415:	
	goto	l9140
	line	25
	
l3416:	
	line	26
	
l9140:	
	movlw	01h
	
u10165:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u10165
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u10175
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u10175:
	skipc
	goto	u10171
	goto	u10170
u10171:
	goto	l9146
u10170:
	line	28
	
l9142:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l9144:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l9146
	line	30
	
l3417:	
	line	31
	
l9146:	
	movlw	01h
	
u10185:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u10185
	line	32
	
l9148:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u10191
	goto	u10190
u10191:
	goto	l9140
u10190:
	goto	l9150
	
l3418:	
	goto	l9150
	line	33
	
l3412:	
	line	34
	
l9150:	
	movf	(___awdiv@sign),w
	skipz
	goto	u10200
	goto	l9154
u10200:
	line	35
	
l9152:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l9154
	
l3419:	
	line	36
	
l9154:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l3420
	
l9156:	
	line	37
	
l3420:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___lwmod
psect	text1508,local,class=CODE,delta=2
global __ptext1508
__ptext1508:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2   13[BANK0 ] unsigned int 
;;  dividend        2   15[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   13[BANK0 ] unsigned int 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCDTimeUpdate
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text1508
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 2
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l9096:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u10051
	goto	u10050
u10051:
	goto	l9114
u10050:
	line	9
	
l9098:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l9104
	
l3288:	
	line	11
	
l9100:	
	movlw	01h
	
u10065:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u10065
	line	12
	
l9102:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l9104
	line	13
	
l3287:	
	line	10
	
l9104:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u10071
	goto	u10070
u10071:
	goto	l9100
u10070:
	goto	l9106
	
l3289:	
	goto	l9106
	line	14
	
l3290:	
	line	15
	
l9106:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u10085
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u10085:
	skipc
	goto	u10081
	goto	u10080
u10081:
	goto	l9110
u10080:
	line	16
	
l9108:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l9110
	
l3291:	
	line	17
	
l9110:	
	movlw	01h
	
u10095:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u10095
	line	18
	
l9112:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u10101
	goto	u10100
u10101:
	goto	l9106
u10100:
	goto	l9114
	
l3292:	
	goto	l9114
	line	19
	
l3286:	
	line	20
	
l9114:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l3293
	
l9116:	
	line	21
	
l3293:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text1509,local,class=CODE,delta=2
global __ptext1509
__ptext1509:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    5[BANK0 ] unsigned int 
;;  dividend        2    7[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   11[BANK0 ] unsigned int 
;;  counter         1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    5[BANK0 ] unsigned int 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCDTimeUpdate
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text1509
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 2
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l9070:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l9072:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u9981
	goto	u9980
u9981:
	goto	l9092
u9980:
	line	11
	
l9074:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l9080
	
l3278:	
	line	13
	
l9076:	
	movlw	01h
	
u9995:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u9995
	line	14
	
l9078:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l9080
	line	15
	
l3277:	
	line	12
	
l9080:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u10001
	goto	u10000
u10001:
	goto	l9076
u10000:
	goto	l9082
	
l3279:	
	goto	l9082
	line	16
	
l3280:	
	line	17
	
l9082:	
	movlw	01h
	
u10015:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u10015
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u10025
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u10025:
	skipc
	goto	u10021
	goto	u10020
u10021:
	goto	l9088
u10020:
	line	19
	
l9084:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l9086:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l9088
	line	21
	
l3281:	
	line	22
	
l9088:	
	movlw	01h
	
u10035:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u10035
	line	23
	
l9090:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u10041
	goto	u10040
u10041:
	goto	l9082
u10040:
	goto	l9092
	
l3282:	
	goto	l9092
	line	24
	
l3276:	
	line	25
	
l9092:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l3283
	
l9094:	
	line	26
	
l3283:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text1510,local,class=CODE,delta=2
global __ptext1510
__ptext1510:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    5[BANK0 ] unsigned int 
;;  multiplicand    2    7[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    9[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    5[BANK0 ] unsigned int 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text1510
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 2
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l9058:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l9060
	line	6
	
l3270:	
	line	7
	
l9060:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u9941
	goto	u9940
u9941:
	goto	l3271
u9940:
	line	8
	
l9062:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l3271:	
	line	9
	movlw	01h
	
u9955:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u9955
	line	10
	
l9064:	
	movlw	01h
	
u9965:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u9965
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u9971
	goto	u9970
u9971:
	goto	l9060
u9970:
	goto	l9066
	
l3272:	
	line	12
	
l9066:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l3273
	
l9068:	
	line	13
	
l3273:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	___bmul
psect	text1511,local,class=CODE,delta=2
global __ptext1511
__ptext1511:

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    5[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    8[BANK0 ] unsigned char 
;;  product         1    7[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text1511
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 2
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___bmul@multiplier)
	line	4
	
l9044:	
	clrf	(___bmul@product)
	line	6
	
l3264:	
	line	7
	btfss	(___bmul@multiplier),(0)&7
	goto	u9921
	goto	u9920
u9921:
	goto	l9048
u9920:
	line	8
	
l9046:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l9048
	
l3265:	
	line	9
	
l9048:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	10
	
l9050:	
	clrc
	rrf	(___bmul@multiplier),f

	line	11
	
l9052:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u9931
	goto	u9930
u9931:
	goto	l3264
u9930:
	goto	l9054
	
l3266:	
	line	12
	
l9054:	
	movf	(___bmul@product),w
	goto	l3267
	
l9056:	
	line	13
	
l3267:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	_isdigit
psect	text1512,local,class=CODE,delta=2
global __ptext1512
__ptext1512:

;; *************** function _isdigit *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isdigit.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    6[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text1512
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isdigit.c"
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
	opt	stack 2
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(isdigit@c)
	line	14
	
l9032:	
	clrf	(_isdigit$2439)
	
l9034:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u9901
	goto	u9900
u9901:
	goto	l9040
u9900:
	
l9036:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u9911
	goto	u9910
u9911:
	goto	l9040
u9910:
	
l9038:	
	clrf	(_isdigit$2439)
	bsf	status,0
	rlf	(_isdigit$2439),f
	goto	l9040
	
l3260:	
	
l9040:	
	rrf	(_isdigit$2439),w
	
	goto	l3261
	
l9042:	
	line	15
	
l3261:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_RowNo
psect	text1513,local,class=CODE,delta=2
global __ptext1513
__ptext1513:

;; *************** function _RowNo *****************
;; Defined at:
;;		line 350 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\Automated Solar Panel Orientation Setter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  row             2    7[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  2    5[BANK0 ] int 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_CheckKeyPad
;; This function uses a non-reentrant model
;;
psect	text1513
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\Automated Solar Panel Orientation Setter.c"
	line	350
	global	__size_of_RowNo
	__size_of_RowNo	equ	__end_of_RowNo-_RowNo
	
_RowNo:	
	opt	stack 1
; Regs used in _RowNo: [wreg+status,2+status,0]
	line	352
	
l8936:	
;Automated Solar Panel Orientation Setter.c: 351: int row;
;Automated Solar Panel Orientation Setter.c: 352: if( RD2!=1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(66/8),(66)&7
	goto	u9581
	goto	u9580
u9581:
	goto	l1106
u9580:
	line	353
	
l8938:	
;Automated Solar Panel Orientation Setter.c: 353: row = 1;
	movlw	low(01h)
	movwf	(RowNo@row)
	movlw	high(01h)
	movwf	((RowNo@row))+1
	line	354
;Automated Solar Panel Orientation Setter.c: 354: }
	goto	l8948
	line	355
	
l1106:	
;Automated Solar Panel Orientation Setter.c: 355: else if( RD7!=1 ){
	btfsc	(71/8),(71)&7
	goto	u9591
	goto	u9590
u9591:
	goto	l1108
u9590:
	line	356
	
l8940:	
;Automated Solar Panel Orientation Setter.c: 356: row = 2;
	movlw	low(02h)
	movwf	(RowNo@row)
	movlw	high(02h)
	movwf	((RowNo@row))+1
	line	357
;Automated Solar Panel Orientation Setter.c: 357: }
	goto	l8948
	line	358
	
l1108:	
;Automated Solar Panel Orientation Setter.c: 358: else if( RD3!=1 ){
	btfsc	(67/8),(67)&7
	goto	u9601
	goto	u9600
u9601:
	goto	l1110
u9600:
	line	359
	
l8942:	
;Automated Solar Panel Orientation Setter.c: 359: row = 3;
	movlw	low(03h)
	movwf	(RowNo@row)
	movlw	high(03h)
	movwf	((RowNo@row))+1
	line	360
;Automated Solar Panel Orientation Setter.c: 360: }
	goto	l8948
	line	361
	
l1110:	
;Automated Solar Panel Orientation Setter.c: 361: else if( RD6!=1 ){
	btfsc	(70/8),(70)&7
	goto	u9611
	goto	u9610
u9611:
	goto	l8946
u9610:
	line	362
	
l8944:	
;Automated Solar Panel Orientation Setter.c: 362: row = 4;
	movlw	low(04h)
	movwf	(RowNo@row)
	movlw	high(04h)
	movwf	((RowNo@row))+1
	line	363
;Automated Solar Panel Orientation Setter.c: 363: }
	goto	l8948
	line	364
	
l1112:	
	line	365
	
l8946:	
;Automated Solar Panel Orientation Setter.c: 364: else{
;Automated Solar Panel Orientation Setter.c: 365: row = 0;
	clrf	(RowNo@row)
	clrf	(RowNo@row+1)
	goto	l8948
	line	366
	
l1113:	
	goto	l8948
	
l1111:	
	goto	l8948
	
l1109:	
	goto	l8948
	
l1107:	
	line	367
	
l8948:	
;Automated Solar Panel Orientation Setter.c: 366: }
;Automated Solar Panel Orientation Setter.c: 367: return row;
	movf	(RowNo@row+1),w
	clrf	(?_RowNo+1)
	addwf	(?_RowNo+1)
	movf	(RowNo@row),w
	clrf	(?_RowNo)
	addwf	(?_RowNo)

	goto	l1114
	
l8950:	
	line	368
	
l1114:	
	return
	opt stack 0
GLOBAL	__end_of_RowNo
	__end_of_RowNo:
;; =============== function _RowNo ends ============

	signat	_RowNo,90
	global	_eeprom_read
psect	text1514,local,class=CODE,delta=2
global __ptext1514
__ptext1514:

;; *************** function _eeprom_read *****************
;; Defined at:
;;		line 7 in file "eeread.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
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
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1514
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\eeread.c"
	line	7
	global	__size_of_eeprom_read
	__size_of_eeprom_read	equ	__end_of_eeprom_read-_eeprom_read
	
_eeprom_read:	
	opt	stack 3
; Regs used in _eeprom_read: [wreg+status,2+status,0]
;eeprom_read@addr stored from wreg
	line	9
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(eeprom_read@addr)
	line	8
	
l1958:	
	line	9
# 9 "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\eeread.c"
clrwdt ;#
psect	text1514
	line	10
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	btfsc	(3169/8)^0180h,(3169)&7
	goto	u9561
	goto	u9560
u9561:
	goto	l1958
u9560:
	goto	l8922
	
l1959:	
	line	11
	
l8922:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(eeprom_read@addr),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	movlw	(03Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_eeprom_read+0)+0
	movf	(??_eeprom_read+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	andwf	(396)^0180h,f	;volatile
	bsf	(3168/8)^0180h,(3168)&7
	clrc
	btfsc	(3168/8)^0180h,(3168)&7
	setc
	movlw	0
	skipnc
	movlw	1

	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(268)^0100h,w	;volatile
	goto	l1960
	
l8924:	
	line	12
	
l1960:	
	return
	opt stack 0
GLOBAL	__end_of_eeprom_read
	__end_of_eeprom_read:
;; =============== function _eeprom_read ends ============

	signat	_eeprom_read,4217
	global	_eeprom_write
psect	text1515,local,class=CODE,delta=2
global __ptext1515
__ptext1515:

;; *************** function _eeprom_write *****************
;; Defined at:
;;		line 7 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\eewrite.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;;  value           1    5[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    7[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1515
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\eewrite.c"
	line	7
	global	__size_of_eeprom_write
	__size_of_eeprom_write	equ	__end_of_eeprom_write-_eeprom_write
	
_eeprom_write:	
	opt	stack 3
; Regs used in _eeprom_write: [wreg+status,2+status,0]
;eeprom_write@addr stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(eeprom_write@addr)
	line	8
	
l2575:	
	goto	l2576
	
l2577:	
	
l2576:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	btfsc	(3169/8)^0180h,(3169)&7
	goto	u9531
	goto	u9530
u9531:
	goto	l2576
u9530:
	goto	l8902
	
l2578:	
	
l8902:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(eeprom_write@addr),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(eeprom_write@value),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(268)^0100h	;volatile
	
l8904:	
	movlw	(03Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_eeprom_write+0)+0
	movf	(??_eeprom_write+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	andwf	(396)^0180h,f	;volatile
	
l8906:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(24/8),(24)&7
	
l8908:	
	btfss	(95/8),(95)&7
	goto	u9541
	goto	u9540
u9541:
	goto	l2579
u9540:
	
l8910:	
	bsf	(24/8),(24)&7
	
l2579:	
	bcf	(95/8),(95)&7
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3170/8)^0180h,(3170)&7
	
l8912:	
	movlw	(055h)
	movwf	(397)^0180h	;volatile
	movlw	(0AAh)
	movwf	(397)^0180h	;volatile
	
l8914:	
	bsf	(3169/8)^0180h,(3169)&7
	
l8916:	
	bcf	(3170/8)^0180h,(3170)&7
	
l8918:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(24/8),(24)&7
	goto	u9551
	goto	u9550
u9551:
	goto	l2582
u9550:
	
l8920:	
	bsf	(95/8),(95)&7
	goto	l2582
	
l2580:	
	goto	l2582
	
l2581:	
	line	10
;	Return value of _eeprom_write is never used
	
l2582:	
	return
	opt stack 0
GLOBAL	__end_of_eeprom_write
	__end_of_eeprom_write:
;; =============== function _eeprom_write ends ============

	signat	_eeprom_write,8313
	global	_Timer1_Init
psect	text1516,local,class=CODE,delta=2
global __ptext1516
__ptext1516:

;; *************** function _Timer1_Init *****************
;; Defined at:
;;		line 4 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\timer1.h"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1516
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\timer1.h"
	line	4
	global	__size_of_Timer1_Init
	__size_of_Timer1_Init	equ	__end_of_Timer1_Init-_Timer1_Init
	
_Timer1_Init:	
	opt	stack 3
; Regs used in _Timer1_Init: [wreg]
	line	6
	
l8896:	
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
	
l8898:	
;timer1.h: 11: TMR1L = 0xB0;
	movlw	(0B0h)
	movwf	(14)	;volatile
	line	12
;timer1.h: 12: TMR1H = 60;
	movlw	(03Ch)
	movwf	(15)	;volatile
	line	13
	
l8900:	
;timer1.h: 13: TMR1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	14
	
l995:	
	return
	opt stack 0
GLOBAL	__end_of_Timer1_Init
	__end_of_Timer1_Init:
;; =============== function _Timer1_Init ends ============

	signat	_Timer1_Init,88
	global	_enableInterrupt
psect	text1517,local,class=CODE,delta=2
global __ptext1517
__ptext1517:

;; *************** function _enableInterrupt *****************
;; Defined at:
;;		line 7 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\interrupts.h"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1517
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\interrupts.h"
	line	7
	global	__size_of_enableInterrupt
	__size_of_enableInterrupt	equ	__end_of_enableInterrupt-_enableInterrupt
	
_enableInterrupt:	
	opt	stack 3
; Regs used in _enableInterrupt: []
	line	9
	
l8894:	
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
	
l992:	
	return
	opt stack 0
GLOBAL	__end_of_enableInterrupt
	__end_of_enableInterrupt:
;; =============== function _enableInterrupt ends ============

	signat	_enableInterrupt,88
	global	_atod_init
psect	text1518,local,class=CODE,delta=2
global __ptext1518
__ptext1518:

;; *************** function _atod_init *****************
;; Defined at:
;;		line 8 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\a2d.h"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1518
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\a2d.h"
	line	8
	global	__size_of_atod_init
	__size_of_atod_init	equ	__end_of_atod_init-_atod_init
	
_atod_init:	
	opt	stack 3
; Regs used in _atod_init: [wreg]
	line	9
	
l8880:	
;a2d.h: 9: ADCON0 = 0b01000010;
	movlw	(042h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	10
;a2d.h: 10: ADCON1 = 0b10000100;
	movlw	(084h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	11
	
l847:	
	return
	opt stack 0
GLOBAL	__end_of_atod_init
	__end_of_atod_init:
;; =============== function _atod_init ends ============

	signat	_atod_init,88
	global	_lcd_init
psect	text1519,local,class=CODE,delta=2
global __ptext1519
__ptext1519:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 61 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\lcdV2.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  DelayLCD        2    5[BANK0 ] unsigned int 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1519
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\lcdV2.h"
	line	61
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 3
; Regs used in _lcd_init: [wreg+status,2]
	line	63
	
l8822:	
;lcdV2.h: 63: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	67
;lcdV2.h: 65: unsigned int DelayLCD;
;lcdV2.h: 67: RC2 = 0;
	bcf	(58/8),(58)&7
	line	68
;lcdV2.h: 68: RD1 = 0;
	bcf	(65/8),(65)&7
	line	69
;lcdV2.h: 69: RC0 = 0;
	bcf	(56/8),(56)&7
	line	70
;lcdV2.h: 70: RD0 = 1;
	bsf	(64/8),(64)&7
	line	71
;lcdV2.h: 71: RC1 = 0;
	bcf	(57/8),(57)&7
	line	72
;lcdV2.h: 72: RC3 = 1;
	bsf	(59/8),(59)&7
	line	73
;lcdV2.h: 73: RC3 = 0;
	bcf	(59/8),(59)&7
	line	74
;lcdV2.h: 74: RD1 = 1;
	bsf	(65/8),(65)&7
	line	75
;lcdV2.h: 75: RC0 = 0;
	bcf	(56/8),(56)&7
	line	76
;lcdV2.h: 76: RD0 = 0;
	bcf	(64/8),(64)&7
	line	77
;lcdV2.h: 77: RC1 = 0;
	bcf	(57/8),(57)&7
	line	78
;lcdV2.h: 78: RC3 = 1;
	bsf	(59/8),(59)&7
	line	79
;lcdV2.h: 79: RC3 = 0;
	bcf	(59/8),(59)&7
	line	80
	
l8824:	
;lcdV2.h: 80: for(DelayLCD=0;DelayLCD<2500;DelayLCD++);
	clrf	(lcd_init@DelayLCD)
	clrf	(lcd_init@DelayLCD+1)
	
l8826:	
	movlw	high(09C4h)
	subwf	(lcd_init@DelayLCD+1),w
	movlw	low(09C4h)
	skipnz
	subwf	(lcd_init@DelayLCD),w
	skipc
	goto	u9391
	goto	u9390
u9391:
	goto	l8830
u9390:
	goto	l804
	
l8828:	
	goto	l804
	
l803:	
	
l8830:	
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
	goto	u9401
	goto	u9400
u9401:
	goto	l8830
u9400:
	
l804:	
	line	83
;lcdV2.h: 83: RC2 = 0;
	bcf	(58/8),(58)&7
	line	84
;lcdV2.h: 84: RD1 = 0;
	bcf	(65/8),(65)&7
	line	85
;lcdV2.h: 85: RC0 = 0;
	bcf	(56/8),(56)&7
	line	86
;lcdV2.h: 86: RD0 = 1;
	bsf	(64/8),(64)&7
	line	87
;lcdV2.h: 87: RC1 = 0;
	bcf	(57/8),(57)&7
	line	88
;lcdV2.h: 88: RC3 = 1;
	bsf	(59/8),(59)&7
	line	89
;lcdV2.h: 89: RC3 = 0;
	bcf	(59/8),(59)&7
	line	90
;lcdV2.h: 90: RD1 = 1;
	bsf	(65/8),(65)&7
	line	91
;lcdV2.h: 91: RC0 = 0;
	bcf	(56/8),(56)&7
	line	92
;lcdV2.h: 92: RD0 = 0;
	bcf	(64/8),(64)&7
	line	93
;lcdV2.h: 93: RC1 = 0;
	bcf	(57/8),(57)&7
	line	94
;lcdV2.h: 94: RC3 = 1;
	bsf	(59/8),(59)&7
	line	95
;lcdV2.h: 95: RC3 = 0;
	bcf	(59/8),(59)&7
	line	96
	
l8832:	
;lcdV2.h: 96: for(DelayLCD=0;DelayLCD<2500;DelayLCD++);
	clrf	(lcd_init@DelayLCD)
	clrf	(lcd_init@DelayLCD+1)
	
l8834:	
	movlw	high(09C4h)
	subwf	(lcd_init@DelayLCD+1),w
	movlw	low(09C4h)
	skipnz
	subwf	(lcd_init@DelayLCD),w
	skipc
	goto	u9411
	goto	u9410
u9411:
	goto	l8838
u9410:
	goto	l806
	
l8836:	
	goto	l806
	
l805:	
	
l8838:	
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
	goto	u9421
	goto	u9420
u9421:
	goto	l8838
u9420:
	
l806:	
	line	99
;lcdV2.h: 99: RC2 = 0;
	bcf	(58/8),(58)&7
	line	100
;lcdV2.h: 100: RD1 = 0;
	bcf	(65/8),(65)&7
	line	101
;lcdV2.h: 101: RC0 = 0;
	bcf	(56/8),(56)&7
	line	102
;lcdV2.h: 102: RD0 = 0;
	bcf	(64/8),(64)&7
	line	103
;lcdV2.h: 103: RC1 = 0;
	bcf	(57/8),(57)&7
	line	104
;lcdV2.h: 104: RC3 = 1;
	bsf	(59/8),(59)&7
	line	105
;lcdV2.h: 105: RC3 = 0;
	bcf	(59/8),(59)&7
	line	106
;lcdV2.h: 106: RD1 = 0;
	bcf	(65/8),(65)&7
	line	107
;lcdV2.h: 107: RC0 = 1;
	bsf	(56/8),(56)&7
	line	108
;lcdV2.h: 108: RD0 = 1;
	bsf	(64/8),(64)&7
	line	109
;lcdV2.h: 109: RC1 = 0;
	bcf	(57/8),(57)&7
	line	110
;lcdV2.h: 110: RC3 = 1;
	bsf	(59/8),(59)&7
	line	111
;lcdV2.h: 111: RC3 = 0;
	bcf	(59/8),(59)&7
	line	112
	
l8840:	
;lcdV2.h: 112: for(DelayLCD=0;DelayLCD<2500;DelayLCD++);
	clrf	(lcd_init@DelayLCD)
	clrf	(lcd_init@DelayLCD+1)
	
l8842:	
	movlw	high(09C4h)
	subwf	(lcd_init@DelayLCD+1),w
	movlw	low(09C4h)
	skipnz
	subwf	(lcd_init@DelayLCD),w
	skipc
	goto	u9431
	goto	u9430
u9431:
	goto	l8846
u9430:
	goto	l808
	
l8844:	
	goto	l808
	
l807:	
	
l8846:	
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
	goto	u9441
	goto	u9440
u9441:
	goto	l8846
u9440:
	
l808:	
	line	115
;lcdV2.h: 115: RC2 = 0;
	bcf	(58/8),(58)&7
	line	116
;lcdV2.h: 116: RD1 = 0;
	bcf	(65/8),(65)&7
	line	117
;lcdV2.h: 117: RC0 = 0;
	bcf	(56/8),(56)&7
	line	118
;lcdV2.h: 118: RD0 = 0;
	bcf	(64/8),(64)&7
	line	119
;lcdV2.h: 119: RC1 = 0;
	bcf	(57/8),(57)&7
	line	120
;lcdV2.h: 120: RC3 = 1;
	bsf	(59/8),(59)&7
	line	121
;lcdV2.h: 121: RC3 = 0;
	bcf	(59/8),(59)&7
	line	122
;lcdV2.h: 122: RD1 = 1;
	bsf	(65/8),(65)&7
	line	123
;lcdV2.h: 123: RC0 = 1;
	bsf	(56/8),(56)&7
	line	124
;lcdV2.h: 124: RD0 = 0;
	bcf	(64/8),(64)&7
	line	125
;lcdV2.h: 125: RC1 = 0;
	bcf	(57/8),(57)&7
	line	126
;lcdV2.h: 126: RC3 = 1;
	bsf	(59/8),(59)&7
	line	127
;lcdV2.h: 127: RC3 = 0;
	bcf	(59/8),(59)&7
	line	128
	
l8848:	
;lcdV2.h: 128: for(DelayLCD=0;DelayLCD<2500;DelayLCD++);
	clrf	(lcd_init@DelayLCD)
	clrf	(lcd_init@DelayLCD+1)
	
l8850:	
	movlw	high(09C4h)
	subwf	(lcd_init@DelayLCD+1),w
	movlw	low(09C4h)
	skipnz
	subwf	(lcd_init@DelayLCD),w
	skipc
	goto	u9451
	goto	u9450
u9451:
	goto	l8854
u9450:
	goto	l810
	
l8852:	
	goto	l810
	
l809:	
	
l8854:	
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
	goto	u9461
	goto	u9460
u9461:
	goto	l8854
u9460:
	
l810:	
	line	131
;lcdV2.h: 131: RC2 = 0;
	bcf	(58/8),(58)&7
	line	132
;lcdV2.h: 132: RD1 = 0;
	bcf	(65/8),(65)&7
	line	133
;lcdV2.h: 133: RC0 = 0;
	bcf	(56/8),(56)&7
	line	134
;lcdV2.h: 134: RD0 = 0;
	bcf	(64/8),(64)&7
	line	135
;lcdV2.h: 135: RC1 = 0;
	bcf	(57/8),(57)&7
	line	136
;lcdV2.h: 136: RC3 = 1;
	bsf	(59/8),(59)&7
	line	137
;lcdV2.h: 137: RC3 = 0;
	bcf	(59/8),(59)&7
	line	138
;lcdV2.h: 138: RD1 = 0;
	bcf	(65/8),(65)&7
	line	139
;lcdV2.h: 139: RC0 = 0;
	bcf	(56/8),(56)&7
	line	140
;lcdV2.h: 140: RD0 = 0;
	bcf	(64/8),(64)&7
	line	141
;lcdV2.h: 141: RC1 = 1;
	bsf	(57/8),(57)&7
	line	142
;lcdV2.h: 142: RC3 = 1;
	bsf	(59/8),(59)&7
	line	143
;lcdV2.h: 143: RC3 = 0;
	bcf	(59/8),(59)&7
	line	144
	
l8856:	
;lcdV2.h: 144: for(DelayLCD=0;DelayLCD<2500;DelayLCD++);
	clrf	(lcd_init@DelayLCD)
	clrf	(lcd_init@DelayLCD+1)
	
l8858:	
	movlw	high(09C4h)
	subwf	(lcd_init@DelayLCD+1),w
	movlw	low(09C4h)
	skipnz
	subwf	(lcd_init@DelayLCD),w
	skipc
	goto	u9471
	goto	u9470
u9471:
	goto	l8862
u9470:
	goto	l813
	
l8860:	
	goto	l813
	
l811:	
	
l8862:	
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
	goto	u9481
	goto	u9480
u9481:
	goto	l8862
u9480:
	goto	l813
	
l812:	
	line	147
	
l813:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_Setup_IOports
psect	text1520,local,class=CODE,delta=2
global __ptext1520
__ptext1520:

;; *************** function _Setup_IOports *****************
;; Defined at:
;;		line 56 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\setup.h"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1520
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\setup.h"
	line	56
	global	__size_of_Setup_IOports
	__size_of_Setup_IOports	equ	__end_of_Setup_IOports-_Setup_IOports
	
_Setup_IOports:	
	opt	stack 3
; Regs used in _Setup_IOports: [wreg+status,2]
	line	58
	
l8808:	
;setup.h: 58: TRISA = 0b11111111;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	59
	
l8810:	
;setup.h: 59: PORTA = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	61
	
l8812:	
;setup.h: 61: TRISB = 0b11000000;
	movlw	(0C0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	62
;setup.h: 62: PORTB = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	64
	
l8814:	
;setup.h: 64: TRISC = 0b10000000;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	65
	
l8816:	
;setup.h: 65: PORTC = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	67
;setup.h: 67: TRISD = 0b11001100;
	movlw	(0CCh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	68
	
l8818:	
;setup.h: 68: PORTD = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	70
	
l8820:	
;setup.h: 70: TRISE = 0b10000000;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(137)^080h	;volatile
	line	71
;setup.h: 71: PORTE = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	72
	
l800:	
	return
	opt stack 0
GLOBAL	__end_of_Setup_IOports
	__end_of_Setup_IOports:
;; =============== function _Setup_IOports ends ============

	signat	_Setup_IOports,88
	global	_nop
psect	text1521,local,class=CODE,delta=2
global __ptext1521
__ptext1521:

;; *************** function _nop *****************
;; Defined at:
;;		line 50 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\setup.h"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_CheckMode
;;		_KeyToSerial
;;		_check_pc
;; This function uses a non-reentrant model
;;
psect	text1521
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\setup.h"
	line	50
	global	__size_of_nop
	__size_of_nop	equ	__end_of_nop-_nop
	
_nop:	
	opt	stack 2
; Regs used in _nop: [wreg]
	line	51
	
l8806:	
;setup.h: 51: Nop = !Nop;
	movlw	1<<((_Nop)&7)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((_Nop)/8),f
	line	52
	
l797:	
	return
	opt stack 0
GLOBAL	__end_of_nop
	__end_of_nop:
;; =============== function _nop ends ============

	signat	_nop,88
	global	_isr
psect	text1522,local,class=CODE,delta=2
global __ptext1522
__ptext1522:

;; *************** function _isr *****************
;; Defined at:
;;		line 438 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\Automated Solar Panel Orientation Setter.c"
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
;;      Temps:          0       5       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		i1_LCD_print_char
;;		i1___lwmod
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text1522
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\Automated Solar Panel Orientation Setter.c"
	line	438
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:	
	opt	stack 0
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_isr+1)
	movf	fsr0,w
	movwf	(??_isr+2)
	movf	pclath,w
	movwf	(??_isr+3)
	movf	btemp+1,w
	movwf	(??_isr+4)
	ljmp	_isr
psect	text1522
	line	439
	
i1l7178:	
;Automated Solar Panel Orientation Setter.c: 439: if(TMR1IF==1){
	btfss	(96/8),(96)&7
	goto	u607_21
	goto	u607_20
u607_21:
	goto	i1l7218
u607_20:
	line	440
	
i1l7180:	
;Automated Solar Panel Orientation Setter.c: 440: msecond ++;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(_msecond)^080h,f
	skipnc
	incf	(_msecond+1)^080h,f
	movlw	high(01h)
	addwf	(_msecond+1)^080h,f
	line	441
;Automated Solar Panel Orientation Setter.c: 441: if(msecond == 50){
	movlw	032h
	xorwf	(_msecond)^080h,w
	iorwf	(_msecond+1)^080h,w
	skipz
	goto	u608_21
	goto	u608_20
u608_21:
	goto	i1l1144
u608_20:
	line	442
	
i1l7182:	
;Automated Solar Panel Orientation Setter.c: 442: second ++;
	movlw	low(01h)
	addwf	(_second)^080h,f
	skipnc
	incf	(_second+1)^080h,f
	movlw	high(01h)
	addwf	(_second+1)^080h,f
	line	445
	
i1l7184:	
;Automated Solar Panel Orientation Setter.c: 445: if(BlinkDet) LCD_print_char(2,14,':');
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_BlinkDet/8),(_BlinkDet)&7
	goto	u609_21
	goto	u609_20
u609_21:
	goto	i1l7188
u609_20:
	
i1l7186:	
	movlw	low(02h)
	movwf	(?i1_LCD_print_char)
	movlw	high(02h)
	movwf	((?i1_LCD_print_char))+1
	movlw	low(0Eh)
	movwf	0+(?i1_LCD_print_char)+02h
	movlw	high(0Eh)
	movwf	(0+(?i1_LCD_print_char)+02h)+1
	movlw	(03Ah)
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	movwf	0+(?i1_LCD_print_char)+04h
	fcall	i1_LCD_print_char
	goto	i1l7190
	line	446
	
i1l1145:	
	
i1l7188:	
;Automated Solar Panel Orientation Setter.c: 446: else LCD_print_char(2,14,' ');
	movlw	low(02h)
	movwf	(?i1_LCD_print_char)
	movlw	high(02h)
	movwf	((?i1_LCD_print_char))+1
	movlw	low(0Eh)
	movwf	0+(?i1_LCD_print_char)+02h
	movlw	high(0Eh)
	movwf	(0+(?i1_LCD_print_char)+02h)+1
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	movwf	0+(?i1_LCD_print_char)+04h
	fcall	i1_LCD_print_char
	goto	i1l7190
	
i1l1146:	
	line	447
	
i1l7190:	
;Automated Solar Panel Orientation Setter.c: 447: BlinkDet = !BlinkDet;
	movlw	1<<((_BlinkDet)&7)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((_BlinkDet)/8),f
	line	449
	
i1l7192:	
;Automated Solar Panel Orientation Setter.c: 449: RD6 = !RD6;
	movlw	1<<((70)&7)
	xorwf	((70)/8),f
	line	450
	
i1l7194:	
;Automated Solar Panel Orientation Setter.c: 450: msecond = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_msecond)^080h
	clrf	(_msecond+1)^080h
	line	451
	
i1l7196:	
;Automated Solar Panel Orientation Setter.c: 451: if( second == 60){
	movlw	03Ch
	xorwf	(_second)^080h,w
	iorwf	(_second+1)^080h,w
	skipz
	goto	u610_21
	goto	u610_20
u610_21:
	goto	i1l1144
u610_20:
	line	456
	
i1l7198:	
;Automated Solar Panel Orientation Setter.c: 456: LCD_print_char(2,16,minute%10+48);
	movlw	low(02h)
	movwf	(?i1_LCD_print_char)
	movlw	high(02h)
	movwf	((?i1_LCD_print_char))+1
	movlw	low(010h)
	movwf	0+(?i1_LCD_print_char)+02h
	movlw	high(010h)
	movwf	(0+(?i1_LCD_print_char)+02h)+1
	movlw	low(0Ah)
	movwf	(?i1___lwmod)
	movlw	high(0Ah)
	movwf	((?i1___lwmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_minute+1),w
	clrf	1+(?i1___lwmod)+02h
	addwf	1+(?i1___lwmod)+02h
	movf	(_minute),w
	clrf	0+(?i1___lwmod)+02h
	addwf	0+(?i1___lwmod)+02h

	fcall	i1___lwmod
	movf	(0+(?i1___lwmod)),w
	addlw	030h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	movwf	0+(?i1_LCD_print_char)+04h
	fcall	i1_LCD_print_char
	line	458
	
i1l7200:	
;Automated Solar Panel Orientation Setter.c: 458: minute ++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_minute),f
	skipnc
	incf	(_minute+1),f
	movlw	high(01h)
	addwf	(_minute+1),f
	line	459
	
i1l7202:	
;Automated Solar Panel Orientation Setter.c: 459: second = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_second)^080h
	clrf	(_second+1)^080h
	line	461
	
i1l7204:	
;Automated Solar Panel Orientation Setter.c: 461: x = minute%30 ;
	movlw	low(01Eh)
	movwf	(?i1___lwmod)
	movlw	high(01Eh)
	movwf	((?i1___lwmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_minute+1),w
	clrf	1+(?i1___lwmod)+02h
	addwf	1+(?i1___lwmod)+02h
	movf	(_minute),w
	clrf	0+(?i1___lwmod)+02h
	addwf	0+(?i1___lwmod)+02h

	fcall	i1___lwmod
	movf	(0+(?i1___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	movwf	(_x)
	goto	i1l7208
	line	462
	
i1l7206:	
	goto	i1l7208
	line	465
	
i1l1148:	
	line	468
	
i1l7208:	
;Automated Solar Panel Orientation Setter.c: 465: }
;Automated Solar Panel Orientation Setter.c: 468: if( minute == 60){
	movlw	03Ch
	xorwf	(_minute),w
	iorwf	(_minute+1),w
	skipz
	goto	u611_21
	goto	u611_20
u611_21:
	goto	i1l1144
u611_20:
	line	469
	
i1l7210:	
;Automated Solar Panel Orientation Setter.c: 469: minute = 0;
	clrf	(_minute)
	clrf	(_minute+1)
	line	470
	
i1l7212:	
;Automated Solar Panel Orientation Setter.c: 470: hour ++;
	movlw	low(01h)
	addwf	(_hour),f
	skipnc
	incf	(_hour+1),f
	movlw	high(01h)
	addwf	(_hour+1),f
	goto	i1l1144
	line	471
	
i1l7214:	
	goto	i1l1144
	
i1l1150:	
	goto	i1l1144
	line	472
	
i1l1149:	
	goto	i1l1144
	line	473
	
i1l1147:	
	line	474
	
i1l1144:	
	line	475
;Automated Solar Panel Orientation Setter.c: 472: }
;Automated Solar Panel Orientation Setter.c: 473: }
;Automated Solar Panel Orientation Setter.c: 474: }
;Automated Solar Panel Orientation Setter.c: 475: TMR1IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(96/8),(96)&7
	line	476
	
i1l7216:	
;Automated Solar Panel Orientation Setter.c: 476: TMR1L = 0xB0;
	movlw	(0B0h)
	movwf	(14)	;volatile
	line	477
;Automated Solar Panel Orientation Setter.c: 477: TMR1H = 0x3C;
	movlw	(03Ch)
	movwf	(15)	;volatile
	goto	i1l7218
	line	478
	
i1l1143:	
	line	479
	
i1l7218:	
;Automated Solar Panel Orientation Setter.c: 478: }
;Automated Solar Panel Orientation Setter.c: 479: if( RCIF == 1){
	btfss	(101/8),(101)&7
	goto	u612_21
	goto	u612_20
u612_21:
	goto	i1l7238
u612_20:
	line	480
	
i1l7220:	
;Automated Solar Panel Orientation Setter.c: 480: if ((FERR == 0) && (OERR == 0))
	btfsc	(194/8),(194)&7
	goto	u613_21
	goto	u613_20
u613_21:
	goto	i1l1152
u613_20:
	
i1l7222:	
	btfsc	(193/8),(193)&7
	goto	u614_21
	goto	u614_20
u614_21:
	goto	i1l1152
u614_20:
	line	482
	
i1l7224:	
;Automated Solar Panel Orientation Setter.c: 481: {
;Automated Solar Panel Orientation Setter.c: 482: wtmp = RCREG;
	movf	(26),w	;volatile
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	movwf	(_wtmp)
	line	483
;Automated Solar Panel Orientation Setter.c: 483: if( RCREG=='*' || j > 20-1 ){
	movf	(26),w	;volatile
	xorlw	02Ah
	skipnz
	goto	u615_21
	goto	u615_20
u615_21:
	goto	i1l1155
u615_20:
	
i1l7226:	
	movlw	(014h)
	subwf	(_j),w
	skipc
	goto	u616_21
	goto	u616_20
u616_21:
	goto	i1l7228
u616_20:
	
i1l1155:	
	line	484
;Automated Solar Panel Orientation Setter.c: 484: j=0;
	clrf	(_j)
	goto	i1l7228
	line	485
	
i1l1153:	
	line	486
	
i1l7228:	
;Automated Solar Panel Orientation Setter.c: 485: }
;Automated Solar Panel Orientation Setter.c: 486: buffer[j] = RCREG;
	movf	(26),w	;volatile
	movwf	(??_isr+0)+0
	movf	(_j),w
	addlw	_buffer&0ffh
	movwf	fsr0
	movf	(??_isr+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	487
	
i1l7230:	
;Automated Solar Panel Orientation Setter.c: 487: j ++;
	movlw	(01h)
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	addwf	(_j),f
	line	488
;Automated Solar Panel Orientation Setter.c: 488: }
	goto	i1l7236
	line	489
	
i1l1152:	
	line	491
;Automated Solar Panel Orientation Setter.c: 489: else
;Automated Solar Panel Orientation Setter.c: 490: {
;Automated Solar Panel Orientation Setter.c: 491: CREN = 0;
	bcf	(196/8),(196)&7
	line	492
;Automated Solar Panel Orientation Setter.c: 492: FERR = 0;
	bcf	(194/8),(194)&7
	line	493
	
i1l7232:	
;Automated Solar Panel Orientation Setter.c: 493: wtmp = RCREG;
	movf	(26),w	;volatile
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	movwf	(_wtmp)
	line	494
;Automated Solar Panel Orientation Setter.c: 494: wtmp = RCREG;
	movf	(26),w	;volatile
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	movwf	(_wtmp)
	line	495
	
i1l7234:	
;Automated Solar Panel Orientation Setter.c: 495: CREN = 1;
	bsf	(196/8),(196)&7
	goto	i1l7236
	line	496
	
i1l1156:	
	line	497
	
i1l7236:	
;Automated Solar Panel Orientation Setter.c: 496: }
;Automated Solar Panel Orientation Setter.c: 497: RCIF = 0;
	bcf	(101/8),(101)&7
	goto	i1l7238
	line	498
	
i1l1151:	
	line	499
	
i1l7238:	
;Automated Solar Panel Orientation Setter.c: 498: }
;Automated Solar Panel Orientation Setter.c: 499: if(OERR == 1)
	btfss	(193/8),(193)&7
	goto	u617_21
	goto	u617_20
u617_21:
	goto	i1l1158
u617_20:
	line	501
	
i1l7240:	
;Automated Solar Panel Orientation Setter.c: 500: {
;Automated Solar Panel Orientation Setter.c: 501: CREN = 0;
	bcf	(196/8),(196)&7
	line	503
	
i1l7242:	
;Automated Solar Panel Orientation Setter.c: 503: wtmp = RCREG;
	movf	(26),w	;volatile
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	movwf	(_wtmp)
	line	504
;Automated Solar Panel Orientation Setter.c: 504: wtmp = RCREG;
	movf	(26),w	;volatile
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	movwf	(_wtmp)
	line	505
	
i1l7244:	
;Automated Solar Panel Orientation Setter.c: 505: CREN = 1;
	bsf	(196/8),(196)&7
	goto	i1l1158
	line	506
	
i1l1157:	
	line	508
	
i1l1158:	
	movf	(??_isr+4),w
	movwf	btemp+1
	movf	(??_isr+3),w
	movwf	pclath
	movf	(??_isr+2),w
	movwf	fsr0
	swapf	(??_isr+1)^00h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_isr
	__end_of_isr:
;; =============== function _isr ends ============

	signat	_isr,88
	global	i1_LCD_print_char
psect	text1523,local,class=CODE,delta=2
global __ptext1523
__ptext1523:

;; *************** function i1_LCD_print_char *****************
;; Defined at:
;;		line 174 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\lcdV2.h"
;; Parameters:    Size  Location     Type
;;  LCD_print_ch    2    7[COMMON] int 
;;  LCD_print_ch    2    9[COMMON] int 
;;  LCD_print_ch    1   11[COMMON] unsigned char 
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
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		i1_position
;;		i1_lcd_add
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text1523
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\lcdV2.h"
	line	174
	global	__size_ofi1_LCD_print_char
	__size_ofi1_LCD_print_char	equ	__end_ofi1_LCD_print_char-i1_LCD_print_char
	
i1_LCD_print_char:	
	opt	stack 0
; Regs used in i1_LCD_print_char: [wreg+status,2+status,0+pclath+cstack]
	line	175
	
i1l7514:	
;lcdV2.h: 175: position(row,column);
	movf	(i1LCD_print_char@column),w
	movwf	(??i1_LCD_print_char+0)+0
	movf	(??i1_LCD_print_char+0)+0,w
	movwf	(?i1_position)
	movf	(i1LCD_print_char@row),w
	fcall	i1_position
	line	176
	
i1l7516:	
;lcdV2.h: 176: RC2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	line	177
	
i1l7518:	
;lcdV2.h: 177: _delay(20);
	opt asmopt_off
movlw	6
movwf	(??i1_LCD_print_char+0)+0,f
u1286_27:
decfsz	(??i1_LCD_print_char+0)+0,f
	goto	u1286_27
	clrwdt
opt asmopt_on

	line	178
	
i1l7520:	
;lcdV2.h: 178: lcd_data = print_value;
	movf	(i1LCD_print_char@print_value),w
	movwf	(??i1_LCD_print_char+0)+0
	movf	(??i1_LCD_print_char+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_lcd_data)
	line	179
;lcdV2.h: 179: lcd_add();
	fcall	i1_lcd_add
	line	180
	
i1l7522:	
;lcdV2.h: 180: _delay(100);
	opt asmopt_off
movlw	33
movwf	(??i1_LCD_print_char+0)+0,f
u1287_27:
decfsz	(??i1_LCD_print_char+0)+0,f
	goto	u1287_27
opt asmopt_on

	line	181
	
i1l825:	
	return
	opt stack 0
GLOBAL	__end_ofi1_LCD_print_char
	__end_ofi1_LCD_print_char:
;; =============== function i1_LCD_print_char ends ============

	signat	i1_LCD_print_char,88
	global	i1_position
psect	text1524,local,class=CODE,delta=2
global __ptext1524
__ptext1524:

;; *************** function i1_position *****************
;; Defined at:
;;		line 209 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\lcdV2.h"
;; Parameters:    Size  Location     Type
;;  position        1    wreg     unsigned char 
;;  position        1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  position        1    6[COMMON] unsigned char 
;;  position        1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_lcd_add
;; This function is called by:
;;		i1_LCD_print_char
;; This function uses a non-reentrant model
;;
psect	text1524
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\lcdV2.h"
	line	209
	global	__size_ofi1_position
	__size_ofi1_position	equ	__end_ofi1_position-i1_position
	
i1_position:	
	opt	stack 0
; Regs used in i1_position: [wreg+status,2+status,0+pclath+cstack]
;i1position@row stored from wreg
	line	211
	movwf	(i1position@row)
	
i1l7524:	
;lcdV2.h: 210: char post ;
;lcdV2.h: 211: if( row == 1 ) row = 128;
	movf	(i1position@row),w
	xorlw	01h
	skipz
	goto	u693_21
	goto	u693_20
u693_21:
	goto	i1l836
u693_20:
	
i1l7526:	
	movlw	(080h)
	movwf	(??i1_position+0)+0
	movf	(??i1_position+0)+0,w
	movwf	(i1position@row)
	
i1l836:	
	line	212
;lcdV2.h: 212: if( row == 2 ) row = 192;
	movf	(i1position@row),w
	xorlw	02h
	skipz
	goto	u694_21
	goto	u694_20
u694_21:
	goto	i1l7530
u694_20:
	
i1l7528:	
	movlw	(0C0h)
	movwf	(??i1_position+0)+0
	movf	(??i1_position+0)+0,w
	movwf	(i1position@row)
	goto	i1l7530
	
i1l837:	
	line	213
	
i1l7530:	
;lcdV2.h: 213: post = row + collum - 1;
	movf	(i1position@collum),w
	addwf	(i1position@row),w
	addlw	0FFh
	movwf	(??i1_position+0)+0
	movf	(??i1_position+0)+0,w
	movwf	(i1position@post)
	line	214
	
i1l7532:	
;lcdV2.h: 214: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	215
	
i1l7534:	
;lcdV2.h: 215: _delay(20);
	opt asmopt_off
movlw	6
movwf	(??i1_position+0)+0,f
u1288_27:
decfsz	(??i1_position+0)+0,f
	goto	u1288_27
	clrwdt
opt asmopt_on

	line	216
	
i1l7536:	
;lcdV2.h: 216: lcd_data = post ;
	movf	(i1position@post),w
	movwf	(??i1_position+0)+0
	movf	(??i1_position+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_lcd_data)
	line	217
	
i1l7538:	
;lcdV2.h: 217: lcd_add();
	fcall	i1_lcd_add
	line	218
	
i1l7540:	
;lcdV2.h: 218: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??i1_position+0)+0+1),f
	movlw	251
movwf	((??i1_position+0)+0),f
u1289_27:
	decfsz	((??i1_position+0)+0),f
	goto	u1289_27
	decfsz	((??i1_position+0)+0+1),f
	goto	u1289_27
	nop2
opt asmopt_on

	line	219
	
i1l7542:	
;lcdV2.h: 219: row = 0;
	clrf	(i1position@row)
	line	220
	
i1l7544:	
;lcdV2.h: 220: collum = 0;
	clrf	(i1position@collum)
	line	221
	
i1l838:	
	return
	opt stack 0
GLOBAL	__end_ofi1_position
	__end_ofi1_position:
;; =============== function i1_position ends ============

	signat	i1_position,88
	global	i1_lcd_add
psect	text1525,local,class=CODE,delta=2
global __ptext1525
__ptext1525:

;; *************** function i1_lcd_add *****************
;; Defined at:
;;		line 225 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\lcdV2.h"
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
;;		i1_LCD_print_char
;;		i1_position
;; This function uses a non-reentrant model
;;
psect	text1525
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver3\lcdV2.h"
	line	225
	global	__size_ofi1_lcd_add
	__size_ofi1_lcd_add	equ	__end_ofi1_lcd_add-i1_lcd_add
	
i1_lcd_add:	
	opt	stack 1
; Regs used in i1_lcd_add: [wreg+status,2+status,0]
	line	226
	
i1l7546:	
;lcdV2.h: 226: lcd_data_high = lcd_data >> 4;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??i1_lcd_add+0)+0
	movlw	04h
u695_25:
	clrc
	rrf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u695_25
	movf	0+(??i1_lcd_add+0)+0,w
	movwf	(??i1_lcd_add+1)+0
	movf	(??i1_lcd_add+1)+0,w
	movwf	(_lcd_data_high)
	line	227
;lcdV2.h: 227: lcd_data_low = lcd_data << 4;
	movf	(_lcd_data),w
	movwf	(??i1_lcd_add+0)+0
	movlw	(04h)-1
u696_25:
	clrc
	rlf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u696_25
	clrc
	rlf	(??i1_lcd_add+0)+0,w
	movwf	(??i1_lcd_add+1)+0
	movf	(??i1_lcd_add+1)+0,w
	movwf	(_lcd_data_low)
	line	228
;lcdV2.h: 228: lcd_data_low = lcd_data_low >> 4;
	movf	(_lcd_data_low),w
	movwf	(??i1_lcd_add+0)+0
	movlw	04h
u697_25:
	clrc
	rrf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u697_25
	movf	0+(??i1_lcd_add+0)+0,w
	movwf	(??i1_lcd_add+1)+0
	movf	(??i1_lcd_add+1)+0,w
	movwf	(_lcd_data_low)
	line	230
	
i1l7548:	
;lcdV2.h: 230: bit0 = lcd_data;
	bcf	(_bit0/8),(_bit0)&7
	btfss	(_lcd_data),0
	goto	u698_25
	bsf	(_bit0/8),(_bit0)&7
u698_25:

	line	231
;lcdV2.h: 231: bit1 = lcd_data>>1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??i1_lcd_add+0)+0
	movlw	01h
u699_25:
	clrc
	rrf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u699_25
	bcf	(_bit1/8),(_bit1)&7
	btfss	0+(??i1_lcd_add+0)+0,0
	goto	u700_25
	bsf	(_bit1/8),(_bit1)&7
u700_25:

	line	232
;lcdV2.h: 232: bit2 = lcd_data>>2;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??i1_lcd_add+0)+0
	movlw	02h
u701_25:
	clrc
	rrf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u701_25
	bcf	(_bit2/8),(_bit2)&7
	btfss	0+(??i1_lcd_add+0)+0,0
	goto	u702_25
	bsf	(_bit2/8),(_bit2)&7
u702_25:

	line	233
;lcdV2.h: 233: bit3 = lcd_data>>3;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??i1_lcd_add+0)+0
	movlw	03h
u703_25:
	clrc
	rrf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u703_25
	bcf	(_bit3/8),(_bit3)&7
	btfss	0+(??i1_lcd_add+0)+0,0
	goto	u704_25
	bsf	(_bit3/8),(_bit3)&7
u704_25:

	line	234
;lcdV2.h: 234: bit4 = lcd_data>>4;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??i1_lcd_add+0)+0
	movlw	04h
u705_25:
	clrc
	rrf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u705_25
	bcf	(_bit4/8),(_bit4)&7
	btfss	0+(??i1_lcd_add+0)+0,0
	goto	u706_25
	bsf	(_bit4/8),(_bit4)&7
u706_25:

	line	235
;lcdV2.h: 235: bit5 = lcd_data>>5;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??i1_lcd_add+0)+0
	movlw	05h
u707_25:
	clrc
	rrf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u707_25
	bcf	(_bit5/8),(_bit5)&7
	btfss	0+(??i1_lcd_add+0)+0,0
	goto	u708_25
	bsf	(_bit5/8),(_bit5)&7
u708_25:

	line	236
;lcdV2.h: 236: bit6 = lcd_data>>6;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??i1_lcd_add+0)+0
	movlw	06h
u709_25:
	clrc
	rrf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u709_25
	bcf	(_bit6/8),(_bit6)&7
	btfss	0+(??i1_lcd_add+0)+0,0
	goto	u710_25
	bsf	(_bit6/8),(_bit6)&7
u710_25:

	line	237
;lcdV2.h: 237: bit7 = lcd_data>>7;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??i1_lcd_add+0)+0
	movlw	07h
u711_25:
	clrc
	rrf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u711_25
	bcf	(_bit7/8),(_bit7)&7
	btfss	0+(??i1_lcd_add+0)+0,0
	goto	u712_25
	bsf	(_bit7/8),(_bit7)&7
u712_25:

	line	239
	
i1l7550:	
;lcdV2.h: 239: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	240
	
i1l7552:	
;lcdV2.h: 240: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	241
	
i1l7554:	
;lcdV2.h: 241: RC3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	line	242
	
i1l7556:	
;lcdV2.h: 242: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	244
	
i1l7558:	
;lcdV2.h: 244: RC1 = bit4;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(_bit4/8),(_bit4)&7
	goto	u713_21
	goto	u713_20
	
u713_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u714_24
u713_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u714_24:
	line	245
	
i1l7560:	
;lcdV2.h: 245: RD0 = bit5;
	btfsc	(_bit5/8),(_bit5)&7
	goto	u715_21
	goto	u715_20
	
u715_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	goto	u716_24
u715_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
u716_24:
	line	246
	
i1l7562:	
;lcdV2.h: 246: RC0 = bit6;
	btfsc	(_bit6/8),(_bit6)&7
	goto	u717_21
	goto	u717_20
	
u717_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u718_24
u717_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u718_24:
	line	247
	
i1l7564:	
;lcdV2.h: 247: RD1 = bit7;
	btfsc	(_bit7/8),(_bit7)&7
	goto	u719_21
	goto	u719_20
	
u719_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	goto	u720_24
u719_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
u720_24:
	line	249
	
i1l7566:	
;lcdV2.h: 249: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	250
	
i1l7568:	
;lcdV2.h: 250: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	251
	
i1l7570:	
;lcdV2.h: 251: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	255
	
i1l7572:	
;lcdV2.h: 255: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	256
	
i1l7574:	
;lcdV2.h: 256: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	257
	
i1l7576:	
;lcdV2.h: 257: RC3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	line	258
	
i1l7578:	
;lcdV2.h: 258: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	260
	
i1l7580:	
;lcdV2.h: 260: RC1 = bit0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(_bit0/8),(_bit0)&7
	goto	u721_21
	goto	u721_20
	
u721_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u722_24
u721_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u722_24:
	line	261
	
i1l7582:	
;lcdV2.h: 261: RD0 = bit1;
	btfsc	(_bit1/8),(_bit1)&7
	goto	u723_21
	goto	u723_20
	
u723_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	goto	u724_24
u723_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
u724_24:
	line	262
	
i1l7584:	
;lcdV2.h: 262: RC0 = bit2;
	btfsc	(_bit2/8),(_bit2)&7
	goto	u725_21
	goto	u725_20
	
u725_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u726_24
u725_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u726_24:
	line	263
	
i1l7586:	
;lcdV2.h: 263: RD1 = bit3;
	btfsc	(_bit3/8),(_bit3)&7
	goto	u727_21
	goto	u727_20
	
u727_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	goto	u728_24
u727_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
u728_24:
	line	265
	
i1l7588:	
;lcdV2.h: 265: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	266
	
i1l7590:	
;lcdV2.h: 266: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	267
	
i1l7592:	
;lcdV2.h: 267: _delay(1);
		opt asmopt_off
	clrwdt
	opt asmopt_on

	line	268
	
i1l841:	
	return
	opt stack 0
GLOBAL	__end_ofi1_lcd_add
	__end_ofi1_lcd_add:
;; =============== function i1_lcd_add ends ============

	signat	i1_lcd_add,88
	global	i1___lwmod
psect	text1526,local,class=CODE,delta=2
global __ptext1526
__ptext1526:

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
psect	text1526
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_ofi1___lwmod
	__size_ofi1___lwmod	equ	__end_ofi1___lwmod-i1___lwmod
	
i1___lwmod:	
	opt	stack 2
; Regs used in i1___lwmod: [wreg+status,2+status,0]
	line	8
	
i1l7594:	
	movf	(i1___lwmod@divisor+1),w
	iorwf	(i1___lwmod@divisor),w
	skipnz
	goto	u729_21
	goto	u729_20
u729_21:
	goto	i1l7612
u729_20:
	line	9
	
i1l7596:	
	clrf	(i1___lwmod@counter)
	bsf	status,0
	rlf	(i1___lwmod@counter),f
	line	10
	goto	i1l7602
	
i1l3288:	
	line	11
	
i1l7598:	
	movlw	01h
	
u730_25:
	clrc
	rlf	(i1___lwmod@divisor),f
	rlf	(i1___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u730_25
	line	12
	
i1l7600:	
	movlw	(01h)
	movwf	(??i1___lwmod+0)+0
	movf	(??i1___lwmod+0)+0,w
	addwf	(i1___lwmod@counter),f
	goto	i1l7602
	line	13
	
i1l3287:	
	line	10
	
i1l7602:	
	btfss	(i1___lwmod@divisor+1),(15)&7
	goto	u731_21
	goto	u731_20
u731_21:
	goto	i1l7598
u731_20:
	goto	i1l7604
	
i1l3289:	
	goto	i1l7604
	line	14
	
i1l3290:	
	line	15
	
i1l7604:	
	movf	(i1___lwmod@divisor+1),w
	subwf	(i1___lwmod@dividend+1),w
	skipz
	goto	u732_25
	movf	(i1___lwmod@divisor),w
	subwf	(i1___lwmod@dividend),w
u732_25:
	skipc
	goto	u732_21
	goto	u732_20
u732_21:
	goto	i1l7608
u732_20:
	line	16
	
i1l7606:	
	movf	(i1___lwmod@divisor),w
	subwf	(i1___lwmod@dividend),f
	movf	(i1___lwmod@divisor+1),w
	skipc
	decf	(i1___lwmod@dividend+1),f
	subwf	(i1___lwmod@dividend+1),f
	goto	i1l7608
	
i1l3291:	
	line	17
	
i1l7608:	
	movlw	01h
	
u733_25:
	clrc
	rrf	(i1___lwmod@divisor+1),f
	rrf	(i1___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u733_25
	line	18
	
i1l7610:	
	movlw	low(01h)
	subwf	(i1___lwmod@counter),f
	btfss	status,2
	goto	u734_21
	goto	u734_20
u734_21:
	goto	i1l7604
u734_20:
	goto	i1l7612
	
i1l3292:	
	goto	i1l7612
	line	19
	
i1l3286:	
	line	20
	
i1l7612:	
	movf	(i1___lwmod@dividend+1),w
	clrf	(?i1___lwmod+1)
	addwf	(?i1___lwmod+1)
	movf	(i1___lwmod@dividend),w
	clrf	(?i1___lwmod)
	addwf	(?i1___lwmod)

	goto	i1l3293
	
i1l7614:	
	line	21
	
i1l3293:	
	return
	opt stack 0
GLOBAL	__end_ofi1___lwmod
	__end_ofi1___lwmod:
;; =============== function i1___lwmod ends ============

	signat	i1___lwmod,90
psect	text1527,local,class=CODE,delta=2
global __ptext1527
__ptext1527:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
