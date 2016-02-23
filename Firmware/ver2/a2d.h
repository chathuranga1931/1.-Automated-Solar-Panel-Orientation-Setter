
//***********************************************************************************************************************************
//**************************************************** A2D INITIOLIZING  ****************************************************************** 

unsigned int read_a2d_value( char channel );
void atod_init();

void atod_init()
{
	ADCON0	= 0b01000000;	// adon= 1 ,Fosc /8 , go = 0 chanel selected to RA0 & RA1
	ADCON1	= 0b10000100;	// selected RIGHT justify,AN0,AN1,AN3 analogue others are digital
}
unsigned int read_a2d_value( char channel )
{

	unsigned int a2d_value;			
	channel = channel << 3;
	ADCON0	= ADCON0 & 0b11000111;
	ADCON0	= ADCON0 | channel;
	ADON	= 1;
	_delay(50);
	GO	= 1;
	while( GO == 1 );
	{
	
	}
	a2d_value	= ADRESH;
	a2d_value	= a2d_value << 8;
	a2d_value	= a2d_value + ADRESL;	// set a2d value to 1023
	return	a2d_value;
	
}







