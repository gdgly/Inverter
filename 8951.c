/*======================*/
/*	SA838				*/
/*	1999.3.13			*/
/*	File Name:SA838.C	*/
/*======================*/
/*1999.6.24				*/
#include<reg51.h>
#include<absacc.h>
sbit Reset=P1^1;		/*	RESET,LOW LEVEL Valid*/
sbit Cs=P1^0;		/* Chip Select,Low Valid*/

#define GO		224
#define PDYP	115
#define PDYD	179
#define PDTP	114
#define PDTD	178
#define CFSP	113
#define CFSD	177
#define AMPP	112
#define AMPD	176
#define AMAXP	211
#define AMAXD	227
#define BIHR	226
#define NO		0xff

code unsigned char LED[]={0x3,0x9f,0x25,0x0d,0x99,0x49,0x41,0x1f,0x1,0x09,0x11,0xc1,0x63,0x85,0x61,0x71};
/*code unsigned char IR[6][3]={{0xc4,0,40},{0xe2,0x21,52},{0xf1,0x42,58},{0xf9,0x63,61},{0xfd,0x84,63},{0xff,0xa5,63}};*/
//code unsigned char IR[6][3]={{0xc4,0,40},{0x88,0x21,4},{0xf1,0x42,58},{0xf9,0x63,61},{0xfd,0x84,63},{0xff,0xa5,63}};
code unsigned char IR[6][3]={{0xc4,0,40},{0x88,0x21,34},{0xf1,0x42,58},{0xf9,0x63,61},{0xfd,0x84,63},{0xff,0xa5,63}};
code unsigned char CR[3]={0x1b,0x2d,100};

unsigned char Cfs;

bit IRchange,CRchange,close,slowstart;

unsigned char AMP;

void delay(unsigned int time)
{
    unsigned int j;
    for(;time>0;time--){
        for(j=0;j<100;j++);
    }
}	

unsigned char getch(void)
{
    unsigned char j,k;
    for(j=0;j<4;j++){
        P2=~(1<<j);
        k=P2|0xf;
        if(k!=0xff){
            delay(20);
            if(k==P2|0xf)k=(k&0xf0)+j;
            break;
        }
    }
    P2=0xff;
    return k;
}

void send(unsigned char model)
{
/*	while(TI);*/
	SBUF=model;
	TI=0;
}


void main(void)
{
	unsigned int counter=0;
	IRchange=1;
	Cfs=0;
	AMP=5;
	counter=1000;
	while(1){
		counter++;
		if(counter>20){
			if(IRchange){
				Reset=0;
				Cs=0;
				XBYTE[0]=IR[Cfs][0];
				XBYTE[1]=IR[Cfs][1];
				XBYTE[2]=IR[Cfs][2];
				XBYTE[4]=0;
				XBYTE[0]=CR[0];
				XBYTE[1]=CR[1];
	   			AMP=XBYTE[2]=CR[2];
				XBYTE[3]=0;
   				Cs=1;
   				IRchange=0;
   				Reset=0;
			}
		}
		if(CRchange){
      			Cs=0;
         		XBYTE[0]=CR[0];
         		XBYTE[1]=CR[1];
         		XBYTE[2]=AMP;
         		XBYTE[3]=0;
         		Cs=1;
         		CRchange=0;
       		}
       		if(Reset==0)T0=0;
       		else T0=1;
		switch(getch()){
			case GO:{
				if(getch()!=GO)break;
				if(Reset){
					Reset=0;
				}
				else{
					Reset=1;
				}
				delay(1000);
				break;
			}
			case CFSD:{
				if(Cfs<5)Cfs++;
				IRchange=1;
				counter=0;
				delay(200);
				break;
			}
			case CFSP:{
				if(Cfs>0)Cfs--;
				if(Cfs>=5)Cfs=5;
				IRchange=1;
				counter=0;
				delay(200);
				break;
			}
			case AMPP:{
				AMP++;
				if(AMP>250)AMP=250;
				CRchange=1;
				counter=0;
				delay(50);
				break;
			}
			case AMPD:{
				AMP--;
				if(AMP<5)AMP=5;
				CRchange=1;
				counter=0;
				delay(50);
				break;
				
			}
		}
		send(LED[AMP%10]);
		send(LED[(AMP/10)%10]);
		send(LED[AMP/100]);
		send(LED[Cfs]);
		delay(1000);
	}
}

