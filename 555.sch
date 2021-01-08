*version 8.0 136051935
u 69
X? 2
R? 5
C? 2
D? 2
V? 2
@libraries
@analysis
.TRAN 1 0 0 0
+0 1ms
+1 1s
.TF 0  
@targets
@attributes
@translators
a 0 u 13 0 0 0 hln 100 TANGO=PCB
a 0 u 13 0 0 0 hln 100 SCICARDS=PCB
a 0 u 13 0 0 0 hln 100 PROTEL=PCB
a 0 u 13 0 0 0 hln 100 PCBOARDS=PCB
a 0 u 13 0 0 0 hln 100 PCAD=PCB
a 0 u 13 0 0 0 hln 100 PADS=PCB
a 0 u 13 0 0 0 hln 100 ORCAD=PCB
a 0 u 13 0 0 0 hln 100 EDIF=PCB
a 0 u 13 0 0 0 hln 100 CADSTAR=PCB
a 0 u 13 0 0 0 hln 100 PSPICE=PSPICE
a 0 u 13 0 0 0 hln 100 XILINX=XILINX
@setup
unconnectedPins 0
connectViaLabel 0
connectViaLocalLabels 0
NoStim4ExtIFPortsWarnings 1
AutoGenStim4ExtIFPorts 1
@index
pageloc 1 0 3938 
@status
n 0 99:05:09:11:08:17;928897697 e 
s 2832 99:05:09:11:08:18;928897698 e 
*page 1 0 970 720 iA
@ports
@parts
part 6 D1N4148 120 70 d
a 0 sp 11 0 15 25 hln 100 PART=D1N4148
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-35
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=D1
a 0 ap 9 0 15 0 hln 100 REFDES=D1
part 7 VDC 60 110 h
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 24 7 hcn 100 REFDES=V1
a 1 u 13 0 -11 18 hcn 100 DC=12V
part 2 555D 210 130 h
a 0 sp 11 0 66 100 hlb 100 PART=555D
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP8
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=X1
a 1 ap 9 0 70 8 hln 100 REFDES=X1
part 54 R 340 200 v
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R3
a 0 ap 9 0 15 0 hln 100 REFDES=R3
a 0 u 13 0 15 25 hln 100 VALUE=100k
part 55 R 170 200 v
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R4
a 0 ap 9 0 15 0 hln 100 REFDES=R4
a 0 u 13 0 15 25 hln 100 VALUE=1000M
part 5 R 140 60 v
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 ap 9 0 15 0 hln 100 REFDES=R2
a 0 u 13 0 15 25 hln 100 VALUE=10k
part 4 C 140 220 v
a 0 sp 0 0 0 10 hlb 100 PART=C
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 15 0 hln 100 REFDES=C1
a 0 u 13 0 15 25 hln 100 VALUE=10n
part 3 R 140 110 v
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
a 0 u 13 0 15 25 hln 100 VALUE=4.7k
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
@conn
w 9
a 0 up 0:33 0 0 0 hln 100 V=
s 60 110 60 20 8
s 60 20 140 20 10
s 140 20 190 20 12
s 260 20 260 100 13
s 210 140 190 140 42
s 190 20 260 20 46
s 190 140 190 20 44
a 0 up 33 0 192 80 hlt 100 V=
w 53
a 0 sr 0 0 0 0 hln 100 LABEL=out
a 0 up 0:33 0 0 0 hln 100 V=
s 310 140 340 140 52
a 0 sr 3 0 325 138 hcn 100 LABEL=out
a 0 up 33 0 325 139 hct 100 V=
s 340 140 340 160 67
w 36
a 0 up 0:33 0 0 0 hln 100 V=
a 0 sr 0 0 0 0 hln 100 LABEL=0
s 340 220 260 220 65
a 0 sr 3 0 300 218 hcn 100 LABEL=0
s 60 150 60 220 35
s 60 220 140 220 37
s 140 220 170 220 39
s 260 220 260 200 40
s 170 220 260 220 58
a 0 up 33 0 215 219 hct 100 V=
s 170 200 170 220 56
s 340 200 340 220 63
w 60
a 0 up 0:33 0 0 0 hln 100 V=
s 170 160 170 150 59
s 170 150 210 150 61
a 0 up 33 0 200 284 hct 100 V=
w 25
a 0 up 0:33 0 0 0 hln 100 V=
s 120 130 120 100 26
s 140 110 140 130 28
s 140 130 140 190 32
s 210 130 200 130 30
s 140 130 120 130 33
s 210 160 200 160 47
s 200 130 140 130 51
a 0 up 33 0 125 264 hct 100 V=
s 200 160 200 130 49
w 16
a 0 up 0:33 0 0 0 hln 100 V=
s 140 60 140 70 15
s 120 70 140 70 17
s 140 70 180 70 19
s 180 70 180 170 20
a 0 up 33 0 277 60 hlt 100 V=
s 180 170 210 170 22
@junction
j 60 110
+ p 7 +
+ w 9
j 140 20
+ p 5 2
+ w 9
j 260 100
+ p 2 VCC
+ w 9
j 140 70
+ p 3 2
+ w 16
j 140 60
+ p 5 1
+ w 16
j 120 70
+ p 6 1
+ w 16
j 210 170
+ p 2 DISCHARGE
+ w 16
j 120 100
+ p 6 2
+ w 25
j 140 130
+ w 25
+ w 25
j 140 190
+ p 4 2
+ w 25
j 140 110
+ p 3 1
+ w 25
j 210 130
+ p 2 TRIGGER
+ w 25
j 60 150
+ p 7 -
+ w 36
j 140 220
+ p 4 1
+ w 36
j 260 200
+ p 2 GND
+ w 36
j 210 140
+ p 2 RESET
+ w 9
j 190 20
+ w 9
+ w 9
j 210 160
+ p 2 THRESHOLD
+ w 25
j 200 130
+ w 25
+ w 25
j 310 140
+ p 2 OUTPUT
+ w 53
j 170 200
+ p 55 1
+ w 36
j 170 220
+ w 36
+ w 36
j 170 160
+ p 55 2
+ w 60
j 210 150
+ p 2 CONTROL
+ w 60
j 340 200
+ p 54 1
+ w 36
j 260 220
+ w 36
+ w 36
j 340 160
+ p 54 2
+ w 53
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
