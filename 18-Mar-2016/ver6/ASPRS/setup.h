
#define _XTAL_FREQ		4000000

#include <pic.h>

#define PORTA_0	0
#define PORTA_1	1
#define PORTA_2	2
#define PORTA_3	3
#define PORTA_4	4
#define PORTA_5	5
#define PORTA_6	6
#define PORTA_7	7

#define PORTB_0	0
#define PORTB_1	1
#define PORTB_2	2
#define PORTB_3	3
#define PORTB_4	4
#define PORTB_5	5
#define PORTB_6	6
#define PORTB_7	7

#define PORTC_0	0
#define PORTC_1	1
#define PORTC_2	2
#define PORTC_3	3
#define PORTC_4	4
#define PORTC_5	5
#define PORTC_6	6
#define PORTC_7	7

#define PORTD_0	0
#define PORTD_1	1
#define PORTD_2	2
#define PORTD_3	3
#define PORTD_4	4
#define PORTD_5	5
#define PORTD_6	6
#define PORTD_7	7

#define PORTE_0	0
#define PORTE_1	1
#define PORTE_2	2

#define nopnop(); nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();

bit Nop;

void nop(){
	Nop = !Nop;
}	
	
void Setup_IOports();

void Setup_IOports(){
	
	TRISA	= 0b11111111; // all pins are input	
	PORTA 	= 0b00000000; // clear all
	
	TRISB	= 0b11000000; // all are outputs
	PORTB	= 0b00000000; // clear all
	
	TRISC	= 0b10000000; // only RC7 input for rs232 receive pin
	PORTC 	= 0b00000000; // clear all	

	TRISD	= 0b11001100; // only RD2,RD3,RD6,RD7 set to inputs for key pad READ pins
	PORTD 	= 0b00000000; // clear all

	TRISE	= 0b10000000; // only RC5 output
	PORTE 	= 0b00000000; // clear all
}