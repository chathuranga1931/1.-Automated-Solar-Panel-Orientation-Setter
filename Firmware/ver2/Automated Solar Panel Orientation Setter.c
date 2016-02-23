#include <htc.h>	// to eeprom

#include "def.h"
#include "setup.h"
#include "lcdV2.h"
#include "a2d.h"
#include "serial.h"
#include "interrupts.h"
#include "timer1.h"

#define time_period		30 // in minutes		

#define Tx_Control	RC1
#define LED1		RD6
#define LED2		RD1
#define LED3		RD7

#define READ1	RD2
#define READ2	RD7
#define READ3	RD3
#define READ4	RD6

#define SET1	RC4
#define SET2	RD5
#define SET3	RC5
#define SET4	RD4

unsigned char v,y,z,w;
unsigned char x,bed_nu = 1;
unsigned char i = 1;

//**** A to D ****//
unsigned int HeartRate;
unsigned int heartRate;
unsigned int HeartRateCount;
unsigned short long temperature;
unsigned int analogReadVal;
void a2d_read();
unsigned int ldr1,ldr2;

//**** TIMER1 ****//
unsigned int msecond;
unsigned int second;
unsigned int minute;	
unsigned int hour;
unsigned char j;

//**** RS232 ****//
#define BUFFER_SIZE 20
#define UNIT_ID1 '1'
#define UNIT_ID2 '2'
#define UNIT_ID3 '4'
void bdnu_unid();
char buffer[BUFFER_SIZE];
unsigned char rc[9];
unsigned char wtmp;

unsigned char state=0;
/*********** state **********
* 0 - 
* 1 - 
* 2 - 
* 3 - 
*/

void check_pc();
void ClrBuffer();

void RotateMotorRight(int value);
void RotateMotorLeft(int value);

char CheckKeyPad();
int RowNo();
int ColomnNo(int rowNo);
void main(){ 
	
	char pressedKey;
	
	Setup_IOports();
//	__delay_ms(2000);
//	_delay(200);
	atod_init();
	
	//__delay_ms(2000);
	
	lcd_init();
	clr_display();
	
	Serial_Init();
	Timer1_Init();
	enableInterrupt();

	//__delay_ms(5000);
	
	lcd_init();
	clr_display();
	
	printf("Body Temperature ");
	position(2,1);
	printf(" and Heart Rate  ");
	__delay_ms(1000);
	position(1,1);
	printf("    Monitoring   ");
	position(2,1);
	printf("      System     ");
 	__delay_ms(1000);
	position(1,1);
	printf("       for      ");
	position(2,1);
	printf("    Patients    ");
 	__delay_ms(1000);
 	position(1,1);
	printf("H:  62PPM Low   ",HeartRate);
	position(2,1);
	printf("T:  84F   Low   ",analogReadVal);
	
	//while(1){LED1=1;}
	
	clr_display();
	state = LCD_FORMAT1;
	while(1){				
		switch (state){
			//Common States for Mode1,2,3
			
			
			//Mode1
			case  LCD_FORMAT1:
				//State should be changed in to another	
				
				//after display the relevant things goes to the
				//working state.
				state = MODE_NO1;
			break;
			case MODE_NO1 :			
				Tx_Control = 1;
					//Serial_Println( "Switched to Mode 1" );
					//bdnu_unid();
					pressedKey = CheckKeyPad();
					if( pressedKey!='$'){
						while(!TXIF);//wait, buffer empty?
						TXREG		= pressedKey;
						__delay_ms(1);
					}	
				Tx_Control = 0;
				
			break;
			
			//Mode 2
			case LCD_FORMAT2 :
				
			break;
			case MODE_NO2 :
			
			break;
			case LCD_FORMAT3 :
				
			case MODE_NO3 :
					
			break;
			//default:
			
			//break;
		}	
	}
}

char CheckKeyPad(){
	SET1 = 0; SET2 = 0; SET3=0; SET4=0;
	char charactor = '$';
	int colomnNo = 0;
	int rowNo = RowNo();
	if (rowNo != 0){
		colomnNo = ColomnNo(rowNo);		
		SET1 = 0; SET2 = 0; SET3=0; SET4=0;
		if(colomnNo==1 && rowNo == 1)		charactor = '1';
		else if(colomnNo==1 && rowNo == 2)	charactor = '2';
		else if(colomnNo==1 && rowNo == 3)	charactor = '3';
		else if(colomnNo==1 && rowNo == 4)	charactor = 'A';
		
		else if(colomnNo==2 && rowNo == 1)	charactor = '4';
		else if(colomnNo==2 && rowNo == 2)	charactor = '5';
		else if(colomnNo==2 && rowNo == 3)	charactor = '6';
		else if(colomnNo==2 && rowNo == 4)	charactor = 'B';
		
		else if(colomnNo==3 && rowNo == 1)	charactor = '7';
		else if(colomnNo==3 && rowNo == 2)	charactor = '8';
		else if(colomnNo==3 && rowNo == 3)	charactor = '9';
		else if(colomnNo==3 && rowNo == 4)	charactor = 'C';
		
		else if(colomnNo==4 && rowNo == 1)	charactor = '*';
		else if(colomnNo==4 && rowNo == 2)	charactor = '0';
		else if(colomnNo==4 && rowNo == 3)	charactor = '#';
		else if(colomnNo==4 && rowNo == 4)	charactor = 'D';
		
		else charactor = '@';
	}
	if(rowNo==1)	while(READ1==0);
	else if(rowNo==2)	while(READ2==0);
	else if(rowNo==3)	while(READ3==0);
	else if(rowNo==4)	while(READ4==0);
	return charactor;	
}

