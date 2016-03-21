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
	FNCALL	_main,_Serial_Init
	FNCALL	_main,_Timer1_Init
	FNCALL	_main,_enableInterrupt
	FNCALL	_main,_clr_display
	FNCALL	_main,_printf
	FNCALL	_main,_position
	FNCALL	_main,_a2d_read
	FNCALL	_main,_check_pc
	FNCALL	_main,_Serial_Print
	FNCALL	_main,_Serial_NewLine
	FNCALL	_a2d_read,_read_a2d_value
	FNCALL	_printf,_putch
	FNCALL	_check_pc,_ClrBuffer
	FNCALL	_position,_lcd_add
	FNCALL	_clr_display,_lcd_add
	FNCALL	_putch,_lcd_add
	FNCALL	_lcd_init,_lcd_add
	FNROOT	_main
	FNCALL	_isr,i1_lcd_init
	FNCALL	_isr,i1_clr_display
	FNCALL	_isr,___lwmod
	FNCALL	i1_clr_display,i1_lcd_add
	FNCALL	i1_lcd_init,i1_lcd_add
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_buffer
	global	_rc
	global	_atodread1
	global	_atodread2
	global	_hour
	global	_minute
	global	_msecond
	global	_second
	global	_Mode
	global	_j
	global	_lcd_bus
	global	_lcd_data
	global	_lcd_data_high
	global	_lcd_data_low
	global	_time_period
	global	_wtmp
	global	_bit0
	global	_bit1
	global	_bit2
	global	_bit3
	global	_bit4
	global	_bit5
	global	_bit6
	global	_bit7
	global	_nop
	global	_ADCON0
psect	text606,local,class=CODE,delta=2
global __ptext606
__ptext606:
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
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RBIE
_RBIE	set	91
	global	_RC1
_RC1	set	57
	global	_RCIF
_RCIF	set	101
	global	_RD6
_RD6	set	70
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_RE2
_RE2	set	74
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
	
STR_7:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_6:	
	retlw	68	;'D'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	32	;' '
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	113	;'q'
	retlw	117	;'u'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_3:	
	retlw	42	;'*'
	retlw	35	;'#'
	retlw	68	;'D'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	81	;'Q'
	retlw	61	;'='
	retlw	49	;'1'
	retlw	50	;'2'
	retlw	51	;'3'
	retlw	0
psect	strings
	
STR_4:	
	retlw	42	;'*'
	retlw	35	;'#'
	retlw	49	;'1'
	retlw	50	;'2'
	retlw	51	;'3'
	retlw	61	;'='
	retlw	0
psect	strings
STR_5	equ	STR_4+0
	file	"ver1.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bitbssBANK0,class=BANK0,bit,space=1
global __pbitbssBANK0
__pbitbssBANK0:
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

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_buffer:
       ds      20

_rc:
       ds      9

_atodread1:
       ds      2

_atodread2:
       ds      2

_hour:
       ds      2

_minute:
       ds      2

_msecond:
       ds      2

_second:
       ds      2

_Mode:
       ds      1

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

_time_period:
       ds      1

_wtmp:
       ds      1

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
	movlw	low((__pbssBANK0)+031h)
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
	global	?_lcd_add
?_lcd_add:	; 0 bytes @ 0x0
	global	?_a2d_read
?_a2d_read:	; 0 bytes @ 0x0
	global	?_check_pc
?_check_pc:	; 0 bytes @ 0x0
	global	?_ClrBuffer
?_ClrBuffer:	; 0 bytes @ 0x0
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
	global	?i1_lcd_init
?i1_lcd_init:	; 0 bytes @ 0x0
	global	?i1_clr_display
?i1_clr_display:	; 0 bytes @ 0x0
	global	?i1_lcd_add
?i1_lcd_add:	; 0 bytes @ 0x0
	global	??i1_lcd_add
??i1_lcd_add:	; 0 bytes @ 0x0
	global	?_printf
?_printf:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	??i1_lcd_init
??i1_lcd_init:	; 0 bytes @ 0x2
	global	??i1_clr_display
??i1_clr_display:	; 0 bytes @ 0x2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x4
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	??_isr
??_isr:	; 0 bytes @ 0x6
	ds	6
	global	isr@x
isr@x:	; 2 bytes @ 0xC
	ds	2
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_lcd_add
??_lcd_add:	; 0 bytes @ 0x0
	global	??_ClrBuffer
??_ClrBuffer:	; 0 bytes @ 0x0
	global	??_Setup_IOports
??_Setup_IOports:	; 0 bytes @ 0x0
	global	??_atod_init
??_atod_init:	; 0 bytes @ 0x0
	global	??_Serial_Init
??_Serial_Init:	; 0 bytes @ 0x0
	global	??_Serial_Print
??_Serial_Print:	; 0 bytes @ 0x0
	global	??_Serial_NewLine
??_Serial_NewLine:	; 0 bytes @ 0x0
	global	??_enableInterrupt
??_enableInterrupt:	; 0 bytes @ 0x0
	global	??_Timer1_Init
??_Timer1_Init:	; 0 bytes @ 0x0
	global	?_read_a2d_value
?_read_a2d_value:	; 2 bytes @ 0x0
	global	ClrBuffer@i
ClrBuffer@i:	; 2 bytes @ 0x0
	ds	1
	global	Serial_Print@a
Serial_Print@a:	; 1 bytes @ 0x1
	ds	1
	global	??_check_pc
??_check_pc:	; 0 bytes @ 0x2
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x2
	global	??_putch
??_putch:	; 0 bytes @ 0x2
	global	??_clr_display
??_clr_display:	; 0 bytes @ 0x2
	global	?_position
?_position:	; 0 bytes @ 0x2
	global	??_read_a2d_value
??_read_a2d_value:	; 0 bytes @ 0x2
	global	position@collum
position@collum:	; 1 bytes @ 0x2
	ds	1
	global	??_position
??_position:	; 0 bytes @ 0x3
	global	putch@print_value
putch@print_value:	; 1 bytes @ 0x3
	ds	1
	global	??_printf
??_printf:	; 0 bytes @ 0x4
	global	read_a2d_value@channel
read_a2d_value@channel:	; 1 bytes @ 0x4
	ds	1
	global	position@post
position@post:	; 1 bytes @ 0x5
	global	printf@ap
printf@ap:	; 1 bytes @ 0x5
	global	read_a2d_value@a2d_value
read_a2d_value@a2d_value:	; 2 bytes @ 0x5
	ds	1
	global	position@row
position@row:	; 1 bytes @ 0x6
	global	printf@f
printf@f:	; 1 bytes @ 0x6
	ds	1
	global	??_a2d_read
??_a2d_read:	; 0 bytes @ 0x7
	global	printf@c
printf@c:	; 1 bytes @ 0x7
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x8
	ds	3
;;Data sizes: Strings 88, constant 0, data 0, bss 49, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     11      62
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?_read_a2d_value	unsigned int  size(1) Largest target is 0
;;
;; printf@f	PTR const unsigned char  size(1) Largest target is 18
;;		 -> STR_7(CODE[17]), STR_6(CODE[17]), STR_2(CODE[18]), STR_1(CODE[18]), 
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_printf(COMMON[2]), 
;;
;; S1329$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; Serial_Print@a	PTR unsigned char  size(1) Largest target is 11
;;		 -> STR_5(CODE[7]), STR_4(CODE[7]), STR_3(CODE[11]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _isr in COMMON
;;
;;   _isr->___lwmod
;;   i1_clr_display->i1_lcd_add
;;   i1_lcd_init->i1_lcd_add
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_printf
;;   _a2d_read->_read_a2d_value
;;   _printf->_putch
;;   _check_pc->_ClrBuffer
;;   _position->_lcd_add
;;   _clr_display->_lcd_add
;;   _putch->_lcd_add
;;   _lcd_init->_lcd_add
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
;; (0) _main                                                 3     3      0     432
;;                                              8 BANK0      3     3      0
;;                      _Setup_IOports
;;                          _atod_init
;;                           _lcd_init
;;                        _Serial_Init
;;                        _Timer1_Init
;;                    _enableInterrupt
;;                        _clr_display
;;                             _printf
;;                           _position
;;                           _a2d_read
;;                           _check_pc
;;                       _Serial_Print
;;                     _Serial_NewLine
;; ---------------------------------------------------------------------------------
;; (1) _a2d_read                                             0     0      0     114
;;                     _read_a2d_value
;; ---------------------------------------------------------------------------------
;; (1) _printf                                              10    10      0      68
;;                                              4 BANK0      4     4      0
;;                              _putch
;; ---------------------------------------------------------------------------------
;; (1) _check_pc                                             0     0      0      68
;;                          _ClrBuffer
;; ---------------------------------------------------------------------------------
;; (1) _Serial_NewLine                                       1     1      0       0
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _Serial_Print                                         2     2      0      67
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _Serial_Init                                          3     3      0       0
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (2) _read_a2d_value                                       7     5      2     114
;;                                              0 BANK0      7     5      2
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
;; (1) _lcd_init                                             2     2      0       0
;;                                              2 BANK0      2     2      0
;;                            _lcd_add
;; ---------------------------------------------------------------------------------
;; (2) _ClrBuffer                                            2     2      0      68
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _Timer1_Init                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _enableInterrupt                                      0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _atod_init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _lcd_add                                              2     2      0       0
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _Setup_IOports                                        0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (4) _isr                                                  8     8      0     182
;;                                              6 COMMON     8     8      0
;;                         i1_lcd_init
;;                      i1_clr_display
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (5) i1_clr_display                                        2     2      0       0
;;                                              2 COMMON     2     2      0
;;                          i1_lcd_add
;; ---------------------------------------------------------------------------------
;; (5) i1_lcd_init                                           2     2      0       0
;;                                              2 COMMON     2     2      0
;;                          i1_lcd_add
;; ---------------------------------------------------------------------------------
;; (6) i1_lcd_add                                            2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (5) ___lwmod                                              6     2      4     159
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 6
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Setup_IOports
;;   _atod_init
;;   _lcd_init
;;     _lcd_add
;;   _Serial_Init
;;   _Timer1_Init
;;   _enableInterrupt
;;   _clr_display
;;     _lcd_add
;;   _printf
;;     _putch
;;       _lcd_add
;;   _position
;;     _lcd_add
;;   _a2d_read
;;     _read_a2d_value
;;   _check_pc
;;     _ClrBuffer
;;   _Serial_Print
;;   _Serial_NewLine
;;
;; _isr (ROOT)
;;   i1_lcd_init
;;     i1_lcd_add
;;   i1_clr_display
;;     i1_lcd_add
;;   ___lwmod
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       9       2        0.0%
;;ABS                  0      0      4C       3        0.0%
;;BITBANK0            50      0       2       4        2.5%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      B      3E       5       77.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      55      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 54 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\PatientTemperatureAndHeartRateMonitoringSystem.c"
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
;;		_Serial_Init
;;		_Timer1_Init
;;		_enableInterrupt
;;		_clr_display
;;		_printf
;;		_position
;;		_a2d_read
;;		_check_pc
;;		_Serial_Print
;;		_Serial_NewLine
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\PatientTemperatureAndHeartRateMonitoringSystem.c"
	line	54
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	56
	
l3999:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 56: Setup_IOports();
	fcall	_Setup_IOports
	line	57
;PatientTemperatureAndHeartRateMonitoringSystem.c: 57: atod_init();
	fcall	_atod_init
	line	58
	
l4001:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 58: _delay(200);
	opt asmopt_off
movlw	66
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_main+0)+0,f
u5107:
decfsz	(??_main+0)+0,f
	goto	u5107
	clrwdt
