/*======================================================*/
/*	1KW SINE WAVEFORM INVERTER			*/ 
/*	MICROCONTROLLER:89C2051				*/
/*	FILE NAME:	2051.C				*/
/*	PROGRAM BY:	FengJiantao			*/
/*	1999.06.22	BEIJING				*/
/*	VER:	V1.00					*/
/*	FUNCTION DESCRIPTION:				*/
/*	1.AC voltage measure,convert AC voltage to      */
/*	pluse width.					*/	
/*	2.LED display.AC voltage and error message.	*/
/*	3.Controll SA838				*/
/*======================================================*/

#include <reg51.h>
#include "sin.h"

#define REFERENCE	151
#define SELECT		1

code unsigned char LED[]={0x3,0x9f,0x25,0x0d,0x99,0x49,0x41,0x1f,0x1,0x09,0x11,0xc1,0x63,0x85,0x61,0x71};
code unsigned char IR[6][3]={{0xc4,0,40},{0xe2,0x21,52},{0xf1,0x42,58},{0xf9,0x63,61},{0xfd,0x84,63},{0xff,0xa5,63}};
code unsigned char CR[3]={0x1b,0x2d,1};

sbit P37=P3^7;
bit FAULT,ERROR;
bit high,low;
bit change;
unsigned char ACV;
unsigned char times,dt,s1,cha;
unsigned int buf[10],sum;
unsigned char LOU;
unsigned char bp;

void delay(unsigned char time)
{
	times=time;
	while(times>0);
}
	

void int0(void) interrupt 0
{
	unsigned char i;
	union{
		unsigned int r;
		unsigned char c[2];
	}t0;
	t0.c[0]=TH0;
	t0.c[1]=TL0;
	if(TH0>2){
		TH0=TL0=0;
		TH1=0xb1;
		TL1=0xdf;
		sum-=buf[bp];
		buf[bp]=t0.r;
		sum+=t0.r;
		t0.r=sum/10;
		if(bp>=9)bp=0;else bp++;
		for(i=0;i<100;i++){
			if(t0.r<=sin[i]){
				ACV=i+REFERENCE;
				if((sin[i]-t0.r)>(t0.r-sin[i-1]))ACV--;
				break;
			}
		}
		if(i==100)ACV=251;
		times--;
		s1++;
		dt++;
		if(ACV>223){
			cha=ACV-220;
			high=1;
			low=0;
		}
		else{
			if(ACV<217){
				cha=220-ACV;
				low=1;
				high=0;
			}
			else{
				low=0;
				high=0;
			}
		}
	}
}
			

void timer0(void) interrupt 1
{
	FAULT=1;
	times--;
	ACV=150;
}

void timer1(void) interrupt 3
{
	TH1=0xb1;
	TL1=0xdf;
	ERROR=1;
	times--;
	ACV=150;
	dt++;
}

void send(unsigned char model)
{
	while(!TI);
	TI=0;
	SBUF=model;
}

void display(unsigned char mode)
{
	unsigned char n;
	switch(mode){
		case 0:{
			send(LED[8]);
			send(LED[8]);
			send(LED[8]);
			send(LED[8]);	
			break;
		}
		case 1:{
			send(0xe3);
			send(0x83);
			send(0x11);
			send(0x71);
			break;
		}
		case 2:{
			send(0xff);
			send(0x83);
			send(0x3);
			send(0xe3);
			break;
		}
		case 3:{
			send(0xff);
			send(0x3);
			send(0x3);
			send(0x93);
			break;
		}
		case 4:{
			send(0xc7);
			if(ACV<152){
				send(0xfd);
				send(0xfd);
				send(0xfd);
			}
			else{
				n=ACV;
				send(LED[n%10]);
				n/=10;
				send(LED[n%10]);
				n/=10;
				send(LED[n%10]);
			}
			break;
		}
       	}
}


void sa838(unsigned char reg,unsigned char dat)
{
	P37=1;
	P1=reg;
	P37=0;
	T1=0;
	P1=dat;
	T1=1;
}
	
void main(void)
{
	unsigned char AMP;
	sum=0;
	FAULT=ERROR=0;
	for(AMP=0;AMP<10;AMP++)buf[AMP]=0;
	bp=0;
	SCON=0;
	SBUF=0xff;
	TMOD=0x19;
	IT0=1;
	ET1=1;
	TR1=1;
	TR0=1;
	ET0=1;
	PX0=1;
	EX0=1;
	EA=1;
	P37=0;
	display(0);
	delay(20);
	if(T0==0){
		T0=0;
		display(2);
		while(1);
	}
	INT1=0;
	sa838(0,IR[SELECT][0]);
	sa838(1,IR[SELECT][1]);
	sa838(2,IR[SELECT][2]);
	sa838(4,0);
	sa838(0,CR[0]);
	sa838(1,CR[1]);
	sa838(2,CR[2]);
	sa838(3,0);
	INT1=1;
	AMP=1;
	while(1){
		if(ACV>=220)break;
		AMP++;
		if(AMP>225){
			AMP=225;
			sa838(0,CR[0]);
			sa838(1,CR[1]);
			sa838(2,AMP);
			sa838(3,0);
			break;
		}
		sa838(0,CR[0]);
		sa838(1,CR[1]);
		sa838(2,AMP);
		sa838(3,0);
		display(4);
		delay(1);
	}
	while(1){
		if(s1==1){
			if(high){
				if(cha>10)AMP=AMP-1;
				else AMP-=1;
				if(AMP<100)AMP=100;
				change=1;
			}
			if(low){
				if(cha>10)AMP=AMP+1;
				else AMP+=1;
				if(AMP>225)AMP=225;
				change=1;
			}
			if(change){
				sa838(0,CR[0]);
				sa838(1,CR[1]);
				sa838(2,AMP);
				sa838(3,0);
				change=0;
			}
			s1=0;
		}
		if(T0){
			LOU=0;
		}
		else LOU++;
		if(LOU>200){
			T0=0;
			INT1=0;
			display(2);
			while(1);
		}
		if(dt==100){
			display(4);
			dt=0;
		}
	}
}