int ColomnNo(int rowNo){
	SET1 = 0; SET2 = 0; SET3=0; SET4=0;
	if(rowNo==1){
		SET1 = 1;
		_delay(1);
		if(READ1==1){
			return 1;
		}
		SET2 = 1;
		_delay(1);
		if(READ1==1){
			return 2;
		}
		SET3 = 1;
		_delay(1);
		if(READ1==1){
			return 3;
		}	
		SET4 = 1;
		_delay(1);
		if(READ1==1){
			return 4;
		}	
	}
	else if(rowNo==2){
		SET1 = 1;
		_delay(1);
		if(READ2==1){
			return 1;
		}
		SET2 = 1;
		_delay(1);
		if(READ2==1){
			return 2;
		}
		SET3 = 1;
		_delay(1);
		if(READ2==1){
			return 3;
		}	
		SET4 = 1;
		_delay(1);
		if(READ2==1){
			return 4;
		}
	}
	else if(rowNo==3){
		SET1 = 1;
		_delay(1);
		if(READ3==1){
			return 1;
		}
		SET2 = 1;
		_delay(1);
		if(READ3==1){
			return 2;
		}
		SET3 = 1;
		_delay(1);
		if(READ3==1){
			return 3;
		}	
		SET4 = 1;
		_delay(1);
		if(READ3==1){
			return 4;
		}
	}
	else if(rowNo==4){
		SET1 = 1;
		_delay(1);
		if(READ4==1){
			return 1;
		}
		SET2 = 1;
		_delay(1);
		if(READ4==1){
			return 2;
		}
		SET3 = 1;
		_delay(1);
		if(READ4==1){
			return 3;
		}	
		SET4 = 1;
		_delay(1);
		if(READ4==1){
			return 4;
		}
	}
}	
	
int RowNo(){
	int row;
	if( READ1!=1){
		row = 1;		
	}
	else if( READ2!=1 ){
		row = 2;
	}
	else if( READ3!=1 ){
		row = 3;
	}
	else if( READ4!=1 ){
		row = 4;
	}
	else{
		row = 0;
	}	
	return row;
}	


void Rotation(int rotationCount, char direction){
	if(direction = 1){
	//Says Left
		RotateMotorLeft(rotationCount);
	}
	//right
	else{
		RotateMotorRight(rotationCount);
	}	
}

void RotateMotorLeft(int value){
	//code here for left rotation.
	int i=0;
	for(i=0; i<value; i++){
	}
}

void RotateMotorRight(int value){
	//code here for right rotation.
	int i=0;
	for(i=0; i<value; i++){
	}
}

void a2d_read(){
	ldr1 = read_a2d_value(0);
	ldr2 = read_a2d_value(1);	
}

void calculate(){
	//by the calculation set the rotation counts and the direction 
	//to rotate
	
	//calculation counts
	//direction
	if(ldr1 > ldr2){
		//rotationCounts = ldr1 - ldr2;
		//direction = 1;
	}
	else if (ldr1 <= ldr2){
		//direction = 0;
	}	
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
				HeartRate = HeartRateCount;
				HeartRateCount = 0;
				minute ++;
				lcd_init();					
				clr_display();			
				second = 0;
				/*~~~~~ write data to eeprom for time period ~~~~~*/
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
		state = 1;
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
		state = 2;
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
		state = 3;
		ClrBuffer();
		nop=1;
	}
	else {
		state = 0;
		nop=1;
	}	
}	

void bdnu_unid(){	
	z = 3;
	w = 4;
	v = 2;
	y = 6;
	while(!TXIF);//wait, buffer empty?
	TXREG		= (z+48);
	__delay_ms(1);
	while(!TXIF);//wait, buffer empty?
	TXREG		= (w+48);
	__delay_ms(1);
	while(!TXIF);//wait, buffer empty?
	TXREG		= 13;
	__delay_ms(1);
	while(!TXIF);//wait, buffer empty?
	TXREG		= (v+48);
	__delay_ms(1);
	while(!TXIF);//wait, buffer empty?
	TXREG		= (y+48);
	__delay_ms(1);
	while(!TXIF);//wait, buffer empty?
	TXREG		= 13;
	__delay_ms(1);
}

void ClrBuffer(){
	int i;
	for(i=0; i<BUFFER_SIZE; i++){
		buffer[i] = 0;
	}
}	