opt asmopt_on

	line	59
	
l4003:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 59: lcd_init();
	fcall	_lcd_init
	line	60
	
l4005:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 60: Serial_Init();
	fcall	_Serial_Init
	line	61
	
l4007:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 61: Timer1_Init();
	fcall	_Timer1_Init
	line	62
	
l4009:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 62: enableInterrupt();
	fcall	_enableInterrupt
	line	64
;PatientTemperatureAndHeartRateMonitoringSystem.c: 64: clr_display();
	fcall	_clr_display
	line	65
	
l4011:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 65: printf("Body Temperature ");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_printf
	line	66
	
l4013:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 66: position(2,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_position)
	bsf	status,0
	rlf	(?_position),f
	movlw	(02h)
	fcall	_position
	line	67
;PatientTemperatureAndHeartRateMonitoringSystem.c: 67: printf(" and Heart Rate  ");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_printf
	line	68
	
l4015:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 68: _delay((unsigned long)((5000)*(4000000/4000.0)));
	opt asmopt_off
movlw  26
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	94
movwf	((??_main+0)+0+1),f
	movlw	134
movwf	((??_main+0)+0),f
u5117:
	decfsz	((??_main+0)+0),f
	goto	u5117
	decfsz	((??_main+0)+0+1),f
	goto	u5117
	decfsz	((??_main+0)+0+2),f
	goto	u5117
	clrwdt
opt asmopt_on

	line	70
	
l4017:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 70: clr_display();
	fcall	_clr_display
	goto	l4053
	line	72
;PatientTemperatureAndHeartRateMonitoringSystem.c: 72: while(1){
	
l829:	
	line	73
;PatientTemperatureAndHeartRateMonitoringSystem.c: 73: switch (Mode){
	goto	l4053
	line	74
;PatientTemperatureAndHeartRateMonitoringSystem.c: 74: case 0 :
	
l831:	
	line	75
	
l4019:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 75: a2d_read();
	fcall	_a2d_read
	line	76
	
l4021:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 76: _delay((unsigned long)((100)*(4000000/4000.0)));
	opt asmopt_off
movlw	130
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+1),f
	movlw	221
movwf	((??_main+0)+0),f
u5127:
	decfsz	((??_main+0)+0),f
	goto	u5127
	decfsz	((??_main+0)+0+1),f
	goto	u5127
	nop2
opt asmopt_on

	line	77
	
l4023:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 77: check_pc();
	fcall	_check_pc
	line	78
;PatientTemperatureAndHeartRateMonitoringSystem.c: 78: break;
	goto	l4053
	line	79
;PatientTemperatureAndHeartRateMonitoringSystem.c: 79: case 1 :
	
l833:	
	line	80
;PatientTemperatureAndHeartRateMonitoringSystem.c: 80: RC1 = 1;
	bsf	(57/8),(57)&7
	line	81
	
l4025:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 81: Serial_Print( "*#DREQ=123" );
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_Serial_Print
	line	82
	
l4027:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 82: Serial_NewLine();
	fcall	_Serial_NewLine
	line	83
	
l4029:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 83: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	84
;PatientTemperatureAndHeartRateMonitoringSystem.c: 84: break;
	goto	l4053
	line	85
;PatientTemperatureAndHeartRateMonitoringSystem.c: 85: case 2 :
	
l834:	
	line	86
;PatientTemperatureAndHeartRateMonitoringSystem.c: 86: RC1 = 1;
	bsf	(57/8),(57)&7
	line	87
	
l4031:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 87: Serial_Print( "*#123=" );
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_Serial_Print
	line	88
	
l4033:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 88: Serial_NewLine();
	fcall	_Serial_NewLine
	line	89
	
l4035:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 89: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	90
;PatientTemperatureAndHeartRateMonitoringSystem.c: 90: break;
	goto	l4053
	line	91
;PatientTemperatureAndHeartRateMonitoringSystem.c: 91: case 3 :
	
l835:	
	line	92
;PatientTemperatureAndHeartRateMonitoringSystem.c: 92: RC1 = 1;
	bsf	(57/8),(57)&7
	line	93
	
l4037:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 93: Serial_Print( "*#123=" );
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_Serial_Print
	line	94
	
l4039:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 94: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	96
	
l4041:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 96: position(1,1);
	clrf	(?_position)
	bsf	status,0
	rlf	(?_position),f
	movlw	(01h)
	fcall	_position
	line	97
	
l4043:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 97: printf("Data request... ");
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_printf
	line	98
;PatientTemperatureAndHeartRateMonitoringSystem.c: 98: position(2,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_position)
	bsf	status,0
	rlf	(?_position),f
	movlw	(02h)
	fcall	_position
	line	99
	
l4045:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 99: printf("                ");
	movlw	((STR_7-__stringbase))&0ffh
	fcall	_printf
	line	101
;PatientTemperatureAndHeartRateMonitoringSystem.c: 101: break;
	goto	l4053
	line	102
;PatientTemperatureAndHeartRateMonitoringSystem.c: 102: case 4 :
	
l836:	
	line	103
;PatientTemperatureAndHeartRateMonitoringSystem.c: 103: RC1 = 1;
	bsf	(57/8),(57)&7
	line	104
	
l4047:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 104: Serial_NewLine();
	fcall	_Serial_NewLine
	line	105
	
l4049:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 105: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	107
;PatientTemperatureAndHeartRateMonitoringSystem.c: 107: case 5 :
	
l837:	
	line	108
;PatientTemperatureAndHeartRateMonitoringSystem.c: 108: clr_display();
	fcall	_clr_display
	line	109
;PatientTemperatureAndHeartRateMonitoringSystem.c: 109: break;
	goto	l4053
	line	110
;PatientTemperatureAndHeartRateMonitoringSystem.c: 110: default:
	
l838:	
	line	112
;PatientTemperatureAndHeartRateMonitoringSystem.c: 112: break;
	goto	l4053
	line	113
	
l4051:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 113: }
	goto	l4053
	line	73
	
l830:	
	
l4053:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Mode),w
	; Switch size 1, requested type "space"
; Number of cases is 6, Range of values is 0 to 5
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           19    10 (average)
; direct_byte           26     8 (fixed)
; jumptable            260     6 (fixed)
; rangetable            10     6 (fixed)
; spacedrange           18     9 (fixed)
; locatedrange           6     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l4019
	xorlw	1^0	; case 1
	skipnz
	goto	l833
	xorlw	2^1	; case 2
	skipnz
	goto	l834
	xorlw	3^2	; case 3
	skipnz
	goto	l835
	xorlw	4^3	; case 4
	skipnz
	goto	l836
	xorlw	5^4	; case 5
	skipnz
	goto	l837
	goto	l4053
	opt asmopt_on

	line	113
	
l832:	
	goto	l4053
	line	114
	
l839:	
	line	72
	goto	l4053
	
l840:	
	line	115
	
l841:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_a2d_read
psect	text607,local,class=CODE,delta=2
global __ptext607
__ptext607:

;; *************** function _a2d_read *****************
;; Defined at:
;;		line 118 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\PatientTemperatureAndHeartRateMonitoringSystem.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_read_a2d_value
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text607
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\PatientTemperatureAndHeartRateMonitoringSystem.c"
	line	118
	global	__size_of_a2d_read
	__size_of_a2d_read	equ	__end_of_a2d_read-_a2d_read
	
_a2d_read:	
	opt	stack 3
; Regs used in _a2d_read: [wreg+status,2+status,0+pclath+cstack]
	line	119
	
l3997:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 119: atodread1 = read_a2d_value(0);
	movlw	(0)
	fcall	_read_a2d_value
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_read_a2d_value)),w
	clrf	(_atodread1+1)
	addwf	(_atodread1+1)
	movf	(0+(?_read_a2d_value)),w
	clrf	(_atodread1)
	addwf	(_atodread1)

	line	120
;PatientTemperatureAndHeartRateMonitoringSystem.c: 120: atodread2 = read_a2d_value(1);
	movlw	(01h)
	fcall	_read_a2d_value
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_read_a2d_value)),w
	clrf	(_atodread2+1)
	addwf	(_atodread2+1)
	movf	(0+(?_read_a2d_value)),w
	clrf	(_atodread2)
	addwf	(_atodread2)

	line	142
	
l844:	
	return
	opt stack 0
GLOBAL	__end_of_a2d_read
	__end_of_a2d_read:
;; =============== function _a2d_read ends ============

	signat	_a2d_read,88
	global	_printf
psect	text608,local,class=CODE,delta=2
global __ptext608
__ptext608:

;; *************** function _printf *****************
;; Defined at:
;;		line 461 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_7(17), STR_6(17), STR_2(18), STR_1(18), 
;; Auto vars:     Size  Location     Type
;;  f               1    6[BANK0 ] PTR const unsigned char 
;;		 -> STR_7(17), STR_6(17), STR_2(18), STR_1(18), 
;;  _val            4    0        struct .
;;  c               1    7[BANK0 ] char 
;;  ap              1    5[BANK0 ] PTR void [1]
;;		 -> ?_printf(2), 
;;  flag            1    0        unsigned char 
;;  prec            1    0        char 
;; Return value:  Size  Location     Type
;;                  2  738[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_putch
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text608
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	461
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
	opt	stack 2
; Regs used in _printf: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;printf@f stored from wreg
	line	537
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printf@f)
	
l3991:	
	movlw	(?_printf)&0ffh
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@ap)
	line	540
	goto	l3995
	
l888:	
	line	545
	
l3993:	
	movf	(printf@c),w
	fcall	_putch
	line	546
	goto	l3995
	line	1525
	
l887:	
	line	540
	
l3995:	
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
	goto	u5091
	goto	u5090
u5091:
	goto	l3993
u5090:
	goto	l890
	
l889:	
	line	1533
;	Return value of _printf is never used
	
l890:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	_check_pc
psect	text609,local,class=CODE,delta=2
global __ptext609
__ptext609:

;; *************** function _check_pc *****************
;; Defined at:
;;		line 215 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\PatientTemperatureAndHeartRateMonitoringSystem.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_ClrBuffer
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text609
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\PatientTemperatureAndHeartRateMonitoringSystem.c"
	line	215
	global	__size_of_check_pc
	__size_of_check_pc	equ	__end_of_check_pc-_check_pc
	
_check_pc:	
	opt	stack 3
; Regs used in _check_pc: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	224
	
l3925:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 216: if(
;PatientTemperatureAndHeartRateMonitoringSystem.c: 217: buffer[0] == '*' &&
;PatientTemperatureAndHeartRateMonitoringSystem.c: 218: buffer[1] == '#' &&
;PatientTemperatureAndHeartRateMonitoringSystem.c: 219: buffer[2] == 'D' &&
;PatientTemperatureAndHeartRateMonitoringSystem.c: 220: buffer[3] == 'R' &&
;PatientTemperatureAndHeartRateMonitoringSystem.c: 221: buffer[4] == 'E' &&
;PatientTemperatureAndHeartRateMonitoringSystem.c: 222: buffer[5] == 'Q' &&
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_buffer),w
	xorlw	02Ah
	skipz
	goto	u4821
	goto	u4820
u4821:
	goto	l3943
u4820:
	
l3927:	
	movf	0+(_buffer)+01h,w
	xorlw	023h
	skipz
	goto	u4831
	goto	u4830
u4831:
	goto	l3943
