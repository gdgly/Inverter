*version 1.0 1051730234
lib E:\msim\lib\\abm.slb 0
lib E:\msim\lib\\analog.slb 0
lib E:\msim\lib\\anlg_dev.slb 0
lib E:\msim\lib\\bipolar.slb 0
lib E:\msim\lib\\breakout.slb 0
lib E:\msim\lib\\burr_brn.slb 0
lib E:\msim\lib\\cd4000.slb 0
lib E:\msim\lib\\dig_1.slb 1709796238
lib E:\msim\lib\\dig_2.slb 0
lib E:\msim\lib\\dig_3.slb 0
lib E:\msim\lib\\dig_4.slb 0
lib E:\msim\lib\\dig_ecl.slb 0
lib E:\msim\lib\\dig_gal.slb 0
lib E:\msim\lib\\dig_misc.slb 0
lib E:\msim\lib\\dig_pal.slb 0
lib E:\msim\lib\\diode.slb 0
lib E:\msim\lib\\europe.slb 0
lib E:\msim\lib\\global.slb 0
lib E:\msim\lib\\harris.slb 0
lib E:\msim\lib\\jfet.slb 0
lib E:\msim\lib\\lin_tech.slb 0
lib E:\msim\lib\\marker.slb 0
lib E:\msim\lib\\misc.slb 0
lib E:\msim\lib\\mosfet.slb 0
lib E:\msim\lib\\opamp.slb 0
lib E:\msim\lib\\opto.slb 0
lib E:\msim\lib\\pwrbjt.slb 0
lib E:\msim\lib\\source.slb 0
lib E:\msim\lib\\special.slb 0
lib E:\msim\lib\\swit_rav.slb 0
lib E:\msim\lib\\swit_reg.slb 0
lib E:\msim\lib\\tex_inst.slb 0
lib E:\msim\lib\\thyristr.slb 0
lib E:\msim\lib\\xtal.slb 0
u 304
V? 3
R? 16
D? 2
U? 3
@analysis
.DC 1 0 0 1 1 1
+ 0 4 10
+ 0 5 100
+ 0 6 5
@attributes
@index
pageloc 1 0 2305 
@status
n 0 99:04:21:00:00:26;927270026 e 
s 0 99:04:21:00:00:26;927270026 e 
e 0 99:04:20:23:42:43;927268963 e 
*page 1 0 970 720 iA
@ports
@parts
part  1 VSRC 140 160 h
a 1 u 0 0 0 0 hcn 100 DC=10V
a 1 x 9 0 20 10 hcn 100 refdes=V1
part  2 R 170 160 h
a 0 u 13 0 15 25 hln 100 value=1k
a 0 x 9 0 15 0 hln 100 REFDES=R1
part  3 D1N4148 210 170 d
a 0 sp 13 0 15 25 hln 100 PART=D1N4148
a 0 a 9 0 15 0 hln 100 refdes=D1
part  202 r 330 210 h
a 0 u 13 0 15 25 hln 100 value=510
a 0 x 9 0 15 0 hln 100 REFDES=R11
part  147 lm324 320 150 h
a 0 s 13 0 50 60 hcn 100 PART=lm324
a 0 a 13 0 50 10 hcn 100 refdes=U2
part  286 r 300 150 v
a 0 u 13 0 15 25 hln 100 value=10k
a 0 a 9 0 15 0 hln 100 REFDES=R14
part  288 r 300 240 v
a 0 a 9 0 15 0 hln 100 REFDES=R15
part  0 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PageSize=A
a 1 s 13 0 180 60 hcn 100 PageTitle=
a 1 s 13 0 300 95 hrn 100 PageNO=1
a 1 s 13 0 340 95 hrn 100 PageCount=1
@conn
w 5
a 0 s 3 0 212 165 hln 100 LABEL=D
s 210 170 210 160 8
s 210 160 210 150 246
a 0 s 3 0 212 165 hln 100 LABEL=D
s 250 190 250 150 273
s 250 150 210 150 276
s 330 210 310 210 209
s 310 190 320 190 303
s 310 210 310 190 212
s 250 190 310 190 300
w 13
s 140 160 160 160 12
s 360 140 360 100 62
s 360 100 300 100 72
s 160 160 170 160 74
s 160 100 160 160 70
s 300 100 160 100 299
s 300 110 300 100 295
w 45
a 0 s 3 0 410 168 hln 100 LABEL=out
s 400 210 370 210 217
s 400 170 420 170 144
a 0 s 3 0 410 168 hln 100 LABEL=out
s 400 210 400 170 220
w 233
a 0 s 3 0 175 198 hln 100 LABEL=0
s 360 200 360 240 50
s 210 240 210 200 58
s 140 200 210 200 4
a 0 s 3 0 175 198 hln 100 LABEL=0
s 360 240 300 240 251
s 300 240 210 240 289
w 285
s 320 150 300 150 278
s 300 200 300 150 291
@junction
j 140 200
+ p 1 -
+ w 233
j 210 200
+ p 3 2
+ w 233
j 210 160
+ p 2 2
+ w 5
j 210 170
+ p 3 1
+ w 5
j 140 160
+ p 1 +
+ w 13
j 170 160
+ p 2 1
+ w 13
j 160 160
+ w 13
+ w 13
j 370 210
+ p 202 2
+ w 45
j 330 210
+ p 202 1
+ w 5
j 360 240
+ w 233
+ w 233
j 320 190
+ p 147 -
+ w 5
j 360 140
+ p 147 V+
+ w 13
j 400 170
+ p 147 5
+ w 45
j 360 200
+ p 147 V-
+ w 233
j 320 150
+ p 147 +
+ w 285
j 300 150
+ p 286 1
+ w 285
j 300 240
+ p 288 1
+ w 233
j 300 200
+ p 288 2
+ w 285
j 300 110
+ p 286 2
+ w 13
j 300 100
+ w 13
+ w 13
j 310 190
+ w 5
+ w 5
@attributes
a 0 s 15 0 0 0 hln 100 PAGETITLE=
a 0 s 15 0 0 0 hln 100 PAGENO=1
a 0 s 15 0 0 0 hln 100 PAGESIZE=A
a 0 s 15 0 0 0 hln 100 PAGECOUNT=1
@text
