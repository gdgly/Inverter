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

code unsigned char IR[6][3]={{0x00,0,9},{0x2d,0x21,0x24},{0x57,0x42,0x32},{0x6b,0x63,0x39},{0x76,0x84,0x3d},{0x7b,0xa5,0x3e}};
code unsigned char CR[3]={0x49,0x2e,0};

code unsigned int Fcr[6]={21600,10800,5400,2700,1350,675};

unsigned char Cfs;
unsigned int ACV;
	union{
		unsigned int r;
		unsigned char a[2];
	}b;

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


void main(void)
{
	unsigned char pdy,pdt,AMAX=250;
	unsigned int counter=0;
	double Tdy,Tdt,A;
	IRchange=1;
	counter=1000;
	while(1){
		counter++;
		if(counter>50){
			if(IRchange){
				Reset=0;
				Cs=0;
				XBYTE[0]=IR[Cfs][0];
				XBYTE[1]=IR[Cfs][1];
				XBYTE[2]=IR[Cfs][2];
				XBYTE[4]=0;
				XBYTE[0]=CR[0];
				XBYTE[1]=CR[1];
	   			XBYTE[2]=CR[2];
				XBYTE[3]=0;
   				Cs=1;
   				IRchange=0;
   				Reset=0;
			}
		}
		if(CRchange){
			if(AMP>AMAX)AMP=AMAX;
      		Cs=0;
         	XBYTE[0]=CR[0];
         	XBYTE[1]=CR[1];
         	XBYTE[2]=AMP;
         	XBYTE[3]=0;
         	Cs=1;
         	CRchange=0;
       	}
		switch(getch()){
			case GO:{
				if(getch()!=GO)break;
				if(Reset){
					Reset=0;
					fault=low=over=0;				
				}
				else{
					Reset=1;
					fault=low=over=1;
				}
				while(getch()!=0xff);
				break;
			}
			case CFSD:{
				if(Cfs<5)Cfs++;
				pdt=IR[Cfs][0];
				pdy=IR[Cfs][2];
				IRchange=1;
				counter=0;
				delay(100);
				break;
			}
			case CFSP:{
				if(Cfs>0)Cfs--;
				pdt=IR[Cfs][0];
				pdy=IR[Cfs][2];
				IRchange=1;
				counter=0;
				delay(100);
				break;
			}
			case AMPP:{
				AMP++;
				if(AMP>250)AMP=250;
				CRchange=1;
				counter=0;
				delay(100);
				break;
			}
			case AMPD:{
				AMP--;
				if(AMP<5)AMP=5;
				CRchange=1;
				counter=0;
				delay(100);
				break;
				
			}
		}
		send
	}
}