u4830:
	
l3929:	
	movf	0+(_buffer)+02h,w
	xorlw	044h
	skipz
	goto	u4841
	goto	u4840
u4841:
	goto	l3943
u4840:
	
l3931:	
	movf	0+(_buffer)+03h,w
	xorlw	052h
	skipz
	goto	u4851
	goto	u4850
u4851:
	goto	l3943
u4850:
	
l3933:	
	movf	0+(_buffer)+04h,w
	xorlw	045h
	skipz
	goto	u4861
	goto	u4860
u4861:
	goto	l3943
u4860:
	
l3935:	
	movf	0+(_buffer)+05h,w
	xorlw	051h
	skipz
	goto	u4871
	goto	u4870
u4871:
	goto	l3943
u4870:
	
l3937:	
	movf	0+(_buffer)+06h,w
	xorlw	03Fh
	skipz
	goto	u4881
	goto	u4880
u4881:
	goto	l3943
u4880:
	line	225
	
l3939:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 225: ClrBuffer();
	fcall	_ClrBuffer
	line	226
	
l3941:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 226: nop=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(_nop/8),(_nop)&7
	line	227
;PatientTemperatureAndHeartRateMonitoringSystem.c: 227: }
	goto	l872
	line	228
	
l866:	
	line	239
	
l3943:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 228: else if(
;PatientTemperatureAndHeartRateMonitoringSystem.c: 229: buffer[0] == '*' &&
;PatientTemperatureAndHeartRateMonitoringSystem.c: 230: buffer[1] == '#' &&
;PatientTemperatureAndHeartRateMonitoringSystem.c: 231: buffer[2] == 'D' &&
;PatientTemperatureAndHeartRateMonitoringSystem.c: 232: buffer[3] == 'R' &&
;PatientTemperatureAndHeartRateMonitoringSystem.c: 233: buffer[4] == 'E' &&
;PatientTemperatureAndHeartRateMonitoringSystem.c: 234: buffer[5] == 'Q' &&
	movf	(_buffer),w
	xorlw	02Ah
	skipz
	goto	u4891
	goto	u4890
u4891:
	goto	l3967
u4890:
	
l3945:	
	movf	0+(_buffer)+01h,w
	xorlw	023h
	skipz
	goto	u4901
	goto	u4900
u4901:
	goto	l3967
u4900:
	
l3947:	
	movf	0+(_buffer)+02h,w
	xorlw	044h
	skipz
	goto	u4911
	goto	u4910
u4911:
	goto	l3967
u4910:
	
l3949:	
	movf	0+(_buffer)+03h,w
	xorlw	052h
	skipz
	goto	u4921
	goto	u4920
u4921:
	goto	l3967
u4920:
	
l3951:	
	movf	0+(_buffer)+04h,w
	xorlw	045h
	skipz
	goto	u4931
	goto	u4930
u4931:
	goto	l3967
u4930:
	
l3953:	
	movf	0+(_buffer)+05h,w
	xorlw	051h
	skipz
	goto	u4941
	goto	u4940
u4941:
	goto	l3967
u4940:
	
l3955:	
	movf	0+(_buffer)+06h,w
	xorlw	03Dh
	skipz
	goto	u4951
	goto	u4950
u4951:
	goto	l3967
u4950:
	
l3957:	
	movf	0+(_buffer)+07h,w
	xorlw	031h
	skipz
	goto	u4961
	goto	u4960
u4961:
	goto	l3967
u4960:
	
l3959:	
	movf	0+(_buffer)+08h,w
	xorlw	032h
	skipz
	goto	u4971
	goto	u4970
u4971:
	goto	l3967
u4970:
	
l3961:	
	movf	0+(_buffer)+09h,w
	xorlw	033h
	skipz
	goto	u4981
	goto	u4980
u4981:
	goto	l3967
u4980:
	line	240
	
l3963:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 240: ClrBuffer();
	fcall	_ClrBuffer
	line	241
	
l3965:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 241: nop=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(_nop/8),(_nop)&7
	line	242
;PatientTemperatureAndHeartRateMonitoringSystem.c: 242: }
	goto	l872
	line	243
	
l868:	
	line	254
	
l3967:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 243: else if(
;PatientTemperatureAndHeartRateMonitoringSystem.c: 244: buffer[0] == '*' &&
;PatientTemperatureAndHeartRateMonitoringSystem.c: 245: buffer[1] == '#' &&
;PatientTemperatureAndHeartRateMonitoringSystem.c: 246: buffer[2] == 'B' &&
;PatientTemperatureAndHeartRateMonitoringSystem.c: 247: buffer[3] == 'R' &&
;PatientTemperatureAndHeartRateMonitoringSystem.c: 248: buffer[4] == 'E' &&
;PatientTemperatureAndHeartRateMonitoringSystem.c: 249: buffer[5] == 'Q' &&
	movf	(_buffer),w
	xorlw	02Ah
	skipz
	goto	u4991
	goto	u4990
u4991:
	goto	l870
u4990:
	
l3969:	
	movf	0+(_buffer)+01h,w
	xorlw	023h
	skipz
	goto	u5001
	goto	u5000
u5001:
	goto	l870
u5000:
	
l3971:	
	movf	0+(_buffer)+02h,w
	xorlw	042h
	skipz
	goto	u5011
	goto	u5010
u5011:
	goto	l870
u5010:
	
l3973:	
	movf	0+(_buffer)+03h,w
	xorlw	052h
	skipz
	goto	u5021
	goto	u5020
u5021:
	goto	l870
u5020:
	
l3975:	
	movf	0+(_buffer)+04h,w
	xorlw	045h
	skipz
	goto	u5031
	goto	u5030
u5031:
	goto	l870
u5030:
	
l3977:	
	movf	0+(_buffer)+05h,w
	xorlw	051h
	skipz
	goto	u5041
	goto	u5040
u5041:
	goto	l870
u5040:
	
l3979:	
	movf	0+(_buffer)+06h,w
	xorlw	03Dh
	skipz
	goto	u5051
	goto	u5050
u5051:
	goto	l870
u5050:
	
l3981:	
	movf	0+(_buffer)+07h,w
	xorlw	031h
	skipz
	goto	u5061
	goto	u5060
u5061:
	goto	l870
u5060:
	
l3983:	
	movf	0+(_buffer)+08h,w
	xorlw	032h
	skipz
	goto	u5071
	goto	u5070
u5071:
	goto	l870
u5070:
	
l3985:	
	movf	0+(_buffer)+09h,w
	xorlw	033h
	skipz
	goto	u5081
	goto	u5080
u5081:
	goto	l870
u5080:
	line	255
	
l3987:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 255: ClrBuffer();
	fcall	_ClrBuffer
	line	256
	
l3989:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 256: nop=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(_nop/8),(_nop)&7
	line	257
;PatientTemperatureAndHeartRateMonitoringSystem.c: 257: }
	goto	l872
	line	258
	
l870:	
	line	259
;PatientTemperatureAndHeartRateMonitoringSystem.c: 258: else {
;PatientTemperatureAndHeartRateMonitoringSystem.c: 259: nop=1;
	bsf	(_nop/8),(_nop)&7
	goto	l872
	line	260
	
l871:	
	goto	l872
	
l869:	
	goto	l872
	
l867:	
	line	261
	
l872:	
	return
	opt stack 0
GLOBAL	__end_of_check_pc
	__end_of_check_pc:
;; =============== function _check_pc ends ============

	signat	_check_pc,88
	global	_Serial_NewLine
psect	text610,local,class=CODE,delta=2
global __ptext610
__ptext610:

;; *************** function _Serial_NewLine *****************
;; Defined at:
;;		line 55 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\serial.h"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text610
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\serial.h"
	line	55
	global	__size_of_Serial_NewLine
	__size_of_Serial_NewLine	equ	__end_of_Serial_NewLine-_Serial_NewLine
	
_Serial_NewLine:	
	opt	stack 4
; Regs used in _Serial_NewLine: [wreg]
	line	56
	
l3919:	
;serial.h: 56: while(!TXIF);
	goto	l814
	
l815:	
	
l814:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u4801
	goto	u4800
u4801:
	goto	l814
u4800:
	goto	l3921
	
l816:	
	line	57
	
l3921:	
;serial.h: 57: TXREG = 13;
	movlw	(0Dh)
	movwf	(25)	;volatile
	line	58
;serial.h: 58: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_Serial_NewLine+0)+0,f
u5137:
	clrwdt
decfsz	(??_Serial_NewLine+0)+0,f
	goto	u5137
	nop2	;nop
	clrwdt
opt asmopt_on

	line	59
;serial.h: 59: while(!TXIF);
	goto	l817
	
l818:	
	
l817:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u4811
	goto	u4810
u4811:
	goto	l817
u4810:
	goto	l3923
	
l819:	
	line	60
	
l3923:	
;serial.h: 60: TXREG = 10;
	movlw	(0Ah)
	movwf	(25)	;volatile
	line	61
;serial.h: 61: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_Serial_NewLine+0)+0,f
u5147:
	clrwdt
decfsz	(??_Serial_NewLine+0)+0,f
	goto	u5147
	nop2	;nop
	clrwdt
opt asmopt_on

	line	62
	
l820:	
	return
	opt stack 0
GLOBAL	__end_of_Serial_NewLine
	__end_of_Serial_NewLine:
;; =============== function _Serial_NewLine ends ============

	signat	_Serial_NewLine,88
	global	_Serial_Print
psect	text611,local,class=CODE,delta=2
global __ptext611
__ptext611:

;; *************** function _Serial_Print *****************
;; Defined at:
;;		line 22 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\serial.h"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     PTR unsigned char 
;;		 -> STR_5(7), STR_4(7), STR_3(11), 
;; Auto vars:     Size  Location     Type
;;  a               1    1[BANK0 ] PTR unsigned char 
;;		 -> STR_5(7), STR_4(7), STR_3(11), 
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
psect	text611
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\serial.h"
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
	
l3909:	
;serial.h: 23: while( *a!='\0'){
	goto	l3917
	
l785:	
	line	24
;serial.h: 24: while(!TXIF);
	goto	l786
	
l787:	
	
l786:	
	btfss	(100/8),(100)&7
	goto	u4781
	goto	u4780
u4781:
	goto	l786
u4780:
	goto	l3911
	
l788:	
	line	25
	
l3911:	
;serial.h: 25: TXREG = *a;
	movf	(Serial_Print@a),w
	movwf	fsr0
	fcall	stringdir
	movwf	(25)	;volatile
	line	26
	
l3913:	
;serial.h: 26: _delay(10);
	opt asmopt_off
movlw	3
movwf	(??_Serial_Print+0)+0,f
u5157:
decfsz	(??_Serial_Print+0)+0,f
	goto	u5157
opt asmopt_on

	line	27
	
l3915:	
;serial.h: 27: a = a+1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Serial_Print@a),w
	addlw	01h
	movwf	(??_Serial_Print+0)+0
	movf	(??_Serial_Print+0)+0,w
	movwf	(Serial_Print@a)
	goto	l3917
	line	28
	
l784:	
	line	23
	
l3917:	
	movf	(Serial_Print@a),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u4791
	goto	u4790
u4791:
	goto	l786
u4790:
	goto	l790
	
l789:	
	line	30
;serial.h: 28: }
;serial.h: 29: return 1;
;	Return value of _Serial_Print is never used
	
l790:	
	return
	opt stack 0
GLOBAL	__end_of_Serial_Print
	__end_of_Serial_Print:
