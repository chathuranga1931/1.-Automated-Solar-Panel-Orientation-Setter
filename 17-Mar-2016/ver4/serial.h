
void Serial_Init();
bit Serial_Print( char *a );
void Serial_NewLine();
bit Serial_Println( char *a );
bit Serial_Println_Int(int val);
bit Serial_Print_Int(int val);
bit Serial_Println_Char(char val);

void Serial_Init(){	
	//**** RS232 initailizyng ****//
	//SPBRG	= 129;			//9600 bpS		
	SPEN	= 1;			//Serial Port Enable(RCSTA)
	RX9		= 0;			//8 bit reception		
	CREN	= 1;			//Enable continuous receive
	TX9		= 0;			//8bit transmission (TXSTA)
	TXEN	= 1;			//Tx Enable
	SYNC	= 0;			//Asynchronous mode
	BRGH	= 1;			//high speed	
	SPBRG	= 129;			//9600 BPS(0.16% error with osc 4Mz)
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

void Serial_NewLine(){
	while(!TXIF);//wait, buffer empty?
	TXREG = 13;
	__delay_ms(1);	
	while(!TXIF);//wait, buffer empty?
	TXREG = 10;
	__delay_ms(1);
}

bit Serial_Println( char *a){
	while( *a!='\0'){
		while(!TXIF);//wait, buffer empty?
		TXREG = *a;
		_delay(10);
		a = a+1;
	}
	Serial_NewLine();
	return 1;
}


bit Serial_Println_Int(int val){
	
	//negative no
	if(val < 0){
		while(!TXIF);//wait, buffer empty?
		TXREG = '-';
		_delay(10);	
		val = -val;	
	}
	if(val > 9999){
		while(!TXIF);//wait, buffer empty?
		TXREG = val/10000+48;
		_delay(10);
		val = val%10000;
		
		while(!TXIF);//wait, buffer empty?
		TXREG = val/1000+48;
		_delay(10);
		val = val%1000;
		
		while(!TXIF);//wait, buffer empty?
		TXREG = val/100+48;
		_delay(10);
		val = val%100;
		
		while(!TXIF);//wait, buffer empty?
		TXREG = val/10+48;
		_delay(10);
		val = val%10;
	}
	else if(val > 999){				
		while(!TXIF);//wait, buffer empty?
		TXREG = val/1000+48;
		_delay(10);
		val = val%1000;
		
		while(!TXIF);//wait, buffer empty?
		TXREG = val/100+48;
		_delay(10);
		val = val%100;
		
		while(!TXIF);//wait, buffer empty?
		TXREG = val/10+48;
		_delay(10);
		val = val%10;
	}	
	else if(val > 99){
		while(!TXIF);//wait, buffer empty?
		TXREG = val/100+48;
		_delay(10);
		val = val%100;
		
		while(!TXIF);//wait, buffer empty?
		TXREG = val/10+48;
		_delay(10);
		val = val%10;
	}
	else if(val > 9){
		while(!TXIF);//wait, buffer empty?
		TXREG = val/10+48;
		_delay(10);
		val = val%10;
	}	
	while(!TXIF);//wait, buffer empty?
	TXREG = val+48;
	_delay(10);	
	while(!TXIF);//wait, buffer empty?
	TXREG = 13;
	_delay(10);
	while(!TXIF);//wait, buffer empty?
	TXREG = 10;
	_delay(10);
	return 1;
}

	

void Serial_Print_Char(char character){	
	while(!TXIF);//wait, buffer empty?
	TXREG		= character;
	_delay(10);
}

bit Serial_Print_Int(int val){
	
//negative no
	if(val < 0){
		while(!TXIF);//wait, buffer empty?
		TXREG = '-';
		_delay(10);	
		val = -val;	
	}
	if(val > 9999){
		while(!TXIF);//wait, buffer empty?
		TXREG = val/10000+48;
		_delay(10);
		val = val%10000;
		
		while(!TXIF);//wait, buffer empty?
		TXREG = val/1000+48;
		_delay(10);
		val = val%1000;
		
		while(!TXIF);//wait, buffer empty?
		TXREG = val/100+48;
		_delay(10);
		val = val%100;
		
		while(!TXIF);//wait, buffer empty?
		TXREG = val/10+48;
		_delay(10);
		val = val%10;
	}
	else if(val > 999){				
		while(!TXIF);//wait, buffer empty?
		TXREG = val/1000+48;
		_delay(10);
		val = val%1000;
		
		while(!TXIF);//wait, buffer empty?
		TXREG = val/100+48;
		_delay(10);
		val = val%100;
		
		while(!TXIF);//wait, buffer empty?
		TXREG = val/10+48;
		_delay(10);
		val = val%10;
	}	
	else if(val > 99){
		while(!TXIF);//wait, buffer empty?
		TXREG = val/100+48;
		_delay(10);
		val = val%100;
		
		while(!TXIF);//wait, buffer empty?
		TXREG = val/10+48;
		_delay(10);
		val = val%10;
	}
	else if(val > 9){
		while(!TXIF);//wait, buffer empty?
		TXREG = val/10+48;
		_delay(10);
		val = val%10;
	}	
	while(!TXIF);//wait, buffer empty?
	TXREG = val+48;
	_delay(10);	
	
	return 1;
}	