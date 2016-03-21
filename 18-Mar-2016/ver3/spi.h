/*********************************************************/

#define SET |
#define CLEAR &~

#define SDI 4	
#define SCK 3
#define SDO 5
#define SS	5

unsigned char _BV( unsigned char bitNo);
void SPIx_Init();
bit SPI_Write(unsigned char address, char data);
unsigned char SPI_Read( unsigned char address );

void SPIx_Init(){
	//RC5(SDO),RC3(SCK) should be outputs
	//RC4(SDI) should be input
	//RA5(SS) should be output

	TRISC = TRISC CLEAR _BV(SDO);				//set SDO to output
	TRISC = TRISC CLEAR _BV(SCK);		
	TRISC = TRISC SET _BV(SDI);					//SDI as input		
	TRISA = TRISA SET _BV(SS);					//SS set to input

	SMP = 0; //SSPSTAT = SSPSTAT CLEAR _BV(SMP);			//Sampling getting at mid
	CKE = 0; //SSPSTAT = SSPSTAT CLEAR _BV(CKE);			//falling endge sampling rate
	
	CKP = 0;	
	
	
	/*0000= SPI Master mode, clock = FOSC/4 
	0001= SPI Master mode, clock = FOSC/16 
	0010= SPI Master mode, clock = FOSC/64 
	0011= SPI Master mode, clock = TMR2 output/2 
	0100= SPI Slave mode, clock = SCK pin. SSpin control enabled. 
	0101= SPI Slave mode, clock = SCK pin. SSpin control disabled. SScan be used as I/O pin.*/	
	SSPM0 = 0;
	SSPM1 = 1;
	SSPM2 = 0;
	SSPM3 = 0;
	
	SSPEN = 1; //SSPCON	= SSPCON SET _BV(SSPEN);			//Enables serial port and configures SCK, SDO, SDI, and SS as the source of the serial port pins
}
unsigned char _BV( unsigned char bitNo){
	return 0b00000001 << bitNo;
}		