;; =============== function _Serial_Print ends ============

	signat	_Serial_Print,4216
	global	_Serial_Init
psect	text612,local,class=CODE,delta=2
global __ptext612
__ptext612:

;; *************** function _Serial_Init *****************
;; Defined at:
;;		line 5 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\serial.h"
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
psect	text612
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\serial.h"
	line	5
	global	__size_of_Serial_Init
	__size_of_Serial_Init	equ	__end_of_Serial_Init-_Serial_Init
	
_Serial_Init:	
	opt	stack 4
; Regs used in _Serial_Init: [wreg]
	line	7
	
l3887:	
;serial.h: 7: SPBRG = 25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	8
	
l3889:	
;serial.h: 8: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	line	9
	
l3891:	
;serial.h: 9: RX9 = 0;
	bcf	(198/8),(198)&7
	line	10
	
l3893:	
;serial.h: 10: CREN = 1;
	bsf	(196/8),(196)&7
	line	11
	
l3895:	
;serial.h: 11: TX9 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1222/8)^080h,(1222)&7
	line	12
	
l3897:	
;serial.h: 12: TXEN = 1;
	bsf	(1221/8)^080h,(1221)&7
	line	13
	
l3899:	
;serial.h: 13: SYNC = 0;
	bcf	(1220/8)^080h,(1220)&7
	line	14
	
l3901:	
;serial.h: 14: BRGH = 1;
	bsf	(1218/8)^080h,(1218)&7
	line	15
;serial.h: 15: SPBRG = 25;
	movlw	(019h)
	movwf	(153)^080h	;volatile
	line	16
	
l3903:	
;serial.h: 16: RCIE = 1;
	bsf	(1125/8)^080h,(1125)&7
	line	17
	
l3905:	
;serial.h: 17: TXIE = 0;
	bcf	(1124/8)^080h,(1124)&7
	line	18
	
l3907:	
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
u5167:
	decfsz	((??_Serial_Init+0)+0),f
	goto	u5167
	decfsz	((??_Serial_Init+0)+0+1),f
	goto	u5167
	decfsz	((??_Serial_Init+0)+0+2),f
	goto	u5167
	nop2
opt asmopt_on

	line	20
	
l781:	
	return
	opt stack 0
GLOBAL	__end_of_Serial_Init
	__end_of_Serial_Init:
;; =============== function _Serial_Init ends ============

	signat	_Serial_Init,88
	global	_read_a2d_value
psect	text613,local,class=CODE,delta=2
global __ptext613
__ptext613:

;; *************** function _read_a2d_value *****************
;; Defined at:
;;		line 14 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\a2d.h"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    4[BANK0 ] unsigned char 
;;  a2d_value       2    5[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_a2d_read
;; This function uses a non-reentrant model
;;
psect	text613
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\a2d.h"
	line	14
	global	__size_of_read_a2d_value
	__size_of_read_a2d_value	equ	__end_of_read_a2d_value-_read_a2d_value
	
_read_a2d_value:	
	opt	stack 3
; Regs used in _read_a2d_value: [wreg+status,2+status,0]
;read_a2d_value@channel stored from wreg
	line	17
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(read_a2d_value@channel)
	
l3869:	
;a2d.h: 16: unsigned int a2d_value;
;a2d.h: 17: channel = channel << 3;
	movf	(read_a2d_value@channel),w
	movwf	(??_read_a2d_value+0)+0
	movlw	(03h)-1
u4765:
	clrc
	rlf	(??_read_a2d_value+0)+0,f
	addlw	-1
	skipz
	goto	u4765
	clrc
	rlf	(??_read_a2d_value+0)+0,w
	movwf	(??_read_a2d_value+1)+0
	movf	(??_read_a2d_value+1)+0,w
	movwf	(read_a2d_value@channel)
	line	18
	
l3871:	
;a2d.h: 18: ADCON0 = ADCON0 & 0b11000111;
	movf	(31),w
	andlw	0C7h
	movwf	(31)	;volatile
	line	19
	
l3873:	
;a2d.h: 19: ADCON0 = ADCON0 | channel;
	movf	(31),w	;volatile
	iorwf	(read_a2d_value@channel),w
	movwf	(31)	;volatile
	line	20
	
l3875:	
;a2d.h: 20: ADON = 1;
	bsf	(248/8),(248)&7
	line	21
	
l3877:	
;a2d.h: 21: _delay(50);
	opt asmopt_off
movlw	16
movwf	(??_read_a2d_value+0)+0,f
u5177:
decfsz	(??_read_a2d_value+0)+0,f
	goto	u5177
	clrwdt
opt asmopt_on

	line	22
	
l3879:	
;a2d.h: 22: GO = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7
	line	23
;a2d.h: 23: while( GO == 1 );
	goto	l775
	
l776:	
	
l775:	
	btfsc	(250/8),(250)&7
	goto	u4771
	goto	u4770
u4771:
	goto	l775
u4770:
	goto	l3881
	
l777:	
	line	27
	
l3881:	
;a2d.h: 24: {
;a2d.h: 26: }
;a2d.h: 27: a2d_value = ADRESH;
	movf	(30),w	;volatile
	movwf	(??_read_a2d_value+0)+0
	clrf	(??_read_a2d_value+0)+0+1
	movf	0+(??_read_a2d_value+0)+0,w
	movwf	(read_a2d_value@a2d_value)
	movf	1+(??_read_a2d_value+0)+0,w
	movwf	(read_a2d_value@a2d_value+1)
	line	28
;a2d.h: 28: a2d_value = a2d_value << 8;
	movf	(read_a2d_value@a2d_value),w
	movwf	(??_read_a2d_value+0)+0+1
	clrf	(??_read_a2d_value+0)+0
	movf	0+(??_read_a2d_value+0)+0,w
	movwf	(read_a2d_value@a2d_value)
	movf	1+(??_read_a2d_value+0)+0,w
	movwf	(read_a2d_value@a2d_value+1)
	line	29
;a2d.h: 29: a2d_value = a2d_value + ADRESL;
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
	line	30
	
l3883:	
;a2d.h: 30: return a2d_value;
	movf	(read_a2d_value@a2d_value+1),w
	clrf	(?_read_a2d_value+1)
	addwf	(?_read_a2d_value+1)
	movf	(read_a2d_value@a2d_value),w
	clrf	(?_read_a2d_value)
	addwf	(?_read_a2d_value)

	goto	l778
	
l3885:	
	line	32
	
l778:	
	return
	opt stack 0
GLOBAL	__end_of_read_a2d_value
	__end_of_read_a2d_value:
;; =============== function _read_a2d_value ends ============

	signat	_read_a2d_value,4218
	global	_position
psect	text614,local,class=CODE,delta=2
global __ptext614
__ptext614:

;; *************** function _position *****************
;; Defined at:
;;		line 120 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\lcd.h"
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
psect	text614
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\lcd.h"
	line	120
	global	__size_of_position
	__size_of_position	equ	__end_of_position-_position
	
_position:	
	opt	stack 3
; Regs used in _position: [wreg+status,2+status,0+pclath+cstack]
;position@row stored from wreg
	line	122
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(position@row)
	
l3849:	
;lcd.h: 121: char post ;
;lcd.h: 122: if( row == 1 ) row = 128;
	movf	(position@row),w
	xorlw	01h
	skipz
	goto	u4741
	goto	u4740
u4741:
	goto	l764
u4740:
	
l3851:	
	movlw	(080h)
	movwf	(??_position+0)+0
	movf	(??_position+0)+0,w
	movwf	(position@row)
	
l764:	
	line	123
;lcd.h: 123: if( row == 2 ) row = 192;
	movf	(position@row),w
	xorlw	02h
	skipz
	goto	u4751
	goto	u4750
u4751:
	goto	l3855
u4750:
	
l3853:	
	movlw	(0C0h)
	movwf	(??_position+0)+0
	movf	(??_position+0)+0,w
	movwf	(position@row)
	goto	l3855
	
l765:	
	line	124
	
l3855:	
;lcd.h: 124: post = row + collum - 1;
	movf	(position@collum),w
	addwf	(position@row),w
	addlw	0FFh
	movwf	(??_position+0)+0
	movf	(??_position+0)+0,w
	movwf	(position@post)
	line	125
	
l3857:	
;lcd.h: 125: RE0 = 0;
	bcf	(72/8),(72)&7
	line	126
	
l3859:	
;lcd.h: 126: lcd_data = post ;
	movf	(position@post),w
	movwf	(??_position+0)+0
	movf	(??_position+0)+0,w
	movwf	(_lcd_data)
	line	127
	
l3861:	
;lcd.h: 127: lcd_add();
	fcall	_lcd_add
	line	128
	
l3863:	
;lcd.h: 128: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_position+0)+0+1),f
	movlw	251
movwf	((??_position+0)+0),f
u5187:
	decfsz	((??_position+0)+0),f
	goto	u5187
	decfsz	((??_position+0)+0+1),f
	goto	u5187
	nop2
opt asmopt_on

	line	129
	
l3865:	
;lcd.h: 129: row = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(position@row)
	line	130
	
l3867:	
;lcd.h: 130: collum = 0;
	clrf	(position@collum)
	line	131
	
l766:	
	return
	opt stack 0
GLOBAL	__end_of_position
	__end_of_position:
;; =============== function _position ends ============

	signat	_position,8312
	global	_clr_display
psect	text615,local,class=CODE,delta=2
global __ptext615
__ptext615:

;; *************** function _clr_display *****************
;; Defined at:
;;		line 97 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\lcd.h"
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
psect	text615
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\lcd.h"
	line	97
	global	__size_of_clr_display
	__size_of_clr_display	equ	__end_of_clr_display-_clr_display
	
_clr_display:	
	opt	stack 3
; Regs used in _clr_display: [wreg+status,2+status,0+pclath+cstack]
	line	98
	
l3841:	
;lcd.h: 98: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	99
	
l3843:	
;lcd.h: 99: lcd_data = 0b00000001;
	clrf	(_lcd_data)
	bsf	status,0
	rlf	(_lcd_data),f
	line	100
	
l3845:	
;lcd.h: 100: lcd_add();
	fcall	_lcd_add
	line	101
	
l3847:	
;lcd.h: 101: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_clr_display+0)+0+1),f
	movlw	251
movwf	((??_clr_display+0)+0),f
u5197:
	decfsz	((??_clr_display+0)+0),f
	goto	u5197
	decfsz	((??_clr_display+0)+0+1),f
	goto	u5197
	nop2
opt asmopt_on

	line	102
	
l756:	
	return
	opt stack 0
GLOBAL	__end_of_clr_display
	__end_of_clr_display:
;; =============== function _clr_display ends ============

	signat	_clr_display,88
	global	_putch
psect	text616,local,class=CODE,delta=2
global __ptext616
__ptext616:

;; *************** function _putch *****************
;; Defined at:
;;		line 88 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\lcd.h"
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
psect	text616
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\lcd.h"
	line	88
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 2
; Regs used in _putch: [wreg+status,2+status,0+pclath+cstack]
;putch@print_value stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(putch@print_value)
	line	89
	
l3833:	
;lcd.h: 89: RE0 = 1;
	bsf	(72/8),(72)&7
	line	90
	
l3835:	
;lcd.h: 90: lcd_data = print_value;
	movf	(putch@print_value),w
	movwf	(??_putch+0)+0
	movf	(??_putch+0)+0,w
	movwf	(_lcd_data)
	line	91
	
l3837:	
;lcd.h: 91: lcd_add();
	fcall	_lcd_add
	line	92
	
