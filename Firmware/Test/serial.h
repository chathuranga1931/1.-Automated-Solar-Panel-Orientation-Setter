
void Serial_Init();
bit Serial_Print( char *a );

void Serial_Init(){	
	//**** RS232 initailizyng ****//
	SPBRG	= 25;			//9600 bpS		
	SPEN	= 1;			//Serial Port Enable(RCSTA)
	RX9		= 0;			//8 bit reception		
	CREN	= 1;			//Enable continuous receive
	TX9		= 0;			//8bit transmission (TXSTA)
	TXEN	= 1;			//Tx Enable
	SYNC	= 0;			//Asynchronous mode
	BRGH	= 1;			//high speed	
	SPBRG	= 25;			//9600 BPS(0.16% error with osc 4Mz)
	RCIE	= 1;			//Enable Rx interrupt enable (PIE1)
	TXIE	= 0;			//Dissable Tx interrupt enable
	ADDEN	= 0;	
	__delay_ms(500);	
}

bit Serial_Print( char *a){
	while( *a!='\0'){
		while(!TXIF);//wait, buffer empty?
		TXREG = *a;
		_delay(10);
		a = a+1;
	}
	return 1;
}

bit Serial_PrintlnVal(unsigned int val){		
	while(!TXIF);//wait, buffer empty?
	TXREG = val/1000;
	_delay(10);
	while(!TXIF);//wait, buffer empty?
	TXREG = val%1000/100;
	_delay(10);
	while(!TXIF);//wait, buffer empty?
	TXREG = val%1000%100/10;
	_delay(10);
	while(!TXIF);//wait, buffer empty?
	TXREG = val%1000%100%10;
	_delay(10);
	while(!TXIF);//wait, buffer empty?
	TXREG = 13;
	_delay(10);
	while(!TXIF);//wait, buffer empty?
	TXREG = 10;
	_delay(10);
	return 1;
}


void Serial_NewLine(){
	while(!TXIF);//wait, buffer empty?
	TXREG = 13;
	__delay_ms(1);	
	while(!TXIF);//wait, buffer empty?
	TXREG = 10;
	__delay_ms(1);
}	