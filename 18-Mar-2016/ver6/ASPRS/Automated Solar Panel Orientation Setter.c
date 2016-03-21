
#include <htc.h>	// to eeprom
#include <xc.h>

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

// CONFIG
#pragma config FOSC     = HS        // Oscillator Selection bits (HS oscillator)
#pragma config WDTE     = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE    = OFF       // Power-up Timer Enable bit (PWRT enabled)
#pragma config BOREN    = OFF      // Brown-out Reset Enable bit (BOR disabled)
#pragma config LVP      = OFF         // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3/PGM pin has PGM function; low-voltage programming enabled)
#pragma config CPD      = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT      = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP       = OFF         // Flash Program Memory Code Protection bit (Code protection off)

#include "def.h"
#include "setup.h"
#include "lcdv2.h"
#include "a2d.h"
#include "serialv2.h"
#include "interrupts.h"
#include "timer1.h"

unsigned char v,y,z,w;
unsigned char x,bed_nu = 1;
unsigned char i = 1;

//**** A to D ****//
void a2d_read();
unsigned int ldr1,ldr2,V_Bat,C_Bat;
unsigned short long V_Bat2,C_Bat2;
void Calculate();

//**** TIMER1 ****//
unsigned int msecond;
unsigned int second;
unsigned int minute;	
unsigned int hour;
unsigned char j;

//**** RS232 ****//
#define BUFFER_SIZE 20
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

unsigned int currentMode = 0;
bit BlinkDet;
bit timeChanged;
bit angleChanged;
int angleCount;
bit TimeBlink_on;  
unsigned int sterpper_counts=0;
int stepsto_turn = 0;

void check_pc();
void ClrBuffer();

void RotateMotorRight(int value);
void RotateMotorLeft(int value);

