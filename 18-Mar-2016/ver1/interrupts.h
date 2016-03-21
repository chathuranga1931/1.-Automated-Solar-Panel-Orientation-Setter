
void interruptTimer1();
void enableInterrupt();
void interruptSPI();
void interrupt isr();

void enableInterrupt(){
		
	RBIE	= 0;	//portb external interrupt enable pin
	INTE	= 0;	//turn of external interrupts for PORTB
	
	PSPIE	= 0;	//parallel slave port interrupt enable bit
	ADIE	= 0;
	
	TXIE	= 0;	//Tx interrupt enable		
	RCIE	= 1;	//Rx interrupt enable (PIE1)
	
	SSPIE	= 0;	//synchronus serial port
	CCP1IE	= 0; 	//capture compare interrupt enable
		
	TMR1IE	= 1;	//Timer1 interrupt enable
	TMR2IE 	= 0;	//timer 2 interrupt enable	
	T0IE	= 0; 	//Timet 0 interrupt enable
	
	EEIE	= 0;	//eeprom write interrupt
	BCLIE	= 0;	//bus collision interrupt enable
	CCP2IE	= 0;	//capture comprare interrupt enable
	
	//Set enable globle interrupt enable and pheripheral interrupt enable
	GIE		= 1;
	PEIE	= 1;
}

//void interrupt isr(){	
//
//	if(TMR1IF==1 && TMR1IE==1){	
//		//this is for error correcting system of rs232 receiving 	
//		//if (OERR){ CREN = 0; __delay_ms(1); CREN = 1; }
//		
//		//interrupt genarates for 100ms
//		interruptTimer1();
//		TMR1L	= 176;
//		TMR1H	= 60;
//		TMR1IF	= 0;
//	}	
//	if(SSPIF==1 && SSPIE==1){
//		interruptSPI();
//	}
//}