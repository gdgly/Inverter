#include<e:\3h\cpx51.h>
#include<sin.h>
unsigned int ACV,cc;
bit flag;
serial() interrupt 4 using 2
{
	if(RI){
    	RI=0;
    }
    else{
    	TI=0;
    }
}
int0() interrupt 0
{
	unsigned char i;
	union{
		unsigned int r;
		unsigned char a[2];
	}b;
	b.a[0]=TH0;
	b.a[1]=TL0;
	TH0=TL0=0;
	if(flag){
	for(i=0;i<100;i++){
		if(b.r<=sin[i])break;
	}
	ACV=i+171;
	cc=b.r;
	}
}


delay(unsigned char i)
{
	unsigned char j;
	for(;i>0;i--){
		for(j=0;j<100;j++);
	}
}
send(unsigned char cc)
{
	while(TI);
	SBUF=cc;
	delay(100);
}
timer0()	interrupt 1
{
	send('E');
}

main()
{
	unsigned char i;
	SCON=0x40;
	PCON=0;
	TMOD=0x29;
	TH1=0xfd;
	IE=0x90;
	TR1=1;
	IT0=1;
	TR0=1;
	ET0=1;
	EX0=1;
	while(1){
		flag=0;
	send('A');
	send('C');
	send('=');
	send(ACV/100+48);
	send((ACV%100)/10+48);
	send((ACV%10)+48);
	send(' ');
	send(cc/1000+48);
	send((cc%1000)/100+48);
	send((cc%100)/10+48);
	send((cc%10)+48);
	send(13);
	send(10);
	flag=1;
	delay(100);
	}
}