char CheckKeyPad();
int RowNo();
int ColomnNo(int rowNo);
void CheckMode();
void KeyToSerial();
void LCDTimeUpdate();
void main(){ 
	
	char pressedKey;
	
	Setup_IOports();
	atod_init();
	lcd_init();
	clr_display();
	
	Serial_Init();
	Timer1_Init();
	enableInterrupt();

	lcd_init();
	
	clr_display();
	state = LCD_FORMAT1;
    
    while(BTN == 1){ 
        sterpper_counts = 1;
        RotateMotorRight(1);
    }
    sterpper_counts = 0;
	
	//eeprom_write(0, 21 );
	//__delay_ms(20);
	//eeprom_write(0x01, 0x2A );
	//int abc = eeprom_read(0x00);
    
	nop();
    
    hour = 0;
    minute = 0;
    TimeBlink_on = 1;
	LCDTimeUpdate();
    
	nop();
    
    /* initial change angles */
    int tmp=0;
    for(tmp=0; tmp<12; tmp++){
        eeprom_write(tmp, tmp*15 );
    }
    
	while(1){				
		switch (state){
			//Common States for Mode 1,2,3
			
			//mode 0 initial state
			case  0:
				//state = MODE_NO0;
			break;
			//mode 1 initial state
			case  1:  
				state = LCD_FORMAT1;
			break;
			case  2:
				state = LCD_FORMAT2;
			break;
			case  3:
				state = LCD_FORMAT3;
			break;
			case  4:
				state = LCD_FORMAT4;
			break;
			
            case LCD_FORMAT_COMMON:                
                
            break;
            
            case LCD_FORMAT_TIME_CHANGE:    
                clr_display();
                TimeBlink_on = 0;
                position(1,1);
                printf("TIME: HH:MM     ");
                position(2,1);
                printf("      00:00     ");
                state = TIME_CHANGE;
            break;
            
            case TIME_CHANGE:
                /* Stops blinking in lcd : */
                TimeBlink_on = 0;
                timeChanged = 1;
                int newTimeHr,newTimeMin;
                while(timeChanged){ 
                    pressedKey = CheckKeyPad();
                    if( pressedKey>=48 && pressedKey<=50 ){  //within number range 0,1,2
                        newTimeHr = (pressedKey-48)*10;
                        LCD_print_char(2,7,pressedKey);
                        while(timeChanged){ 
                            pressedKey = CheckKeyPad();
                            if( pressedKey>=48 && pressedKey<58 ){  //within number range
                                newTimeHr = newTimeHr + (pressedKey-48);
                                LCD_print_char(2,8,pressedKey);
                                pressedKey = '@';
                                while(timeChanged){ 
                                    pressedKey = CheckKeyPad();
                                    if( pressedKey>=48 && pressedKey<=53 ){  //within number range
                                        newTimeMin = (pressedKey-48)*10;
                                        LCD_print_char(2,10,pressedKey);
                                        pressedKey = '@';
                                        while(timeChanged){ 
                                            pressedKey = CheckKeyPad();
                                            if( pressedKey>=48 && pressedKey<58 ){  //within number range
                                                LCD_print_char(2,11,pressedKey);
                                                newTimeMin = newTimeMin + (pressedKey-48);
                                                timeChanged = 0;
                                                pressedKey = '@';
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                hour = newTimeHr;
                minute = newTimeMin;
                state = 1;
                
                /* Starts blinking in lcd : */
                TimeBlink_on = 1;
                LCDTimeUpdate();
            break;  
            
            case LCD_FORMAT_ANGLE_CHANGE:   
                clr_display();
                TimeBlink_on = 0;
                position(1,1);
                printf("Time  - 06:00   ");
                position(2,1);
                printf("Angle - 000D    ");
                state = ANGLE_CHANGE;
            break;
            
            case ANGLE_CHANGE:  
                /* Starts blinking in lcd : */
                TimeBlink_on = 0;  
                
                angleCount = 12;
                int angle_old;
                int angle;
                
                angleChanged = 1;
                
                angle_old = eeprom_read(12-angleCount);
                LCD_print_char(2,9,angle_old/100+48);
                LCD_print_char(2,10,angle_old%100/10+48);
                LCD_print_char(2,11,angle_old%100%10+48);
                
                while(angleCount){
                    pressedKey = CheckKeyPad();
                    if( pressedKey>=48 && pressedKey<58 ){
                        LCD_print_char(2,9,pressedKey);
                        angle = (pressedKey-48)*100;
                        /* to falls next statment */
                        pressedKey = '@';
                        while(angleChanged){
                            pressedKey = CheckKeyPad();
                            if( pressedKey>=48 && pressedKey<58 ){
                                LCD_print_char(2,10,pressedKey);
                                angle = angle + (pressedKey-48)*10;
                                pressedKey = '@';
                                while(angleChanged){
                                    pressedKey = CheckKeyPad();
                                    if( pressedKey>=48 && pressedKey<58 ){
                                        LCD_print_char(2,11,pressedKey);
                                        
                                        LCD_print_char(1,9,(48+(7+12-angleCount)/10));
                                        LCD_print_char(1,10,(48+(7+12-angleCount)%10));
                                        
                                        __delay_ms(1000);
                                        
                                        angle = angle + (pressedKey-48);
                                        eeprom_write(12-angleCount, angle );
                                        angleCount--;
                                        
                                        angle_old = eeprom_read(12-angleCount);
                                        
                                        LCD_print_char(2,9,angle_old/100+48);
                                        LCD_print_char(2,10,angle_old%100/10+48);
                                        LCD_print_char(2,11,angle_old%100%10+48);
                                        
                                        
                                        
                                        angleChanged = 0;
                                        pressedKey = '@';
                                    }
                                }                                
                            }   
                        }                                             
                    }
                    angleChanged = 1;
                }
                /* Starts blinking in lcd : */
                state = 1;
                TimeBlink_on = 1;
            break;
            
            //Mode1
			case  LCD_FORMAT1:
                                
                position(1,1);
                printf("MODE1,000D,00:00");
                position(2,1);
                printf("00.0V,0.0A,00.0W");      
                LCDTimeUpdate(); 
				//after display the relevant things goes to the
				//working state.
				state = MODE_NO1;
			break;
			case MODE_NO1 :	
                
				a2d_read();
				//calculate();
				Serial_Print_Int(ldr1);
				Serial_Print(", ");
				Serial_Print_Int(ldr2);
				Serial_Print(", ");
				Serial_Print_Int(V_Bat);
				Serial_Print(", ");
				Serial_Print_Int(C_Bat);
				Serial_Print(", ");
				Serial_NewLine();
				__delay_ms(50);                
				nop();	
                
                //angle
                double tmp_angle_display = (double)(sterpper_counts/0.55);
                int angle_display = (int)tmp_angle_display;
                
                LCD_print_char(1,7,angle_display/100+48);
                LCD_print_char(1,8,angle_display%100/10+48);
                LCD_print_char(1,9,angle_display%100%10+48); 
                
                //voltage
                LCD_print_char(2,1,V_Bat2/10+48);
                LCD_print_char(2,2,V_Bat2%10+48);
                LCD_print_char(2,4,'0');
                
                //current
                LCD_print_char(2,7,'0');
                LCD_print_char(2,9,'0');
                
                //power
                LCD_print_char(2,12,'0');
                LCD_print_char(2,13,'0');
                LCD_print_char(2,15,'0');
                
				//TX_CONTROL = 1;
				//Serial_Println( "Switched to Mode 1" );
				//TX_CONTROL = 0;
				CheckMode();
				//KeyToSerial();
                Calculate();
				
			break;
			
			//Mode 2
			case LCD_FORMAT2 : 
                
                
				a2d_read();
                position(1,1);
                printf("MODE2,000D,00:00");
                position(2,1);
                printf("00.0V,0.0A,00.0W");
                LCDTimeUpdate();
				//working state.
				state = MODE_NO2;
			break;			
			case MODE_NO2 :a2d_read();
				//calculate();
				Serial_Print_Int(ldr1);
				Serial_Print(", ");
				Serial_Print_Int(ldr2);
				Serial_Print(", ");
				Serial_Print_Int(V_Bat);
				Serial_Print(", ");
				Serial_Print_Int(C_Bat);
				Serial_Print(", ");
				Serial_NewLine();
				__delay_ms(50);                
				nop();	
                
                //angle
                double tmp_angle_display = (double)(sterpper_counts/0.55);
                int angle_display = (int)tmp_angle_display;
                
                LCD_print_char(1,7,angle_display/100+48);
                LCD_print_char(1,8,angle_display%100/10+48);
                LCD_print_char(1,9,angle_display%100%10+48); 
                
                //voltage
                LCD_print_char(2,1,V_Bat2/10+48);
                LCD_print_char(2,2,V_Bat2%10+48);
                LCD_print_char(2,4,'0');
                
                //current
                LCD_print_char(2,7,'0');
                LCD_print_char(2,9,'0');
                
                //power
                LCD_print_char(2,12,'0');
                LCD_print_char(2,13,'0');
                LCD_print_char(2,15,'0');
                
                /* with in our movement range */
                if(hour >= 6 && hour <=18 ){
                    // 1 step keep for rotating here and there.                    
                    double tmp_stepsto_turn =(eeprom_read( hour-6 )*0.56;
                    int stepsto_turn = (int)tmp_stepsto_turn; 
                    while( !(sterpper_counts == stepsto_turn)){// + 1 && sterpper_counts > stepsto_turn - 1 ){
                        if( stepsto_turn > sterpper_counts ){
                            RotateMotorLeft(1);
                        }
                        else{
                            RotateMotorRight(1);                    
                        }
                    }                    
                } 
                
				//TX_CONTROL = 1;
				//Serial_Println( "Switched to Mode 1" );
				//TX_CONTROL = 0;
                
				CheckMode();
                
				//KeyToSerial();
                
			break;
			
			case LCD_FORMAT3 :
                                
                position(1,1);
                printf("MODE3,000D,00:00");
                position(2,1);
                printf("00.0V,0.0A,00.0W");
                LCDTimeUpdate();
                
				//after display the relevant things goes to the
				//working state.
				state = MODE_NO3;
			break;				
			case MODE_NO3 ://calculate();
                
				a2d_read();
				Serial_Print_Int(ldr1);
				Serial_Print(", ");
				Serial_Print_Int(ldr2);
				Serial_Print(", ");
				Serial_Print_Int(V_Bat);
				Serial_Print(", ");
				Serial_Print_Int(C_Bat);
				Serial_Print(", ");
				Serial_NewLine();
				__delay_ms(50);                
				nop();	
                
                //angle
                double tmp_angle_display = (double)(sterpper_counts/0.55);
                int angle_display = (int)tmp_angle_display;
                
                LCD_print_char(1,7,angle_display/100+48);
                LCD_print_char(1,8,angle_display%100/10+48);
                LCD_print_char(1,9,angle_display%100%10+48); 
                
                //voltage
                LCD_print_char(2,1,V_Bat2/10+48);
                LCD_print_char(2,2,V_Bat2%10+48);
                LCD_print_char(2,4,'0');
                
                //current
                LCD_print_char(2,7,'0');
                LCD_print_char(2,9,'0');
                
                //power
                LCD_print_char(2,12,'0');
                LCD_print_char(2,13,'0');
                LCD_print_char(2,15,'0');
                
                
                
				//TX_CONTROL = 1;
				//Serial_Println( "Switched to Mode 1" );
				//TX_CONTROL = 0;
                
                pressedKey = CheckKeyPad();
                if(pressedKey == 'A'){
                    RotateMotorLeft(1);                    
                }
                else if(pressedKey == 'B'){
                    RotateMotorRight(1);
                }
                else if (pressedKey == '*'){
                    state = 4;
                }
              
                
				//KeyToSerial();					
			break;
            
            case LCD_FORMAT4 :
                                
                position(1,1);
                printf("MODE*,000D,00:00");
                position(2,1);
                printf("00.0V,0.0A,00.0W");
                LCDTimeUpdate();
				state = MODE_NO4;
			break;	
			
			case MODE_NO4 :
                pressedKey = CheckKeyPad();
                if( pressedKey=='*' ){
                    currentMode++;
                    if (currentMode>TOTAL_MODES) currentMode = 1;
                    state = currentMode;

                    TX_CONTROL = 1;
                    Serial_Print("Switched to Mode : ");
                    Serial_Println_Int((int)state);
                    TX_CONTROL = 0;

                    nopnop();						
                }	
                /*
                 * C for Change the EEPROM DATA according to the time
                 */
                else if(pressedKey=='C'){
                    //go to change the EEPROM DATA state
                    TX_CONTROL = 1;
                    Serial_Print("Switched to Mode : ");
                    Serial_Println_Int((int)state);
                    TX_CONTROL = 0;
                    
                    state = LCD_FORMAT_ANGLE_CHANGE;
                }
                /*
                 * D for change the Time.
                 */
                else if(pressedKey=='D'){
                    //go to time changing state.
                    TX_CONTROL = 1;
                    Serial_Print("Switched to Mode : ");
                    Serial_Println_Int((int)state);
                    TX_CONTROL = 0;
                    
                    state = LCD_FORMAT_TIME_CHANGE;
                }
			break;
			default:
            
			
			break;
		}	
	}
}

void CheckMode(){
	char pressedKey;
	pressedKey = CheckKeyPad();
	//mode change key pressed
	if( pressedKey=='*' ){
		currentMode++;
		if (currentMode>TOTAL_MODES) currentMode = 1;
		state = currentMode;
		
		TX_CONTROL = 1;
		Serial_Print("Switched to Mode : ");
		Serial_Println_Int((int)state);
		TX_CONTROL = 0;
		
		nopnop();						
	}	
}

void KeyToSerial(){
	char pressedKey = CheckKeyPad();
	if( pressedKey!='$'){
		
		TX_CONTROL = 1;
		Serial_Print_Char(pressedKey);
		TX_CONTROL = 0;
		
		nopnop();	//since mplab bug if nop does not works then use nopnop()
		nop();
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
    /*
     * This thing can be done using a delay as well.
     * 
     */
	if(rowNo==1)	while(READ1==0);
	else if(rowNo==2)	while(READ2==0);
	else if(rowNo==3)	while(READ3==0);
	else if(rowNo==4)	while(READ4==0);     
    
    //__delay_ms(30);
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
	return 0;
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
	if(direction == 1){
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
    if(sterpper_counts < MAX_STEPPER_COUNTS ){
        for(i=0; i<value; i++){
            M1=0; M2=1; M3=1; M4=1;
            __delay_ms(15);
            M1=1; M2=0; M3=1; M4=1;
            __delay_ms(15);
            M1=1; M2=1; M3=0; M4=1;
            __delay_ms(15);
            M1=1; M2=1; M3=1; M4=0;
            __delay_ms(15);
            sterpper_counts++;
        }
    }
	M1=1; M2=1; M3=1; M4=1;	    
}

void RotateMotorRight(int value){
	//code here for right rotation.
    
	int i=0;
    if(sterpper_counts > 0 ){
        for(i=0; i<value; i++){
            M1=1; M2=1; M3=1; M4=0;
            __delay_ms(15);
            M1=1; M2=1; M3=0; M4=1;
            __delay_ms(15);
            M1=1; M2=0; M3=1; M4=1;
            __delay_ms(15);
            M1=0; M2=1; M3=1; M4=1;
            __delay_ms(15);
            sterpper_counts--;
        }
	}
    else{
        
    }	
	M1=1; M2=1; M3=1; M4=1;
}

void a2d_read(){
	ldr1 = read_a2d_value(0);
	ldr2 = read_a2d_value(1);
    ldr2 = ldr2 + (int)(ldr2*0.35);
	V_Bat = read_a2d_value(2);
    V_Bat2 = (int)V_Bat*5*11/1023;
	C_Bat = read_a2d_value(3);	
    C_Bat2 = (int)C_Bat*5*11/1023;
}

void Calculate(){
	//by the calculation set the rotation counts and the direction 
	//to rotate
	
	//calculation counts
	//direction
    if(ldr1 > ldr2){        
        if(ldr1 - ldr2  > 25){
            RotateMotorLeft(1);
        }
    }
	else if (ldr2 > ldr1){
        if(ldr2 - ldr1  > 25){
            RotateMotorRight(1);
        }	
    }
}

//*************** interrupt function *****************
void interrupt isr(){	
	if(TMR1IF==1){	
		msecond ++;
		if(msecond == 50){
			second ++;
			//enableInterrupt();
			if(TimeBlink_on){
                if(BlinkDet){
                    LCD_print_char(1,14,':');
                }
                else{
                    LCD_print_char(1,14,' ');                
                }
                LCDTimeUpdate();
                BlinkDet = !BlinkDet;
            }
					
			LED1 = !LED1;
			msecond = 0;
			if( second == 60){
				//LCDTimeUpdate();				
				//LCD_print_char(2,12,hour/10+48);
				//LCD_print_char(2,13,hour%10+48);
				//LCD_print_char(2,15,minute/10+48);
				//LCD_print_char(2,16,minute%10+48);				
				
				minute ++;			
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
		if ((FERR == 0) && (OERR == 0)){		// no error								
			wtmp = RCREG;			
			if( RCREG=='*' || j > BUFFER_SIZE-1 ){
				j=0;
			}
			buffer[j] = RCREG;
			j ++;					
     	}
     	else{ // error occoured
	                  
	          CREN = 0;	// clear error
	          FERR = 0;
	          wtmp = RCREG;
	          wtmp = RCREG;
			  CREN = 1;	// enable again
	     } 
	     RCIF = 0;   
	}	
   	if(OERR == 1){
 		CREN = 0;	// clear error
     	//RCSTA.2 = 0;	//Clear framming error
        wtmp = RCREG;
        wtmp = RCREG;
		CREN = 1;	// enable again
	}
	
}

void check_pc(){
	
}	

void bdnu_unid(){	

}

void ClrBuffer(){
	int i;
	for(i=0; i<BUFFER_SIZE; i++){
		buffer[i] = 0;
	}
}

void LCDTimeUpdate(){
	LCD_print_char(1,12,hour/10+48);
    __delay_ms(10);
	LCD_print_char(1,13,hour%10+48);
    __delay_ms(10);
	LCD_print_char(1,15,minute/10+48);
    __delay_ms(10);
	LCD_print_char(1,16,minute%10+48);
    __delay_ms(10);
}		
