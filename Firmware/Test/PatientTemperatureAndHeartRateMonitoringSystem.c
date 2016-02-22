
#include "setup.h"
#include "lcd.h"
#include "a2d.h"
#include "serial.h"
#include "interrupts.h"
#include "timer1.h"

//**** Pin Definitions ****//
#define LED1		RD6
#define LED2		RD1
#define LED3		RD7

//**** Value Definition ****//
#define LdrReadValue1 atodread1
#define LdrReadValue2 atodread2

//**** A to D ****//
unsigned int atodread1;
unsigned int atodread2;
void a2d_read();

//**** TIMER1 ****//
unsigned int msecond;
unsigned int second;
unsigned int minute;	
unsigned int hour;
unsigned char j;
unsigned char time_period;

//**** RS232 ****//
#define Tx_Control	RC1
#define BUFFER_SIZE 20
#define UNIT_ID1 '1'
#define UNIT_ID2 '2'
#define UNIT_ID3 '3'
void bdnu_unid();
char buffer[BUFFER_SIZE];
unsigned char rc[9];
unsigned char wtmp;

//**** Genaral ****//
unsigned char Mode=0;
/*********** pcCaseNo definition **********
* 0 - Default
* 1 - Unit ID request
* 2 - DataRequest
* 3 - BufferRequest
*/

void check_pc();
void ClrBuffer();

void main(){ 
	
	Setup_IOports();
	atod_init();
	_delay(200);
	lcd_init();
	Serial_Init();
	Timer1_Init();
	enableInterrupt();

	clr_display();
	printf("Body Temperature ");
	position(2,1);
	printf(" and Heart Rate  ");
	__delay_ms(5000);
		
	clr_display();
	
	while(1){				
		switch (Mode){
			case  0 :			
				a2d_read();				
				__delay_ms(100);
				check_pc();
			break;
			case 1 :			
				Tx_Control = 1;
				Serial_Print( "*#DREQ=123" );
				Serial_NewLine();
				Tx_Control = 0;		
			break;
			case 2 :
				Tx_Control = 1;
				Serial_Print( "*#123=" );				
				Serial_NewLine();				
				Tx_Control = 0;	
			break;
			case 3 :
				Tx_Control = 1;				
				Serial_Print( "*#123=" );							
				Tx_Control = 0;	
				
				position(1,1);
				printf("Data request... ");
				position(2,1);
				printf("                ");
							
			break;
			case 4 :
				Tx_Control = 1;				
				Serial_NewLine();
				Tx_Control = 0;	
								
			case 5 :
				clr_display();			
			break;
			default:
			
			break;
		}	
	}
}


void a2d_read(){
	atodread1 = read_a2d_value(0);
	atodread2 = read_a2d_value(1);		
//	int val = heartRate;
//	Tx_Control = 1;		
//	while(!TXIF);//wait, buffer empty?
//	TXREG = val/1000+48;;
//	__delay_ms(1);
//	while(!TXIF);//wait, buffer empty?
//	TXREG = val%1000/100+48;
//	__delay_ms(1);
//	while(!TXIF);//wait, buffer empty?
//	TXREG = val%1000%100/10+48;
//	__delay_ms(1);
//	while(!TXIF);//wait, buffer empty?
//	TXREG = val%1000%100%10+48;
//	__delay_ms(1);
//	while(!TXIF);//wait, buffer empty?
//	TXREG = 13;
//	__delay_ms(1);	
//	while(!TXIF);//wait, buffer empty?
//	TXREG = 10;
//	__delay_ms(1);	
//	Tx_Control = 0;	
}

void calculate(){

}

//*************** interrupt function *****************

void interrupt isr(){	
	if(TMR1IF==1){	
		msecond ++;
		if(msecond == 10){
			second ++;
			//enableInterrupt();
					
			LED1 = !LED1;
			msecond = 0;
			if( second == 60){
				minute ++;
				lcd_init();					
				clr_display();			
				second = 0;
				/*~~~~~ write data to eeprom for time period ~~~~~*/
				int x;
				x = minute%time_period ;
				if ( x == 0){
					//eeprom_temp();
					//nop(); 
				}				
				/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
		
				if( minute == 60){
					minute = 0;
					hour ++;
					if( hour == 24)	hour == 0;
				}
			}
		}		
		TMR1IF	= 0;
		TMR1L	= 0xB0;
		TMR1H	= 0x3C;
	} 
	if( RCIF == 1){		
		if ((FERR == 0) && (OERR == 0))		// no error
		{						
			wtmp = RCREG;			
			if( RCREG=='*' || j > BUFFER_SIZE-1 ){
				j=0;
			}
			buffer[j] = RCREG;
			j ++;					
     	}
     	else // error occoured
	    {              
	          CREN = 0;	// clear error
	          FERR = 0;
	          wtmp = RCREG;
	          wtmp = RCREG;
			  CREN = 1;	// enable again
	     } 
	     RCIF = 0;   
	}	
   	if(OERR == 1)
	{
 		CREN = 0;	// clear error
     	//RCSTA.2 = 0;	//Clear framming error
        wtmp = RCREG;
        wtmp = RCREG;
		CREN = 1;	// enable again
	}
	
}

void check_pc(){
	if(	
		buffer[0] == '*' &&
		buffer[1] == '#' &&
		buffer[2] == 'D' &&
		buffer[3] == 'R' &&
		buffer[4] == 'E' &&
		buffer[5] == 'Q' &&
		buffer[6] == '?'
		){
		ClrBuffer();
		nop=1;		
	}
	else if(		
		buffer[0] == '*' &&
		buffer[1] == '#' &&
		buffer[2] == 'D' &&
		buffer[3] == 'R' &&
		buffer[4] == 'E' &&
		buffer[5] == 'Q' &&
		buffer[6] == '=' &&
		buffer[7] == UNIT_ID1 &&
		buffer[8] == UNIT_ID2 &&
		buffer[9] == UNIT_ID3 
		){
		ClrBuffer();
		nop=1;
	}		
	else if(		
		buffer[0] == '*' &&
		buffer[1] == '#' &&
		buffer[2] == 'B' &&
		buffer[3] == 'R' &&
		buffer[4] == 'E' &&
		buffer[5] == 'Q' &&
		buffer[6] == '=' &&
		buffer[7] == UNIT_ID1 &&
		buffer[8] == UNIT_ID2 &&
		buffer[9] == UNIT_ID3 
		){
		ClrBuffer();
		nop=1;
	}
	else {
		nop=1;
	}	
}	

void bdnu_unid(){
}

void ClrBuffer(){
	int i;
	for(i=0; i<BUFFER_SIZE; i++){
		buffer[i] = 0;
	}
}	