l3839:	
;lcd.h: 92: _delay(100);
	opt asmopt_off
movlw	33
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_putch+0)+0,f
u5207:
decfsz	(??_putch+0)+0,f
	goto	u5207
opt asmopt_on

	line	93
	
l753:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_lcd_init
psect	text617,local,class=CODE,delta=2
global __ptext617
__ptext617:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 57 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\lcd.h"
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
psect	text617
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\lcd.h"
	line	57
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 3
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	59
	
l3795:	
;lcd.h: 59: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	60
	
l3797:	
;lcd.h: 60: lcd_data = 0b00101000;
	movlw	(028h)
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(_lcd_data)
	line	61
	
l3799:	
;lcd.h: 61: lcd_add();
	fcall	_lcd_add
	line	62
	
l3801:	
;lcd.h: 62: _delay(40000);
	opt asmopt_off
movlw	52
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+1),f
	movlw	241
movwf	((??_lcd_init+0)+0),f
u5217:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5217
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5217
	nop2
opt asmopt_on

	line	63
	
l3803:	
;lcd.h: 63: lcd_data = 0b00101000;
	movlw	(028h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(_lcd_data)
	line	64
	
l3805:	
;lcd.h: 64: lcd_add();
	fcall	_lcd_add
	line	65
;lcd.h: 65: _delay(40000);
	opt asmopt_off
movlw	52
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+1),f
	movlw	241
movwf	((??_lcd_init+0)+0),f
u5227:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5227
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5227
	nop2
opt asmopt_on

	line	66
;lcd.h: 66: lcd_data = 0b00000110;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(_lcd_data)
	line	67
	
l3807:	
;lcd.h: 67: lcd_add();
	fcall	_lcd_add
	line	68
	
l3809:	
;lcd.h: 68: _delay(40000);
	opt asmopt_off
movlw	52
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+1),f
	movlw	241
movwf	((??_lcd_init+0)+0),f
u5237:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5237
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5237
	nop2
opt asmopt_on

	line	69
	
l3811:	
;lcd.h: 69: lcd_data = 0b00000110;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(_lcd_data)
	line	70
	
l3813:	
;lcd.h: 70: lcd_add();
	fcall	_lcd_add
	line	71
;lcd.h: 71: _delay(40000);
	opt asmopt_off
movlw	52
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+1),f
	movlw	241
movwf	((??_lcd_init+0)+0),f
u5247:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5247
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5247
	nop2
opt asmopt_on

	line	72
;lcd.h: 72: lcd_data = 0b00001101;
	movlw	(0Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(_lcd_data)
	line	73
	
l3815:	
;lcd.h: 73: lcd_add();
	fcall	_lcd_add
	line	74
	
l3817:	
;lcd.h: 74: _delay(40000);
	opt asmopt_off
movlw	52
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+1),f
	movlw	241
movwf	((??_lcd_init+0)+0),f
u5257:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5257
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5257
	nop2
opt asmopt_on

	line	75
	
l3819:	
;lcd.h: 75: lcd_data = 0b00001101;
	movlw	(0Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(_lcd_data)
	line	76
	
l3821:	
;lcd.h: 76: lcd_add();
	fcall	_lcd_add
	line	77
;lcd.h: 77: _delay(40000);
	opt asmopt_off
movlw	52
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+1),f
	movlw	241
movwf	((??_lcd_init+0)+0),f
u5267:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5267
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5267
	nop2
opt asmopt_on

	line	78
;lcd.h: 78: lcd_data = 0b00011000;
	movlw	(018h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(_lcd_data)
	line	79
	
l3823:	
;lcd.h: 79: lcd_add();
	fcall	_lcd_add
	line	80
	
l3825:	
;lcd.h: 80: _delay(40000);
	opt asmopt_off
movlw	52
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+1),f
	movlw	241
movwf	((??_lcd_init+0)+0),f
u5277:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5277
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5277
	nop2
opt asmopt_on

	line	81
	
l3827:	
;lcd.h: 81: lcd_data = 0b00000001;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_lcd_data)
	bsf	status,0
	rlf	(_lcd_data),f
	line	82
	
l3829:	
;lcd.h: 82: lcd_add();
	fcall	_lcd_add
	line	83
	
l3831:	
;lcd.h: 83: _delay(40000);
	opt asmopt_off
movlw	52
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+1),f
	movlw	241
movwf	((??_lcd_init+0)+0),f
u5287:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5287
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5287
	nop2
opt asmopt_on

	line	85
	
l750:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_ClrBuffer
psect	text618,local,class=CODE,delta=2
global __ptext618
__ptext618:

;; *************** function _ClrBuffer *****************
;; Defined at:
;;		line 266 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\PatientTemperatureAndHeartRateMonitoringSystem.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    0[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
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
;;		_check_pc
;; This function uses a non-reentrant model
;;
psect	text618
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\PatientTemperatureAndHeartRateMonitoringSystem.c"
	line	266
	global	__size_of_ClrBuffer
	__size_of_ClrBuffer	equ	__end_of_ClrBuffer-_ClrBuffer
	
_ClrBuffer:	
	opt	stack 3
; Regs used in _ClrBuffer: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	268
	
l3687:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 267: int i;
;PatientTemperatureAndHeartRateMonitoringSystem.c: 268: for(i=0; i<20; i++){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(ClrBuffer@i)
	clrf	(ClrBuffer@i+1)
	
l3689:	
	movf	(ClrBuffer@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(014h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4325
	movlw	low(014h)
	subwf	(ClrBuffer@i),w
u4325:

	skipc
	goto	u4321
	goto	u4320
u4321:
	goto	l3693
u4320:
	goto	l880
	
l3691:	
	goto	l880
	
l878:	
	line	269
	
l3693:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 269: buffer[i] = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ClrBuffer@i),w
	addlw	_buffer&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	268
	
l3695:	
	movlw	low(01h)
	addwf	(ClrBuffer@i),f
	skipnc
	incf	(ClrBuffer@i+1),f
	movlw	high(01h)
	addwf	(ClrBuffer@i+1),f
	
l3697:	
	movf	(ClrBuffer@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(014h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4335
	movlw	low(014h)
	subwf	(ClrBuffer@i),w
u4335:

	skipc
	goto	u4331
	goto	u4330
u4331:
	goto	l3693
u4330:
	goto	l880
	
l879:	
	line	271
	
l880:	
	return
	opt stack 0
GLOBAL	__end_of_ClrBuffer
	__end_of_ClrBuffer:
;; =============== function _ClrBuffer ends ============

	signat	_ClrBuffer,88
	global	_Timer1_Init
psect	text619,local,class=CODE,delta=2
global __ptext619
__ptext619:

;; *************** function _Timer1_Init *****************
;; Defined at:
;;		line 4 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\timer1.h"
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
psect	text619
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\timer1.h"
	line	4
	global	__size_of_Timer1_Init
	__size_of_Timer1_Init	equ	__end_of_Timer1_Init-_Timer1_Init
	
_Timer1_Init:	
	opt	stack 4
; Regs used in _Timer1_Init: [wreg]
	line	6
	
l3621:	
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
	
l3623:	
;timer1.h: 11: TMR1L = 0xB0;
	movlw	(0B0h)
	movwf	(14)	;volatile
	line	12
;timer1.h: 12: TMR1H = 60;
	movlw	(03Ch)
	movwf	(15)	;volatile
	line	13
	
l3625:	
;timer1.h: 13: TMR1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	14
	
l826:	
	return
	opt stack 0
GLOBAL	__end_of_Timer1_Init
	__end_of_Timer1_Init:
;; =============== function _Timer1_Init ends ============

	signat	_Timer1_Init,88
	global	_enableInterrupt
psect	text620,local,class=CODE,delta=2
global __ptext620
__ptext620:

;; *************** function _enableInterrupt *****************
;; Defined at:
;;		line 7 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\interrupts.h"
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
psect	text620
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\interrupts.h"
	line	7
	global	__size_of_enableInterrupt
	__size_of_enableInterrupt	equ	__end_of_enableInterrupt-_enableInterrupt
	
_enableInterrupt:	
	opt	stack 4
; Regs used in _enableInterrupt: []
	line	9
	
l3619:	
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
	
l823:	
	return
	opt stack 0
GLOBAL	__end_of_enableInterrupt
	__end_of_enableInterrupt:
;; =============== function _enableInterrupt ends ============

	signat	_enableInterrupt,88
	global	_atod_init
psect	text621,local,class=CODE,delta=2
global __ptext621
__ptext621:

;; *************** function _atod_init *****************
;; Defined at:
;;		line 9 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\a2d.h"
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
psect	text621
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\a2d.h"
	line	9
	global	__size_of_atod_init
	__size_of_atod_init	equ	__end_of_atod_init-_atod_init
	
_atod_init:	
	opt	stack 4
; Regs used in _atod_init: [wreg]
	line	10
	
l3593:	
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
	
l772:	
	return
	opt stack 0
GLOBAL	__end_of_atod_init
	__end_of_atod_init:
;; =============== function _atod_init ends ============

	signat	_atod_init,88
	global	_lcd_add
psect	text622,local,class=CODE,delta=2
global __ptext622
__ptext622:

;; *************** function _lcd_add *****************
;; Defined at:
;;		line 135 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\lcd.h"
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
;;		_lcd_init
;;		_putch
;;		_clr_display
;;		_position
;;		_curser
;; This function uses a non-reentrant model
;;
psect	text622
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\lcd.h"
	line	135
	global	__size_of_lcd_add
	__size_of_lcd_add	equ	__end_of_lcd_add-_lcd_add
	
_lcd_add:	
	opt	stack 3
; Regs used in _lcd_add: [wreg+status,2+status,0]
	line	136
	
l3549:	
;lcd.h: 136: lcd_data_high = lcd_data >> 4;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??_lcd_add+0)+0
	movlw	04h
u3805:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u3805
	movf	0+(??_lcd_add+0)+0,w
	movwf	(??_lcd_add+1)+0
	movf	(??_lcd_add+1)+0,w
	movwf	(_lcd_data_high)
	line	137
;lcd.h: 137: lcd_data_low = lcd_data << 4;
	movf	(_lcd_data),w
	movwf	(??_lcd_add+0)+0
	movlw	(04h)-1
u3815:
	clrc
	rlf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u3815
	clrc
	rlf	(??_lcd_add+0)+0,w
	movwf	(??_lcd_add+1)+0
	movf	(??_lcd_add+1)+0,w
	movwf	(_lcd_data_low)
	line	138
;lcd.h: 138: lcd_data_low = lcd_data_low >> 4;
	movf	(_lcd_data_low),w
	movwf	(??_lcd_add+0)+0
	movlw	04h
u3825:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u3825
	movf	0+(??_lcd_add+0)+0,w
	movwf	(??_lcd_add+1)+0
	movf	(??_lcd_add+1)+0,w
	movwf	(_lcd_data_low)
	line	140
	
l3551:	
;lcd.h: 140: bit0 = lcd_data;
	bcf	(_bit0/8),(_bit0)&7
	btfss	(_lcd_data),0
	goto	u3835
	bsf	(_bit0/8),(_bit0)&7
u3835:

	line	141
;lcd.h: 141: bit1 = lcd_data>>1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??_lcd_add+0)+0
	movlw	01h
u3845:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u3845
	bcf	(_bit1/8),(_bit1)&7
	btfss	0+(??_lcd_add+0)+0,0
	goto	u3855
	bsf	(_bit1/8),(_bit1)&7
u3855:

	line	142
;lcd.h: 142: bit2 = lcd_data>>2;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??_lcd_add+0)+0
	movlw	02h
u3865:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u3865
	bcf	(_bit2/8),(_bit2)&7
	btfss	0+(??_lcd_add+0)+0,0
	goto	u3875
	bsf	(_bit2/8),(_bit2)&7
u3875:

	line	143
;lcd.h: 143: bit3 = lcd_data>>3;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??_lcd_add+0)+0
	movlw	03h
u3885:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u3885
	bcf	(_bit3/8),(_bit3)&7
	btfss	0+(??_lcd_add+0)+0,0
	goto	u3895
	bsf	(_bit3/8),(_bit3)&7
u3895:

	line	144
;lcd.h: 144: bit4 = lcd_data>>4;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??_lcd_add+0)+0
	movlw	04h
