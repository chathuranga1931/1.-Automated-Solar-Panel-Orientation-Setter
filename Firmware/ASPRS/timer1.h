
void Timer1_Init();

void Timer1_Init(){	
	//**** timer 1 initialyzing ****//
	T1CKPS1	= 0;
	T1CKPS0	= 1;  // prescaler chage to 2:1
	TMR1CS	= 0; // timer 1 clock sorce selected to internal
	TMR1ON	= 1; // timer 1 on
	T1OSCEN	= 0; // timer 1 oscillator enable enabled //disabled
	TMR1L	= 0xB0;
	TMR1H	= 60; // 0x3Ctimer 1 selected to "0"   to 15536( to make 50000 counts for 1 over flow)	
	TMR1IE	= 1;	
}