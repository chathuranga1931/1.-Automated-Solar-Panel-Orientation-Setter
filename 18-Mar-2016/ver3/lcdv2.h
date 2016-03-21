
#include <stdio.h>	// to printf 
//                  4BIT MODE
#define EN	RC3
#define RS	RC2 

#define D7	RD1
#define D6	RC0
#define D5	RD0
#define D4	RC1

#define command		RS = 0
#define data		RS = 1

#define	clear_display	 0b00000001
#define	curser_home		 0b00000010

#define no_display_shift			0b00000100
#define display_shift				0b00000101
#define decrement_curser_posision 	0b00000100
#define encrement_curser_posision 	0b00000110

#define display_off			0b00001000
#define display_on			0b00001100
#define curser_on			0b00001010
#define	curser_off			0b00001000
#define curser_blink_on		0b00001001
#define curser_blink_off	0b00001000

#define move_curser		0b00010000
#define shift_display 	0b00011100
#define shift_left		0b00010000
#define shift_right		0b00010100

#define four_bit			0b00100000
#define eight_bit			0b00110000
#define duty_1_line			0b00100000
#define duty_2_line 		0b00101000
#define thirty_five_dots	0b00100000
#define fifty_dots			0b00100100

unsigned char lcd_data;	
unsigned char lcd_data_high;
unsigned char lcd_data_low;
unsigned char lcd_bus;

bit bit0,bit1,bit2,bit3,bit4,bit5,bit6,bit7;

void lcd_init();
void lcd_add();
void position( char row, char collum);
void clr_display();
void curser( char on );
void row2();
void enable4bitMode();
void enable8bitMode();
void pulseEnable();
void LCD_print_char( int row, int column,char print_value );

void lcd_init()
{	
	
EN = 0;

	unsigned int DelayLCD;

	RS = 0;			
	D7 = 0;			// 0b0010 1000 Set 4 Bit Mode,2 Line
	D6 = 0;
	D5 = 1;
	D4 = 0;
	EN = 1;
	EN = 0;
	D7 = 1;		
	D6 = 0;
	D5 = 0;
	D4 = 0;
	EN = 1;
	EN = 0;
	for(DelayLCD=0;DelayLCD<2500;DelayLCD++);
	//nop();

	RS = 0;			
	D7 = 0;			// 0b0010 1000 Set Display shift
	D6 = 0;
	D5 = 1;
	D4 = 0;
	EN = 1;
	EN = 0;
	D7 = 1;			
	D6 = 0;
	D5 = 0;
	D4 = 0;
	EN = 1;
	EN = 0;
	for(DelayLCD=0;DelayLCD<2500;DelayLCD++);
	//nop();

	RS = 0;			
	D7 = 0;			// 0b0000 0110 Set Display charactor mode
	D6 = 0;
	D5 = 0;
	D4 = 0;
	EN = 1;
	EN = 0;
	D7 = 0;			
	D6 = 1;
	D5 = 1;
	D4 = 0;
	EN = 1;
	EN = 0;
	for(DelayLCD=0;DelayLCD<2500;DelayLCD++);
	//nop();

	RS = 0;			
	D7 = 0;			// 0b0000 1101 Set Display on cursor command
	D6 = 0;
	D5 = 0;
	D4 = 0;
	EN = 1;
	EN = 0;
	D7 = 1;			
	D6 = 1;
	D5 = 0;
	D4 = 0;
	EN = 1;
	EN = 0;
	for(DelayLCD=0;DelayLCD<2500;DelayLCD++);
	//nop();

	RS = 0;			
	D7 = 0;			// 0b0000 0001 Clear Display
	D6 = 0;
	D5 = 0;
	D4 = 0;
	EN = 1;
	EN = 0;
	D7 = 0;			
	D6 = 0;
	D5 = 0;
	D4 = 1;
	EN = 1;
	EN = 0;
	for(DelayLCD=0;DelayLCD<2500;DelayLCD++);
	//nop();

}

void enable4bitMode()
{
	RS = 0;
	_delay(20);
	D7	= 0; D6	= 0; D5	= 1; D4	= 0; 
	pulseEnable();	
}

void enable8bitMode()
{
	RS = 0;
	_delay(20);	
	D7	= 0; D6	= 0; D5	= 1; D4	= 1; 
	pulseEnable();	
}

// 0b00101000 0b00101000 0b00000110 0b00001101 0b00000001
void putch( char print_value ){	
	RS = 1;
	_delay(20);
	lcd_data	= print_value;
	lcd_add();
	_delay(100);	
}

void LCD_print_char( int row, int column,char print_value ){	
	position(row,column);	
	RS = 1;
	_delay(20);
	lcd_data	= print_value;
	lcd_add();
	_delay(100);	
}

void clr_display()
{
	RS = 0;
	_delay(20);
	lcd_data	= clear_display;
	lcd_add();
	__delay_ms(10);	
	RS = 1;
}
void curser( char on )
{
	if (on == 0)
	{
		lcd_data	= 0b00001000; 
		lcd_add();
		__delay_ms(10);	
	}
	if (on == 1)
	{
		lcd_data	= 0b00001010; 
		lcd_add();
		__delay_ms(10);	
	}
}

void position( char row, char collum)
{
	char post ;
	if( row == 1 ) row = 128;
	if( row == 2 ) row = 192;
	post = 	row + collum - 1;
	command;
	_delay(20);
	lcd_data	= post ;
	lcd_add();
	__delay_ms(10);	
	row		= 0;
	collum 	= 0;	
}


void lcd_add()
{
	lcd_data_high	= lcd_data >> 4;
	lcd_data_low	= lcd_data << 4;
	lcd_data_low	= lcd_data_low >> 4;

	bit0 = lcd_data;
	bit1 = lcd_data>>1;
	bit2 = lcd_data>>2;
	bit3 = lcd_data>>3;
	bit4 = lcd_data>>4;
	bit5 = lcd_data>>5;
	bit6 = lcd_data>>6;
	bit7 = lcd_data>>7;
	
	EN	= 0;
	_delay(1);
	EN	= 1;
	_delay(1);
	
	D4	= bit4;
	D5	= bit5;
	D6	= bit6;
	D7	= bit7;	
	
	_delay(1);
	EN	= 0;
	_delay(1);
	
	

	EN	= 0;
	_delay(1);
	EN	= 1;
	_delay(1);
	
	D4	= bit0;
	D5	= bit1;
	D6	= bit2;
	D7	= bit3;
	
	_delay(1);
	EN	= 0;
	_delay(1);
}
void pulseEnable(){
	
	EN	= 0;
	_delay(1);	
	EN	= 1;
	_delay(1);
	EN	= 0;
	_delay(100);
}