u3905:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u3905
	bcf	(_bit4/8),(_bit4)&7
	btfss	0+(??_lcd_add+0)+0,0
	goto	u3915
	bsf	(_bit4/8),(_bit4)&7
u3915:

	line	145
;lcd.h: 145: bit5 = lcd_data>>5;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??_lcd_add+0)+0
	movlw	05h
u3925:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u3925
	bcf	(_bit5/8),(_bit5)&7
	btfss	0+(??_lcd_add+0)+0,0
	goto	u3935
	bsf	(_bit5/8),(_bit5)&7
u3935:

	line	146
;lcd.h: 146: bit6 = lcd_data>>6;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??_lcd_add+0)+0
	movlw	06h
u3945:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u3945
	bcf	(_bit6/8),(_bit6)&7
	btfss	0+(??_lcd_add+0)+0,0
	goto	u3955
	bsf	(_bit6/8),(_bit6)&7
u3955:

	line	147
;lcd.h: 147: bit7 = lcd_data>>7;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??_lcd_add+0)+0
	movlw	07h
u3965:
	clrc
	rrf	(??_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u3965
	bcf	(_bit7/8),(_bit7)&7
	btfss	0+(??_lcd_add+0)+0,0
	goto	u3975
	bsf	(_bit7/8),(_bit7)&7
u3975:

	line	149
	
l3553:	
;lcd.h: 149: RE1 = bit4;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(_bit4/8),(_bit4)&7
	goto	u3981
	goto	u3980
	
u3981:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	goto	u3994
u3980:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
u3994:
	line	150
	
l3555:	
;lcd.h: 150: RB4 = bit5;
	btfsc	(_bit5/8),(_bit5)&7
	goto	u4001
	goto	u4000
	
u4001:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7
	goto	u4014
u4000:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7
u4014:
	line	151
	
l3557:	
;lcd.h: 151: RE2 = bit6;
	btfsc	(_bit6/8),(_bit6)&7
	goto	u4021
	goto	u4020
	
u4021:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(74/8),(74)&7
	goto	u4034
u4020:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
u4034:
	line	152
	
l3559:	
;lcd.h: 152: RB5 = bit7;
	btfsc	(_bit7/8),(_bit7)&7
	goto	u4041
	goto	u4040
	
u4041:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(53/8),(53)&7
	goto	u4054
u4040:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
u4054:
	line	154
	
l3561:	
;lcd.h: 154: RB3 = 1;
	bsf	(51/8),(51)&7
	line	156
	
l3563:	
;lcd.h: 156: RB3 = 0;
	bcf	(51/8),(51)&7
	line	159
	
l3565:	
;lcd.h: 159: RE1 = bit0;
	btfsc	(_bit0/8),(_bit0)&7
	goto	u4061
	goto	u4060
	
u4061:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	goto	u4074
u4060:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
u4074:
	line	160
	
l3567:	
;lcd.h: 160: RB4 = bit1;
	btfsc	(_bit1/8),(_bit1)&7
	goto	u4081
	goto	u4080
	
u4081:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7
	goto	u4094
u4080:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7
u4094:
	line	161
	
l3569:	
;lcd.h: 161: RE2 = bit2;
	btfsc	(_bit2/8),(_bit2)&7
	goto	u4101
	goto	u4100
	
u4101:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(74/8),(74)&7
	goto	u4114
u4100:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
u4114:
	line	162
	
l3571:	
;lcd.h: 162: RB5 = bit3;
	btfsc	(_bit3/8),(_bit3)&7
	goto	u4121
	goto	u4120
	
u4121:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(53/8),(53)&7
	goto	u4134
u4120:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
u4134:
	line	164
	
l3573:	
;lcd.h: 164: RB3 = 1;
	bsf	(51/8),(51)&7
	line	166
	
l3575:	
;lcd.h: 166: RB3 = 0;
	bcf	(51/8),(51)&7
	line	168
	
l769:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_add
	__end_of_lcd_add:
;; =============== function _lcd_add ends ============

	signat	_lcd_add,88
	global	_Setup_IOports
psect	text623,local,class=CODE,delta=2
global __ptext623
__ptext623:

;; *************** function _Setup_IOports *****************
;; Defined at:
;;		line 51 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\setup.h"
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
psect	text623
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\setup.h"
	line	51
	global	__size_of_Setup_IOports
	__size_of_Setup_IOports	equ	__end_of_Setup_IOports-_Setup_IOports
	
_Setup_IOports:	
	opt	stack 4
; Regs used in _Setup_IOports: [wreg+status,2]
	line	53
	
l3535:	
;setup.h: 53: TRISA = 0b11111111;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	54
	
l3537:	
;setup.h: 54: PORTA = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	56
	
l3539:	
;setup.h: 56: TRISB = 0b11000000;
	movlw	(0C0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	57
;setup.h: 57: PORTB = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	59
	
l3541:	
;setup.h: 59: TRISC = 0b10000000;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	60
	
l3543:	
;setup.h: 60: PORTC = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	62
;setup.h: 62: TRISD = 0b00001100;
	movlw	(0Ch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	63
	
l3545:	
;setup.h: 63: PORTD = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	65
	
l3547:	
;setup.h: 65: TRISE = 0b10000000;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(137)^080h	;volatile
	line	66
;setup.h: 66: PORTE = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	67
	
l747:	
	return
	opt stack 0
GLOBAL	__end_of_Setup_IOports
	__end_of_Setup_IOports:
;; =============== function _Setup_IOports ends ============

	signat	_Setup_IOports,88
	global	_isr
psect	text624,local,class=CODE,delta=2
global __ptext624
__ptext624:

;; *************** function _isr *****************
;; Defined at:
;;		line 150 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\PatientTemperatureAndHeartRateMonitoringSystem.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  x               2   12[COMMON] int 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          6       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		i1_lcd_init
;;		i1_clr_display
;;		___lwmod
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text624
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\PatientTemperatureAndHeartRateMonitoringSystem.c"
	line	150
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
	movwf	(??_isr+2)
	movf	fsr0,w
	movwf	(??_isr+3)
	movf	pclath,w
	movwf	(??_isr+4)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_isr+5)
	ljmp	_isr
psect	text624
	line	151
	
i1l3627:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 151: if(TMR1IF==1){
	btfss	(96/8),(96)&7
	goto	u422_21
	goto	u422_20
u422_21:
	goto	i1l3659
u422_20:
	line	152
	
i1l3629:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 152: msecond ++;
	movlw	low(01h)
	addwf	(_msecond),f
	skipnc
	incf	(_msecond+1),f
	movlw	high(01h)
	addwf	(_msecond+1),f
	line	153
;PatientTemperatureAndHeartRateMonitoringSystem.c: 153: if(msecond == 10){
	movlw	0Ah
	xorwf	(_msecond),w
	iorwf	(_msecond+1),w
	skipz
	goto	u423_21
	goto	u423_20
u423_21:
	goto	i1l851
u423_20:
	line	154
	
i1l3631:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 154: second ++;
	movlw	low(01h)
	addwf	(_second),f
	skipnc
	incf	(_second+1),f
	movlw	high(01h)
	addwf	(_second+1),f
	line	157
;PatientTemperatureAndHeartRateMonitoringSystem.c: 157: RD6 = !RD6;
	movlw	1<<((70)&7)
	xorwf	((70)/8),f
	line	158
	
i1l3633:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 158: msecond = 0;
	clrf	(_msecond)
	clrf	(_msecond+1)
	line	159
	
i1l3635:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 159: if( second == 60){
	movlw	03Ch
	xorwf	(_second),w
	iorwf	(_second+1),w
	skipz
	goto	u424_21
	goto	u424_20
u424_21:
	goto	i1l851
u424_20:
	line	160
	
i1l3637:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 160: minute ++;
	movlw	low(01h)
	addwf	(_minute),f
	skipnc
	incf	(_minute+1),f
	movlw	high(01h)
	addwf	(_minute+1),f
	line	161
	
i1l3639:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 161: lcd_init();
	fcall	i1_lcd_init
	line	162
	
i1l3641:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 162: clr_display();
	fcall	i1_clr_display
	line	163
	
i1l3643:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 163: second = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_second)
	clrf	(_second+1)
	line	166
	
i1l3645:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 165: int x;
;PatientTemperatureAndHeartRateMonitoringSystem.c: 166: x = minute%time_period ;
	movf	(_time_period),w
	movwf	(??_isr+0)+0
	clrf	(??_isr+0)+0+1
	movf	0+(??_isr+0)+0,w
	movwf	(?___lwmod)
	movf	1+(??_isr+0)+0,w
	movwf	(?___lwmod+1)
	movf	(_minute+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_minute),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	clrf	(isr@x+1)
	addwf	(isr@x+1)
	movf	(0+(?___lwmod)),w
	clrf	(isr@x)
	addwf	(isr@x)

	goto	i1l3649
	line	167
	
i1l3647:	
	goto	i1l3649
	line	170
	
i1l853:	
	line	173
	
i1l3649:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 170: }
;PatientTemperatureAndHeartRateMonitoringSystem.c: 173: if( minute == 60){
	movlw	03Ch
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_minute),w
	iorwf	(_minute+1),w
	skipz
	goto	u425_21
	goto	u425_20
u425_21:
	goto	i1l851
u425_20:
	line	174
	
i1l3651:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 174: minute = 0;
	clrf	(_minute)
	clrf	(_minute+1)
	line	175
	
i1l3653:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 175: hour ++;
	movlw	low(01h)
	addwf	(_hour),f
	skipnc
	incf	(_hour+1),f
	movlw	high(01h)
	addwf	(_hour+1),f
	goto	i1l851
	line	176
	
i1l3655:	
	goto	i1l851
	
i1l855:	
	goto	i1l851
	line	177
	
i1l854:	
	goto	i1l851
	line	178
	
i1l852:	
	line	179
	
i1l851:	
	line	180
;PatientTemperatureAndHeartRateMonitoringSystem.c: 177: }
;PatientTemperatureAndHeartRateMonitoringSystem.c: 178: }
;PatientTemperatureAndHeartRateMonitoringSystem.c: 179: }
;PatientTemperatureAndHeartRateMonitoringSystem.c: 180: TMR1IF = 0;
	bcf	(96/8),(96)&7
	line	181
	
i1l3657:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 181: TMR1L = 0xB0;
	movlw	(0B0h)
	movwf	(14)	;volatile
	line	182
;PatientTemperatureAndHeartRateMonitoringSystem.c: 182: TMR1H = 0x3C;
	movlw	(03Ch)
	movwf	(15)	;volatile
	goto	i1l3659
	line	183
	
i1l850:	
	line	184
	
