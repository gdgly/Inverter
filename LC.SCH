*version 8.0 2135546746
u 21
V? 3
L? 2
C? 2
@libraries
@analysis
.AC 1 1 0
+0 100
+1 20Hz
+2 25KHz
.TF 1 V(out) V1
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
pageloc 1 0 1333 
@status
n 0 99:05:27:17:01:35;930474095 e 
s 0 99:05:27:17:01:36;930474096 e 
c 99:05:27:17:51:16;930477076
*page 1 0 970 720 iA
@ports
@parts
part 3 c 260 230 v
a 0 u 13 0 15 25 hln 100 value=3.3u
a 0 a 9 0 15 0 hln 100 REFDES=C1
a 0 s 0:13 0 0 0 hln 100 PKGREF=C1
part 1 VSIN 140 190 h
a 1 u 0 0 0 0 hcn 100 AC=310V
a 1 u 0 0 0 0 hcn 100 voff=0
a 1 u 0 0 0 0 hcn 100 vampl=1
a 1 u 0 0 0 0 hcn 100 freq=50
a 1 x 9 0 20 10 hcn 100 REFDES=V1
a 0 s 0:13 0 0 0 hln 100 PKGREF=V1
part 2 l 170 190 h
a 0 u 13 0 15 25 hln 100 value=1.15mH
a 0 x 9 0 15 0 hln 100 REFDES=L1
a 0 s 0:13 0 0 0 hln 100 PKGREF=L1
part 18 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 13
a 0 s 3 0 0 0 hln 100 LABEL=out
a 0 up 0:33 0 0 0 hln 100 V=
s 230 190 260 190 12
a 0 s 3 0 245 188 hln 100 LABEL=out
a 0 up 33 0 245 189 hlt 100 V=
s 260 190 260 200 15
w 5
a 0 s 3 0 0 0 hln 100 LABEL=0
s 140 230 260 230 4
a 0 s 3 0 200 228 hln 100 LABEL=0
w 9
a 0 up 0:33 0 0 0 hln 100 V=
s 140 190 170 190 8
a 0 up 33 0 155 189 hct 100 V=
@junction
j 140 230
+ p 1 -
+ w 5
j 260 230
+ p 3 1
+ w 5
j 140 190
+ p 1 +
+ w 9
j 170 190
+ p 2 1
+ w 9
j 230 190
+ p 2 2
+ w 13
j 260 200
+ p 3 2
+ w 13
@attributes
a 0 s 15 0 0 0 hln 100 PAGETITLE=
a 0 s 15 0 0 0 hln 100 PAGENO=1
a 0 s 15 0 0 0 hln 100 PAGESIZE=A
a 0 s 15 0 0 0 hln 100 PAGECOUNT=1
@graphics
