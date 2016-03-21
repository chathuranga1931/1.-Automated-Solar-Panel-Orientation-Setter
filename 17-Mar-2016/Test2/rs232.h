
void Rs232_Init();

void Rs232_Init(){
	
	//**** RS232 initailizyng ****//
	//SPBRG	= 129;				// 9600 bpS		
	SPEN	= 1;			//Serial Port Enable(RCSTA)
	RX9		= 0;			//8 bit reception		
	CREN	= 1;			//Enable continuous receive
	TX9		= 0;			//8bit transmission (TXSTA)
	TXEN	= 1;			//Tx Enable
	SYNC	= 0;			//Asynchronous mode
	BRGH	= 1;			//high speed	
	SPBRG	= 31;			//9600 BPS(0.16% error with osc 4Mz)
	RCIE	= 1;			//Enable Rx interrupt enable (PIE1)
	TXIE	= 0;			//Dissable Tx interrupt enable	
	__delay_ms(500);	
	
}