i1l3659:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 183: }
;PatientTemperatureAndHeartRateMonitoringSystem.c: 184: if( RCIF == 1){
	btfss	(101/8),(101)&7
	goto	u426_21
	goto	u426_20
u426_21:
	goto	i1l3679
u426_20:
	line	185
	
i1l3661:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 185: if ((FERR == 0) && (OERR == 0))
	btfsc	(194/8),(194)&7
	goto	u427_21
	goto	u427_20
u427_21:
	goto	i1l857
u427_20:
	
i1l3663:	
	btfsc	(193/8),(193)&7
	goto	u428_21
	goto	u428_20
u428_21:
	goto	i1l857
u428_20:
	line	187
	
i1l3665:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 186: {
;PatientTemperatureAndHeartRateMonitoringSystem.c: 187: wtmp = RCREG;
	movf	(26),w	;volatile
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	movwf	(_wtmp)
	line	188
;PatientTemperatureAndHeartRateMonitoringSystem.c: 188: if( RCREG=='*' || j > 20-1 ){
	movf	(26),w	;volatile
	xorlw	02Ah
	skipnz
	goto	u429_21
	goto	u429_20
u429_21:
	goto	i1l860
u429_20:
	
i1l3667:	
	movlw	(014h)
	subwf	(_j),w
	skipc
	goto	u430_21
	goto	u430_20
u430_21:
	goto	i1l3669
u430_20:
	
i1l860:	
	line	189
;PatientTemperatureAndHeartRateMonitoringSystem.c: 189: j=0;
	clrf	(_j)
	goto	i1l3669
	line	190
	
i1l858:	
	line	191
	
i1l3669:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 190: }
;PatientTemperatureAndHeartRateMonitoringSystem.c: 191: buffer[j] = RCREG;
	movf	(26),w	;volatile
	movwf	(??_isr+0)+0
	movf	(_j),w
	addlw	_buffer&0ffh
	movwf	fsr0
	movf	(??_isr+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	192
	
i1l3671:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 192: j ++;
	movlw	(01h)
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	addwf	(_j),f
	line	193
;PatientTemperatureAndHeartRateMonitoringSystem.c: 193: }
	goto	i1l3677
	line	194
	
i1l857:	
	line	196
;PatientTemperatureAndHeartRateMonitoringSystem.c: 194: else
;PatientTemperatureAndHeartRateMonitoringSystem.c: 195: {
;PatientTemperatureAndHeartRateMonitoringSystem.c: 196: CREN = 0;
	bcf	(196/8),(196)&7
	line	197
;PatientTemperatureAndHeartRateMonitoringSystem.c: 197: FERR = 0;
	bcf	(194/8),(194)&7
	line	198
	
i1l3673:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 198: wtmp = RCREG;
	movf	(26),w	;volatile
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	movwf	(_wtmp)
	line	199
;PatientTemperatureAndHeartRateMonitoringSystem.c: 199: wtmp = RCREG;
	movf	(26),w	;volatile
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	movwf	(_wtmp)
	line	200
	
i1l3675:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 200: CREN = 1;
	bsf	(196/8),(196)&7
	goto	i1l3677
	line	201
	
i1l861:	
	line	202
	
i1l3677:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 201: }
;PatientTemperatureAndHeartRateMonitoringSystem.c: 202: RCIF = 0;
	bcf	(101/8),(101)&7
	goto	i1l3679
	line	203
	
i1l856:	
	line	204
	
i1l3679:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 203: }
;PatientTemperatureAndHeartRateMonitoringSystem.c: 204: if(OERR == 1)
	btfss	(193/8),(193)&7
	goto	u431_21
	goto	u431_20
u431_21:
	goto	i1l863
u431_20:
	line	206
	
i1l3681:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 205: {
;PatientTemperatureAndHeartRateMonitoringSystem.c: 206: CREN = 0;
	bcf	(196/8),(196)&7
	line	208
	
i1l3683:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 208: wtmp = RCREG;
	movf	(26),w	;volatile
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	movwf	(_wtmp)
	line	209
;PatientTemperatureAndHeartRateMonitoringSystem.c: 209: wtmp = RCREG;
	movf	(26),w	;volatile
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	movwf	(_wtmp)
	line	210
	
i1l3685:	
;PatientTemperatureAndHeartRateMonitoringSystem.c: 210: CREN = 1;
	bsf	(196/8),(196)&7
	goto	i1l863
	line	211
	
i1l862:	
	line	213
	
i1l863:	
	movf	(??_isr+5),w
	movwf	btemp+1
	movf	(??_isr+4),w
	movwf	pclath
	movf	(??_isr+3),w
	movwf	fsr0
	swapf	(??_isr+2)^0FFFFFF80h,w
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
psect	text625,local,class=CODE,delta=2
global __ptext625
__ptext625:

;; *************** function i1_clr_display *****************
;; Defined at:
;;		line 97 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\lcd.h"
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
psect	text625
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\lcd.h"
	line	97
	global	__size_ofi1_clr_display
	__size_ofi1_clr_display	equ	__end_ofi1_clr_display-i1_clr_display
	
i1_clr_display:	
	opt	stack 2
; Regs used in i1_clr_display: [wreg+status,2+status,0+pclath+cstack]
	line	98
	
i1l3759:	
;lcd.h: 98: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	99
	
i1l3761:	
;lcd.h: 99: lcd_data = 0b00000001;
	clrf	(_lcd_data)
	bsf	status,0
	rlf	(_lcd_data),f
	line	100
	
i1l3763:	
;lcd.h: 100: lcd_add();
	fcall	i1_lcd_add
	line	101
	
i1l3765:	
;lcd.h: 101: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??i1_clr_display+0)+0+1),f
	movlw	251
movwf	((??i1_clr_display+0)+0),f
u529_27:
	decfsz	((??i1_clr_display+0)+0),f
	goto	u529_27
	decfsz	((??i1_clr_display+0)+0+1),f
	goto	u529_27
	nop2
opt asmopt_on

	line	102
	
i1l756:	
	return
	opt stack 0
GLOBAL	__end_ofi1_clr_display
	__end_ofi1_clr_display:
;; =============== function i1_clr_display ends ============

	signat	i1_clr_display,88
	global	i1_lcd_init
psect	text626,local,class=CODE,delta=2
global __ptext626
__ptext626:

;; *************** function i1_lcd_init *****************
;; Defined at:
;;		line 57 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\lcd.h"
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
psect	text626
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\lcd.h"
	line	57
	global	__size_ofi1_lcd_init
	__size_ofi1_lcd_init	equ	__end_ofi1_lcd_init-i1_lcd_init
	
i1_lcd_init:	
	opt	stack 2
; Regs used in i1_lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	59
	
i1l3721:	
;lcd.h: 59: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	60
	
i1l3723:	
;lcd.h: 60: lcd_data = 0b00101000;
	movlw	(028h)
	movwf	(??i1_lcd_init+0)+0
	movf	(??i1_lcd_init+0)+0,w
	movwf	(_lcd_data)
	line	61
	
i1l3725:	
;lcd.h: 61: lcd_add();
	fcall	i1_lcd_add
	line	62
	
i1l3727:	
;lcd.h: 62: _delay(40000);
	opt asmopt_off
movlw	52
movwf	((??i1_lcd_init+0)+0+1),f
	movlw	241
movwf	((??i1_lcd_init+0)+0),f
u530_27:
	decfsz	((??i1_lcd_init+0)+0),f
	goto	u530_27
	decfsz	((??i1_lcd_init+0)+0+1),f
	goto	u530_27
	nop2
opt asmopt_on

	line	63
	
i1l3729:	
;lcd.h: 63: lcd_data = 0b00101000;
	movlw	(028h)
	movwf	(??i1_lcd_init+0)+0
	movf	(??i1_lcd_init+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_lcd_data)
	line	64
	
i1l3731:	
;lcd.h: 64: lcd_add();
	fcall	i1_lcd_add
	line	65
;lcd.h: 65: _delay(40000);
	opt asmopt_off
movlw	52
movwf	((??i1_lcd_init+0)+0+1),f
	movlw	241
movwf	((??i1_lcd_init+0)+0),f
u531_27:
	decfsz	((??i1_lcd_init+0)+0),f
	goto	u531_27
	decfsz	((??i1_lcd_init+0)+0+1),f
	goto	u531_27
	nop2
opt asmopt_on

	line	66
;lcd.h: 66: lcd_data = 0b00000110;
	movlw	(06h)
	movwf	(??i1_lcd_init+0)+0
	movf	(??i1_lcd_init+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_lcd_data)
	line	67
	
i1l3733:	
;lcd.h: 67: lcd_add();
	fcall	i1_lcd_add
	line	68
	
i1l3735:	
;lcd.h: 68: _delay(40000);
	opt asmopt_off
movlw	52
movwf	((??i1_lcd_init+0)+0+1),f
	movlw	241
movwf	((??i1_lcd_init+0)+0),f
u532_27:
	decfsz	((??i1_lcd_init+0)+0),f
	goto	u532_27
	decfsz	((??i1_lcd_init+0)+0+1),f
	goto	u532_27
	nop2
opt asmopt_on

	line	69
	
i1l3737:	
;lcd.h: 69: lcd_data = 0b00000110;
	movlw	(06h)
	movwf	(??i1_lcd_init+0)+0
	movf	(??i1_lcd_init+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_lcd_data)
	line	70
	
i1l3739:	
;lcd.h: 70: lcd_add();
	fcall	i1_lcd_add
	line	71
;lcd.h: 71: _delay(40000);
	opt asmopt_off
movlw	52
movwf	((??i1_lcd_init+0)+0+1),f
	movlw	241
movwf	((??i1_lcd_init+0)+0),f
u533_27:
	decfsz	((??i1_lcd_init+0)+0),f
	goto	u533_27
	decfsz	((??i1_lcd_init+0)+0+1),f
	goto	u533_27
	nop2
opt asmopt_on

	line	72
;lcd.h: 72: lcd_data = 0b00001101;
	movlw	(0Dh)
	movwf	(??i1_lcd_init+0)+0
	movf	(??i1_lcd_init+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_lcd_data)
	line	73
	
i1l3741:	
;lcd.h: 73: lcd_add();
	fcall	i1_lcd_add
	line	74
	
i1l3743:	
;lcd.h: 74: _delay(40000);
	opt asmopt_off
movlw	52
movwf	((??i1_lcd_init+0)+0+1),f
	movlw	241
movwf	((??i1_lcd_init+0)+0),f
u534_27:
	decfsz	((??i1_lcd_init+0)+0),f
	goto	u534_27
	decfsz	((??i1_lcd_init+0)+0+1),f
	goto	u534_27
	nop2
opt asmopt_on

	line	75
	
i1l3745:	
;lcd.h: 75: lcd_data = 0b00001101;
	movlw	(0Dh)
	movwf	(??i1_lcd_init+0)+0
	movf	(??i1_lcd_init+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_lcd_data)
	line	76
	
i1l3747:	
;lcd.h: 76: lcd_add();
	fcall	i1_lcd_add
	line	77
;lcd.h: 77: _delay(40000);
	opt asmopt_off
movlw	52
movwf	((??i1_lcd_init+0)+0+1),f
	movlw	241
movwf	((??i1_lcd_init+0)+0),f
u535_27:
	decfsz	((??i1_lcd_init+0)+0),f
	goto	u535_27
	decfsz	((??i1_lcd_init+0)+0+1),f
	goto	u535_27
	nop2
opt asmopt_on

	line	78
;lcd.h: 78: lcd_data = 0b00011000;
	movlw	(018h)
	movwf	(??i1_lcd_init+0)+0
	movf	(??i1_lcd_init+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_lcd_data)
	line	79
	
i1l3749:	
;lcd.h: 79: lcd_add();
	fcall	i1_lcd_add
	line	80
	
i1l3751:	
;lcd.h: 80: _delay(40000);
	opt asmopt_off
movlw	52
movwf	((??i1_lcd_init+0)+0+1),f
	movlw	241
movwf	((??i1_lcd_init+0)+0),f
u536_27:
	decfsz	((??i1_lcd_init+0)+0),f
	goto	u536_27
	decfsz	((??i1_lcd_init+0)+0+1),f
	goto	u536_27
	nop2
opt asmopt_on

	line	81
	
i1l3753:	
;lcd.h: 81: lcd_data = 0b00000001;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_lcd_data)
	bsf	status,0
	rlf	(_lcd_data),f
	line	82
	
i1l3755:	
;lcd.h: 82: lcd_add();
	fcall	i1_lcd_add
	line	83
	
i1l3757:	
;lcd.h: 83: _delay(40000);
	opt asmopt_off
movlw	52
movwf	((??i1_lcd_init+0)+0+1),f
	movlw	241
movwf	((??i1_lcd_init+0)+0),f
u537_27:
	decfsz	((??i1_lcd_init+0)+0),f
	goto	u537_27
	decfsz	((??i1_lcd_init+0)+0+1),f
	goto	u537_27
	nop2
opt asmopt_on

	line	85
	
i1l750:	
	return
	opt stack 0
GLOBAL	__end_ofi1_lcd_init
	__end_ofi1_lcd_init:
;; =============== function i1_lcd_init ends ============

	signat	i1_lcd_init,88
	global	i1_lcd_add
psect	text627,local,class=CODE,delta=2
global __ptext627
__ptext627:

;; *************** function i1_lcd_add *****************
;; Defined at:
;;		line 135 in file "D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\lcd.h"
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
;;		i1_lcd_init
;;		i1_clr_display
;; This function uses a non-reentrant model
;;
psect	text627
	file	"D:\ELECTRONIC\2016\1. Automated Solar Panel Orientation Setter\Firmware\ver1\lcd.h"
	line	135
	global	__size_ofi1_lcd_add
	__size_ofi1_lcd_add	equ	__end_ofi1_lcd_add-i1_lcd_add
	
i1_lcd_add:	
	opt	stack 2
; Regs used in i1_lcd_add: [wreg+status,2+status,0]
	line	136
	
i1l3767:	
;lcd.h: 136: lcd_data_high = lcd_data >> 4;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??i1_lcd_add+0)+0
	movlw	04h
u440_25:
	clrc
	rrf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u440_25
	movf	0+(??i1_lcd_add+0)+0,w
	movwf	(??i1_lcd_add+1)+0
	movf	(??i1_lcd_add+1)+0,w
	movwf	(_lcd_data_high)
	line	137
;lcd.h: 137: lcd_data_low = lcd_data << 4;
	movf	(_lcd_data),w
	movwf	(??i1_lcd_add+0)+0
	movlw	(04h)-1
u441_25:
	clrc
	rlf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u441_25
	clrc
	rlf	(??i1_lcd_add+0)+0,w
	movwf	(??i1_lcd_add+1)+0
	movf	(??i1_lcd_add+1)+0,w
	movwf	(_lcd_data_low)
	line	138
;lcd.h: 138: lcd_data_low = lcd_data_low >> 4;
	movf	(_lcd_data_low),w
	movwf	(??i1_lcd_add+0)+0
	movlw	04h
u442_25:
	clrc
	rrf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u442_25
	movf	0+(??i1_lcd_add+0)+0,w
	movwf	(??i1_lcd_add+1)+0
	movf	(??i1_lcd_add+1)+0,w
	movwf	(_lcd_data_low)
	line	140
	
i1l3769:	
;lcd.h: 140: bit0 = lcd_data;
	bcf	(_bit0/8),(_bit0)&7
	btfss	(_lcd_data),0
	goto	u443_25
	bsf	(_bit0/8),(_bit0)&7
u443_25:

	line	141
;lcd.h: 141: bit1 = lcd_data>>1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??i1_lcd_add+0)+0
	movlw	01h
u444_25:
	clrc
	rrf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u444_25
	bcf	(_bit1/8),(_bit1)&7
	btfss	0+(??i1_lcd_add+0)+0,0
	goto	u445_25
	bsf	(_bit1/8),(_bit1)&7
u445_25:

	line	142
;lcd.h: 142: bit2 = lcd_data>>2;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??i1_lcd_add+0)+0
	movlw	02h
u446_25:
	clrc
	rrf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u446_25
	bcf	(_bit2/8),(_bit2)&7
	btfss	0+(??i1_lcd_add+0)+0,0
	goto	u447_25
	bsf	(_bit2/8),(_bit2)&7
u447_25:

	line	143
;lcd.h: 143: bit3 = lcd_data>>3;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??i1_lcd_add+0)+0
	movlw	03h
u448_25:
	clrc
	rrf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u448_25
	bcf	(_bit3/8),(_bit3)&7
	btfss	0+(??i1_lcd_add+0)+0,0
	goto	u449_25
	bsf	(_bit3/8),(_bit3)&7
u449_25:

	line	144
;lcd.h: 144: bit4 = lcd_data>>4;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??i1_lcd_add+0)+0
	movlw	04h
u450_25:
	clrc
	rrf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u450_25
	bcf	(_bit4/8),(_bit4)&7
	btfss	0+(??i1_lcd_add+0)+0,0
	goto	u451_25
	bsf	(_bit4/8),(_bit4)&7
u451_25:

	line	145
;lcd.h: 145: bit5 = lcd_data>>5;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??i1_lcd_add+0)+0
	movlw	05h
u452_25:
	clrc
	rrf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u452_25
	bcf	(_bit5/8),(_bit5)&7
	btfss	0+(??i1_lcd_add+0)+0,0
	goto	u453_25
	bsf	(_bit5/8),(_bit5)&7
u453_25:

	line	146
;lcd.h: 146: bit6 = lcd_data>>6;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??i1_lcd_add+0)+0
	movlw	06h
u454_25:
	clrc
	rrf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u454_25
	bcf	(_bit6/8),(_bit6)&7
	btfss	0+(??i1_lcd_add+0)+0,0
	goto	u455_25
	bsf	(_bit6/8),(_bit6)&7
u455_25:

	line	147
;lcd.h: 147: bit7 = lcd_data>>7;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lcd_data),w
	movwf	(??i1_lcd_add+0)+0
	movlw	07h
u456_25:
	clrc
	rrf	(??i1_lcd_add+0)+0,f
	addlw	-1
	skipz
	goto	u456_25
	bcf	(_bit7/8),(_bit7)&7
	btfss	0+(??i1_lcd_add+0)+0,0
	goto	u457_25
	bsf	(_bit7/8),(_bit7)&7
u457_25:

	line	149
	
i1l3771:	
;lcd.h: 149: RE1 = bit4;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(_bit4/8),(_bit4)&7
	goto	u458_21
	goto	u458_20
	
u458_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	goto	u459_24
u458_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
u459_24:
	line	150
	
i1l3773:	
;lcd.h: 150: RB4 = bit5;
	btfsc	(_bit5/8),(_bit5)&7
	goto	u460_21
	goto	u460_20
	
u460_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7
	goto	u461_24
u460_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7
u461_24:
	line	151
	
i1l3775:	
;lcd.h: 151: RE2 = bit6;
	btfsc	(_bit6/8),(_bit6)&7
	goto	u462_21
	goto	u462_20
	
u462_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(74/8),(74)&7
	goto	u463_24
u462_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
u463_24:
	line	152
	
i1l3777:	
;lcd.h: 152: RB5 = bit7;
	btfsc	(_bit7/8),(_bit7)&7
	goto	u464_21
	goto	u464_20
	
u464_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(53/8),(53)&7
	goto	u465_24
u464_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
u465_24:
	line	154
	
i1l3779:	
;lcd.h: 154: RB3 = 1;
	bsf	(51/8),(51)&7
	line	156
	
i1l3781:	
;lcd.h: 156: RB3 = 0;
	bcf	(51/8),(51)&7
	line	159
	
i1l3783:	
;lcd.h: 159: RE1 = bit0;
	btfsc	(_bit0/8),(_bit0)&7
	goto	u466_21
	goto	u466_20
	
u466_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	goto	u467_24
u466_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
u467_24:
	line	160
	
i1l3785:	
;lcd.h: 160: RB4 = bit1;
	btfsc	(_bit1/8),(_bit1)&7
	goto	u468_21
	goto	u468_20
	
u468_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7
	goto	u469_24
u468_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7
u469_24:
	line	161
	
i1l3787:	
;lcd.h: 161: RE2 = bit2;
	btfsc	(_bit2/8),(_bit2)&7
	goto	u470_21
	goto	u470_20
	
u470_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(74/8),(74)&7
	goto	u471_24
u470_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
u471_24:
	line	162
	
i1l3789:	
;lcd.h: 162: RB5 = bit3;
	btfsc	(_bit3/8),(_bit3)&7
	goto	u472_21
	goto	u472_20
	
u472_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(53/8),(53)&7
	goto	u473_24
u472_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
u473_24:
	line	164
	
i1l3791:	
;lcd.h: 164: RB3 = 1;
	bsf	(51/8),(51)&7
	line	166
	
i1l3793:	
;lcd.h: 166: RB3 = 0;
	bcf	(51/8),(51)&7
	line	168
	
i1l769:	
	return
	opt stack 0
GLOBAL	__end_ofi1_lcd_add
	__end_ofi1_lcd_add:
;; =============== function i1_lcd_add ends ============

	signat	i1_lcd_add,88
	global	___lwmod
psect	text628,local,class=CODE,delta=2
global __ptext628
__ptext628:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    5[COMMON] unsigned char 
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
;;		_Serial_PrintlnVal
;; This function uses a non-reentrant model
;;
psect	text628
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 3
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
i1l3699:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u434_21
	goto	u434_20
u434_21:
	goto	i1l3717
u434_20:
	line	9
	
i1l3701:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	i1l3707
	
i1l1591:	
	line	11
	
i1l3703:	
	movlw	01h
	
u435_25:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u435_25
	line	12
	
i1l3705:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	i1l3707
	line	13
	
i1l1590:	
	line	10
	
i1l3707:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u436_21
	goto	u436_20
u436_21:
	goto	i1l3703
u436_20:
	goto	i1l3709
	
i1l1592:	
	goto	i1l3709
	line	14
	
i1l1593:	
	line	15
	
i1l3709:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u437_25
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u437_25:
	skipc
	goto	u437_21
	goto	u437_20
u437_21:
	goto	i1l3713
u437_20:
	line	16
	
i1l3711:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	i1l3713
	
i1l1594:	
	line	17
	
i1l3713:	
	movlw	01h
	
u438_25:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u438_25
	line	18
	
i1l3715:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u439_21
	goto	u439_20
u439_21:
	goto	i1l3709
u439_20:
	goto	i1l3717
	
i1l1595:	
	goto	i1l3717
	line	19
	
i1l1589:	
	line	20
	
i1l3717:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	i1l1596
	
i1l3719:	
	line	21
	
i1l1596:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
psect	text629,local,class=CODE,delta=2
global __ptext629
__ptext629:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
