                     dw reset_vector  ; 0x0076
                     dw brk_vector  ; 0x0093
                     dw wdt_vector  ; 0x007f
                     dw optrp_vector  ; 0x0084
                     dw nmi_vector  ; 0x0089
                     dw int0_vector  ; 0x17eb
                     dw tm0_vector  ; 0x0089
                     dw tm1_vector  ; 0x22a5
                     dw cap0_vector  ; 0x17fb
                     dw cap1_vector  ; 0x2066
                     dw cap2_vector  ; 0x0089
                     dw cap3_vector  ; 0x0089
                     dw rto4_vector  ; 0x0089
                     dw rto5_vector  ; 0x0089
                     dw rto6_vector  ; 0x0089
                     dw rto7_vector  ; 0x0089
                     dw rto8_vector  ; 0x0089
                     dw rto9_vector  ; 0x0089
                     dw rto10_vector  ; 0x0089
                     dw rto11_vector  ; 0x0089
                     dw sci1_vector  ; 0x22c2
                     dw sxtm_vector  ; 0x0089
                     dw gtmc_vector  ; 0x22b1
                     dw adc1_vector  ; 0x3075
                     dw adc0_vector  ; 0x242b
                     dw pwc0_1_vector  ; 0x0089
                     dw pwc2_3_vector  ; 0x0089
                     dw sci0_vector  ; 0x237d
                     dw int1_vector  ; 0x0089
                     dw rto12_vector  ; 0x0089
                     dw rto13_vector  ; 0x0089
                     dw pwc4_5_vector  ; 0x0089
                     dw pwc6_7_vector  ; 0x0089
                     dw cap14_vector  ; 0x0089
                     dw cap15_vector  ; 0x0089
                     dw ftm16_vector  ; 0x0089
                     dw ftm17_vector  ; 0x2067
                     dw vcal0_vector  ; 0x4494
                     dw vcal1_vector  ; 0x008e
                     dw vcal2_vector  ; 0x008e
                     dw vcal3_vector  ; 0x008e
                     dw vcal4_vector  ; 0x008e
                     dw vcal5_vector  ; 0x008e
                     dw vcal6_vector  ; 0x008e
                     dw vcal7_vector  ; 0x008e
                     dw vcal8_vector  ; 0x008e
                     dw vcal9_vector  ; 0x008e
                     dw vcal10_vector  ; 0x008e
                     dw vcal11_vector  ; 0x008e
                     dw vcal12_vector  ; 0x008e
                     dw vcal13_vector  ; 0x008e
                     dw vcal14_vector  ; 0x008e
                     dw vcal15_vector  ; 0x008e
                     dw pwc8_9_vector  ; 0x0089
                     dw pwc10_11_vector  ; 0x0089
                     dw sci2_vector  ; 0x0089
                     dw sci3_vector  ; 0x0089
                     dw sci4_vector  ; 0x0089
                     dw sci5_vector  ; 0x0089
reset_vector:
0x0076 DD=0: b4 2a ab d2         MOVB 0x022a, #0xd2
0x007a DD=0: b4 29 ab 02         MOVB 0x0229, #0x02
0x007e DD=0: ff                  BRK
wdt_vector:
0x007f DD=0: b4 2a ab cc         MOVB 0x022a, #0xcc
0x0083 DD=0: ff                  BRK
optrp_vector:
0x0084 DD=0: b4 2a ab cd         MOVB 0x022a, #0xcd
0x0088 DD=0: ff                  BRK
nmi_vector:
tm0_vector:
cap2_vector:
cap3_vector:
rto4_vector:
rto5_vector:
rto6_vector:
rto7_vector:
rto8_vector:
rto9_vector:
rto10_vector:
rto11_vector:
sxtm_vector:
pwc0_1_vector:
pwc2_3_vector:
int1_vector:
rto12_vector:
rto13_vector:
pwc4_5_vector:
pwc6_7_vector:
cap14_vector:
cap15_vector:
ftm16_vector:
pwc8_9_vector:
pwc10_11_vector:
sci2_vector:
sci3_vector:
sci4_vector:
sci5_vector:
0x0089 DD=0: b4 2a ab ce         MOVB 0x022a, #0xce
0x008d DD=0: ff                  BRK
vcal1_vector:
vcal2_vector:
vcal3_vector:
vcal4_vector:
vcal5_vector:
vcal6_vector:
vcal7_vector:
vcal8_vector:
vcal9_vector:
vcal10_vector:
vcal11_vector:
vcal12_vector:
vcal13_vector:
vcal14_vector:
vcal15_vector:
0x008e DD=0: b4 2a ab d3         MOVB 0x022a, #0xd3
0x0092 DD=0: ff                  BRK
brk_vector:
0x0093 DD=0: c6 00 fe 09         MOV SSP, #0x09fe
0x0097 DD=0: d6 14 60            MOVB P4, #0x60
0x009a DD=0: b7 14 01 ab e0      MOVB 0x0114, #0xe0
0x009f DD=0: d6 1e 1f            MOVB P4SF, #0x1f
0x00a2 DD=0: c6 02 e0 06         MOV LRB, #0x06e0
0x00a6 DD=0: 8a ab 00            MOVB PSWL, #0x00
0x00a9 DD=0: b7 00 01 ab 50      MOVB 0x0100, #0x50
0x00ae DD=0: b7 00 01 ab a0      MOVB 0x0100, #0xa0
0x00b3 DD=0: b7 01 01 01         RB 0x0101.1
0x00b7 DD=0: d6 08 00            MOVB TSR, #0x00
0x00ba DD=0: d6 0b f2            MOVB ROMWIN, #0xf2
0x00bd DD=0: 94 2a               LB A, 0x022a
0x00bf DD=0: 34 28               STB A, 0x0228
0x00c1 DD=0: f6 0e               JNE label_00d1
0x00c3 DD=0: b4 2a ab cf         MOVB 0x022a, #0xcf
0x00c7 DD=0: b6 14 0f            SB P4.7
0x00ca DD=0: f9 14               LB A, #0x14
label_00cc:
0x00cc DD=0: 00                  NOP
0x00cd DD=0: bc ea fc            DJNZ A, label_00cc
0x00d0 DD=0: ff                  BRK
label_00d1:
0x00d1 DD=0: 9e d2               CMPB A, #0xd2
0x00d3 DD=0: f1 62               JEQ label_0137
0x00d5 DD=0: b4 29 d6            DECB 0x0229
0x00d8 DD=0: f6 60               JNE label_013a
0x00da DD=0: b6 14 0f            SB P4.7
0x00dd DD=0: d6 15 d8            MOVB P5, #0xd8
0x00e0 DD=0: b7 15 01 ab de      MOVB 0x0115, #0xde
0x00e5 DD=0: d6 1f 00            MOVB P5SF, #0x00
0x00e8 DD=0: 22 c2 1f            MOV DP, #0x1fc2
label_00eb:
0x00eb DD=0: 52                  DEC DP
0x00ec DD=0: 62 93 c0 1f         CMP DP, #0x1fc0
0x00f0 DD=0: f5 f9               JGE label_00eb
0x00f2 DD=0: b6 15 28 03         JBS P5.0, label_00f9
0x00f6 DD=0: 62 a6 f2            TJNZ DP, label_00eb
label_00f9:
0x00f9 DD=0: b6 15 03            RB P5.3
0x00fc DD=0: 3f                  STB A, R7
0x00fd DD=0: 56 92               ACAL label_1692
0x00ff DD=1: fa                  CLR A
0x0100 DD=0: 7f                  LB A, R7
0x0101 DD=0: b7 fc 8f 72         MOVB R2, 0x8ffc
0x0105 DD=0: 6a b3 1f            ANDB R2, #0x1f
0x0108 DD=0: 57 13               ACAL label_1713
0x010a DD=0: b6 14 07            RB P4.7
0x010d DD=0: f9 05               LB A, #0x05
label_010f:
0x010f DD=0: 00                  NOP
0x0110 DD=0: bc ea fc            DJNZ A, label_010f
0x0113 DD=0: b6 15 0b            SB P5.3
0x0116 DD=0: 22 c2 1f            MOV DP, #0x1fc2
label_0119:
0x0119 DD=0: 52                  DEC DP
0x011a DD=0: 62 93 c0 1f         CMP DP, #0x1fc0
0x011e DD=0: f5 f9               JGE label_0119
0x0120 DD=0: b6 15 28 03         JBS P5.0, label_0127
0x0124 DD=0: 62 a6 f2            TJNZ DP, label_0119
label_0127:
0x0127 DD=0: b6 15 03            RB P5.3
0x012a DD=0: b6 14 0f            SB P4.7
0x012d DD=1: fa                  CLR A
0x012e DD=0: 7f                  LB A, R7
0x012f DD=0: b7 fc 8f 72         MOVB R2, 0x8ffc
0x0133 DD=0: 57 13               ACAL label_1713
label_0135:
0x0135 DD=0: 04 fe               SJ label_0135
label_0137:
0x0137 DD=0: b4 28 c7            CLRB 0x0228
label_013a:
0x013a DD=0: b7 1f 01 ab fa      MOVB 0x011f, #0xfa
0x013f DD=0: b7 05 01 ab ff      MOVB 0x0105, #0xff
0x0144 DD=0: d6 4c 3c            MOVB WDT, #0x3c
0x0147 DD=0: b6 14 0f            SB P4.7
0x014a DD=0: b6 0b 93 f2         CMPB ROMWIN, #0xf2
0x014e DD=0: f6 31               JNE label_0181
0x0150 DD=0: a6 00 93 fe 09      CMP SSP, #0x09fe
0x0155 DD=0: f6 2a               JNE label_0181
0x0157 DD=1: f8 55 55            L A, #0x5555
label_015a:
0x015a DD=1: 36 02               ST A, LRB
0x015c DD=1: a6 02 95            CMP A, LRB
0x015f DD=1: f6 20               JNE label_0181
0x0161 DD=1: 36 46               ST A, IE0
0x0163 DD=1: a6 46 95            CMP A, IE0
0x0166 DD=1: f6 19               JNE label_0181
0x0168 DD=1: 36 48               ST A, IE1
0x016a DD=1: a6 48 95            CMP A, IE1
0x016d DD=1: f6 12               JNE label_0181
0x016f DD=0: d8                  RDD
0x0170 DD=0: ce c0               ORB A, #0xc0
0x0172 DD=0: 36 4a               STB A, IE2L
0x0174 DD=0: b6 4a 95            CMPB A, IE2L
0x0177 DD=0: f6 08               JNE label_0181
0x0179 DD=0: 96 07               LB A, ACCH
0x017b DD=0: 36 04               STB A, PSWL
0x017d DD=0: 8a 95               CMPB A, PSWL
0x017f DD=0: f1 05               JEQ label_0186
label_0181:
0x0181 DD=0: b4 2a ab c0         MOVB 0x022a, #0xc0
0x0185 DD=0: ff                  BRK
label_0186:
0x0186 DD=1: d9                  SDD
0x0187 DD=1: 8f                  SLL A
0x0188 DD=1: f5 d0               JGE label_015a
0x018a DD=1: fa                  CLR A
0x018b DD=1: 36 46               ST A, IE0
0x018d DD=1: 36 48               ST A, IE1
0x018f DD=0: d8                  RDD
0x0190 DD=0: 36 4a               STB A, IE2L
0x0192 DD=0: c6 02 e0 06         MOV LRB, #0x06e0
0x0196 DD=0: 8a ab 00            MOVB PSWL, #0x00
0x0199 DD=1: f8 55 55            L A, #0x5555
0x019c DD=1: 3c                  ST A, X1
0x019d DD=1: 1c                  CMP A, X1
0x019e DD=1: f6 1d               JNE label_01bd
0x01a0 DD=1: 8f                  SLL A
0x01a1 DD=1: 3c                  ST A, X1
0x01a2 DD=1: 1c                  CMP A, X1
0x01a3 DD=1: f6 18               JNE label_01bd
0x01a5 DD=1: 20 02 02            MOV X1, #0x0202
label_01a8:
0x01a8 DD=1: 80                  L A, [X1]
0x01a9 DD=1: a0 ab 55 55         MOV [X1], #0x5555
0x01ad DD=1: a0 93 55 55         CMP [X1], #0x5555
0x01b1 DD=1: f6 0a               JNE label_01bd
0x01b3 DD=1: a0 ab aa aa         MOV [X1], #0xaaaa
0x01b7 DD=1: a0 93 aa aa         CMP [X1], #0xaaaa
0x01bb DD=1: f1 05               JEQ label_01c2
label_01bd:
0x01bd DD=1: b4 2a ab c1         MOVB 0x022a, #0xc1
0x01c1 DD=0: ff                  BRK
label_01c2:
0x01c2 DD=1: 30                  ST A, [X1]
0x01c3 DD=1: 40                  INC X1
0x01c4 DD=1: 40                  INC X1
0x01c5 DD=1: 60 93 00 12         CMP X1, #0x1200
0x01c9 DD=1: f2 dd               JLT label_01a8
0x01cb DD=1: b4 2a 86 00         MOVB 0x0200, 0x022a
0x01cf DD=1: b4 29 86 01         MOVB 0x0201, 0x0229
0x01d3 DD=1: b4 28 86 02         MOVB 0x0202, 0x0228
0x01d7 DD=1: 22 08 02            MOV DP, #0x0208
label_01da:
0x01da DD=1: a3 c7               CLR [DP+]
0x01dc DD=1: 62 93 00 12         CMP DP, #0x1200
0x01e0 DD=1: f2 f8               JLT label_01da
0x01e2 DD=1: b4 02 86 28         MOVB 0x0228, 0x0202
0x01e6 DD=1: b4 01 86 29         MOVB 0x0229, 0x0201
0x01ea DD=1: b4 00 86 2a         MOVB 0x022a, 0x0200
0x01ee DD=1: f8 55 55            L A, #0x5555
0x01f1 DD=1: 22 92 00            MOV DP, #0x0092
0x01f4 DD=1: 14 09               MOVB R4, #0x09
0x01f6 DD=1: 56 21               ACAL label_1621
0x01f8 DD=1: 22 ac 00            MOV DP, #0x00ac
0x01fb DD=1: 14 01               MOVB R4, #0x01
0x01fd DD=1: 56 21               ACAL label_1621
0x01ff DD=1: 22 ae 00            MOV DP, #0x00ae
0x0202 DD=1: 14 09               MOVB R4, #0x09
0x0204 DD=1: 56 21               ACAL label_1621
0x0206 DD=1: 22 50 00            MOV DP, #0x0050
0x0209 DD=1: 14 01               MOVB R4, #0x01
0x020b DD=1: 56 21               ACAL label_1621
0x020d DD=1: 22 68 00            MOV DP, #0x0068
0x0210 DD=1: 14 01               MOVB R4, #0x01
0x0212 DD=1: 56 21               ACAL label_1621
0x0214 DD=1: a7 50 01 ab f2 7f   MOV 0x0150, #0x7ff2
0x021a DD=1: a7 52 01 ab bd 7f   MOV 0x0152, #0x7fbd
0x0220 DD=1: b7 54 01 ab ff      MOVB 0x0154, #0xff
0x0225 DD=1: a7 42 01 ab 19 00   MOV 0x0142, #0x0019
0x022b DD=1: a7 40 01 ab 0d 00   MOV 0x0140, #0x000d
0x0231 DD=1: a7 46 01 ab 00 80   MOV 0x0146, #0x8000
0x0237 DD=1: a7 44 01 ab 02 00   MOV 0x0144, #0x0002
0x023d DD=1: b7 49 01 ab c0      MOVB 0x0149, #0xc0
0x0242 DD=1: b7 48 01 ab c0      MOVB 0x0148, #0xc0
0x0247 DD=1: b7 09 01 ab d5      MOVB 0x0109, #0xd5
0x024c DD=1: b7 4a 01 ab 7c      MOVB 0x014a, #0x7c
0x0251 DD=1: a7 6e 01 ab aa 00   MOV 0x016e, #0x00aa
0x0257 DD=1: d6 dc 21            MOVB TMCON, #0x21
0x025a DD=1: d6 d3 0f            MOVB TM0L, #0x0f
0x025d DD=1: c6 d4 00 00         MOV TM0, #0x0000
0x0261 DD=1: c6 d6 00 00         MOV TM1, #0x0000
0x0265 DD=1: c6 c2 ff ff         MOV TMSEL, #0xffff
0x0269 DD=1: d6 c4 ff            MOVB TMSEL2, #0xff
0x026c DD=1: a7 7c 01 ab 0c 00   MOV 0x017c, #0x000c
0x0272 DD=1: d6 de 88            MOVB EVNTCONL, #0x88
0x0275 DD=1: d6 df 88            MOVB EVNTCONH, #0x88
0x0278 DD=1: d6 dd 88            MOVB EVNTCON2, #0x88
0x027b DD=1: b7 70 01 ab c0      MOVB 0x0170, #0xc0
0x0280 DD=1: b7 71 01 ab c0      MOVB 0x0171, #0xc0
0x0285 DD=1: b7 72 01 ab c0      MOVB 0x0172, #0xc0
0x028a DD=1: b7 73 01 ab c0      MOVB 0x0173, #0xc0
0x028f DD=1: b7 74 01 ab c0      MOVB 0x0174, #0xc0
0x0294 DD=1: b7 75 01 ab c0      MOVB 0x0175, #0xc0
0x0299 DD=1: d6 c6 ff            MOVB RTOCON4, #0xff
0x029c DD=1: d6 c7 ff            MOVB RTOCON5, #0xff
0x029f DD=1: d6 c8 ff            MOVB RTOCON6, #0xff
0x02a2 DD=1: d6 c9 ff            MOVB RTOCON7, #0xff
0x02a5 DD=1: d6 ca ff            MOVB RTOCON8, #0xff
0x02a8 DD=1: d6 cb ff            MOVB RTOCON9, #0xff
0x02ab DD=1: d6 cc ff            MOVB RTOCON10, #0xff
0x02ae DD=1: d6 cd ff            MOVB RTOCON11, #0xff
0x02b1 DD=1: d6 ce ff            MOVB RTOCON12, #0xff
0x02b4 DD=1: b7 7e 01 ab f2      MOVB 0x017e, #0xf2
0x02b9 DD=1: d6 d2 00            MOVB RTO4CON, #0x00
0x02bc DD=1: b7 6a 01 ab 35      MOVB 0x016a, #0x35
0x02c1 DD=1: b7 6c 01 ab 60      MOVB 0x016c, #0x60
0x02c6 DD=1: b7 6d 01 ab 60      MOVB 0x016d, #0x60
0x02cb DD=1: d6 4e f1            MOVB GTINTCON, #0xf1
0x02ce DD=1: d6 d3 0f            MOVB TM0L, #0x0f
0x02d1 DD=1: c6 d4 00 00         MOV TM0, #0x0000
0x02d5 DD=1: b6 dc 0b            SB TMCON.3
0x02d8 DD=1: 00                  NOP
0x02d9 DD=1: 00                  NOP
0x02da DD=1: 00                  NOP
0x02db DD=0: 96 d3               LB A, TM0L
0x02dd DD=0: 9e 2f               CMPB A, #0x2f
0x02df DD=0: f5 2c               JGE label_030d
0x02e1 DD=0: 14 14               MOVB R4, #0x14
loop_02e3:
0x02e3 DD=0: 05 7e               DJNZ R4, loop_02e3
0x02e5 DD=1: 86 d4               L A, TM0
0x02e7 DD=1: 9e 01 00            CMP A, #0x0001
0x02ea DD=1: f2 21               JLT label_030d
0x02ec DD=1: b6 40 02            RB IRQ0L.2
0x02ef DD=1: c6 d6 f0 ff         MOV TM1, #0xfff0
0x02f3 DD=1: b6 dc 0f            SB TMCON.7
0x02f6 DD=1: 14 02               MOVB R4, #0x02
loop_02f8:
0x02f8 DD=1: 05 7e               DJNZ R4, loop_02f8
0x02fa DD=1: 86 d6               L A, TM1
0x02fc DD=1: b6 40 2a 0d         JBS IRQ0L.2, label_030d
0x0300 DD=1: 9e f3 ff            CMP A, #0xfff3
0x0303 DD=1: f5 08               JGE label_030d
0x0305 DD=1: 14 27               MOVB R4, #0x27
loop_0307:
0x0307 DD=1: 05 7e               DJNZ R4, loop_0307
0x0309 DD=1: b6 40 2a 05         JBS IRQ0L.2, label_0312
label_030d:
0x030d DD=1: b4 2a ab c5         MOVB 0x022a, #0xc5
0x0311 DD=0: ff                  BRK
label_0312:
0x0312 DD=1: b7 60 01 ab 0b      MOVB 0x0160, #0x0b
0x0317 DD=1: c6 82 00 f0         MOV PWINTQ0, #0xf000
0x031b DD=1: c6 84 00 f0         MOV PWINTQ1, #0xf000
0x031f DD=1: c6 86 00 f0         MOV PWINTE0, #0xf000
0x0323 DD=1: c6 88 00 f0         MOV PWINTE1, #0xf000
0x0327 DD=1: c6 50 3f 9c         MOV PWC0, #0x9c3f
0x032b DD=1: c6 68 00 00         MOV PWR0, #0x0000
0x032f DD=1: b6 80 08            SB PWRUNL.0
0x0332 DD=1: d6 ee c0            MOVB ADINTCON0, #0xc0
0x0335 DD=1: d6 fe c0            MOVB ADINTCON1, #0xc0
0x0338 DD=1: d6 ed 80            MOVB ADCON0H, #0x80
0x033b DD=1: d6 fd 80            MOVB ADCON1H, #0x80
0x033e DD=1: d6 ec 90            MOVB ADCON0L, #0x90
0x0341 DD=1: d6 fc 90            MOVB ADCON1L, #0x90
0x0344 DD=1: a6 d6 70            MOV ER0, TM1
label_0347:
0x0347 DD=1: b6 ee 20 04         JBR ADINTCON0.0, label_034f
0x034b DD=1: b6 fe 28 0d         JBS ADINTCON1.0, label_035c
label_034f:
0x034f DD=1: 86 d6               L A, TM1
0x0351 DD=1: 08                  SUB A, ER0
0x0352 DD=1: 9e 2c 01            CMP A, #0x012c
0x0355 DD=1: f2 f0               JLT label_0347
0x0357 DD=1: b4 2a ab c4         MOVB 0x022a, #0xc4
0x035b DD=0: ff                  BRK
label_035c:
0x035c DD=1: b6 ee 00            RB ADINTCON0.0
0x035f DD=1: b6 fe 00            RB ADINTCON1.0
0x0362 DD=1: a6 d6 87 0c         MOV off(0x0c), TM1
0x0366 DD=1: a7 58 01 ab 88 08   MOV 0x0158, #0x0888
0x036c DD=1: a7 5a 01 ab 88 00   MOV 0x015a, #0x0088
0x0372 DD=1: d6 ef 07            MOVB ADHENCON, #0x07
0x0375 DD=1: d6 10 f0            MOVB P0, #0xf0
0x0378 DD=1: b7 10 01 ab ff      MOVB 0x0110, #0xff
0x037d DD=1: d6 11 e0            MOVB P1, #0xe0
0x0380 DD=1: b7 11 01 ab ff      MOVB 0x0111, #0xff
0x0385 DD=1: d6 12 ff            MOVB P2, #0xff
0x0388 DD=1: b7 12 01 ab ff      MOVB 0x0112, #0xff
0x038d DD=1: d6 1c ff            MOVB P2SF, #0xff
0x0390 DD=1: d6 13 e8            MOVB P3, #0xe8
0x0393 DD=1: b7 13 01 ab ef      MOVB 0x0113, #0xef
0x0398 DD=1: d6 1d 17            MOVB P3SF, #0x17
0x039b DD=1: d6 14 60            MOVB P4, #0x60
0x039e DD=1: d6 15 d1            MOVB P5, #0xd1
0x03a1 DD=1: b7 15 01 ab 5e      MOVB 0x0115, #0x5e
0x03a6 DD=1: d6 1f 00            MOVB P5SF, #0x00
0x03a9 DD=1: d6 16 fe            MOVB P6, #0xfe
0x03ac DD=1: b7 16 01 ab b8      MOVB 0x0116, #0xb8
0x03b1 DD=1: d6 20 cd            MOVB P6SF, #0xcd
0x03b4 DD=1: d6 17 ef            MOVB P7, #0xef
0x03b7 DD=1: b7 17 01 ab ff      MOVB 0x0117, #0xff
0x03bc DD=1: d6 21 10            MOVB P7SF, #0x10
0x03bf DD=1: d6 18 ff            MOVB P8, #0xff
0x03c2 DD=1: b7 18 01 ab ff      MOVB 0x0118, #0xff
0x03c7 DD=1: d6 22 00            MOVB P8SF, #0x00
0x03ca DD=1: d6 19 ee            MOVB P9, #0xee
0x03cd DD=1: b7 19 01 ab 80      MOVB 0x0119, #0x80
0x03d2 DD=1: d6 23 00            MOVB P9SF, #0x00
0x03d5 DD=1: d6 1a ff            MOVB P10, #0xff
0x03d8 DD=1: b7 1a 01 ab df      MOVB 0x011a, #0xdf
0x03dd DD=1: d6 24 01            MOVB P10SF, #0x01
0x03e0 DD=1: d6 1b ff            MOVB p11, #0xff
0x03e3 DD=1: b7 1b 01 ab fa      MOVB 0x011b, #0xfa
0x03e8 DD=1: d6 25 01            MOVB P12, #0x01
0x03eb DD=1: b7 1c 01 ab 01      MOVB 0x011c, #0x01
0x03f0 DD=1: 15 80               MOVB R5, #0x80
0x03f2 DD=0: fb                  CLRB A
0x03f3 DD=0: 38                  STB A, R0
0x03f4 DD=0: 3c                  STB A, R4
0x03f5 DD=0: 62 c7               CLR DP
loop_03f7:
0x03f7 DD=0: 62 da               LC A, [DP]
0x03f9 DD=0: b6 07 a5            ADDB A, ACCH
0x03fc DD=0: 68 a4               ADDB R0, A
0x03fe DD=0: 42                  INC DP
0x03ff DD=0: 42                  INC DP
0x0400 DD=0: 05 75               DJNZ R4, loop_03f7
0x0402 DD=0: 47 f1               ACAL label_13f1
0x0404 DD=0: 05 f1               DJNZ R5, loop_03f7
0x0406 DD=0: 78                  LB A, R0
0x0407 DD=0: f1 0a               JEQ label_0413
0x0409 DD=0: b7 14 a0 2f 05      JBS 0xa014.7, label_0413
0x040e DD=0: b4 2a ab c2         MOVB 0x022a, #0xc2
0x0412 DD=0: ff                  BRK
label_0413:
0x0413 DD=0: 68 87 10            MOVB off(0x10), R0
0x0416 DD=0: 62 87 0e            MOV off(0x0e), DP
0x0419 DD=0: 47 61               ACAL label_1361
0x041b DD=0: 47 13               ACAL label_1313
0x041d DD=1: f8 00 00            L A, #0x0000
0x0420 DD=1: 34 3c               ST A, 0x023c
0x0422 DD=1: b6 07 a6 05         TJNZB ACCH, label_042b
0x0426 DD=0: d8                  RDD
0x0427 DD=0: ae 67               ADDB A, #0x67
0x0429 DD=0: f5 02               JGE label_042d
label_042b:
0x042b DD=0: f9 ff               LB A, #0xff
label_042d:
0x042d DD=0: 34 3e               STB A, 0x023e
0x042f DD=0: b4 42 ab 67         MOVB 0x0242, #0x67
0x0433 DD=0: b4 43 ab 85         MOVB 0x0243, #0x85
0x0437 DD=1: f8 8e 01            L A, #0x018e
0x043a DD=1: 34 56               ST A, 0x0256
0x043c DD=1: 34 58               ST A, 0x0258
0x043e DD=1: 34 5a               ST A, 0x025a
0x0440 DD=1: 34 5c               ST A, 0x025c
0x0442 DD=1: 34 5e               ST A, 0x025e
0x0444 DD=1: 86 e1               L A, ADCR1
0x0446 DD=1: 37 12 04            ST A, 0x0412
0x0449 DD=1: b6 07 87 1c         MOVB off(0x1c), ACCH
0x044d DD=1: f8 d4 01            L A, #0x01d4
0x0450 DD=1: 34 64               ST A, 0x0264
0x0452 DD=1: 8e 00 02            SUB A, #0x0200
0x0455 DD=1: f5 01               JGE label_0458
0x0457 DD=1: fa                  CLR A
label_0458:
0x0458 DD=1: 9f                  SRL A
0x0459 DD=1: b4 63 aa            MOVB 0x0263, A
0x045c DD=1: 86 e2               L A, ADCR2
0x045e DD=1: 37 14 04            ST A, 0x0414
0x0461 DD=1: b6 07 87 1d         MOVB off(0x1d), ACCH
0x0465 DD=1: 86 e6               L A, ADCR6
0x0467 DD=1: b6 07 86 72         MOVB 0x0272, ACCH
0x046b DD=1: b4 6e ab 94         MOVB 0x026e, #0x94
0x046f DD=1: b4 6f ab 6e         MOVB 0x026f, #0x6e
0x0473 DD=1: b4 70 ab 58         MOVB 0x0270, #0x58
0x0477 DD=1: 86 f2               L A, ADCR14
0x0479 DD=0: 96 07               LB A, ACCH
0x047b DD=0: 35 18               STB A, off(0x18)
0x047d DD=0: 54 0a               ACAL label_140a
0x047f DD=0: b4 71 ab f9         MOVB 0x0271, #0xf9
0x0483 DD=1: 86 f6               L A, ADCR18
0x0485 DD=1: b6 07 9b 95 03      MOVB 0x0395, ACCH
0x048a DD=1: 86 f7               L A, ADCR19
0x048c DD=1: b6 07 9b 96 03      MOVB 0x0396, ACCH
0x0491 DD=1: 86 f8               L A, ADCR20
0x0493 DD=1: b6 07 86 74         MOVB 0x0274, ACCH
0x0497 DD=1: 86 f9               L A, ADCR21
0x0499 DD=1: b6 07 86 75         MOVB 0x0275, ACCH
0x049d DD=1: 86 fa               L A, ADCR22
0x049f DD=1: b6 07 86 76         MOVB 0x0276, ACCH
0x04a3 DD=1: 86 fb               L A, ADCR23
0x04a5 DD=1: b6 07 86 77         MOVB 0x0277, ACCH
0x04a9 DD=1: 84 3c               L A, 0x023c
0x04ab DD=1: 35 48               ST A, off(0x48)
0x04ad DD=1: 35 4a               ST A, off(0x4a)
0x04af DD=1: 14 10               MOVB R4, #0x10
0x04b1 DD=1: 20 ca 8f            MOV X1, #0x8fca
0x04b4 DD=1: 22 8e 02            MOV DP, #0x028e
loop_04b7:
0x04b7 DD=1: b0 8a               MOVB [DP], [X1]
0x04b9 DD=1: 42                  INC DP
0x04ba DD=1: 40                  INC X1
0x04bb DD=1: 05 7a               DJNZ R4, loop_04b7
0x04bd DD=1: d7 b0 28            MOVB off(0xb0), #0x28
0x04c0 DD=1: a7 4e 04 ab 06 02   MOV 0x044e, #0x0206
0x04c6 DD=1: c7 a0 e8 03         MOV off(0xa0), #0x03e8
0x04ca DD=1: b4 a5 ab ff         MOVB 0x02a5, #0xff
0x04ce DD=1: 59 2f               SB sbafix 02ef.1
0x04d0 DD=1: 5d e4 19            JBR sbafix 02e4.5, label_04ec
0x04d3 DD=1: b7 ed 05 02         RB 0x05ed.2
0x04d7 DD=1: b7 ef 05 03         RB 0x05ef.3
0x04db DD=1: b7 59 05 ab 03      MOVB 0x0559, #0x03
0x04e0 DD=0: 97 83 8e            LB A, 0x8e83
0x04e3 DD=0: ce 40               ORB A, #0x40
0x04e5 DD=0: 38                  STB A, R0
0x04e6 DD=0: bc 9f               SRLB A, 4
0x04e8 DD=0: 68 c5               ORB A, R0
0x04ea DD=0: 36 d2               STB A, RTO4CON
label_04ec:
0x04ec DD=0: 47 f1               ACAL label_13f1
0x04ee DD=0: b7 0d 90 72         MOVB R2, 0x900d
0x04f2 DD=0: 57 58               ACAL label_1758
0x04f4 DD=0: f2 16               JLT label_050c
0x04f6 DD=0: 37 a0 0c            STB A, 0x0ca0
0x04f9 DD=0: b7 0e 90 72         MOVB R2, 0x900e
0x04fd DD=0: 57 58               ACAL label_1758
0x04ff DD=0: f2 0b               JLT label_050c
0x0501 DD=0: 37 a2 0c            STB A, 0x0ca2
0x0504 DD=0: b7 0f 90 72         MOVB R2, 0x900f
0x0508 DD=0: 57 58               ACAL label_1758
0x050a DD=0: f5 0d               JGE label_0519
label_050c:
0x050c DD=0: b7 fa 8f 76         MOVB R6, 0x8ffa
0x0510 DD=0: 54 2a               ACAL label_142a
0x0512 DD=1: fa                  CLR A
0x0513 DD=1: 37 a0 0c            ST A, 0x0ca0
0x0516 DD=1: 37 a2 0c            ST A, 0x0ca2
label_0519:
0x0519 DD=1: 37 a4 0c            ST A, 0x0ca4
0x051c DD=1: a7 a0 0c a6 0a      TJNZ 0x0ca0, label_052b
0x0521 DD=1: a7 a2 0c a6 05      TJNZ 0x0ca2, label_052b
0x0526 DD=1: a7 a4 0c a7 02      TJZ 0x0ca4, label_052d
label_052b:
0x052b DD=1: 5c 35               SB sbafix 02f5.4
label_052d:
0x052d DD=1: 10 00               MOVB R0, #0x00
0x052f DD=1: 20 94 92            MOV X1, #0x9294
label_0532:
0x0532 DD=0: 78                  LB A, R0
0x0533 DD=0: b7 a0 0c ca         TBR 0x0ca0.(AL)
0x0537 DD=0: f1 09               JEQ label_0542
0x0539 DD=0: ba 97               MOVB A, [X1+A]
0x053b DD=0: 8e 01               SUBB A, #0x01
0x053d DD=0: f2 03               JLT label_0542
0x053f DD=0: b4 d8 b8            SBR 0x02d8.(AL)
label_0542:
0x0542 DD=0: 68 a3 01            ADDB R0, #0x01
0x0545 DD=0: 68 93 2c            CMPB R0, #0x2c
0x0548 DD=0: f2 e8               JLT label_0532
0x054a DD=0: 47 f1               ACAL label_13f1
0x054c DD=0: 5f a6 28            JBS sbafix 02e6.7, label_0577
0x054f DD=0: 61 c7               CLR X2
0x0551 DD=0: 20 00 90            MOV X1, #0x9000
0x0554 DD=0: 5a f1 03            JBR sbafix 02f1.2, label_055a
0x0557 DD=0: 20 09 90            MOV X1, #0x9009
label_055a:
0x055a DD=0: b0 72               MOVB R2, [X1]
0x055c DD=0: 57 42               ACAL label_1742
0x055e DD=0: f2 11               JLT label_0571
0x0560 DD=0: a9 1e 03 aa         MOV 0x031e[X2], A
0x0564 DD=0: 40                  INC X1
0x0565 DD=0: 61 a3 02 00         ADD X2, #0x0002
0x0569 DD=0: 61 93 08 00         CMP X2, #0x0008
0x056d DD=0: f2 eb               JLT label_055a
0x056f DD=0: 04 13               SJ label_0584
label_0571:
0x0571 DD=0: b7 fa 8f 76         MOVB R6, 0x8ffa
0x0575 DD=0: 54 2a               ACAL label_142a
label_0577:
0x0577 DD=1: fa                  CLR A
0x0578 DD=1: 37 1e 03            ST A, 0x031e
0x057b DD=1: 37 20 03            ST A, 0x0320
0x057e DD=1: 37 22 03            ST A, 0x0322
0x0581 DD=1: 37 24 03            ST A, 0x0324
label_0584:
0x0584 DD=1: 47 f1               ACAL label_13f1
0x0586 DD=1: b7 10 90 72         MOVB R2, 0x9010
0x058a DD=1: 57 54               ACAL label_1754
0x058c DD=1: f2 29               JLT label_05b7
0x058e DD=1: b7 96 0c aa         MOVB 0x0c96, A
0x0592 DD=1: b6 06 a7 27         TJZB ACCL, label_05bd
0x0596 DD=1: b7 11 90 72         MOVB R2, 0x9011
0x059a DD=1: 61 c7               CLR X2
label_059c:
0x059c DD=1: 57 54               ACAL label_1754
0x059e DD=1: f2 17               JLT label_05b7
0x05a0 DD=1: bc 99 80 0c         ST A, 0x0c80[X2]
0x05a4 DD=1: 6a a3 03            ADDB R2, #0x03
0x05a7 DD=1: 61 a3 02 00         ADD X2, #0x0002
0x05ab DD=1: 61 93 16 00         CMP X2, #0x0016
0x05af DD=1: f2 eb               JLT label_059c
0x05b1 DD=1: b7 b2 08 0c         SB 0x08b2.4
0x05b5 DD=1: 04 13               SJ label_05ca
label_05b7:
0x05b7 DD=1: b7 fa 8f 76         MOVB R6, 0x8ffa
0x05bb DD=1: 54 2a               ACAL label_142a
label_05bd:
0x05bd DD=1: 14 0b               MOVB R4, #0x0b
0x05bf DD=1: 22 80 0c            MOV DP, #0x0c80
0x05c2 DD=1: fa                  CLR A
loop_05c3:
0x05c3 DD=1: 33                  ST A, [DP+]
0x05c4 DD=1: 05 7d               DJNZ R4, loop_05c3
0x05c6 DD=1: b7 96 0c aa         MOVB 0x0c96, A
label_05ca:
0x05ca DD=1: 47 f1               ACAL label_13f1
0x05cc DD=1: b7 04 90 72         MOVB R2, 0x9004
0x05d0 DD=1: 57 58               ACAL label_1758
0x05d2 DD=1: f5 08               JGE label_05dc
0x05d4 DD=1: b7 fa 8f 76         MOVB R6, 0x8ffa
0x05d8 DD=1: 54 2a               ACAL label_142a
0x05da DD=0: f9 67               LB A, #0x67
label_05dc:
0x05dc DD=0: d8                  RDD
0x05dd DD=0: 34 42               STB A, 0x0242
0x05df DD=0: 97 05 90            LB A, 0x9005
0x05e2 DD=0: 56 c6               ACAL label_16c6
0x05e4 DD=0: 35 94               STB A, off(0x94)
0x05e6 DD=0: 5f a6 3f            JBS sbafix 02e6.7, label_0628
0x05e9 DD=0: b7 fd 8f 72         MOVB R2, 0x8ffd
0x05ed DD=0: 5a f1 04            JBR sbafix 02f1.2, label_05f4
0x05f0 DD=0: b7 06 90 72         MOVB R2, 0x9006
label_05f4:
0x05f4 DD=0: 57 42               ACAL label_1742
0x05f6 DD=0: f2 2a               JLT label_0622
0x05f8 DD=0: 35 14               STB A, off(0x14)
0x05fa DD=0: b7 fe 8f 72         MOVB R2, 0x8ffe
0x05fe DD=0: 5a f1 04            JBR sbafix 02f1.2, label_0605
0x0601 DD=0: b7 07 90 72         MOVB R2, 0x9007
label_0605:
0x0605 DD=0: 57 42               ACAL label_1742
0x0607 DD=0: f2 19               JLT label_0622
0x0609 DD=0: 35 12               STB A, off(0x12)
0x060b DD=0: b7 ff 8f 72         MOVB R2, 0x8fff
0x060f DD=0: 5a f1 04            JBR sbafix 02f1.2, label_0616
0x0612 DD=0: b7 08 90 72         MOVB R2, 0x9008
label_0616:
0x0616 DD=0: 57 42               ACAL label_1742
0x0618 DD=0: f2 08               JLT label_0622
0x061a DD=0: d8                  RDD
0x061b DD=0: 35 16               STB A, off(0x16)
0x061d DD=0: df                  SWAP
0x061e DD=0: 35 17               STB A, off(0x17)
0x0620 DD=0: 04 12               SJ label_0634
label_0622:
0x0622 DD=0: b7 fa 8f 76         MOVB R6, 0x8ffa
0x0626 DD=0: 54 2a               ACAL label_142a
label_0628:
0x0628 DD=0: a5 14 c7            CLR off(0x14)
0x062b DD=0: a5 12 c7            CLR off(0x12)
0x062e DD=0: d7 17 80            MOVB off(0x17), #0x80
0x0631 DD=0: d7 16 80            MOVB off(0x16), #0x80
label_0634:
0x0634 DD=0: 47 f1               ACAL label_13f1
0x0636 DD=0: 94 28               LB A, 0x0228
0x0638 DD=0: f1 54               JEQ label_068e
0x063a DD=0: 3f                  STB A, R7
0x063b DD=0: 56 92               ACAL label_1692
0x063d DD=1: fa                  CLR A
0x063e DD=0: 7f                  LB A, R7
0x063f DD=0: b7 fc 8f 72         MOVB R2, 0x8ffc
0x0643 DD=0: 6a b3 1f            ANDB R2, #0x1f
0x0646 DD=0: 57 13               ACAL label_1713
0x0648 DD=0: f9 05               LB A, #0x05
label_064a:
0x064a DD=0: 00                  NOP
0x064b DD=0: bc ea fc            DJNZ A, label_064a
0x064e DD=0: b6 15 0b            SB P5.3
0x0651 DD=0: 22 c2 1f            MOV DP, #0x1fc2
label_0654:
0x0654 DD=0: 52                  DEC DP
0x0655 DD=0: 62 93 c0 1f         CMP DP, #0x1fc0
0x0659 DD=0: f5 f9               JGE label_0654
0x065b DD=0: b6 15 28 03         JBS P5.0, label_0662
0x065f DD=0: 62 a6 f2            TJNZ DP, label_0654
label_0662:
0x0662 DD=0: b6 15 03            RB P5.3
0x0665 DD=0: 47 f1               ACAL label_13f1
0x0667 DD=1: fa                  CLR A
0x0668 DD=0: 7f                  LB A, R7
0x0669 DD=0: b7 fc 8f 72         MOVB R2, 0x8ffc
0x066d DD=0: 57 13               ACAL label_1713
0x066f DD=0: f9 05               LB A, #0x05
label_0671:
0x0671 DD=0: 00                  NOP
0x0672 DD=0: bc ea fc            DJNZ A, label_0671
0x0675 DD=0: b6 15 0b            SB P5.3
0x0678 DD=0: 22 c2 1f            MOV DP, #0x1fc2
label_067b:
0x067b DD=0: 52                  DEC DP
0x067c DD=0: 62 93 c0 1f         CMP DP, #0x1fc0
0x0680 DD=0: f5 f9               JGE label_067b
0x0682 DD=0: b6 15 28 03         JBS P5.0, label_0689
0x0686 DD=0: 62 a6 f2            TJNZ DP, label_067b
label_0689:
0x0689 DD=0: b6 15 03            RB P5.3
0x068c DD=0: 47 f1               ACAL label_13f1
label_068e:
0x068e DD=0: 56 99               ACAL label_1699
0x0690 DD=0: b7 fc 8f 72         MOVB R2, 0x8ffc
0x0694 DD=0: 57 42               ACAL label_1742
0x0696 DD=0: f5 02               JGE label_069a
0x0698 DD=0: f9 d1               LB A, #0xd1
label_069a:
0x069a DD=0: d8                  RDD
0x069b DD=0: 34 2b               STB A, 0x022b
0x069d DD=0: 38                  STB A, R0
0x069e DD=0: 94 28               LB A, 0x0228
0x06a0 DD=0: f1 07               JEQ label_06a9
0x06a2 DD=0: 18                  CMPB A, R0
0x06a3 DD=0: f1 04               JEQ label_06a9
0x06a5 DD=0: b4 2b ab d1         MOVB 0x022b, #0xd1
label_06a9:
0x06a9 DD=0: b7 fb 8f 72         MOVB R2, 0x8ffb
0x06ad DD=0: 57 42               ACAL label_1742
0x06af DD=0: f5 03               JGE label_06b4
0x06b1 DD=1: f8 00 80            L A, #0x8000
label_06b4:
0x06b4 DD=1: 35 00               ST A, off(0x00)
0x06b6 DD=1: b4 2a c7            CLRB 0x022a
0x06b9 DD=1: 58 96 03            JBS sbafix 02d6.0, label_06bf
0x06bc DD=1: 58 9c 04            JBS sbafix 02dc.0, label_06c3
label_06bf:
0x06bf DD=0: f9 02               LB A, #0x02
0x06c1 DD=0: 04 07               SJ label_06ca
label_06c3:
0x06c3 DD=0: f9 08               LB A, #0x08
0x06c5 DD=0: 5c f5 02            JBR sbafix 02f5.4, label_06ca
0x06c8 DD=0: f9 04               LB A, #0x04
label_06ca:
0x06ca DD=0: 34 f9               STB A, 0x02f9
0x06cc DD=0: 5d e7 0a            JBR sbafix 02e7.5, label_06d9
0x06cf DD=0: 59 dc 07            JBR sbafix 02dc.1, label_06d9
0x06d2 DD=0: 4b 02               SB sbaoff c2.3
0x06d4 DD=0: 48 02               SB sbaoff c2.0
0x06d6 DD=0: b6 11 0a            SB P1.2
label_06d9:
0x06d9 DD=0: d7 b3 32            MOVB off(0xb3), #0x32
0x06dc DD=0: d7 b2 0f            MOVB off(0xb2), #0x0f
0x06df DD=0: d7 b6 05            MOVB off(0xb6), #0x05
0x06e2 DD=0: b6 4f c7            CLRB TRNSIT
0x06e5 DD=1: 86 d6               L A, TM1
0x06e7 DD=1: dc                  DEC A
0x06e8 DD=1: 36 92               ST A, TMR4
0x06ea DD=1: 14 0e               MOVB R4, #0x0e
0x06ec DD=1: b6 4f 28 09         JBS TRNSIT.0, label_06f9
0x06f0 DD=1: d6 c6 fc            MOVB RTOCON4, #0xfc
loop_06f3:
0x06f3 DD=1: b6 4f 38 0b         JBSR TRNSIT.0, label_0702
0x06f7 DD=1: 05 7a               DJNZ R4, loop_06f3
label_06f9:
0x06f9 DD=1: d6 c6 ff            MOVB RTOCON4, #0xff
0x06fc DD=1: b7 f2 8f 76         MOVB R6, 0x8ff2
0x0700 DD=1: 54 2a               ACAL label_142a
label_0702:
0x0702 DD=1: d6 c6 ff            MOVB RTOCON4, #0xff
0x0705 DD=1: 86 d6               L A, TM1
0x0707 DD=1: dc                  DEC A
0x0708 DD=1: 36 94               ST A, TMR5
0x070a DD=1: 14 0e               MOVB R4, #0x0e
0x070c DD=1: b6 4f 29 09         JBS TRNSIT.1, label_0719
0x0710 DD=1: d6 c7 fc            MOVB RTOCON5, #0xfc
loop_0713:
0x0713 DD=1: b6 4f 39 0b         JBSR TRNSIT.1, label_0722
0x0717 DD=1: 05 7a               DJNZ R4, loop_0713
label_0719:
0x0719 DD=1: d6 c7 ff            MOVB RTOCON5, #0xff
0x071c DD=1: b7 f3 8f 76         MOVB R6, 0x8ff3
0x0720 DD=1: 54 2a               ACAL label_142a
label_0722:
0x0722 DD=1: d6 c7 ff            MOVB RTOCON5, #0xff
0x0725 DD=1: 86 d6               L A, TM1
0x0727 DD=1: dc                  DEC A
0x0728 DD=1: 36 96               ST A, TMR6
0x072a DD=1: 14 0e               MOVB R4, #0x0e
0x072c DD=1: b6 4f 2a 09         JBS TRNSIT.2, label_0739
0x0730 DD=1: d6 c8 fc            MOVB RTOCON6, #0xfc
loop_0733:
0x0733 DD=1: b6 4f 3a 0b         JBSR TRNSIT.2, label_0742
0x0737 DD=1: 05 7a               DJNZ R4, loop_0733
label_0739:
0x0739 DD=1: d6 c8 ff            MOVB RTOCON6, #0xff
0x073c DD=1: b7 f4 8f 76         MOVB R6, 0x8ff4
0x0740 DD=1: 54 2a               ACAL label_142a
label_0742:
0x0742 DD=1: d6 c8 ff            MOVB RTOCON6, #0xff
0x0745 DD=1: 86 d6               L A, TM1
0x0747 DD=1: dc                  DEC A
0x0748 DD=1: 36 98               ST A, TMR7
0x074a DD=1: 14 0e               MOVB R4, #0x0e
0x074c DD=1: b6 4f 2b 09         JBS TRNSIT.3, label_0759
0x0750 DD=1: d6 c9 fc            MOVB RTOCON7, #0xfc
loop_0753:
0x0753 DD=1: b6 4f 3b 0b         JBSR TRNSIT.3, label_0762
0x0757 DD=1: 05 7a               DJNZ R4, loop_0753
label_0759:
0x0759 DD=1: d6 c9 ff            MOVB RTOCON7, #0xff
0x075c DD=1: b7 f5 8f 76         MOVB R6, 0x8ff5
0x0760 DD=1: 54 2a               ACAL label_142a
label_0762:
0x0762 DD=1: d6 c9 ff            MOVB RTOCON7, #0xff
0x0765 DD=1: 03 49 3a            J label_3a49

org 0x1000
label_1000:
0x1000 DD=0: 94 70               LB A, 0x0270
0x1002 DD=0: 04 00               SJ label_1004
label_1004:
0x1004 DD=0: 42                  INC DP
0x1005 DD=0: 42                  INC DP
0x1006 DD=0: b2 95               CMPB A, [DP]
0x1008 DD=0: f2 fa               JLT label_1004
0x100a DD=0: a1 71               MOV ER1, [DP-]
0x100c DD=0: 0a                  SUBB A, R2
0x100d DD=0: 38                  STB A, R0
0x100e DD=0: a2 97               MOV A, [DP]
0x1010 DD=0: 6a a7 04            TJZB R2, label_1017
0x1013 DD=0: 0a                  SUBB A, R2
0x1014 DD=0: 18                  CMPB A, R0
0x1015 DD=0: f0 02               JGT label_1019
label_1017:
0x1017 DD=0: df                  SWAP
0x1018 DD=0: 01                  RT
label_1019:
0x1019 DD=0: 3a                  STB A, R2
0x101a DD=0: df                  SWAP
0x101b DD=0: 0b                  SUBB A, R3
0x101c DD=0: f5 08               JGE label_1026
0x101e DD=0: cf                  NEGB A
0x101f DD=0: 68 a9               MULB R0
0x1021 DD=0: 6a a8               DIVB R2
0x1023 DD=0: 0b                  SUBB A, R3
0x1024 DD=0: cf                  NEGB A
0x1025 DD=0: 01                  RT
label_1026:
0x1026 DD=0: 68 a9               MULB R0
0x1028 DD=0: 6a a8               DIVB R2
0x102a DD=0: 2b                  ADDB A, R3
0x102b DD=0: 01                  RT
label_102c:
0x102c DD=0: 94 70               LB A, 0x0270
0x102e DD=0: 04 00               SJ label_1030
label_1030:
0x1030 DD=0: 42                  INC DP
label_1031:
0x1031 DD=0: 42                  INC DP
0x1032 DD=0: 42                  INC DP
0x1033 DD=0: b3 95               CMPB A, [DP+]
0x1035 DD=0: f2 fa               JLT label_1031
0x1037 DD=0: 38                  STB A, R0
0x1038 DD=0: a1 73               MOV ER3, [DP-]
0x103a DD=1: 81                  L A, [DP-]
0x103b DD=1: a2 72               MOV ER2, [DP]
0x103d DD=1: df                  SWAP
0x103e DD=1: b6 06 a7 08         TJZB ACCL, label_104a
0x1042 DD=1: 68 84               SUBB R0, A
0x1044 DD=1: 6c 84               SUBB R4, A
0x1046 DD=0: 78                  LB A, R0
0x1047 DD=0: 1c                  CMPB A, R4
0x1048 DD=0: f2 03               JLT label_104d
label_104a:
0x104a DD=0: 7d                  LB A, R5
0x104b DD=1: d9                  SDD
0x104c DD=1: 01                  RT
label_104d:
0x104d DD=0: fb                  CLRB A
0x104e DD=0: 39                  STB A, R1
0x104f DD=0: 6d c8               XCHGB A, R5
0x1051 DD=1: d9                  SDD
0x1052 DD=1: 0b                  SUB A, ER3
0x1053 DD=1: f5 08               JGE label_105d
0x1055 DD=1: cf                  NEG A
0x1056 DD=1: 64 a9               MUL ER0
0x1058 DD=1: 66 fb               DIVQ ER2
0x105a DD=1: 0b                  SUB A, ER3
0x105b DD=1: cf                  NEG A
0x105c DD=1: 01                  RT
label_105d:
0x105d DD=1: 64 a9               MUL ER0
0x105f DD=1: 66 fb               DIVQ ER2
0x1061 DD=1: 2b                  ADD A, ER3
0x1062 DD=1: 01                  RT
0x1063:                          db          84 34 04 09 87 00 05 04 04 84 4c 04 00
label_1070:
0x1070 DD=1: 62 a3 03 00         ADD DP, #0x0003
0x1074 DD=1: a2 95               CMP A, [DP]
0x1076 DD=1: f2 f8               JLT label_1070
0x1078 DD=1: a2 72               MOV ER2, [DP]
0x107a DD=1: 0a                  SUB A, ER2
0x107b DD=1: 38                  ST A, ER0
0x107c DD=1: 52                  DEC DP
0x107d DD=1: 66 a7 06            TJZ ER2, label_1086
0x1080 DD=1: 89 7e               L A, -2[DP]
0x1082 DD=1: 0a                  SUB A, ER2
0x1083 DD=1: 18                  CMP A, ER0
0x1084 DD=1: f0 02               JGT label_1088
label_1086:
0x1086 DD=0: 92                  LB A, [DP]
0x1087 DD=0: 01                  RT
label_1088:
0x1088 DD=1: 3a                  ST A, ER2
0x1089 DD=1: fa                  CLR A
0x108a DD=1: 3b                  ST A, ER3
0x108b DD=1: 9b 03 76            MOVB R6, 3[DP]
0x108e DD=1: b2 97               MOVB A, [DP]
0x1090 DD=1: 0b                  SUB A, ER3
0x1091 DD=1: f5 09               JGE label_109c
0x1093 DD=1: cf                  NEG A
0x1094 DD=1: 64 a9               MUL ER0
0x1096 DD=1: 66 fb               DIVQ ER2
0x1098 DD=1: 67 84               SUB ER3, A
0x109a DD=0: 7e                  LB A, R6
0x109b DD=0: 01                  RT
label_109c:
0x109c DD=1: 64 a9               MUL ER0
0x109e DD=1: 66 fb               DIVQ ER2
0x10a0 DD=1: 2b                  ADD A, ER3
0x10a1 DD=0: d8                  RDD
0x10a2 DD=0: 01                  RT
label_10a3:
0x10a3 DD=1: 42                  INC DP
0x10a4 DD=1: 42                  INC DP
label_10a5:
0x10a5 DD=1: 42                  INC DP
0x10a6 DD=1: 42                  INC DP
0x10a7 DD=1: a3 95               CMP A, [DP+]
0x10a9 DD=1: f2 fa               JLT label_10a5
0x10ab DD=1: a1 73               MOV ER3, [DP-]
0x10ad DD=1: a1 72               MOV ER2, [DP-]
0x10af DD=1: 0a                  SUB A, ER2
0x10b0 DD=1: 38                  ST A, ER0
0x10b1 DD=1: 76                  L A, ER2
0x10b2 DD=1: f1 06               JEQ label_10ba
0x10b4 DD=1: 89 7e               L A, -2[DP]
0x10b6 DD=1: 0a                  SUB A, ER2
0x10b7 DD=1: 18                  CMP A, ER0
0x10b8 DD=1: f0 02               JGT label_10bc
label_10ba:
0x10ba DD=1: 82                  L A, [DP]
0x10bb DD=1: 01                  RT
label_10bc:
0x10bc DD=1: 3a                  ST A, ER2
0x10bd DD=1: 82                  L A, [DP]
0x10be DD=1: 0b                  SUB A, ER3
0x10bf DD=1: f5 08               JGE label_10c9
0x10c1 DD=1: cf                  NEG A
0x10c2 DD=1: 64 a9               MUL ER0
0x10c4 DD=1: 66 fb               DIVQ ER2
0x10c6 DD=1: 0b                  SUB A, ER3
0x10c7 DD=1: cf                  NEG A
0x10c8 DD=1: 01                  RT
label_10c9:
0x10c9 DD=1: 64 a9               MUL ER0
0x10cb DD=1: 66 fb               DIVQ ER2
0x10cd DD=1: 2b                  ADD A, ER3
0x10ce DD=1: 01                  RT
label_10cf:
0x10cf DD=0: 19                  CMPB A, R1
0x10d0 DD=0: f5 05               JGE label_10d7
0x10d2 DD=0: 18                  CMPB A, R0
0x10d3 DD=0: f0 04               JGT label_10d9
0x10d5 DD=0: 6a 73               MOVB R3, R2
label_10d7:
0x10d7 DD=0: 7b                  LB A, R3
0x10d8 DD=0: 01                  RT
label_10d9:
0x10d9 DD=0: 08                  SUBB A, R0
0x10da DD=0: 68 c8               XCHGB A, R0
0x10dc DD=0: 09                  SUBB A, R1
0x10dd DD=0: cf                  NEGB A
0x10de DD=0: 6a c8               XCHGB A, R2
0x10e0 DD=0: 6b c8               XCHGB A, R3
0x10e2 DD=0: 0b                  SUBB A, R3
0x10e3 DD=0: f5 08               JGE label_10ed
0x10e5 DD=0: cf                  NEGB A
0x10e6 DD=0: 68 a9               MULB R0
0x10e8 DD=0: 6a a8               DIVB R2
0x10ea DD=0: 0b                  SUBB A, R3
0x10eb DD=0: cf                  NEGB A
0x10ec DD=0: 01                  RT
label_10ed:
0x10ed DD=0: 68 a9               MULB R0
0x10ef DD=0: 6a a8               DIVB R2
0x10f1 DD=0: 2b                  ADDB A, R3
0x10f2 DD=0: 01                  RT
label_10f3:
0x10f3 DD=1: 19                  CMP A, ER1
0x10f4 DD=1: f5 05               JGE label_10fb
0x10f6 DD=1: 18                  CMP A, ER0
0x10f7 DD=1: f0 04               JGT label_10fd
0x10f9 DD=1: 66 73               MOV ER3, ER2
label_10fb:
0x10fb DD=1: 77                  L A, ER3
0x10fc DD=1: 01                  RT
label_10fd:
0x10fd DD=1: 08                  SUB A, ER0
0x10fe DD=1: 64 c8               XCHG A, ER0
0x1100 DD=1: 09                  SUB A, ER1
0x1101 DD=1: cf                  NEG A
0x1102 DD=1: 66 c8               XCHG A, ER2
0x1104 DD=1: 67 c8               XCHG A, ER3
0x1106 DD=1: 0b                  SUB A, ER3
0x1107 DD=1: f5 08               JGE label_1111
0x1109 DD=1: cf                  NEG A
0x110a DD=1: 64 a9               MUL ER0
0x110c DD=1: 66 fb               DIVQ ER2
0x110e DD=1: 0b                  SUB A, ER3
0x110f DD=1: cf                  NEG A
0x1110 DD=1: 01                  RT
label_1111:
0x1111 DD=1: 64 a9               MUL ER0
0x1113 DD=1: 66 fb               DIVQ ER2
0x1115 DD=1: 2b                  ADD A, ER3
0x1116 DD=1: 01                  RT
label_1117:
0x1117 DD=1: fa                  CLR A
0x1118 DD=0: 7b                  LB A, R3
0x1119 DD=0: 0a                  SUBB A, R2
0x111a DD=0: f5 06               JGE label_1122
0x111c DD=0: cf                  NEGB A
0x111d DD=0: 66 a9               MUL ER2
0x111f DD=0: 0a                  SUBB A, R2
0x1120 DD=0: cf                  NEGB A
0x1121 DD=0: 01                  RT
label_1122:
0x1122 DD=0: 66 a9               MUL ER2
0x1124 DD=0: 2a                  ADDB A, R2
0x1125 DD=0: 01                  RT
0x1126:                          db                   09 f5 06 cf 66 a9 09 cf 01 66
0x1130:                          db a9 29 01
label_1133:
0x1133 DD=0: b3 95               CMPB A, [DP+]
0x1135 DD=0: f5 05               JGE label_113c
0x1137 DD=0: 42                  INC DP
0x1138 DD=0: b3 95               CMPB A, [DP+]
0x113a DD=0: f0 02               JGT label_113e
label_113c:
0x113c DD=0: 92                  LB A, [DP]
0x113d DD=0: 01                  RT
label_113e:
0x113e DD=0: 52                  DEC DP
0x113f DD=0: a1 71               MOV ER1, [DP-]
0x1141 DD=0: 0a                  SUBB A, R2
0x1142 DD=0: 38                  STB A, R0
0x1143 DD=0: a2 97               MOV A, [DP]
0x1145 DD=0: 0a                  SUBB A, R2
0x1146 DD=0: 3a                  STB A, R2
0x1147 DD=0: df                  SWAP
0x1148 DD=0: 0b                  SUBB A, R3
0x1149 DD=0: f5 08               JGE label_1153
0x114b DD=0: cf                  NEGB A
0x114c DD=0: 68 a9               MULB R0
0x114e DD=0: 6a a8               DIVB R2
0x1150 DD=0: 0b                  SUBB A, R3
0x1151 DD=0: cf                  NEGB A
0x1152 DD=0: 01                  RT
label_1153:
0x1153 DD=0: 68 a9               MULB R0
0x1155 DD=0: 6a a8               DIVB R2
0x1157 DD=0: 2b                  ADDB A, R3
0x1158 DD=0: 01                  RT
0x1159:                          db                            b3 95 f5 06 42 42 b3
0x1160:                          db 95 f0 02 82 01 38 a1 73 81 a2 72 df 68 84 6c 84
0x1170:                          db 78 1c f2 03 7d d9 01 fb 39 6d c8 d9 0b f5 08 cf
0x1180:                          db 64 a9 66 fb 0b cf 01 64 a9 66 fb 2b 01
label_118d:
0x118d DD=1: fa                  CLR A
0x118e DD=0: 7d                  LB A, R5
0x118f DD=0: 8e 02               SUBB A, #0x02
0x1191 DD=0: 3d                  STB A, R5
0x1192 DD=0: 1c                  CMPB A, R4
0x1193 DD=0: f5 01               JGE label_1196
0x1195 DD=0: 3c                  STB A, R4
label_1196:
0x1196 DD=0: 7c                  LB A, R4
0x1197 DD=0: f1 0a               JEQ label_11a3
0x1199 DD=0: 62 a4               ADD DP, A
0x119b DD=0: 78                  LB A, R0
loop_119c:
0x119c DD=0: 62 d9               CMPCB A, [DP]
0x119e DD=0: f5 0a               JGE label_11aa
0x11a0 DD=0: 52                  DEC DP
0x11a1 DD=0: 05 79               DJNZ R4, loop_119c
label_11a3:
0x11a3 DD=0: 78                  LB A, R0
0x11a4 DD=0: 62 d9               CMPCB A, [DP]
0x11a6 DD=0: f5 02               JGE label_11aa
0x11a8 DD=1: fa                  CLR A
0x11a9 DD=1: 01                  RT
label_11aa:
0x11aa DD=0: 42                  INC DP
0x11ab DD=0: 7d                  LB A, R5
0x11ac DD=0: 0c                  SUBB A, R4
0x11ad DD=0: f1 0b               JEQ label_11ba
0x11af DD=0: 3d                  STB A, R5
0x11b0 DD=0: 78                  LB A, R0
loop_11b1:
0x11b1 DD=0: 62 d9               CMPCB A, [DP]
0x11b3 DD=0: f2 0e               JLT label_11c3
0x11b5 DD=0: 42                  INC DP
0x11b6 DD=0: 6c c6               INCB R4
0x11b8 DD=0: 05 f7               DJNZ R5, loop_11b1
label_11ba:
0x11ba DD=0: 78                  LB A, R0
0x11bb DD=0: 62 d9               CMPCB A, [DP]
0x11bd DD=0: f2 04               JLT label_11c3
0x11bf DD=1: f8 ff ff            L A, #0xffff
0x11c2 DD=1: 01                  RT
label_11c3:
0x11c3 DD=0: 52                  DEC DP
0x11c4 DD=0: 62 da               LC A, [DP]
0x11c6 DD=0: 68 84               SUBB R0, A
0x11c8 DD=0: df                  SWAP
0x11c9 DD=0: b6 07 85            SUBB A, ACCH
0x11cc DD=0: 3a                  STB A, R2
0x11cd DD=0: fb                  CLRB A
0x11ce DD=0: 39                  STB A, R1
0x11cf DD=0: 3b                  STB A, R3
0x11d0 DD=1: 74                  L A, ER0
0x11d1 DD=1: 64 c7               CLR ER0
0x11d3 DD=1: 65 fb               DIVQ ER1
0x11d5 DD=1: 01                  RT
label_11d6:
0x11d6 DD=1: fa                  CLR A
0x11d7 DD=0: 7d                  LB A, R5
0x11d8 DD=0: 8e 02               SUBB A, #0x02
0x11da DD=0: 3d                  STB A, R5
0x11db DD=0: 1c                  CMPB A, R4
0x11dc DD=0: f5 01               JGE label_11df
0x11de DD=0: 3c                  STB A, R4
label_11df:
0x11df DD=0: 7c                  LB A, R4
0x11e0 DD=0: f1 0c               JEQ label_11ee
0x11e2 DD=0: 8f                  SLLB A
0x11e3 DD=0: 62 a4               ADD DP, A
0x11e5 DD=1: 74                  L A, ER0
loop_11e6:
0x11e6 DD=1: 62 d8               CMPC A, [DP]
0x11e8 DD=1: f5 0b               JGE label_11f5
0x11ea DD=1: 52                  DEC DP
0x11eb DD=1: 52                  DEC DP
0x11ec DD=1: 05 78               DJNZ R4, loop_11e6
label_11ee:
0x11ee DD=1: 74                  L A, ER0
0x11ef DD=1: 62 d8               CMPC A, [DP]
0x11f1 DD=1: f5 02               JGE label_11f5
0x11f3 DD=1: fa                  CLR A
0x11f4 DD=1: 01                  RT
label_11f5:
0x11f5 DD=1: 42                  INC DP
0x11f6 DD=1: 42                  INC DP
0x11f7 DD=0: 7d                  LB A, R5
0x11f8 DD=0: 0c                  SUBB A, R4
0x11f9 DD=0: f1 0c               JEQ label_1207
0x11fb DD=0: 3d                  STB A, R5
0x11fc DD=1: 74                  L A, ER0
loop_11fd:
0x11fd DD=1: 62 d8               CMPC A, [DP]
0x11ff DD=1: f2 0e               JLT label_120f
0x1201 DD=1: 42                  INC DP
0x1202 DD=1: 42                  INC DP
0x1203 DD=1: 6c c6               INCB R4
0x1205 DD=1: 05 f6               DJNZ R5, loop_11fd
label_1207:
0x1207 DD=1: 74                  L A, ER0
0x1208 DD=1: 62 d8               CMPC A, [DP]
0x120a DD=1: f2 03               JLT label_120f
0x120c DD=1: bc d7               FILL A
0x120e DD=1: 01                  RT
label_120f:
0x120f DD=1: 81                  L A, [DP-]
0x1210 DD=1: 39                  ST A, ER1
0x1211 DD=1: 62 da               LC A, [DP]
0x1213 DD=1: 64 84               SUB ER0, A
0x1215 DD=1: 65 84               SUB ER1, A
0x1217 DD=1: 74                  L A, ER0
0x1218 DD=1: 64 c7               CLR ER0
0x121a DD=1: 65 fb               DIVQ ER1
0x121c DD=1: 01                  RT
label_121d:
0x121d DD=0: 6e a9               MULB R6
0x121f DD=0: 62 a4               ADD DP, A
0x1221 DD=1: fa                  CLR A
0x1222 DD=0: 79                  LB A, R1
0x1223 DD=0: 62 a4               ADD DP, A
0x1225 DD=0: a2 71               MOV ER1, [DP]
0x1227 DD=0: 7b                  LB A, R3
0x1228 DD=0: 0a                  SUBB A, R2
0x1229 DD=0: f2 05               JLT label_1230
0x122b DD=0: 66 a9               MUL ER2
0x122d DD=0: 2a                  ADDB A, R2
0x122e DD=0: 04 05               SJ label_1235
label_1230:
0x1230 DD=0: cf                  NEGB A
0x1231 DD=0: 66 a9               MUL ER2
0x1233 DD=0: 0a                  SUBB A, R2
0x1234 DD=0: cf                  NEGB A
label_1235:
0x1235 DD=0: 6e c8               XCHGB A, R6
0x1237 DD=0: 62 a4               ADD DP, A
0x1239 DD=0: a2 71               MOV ER1, [DP]
0x123b DD=0: 7b                  LB A, R3
0x123c DD=0: 0a                  SUBB A, R2
0x123d DD=0: f2 05               JLT label_1244
0x123f DD=0: 66 a9               MUL ER2
0x1241 DD=0: 2a                  ADDB A, R2
0x1242 DD=0: 04 05               SJ label_1249
label_1244:
0x1244 DD=0: cf                  NEGB A
0x1245 DD=0: 66 a9               MUL ER2
0x1247 DD=0: 0a                  SUBB A, R2
0x1248 DD=0: cf                  NEGB A
label_1249:
0x1249 DD=0: 0e                  SUBB A, R6
0x124a DD=0: f5 06               JGE label_1252
0x124c DD=0: cf                  NEGB A
0x124d DD=0: 60 a9               MUL X1
0x124f DD=0: 0e                  SUBB A, R6
0x1250 DD=0: cf                  NEGB A
0x1251 DD=0: 01                  RT
label_1252:
0x1252 DD=0: 60 a9               MUL X1
0x1254 DD=0: 2e                  ADDB A, R6
0x1255 DD=0: 01                  RT
label_1256:
0x1256 DD=0: 6e 8c               SLLB R6, 1
0x1258 DD=0: 6e a9               MULB R6
0x125a DD=0: 62 a4               ADD DP, A
0x125c DD=1: fa                  CLR A
0x125d DD=1: 69 96 06            MOVB ACCL, R1
0x1260 DD=1: 8f                  SLL A
0x1261 DD=1: 62 a4               ADD DP, A
0x1263 DD=1: a3 71               MOV ER1, [DP+]
0x1265 DD=1: 81                  L A, [DP-]
0x1266 DD=1: 09                  SUB A, ER1
0x1267 DD=1: f2 05               JLT label_126e
0x1269 DD=1: 66 a9               MUL ER2
0x126b DD=1: 29                  ADD A, ER1
0x126c DD=1: 04 05               SJ label_1273
label_126e:
0x126e DD=1: cf                  NEG A
0x126f DD=1: 66 a9               MUL ER2
0x1271 DD=1: 09                  SUB A, ER1
0x1272 DD=1: cf                  NEG A
label_1273:
0x1273 DD=1: 67 c8               XCHG A, ER3
0x1275 DD=1: b6 07 c7            CLRB ACCH
0x1278 DD=1: 62 a4               ADD DP, A
0x127a DD=1: a3 71               MOV ER1, [DP+]
0x127c DD=1: 82                  L A, [DP]
0x127d DD=1: 09                  SUB A, ER1
0x127e DD=1: f2 05               JLT label_1285
0x1280 DD=1: 66 a9               MUL ER2
0x1282 DD=1: 29                  ADD A, ER1
0x1283 DD=1: 04 05               SJ label_128a
label_1285:
0x1285 DD=1: cf                  NEG A
0x1286 DD=1: 66 a9               MUL ER2
0x1288 DD=1: 09                  SUB A, ER1
0x1289 DD=1: cf                  NEG A
label_128a:
0x128a DD=1: 0b                  SUB A, ER3
0x128b DD=1: f5 06               JGE label_1293
0x128d DD=1: cf                  NEG A
0x128e DD=1: 60 a9               MUL X1
0x1290 DD=1: 0b                  SUB A, ER3
0x1291 DD=1: cf                  NEG A
0x1292 DD=1: 01                  RT
label_1293:
0x1293 DD=1: 60 a9               MUL X1
0x1295 DD=1: 2b                  ADD A, ER3
0x1296 DD=1: 01                  RT
0x1297:                          db                      b6 07 2f 07 2b f5 08 bc d7
0x12a0:                          db 04 04 2b f2 01 fa 3b 01 2b 9a 21 06 f8 00 80 f4
0x12b0:                          db 01 dc 3b 01 f5 01 cf 01 f5 01 fb 01 f5 01 fa 01
0x12c0:                          db f5 02 bc d7 01
label_12c5:
0x12c5 DD=1: d9                  SDD
label_12c6:
0x12c6 DD=1: 69 8c               SLLB R1, 1
0x12c8 DD=1: af                  ROL A
0x12c9 DD=1: f2 04               JLT label_12cf
0x12cb DD=1: 68 ea f8            DJNZ R0, label_12c6
0x12ce DD=1: 01                  RT
label_12cf:
0x12cf DD=1: bc d7               FILL A
0x12d1 DD=1: 01                  RT
0x12d2:                          db       0b f5 01 cf 64 a9 64 c8 f5 06 66 84 74 67
0x12e0:                          db e4 01 66 a4 74 67 f4 01 64 71 64 a9 d9 3a 82 65
0x12f0:                          db a9 39 82 09 2a 32 01 d9 19 f2 06 60 94 f5 03 60
0x1300:                          db 71 75 01
label_1303:
0x1303 DD=0: 10 02               MOVB R0, #0x02
0x1305 DD=0: b2 85               SUBB A, [DP]
0x1307 DD=0: f5 03               JGE label_130c
0x1309 DD=0: 28                  ADDB A, R0
0x130a DD=0: 04 01               SJ label_130d
label_130c:
0x130c DD=0: 08                  SUBB A, R0
label_130d:
0x130d DD=0: f5 01               JGE label_1310
0x130f DD=0: fb                  CLRB A
label_1310:
0x1310 DD=0: b2 a5               ADDB A, [DP]
0x1312 DD=0: 01                  RT
label_1313:
0x1313 DD=0: 22 16 a0            MOV DP, #0xa016
0x1316 DD=0: 5a b1 03            JBS sbafix 02f1.2, label_131c
0x1319 DD=0: 22 10 a0            MOV DP, #0xa010
label_131c:
0x131c DD=0: 93                  LB A, [DP+]
0x131d DD=0: be 3f               ANDB A, #0x3f
0x131f DD=0: 34 e2               STB A, 0x02e2
0x1321 DD=0: 93                  LB A, [DP+]
0x1322 DD=0: be 0f               ANDB A, #0x0f
0x1324 DD=0: 34 e3               STB A, 0x02e3
0x1326 DD=0: 93                  LB A, [DP+]
0x1327 DD=0: be 7f               ANDB A, #0x7f
0x1329 DD=0: 34 e4               STB A, 0x02e4
0x132b DD=0: 97 13 a0            LB A, 0xa013
0x132e DD=0: be bf               ANDB A, #0xbf
0x1330 DD=0: 34 e5               STB A, 0x02e5
0x1332 DD=0: 97 14 a0            LB A, 0xa014
0x1335 DD=0: be bc               ANDB A, #0xbc
0x1337 DD=0: 34 e6               STB A, 0x02e6
0x1339 DD=0: 97 15 a0            LB A, 0xa015
0x133c DD=0: be bf               ANDB A, #0xbf
0x133e DD=0: 34 e7               STB A, 0x02e7
0x1340 DD=0: 14 08               MOVB R4, #0x08
0x1342 DD=0: 22 04 06            MOV DP, #0x0604
0x1345 DD=0: 20 00 a0            MOV X1, #0xa000
loop_1348:
0x1348 DD=0: b0 8b               MOVB [DP+], [X1]
0x134a DD=0: 40                  INC X1
0x134b DD=0: 05 7b               DJNZ R4, loop_1348
0x134d DD=0: 14 05               MOVB R4, #0x05
0x134f DD=0: 22 00 0c            MOV DP, #0x0c00
0x1352 DD=0: 20 12 90            MOV X1, #0x9012
loop_1355:
0x1355 DD=0: b0 8b               MOVB [DP+], [X1]
0x1357 DD=0: 40                  INC X1
0x1358 DD=0: 05 7b               DJNZ R4, loop_1355
0x135a DD=0: a7 08 a0 9b 02 06   MOV 0x0602, 0xa008
0x1360 DD=0: 01                  RT
label_1361:
0x1361 DD=0: 96 19               LB A, P9
0x1363 DD=0: b6 15 15            MB C, P5.5
0x1366 DD=0: bc 1e               MB A.6, C
0x1368 DD=0: b6 16 11            MB C, P6.1
0x136b DD=0: bc 1f               MB A.7, C
0x136d DD=0: de 8e               XORB A, #0x8e
0x136f DD=0: be ff               ANDB A, #0xff
0x1371 DD=0: 5a b3 08            JBS sbafix 02f3.2, label_137c
0x1374 DD=0: 5a 33               SB sbafix 02f3.2
0x1376 DD=0: 34 dd               STB A, 0x02dd
0x1378 DD=0: 34 de               STB A, 0x02de
0x137a DD=0: 04 1d               SJ label_1399
label_137c:
0x137c DD=0: 38                  STB A, R0
0x137d DD=0: 39                  STB A, R1
0x137e DD=0: b4 dd d5            XORB A, 0x02dd
0x1381 DD=0: 68 d0 de            XORB R0, 0x02de
0x1384 DD=0: 68 c5               ORB A, R0
0x1386 DD=0: 38                  STB A, R0
0x1387 DD=0: de ff               XORB A, #0xff
0x1389 DD=0: 69 b5               ANDB A, R1
0x138b DD=0: 68 c8               XCHGB A, R0
0x138d DD=0: b4 dc b5            ANDB A, 0x02dc
0x1390 DD=0: 68 c5               ORB A, R0
0x1392 DD=0: b4 dd 86 de         MOVB 0x02de, 0x02dd
0x1396 DD=0: 69 86 dd            MOVB 0x02dd, R1
label_1399:
0x1399 DD=0: 34 dc               STB A, 0x02dc
0x139b DD=0: fb                  CLRB A
0x139c DD=0: b6 15 17            MB C, P5.7
0x139f DD=0: bc 18               MB A.0, C
0x13a1 DD=0: de 00               XORB A, #0x00
0x13a3 DD=0: be 01               ANDB A, #0x01
0x13a5 DD=0: 5f b3 08            JBS sbafix 02f3.7, label_13b0
0x13a8 DD=0: 5f 33               SB sbafix 02f3.7
0x13aa DD=0: 34 e0               STB A, 0x02e0
0x13ac DD=0: 34 e1               STB A, 0x02e1
0x13ae DD=0: 04 1d               SJ label_13cd
label_13b0:
0x13b0 DD=0: 38                  STB A, R0
0x13b1 DD=0: 39                  STB A, R1
0x13b2 DD=0: b4 e0 d5            XORB A, 0x02e0
0x13b5 DD=0: 68 d0 e1            XORB R0, 0x02e1
0x13b8 DD=0: 68 c5               ORB A, R0
0x13ba DD=0: 38                  STB A, R0
0x13bb DD=0: de ff               XORB A, #0xff
0x13bd DD=0: 69 b5               ANDB A, R1
0x13bf DD=0: 68 c8               XCHGB A, R0
0x13c1 DD=0: b4 df b5            ANDB A, 0x02df
0x13c4 DD=0: 68 c5               ORB A, R0
0x13c6 DD=0: b4 e0 86 e1         MOVB 0x02e1, 0x02e0
0x13ca DD=0: 69 86 e0            MOVB 0x02e0, R1
label_13cd:
0x13cd DD=0: 34 df               STB A, 0x02df
0x13cf DD=0: 01                  RT
label_13d0:
0x13d0 DD=1: 86 d6               L A, TM1
0x13d2 DD=1: ae 06 00            ADD A, #0x0006
0x13d5 DD=1: a8 92 00 c8         XCHG A, 0x0092[X1]
0x13d9 DD=1: b9 c6 00 28 06      JBS 0x00c6[X2].0, label_13e4
0x13de DD=1: 2b                  ADD A, ER3
0x13df DD=1: c8 92 00            ST A, 0x0092[X1]
0x13e2 DD=1: 04 0c               SJ label_13f0
label_13e4:
0x13e4 DD=1: 88 92 00            L A, 0x0092[X1]
0x13e7 DD=1: 29                  ADD A, ER1
0x13e8 DD=1: c8 ae 00            ST A, 0x00ae[X1]
0x13eb DD=1: b9 c6 00 ab fd      MOVB 0x00c6[X2], #0xfd
label_13f0:
0x13f0 DD=1: 01                  RT
label_13f1:
0x13f1 DD=1: d6 4c 3c            MOVB WDT, #0x3c
0x13f4 DD=1: d6 4c c3            MOVB WDT, #0xc3
0x13f7 DD=1: b6 14 17            MB C, P4.7
0x13fa DD=1: fd                  CPL C
0x13fb DD=1: b6 14 1f            MB P4.7, C
0x13fe DD=1: 01                  RT
label_13ff:
0x13ff DD=1: da                  DI
0x1400 DD=0: 92                  LB A, [DP]
0x1401 DD=0: f1 02               JEQ label_1405
0x1403 DD=0: b2 d6               DECB [DP]
label_1405:
0x1405 DD=0: db                  EI
0x1406 DD=0: 42                  INC DP
0x1407 DD=0: 05 76               DJNZ R4, label_13ff
0x1409 DD=0: 01                  RT
label_140a:
0x140a DD=0: b7 d6 8e a5         ADDB A, 0x8ed6
0x140e DD=0: f5 02               JGE label_1412
0x1410 DD=0: bc d7               FILLB A
label_1412:
0x1412 DD=0: 58 af 09            JBS sbafix 02ef.0, label_141e
0x1415 DD=0: 58 f3 06            JBR sbafix 02f3.0, label_141e
0x1418 DD=0: b7 19 06 95         CMPB A, 0x0619
0x141c DD=0: f5 0b               JGE label_1429
label_141e:
0x141e DD=0: b7 d5 8e 70         MOVB R0, 0x8ed5
0x1422 DD=0: 18                  CMPB A, R0
0x1423 DD=0: f5 01               JGE label_1426
0x1425 DD=0: 78                  LB A, R0
label_1426:
0x1426 DD=0: 37 19 06            STB A, 0x0619
label_1429:
0x1429 DD=0: 01                  RT
label_142a:
0x142a DD=0: 7e                  LB A, R6
0x142b DD=0: dc                  DECB A
0x142c DD=0: b4 d4 b8            SBR 0x02d4.(AL)
0x142f DD=0: 59 36               SB sbafix 02f6.1
0x1431 DD=0: b7 b2 08 24 02      JBR 0x08b2.4, label_1438
0x1436 DD=0: 5d 35               SB sbafix 02f5.5
label_1438:
0x1438 DD=0: 94 d4               LB A, 0x02d4
0x143a DD=0: ac d5               ADDB A, 0x02d5
0x143c DD=0: ac d6               ADDB A, 0x02d6
0x143e DD=0: ac d7               ADDB A, 0x02d7
0x1440 DD=0: 34 9f               STB A, 0x029f
0x1442 DD=0: fb                  CLRB A
0x1443 DD=0: b4 d4 d5            XORB A, 0x02d4
0x1446 DD=0: b4 d5 d5            XORB A, 0x02d5
0x1449 DD=0: b4 d6 d5            XORB A, 0x02d6
0x144c DD=0: b4 d7 d5            XORB A, 0x02d7
0x144f DD=0: 34 a0               STB A, 0x02a0
0x1451 DD=0: b6 07 c7            CLRB ACCH
0x1454 DD=0: 7e                  LB A, R6
0x1455 DD=0: dc                  DECB A
0x1456 DD=1: d9                  SDD
0x1457 DD=1: 8f                  SLL A
0x1458 DD=1: ae 54 92            ADD A, #0x9254
0x145b DD=1: a6 06 da            LC A, [ACC]
0x145e DD=1: a6 06 c9            J [ACC]
case_0:
0x1461 DD=1: 86 e1               L A, ADCR1
0x1463 DD=1: 8f                  SLL A
0x1464 DD=0: f9 01               LB A, #0x01
0x1466 DD=0: f2 02               JLT label_146a
0x1468 DD=0: f9 00               LB A, #0x00
label_146a:
0x146a DD=0: 03 46 15            J label_1546
case_1:
0x146d DD=0: f9 02               LB A, #0x02
0x146f DD=0: 03 46 15            J label_1546
case_3:
0x1472 DD=1: 86 eb               L A, ADCR11
0x1474 DD=1: 8f                  SLL A
0x1475 DD=0: f9 04               LB A, #0x04
0x1477 DD=0: f2 02               JLT label_147b
0x1479 DD=0: f9 03               LB A, #0x03
label_147b:
0x147b DD=0: 03 46 15            J label_1546
case_4:
0x147e DD=1: 86 e0               L A, ADCR0
0x1480 DD=1: 8f                  SLL A
0x1481 DD=0: f9 06               LB A, #0x06
0x1483 DD=0: f2 02               JLT label_1487
0x1485 DD=0: f9 05               LB A, #0x05
label_1487:
0x1487 DD=0: 03 46 15            J label_1546
case_5:
0x148a DD=1: 86 ea               L A, ADCR10
0x148c DD=1: 8f                  SLL A
0x148d DD=0: f9 08               LB A, #0x08
0x148f DD=0: f2 02               JLT label_1493
0x1491 DD=0: f9 07               LB A, #0x07
label_1493:
0x1493 DD=0: 03 46 15            J label_1546
0x1496:                          db                   86 e3 8f f9 0a f2 02 f9 09 03
0x14a0:                          db 46 15 f9 0b 03 46 15
case_8:
0x14a7 DD=0: f9 0c               LB A, #0x0c
0x14a9 DD=0: 03 46 15            J label_1546
case_9:
0x14ac DD=0: f9 0d               LB A, #0x0d
0x14ae DD=0: 03 46 15            J label_1546
case_10:
0x14b1 DD=0: f9 0e               LB A, #0x0e
0x14b3 DD=0: 03 46 15            J label_1546
case_11:
0x14b6 DD=0: f9 0f               LB A, #0x0f
0x14b8 DD=0: 03 46 15            J label_1546
0x14bb:                          db                                  f9 10 03 46 15
0x14c0:                          db f9 11 03 46 15
case_12:
0x14c5 DD=0: f9 12               LB A, #0x12
0x14c7 DD=0: 03 46 15            J label_1546
case_13:
0x14ca DD=0: f9 13               LB A, #0x13
0x14cc DD=0: 03 46 15            J label_1546
0x14cf:                          db                                              f9
0x14d0:                          db 14 03 46 15 f9 15 03 46 15 f9 16 03 46 15 f9 17
0x14e0:                          db 03 46 15
case_28:
0x14e3 DD=0: f9 18               LB A, #0x18
0x14e5 DD=0: 03 46 15            J label_1546
0x14e8:                          db                         f9 19 03 46 15 f9 1a 03
0x14f0:                          db 46 15 f9 1b 03 46 15
case_31:
0x14f7 DD=0: f9 1c               LB A, #0x1c
0x14f9 DD=0: 03 46 15            J label_1546
case_16:
0x14fc DD=0: f9 1d               LB A, #0x1d
0x14fe DD=0: 03 46 15            J label_1546
0x1501:                          db    f9 1f 03 46 15 f9 20 03 46 15 f9 21 03 46 15
case_21:
0x1510 DD=1: 86 e2               L A, ADCR2
0x1512 DD=1: 8f                  SLL A
0x1513 DD=0: f9 23               LB A, #0x23
0x1515 DD=0: f2 02               JLT label_1519
0x1517 DD=0: f9 22               LB A, #0x22
label_1519:
0x1519 DD=0: 03 46 15            J label_1546
case_22:
0x151c DD=0: f9 24               LB A, #0x24
0x151e DD=0: 03 46 15            J label_1546
case_2:
0x1521 DD=1: 86 f2               L A, ADCR14
0x1523 DD=1: 8f                  SLL A
0x1524 DD=0: f9 26               LB A, #0x26
0x1526 DD=0: f2 02               JLT label_152a
0x1528 DD=0: f9 25               LB A, #0x25
label_152a:
0x152a DD=0: 03 46 15            J label_1546
case_23:
0x152d DD=0: f9 27               LB A, #0x27
0x152f DD=0: 03 46 15            J label_1546
case_24:
0x1532 DD=0: f9 28               LB A, #0x28
0x1534 DD=0: 03 46 15            J label_1546
case_25:
0x1537 DD=0: f9 29               LB A, #0x29
0x1539 DD=0: 03 46 15            J label_1546
0x153c:                          db                                     f9 2a 03 46
0x1540:                          db 15 f9 2b 03 46 15
label_1546:
0x1546 DD=0: b7 a0 0c b8         SBR 0x0ca0.(AL)
0x154a DD=0: cc                  INCB A
0x154b DD=0: 34 8d               STB A, 0x028d
case_6:
case_7:
case_14:
case_15:
case_17:
case_18:
case_19:
case_20:
case_26:
case_27:
case_29:
case_30:
0x154d DD=0: 01                  RT
0x154e:                          db                                           68 c7
0x1550:                          db 21 04 00 62 a3 03 00 91 b9 d3 02 b5 68 c4 61 ea
0x1560:                          db f6 01
label_1562:
0x1562 DD=0: 97 2f 06            LB A, 0x062f
0x1565 DD=0: f1 12               JEQ label_1579
0x1567 DD=0: b7 ad 06 a6 41      TJNZB 0x06ad, label_15ad
0x156c DD=0: 14 10               MOVB R4, #0x10
0x156e DD=0: 1c                  CMPB A, R4
0x156f DD=0: f5 02               JGE label_1573
0x1571 DD=0: 14 01               MOVB R4, #0x01
label_1573:
0x1573 DD=0: 0c                  SUBB A, R4
0x1574 DD=0: 27 07 11            MOV ER3, #0x1107
0x1577 DD=0: f6 27               JNE label_15a0
label_1579:
0x1579 DD=0: 59 34               SB sbafix 02f4.1
0x157b DD=0: 12 20               MOVB R2, #0x20
0x157d DD=0: 97 30 06            LB A, 0x0630
label_1580:
0x1580 DD=0: 9e 20               CMPB A, #0x20
0x1582 DD=0: f5 15               JGE label_1599
0x1584 DD=0: b2 ba               MBR C, [DP].(AL)
0x1586 DD=0: 97 30 06            LB A, 0x0630
0x1589 DD=0: cc                  INCB A
0x158a DD=0: 37 30 06            STB A, 0x0630
0x158d DD=0: f2 05               JLT label_1594
0x158f DD=0: 6a ea ee            DJNZ R2, label_1580
0x1592 DD=0: 04 2e               SJ label_15c2
label_1594:
0x1594 DD=0: dc                  DECB A
0x1595 DD=0: ba 97               MOVB A, [X1+A]
0x1597 DD=0: 04 04               SJ label_159d
label_1599:
0x1599 DD=0: fb                  CLRB A
0x159a DD=0: 37 30 06            STB A, 0x0630
label_159d:
0x159d DD=0: 27 1e 29            MOV ER3, #0x291e
label_15a0:
0x15a0 DD=0: 37 2f 06            STB A, 0x062f
0x15a3 DD=0: 9e 10               CMPB A, #0x10
0x15a5 DD=0: f2 02               JLT label_15a9
0x15a7 DD=0: 6f 76               MOVB R6, R7
label_15a9:
0x15a9 DD=0: 6e 9b ad 06         MOVB 0x06ad, R6
label_15ad:
0x15ad DD=0: 9e 10               CMPB A, #0x10
0x15af DD=0: 27 06 02            MOV ER3, #0x0206
0x15b2 DD=0: f2 03               JLT label_15b7
0x15b4 DD=0: 27 11 03            MOV ER3, #0x0311
label_15b7:
0x15b7 DD=0: 97 ad 06            LB A, 0x06ad
0x15ba DD=0: 1e                  CMPB A, R6
0x15bb DD=0: f5 02               JGE label_15bf
0x15bd DD=0: 6f 94               CMPB R7, A
label_15bf:
0x15bf DD=0: b6 10 19            MB P0.1, C
label_15c2:
0x15c2 DD=0: 01                  RT
label_15c3:
0x15c3 DD=0: b7 2f 06 a7 0b      TJZB 0x062f, label_15d3
0x15c8 DD=0: b7 ad 06 a6 17      TJNZB 0x06ad, label_15e4
0x15cd DD=0: b7 2f 06 c7         CLRB 0x062f
0x15d1 DD=0: 04 1f               SJ label_15f2
label_15d3:
0x15d3 DD=0: 5f 35               SB sbafix 02f5.7
0x15d5 DD=0: 16 06               MOVB R6, #0x06
0x15d7 DD=0: f6 02               JNE label_15db
0x15d9 DD=0: 16 1e               MOVB R6, #0x1e
label_15db:
0x15db DD=0: b7 2f 06 ab 01      MOVB 0x062f, #0x01
0x15e0 DD=0: 6e 9b ad 06         MOVB 0x06ad, R6
label_15e4:
0x15e4 DD=0: 27 06 02            MOV ER3, #0x0206
0x15e7 DD=0: 97 ad 06            LB A, 0x06ad
0x15ea DD=0: 1e                  CMPB A, R6
0x15eb DD=0: f5 02               JGE label_15ef
0x15ed DD=0: 6f 94               CMPB R7, A
label_15ef:
0x15ef DD=0: b6 10 19            MB P0.1, C
label_15f2:
0x15f2 DD=0: 01                  RT
label_15f3:
0x15f3 DD=1: a6 00 93 38 08      CMP SSP, #0x0838
0x15f8 DD=1: f0 25               JGT label_161f
0x15fa DD=1: a6 46 93 00 80      CMP IE0, #0x8000
0x15ff DD=1: f6 1e               JNE label_161f
0x1601 DD=1: a6 48 93 40 00      CMP IE1, #0x0040
0x1606 DD=1: f6 17               JNE label_161f
0x1608 DD=1: b6 4a 93 c0         CMPB IE2L, #0xc0
0x160c DD=1: f6 11               JNE label_161f
0x160e DD=1: a6 02 93 e0 08      CMP LRB, #0x08e0
0x1613 DD=1: f6 0a               JNE label_161f
0x1615 DD=1: d5 a3 48            CMPB off(0xa3), #0x48
0x1618 DD=1: f6 05               JNE label_161f
0x161a DD=1: d5 a4 77            CMPB off(0xa4), #0x77
0x161d DD=1: f1 01               JEQ label_1620
label_161f:
0x161f DD=0: ff                  BRK
label_1620:
0x1620 DD=1: 01                  RT
label_1621:
0x1621 DD=1: a2 70               MOV ER0, [DP]
0x1623 DD=1: 32                  ST A, [DP]
0x1624 DD=1: a2 95               CMP A, [DP]
0x1626 DD=1: f6 06               JNE label_162e
0x1628 DD=1: 8f                  SLL A
0x1629 DD=1: 32                  ST A, [DP]
0x162a DD=1: a2 95               CMP A, [DP]
0x162c DD=1: f1 05               JEQ label_1633
label_162e:
0x162e DD=1: b4 2a ab c7         MOVB 0x022a, #0xc7
0x1632 DD=0: ff                  BRK
label_1633:
0x1633 DD=1: 64 8b               MOV [DP+], ER0
0x1635 DD=1: 9f                  SRL A
0x1636 DD=1: 05 69               DJNZ R4, label_1621
0x1638 DD=1: 01                  RT
0x1639:                          db                            99 80 8b 81 76 8b 83
0x1640:                          db 74 b6 10 ca f1 25 a6 d4 70 64 a3 02 00 64 8a b0
0x1650:                          db 01 14 19 05 7e b6 10 ca f6 11 64 a3 02 00 64 8a
0x1660:                          db b0 09 14 13 05 7e b6 10 ca f6 05 9b 85 86 2a ff
0x1670:                          db 63 a3 06 00 01
label_1675:
0x1675 DD=1: 86 d6               L A, TM1
0x1677 DD=1: 8d 0c               SUB A, off(0x0c)
0x1679 DD=1: 9e 8a 02            CMP A, #0x028a
0x167c DD=1: f2 13               JLT label_1691
0x167e DD=1: b6 ee 00            RB ADINTCON0.0
0x1681 DD=1: f1 05               JEQ label_1688
0x1683 DD=1: b6 fe 00            RB ADINTCON1.0
0x1686 DD=1: f6 05               JNE label_168d
label_1688:
0x1688 DD=1: b4 2a ab c4         MOVB 0x022a, #0xc4
0x168c DD=0: ff                  BRK
label_168d:
0x168d DD=1: a6 d6 87 0c         MOV off(0x0c), TM1
label_1691:
0x1691 DD=1: 01                  RT
label_1692:
0x1692 DD=1: f8 00 98            L A, #0x9800
0x1695 DD=1: 58 35               SB sbafix 02f5.0
0x1697 DD=1: 04 05               SJ label_169e
label_1699:
0x1699 DD=1: f8 00 80            L A, #0x8000
0x169c DD=1: 58 75               RB sbafix 02f5.0
label_169e:
0x169e DD=1: 14 0b               MOVB R4, #0x0b
0x16a0 DD=1: b6 15 0b            SB P5.3
loop_16a3:
0x16a3 DD=1: 8f                  SLL A
0x16a4 DD=1: b6 15 19            MB P5.1, C
0x16a7 DD=1: 00                  NOP
0x16a8 DD=1: 00                  NOP
0x16a9 DD=1: 00                  NOP
0x16aa DD=1: b6 15 0a            SB P5.2
0x16ad DD=1: 00                  NOP
0x16ae DD=1: 00                  NOP
0x16af DD=1: 00                  NOP
0x16b0 DD=1: 00                  NOP
0x16b1 DD=1: 00                  NOP
0x16b2 DD=1: 00                  NOP
0x16b3 DD=1: b6 15 02            RB P5.2
0x16b6 DD=1: 05 6b               DJNZ R4, loop_16a3
0x16b8 DD=1: b6 15 03            RB P5.3
0x16bb DD=1: b6 15 01            RB P5.1
0x16be DD=1: b6 15 0b            SB P5.3
0x16c1 DD=1: 00                  NOP
0x16c2 DD=1: b6 15 03            RB P5.3
0x16c5 DD=1: 01                  RT
label_16c6:
0x16c6 DD=0: d6 07 06            MOVB ACCH, #0x06
0x16c9 DD=1: d9                  SDD
0x16ca DD=1: bc 8f               SLL A, 4
0x16cc DD=1: 8f                  SLL A
0x16cd DD=1: 14 0b               MOVB R4, #0x0b
0x16cf DD=1: b6 15 0b            SB P5.3
loop_16d2:
0x16d2 DD=1: 8f                  SLL A
0x16d3 DD=1: b6 15 19            MB P5.1, C
0x16d6 DD=1: 00                  NOP
0x16d7 DD=1: 00                  NOP
0x16d8 DD=1: 00                  NOP
0x16d9 DD=1: b6 15 0a            SB P5.2
0x16dc DD=1: 00                  NOP
0x16dd DD=1: 00                  NOP
0x16de DD=1: 00                  NOP
0x16df DD=1: 00                  NOP
0x16e0 DD=1: 00                  NOP
0x16e1 DD=1: 00                  NOP
0x16e2 DD=1: b6 15 02            RB P5.2
0x16e5 DD=1: 05 6b               DJNZ R4, loop_16d2
0x16e7 DD=1: b6 15 01            RB P5.1
0x16ea DD=1: 14 10               MOVB R4, #0x10
loop_16ec:
0x16ec DD=1: b6 15 0a            SB P5.2
0x16ef DD=1: 86 06               L A, ACC
0x16f1 DD=1: 86 06               L A, ACC
0x16f3 DD=1: 86 06               L A, ACC
0x16f5 DD=1: 86 06               L A, ACC
0x16f7 DD=1: 86 06               L A, ACC
0x16f9 DD=1: b6 15 10            MB C, P5.0
0x16fc DD=1: af                  ROL A
0x16fd DD=1: b6 15 02            RB P5.2
0x1700 DD=1: 00                  NOP
0x1701 DD=1: 00                  NOP
0x1702 DD=1: 00                  NOP
0x1703 DD=1: 05 67               DJNZ R4, loop_16ec
0x1705 DD=1: b6 15 03            RB P5.3
0x1708 DD=1: 00                  NOP
0x1709 DD=1: 00                  NOP
0x170a DD=1: 00                  NOP
0x170b DD=1: b6 15 0b            SB P5.3
0x170e DD=1: 00                  NOP
0x170f DD=1: b6 15 03            RB P5.3
0x1712 DD=1: 01                  RT
label_1713:
0x1713 DD=0: 13 05               MOVB R3, #0x05
0x1715 DD=0: 14 05               MOVB R4, #0x05
0x1717 DD=1: d9                  SDD
loop_1718:
0x1718 DD=1: 8f                  SLL A
0x1719 DD=1: 65 ac               ROL ER1, 1
0x171b DD=1: 05 7b               DJNZ R4, loop_1718
0x171d DD=1: 14 1b               MOVB R4, #0x1b
0x171f DD=1: b6 15 0b            SB P5.3
loop_1722:
0x1722 DD=1: 8f                  SLL A
0x1723 DD=1: 65 ac               ROL ER1, 1
0x1725 DD=1: b6 15 19            MB P5.1, C
0x1728 DD=1: 00                  NOP
0x1729 DD=1: 00                  NOP
0x172a DD=1: 00                  NOP
0x172b DD=1: b6 15 0a            SB P5.2
0x172e DD=1: 00                  NOP
0x172f DD=1: 00                  NOP
0x1730 DD=1: 00                  NOP
0x1731 DD=1: 00                  NOP
0x1732 DD=1: 00                  NOP
0x1733 DD=1: 00                  NOP
0x1734 DD=1: b6 15 02            RB P5.2
0x1737 DD=1: 05 69               DJNZ R4, loop_1722
0x1739 DD=1: b6 15 03            RB P5.3
0x173c DD=1: b6 15 01            RB P5.1
0x173f DD=1: 00                  NOP
0x1740 DD=1: 00                  NOP
0x1741 DD=1: 01                  RT
label_1742:
0x1742 DD=0: 15 03               MOVB R5, #0x03
loop_1744:
0x1744 DD=0: 7a                  LB A, R2
0x1745 DD=0: 56 c6               ACAL label_16c6
0x1747 DD=0: 3b                  STB A, R3
0x1748 DD=0: 7a                  LB A, R2
0x1749 DD=0: be 1f               ANDB A, #0x1f
0x174b DD=0: 56 c6               ACAL label_16c6
0x174d DD=0: 1b                  CMPB A, R3
0x174e DD=0: f1 03               JEQ label_1753
0x1750 DD=0: 05 f2               DJNZ R5, loop_1744
0x1752 DD=0: cb                  SC
label_1753:
0x1753 DD=0: 01                  RT
label_1754:
0x1754 DD=1: 8a 03               RB PSWL.3
0x1756 DD=1: 04 02               SJ label_175a
label_1758:
0x1758 DD=0: 8a 0b               SB PSWL.3
label_175a:
0x175a DD=0: 15 03               MOVB R5, #0x03
loop_175c:
0x175c DD=0: 7a                  LB A, R2
0x175d DD=0: 56 c6               ACAL label_16c6
0x175f DD=0: 3b                  STB A, R3
0x1760 DD=0: 7a                  LB A, R2
0x1761 DD=0: cc                  INCB A
0x1762 DD=0: 56 c6               ACAL label_16c6
0x1764 DD=0: 1b                  CMPB A, R3
0x1765 DD=0: f1 18               JEQ label_177f
0x1767 DD=0: 38                  STB A, R0
0x1768 DD=0: 7a                  LB A, R2
0x1769 DD=0: ae 02               ADDB A, #0x02
0x176b DD=0: 56 c6               ACAL label_16c6
0x176d DD=0: 18                  CMPB A, R0
0x176e DD=0: f1 0f               JEQ label_177f
0x1770 DD=0: 1b                  CMPB A, R3
0x1771 DD=0: f1 0c               JEQ label_177f
0x1773 DD=0: 05 e7               DJNZ R5, loop_175c
0x1775 DD=0: 8a 03               RB PSWL.3
0x1777 DD=0: f1 05               JEQ label_177e
0x1779 DD=0: 6a b3 1f            ANDB R2, #0x1f
0x177c DD=0: 04 dc               SJ label_175a
label_177e:
0x177e DD=0: cb                  SC
label_177f:
0x177f DD=0: 01                  RT
label_1780:
0x1780 DD=0: b7 b6 08 00         RB 0x08b6.0
0x1784 DD=0: 97 67 08            LB A, 0x0867
0x1787 DD=0: 6f c7               CLRB R7
0x1789 DD=0: 21 2f 91            MOV X2, #0x912f
0x178c DD=0: f1 38               JEQ label_17c6
0x178e DD=0: 21 44 91            MOV X2, #0x9144
0x1791 DD=0: 9e 10               CMPB A, #0x10
0x1793 DD=0: f1 31               JEQ label_17c6
0x1795 DD=0: 21 67 91            MOV X2, #0x9167
0x1798 DD=0: 9e 11               CMPB A, #0x11
0x179a DD=0: f1 2a               JEQ label_17c6
0x179c DD=0: 21 90 91            MOV X2, #0x9190
0x179f DD=0: 9e 12               CMPB A, #0x12
0x17a1 DD=0: f1 23               JEQ label_17c6
0x17a3 DD=0: 21 36 92            MOV X2, #0x9236
0x17a6 DD=0: 9e d0               CMPB A, #0xd0
0x17a8 DD=0: f1 1c               JEQ label_17c6
0x17aa DD=0: 21 41 92            MOV X2, #0x9241
0x17ad DD=0: 9e d1               CMPB A, #0xd1
0x17af DD=0: f1 15               JEQ label_17c6
0x17b1 DD=0: 21 bd 91            MOV X2, #0x91bd
0x17b4 DD=0: 9e 60               CMPB A, #0x60
0x17b6 DD=0: f1 0e               JEQ label_17c6
0x17b8 DD=0: 21 e0 91            MOV X2, #0x91e0
0x17bb DD=0: 9e 61               CMPB A, #0x61
0x17bd DD=0: f1 07               JEQ label_17c6
0x17bf DD=0: 21 09 92            MOV X2, #0x9209
0x17c2 DD=0: 9e 62               CMPB A, #0x62
0x17c4 DD=0: f6 04               JNE label_17ca
label_17c6:
0x17c6 DD=0: b7 b6 08 08         SB 0x08b6.0
label_17ca:
0x17ca DD=0: 01                  RT
label_17cb:
0x17cb DD=1: 86 d4               L A, TM0
0x17cd DD=1: 38                  ST A, ER0
0x17ce DD=1: a3 c8               XCHG A, [DP+]
0x17d0 DD=1: 58 dc 07            JBR sbafix 02dc.0, label_17da
0x17d3 DD=1: fa                  CLR A
0x17d4 DD=1: 33                  ST A, [DP+]
0x17d5 DD=1: 33                  ST A, [DP+]
0x17d6 DD=1: dc                  DEC A
0x17d7 DD=1: 32                  ST A, [DP]
0x17d8 DD=1: 04 10               SJ label_17ea
label_17da:
0x17da DD=1: 64 84               SUB ER0, A
0x17dc DD=1: 74                  L A, ER0
0x17dd DD=1: 33                  ST A, [DP+]
0x17de DD=1: a2 95               CMP A, [DP]
0x17e0 DD=1: f2 01               JLT label_17e3
0x17e2 DD=1: 32                  ST A, [DP]
label_17e3:
0x17e3 DD=1: 42                  INC DP
0x17e4 DD=1: 42                  INC DP
0x17e5 DD=1: a2 95               CMP A, [DP]
0x17e7 DD=1: f5 01               JGE label_17ea
0x17e9 DD=1: 32                  ST A, [DP]
label_17ea:
0x17ea DD=1: 01                  RT
int0_vector:
0x17eb DD=0: 5d 95 05            JBS sbafix 02d5.5, label_17f3
0x17ee DD=0: 5f ef 02            JBR sbafix 02ef.7, label_17f3
0x17f1 DD=0: 59 12               SB sbafix 02d2.1
label_17f3:
0x17f3 DD=0: b7 ca 8f 86 8e      MOVB 0x028e, 0x8fca
0x17f8 DD=0: 5f 2f               SB sbafix 02ef.7
0x17fa DD=0: 02                  RTI
cap0_vector:
0x17fb DD=0: c6 02 e4 04         MOV LRB, #0x04e4
0x17ff DD=0: 8a ab 04            MOVB PSWL, #0x04
0x1802 DD=1: 86 8a               L A, TMR0
0x1804 DD=1: 35 0a               ST A, off(0x0a)
0x1806 DD=1: 3d                  ST A, X2
0x1807 DD=1: 4c 41               RB sbaoff c1.4
0x1809 DD=1: f1 09               JEQ label_1814
0x180b DD=1: 71                  L A, X2
0x180c DD=1: dc                  DEC A
0x180d DD=1: 36 9a               ST A, TMR8
0x180f DD=1: d6 ca f8            MOVB RTOCON8, #0xf8
0x1812 DD=1: 04 1a               SJ label_182e
label_1814:
0x1814 DD=1: 4e 41               RB sbaoff c1.6
0x1816 DD=1: f1 16               JEQ label_182e
0x1818 DD=1: 85 32               L A, off(0x32)
0x181a DD=1: 2d                  ADD A, X2
0x181b DD=1: 36 9a               ST A, TMR8
0x181d DD=1: b6 ca b3 f9         ANDB RTOCON8, #0xf9
0x1821 DD=1: 4f 41               RB sbaoff c1.7
0x1823 DD=1: f1 09               JEQ label_182e
0x1825 DD=1: 85 3a               L A, off(0x3a)
0x1827 DD=1: 2d                  ADD A, X2
0x1828 DD=1: 36 b6               ST A, TMR8BF
0x182a DD=1: b6 ca c3 04         OR RTOCON8, #0x04
label_182e:
0x182e DD=1: 4c 42               RB sbaoff c2.4
0x1830 DD=1: f1 09               JEQ label_183b
0x1832 DD=1: 71                  L A, X2
0x1833 DD=1: dc                  DEC A
0x1834 DD=1: 36 9c               ST A, TMR9
0x1836 DD=1: d6 cb f8            MOVB RTOCON9, #0xf8
0x1839 DD=1: 04 1a               SJ label_1855
label_183b:
0x183b DD=1: 4e 42               RB sbaoff c2.6
0x183d DD=1: f1 16               JEQ label_1855
0x183f DD=1: 85 34               L A, off(0x34)
0x1841 DD=1: 2d                  ADD A, X2
0x1842 DD=1: 36 9c               ST A, TMR9
0x1844 DD=1: b6 cb b3 f9         ANDB RTOCON9, #0xf9
0x1848 DD=1: 4f 42               RB sbaoff c2.7
0x184a DD=1: f1 09               JEQ label_1855
0x184c DD=1: 85 3c               L A, off(0x3c)
0x184e DD=1: 2d                  ADD A, X2
0x184f DD=1: 36 b8               ST A, TMR9BF
0x1851 DD=1: b6 cb c3 04         OR RTOCON9, #0x04
label_1855:
0x1855 DD=1: 4c 43               RB sbaoff c3.4
0x1857 DD=1: f1 09               JEQ label_1862
0x1859 DD=1: 71                  L A, X2
0x185a DD=1: dc                  DEC A
0x185b DD=1: 36 9e               ST A, TMR10
0x185d DD=1: d6 cc f8            MOVB RTOCON10, #0xf8
0x1860 DD=1: 04 1a               SJ label_187c
label_1862:
0x1862 DD=1: 4e 43               RB sbaoff c3.6
0x1864 DD=1: f1 16               JEQ label_187c
0x1866 DD=1: 85 36               L A, off(0x36)
0x1868 DD=1: 2d                  ADD A, X2
0x1869 DD=1: 36 9e               ST A, TMR10
0x186b DD=1: b6 cc b3 f9         ANDB RTOCON10, #0xf9
0x186f DD=1: 4f 43               RB sbaoff c3.7
0x1871 DD=1: f1 09               JEQ label_187c
0x1873 DD=1: 85 3e               L A, off(0x3e)
0x1875 DD=1: 2d                  ADD A, X2
0x1876 DD=1: 36 ba               ST A, TMR10BF
0x1878 DD=1: b6 cc c3 04         OR RTOCON10, #0x04
label_187c:
0x187c DD=1: 4c 44               RB sbaoff c4.4
0x187e DD=1: f1 09               JEQ label_1889
0x1880 DD=1: 71                  L A, X2
0x1881 DD=1: dc                  DEC A
0x1882 DD=1: 36 a0               ST A, TMR11
0x1884 DD=1: d6 cd f8            MOVB RTOCON11, #0xf8
0x1887 DD=1: 04 1a               SJ label_18a3
label_1889:
0x1889 DD=1: 4e 44               RB sbaoff c4.6
0x188b DD=1: f1 16               JEQ label_18a3
0x188d DD=1: 85 38               L A, off(0x38)
0x188f DD=1: 2d                  ADD A, X2
0x1890 DD=1: 36 a0               ST A, TMR11
0x1892 DD=1: b6 cd b3 f9         ANDB RTOCON11, #0xf9
0x1896 DD=1: 4f 44               RB sbaoff c4.7
0x1898 DD=1: f1 09               JEQ label_18a3
0x189a DD=1: 85 40               L A, off(0x40)
0x189c DD=1: 2d                  ADD A, X2
0x189d DD=1: 36 bc               ST A, TMR11BF
0x189f DD=1: b6 cd c3 04         OR RTOCON11, #0x04
label_18a3:
0x18a3 DD=1: 4d 41               RB sbaoff c1.5
0x18a5 DD=1: f1 09               JEQ label_18b0
0x18a7 DD=1: 71                  L A, X2
0x18a8 DD=1: dc                  DEC A
0x18a9 DD=1: 36 9a               ST A, TMR8
0x18ab DD=1: d6 ca ff            MOVB RTOCON8, #0xff
0x18ae DD=1: 04 0c               SJ label_18bc
label_18b0:
0x18b0 DD=1: 4f 41               RB sbaoff c1.7
0x18b2 DD=1: f1 08               JEQ label_18bc
0x18b4 DD=1: 85 3a               L A, off(0x3a)
0x18b6 DD=1: 2d                  ADD A, X2
0x18b7 DD=1: 36 9a               ST A, TMR8
0x18b9 DD=1: d6 ca fe            MOVB RTOCON8, #0xfe
label_18bc:
0x18bc DD=1: 4d 42               RB sbaoff c2.5
0x18be DD=1: f1 09               JEQ label_18c9
0x18c0 DD=1: 71                  L A, X2
0x18c1 DD=1: dc                  DEC A
0x18c2 DD=1: 36 9c               ST A, TMR9
0x18c4 DD=1: d6 cb ff            MOVB RTOCON9, #0xff
0x18c7 DD=1: 04 0c               SJ label_18d5
label_18c9:
0x18c9 DD=1: 4f 42               RB sbaoff c2.7
0x18cb DD=1: f1 08               JEQ label_18d5
0x18cd DD=1: 85 3c               L A, off(0x3c)
0x18cf DD=1: 2d                  ADD A, X2
0x18d0 DD=1: 36 9c               ST A, TMR9
0x18d2 DD=1: d6 cb fe            MOVB RTOCON9, #0xfe
label_18d5:
0x18d5 DD=1: 4d 43               RB sbaoff c3.5
0x18d7 DD=1: f1 09               JEQ label_18e2
0x18d9 DD=1: 71                  L A, X2
0x18da DD=1: dc                  DEC A
0x18db DD=1: 36 9e               ST A, TMR10
0x18dd DD=1: d6 cc ff            MOVB RTOCON10, #0xff
0x18e0 DD=1: 04 0c               SJ label_18ee
label_18e2:
0x18e2 DD=1: 4f 43               RB sbaoff c3.7
0x18e4 DD=1: f1 08               JEQ label_18ee
0x18e6 DD=1: 85 3e               L A, off(0x3e)
0x18e8 DD=1: 2d                  ADD A, X2
0x18e9 DD=1: 36 9e               ST A, TMR10
0x18eb DD=1: d6 cc fe            MOVB RTOCON10, #0xfe
label_18ee:
0x18ee DD=1: 4d 44               RB sbaoff c4.5
0x18f0 DD=1: f1 09               JEQ label_18fb
0x18f2 DD=1: 71                  L A, X2
0x18f3 DD=1: dc                  DEC A
0x18f4 DD=1: 36 a0               ST A, TMR11
0x18f6 DD=1: d6 cd ff            MOVB RTOCON11, #0xff
0x18f9 DD=1: 04 0c               SJ label_1907
label_18fb:
0x18fb DD=1: 4f 44               RB sbaoff c4.7
0x18fd DD=1: f1 08               JEQ label_1907
0x18ff DD=1: 85 40               L A, off(0x40)
0x1901 DD=1: 2d                  ADD A, X2
0x1902 DD=1: 36 a0               ST A, TMR11
0x1904 DD=1: d6 cd fe            MOVB RTOCON11, #0xfe
label_1907:
0x1907 DD=1: 4c 40               RB sbaoff c0.4
0x1909 DD=1: f1 0d               JEQ label_1918
0x190b DD=1: 85 5a               L A, off(0x5a)
0x190d DD=1: 2d                  ADD A, X2
0x190e DD=1: 36 a2               ST A, TMR12
0x1910 DD=1: 85 5c               L A, off(0x5c)
0x1912 DD=1: 2d                  ADD A, X2
0x1913 DD=1: 36 be               ST A, TMR12BF
0x1915 DD=1: d6 ce fd            MOVB RTOCON12, #0xfd
label_1918:
0x1918 DD=1: b7 cb 8f 86 8f      MOVB 0x028f, 0x8fcb
0x191d DD=0: 94 2c               LB A, 0x022c
0x191f DD=0: b4 ef 17            MB C, 0x02ef.7
0x1922 DD=0: 5f 6f               RB sbafix 02ef.7
0x1924 DD=0: b5 00 ac            ROLB off(0x00), 1
0x1927 DD=0: b5 00 b3 07         ANDB off(0x00), #0x07
0x192b DD=0: d5 00 05            CMPB off(0x00), #0x05
0x192e DD=0: f6 19               JNE label_1949
0x1930 DD=0: b5 c0 30 0b         JBRS off(0xc0).0, label_193f
0x1934 DD=0: 9e 17               CMPB A, #0x17
0x1936 DD=0: f6 07               JNE label_193f
0x1938 DD=0: 49 c0 04            JBR sbaoff c0.1, label_193f
0x193b DD=0: 58 28               SB sbafix 02e8.0
0x193d DD=0: 04 02               SJ label_1941
label_193f:
0x193f DD=0: 58 68               RB sbafix 02e8.0
label_1941:
0x1941 DD=0: f9 00               LB A, #0x00
0x1943 DD=0: 4a 00               SB sbaoff c0.2
0x1945 DD=0: 49 40               RB sbaoff c0.1
0x1947 DD=0: 04 2f               SJ label_1978
label_1949:
0x1949 DD=0: d5 00 01            CMPB off(0x00), #0x01
0x194c DD=0: f6 1d               JNE label_196b
0x194e DD=0: b5 c0 30 0f         JBRS off(0xc0).0, label_1961
0x1952 DD=0: 9e 15               CMPB A, #0x15
0x1954 DD=0: f1 15               JEQ label_196b
0x1956 DD=0: 9e 0b               CMPB A, #0x0b
0x1958 DD=0: f6 07               JNE label_1961
0x195a DD=0: 4a c0 04            JBR sbaoff c0.2, label_1961
0x195d DD=0: 58 28               SB sbafix 02e8.0
0x195f DD=0: 04 02               SJ label_1963
label_1961:
0x1961 DD=0: 58 68               RB sbafix 02e8.0
label_1963:
0x1963 DD=0: f9 0c               LB A, #0x0c
0x1965 DD=0: 49 00               SB sbaoff c0.1
0x1967 DD=0: 4a 40               RB sbaoff c0.2
0x1969 DD=0: 04 0d               SJ label_1978
label_196b:
0x196b DD=0: cc                  INCB A
0x196c DD=0: 9e 18               CMPB A, #0x18
0x196e DD=0: f2 08               JLT label_1978
0x1970 DD=0: 58 68               RB sbafix 02e8.0
0x1972 DD=0: fb                  CLRB A
0x1973 DD=0: 5c 95 02            JBS sbafix 02d5.4, label_1978
0x1976 DD=0: 58 12               SB sbafix 02d2.0
label_1978:
0x1978 DD=0: 34 2c               STB A, 0x022c
0x197a DD=0: 94 2c               LB A, 0x022c
0x197c DD=1: fc                  EXTND
0x197d DD=1: bc 8d               SLL A, 2
0x197f DD=1: 3c                  ST A, X1
0x1980 DD=1: a8 fa 8e 87 02      MOV off(0x02), 0x8efa[X1]
0x1985 DD=1: a8 fc 8e 87 04      MOV off(0x04), 0x8efc[X1]
0x198a DD=1: a8 5a 8f 87 06      MOV off(0x06), 0x8f5a[X1]
0x198f DD=1: a8 5c 8f 87 08      MOV off(0x08), 0x8f5c[X1]
0x1994 DD=1: 86 e0               L A, ADCR0
0x1996 DD=1: bc 9f               SRL A, 4
0x1998 DD=1: bc 9d               SRL A, 2
0x199a DD=1: ca                  RC
0x199b DD=1: 5c 94 0e            JBS sbafix 02d4.4, label_19ac
0x199e DD=1: 9e 20 00            CMP A, #0x0020
0x19a1 DD=1: f2 07               JLT label_19aa
0x19a3 DD=1: 24 f0 03            MOV ER0, #0x03f0
0x19a6 DD=1: 64 94               CMP ER0, A
0x19a8 DD=1: f5 02               JGE label_19ac
label_19aa:
0x19aa DD=1: 84 3a               L A, 0x023a
label_19ac:
0x19ac DD=1: b4 d0 1c            MB 0x02d0.4, C
0x19af DD=1: 34 3a               ST A, 0x023a
0x19b1 DD=1: b5 18 70            MOVB R0, off(0x18)
0x19b4 DD=1: d5 18 30            CMPB off(0x18), #0x30
0x19b7 DD=1: f2 07               JLT label_19c0
0x19b9 DD=1: b5 18 c7            CLRB off(0x18)
0x19bc DD=1: 68 c7               CLRB R0
0x19be DD=1: 4f 00               SB sbaoff c0.7
label_19c0:
0x19c0 DD=1: 68 8c               SLLB R0, 1
0x19c2 DD=1: 20 30 0b            MOV X1, #0x0b30
0x19c5 DD=1: ab c8               XCHG A, [X1+R0]
0x19c7 DD=1: 5c 90 24            JBS sbafix 02d0.4, label_19ee
0x19ca DD=1: 5c d4 07            JBR sbafix 02d4.4, label_19d4
0x19cd DD=1: a4 3c ab 00 00      MOV 0x023c, #0x0000
0x19d2 DD=1: 04 1a               SJ label_19ee
label_19d4:
0x19d4 DD=1: 39                  ST A, ER1
0x19d5 DD=1: 84 3a               L A, 0x023a
0x19d7 DD=1: 38                  ST A, ER0
0x19d8 DD=1: 69 a7 02            TJZB R1, label_19dd
0x19db DD=1: 68 d7               FILLB R0
label_19dd:
0x19dd DD=1: 68 86 3e            MOVB 0x023e, R0
0x19e0 DD=1: 64 c7               CLR ER0
0x19e2 DD=1: b4 42 70            MOVB R0, 0x0242
0x19e5 DD=1: 08                  SUB A, ER0
0x19e6 DD=1: f5 01               JGE label_19e9
0x19e8 DD=1: fa                  CLR A
label_19e9:
0x19e9 DD=1: 34 3c               ST A, 0x023c
0x19eb DD=1: 4f 80 0e            JBS sbaoff c0.7, label_19fc
label_19ee:
0x19ee DD=1: fa                  CLR A
0x19ef DD=1: 35 16               ST A, off(0x16)
0x19f1 DD=1: 5d 69               RB sbafix 02e9.5
0x19f3 DD=1: 4e 40               RB sbaoff c0.6
0x19f5 DD=1: 5b 69               RB sbafix 02e9.3
0x19f7 DD=1: 34 44               ST A, 0x0244
0x19f9 DD=1: 03 b8 1a            J label_1ab8
label_19fc:
0x19fc DD=1: 27 55 15            MOV ER3, #0x1555
0x19ff DD=1: 26 06 02            MOV ER2, #0x0206
0x1a02 DD=1: 84 34               L A, 0x0234
0x1a04 DD=1: 1b                  CMP A, ER3
0x1a05 DD=1: f2 17               JLT label_1a1e
0x1a07 DD=1: 67 8c               SLL ER3, 1
0x1a09 DD=1: 26 0c 04            MOV ER2, #0x040c
0x1a0c DD=1: 1b                  CMP A, ER3
0x1a0d DD=1: f2 0f               JLT label_1a1e
0x1a0f DD=1: 67 8c               SLL ER3, 1
0x1a11 DD=1: 26 18 08            MOV ER2, #0x0818
0x1a14 DD=1: 1b                  CMP A, ER3
0x1a15 DD=1: f2 07               JLT label_1a1e
0x1a17 DD=1: 67 8c               SLL ER3, 1
0x1a19 DD=1: 15 10               MOVB R5, #0x10
0x1a1b DD=1: 75                  L A, ER1
0x1a1c DD=1: 04 0b               SJ label_1a29
label_1a1e:
0x1a1e DD=0: 95 18               LB A, off(0x18)
0x1a20 DD=0: 0c                  SUBB A, R4
0x1a21 DD=0: f5 02               JGE label_1a25
0x1a23 DD=0: ae 30               ADDB A, #0x30
label_1a25:
0x1a25 DD=0: 8f                  SLLB A
0x1a26 DD=0: aa 97               MOV A, [X1+A]
0x1a28 DD=1: d9                  SDD
label_1a29:
0x1a29 DD=1: 8c 3a               SUB A, 0x023a
0x1a2b DD=1: 9a 56               BOR C, PSWH.6
0x1a2d DD=1: 8a 1b               MB PSWL.3, C
0x1a2f DD=1: f5 01               JGE label_1a32
0x1a31 DD=1: cf                  NEG A
label_1a32:
0x1a32 DD=1: a4 34 a9            MUL 0x0234
0x1a35 DD=1: 67 fb               DIVQ ER3
0x1a37 DD=1: 9a 29 05            JBS PSWH.1, label_1a3f
0x1a3a DD=1: 9e ff 03            CMP A, #0x03ff
0x1a3d DD=1: f2 03               JLT label_1a42
label_1a3f:
0x1a3f DD=1: f8 ff 03            L A, #0x03ff
label_1a42:
0x1a42 DD=1: 66 c8               XCHG A, ER2
0x1a44 DD=0: 95 18               LB A, off(0x18)
0x1a46 DD=0: b6 07 85            SUBB A, ACCH
0x1a49 DD=0: f5 02               JGE label_1a4d
0x1a4b DD=0: ae 30               ADDB A, #0x30
label_1a4d:
0x1a4d DD=0: 8f                  SLLB A
0x1a4e DD=0: aa 97               MOV A, [X1+A]
0x1a50 DD=1: d9                  SDD
0x1a51 DD=1: 8c 3a               SUB A, 0x023a
0x1a53 DD=1: 9a 56               BOR C, PSWH.6
0x1a55 DD=1: f5 01               JGE label_1a58
0x1a57 DD=1: cf                  NEG A
label_1a58:
0x1a58 DD=1: 8a 43               BAND C, PSWL.3
0x1a5a DD=1: 8a 1e               MB PSWL.6, C
0x1a5c DD=1: a7 86 80 70         MOV ER0, 0x8086
0x1a60 DD=1: 18                  CMP A, ER0
0x1a61 DD=1: f5 05               JGE label_1a68
0x1a63 DD=1: 8a 06               RB PSWL.6
0x1a65 DD=1: fa                  CLR A
0x1a66 DD=1: 04 16               SJ label_1a7e
label_1a68:
0x1a68 DD=1: 24 03 00            MOV ER0, #0x0003
0x1a6b DD=1: 64 a9               MUL ER0
0x1a6d DD=1: 74                  L A, ER0
0x1a6e DD=1: a4 34 a9            MUL 0x0234
0x1a71 DD=1: 67 fb               DIVQ ER3
0x1a73 DD=1: 9a 29 05            JBS PSWH.1, label_1a7b
0x1a76 DD=1: 9e ff 03            CMP A, #0x03ff
0x1a79 DD=1: f2 03               JLT label_1a7e
label_1a7b:
0x1a7b DD=1: f8 ff 03            L A, #0x03ff
label_1a7e:
0x1a7e DD=1: 3b                  ST A, ER3
0x1a7f DD=1: 66 91 16            CMP ER2, off(0x16)
0x1a82 DD=1: 66 87 16            MOV off(0x16), ER2
0x1a85 DD=1: f5 0f               JGE label_1a96
0x1a87 DD=0: 95 18               LB A, off(0x18)
0x1a89 DD=0: 8e 05               SUBB A, #0x05
0x1a8b DD=0: f5 02               JGE label_1a8f
0x1a8d DD=0: ae 30               ADDB A, #0x30
label_1a8f:
0x1a8f DD=0: 8f                  SLLB A
0x1a90 DD=0: aa 97               MOV A, [X1+A]
0x1a92 DD=1: d9                  SDD
0x1a93 DD=1: 9c 3a               CMP A, 0x023a
0x1a95 DD=1: fd                  CPL C
label_1a96:
0x1a96 DD=1: b4 e9 1d            MB 0x02e9.5, C
0x1a99 DD=1: 76                  L A, ER2
0x1a9a DD=1: ca                  RC
0x1a9b DD=1: 8a 26 04            JBR PSWL.6, label_1aa2
0x1a9e DD=1: 1b                  CMP A, ER3
0x1a9f DD=1: f5 01               JGE label_1aa2
0x1aa1 DD=1: 77                  L A, ER3
label_1aa2:
0x1aa2 DD=1: b5 c0 1e            MB off(0xc0).6, C
0x1aa5 DD=1: 8a 23 09            JBR PSWL.3, label_1ab1
0x1aa8 DD=1: 5b e9 06            JBR sbafix 02e9.3, label_1ab1
0x1aab DD=1: 9c 44               CMP A, 0x0244
0x1aad DD=1: f5 02               JGE label_1ab1
0x1aaf DD=1: 84 44               L A, 0x0244
label_1ab1:
0x1ab1 DD=1: 8a 13               MB C, PSWL.3
0x1ab3 DD=1: b4 e9 1b            MB 0x02e9.3, C
0x1ab6 DD=1: 34 44               ST A, 0x0244
label_1ab8:
0x1ab8 DD=1: b5 18 c6            INCB off(0x18)
0x1abb DD=1: 5c 94 23            JBS sbafix 02d4.4, label_1ae1
0x1abe DD=1: 5c 90 28            JBS sbafix 02d0.4, label_1ae9
0x1ac1 DD=1: 22 7e 80            MOV DP, #0x807e
0x1ac4 DD=1: 5a f1 03            JBR sbafix 02f1.2, label_1aca
0x1ac7 DD=1: 22 0e 84            MOV DP, #0x840e
label_1aca:
0x1aca DD=1: 83                  L A, [DP+]
0x1acb DD=1: 58 a9 0f            JBS sbafix 02e9.0, label_1add
0x1ace DD=1: a2 a5               ADD A, [DP]
0x1ad0 DD=1: f2 17               JLT label_1ae9
0x1ad2 DD=1: a4 3c 94            CMP 0x023c, A
0x1ad5 DD=1: f2 12               JLT label_1ae9
0x1ad7 DD=1: 58 29               SB sbafix 02e9.0
0x1ad9 DD=1: 5a 29               SB sbafix 02e9.2
0x1adb DD=1: 04 0c               SJ label_1ae9
label_1add:
0x1add DD=1: 9c 3c               CMP A, 0x023c
0x1adf DD=1: f2 08               JLT label_1ae9
label_1ae1:
0x1ae1 DD=1: 58 69               RB sbafix 02e9.0
0x1ae3 DD=1: 5a 69               RB sbafix 02e9.2
0x1ae5 DD=1: b7 d3 03 00         RB 0x03d3.0
label_1ae9:
0x1ae9 DD=1: ca                  RC
0x1aea DD=1: 5b ef 0e            JBR sbafix 02ef.3, label_1afb
0x1aed DD=1: f8 9a 01            L A, #0x019a
0x1af0 DD=1: 49 86 03            JBS sbaoff c6.1, label_1af6
0x1af3 DD=1: f8 cd 01            L A, #0x01cd
label_1af6:
0x1af6 DD=1: 9c 3c               CMP A, 0x023c
0x1af8 DD=1: b5 c6 19            MB off(0xc6).1, C
label_1afb:
0x1afb DD=1: b5 c7 18            MB off(0xc7).0, C
0x1afe DD=1: 85 0a               L A, off(0x0a)
0x1b00 DD=1: b6 07 2f 09         JBS ACCH.7, label_1b0d
0x1b04 DD=1: b6 40 22 05         JBR IRQ0L.2, label_1b0d
0x1b08 DD=1: 5a 2f               SB sbafix 02ef.2
0x1b0a DD=1: b4 2d c6            INCB 0x022d
label_1b0d:
0x1b0d DD=1: b5 c0 35 46         JBRS off(0xc0).5, label_1b57
0x1b11 DD=1: 8d 0c               SUB A, off(0x0c)
0x1b13 DD=1: b4 2d e3 00         SBCB 0x022d, #0x00
0x1b17 DD=1: f1 04               JEQ label_1b1d
0x1b19 DD=1: 59 2f               SB sbafix 02ef.1
0x1b1b DD=1: bc d7               FILL A
label_1b1d:
0x1b1d DD=1: 35 0e               ST A, off(0x0e)
0x1b1f DD=1: 58 e8 1a            JBR sbafix 02e8.0, label_1b3c
0x1b22 DD=1: 20 00 0b            MOV X1, #0x0b00
0x1b25 DD=1: b4 2c 70            MOVB R0, 0x022c
0x1b28 DD=1: 68 8c               SLLB R0, 1
0x1b2a DD=1: ab c8               XCHG A, [X1+R0]
0x1b2c DD=1: a4 2e 84            SUB 0x022e, A
0x1b2f DD=1: b4 32 e3 00         SBCB 0x0232, #0x00
0x1b33 DD=1: 85 0e               L A, off(0x0e)
0x1b35 DD=1: a4 2e a4            ADD 0x022e, A
0x1b38 DD=1: b4 32 f3 00         ADCB 0x0232, #0x00
label_1b3c:
0x1b3c DD=1: 58 ef 0b            JBR sbafix 02ef.0, label_1b4a
0x1b3f DD=1: 9e 50 c3            CMP A, #0xc350
0x1b42 DD=1: f0 13               JGT label_1b57
0x1b44 DD=1: 59 28               SB sbafix 02e8.1
0x1b46 DD=1: 58 6f               RB sbafix 02ef.0
0x1b48 DD=1: 04 0d               SJ label_1b57
label_1b4a:
0x1b4a DD=1: b5 10 c6            INCB off(0x10)
0x1b4d DD=1: d5 10 18            CMPB off(0x10), #0x18
0x1b50 DD=1: f2 05               JLT label_1b57
0x1b52 DD=1: d7 10 17            MOVB off(0x10), #0x17
0x1b55 DD=1: 5d 28               SB sbafix 02e8.5
label_1b57:
0x1b57 DD=1: b4 2d ab 00         MOVB 0x022d, #0x00
0x1b5b DD=1: a5 0a 87 0c         MOV off(0x0c), off(0x0a)
0x1b5f DD=1: 58 e3 28            JBR sbafix 02e3.0, label_1b8a
0x1b62 DD=1: 58 e8 25            JBR sbafix 02e8.0, label_1b8a
0x1b65 DD=0: 94 2c               LB A, 0x022c
0x1b67 DD=0: b7 00 8e ca         TBR 0x8e00.(AL)
0x1b6b DD=0: f1 06               JEQ label_1b73
0x1b6d DD=0: a6 f1 87 58         MOV off(0x58), ADCR13
0x1b71 DD=0: 04 06               SJ label_1b79
label_1b73:
0x1b73 DD=0: b7 03 8e ca         TBR 0x8e03.(AL)
0x1b77 DD=0: f6 05               JNE label_1b7e
label_1b79:
0x1b79 DD=0: b6 11 04            RB P1.4
0x1b7c DD=0: 04 0c               SJ label_1b8a
label_1b7e:
0x1b7e DD=0: d6 ce ff            MOVB RTOCON12, #0xff
0x1b81 DD=1: 86 f0               L A, ADCR12
0x1b83 DD=1: b6 07 87 54         MOVB off(0x54), ACCH
0x1b87 DD=1: b6 11 0c            SB P1.4
label_1b8a:
0x1b8a DD=1: a6 e1 70            MOV ER0, ADCR1
0x1b8d DD=0: 94 2c               LB A, 0x022c
0x1b8f DD=0: 9e 02               CMPB A, #0x02
0x1b91 DD=0: f1 0c               JEQ label_1b9f
0x1b93 DD=0: 9e 08               CMPB A, #0x08
0x1b95 DD=0: f1 08               JEQ label_1b9f
0x1b97 DD=0: 9e 0e               CMPB A, #0x0e
0x1b99 DD=0: f1 04               JEQ label_1b9f
0x1b9b DD=0: 9e 14               CMPB A, #0x14
0x1b9d DD=0: f6 03               JNE label_1ba2
label_1b9f:
0x1b9f DD=0: 64 87 12            MOV off(0x12), ER0
label_1ba2:
0x1ba2 DD=0: 58 a8 05            JBS sbafix 02e8.0, label_1baa
0x1ba5 DD=0: b5 c5 c7            CLRB off(0xc5)
0x1ba8 DD=0: 04 18               SJ label_1bc2
label_1baa:
0x1baa DD=0: 95 06               LB A, off(0x06)
0x1bac DD=0: f6 02               JNE label_1bb0
0x1bae DD=0: 48 45               RB sbaoff c5.0
label_1bb0:
0x1bb0 DD=0: 95 07               LB A, off(0x07)
0x1bb2 DD=0: f6 02               JNE label_1bb6
0x1bb4 DD=0: 49 45               RB sbaoff c5.1
label_1bb6:
0x1bb6 DD=0: 95 08               LB A, off(0x08)
0x1bb8 DD=0: f6 02               JNE label_1bbc
0x1bba DD=0: 4a 45               RB sbaoff c5.2
label_1bbc:
0x1bbc DD=0: 95 09               LB A, off(0x09)
0x1bbe DD=0: f6 02               JNE label_1bc2
0x1bc0 DD=0: 4b 45               RB sbaoff c5.3
label_1bc2:
0x1bc2 DD=0: 58 9f 0c            JBS sbafix 02df.0, label_1bd1
0x1bc5 DD=0: 48 87 09            JBS sbaoff c7.0, label_1bd1
0x1bc8 DD=0: 58 af 06            JBS sbafix 02ef.0, label_1bd1
0x1bcb DD=0: 5f 9c 03            JBS sbafix 02dc.7, label_1bd1
0x1bce DD=0: 58 a8 22            JBS sbafix 02e8.0, label_1bf3
label_1bd1:
0x1bd1 DD=0: b6 10 0e            SB P0.6
0x1bd4 DD=0: f9 00               LB A, #0x00
0x1bd6 DD=0: f6 15               JNE label_1bed
0x1bd8 DD=1: 86 d6               L A, TM1
0x1bda DD=1: dc                  DEC A
0x1bdb DD=1: 36 9a               ST A, TMR8
0x1bdd DD=1: 36 9c               ST A, TMR9
0x1bdf DD=1: 36 9e               ST A, TMR10
0x1be1 DD=1: 36 a0               ST A, TMR11
0x1be3 DD=0: f9 ff               LB A, #0xff
0x1be5 DD=0: 36 ca               STB A, RTOCON8
0x1be7 DD=0: 36 cb               STB A, RTOCON9
0x1be9 DD=0: 36 cc               STB A, RTOCON10
0x1beb DD=0: 36 cd               STB A, RTOCON11
label_1bed:
0x1bed DD=0: b6 10 02            RB P0.2
0x1bf0 DD=0: 03 73 1f            J label_1f73
label_1bf3:
0x1bf3 DD=0: f9 00               LB A, #0x00
0x1bf5 DD=0: f1 1c               JEQ label_1c13
0x1bf7 DD=0: b6 10 26 18         JBR P0.6, label_1c13
0x1bfb DD=1: 86 d6               L A, TM1
0x1bfd DD=1: dc                  DEC A
0x1bfe DD=1: 36 9a               ST A, TMR8
0x1c00 DD=1: 36 9c               ST A, TMR9
0x1c02 DD=1: 36 9e               ST A, TMR10
0x1c04 DD=1: 36 a0               ST A, TMR11
0x1c06 DD=0: f9 ff               LB A, #0xff
0x1c08 DD=0: 36 ca               STB A, RTOCON8
0x1c0a DD=0: 36 cb               STB A, RTOCON9
0x1c0c DD=0: 36 cc               STB A, RTOCON10
0x1c0e DD=0: 36 cd               STB A, RTOCON11
0x1c10 DD=0: b6 10 06            RB P0.6
label_1c13:
0x1c13 DD=0: 60 c7               CLR X1
0x1c15 DD=0: 61 c7               CLR X2
label_1c17:
0x1c17 DD=0: 98 02 04            LB A, 0x0402[X1]
0x1c1a DD=0: 9e ff               CMPB A, #0xff
0x1c1c DD=0: f6 58               JNE label_1c76
0x1c1e DD=0: a9 36 05 99 26 04   MOV 0x0426[X2], 0x0536[X2]
0x1c24 DD=0: a9 2e 05 99 1a 04   MOV 0x041a[X2], 0x052e[X2]
0x1c2a DD=0: 98 27 05            LB A, 0x0527[X1]
0x1c2d DD=0: c8 22 04            STB A, 0x0422[X1]
0x1c30 DD=0: 10 03               MOVB R0, #0x03
0x1c32 DD=0: 68 a9               MULB R0
0x1c34 DD=0: a5 0e a9            MUL off(0x0e)
0x1c37 DD=0: df                  SWAP
0x1c38 DD=0: 69 c8               XCHGB A, R1
0x1c3a DD=1: d9                  SDD
0x1c3b DD=1: a9 1a 04 a5         ADD A, 0x041a[X2]
0x1c3f DD=1: 69 f3 00            ADCB R1, #0x00
0x1c42 DD=1: 39                  ST A, ER1
0x1c43 DD=1: 66 c7               CLR ER2
0x1c45 DD=1: 69 74               MOVB R4, R1
0x1c47 DD=1: f8 0c 00            L A, #0x000c
0x1c4a DD=1: a5 0e a9            MUL off(0x0e)
0x1c4d DD=1: 64 c8               XCHG A, ER0
0x1c4f DD=1: 09                  SUB A, ER1
0x1c50 DD=1: 64 c8               XCHG A, ER0
0x1c52 DD=1: 66 e5               SBC A, ER2
0x1c54 DD=1: f5 05               JGE label_1c5b
0x1c56 DD=1: fa                  CLR A
0x1c57 DD=1: 65 c7               CLR ER1
0x1c59 DD=1: 04 03               SJ label_1c5e
label_1c5b:
0x1c5b DD=1: a5 0e fb            DIVQ off(0x0e)
label_1c5e:
0x1c5e DD=0: d8                  RDD
0x1c5f DD=0: c8 2e 04            STB A, 0x042e[X1]
0x1c62 DD=0: 65 99 32 04         MOV 0x0432[X2], ER1
0x1c66 DD=0: 98 e1 05            LB A, 0x05e1[X1]
0x1c69 DD=0: be 03               ANDB A, #0x03
0x1c6b DD=0: b8 c1 04 b3 fc      ANDB 0x04c1[X1], #0xfc
0x1c70 DD=0: b8 c1 04 c4         OR 0x04c1[X1], A
0x1c74 DD=0: 04 10               SJ label_1c86
label_1c76:
0x1c76 DD=0: b8 c1 04 29 0b      JBS 0x04c1[X1].1, label_1c86
0x1c7b DD=0: b8 c1 04 20 06      JBR 0x04c1[X1].0, label_1c86
0x1c80 DD=0: b8 2e 04 95         CMPB A, 0x042e[X1]
0x1c84 DD=0: f2 03               JLT label_1c89
label_1c86:
0x1c86 DD=0: 03 ff 1c            J label_1cff
label_1c89:
0x1c89 DD=0: 98 22 04            LB A, 0x0422[X1]
0x1c8c DD=0: 10 03               MOVB R0, #0x03
0x1c8e DD=0: 68 a9               MULB R0
0x1c90 DD=0: a5 0e a9            MUL off(0x0e)
0x1c93 DD=0: df                  SWAP
0x1c94 DD=0: 69 c8               XCHGB A, R1
0x1c96 DD=1: d9                  SDD
0x1c97 DD=1: a9 1a 04 a5         ADD A, 0x041a[X2]
0x1c9b DD=1: 69 f3 00            ADCB R1, #0x00
0x1c9e DD=1: 39                  ST A, ER1
0x1c9f DD=1: 66 c7               CLR ER2
0x1ca1 DD=1: 69 74               MOVB R4, R1
0x1ca3 DD=1: f8 0c 00            L A, #0x000c
0x1ca6 DD=1: a5 0e a9            MUL off(0x0e)
0x1ca9 DD=1: 64 c8               XCHG A, ER0
0x1cab DD=1: 09                  SUB A, ER1
0x1cac DD=1: 64 c8               XCHG A, ER0
0x1cae DD=1: 66 e5               SBC A, ER2
0x1cb0 DD=1: f5 05               JGE label_1cb7
0x1cb2 DD=1: fa                  CLR A
0x1cb3 DD=1: 65 c7               CLR ER1
0x1cb5 DD=1: 04 03               SJ label_1cba
label_1cb7:
0x1cb7 DD=1: a5 0e fb            DIVQ off(0x0e)
label_1cba:
0x1cba DD=1: b8 2e 04 94         CMPB 0x042e[X1], A
0x1cbe DD=1: 65 c8               XCHG A, ER1
0x1cc0 DD=1: f2 3d               JLT label_1cff
0x1cc2 DD=1: f6 06               JNE label_1cca
0x1cc4 DD=1: a9 32 04 95         CMP A, 0x0432[X2]
0x1cc8 DD=1: f5 35               JGE label_1cff
label_1cca:
0x1cca DD=1: a9 32 04 aa         MOV 0x0432[X2], A
0x1cce DD=0: 7a                  LB A, R2
0x1ccf DD=0: c8 2e 04            STB A, 0x042e[X1]
0x1cd2 DD=0: b8 02 04 94         CMPB 0x0402[X1], A
0x1cd6 DD=0: f2 27               JLT label_1cff
0x1cd8 DD=0: 9a 16               MB C, PSWH.6
0x1cda DD=0: 8a 1b               MB PSWL.3, C
0x1cdc DD=1: 86 d6               L A, TM1
0x1cde DD=1: 8d 0c               SUB A, off(0x0c)
0x1ce0 DD=1: ae 07 00            ADD A, #0x0007
0x1ce3 DD=1: 8a 23 06            JBR PSWL.3, label_1cec
0x1ce6 DD=1: a9 32 04 95         CMP A, 0x0432[X2]
0x1cea DD=1: f2 04               JLT label_1cf0
label_1cec:
0x1cec DD=1: a9 32 04 aa         MOV 0x0432[X2], A
label_1cf0:
0x1cf0 DD=1: a9 32 04 97         MOV A, 0x0432[X2]
0x1cf4 DD=1: ad 0c               ADD A, off(0x0c)
0x1cf6 DD=1: a9 9a 00 aa         MOV 0x009a[X2], A
0x1cfa DD=1: b8 ca 00 b3 f9      ANDB 0x00ca[X1], #0xf9
label_1cff:
0x1cff DD=1: 40                  INC X1
0x1d00 DD=1: 41                  INC X2
0x1d01 DD=1: 41                  INC X2
0x1d02 DD=1: 60 93 04 00         CMP X1, #0x0004
0x1d06 DD=1: f5 03               JGE label_1d0b
0x1d08 DD=1: 03 17 1c            J label_1c17
label_1d0b:
0x1d0b DD=0: 60 c7               CLR X1
0x1d0d DD=0: 61 c7               CLR X2
label_1d0f:
0x1d0f DD=0: b8 c1 04 29 62      JBS 0x04c1[X1].1, label_1d76
0x1d14 DD=0: 98 02 04            LB A, 0x0402[X1]
0x1d17 DD=0: cc                  INCB A
0x1d18 DD=0: b8 c1 04 28 12      JBS 0x04c1[X1].0, label_1d2f
0x1d1d DD=0: 9e 0a               CMPB A, #0x0a
0x1d1f DD=0: f6 04               JNE label_1d25
0x1d21 DD=0: b8 c1 04 0c         SB 0x04c1[X1].4
label_1d25:
0x1d25 DD=0: 9e 0b               CMPB A, #0x0b
0x1d27 DD=0: f6 4d               JNE label_1d76
0x1d29 DD=0: b8 c1 04 0d         SB 0x04c1[X1].5
0x1d2d DD=0: 04 47               SJ label_1d76
label_1d2f:
0x1d2f DD=0: 3c                  STB A, R4
0x1d30 DD=0: b8 2e 04 95         CMPB A, 0x042e[X1]
0x1d34 DD=0: f6 12               JNE label_1d48
0x1d36 DD=0: a9 32 04 93 32 00   CMP 0x0432[X2], #0x0032
0x1d3c DD=0: f5 06               JGE label_1d44
0x1d3e DD=0: a9 32 04 ab 32 00   MOV 0x0432[X2], #0x0032
label_1d44:
0x1d44 DD=0: b8 c1 04 0e         SB 0x04c1[X1].6
label_1d48:
0x1d48 DD=0: 7c                  LB A, R4
0x1d49 DD=0: b9 26 04 95         CMPB A, 0x0426[X2]
0x1d4d DD=0: f6 27               JNE label_1d76
0x1d4f DD=0: b9 27 04 97         MOVB A, 0x0427[X2]
0x1d53 DD=0: 10 03               MOVB R0, #0x03
0x1d55 DD=0: 68 a9               MULB R0
0x1d57 DD=0: a5 0e a9            MUL off(0x0e)
0x1d5a DD=0: df                  SWAP
0x1d5b DD=0: 9e 00               CMPB A, #0x00
0x1d5d DD=1: d9                  SDD
0x1d5e DD=1: f1 04               JEQ label_1d64
0x1d60 DD=1: bc d7               FILL A
0x1d62 DD=1: 04 0a               SJ label_1d6e
label_1d64:
0x1d64 DD=1: 69 97               MOVB A, R1
0x1d66 DD=1: 9e 34 00            CMP A, #0x0034
0x1d69 DD=1: f5 03               JGE label_1d6e
0x1d6b DD=1: f8 34 00            L A, #0x0034
label_1d6e:
0x1d6e DD=1: bc 99 3a 04         ST A, 0x043a[X2]
0x1d72 DD=1: b8 c1 04 0f         SB 0x04c1[X1].7
label_1d76:
0x1d76 DD=1: 41                  INC X2
0x1d77 DD=1: 41                  INC X2
0x1d78 DD=1: 40                  INC X1
0x1d79 DD=1: 60 93 04 00         CMP X1, #0x0004
0x1d7d DD=1: f2 90               JLT label_1d0f
0x1d7f DD=1: 5b e2 1e            JBR sbafix 02e2.3, label_1da0
0x1d82 DD=1: 5d e8 1b            JBR sbafix 02e8.5, label_1da0
0x1d85 DD=1: 58 e9 18            JBR sbafix 02e9.0, label_1da0
0x1d88 DD=1: 5d e2 05            JBR sbafix 02e2.5, label_1d90
0x1d8b DD=1: b7 c2 06 2d 10      JBS 0x06c2.5, label_1da0
label_1d90:
0x1d90 DD=0: 97 d2 03            LB A, 0x03d2
0x1d93 DD=0: be 30               ANDB A, #0x30
0x1d95 DD=0: f6 07               JNE label_1d9e
0x1d97 DD=0: 97 d3 03            LB A, 0x03d3
0x1d9a DD=0: be 33               ANDB A, #0x33
0x1d9c DD=0: f1 05               JEQ label_1da3
label_1d9e:
0x1d9e DD=0: 5a 69               RB sbafix 02e9.2
label_1da0:
0x1da0 DD=0: 03 b3 1e            J label_1eb3
label_1da3:
0x1da3 DD=0: 5c a2 04            JBS sbafix 02e2.4, label_1daa
0x1da6 DD=0: 5a 69               RB sbafix 02e9.2
0x1da8 DD=0: f6 2e               JNE label_1dd8
label_1daa:
0x1daa DD=0: 5b e9 0c            JBR sbafix 02e9.3, label_1db9
0x1dad DD=0: a7 86 80 90 44      CMP 0x8086, 0x0244
0x1db2 DD=0: f0 05               JGT label_1db9
0x1db4 DD=0: b7 d2 03 29 03      JBS 0x03d2.1, label_1dbc
label_1db9:
0x1db9 DD=0: 03 b3 1e            J label_1eb3
label_1dbc:
0x1dbc DD=0: b7 d3 03 09         SB 0x03d3.1
0x1dc0 DD=0: 5c e2 04            JBR sbafix 02e2.4, label_1dc7
0x1dc3 DD=0: b7 e5 05 08         SB 0x05e5.0
label_1dc7:
0x1dc7 DD=0: a7 68 03 76         MOV DP, 0x0368
0x1dcb DD=0: b7 d5 03 20 04      JBR 0x03d5.0, label_1dd4
0x1dd0 DD=0: 62 a3 02 00         ADD DP, #0x0002
label_1dd4:
0x1dd4 DD=1: 82                  L A, [DP]
0x1dd5 DD=1: 03 fb 1d            J label_1dfb
label_1dd8:
0x1dd8 DD=0: b7 d2 03 20 05      JBR 0x03d2.0, label_1de2
0x1ddd DD=0: 97 8f 03            LB A, 0x038f
0x1de0 DD=0: f1 03               JEQ label_1de5
label_1de2:
0x1de2 DD=0: 03 b3 1e            J label_1eb3
label_1de5:
0x1de5 DD=0: b7 d3 03 08         SB 0x03d3.0
0x1de9 DD=0: a7 6a 03 76         MOV DP, 0x036a
0x1ded DD=0: b7 d5 03 20 04      JBR 0x03d5.0, label_1df6
0x1df2 DD=0: 62 a3 02 00         ADD DP, #0x0002
label_1df6:
0x1df6 DD=1: 82                  L A, [DP]
0x1df7 DD=1: b7 e5 05 08         SB 0x05e5.0
label_1dfb:
0x1dfb DD=1: bc a6 03            TJNZ A, label_1e01
0x1dfe DD=1: 03 b3 1e            J label_1eb3
label_1e01:
0x1e01 DD=1: 9e 06 00            CMP A, #0x0006
0x1e04 DD=1: f5 03               JGE label_1e09
0x1e06 DD=1: f8 06 00            L A, #0x0006
label_1e09:
0x1e09 DD=1: 3b                  ST A, ER3
0x1e0a DD=1: a7 3c 03 a5         ADD A, 0x033c
0x1e0e DD=1: f5 02               JGE label_1e12
0x1e10 DD=1: bc d7               FILL A
label_1e12:
0x1e12 DD=1: 39                  ST A, ER1
0x1e13 DD=0: 94 2c               LB A, 0x022c
0x1e15 DD=0: 20 ae 80            MOV X1, #0x80ae
0x1e18 DD=0: 5a f1 03            JBR sbafix 02f1.2, label_1e1e
0x1e1b DD=0: 20 34 84            MOV X1, #0x8434
label_1e1e:
0x1e1e DD=0: ba 70               MOVB R0, [X1+A]
0x1e20 DD=0: 68 b1 c5            ANDB R0, off(0xc5)
0x1e23 DD=0: 68 20 21            JBR R0.0, label_1e47
0x1e26 DD=1: 86 d6               L A, TM1
0x1e28 DD=1: 2b                  ADD A, ER3
0x1e29 DD=1: a6 92 c8            XCHG A, TMR4
0x1e2c DD=1: b6 c6 28 05         JBS RTOCON4.0, label_1e35
0x1e30 DD=1: 2b                  ADD A, ER3
0x1e31 DD=1: 36 92               ST A, TMR4
0x1e33 DD=1: 04 0e               SJ label_1e43
label_1e35:
0x1e35 DD=1: f8 06 00            L A, #0x0006
0x1e38 DD=1: a6 d6 a5            ADD A, TM1
0x1e3b DD=1: 36 92               ST A, TMR4
0x1e3d DD=1: 29                  ADD A, ER1
0x1e3e DD=1: 36 ae               ST A, TMR4BF
0x1e40 DD=1: d6 c6 fd            MOVB RTOCON4, #0xfd
label_1e43:
0x1e43 DD=1: b7 df 03 00         RB 0x03df.0
label_1e47:
0x1e47 DD=1: 68 21 21            JBR R0.1, label_1e6b
0x1e4a DD=1: 86 d6               L A, TM1
0x1e4c DD=1: 2b                  ADD A, ER3
0x1e4d DD=1: a6 94 c8            XCHG A, TMR5
0x1e50 DD=1: b6 c7 28 05         JBS RTOCON5.0, label_1e59
0x1e54 DD=1: 2b                  ADD A, ER3
0x1e55 DD=1: 36 94               ST A, TMR5
0x1e57 DD=1: 04 0e               SJ label_1e67
label_1e59:
0x1e59 DD=1: f8 06 00            L A, #0x0006
0x1e5c DD=1: a6 d6 a5            ADD A, TM1
0x1e5f DD=1: 36 94               ST A, TMR5
0x1e61 DD=1: 29                  ADD A, ER1
0x1e62 DD=1: 36 b0               ST A, TMR5BF
0x1e64 DD=1: d6 c7 fd            MOVB RTOCON5, #0xfd
label_1e67:
0x1e67 DD=1: b7 df 03 01         RB 0x03df.1
label_1e6b:
0x1e6b DD=1: 68 22 21            JBR R0.2, label_1e8f
0x1e6e DD=1: 86 d6               L A, TM1
0x1e70 DD=1: 2b                  ADD A, ER3
0x1e71 DD=1: a6 96 c8            XCHG A, TMR6
0x1e74 DD=1: b6 c8 28 05         JBS RTOCON6.0, label_1e7d
0x1e78 DD=1: 2b                  ADD A, ER3
0x1e79 DD=1: 36 96               ST A, TMR6
0x1e7b DD=1: 04 0e               SJ label_1e8b
label_1e7d:
0x1e7d DD=1: f8 06 00            L A, #0x0006
0x1e80 DD=1: a6 d6 a5            ADD A, TM1
0x1e83 DD=1: 36 96               ST A, TMR6
0x1e85 DD=1: 29                  ADD A, ER1
0x1e86 DD=1: 36 b2               ST A, TMR6BF
0x1e88 DD=1: d6 c8 fd            MOVB RTOCON6, #0xfd
label_1e8b:
0x1e8b DD=1: b7 df 03 02         RB 0x03df.2
label_1e8f:
0x1e8f DD=1: 68 23 21            JBR R0.3, label_1eb3
0x1e92 DD=1: 86 d6               L A, TM1
0x1e94 DD=1: 2b                  ADD A, ER3
0x1e95 DD=1: a6 98 c8            XCHG A, TMR7
0x1e98 DD=1: b6 c9 28 05         JBS RTOCON7.0, label_1ea1
0x1e9c DD=1: 2b                  ADD A, ER3
0x1e9d DD=1: 36 98               ST A, TMR7
0x1e9f DD=1: 04 0e               SJ label_1eaf
label_1ea1:
0x1ea1 DD=1: f8 06 00            L A, #0x0006
0x1ea4 DD=1: a6 d6 a5            ADD A, TM1
0x1ea7 DD=1: 36 98               ST A, TMR7
0x1ea9 DD=1: 29                  ADD A, ER1
0x1eaa DD=1: 36 b4               ST A, TMR7BF
0x1eac DD=1: d6 c9 fd            MOVB RTOCON7, #0xfd
label_1eaf:
0x1eaf DD=1: b7 df 03 03         RB 0x03df.3
label_1eb3:
0x1eb3 DD=0: 94 2c               LB A, 0x022c
0x1eb5 DD=0: b7 19 8d ba         MBR C, 0x8d19.(AL)
0x1eb9 DD=0: b6 10 1a            MB P0.2, C
0x1ebc DD=0: 58 a3 03            JBS sbafix 02e3.0, label_1ec2
0x1ebf DD=0: 03 73 1f            J label_1f73
label_1ec2:
0x1ec2 DD=0: 94 2c               LB A, 0x022c
0x1ec4 DD=0: b7 06 8e ca         TBR 0x8e06.(AL)
0x1ec8 DD=0: f1 43               JEQ label_1f0d
0x1eca DD=0: 48 86 13            JBS sbaoff c6.0, label_1ee0
0x1ecd DD=1: 85 58               L A, off(0x58)
0x1ecf DD=1: 8f                  SLL A
0x1ed0 DD=1: f5 02               JGE label_1ed4
0x1ed2 DD=1: bc d7               FILL A
label_1ed4:
0x1ed4 DD=0: d8                  RDD
0x1ed5 DD=0: df                  SWAP
0x1ed6 DD=0: b7 12 8e 70         MOVB R0, 0x8e12
0x1eda DD=0: 18                  CMPB A, R0
0x1edb DD=0: f5 01               JGE label_1ede
0x1edd DD=0: 78                  LB A, R0
label_1ede:
0x1ede DD=0: 35 56               STB A, off(0x56)
label_1ee0:
0x1ee0 DD=0: 95 56               LB A, off(0x56)
0x1ee2 DD=0: b4 a7 a9            MULB 0x02a7
0x1ee5 DD=1: d9                  SDD
0x1ee6 DD=1: bc 8e               SLL A, 3
0x1ee8 DD=1: f5 02               JGE label_1eec
0x1eea DD=1: bc d7               FILL A
label_1eec:
0x1eec DD=0: 96 07               LB A, ACCH
0x1eee DD=0: 35 55               STB A, off(0x55)
0x1ef0 DD=0: 5a a8 0e            JBS sbafix 02e8.2, label_1f01
0x1ef3 DD=0: 58 ec 0b            JBR sbafix 02ec.0, label_1f01
0x1ef6 DD=0: 9d 54               CMPB A, off(0x54)
0x1ef8 DD=0: f0 07               JGT label_1f01
0x1efa DD=0: 59 2c               SB sbafix 02ec.1
0x1efc DD=0: 97 13 8e            LB A, 0x8e13
0x1eff DD=0: 35 57               STB A, off(0x57)
label_1f01:
0x1f01 DD=0: ca                  RC
0x1f02 DD=0: 95 57               LB A, off(0x57)
0x1f04 DD=0: f1 04               JEQ label_1f0a
0x1f06 DD=0: b5 57 d6            DECB off(0x57)
0x1f09 DD=0: cb                  SC
label_1f0a:
0x1f0a DD=0: b5 c6 18            MB off(0xc6).0, C
label_1f0d:
0x1f0d DD=0: 94 2c               LB A, 0x022c
0x1f0f DD=0: cc                  INCB A
0x1f10 DD=0: 9e 18               CMPB A, #0x18
0x1f12 DD=0: f2 01               JLT label_1f15
0x1f14 DD=0: fb                  CLRB A
label_1f15:
0x1f15 DD=0: b7 14 8e ca         TBR 0x8e14.(AL)
0x1f19 DD=0: f1 58               JEQ label_1f73
0x1f1b DD=0: 66 c7               CLR ER2
0x1f1d DD=0: b7 25 05 74         MOVB R4, 0x0525
0x1f21 DD=1: 87 17 8e            L A, 0x8e17
0x1f24 DD=1: 0a                  SUB A, ER2
0x1f25 DD=1: f5 01               JGE label_1f28
0x1f27 DD=1: fa                  CLR A
label_1f28:
0x1f28 DD=1: 27 03 00            MOV ER3, #0x0003
0x1f2b DD=1: 67 a9               MUL ER3
0x1f2d DD=1: 74                  L A, ER0
0x1f2e DD=1: a5 0e a9            MUL off(0x0e)
0x1f31 DD=1: b6 07 a7 04         TJZB ACCH, label_1f39
0x1f35 DD=1: bc d7               FILL A
0x1f37 DD=1: 04 0a               SJ label_1f43
label_1f39:
0x1f39 DD=1: df                  SWAP
0x1f3a DD=1: 69 97               MOVB A, R1
0x1f3c DD=1: 24 70 00            MOV ER0, #0x0070
0x1f3f DD=1: 18                  CMP A, ER0
0x1f40 DD=1: f5 01               JGE label_1f43
0x1f42 DD=1: 74                  L A, ER0
label_1f43:
0x1f43 DD=1: 37 5a 04            ST A, 0x045a
0x1f46 DD=1: 39                  ST A, ER1
0x1f47 DD=1: 87 19 8e            L A, 0x8e19
0x1f4a DD=1: 0a                  SUB A, ER2
0x1f4b DD=1: f5 01               JGE label_1f4e
0x1f4d DD=1: fa                  CLR A
label_1f4e:
0x1f4e DD=1: 67 a9               MUL ER3
0x1f50 DD=1: 74                  L A, ER0
0x1f51 DD=1: a5 0e a9            MUL off(0x0e)
0x1f54 DD=1: b6 07 70            MOVB R0, ACCH
0x1f57 DD=1: b6 07 aa            MOVB ACCH, A
0x1f5a DD=1: 69 97               MOVB A, R1
0x1f5c DD=1: 09                  SUB A, ER1
0x1f5d DD=1: f5 01               JGE label_1f60
0x1f5f DD=1: d0                  DEC R0
label_1f60:
0x1f60 DD=1: 68 a7 03            TJZB R0, label_1f66
0x1f63 DD=1: 75                  L A, ER1
0x1f64 DD=1: 04 08               SJ label_1f6e
label_1f66:
0x1f66 DD=1: 24 01 00            MOV ER0, #0x0001
0x1f69 DD=1: 18                  CMP A, ER0
0x1f6a DD=1: f5 01               JGE label_1f6d
0x1f6c DD=1: 74                  L A, ER0
label_1f6d:
0x1f6d DD=1: 29                  ADD A, ER1
label_1f6e:
0x1f6e DD=1: 37 5c 04            ST A, 0x045c
0x1f71 DD=1: 4c 00               SB sbaoff c0.4
label_1f73:
0x1f73 DD=1: 58 e4 18            JBR sbafix 02e4.0, label_1f8e
0x1f76 DD=1: a6 e2 70            MOV ER0, ADCR2
0x1f79 DD=0: 94 2c               LB A, 0x022c
0x1f7b DD=0: 9e 02               CMPB A, #0x02
0x1f7d DD=0: f1 0c               JEQ label_1f8b
0x1f7f DD=0: 9e 08               CMPB A, #0x08
0x1f81 DD=0: f1 08               JEQ label_1f8b
0x1f83 DD=0: 9e 0e               CMPB A, #0x0e
0x1f85 DD=0: f1 04               JEQ label_1f8b
0x1f87 DD=0: 9e 14               CMPB A, #0x14
0x1f89 DD=0: f6 03               JNE label_1f8e
label_1f8b:
0x1f8b DD=0: 64 87 14            MOV off(0x14), ER0
label_1f8e:
0x1f8e DD=0: 60 c7               CLR X1
label_1f90:
0x1f90 DD=1: fa                  CLR A
0x1f91 DD=0: 98 06 04            LB A, 0x0406[X1]
0x1f94 DD=0: f6 66               JNE label_1ffc
0x1f96 DD=0: 22 32 8a            MOV DP, #0x8a32
0x1f99 DD=0: 95 43               LB A, off(0x43)
0x1f9b DD=0: bc 8d               SLLB A, 2
0x1f9d DD=0: 62 a4               ADD DP, A
label_1f9f:
0x1f9f DD=0: a2 90 3c            CMP [DP], 0x023c
0x1fa2 DD=0: f5 08               JGE label_1fac
0x1fa4 DD=0: 62 a3 04 00         ADD DP, #0x0004
0x1fa8 DD=0: ae 04               ADDB A, #0x04
0x1faa DD=0: 04 f3               SJ label_1f9f
label_1fac:
0x1fac DD=0: 22 2c 8a            MOV DP, #0x8a2c
0x1faf DD=0: 62 a4               ADD DP, A
label_1fb1:
0x1fb1 DD=0: a2 90 3c            CMP [DP], 0x023c
0x1fb4 DD=0: f7 08               JLE label_1fbe
0x1fb6 DD=0: 62 83 04 00         SUB DP, #0x0004
0x1fba DD=0: 8e 04               SUBB A, #0x04
0x1fbc DD=0: 04 f3               SJ label_1fb1
label_1fbe:
0x1fbe DD=0: bc 9d               SRLB A, 2
0x1fc0 DD=0: 9e 05               CMPB A, #0x05
0x1fc2 DD=0: f2 02               JLT label_1fc6
0x1fc4 DD=0: f9 04               LB A, #0x04
label_1fc6:
0x1fc6 DD=0: 35 43               STB A, off(0x43)
0x1fc8 DD=0: f9 05               LB A, #0x05
0x1fca DD=0: b5 42 a9            MULB off(0x42)
0x1fcd DD=0: ad 43               ADDB A, off(0x43)
0x1fcf DD=0: 22 45 8a            MOV DP, #0x8a45
0x1fd2 DD=0: 62 a4               ADD DP, A
0x1fd4 DD=0: b2 87 44            MOVB off(0x44), [DP]
0x1fd7 DD=0: 95 44               LB A, off(0x44)
0x1fd9 DD=0: b8 46 04 95         CMPB A, 0x0446[X1]
0x1fdd DD=0: f6 05               JNE label_1fe4
0x1fdf DD=0: 97 44 8a            LB A, 0x8a44
0x1fe2 DD=0: 04 15               SJ label_1ff9
label_1fe4:
0x1fe4 DD=0: 98 4a 04            LB A, 0x044a[X1]
0x1fe7 DD=0: f6 0f               JNE label_1ff8
0x1fe9 DD=0: f2 06               JLT label_1ff1
0x1feb DD=0: b8 46 04 c6         INCB 0x0446[X1]
0x1fef DD=0: 04 04               SJ label_1ff5
label_1ff1:
0x1ff1 DD=0: b8 46 04 d6         DECB 0x0446[X1]
label_1ff5:
0x1ff5 DD=0: 97 44 8a            LB A, 0x8a44
label_1ff8:
0x1ff8 DD=0: dc                  DECB A
label_1ff9:
0x1ff9 DD=0: c8 4a 04            STB A, 0x044a[X1]
label_1ffc:
0x1ffc DD=0: 40                  INC X1
0x1ffd DD=0: 60 93 04 00         CMP X1, #0x0004
0x2001 DD=0: f2 8d               JLT label_1f90
0x2003 DD=0: 59 e8 0d            JBR sbafix 02e8.1, label_2013
0x2006 DD=0: b4 7a ab 01         MOVB 0x027a, #0x01
0x200a DD=0: b4 79 ab 01         MOVB 0x0279, #0x01
0x200e DD=0: b6 42 0b            SB IRQ1L.3
0x2011 DD=0: 04 52               SJ label_2065
label_2013:
0x2013 DD=0: 58 e8 4f            JBR sbafix 02e8.0, label_2065
0x2016 DD=0: 61 c7               CLR X2
label_2018:
0x2018 DD=1: fa                  CLR A
0x2019 DD=1: b9 fc 89 97         MOVB A, 0x89fc[X2]
0x201d DD=1: 3c                  ST A, X1
0x201e DD=1: 6c aa               MOVB R4, A
0x2020 DD=0: 98 05 04            LB A, 0x0405[X1]
0x2023 DD=0: b8 45 04 95         CMPB A, 0x0445[X1]
0x2027 DD=0: f6 17               JNE label_2040
0x2029 DD=0: 22 7a 02            MOV DP, #0x027a
0x202c DD=0: 94 79               LB A, 0x0279
0x202e DD=0: 9e 04               CMPB A, #0x04
0x2030 DD=0: f2 04               JLT label_2036
0x2032 DD=0: 5b 32               SB sbafix 02f2.3
0x2034 DD=0: f9 03               LB A, #0x03
label_2036:
0x2036 DD=0: 62 a4               ADD DP, A
0x2038 DD=0: 6c 8a               MOVB [DP], R4
0x203a DD=0: cc                  INCB A
0x203b DD=0: 34 79               STB A, 0x0279
0x203d DD=0: b6 42 0b            SB IRQ1L.3
label_2040:
0x2040 DD=0: 98 14 8d            LB A, 0x8d14[X1]
0x2043 DD=0: 9c 2c               CMPB A, 0x022c
0x2045 DD=0: f6 17               JNE label_205e
0x2047 DD=0: 22 80 02            MOV DP, #0x0280
0x204a DD=0: 94 7f               LB A, 0x027f
0x204c DD=0: 9e 04               CMPB A, #0x04
0x204e DD=0: f2 04               JLT label_2054
0x2050 DD=0: 5c 32               SB sbafix 02f2.4
0x2052 DD=0: f9 03               LB A, #0x03
label_2054:
0x2054 DD=0: 62 a4               ADD DP, A
0x2056 DD=0: 6c 8a               MOVB [DP], R4
0x2058 DD=0: cc                  INCB A
0x2059 DD=0: 34 7f               STB A, 0x027f
0x205b DD=0: b6 42 0a            SB IRQ1L.2
label_205e:
0x205e DD=0: 41                  INC X2
0x205f DD=0: 61 93 04 00         CMP X2, #0x0004
0x2063 DD=0: f2 b3               JLT label_2018
label_2065:
0x2065 DD=0: 02                  RTI
cap1_vector:
0x2066 DD=0: 02                  RTI
ftm17_vector:
0x2067 DD=0: 5d e4 2f            JBR sbafix 02e4.5, label_2099
0x206a DD=0: c6 02 e3 05         MOV LRB, #0x05e3
0x206e DD=0: 8a ab 03            MOVB PSWL, #0x03
0x2071 DD=0: b5 ed 38 27         JBSR off(0xed).0, label_209c
0x2075 DD=0: 48 2d               SB sbaoff ed.0
0x2077 DD=1: 86 e6               L A, ADCR6
0x2079 DD=0: 96 07               LB A, ACCH
0x207b DD=0: 35 5a               STB A, off(0x5a)
0x207d DD=0: 48 ae 0b            JBS sbaoff ee.0, label_208b
label_2080:
0x2080 DD=0: 9e 49               CMPB A, #0x49
0x2082 DD=0: f5 0d               JGE label_2091
label_2084:
0x2084 DD=1: f8 10 27            L A, #0x2710
0x2087 DD=1: 49 6d               RB sbaoff ed.1
0x2089 DD=1: 04 0b               SJ label_2096
label_208b:
0x208b DD=0: 49 ae f2            JBS sbaoff ee.1, label_2080
0x208e DD=0: 49 ed f3            JBR sbaoff ed.1, label_2084
label_2091:
0x2091 DD=1: f8 88 13            L A, #0x1388
0x2094 DD=1: 49 2d               SB sbaoff ed.1
label_2096:
0x2096 DD=1: a6 ac a4            ADD TMR17, A
label_2099:
0x2099 DD=1: 03 a4 22            J label_22a4
label_209c:
0x209c DD=0: db                  EI
0x209d DD=1: 86 e7               L A, ADCR7
0x209f DD=1: b6 07 87 5b         MOVB off(0x5b), ACCH
0x20a3 DD=1: 86 e8               L A, ADCR8
0x20a5 DD=1: b6 07 87 5c         MOVB off(0x5c), ACCH
0x20a9 DD=1: 5f 97 20            JBS sbafix 02d7.7, label_20cc
0x20ac DD=1: d5 5a 41            CMPB off(0x5a), #0x41
0x20af DD=1: f2 19               JLT label_20ca
0x20b1 DD=1: d5 5a a0            CMPB off(0x5a), #0xa0
0x20b4 DD=1: f0 14               JGT label_20ca
0x20b6 DD=1: d5 5b 20            CMPB off(0x5b), #0x20
0x20b9 DD=1: f2 1e               JLT label_20d9
0x20bb DD=1: d5 5b ec            CMPB off(0x5b), #0xec
0x20be DD=1: f0 19               JGT label_20d9
0x20c0 DD=1: d5 5c 20            CMPB off(0x5c), #0x20
0x20c3 DD=1: f2 10               JLT label_20d5
0x20c5 DD=1: d5 5c ec            CMPB off(0x5c), #0xec
0x20c8 DD=1: f0 0b               JGT label_20d5
label_20ca:
0x20ca DD=1: 4e 6d               RB sbaoff ed.6
label_20cc:
0x20cc DD=1: 5e 51               RB sbafix 02d1.6
0x20ce DD=1: 5f 51               RB sbafix 02d1.7
0x20d0 DD=1: d7 6f 05            MOVB off(0x6f), #0x05
0x20d3 DD=1: 04 08               SJ label_20dd
label_20d5:
0x20d5 DD=1: 5f 11               SB sbafix 02d1.7
0x20d7 DD=1: 04 02               SJ label_20db
label_20d9:
0x20d9 DD=1: 5e 11               SB sbafix 02d1.6
label_20db:
0x20db DD=1: 4e 2d               SB sbaoff ed.6
label_20dd:
0x20dd DD=1: 58 ef 09            JBR sbafix 02ef.0, label_20e9
0x20e0 DD=1: d5 5a 49            CMPB off(0x5a), #0x49
0x20e3 DD=1: f2 04               JLT label_20e9
0x20e5 DD=1: 49 2f               SB sbaoff ef.1
0x20e7 DD=1: 04 09               SJ label_20f2
label_20e9:
0x20e9 DD=1: 49 6f               RB sbaoff ef.1
0x20eb DD=1: 48 6f               RB sbaoff ef.0
0x20ed DD=1: 4a 6f               RB sbaoff ef.2
0x20ef DD=1: d7 59 03            MOVB off(0x59), #0x03
label_20f2:
0x20f2 DD=1: b5 54 a1 56         ADDB off(0x54), off(0x56)
0x20f6 DD=1: 48 ef 21            JBR sbaoff ef.0, label_211a
0x20f9 DD=1: 4b 2f               SB sbaoff ef.3
0x20fb DD=1: 4a ef 14            JBR sbaoff ef.2, label_2112
0x20fe DD=1: b5 59 a6 0d         TJNZB off(0x59), label_210f
0x2102 DD=1: d7 59 03            MOVB off(0x59), #0x03
0x2105 DD=1: d7 ec 04            MOVB off(0xec), #0x04
0x2108 DD=1: d7 56 01            MOVB off(0x56), #0x01
0x210b DD=1: 4a 6f               RB sbaoff ef.2
0x210d DD=1: 04 09               SJ label_2118
label_210f:
0x210f DD=1: b5 59 d6            DECB off(0x59)
label_2112:
0x2112 DD=1: d7 ec 01            MOVB off(0xec), #0x01
0x2115 DD=1: d7 56 00            MOVB off(0x56), #0x00
label_2118:
0x2118 DD=1: 04 2c               SJ label_2146
label_211a:
0x211a DD=1: 4e ed 0b            JBR sbaoff ed.6, label_2128
0x211d DD=1: d7 ec 01            MOVB off(0xec), #0x01
0x2120 DD=1: d7 58 03            MOVB off(0x58), #0x03
0x2123 DD=1: b5 56 c7            CLRB off(0x56)
0x2126 DD=1: 04 1e               SJ label_2146
label_2128:
0x2128 DD=1: f8 dc dd            L A, #0xdddc
0x212b DD=1: 48 ae 01            JBS sbaoff ee.0, label_212f
0x212e DD=1: df                  SWAP
label_212f:
0x212f DD=1: b5 54 94            CMPB off(0x54), A
0x2132 DD=1: f6 04               JNE label_2138
0x2134 DD=1: b6 07 87 54         MOVB off(0x54), ACCH
label_2138:
0x2138 DD=1: d5 5a 3e            CMPB off(0x5a), #0x3e
0x213b DD=1: f5 0c               JGE label_2149
0x213d DD=1: d7 ec 01            MOVB off(0xec), #0x01
0x2140 DD=1: d7 58 01            MOVB off(0x58), #0x01
0x2143 DD=1: b5 56 c7            CLRB off(0x56)
label_2146:
0x2146 DD=1: 03 57 22            J label_2257
label_2149:
0x2149 DD=1: 4a ed 3f            JBR sbaoff ed.2, label_218b
0x214c DD=1: 48 ae 3c            JBS sbaoff ee.0, label_218b
0x214f DD=1: 68 c7               CLRB R0
0x2151 DD=1: b5 58 a7 05         TJZB off(0x58), label_215a
0x2155 DD=1: b5 58 d6            DECB off(0x58)
0x2158 DD=1: 04 2b               SJ label_2185
label_215a:
0x215a DD=0: 95 54               LB A, off(0x54)
0x215c DD=0: b7 8e 06 95         CMPB A, 0x068e
0x2160 DD=0: 8a 1b               MB PSWL.3, C
0x2162 DD=0: f1 17               JEQ label_217b
0x2164 DD=0: 9e dc               CMPB A, #0xdc
0x2166 DD=0: f0 0b               JGT label_2173
0x2168 DD=0: 8a 2b 08            JBS PSWL.3, label_2173
0x216b DD=0: f9 02               LB A, #0x02
0x216d DD=0: 4a ab 0b            JBS sbaoff eb.2, label_217b
0x2170 DD=0: d0                  DEC R0
0x2171 DD=0: 04 10               SJ label_2183
label_2173:
0x2173 DD=0: f9 04               LB A, #0x04
0x2175 DD=0: 49 ab 03            JBS sbaoff eb.1, label_217b
0x2178 DD=0: c0                  INCB R0
0x2179 DD=0: 04 08               SJ label_2183
label_217b:
0x217b DD=0: f9 01               LB A, #0x01
0x217d DD=0: 48 ab 03            JBS sbaoff eb.0, label_2183
0x2180 DD=0: d7 58 03            MOVB off(0x58), #0x03
label_2183:
0x2183 DD=0: 35 ec               STB A, off(0xec)
label_2185:
0x2185 DD=0: 68 87 56            MOVB off(0x56), R0
0x2188 DD=0: 03 26 22            J label_2226
label_218b:
0x218b DD=1: 4b ad 11            JBS sbaoff ed.3, label_219f
0x218e DD=1: 48 ae 06            JBS sbaoff ee.0, label_2197
0x2191 DD=1: d7 57 02            MOVB off(0x57), #0x02
0x2194 DD=1: d7 54 dc            MOVB off(0x54), #0xdc
label_2197:
0x2197 DD=1: d7 56 ff            MOVB off(0x56), #0xff
0x219a DD=1: d7 ec 02            MOVB off(0xec), #0x02
0x219d DD=1: 4b 2d               SB sbaoff ed.3
label_219f:
0x219f DD=1: 4c ad 54            JBS sbaoff ed.4, label_21f6
0x21a2 DD=0: 95 54               LB A, off(0x54)
0x21a4 DD=0: 4a ad 0b            JBS sbaoff ed.2, label_21b2
0x21a7 DD=0: f6 48               JNE label_21f1
0x21a9 DD=0: 35 56               STB A, off(0x56)
0x21ab DD=0: 4c 2d               SB sbaoff ed.4
0x21ad DD=0: d7 ec 01            MOVB off(0xec), #0x01
0x21b0 DD=0: 04 42               SJ label_21f4
label_21b2:
0x21b2 DD=0: 9e dd               CMPB A, #0xdd
0x21b4 DD=0: f5 1c               JGE label_21d2
0x21b6 DD=0: 49 ee 38            JBR sbaoff ee.1, label_21f1
0x21b9 DD=0: b5 56 c7            CLRB off(0x56)
0x21bc DD=0: d7 ec 01            MOVB off(0xec), #0x01
0x21bf DD=0: 4b ae 07            JBS sbaoff ee.3, label_21c9
0x21c2 DD=0: d7 58 03            MOVB off(0x58), #0x03
0x21c5 DD=0: 4b 2e               SB sbaoff ee.3
0x21c7 DD=0: 04 2b               SJ label_21f4
label_21c9:
0x21c9 DD=0: b5 58 d6            DECB off(0x58)
0x21cc DD=0: f6 26               JNE label_21f4
0x21ce DD=0: 48 6e               RB sbaoff ee.0
0x21d0 DD=0: 04 22               SJ label_21f4
label_21d2:
0x21d2 DD=0: 9e f6               CMPB A, #0xf6
0x21d4 DD=0: f0 1b               JGT label_21f1
0x21d6 DD=0: 9e f2               CMPB A, #0xf2
0x21d8 DD=0: f1 03               JEQ label_21dd
0x21da DD=0: 49 ee 14            JBR sbaoff ee.1, label_21f1
label_21dd:
0x21dd DD=0: b5 56 c7            CLRB off(0x56)
0x21e0 DD=0: 4c 2d               SB sbaoff ed.4
0x21e2 DD=0: 48 6e               RB sbaoff ee.0
0x21e4 DD=0: 4c 2e               SB sbaoff ee.4
0x21e6 DD=0: d7 54 f6            MOVB off(0x54), #0xf6
0x21e9 DD=0: d7 58 02            MOVB off(0x58), #0x02
0x21ec DD=0: d7 ec 01            MOVB off(0xec), #0x01
0x21ef DD=0: 04 03               SJ label_21f4
label_21f1:
0x21f1 DD=0: d7 56 ff            MOVB off(0x56), #0xff
label_21f4:
0x21f4 DD=0: 04 30               SJ label_2226
label_21f6:
0x21f6 DD=1: 4d ad 13            JBS sbaoff ed.5, label_220c
0x21f9 DD=1: b5 57 83 01         SUBB off(0x57), #0x01
0x21fd DD=1: f5 27               JGE label_2226
0x21ff DD=1: 4d 2d               SB sbaoff ed.5
0x2201 DD=1: d7 56 01            MOVB off(0x56), #0x01
0x2204 DD=1: d7 57 0a            MOVB off(0x57), #0x0a
0x2207 DD=1: d7 ec 04            MOVB off(0xec), #0x04
0x220a DD=1: 04 1a               SJ label_2226
label_220c:
0x220c DD=1: d7 56 01            MOVB off(0x56), #0x01
0x220f DD=1: b5 57 d6            DECB off(0x57)
0x2212 DD=1: f6 12               JNE label_2226
0x2214 DD=1: b5 54 c7            CLRB off(0x54)
0x2217 DD=1: 4b 6d               RB sbaoff ed.3
0x2219 DD=1: 4c 6d               RB sbaoff ed.4
0x221b DD=1: b5 56 c7            CLRB off(0x56)
0x221e DD=1: d7 58 03            MOVB off(0x58), #0x03
0x2221 DD=1: d7 ec 01            MOVB off(0xec), #0x01
0x2224 DD=1: 4a 2d               SB sbaoff ed.2
label_2226:
0x2226 DD=1: 48 ee 2e            JBR sbaoff ee.0, label_2257
0x2229 DD=1: 49 ae 2b            JBS sbaoff ee.1, label_2257
0x222c DD=1: 4a ae 13            JBS sbaoff ee.2, label_2242
0x222f DD=0: fb                  CLRB A
0x2230 DD=0: 49 ab 0b            JBS sbaoff eb.1, label_223e
0x2233 DD=0: cc                  INCB A
0x2234 DD=0: 48 ab 01            JBS sbaoff eb.0, label_2238
0x2237 DD=0: cc                  INCB A
label_2238:
0x2238 DD=0: d5 5a 49            CMPB off(0x5a), #0x49
0x223b DD=0: f2 01               JLT label_223e
0x223d DD=0: cc                  INCB A
label_223e:
0x223e DD=0: 35 57               STB A, off(0x57)
0x2240 DD=0: 4a 2e               SB sbaoff ee.2
label_2242:
0x2242 DD=0: b5 57 a7 0b         TJZB off(0x57), label_2251
0x2246 DD=0: b5 57 d6            DECB off(0x57)
0x2249 DD=0: b5 56 c7            CLRB off(0x56)
0x224c DD=0: d7 ec 01            MOVB off(0xec), #0x01
0x224f DD=0: 04 06               SJ label_2257
label_2251:
0x2251 DD=0: d7 56 ff            MOVB off(0x56), #0xff
0x2254 DD=0: d7 ec 02            MOVB off(0xec), #0x02
label_2257:
0x2257 DD=1: f8 10 27            L A, #0x2710
0x225a DD=1: 49 ed 03            JBR sbaoff ed.1, label_2260
0x225d DD=1: f8 88 13            L A, #0x1388
label_2260:
0x2260 DD=1: a6 ac a4            ADD TMR17, A
0x2263 DD=1: b5 ec 87 eb         MOVB off(0xeb), off(0xec)
0x2267 DD=0: 95 54               LB A, off(0x54)
0x2269 DD=0: ad 56               ADDB A, off(0x56)
0x226b DD=0: 38                  STB A, R0
0x226c DD=0: 4a ed 11            JBR sbaoff ed.2, label_2280
0x226f DD=0: 8e dd               SUBB A, #0xdd
0x2271 DD=0: 39                  STB A, R1
0x2272 DD=0: 95 55               LB A, off(0x55)
0x2274 DD=0: 8e dd               SUBB A, #0xdd
0x2276 DD=0: 09                  SUBB A, R1
0x2277 DD=0: f5 01               JGE label_227a
0x2279 DD=0: cf                  NEGB A
label_227a:
0x227a DD=0: 9e 04               CMPB A, #0x04
0x227c DD=0: f2 05               JLT label_2283
0x227e DD=0: 5c 36               SB sbafix 02f6.4
label_2280:
0x2280 DD=0: 68 87 55            MOVB off(0x55), R0
label_2283:
0x2283 DD=1: f8 dc dd            L A, #0xdddc
0x2286 DD=0: d8                  RDD
0x2287 DD=0: 48 ae 01            JBS sbaoff ee.0, label_228b
0x228a DD=0: df                  SWAP
label_228b:
0x228b DD=0: 68 c8               XCHGB A, R0
0x228d DD=0: 18                  CMPB A, R0
0x228e DD=0: f6 01               JNE label_2291
0x2290 DD=0: df                  SWAP
label_2291:
0x2291 DD=0: be 03               ANDB A, #0x03
0x2293 DD=0: 4a ad 02            JBS sbaoff ed.2, label_2298
0x2296 DD=0: ae 02               ADDB A, #0x02
label_2298:
0x2298 DD=0: 20 81 8e            MOV X1, #0x8e81
0x229b DD=0: ba 97               MOVB A, [X1+A]
0x229d DD=0: b6 d2 b3 cf         ANDB RTO4CON, #0xcf
0x22a1 DD=0: b6 d2 c4            OR RTO4CON, A
label_22a4:
0x22a4 DD=0: 02                  RTI
tm1_vector:
0x22a5 DD=0: 5a 6f               RB sbafix 02ef.2
0x22a7 DD=0: f6 07               JNE label_22b0
0x22a9 DD=0: 94 2d               LB A, 0x022d
0x22ab DD=0: cc                  INCB A
0x22ac DD=0: f1 02               JEQ label_22b0
0x22ae DD=0: 34 2d               STB A, 0x022d
label_22b0:
0x22b0 DD=0: 02                  RTI
gtmc_vector:
0x22b1 DD=0: b7 c8 06 10         MB C, 0x06c8.0
0x22b5 DD=0: b7 c9 06 50         BOR C, 0x06c9.0
0x22b9 DD=0: b7 c9 06 18         MB 0x06c9.0, C
0x22bd DD=0: b7 c8 06 08         SB 0x06c8.0
0x22c1 DD=0: 02                  RTI
sci1_vector:
0x22c2 DD=0: db                  EI
0x22c3 DD=0: c6 02 e1 08         MOV LRB, #0x08e1
0x22c7 DD=0: 8a ab 01            MOVB PSWL, #0x01
0x22ca DD=0: 96 26               LB A, S1BUF
0x22cc DD=0: 3f                  STB A, R7
0x22cd DD=0: ca                  RC
0x22ce DD=0: 96 27               LB A, S1STAT
0x22d0 DD=0: be 03               ANDB A, #0x03
0x22d2 DD=0: f1 05               JEQ label_22d9
0x22d4 DD=0: b6 27 b3 fc         ANDB S1STAT, #0xfc
0x22d8 DD=0: cb                  SC
label_22d9:
0x22d9 DD=0: b5 b2 1f            MB off(0xb2).7, C
0x22dc DD=0: b5 b2 26 36         JBR off(0xb2).6, label_2316
0x22e0 DD=0: 95 78               LB A, off(0x78)
0x22e2 DD=0: 9d 79               CMPB A, off(0x79)
0x22e4 DD=0: f5 0b               JGE label_22f1
0x22e6 DD=0: b5 78 c6            INCB off(0x78)
0x22e9 DD=0: 20 7c 08            MOV X1, #0x087c
0x22ec DD=0: ba 96 26            MOVB S1BUF, [X1+A]
0x22ef DD=0: 04 24               SJ label_2315
label_22f1:
0x22f1 DD=0: b5 b3 21 0b         JBR off(0xb3).1, label_2300
0x22f5 DD=0: b5 b3 01            RB off(0xb3).1
0x22f8 DD=0: b5 bb c7            CLRB off(0xbb)
0x22fb DD=0: b5 b2 06            RB off(0xb2).6
0x22fe DD=0: 04 15               SJ label_2315
label_2300:
0x2300 DD=0: b7 6e 90 87 bb      MOVB off(0xbb), 0x906e
0x2305 DD=0: b5 b5 21 06         JBR off(0xb5).1, label_230f
0x2309 DD=0: b5 b5 08            SB off(0xb5).0
0x230c DD=0: b5 b5 0c            SB off(0xb5).4
label_230f:
0x230f DD=0: b5 b2 06            RB off(0xb2).6
0x2312 DD=0: b5 b8 c7            CLRB off(0xb8)
label_2315:
0x2315 DD=0: 02                  RTI
label_2316:
0x2316 DD=0: b5 b2 27 0d         JBR off(0xb2).7, label_2327
0x231a DD=0: 95 bb               LB A, off(0xbb)
0x231c DD=0: f1 08               JEQ label_2326
0x231e DD=0: b5 b1 04            RB off(0xb1).4
label_2321:
0x2321 DD=0: b7 17 90 87 b8      MOVB off(0xb8), 0x9017
label_2326:
0x2326 DD=0: 02                  RTI
label_2327:
0x2327 DD=0: b5 b1 29 f6         JBS off(0xb1).1, label_2321
0x232b DD=0: b5 b9 a6 04         TJNZB off(0xb9), label_2333
0x232f DD=0: b5 bb a7 49         TJZB off(0xbb), label_237c
label_2333:
0x2333 DD=0: 95 b8               LB A, off(0xb8)
0x2335 DD=0: f6 10               JNE label_2347
0x2337 DD=0: d7 78 01            MOVB off(0x78), #0x01
0x233a DD=0: 6f 87 64            MOVB off(0x64), R7
0x233d DD=0: b5 b1 0c            SB off(0xb1).4
0x2340 DD=0: b7 18 90 87 7a      MOVB off(0x7a), 0x9018
0x2345 DD=0: 04 30               SJ label_2377
label_2347:
0x2347 DD=0: b5 b1 24 2c         JBR off(0xb1).4, label_2377
0x234b DD=0: b5 78 c6            INCB off(0x78)
0x234e DD=0: 95 78               LB A, off(0x78)
0x2350 DD=0: 9d 7a               CMPB A, off(0x7a)
0x2352 DD=0: f5 1a               JGE label_236e
0x2354 DD=0: 20 63 08            MOV X1, #0x0863
0x2357 DD=0: 6f f8               MOVB [X1+A], R7
0x2359 DD=0: 9e 02               CMPB A, #0x02
0x235b DD=0: b5 b0 22 02         JBR off(0xb0).2, label_2361
0x235f DD=0: 9e 04               CMPB A, #0x04
label_2361:
0x2361 DD=0: f6 14               JNE label_2377
0x2363 DD=0: 7f                  LB A, R7
0x2364 DD=0: 35 7a               STB A, off(0x7a)
0x2366 DD=0: 8a b6 18 90         CMPCB A, 0x9018
0x236a DD=0: f7 0b               JLE label_2377
0x236c DD=0: 04 06               SJ label_2374
label_236e:
0x236e DD=0: 6f 87 76            MOVB off(0x76), R7
0x2371 DD=0: b5 b1 09            SB off(0xb1).1
label_2374:
0x2374 DD=0: b5 b1 04            RB off(0xb1).4
label_2377:
0x2377 DD=0: b7 17 90 87 b8      MOVB off(0xb8), 0x9017
label_237c:
0x237c DD=0: 02                  RTI
sci0_vector:
0x237d DD=0: db                  EI
0x237e DD=0: 96 28               LB A, S0BUF0
0x2380 DD=0: b6 38 28 04         JBS S0STAT0.0, label_2388
0x2384 DD=0: b6 38 21 07         JBR S0STAT0.1, label_238f
label_2388:
0x2388 DD=0: b6 38 b3 fc         ANDB S0STAT0, #0xfc
0x238c DD=0: 03 2a 24            J label_242a
label_238f:
0x238f DD=0: 8a ab 01            MOVB PSWL, #0x01
0x2392 DD=0: d6 02 e1            MOVB LRBL, #0xe1
0x2395 DD=0: 5b 33               SB sbafix 02f3.3
0x2397 DD=0: 59 a5 26            JBS sbafix 02e5.1, label_23c0
0x239a DD=0: bc 27 05            JBR A.7, label_23a2
0x239d DD=0: 34 84               STB A, 0x0284
0x239f DD=0: 03 28 24            J label_2428
label_23a2:
0x23a2 DD=0: 9f                  SRLB A
0x23a3 DD=0: df                  SWAP
0x23a4 DD=0: 94 84               LB A, 0x0284
0x23a6 DD=0: bc 1f               MB A.7, C
0x23a8 DD=1: d9                  SDD
0x23a9 DD=1: 9e ff 19            CMP A, #0x19ff
0x23ac DD=1: f0 0e               JGT label_23bc
0x23ae DD=1: 86 06               L A, ACC
0x23b0 DD=1: 3e                  ST A, DP
0x23b1 DD=1: b4 85 97            MOVB A, 0x0285
0x23b4 DD=1: f1 06               JEQ label_23bc
0x23b6 DD=1: da                  DI
0x23b7 DD=0: 93                  LB A, [DP+]
0x23b8 DD=0: b2 86 85            MOVB 0x0285, [DP]
0x23bb DD=0: db                  EI
label_23bc:
0x23bc DD=0: d8                  RDD
0x23bd DD=0: 03 28 24            J label_2428
label_23c0:
0x23c0 DD=0: bc 27 04            JBR A.7, label_23c7
0x23c3 DD=0: 34 84               STB A, 0x0284
0x23c5 DD=0: 04 61               SJ label_2428
label_23c7:
0x23c7 DD=0: 3c                  STB A, R4
0x23c8 DD=0: 9f                  SRLB A
0x23c9 DD=0: 3d                  STB A, R5
0x23ca DD=0: df                  SWAP
0x23cb DD=0: 94 84               LB A, 0x0284
0x23cd DD=0: bc 1f               MB A.7, C
0x23cf DD=1: 86 06               L A, ACC
0x23d1 DD=1: 3e                  ST A, DP
0x23d2 DD=1: b4 85 97            MOVB A, 0x0285
0x23d5 DD=1: f1 0e               JEQ label_23e5
0x23d7 DD=1: 6d b3 38            ANDB R5, #0x38
0x23da DD=1: 6d 93 28            CMPB R5, #0x28
0x23dd DD=1: f1 09               JEQ label_23e8
0x23df DD=1: da                  DI
0x23e0 DD=0: 93                  LB A, [DP+]
0x23e1 DD=0: b2 86 85            MOVB 0x0285, [DP]
0x23e4 DD=0: db                  EI
label_23e5:
0x23e5 DD=0: d8                  RDD
0x23e6 DD=0: 04 40               SJ label_2428
label_23e8:
0x23e8 DD=1: 72                  L A, DP
0x23e9 DD=0: d8                  RDD
0x23ea DD=0: df                  SWAP
0x23eb DD=0: be 07               ANDB A, #0x07
0x23ed DD=0: f6 09               JNE label_23f8
0x23ef DD=0: df                  SWAP
0x23f0 DD=0: 9e 06               CMPB A, #0x06
0x23f2 DD=0: f6 36               JNE label_242a
0x23f4 DD=0: 34 87               STB A, 0x0287
0x23f6 DD=0: 04 2f               SJ label_2427
label_23f8:
0x23f8 DD=0: 9e 01               CMPB A, #0x01
0x23fa DD=0: f6 05               JNE label_2401
0x23fc DD=0: df                  SWAP
0x23fd DD=0: 34 86               STB A, 0x0286
0x23ff DD=0: 04 26               SJ label_2427
label_2401:
0x2401 DD=0: 9e 02               CMPB A, #0x02
0x2403 DD=0: f6 25               JNE label_242a
0x2405 DD=0: 94 86               LB A, 0x0286
0x2407 DD=0: f6 08               JNE label_2411
0x2409 DD=0: 96 07               LB A, ACCH
0x240b DD=0: f6 1d               JNE label_242a
0x240d DD=0: 5b 74               RB sbafix 02f4.3
0x240f DD=0: 04 16               SJ label_2427
label_2411:
0x2411 DD=0: 9e ff               CMPB A, #0xff
0x2413 DD=0: f6 07               JNE label_241c
0x2415 DD=0: df                  SWAP
0x2416 DD=0: 34 8c               STB A, 0x028c
0x2418 DD=0: 5b 34               SB sbafix 02f4.3
0x241a DD=0: 04 0b               SJ label_2427
label_241c:
0x241c DD=0: 9e 05               CMPB A, #0x05
0x241e DD=0: f5 0a               JGE label_242a
0x2420 DD=0: 20 87 02            MOV X1, #0x0287
0x2423 DD=0: 38                  STB A, R0
0x2424 DD=0: df                  SWAP
0x2425 DD=0: bb aa               MOVB [X1+R0], A
label_2427:
0x2427 DD=0: 7c                  LB A, R4
label_2428:
0x2428 DD=0: 36 28               STB A, S0BUF0
label_242a:
0x242a DD=0: 02                  RTI
adc0_vector:
0x242b DD=0: b4 79 a6 03         TJNZB 0x0279, label_2432
0x242f DD=0: 03 72 30            J label_3072
label_2432:
0x2432 DD=0: c6 02 e1 03         MOV LRB, #0x03e1
0x2436 DD=0: 8a ab 01            MOVB PSWL, #0x01
0x2439 DD=0: fb                  CLRB A
0x243a DD=0: b4 7d c8            XCHGB A, 0x027d
0x243d DD=0: b4 7c c8            XCHGB A, 0x027c
0x2440 DD=0: b4 7b c8            XCHGB A, 0x027b
0x2443 DD=0: b4 7a c8            XCHGB A, 0x027a
0x2446 DD=0: dc                  DECB A
0x2447 DD=0: 34 78               STB A, 0x0278
0x2449 DD=0: b4 79 d6            DECB 0x0279
0x244c DD=0: 5d 2f               SB sbafix 02ef.5
0x244e DD=0: db                  EI
0x244f DD=0: 94 78               LB A, 0x0278
0x2451 DD=0: da                  DI
0x2452 DD=0: b6 12 ba            MBR C, P2.(AL)
0x2455 DD=0: b5 df bb            MBR off(0xdf).(AL), C
0x2458 DD=0: db                  EI
0x2459 DD=1: f8 d2 27            L A, #0x27d2
0x245c DD=1: 49 91 03            JBS sbaoff d1.1, label_2462
0x245f DD=1: f8 ab 2a            L A, #0x2aab
label_2462:
0x2462 DD=1: 9c 34               CMP A, 0x0234
0x2464 DD=1: b5 d1 19            MB off(0xd1).1, C
0x2467 DD=1: fa                  CLR A
0x2468 DD=1: 59 af 47            JBS sbafix 02ef.1, label_24b2
0x246b DD=1: f2 0a               JLT label_2477
0x246d DD=1: da                  DI
0x246e DD=1: a4 2e 73            MOV ER3, 0x022e
0x2471 DD=1: b4 32 74            MOVB R4, 0x0232
0x2474 DD=1: db                  EI
0x2475 DD=1: 04 22               SJ label_2499
label_2477:
0x2477 DD=1: 26 00 0c            MOV ER2, #0x0c00
0x247a DD=1: 22 00 0b            MOV DP, #0x0b00
0x247d DD=1: fa                  CLR A
0x247e DD=1: b4 2c 97            MOVB A, 0x022c
0x2481 DD=1: 8f                  SLL A
0x2482 DD=1: 62 a4               ADD DP, A
0x2484 DD=1: fa                  CLR A
loop_2485:
0x2485 DD=1: a1 a5               ADD A, [DP-]
0x2487 DD=1: 6c f3 00            ADCB R4, #0x00
0x248a DD=1: 62 93 00 0b         CMP DP, #0x0b00
0x248e DD=1: f5 03               JGE label_2493
0x2490 DD=1: 22 2e 0b            MOV DP, #0x0b2e
label_2493:
0x2493 DD=1: 05 f0               DJNZ R5, loop_2485
0x2495 DD=1: 8f                  SLL A
0x2496 DD=1: 6c ac               ROLB R4, 1
0x2498 DD=1: 3b                  ST A, ER3
label_2499:
0x2499 DD=1: f8 0a 1a            L A, #0x1a0a
0x249c DD=1: 24 aa aa            MOV ER0, #0xaaaa
label_249f:
0x249f DD=1: 6c a7 09            TJZB R4, label_24ab
0x24a2 DD=1: 6c 9c               SRLB R4, 1
0x24a4 DD=1: 67 bc               ROR ER3, 1
0x24a6 DD=1: 9f                  SRL A
0x24a7 DD=1: 64 bc               ROR ER0, 1
0x24a9 DD=1: 04 f4               SJ label_249f
label_24ab:
0x24ab DD=1: 67 fb               DIVQ ER3
0x24ad DD=1: 9a 21 02            JBR PSWH.1, label_24b2
0x24b0 DD=1: bc d7               FILL A
label_24b2:
0x24b2 DD=1: 34 34               ST A, 0x0234
0x24b4 DD=1: 38                  ST A, ER0
0x24b5 DD=1: 22 68 a0            MOV DP, #0xa068
0x24b8 DD=1: b4 38 74            MOVB R4, 0x0238
0x24bb DD=1: 15 1a               MOVB R5, #0x1a
0x24bd DD=1: 45 d6               ACAL label_11d6
0x24bf DD=1: 6c 86 38            MOVB 0x0238, R4
0x24c2 DD=1: 34 36               ST A, 0x0236
0x24c4 DD=1: 22 06 8a            MOV DP, #0x8a06
0x24c7 DD=1: fa                  CLR A
0x24c8 DD=0: 97 42 04            LB A, 0x0442
0x24cb DD=0: bc 8d               SLLB A, 2
0x24cd DD=0: 62 a4               ADD DP, A
label_24cf:
0x24cf DD=0: a2 90 34            CMP [DP], 0x0234
0x24d2 DD=0: f5 08               JGE label_24dc
0x24d4 DD=0: 62 a3 04 00         ADD DP, #0x0004
0x24d8 DD=0: ae 04               ADDB A, #0x04
0x24da DD=0: 04 f3               SJ label_24cf
label_24dc:
0x24dc DD=0: 22 00 8a            MOV DP, #0x8a00
0x24df DD=0: 62 a4               ADD DP, A
label_24e1:
0x24e1 DD=0: a2 90 34            CMP [DP], 0x0234
0x24e4 DD=0: f7 08               JLE label_24ee
0x24e6 DD=0: 62 83 04 00         SUB DP, #0x0004
0x24ea DD=0: 8e 04               SUBB A, #0x04
0x24ec DD=0: 04 f3               SJ label_24e1
label_24ee:
0x24ee DD=0: bc 9d               SRLB A, 2
0x24f0 DD=0: 9e 0a               CMPB A, #0x0a
0x24f2 DD=0: f2 02               JLT label_24f6
0x24f4 DD=0: f9 09               LB A, #0x09
label_24f6:
0x24f6 DD=0: 37 42 04            STB A, 0x0442
0x24f9 DD=0: da                  DI
0x24fa DD=0: a4 3c 86 4c         MOV 0x024c, 0x023c
0x24fe DD=0: a4 44 86 4e         MOV 0x024e, 0x0244
0x2502 DD=0: a7 16 04 86 44      MOV 0x0244, 0x0416
0x2507 DD=0: b4 e9 13            MB C, 0x02e9.3
0x250a DD=0: b4 e9 1c            MB 0x02e9.4, C
0x250d DD=0: b4 e9 10            MB C, 0x02e9.0
0x2510 DD=0: b4 e9 19            MB 0x02e9.1, C
0x2513 DD=0: b4 e9 15            MB C, 0x02e9.5
0x2516 DD=0: b4 e9 1e            MB 0x02e9.6, C
0x2519 DD=0: 48 53               RB sbaoff d3.0
0x251b DD=0: 9a 16               MB C, PSWH.6
0x251d DD=0: fd                  CPL C
0x251e DD=0: b5 d3 1c            MB off(0xd3).4, C
0x2521 DD=0: 49 53               RB sbaoff d3.1
0x2523 DD=0: 9a 16               MB C, PSWH.6
0x2525 DD=0: fd                  CPL C
0x2526 DD=0: b5 d3 1d            MB off(0xd3).5, C
0x2529 DD=0: db                  EI
0x252a DD=1: 84 4c               L A, 0x024c
0x252c DD=1: 59 e4 31            JBR sbafix 02e4.1, label_2560
0x252f DD=1: 5c e9 2e            JBR sbafix 02e9.4, label_2560
0x2532 DD=1: fa                  CLR A
0x2533 DD=1: b4 78 97            MOVB A, 0x0278
0x2536 DD=1: 3c                  ST A, X1
0x2537 DD=0: 98 5f 80            LB A, 0x805f[X1]
0x253a DD=0: b8 46 04 85         SUBB A, 0x0446[X1]
0x253e DD=0: f5 01               JGE label_2541
0x2540 DD=0: fb                  CLRB A
label_2541:
0x2541 DD=0: 34 52               STB A, 0x0252
0x2543 DD=1: fc                  EXTND
0x2544 DD=1: a4 4e a9            MUL 0x024e
0x2547 DD=1: 74                  L A, ER0
0x2548 DD=1: a7 0e 04 a9         MUL 0x040e
0x254c DD=1: 25 20 4e            MOV ER1, #0x4e20
0x254f DD=1: 65 fb               DIVQ ER1
0x2551 DD=1: 9a 29 09            JBS PSWH.1, label_255d
0x2554 DD=1: ac 4c               ADD A, 0x024c
0x2556 DD=1: f2 05               JLT label_255d
0x2558 DD=1: 9e ff 03            CMP A, #0x03ff
0x255b DD=1: f2 03               JLT label_2560
label_255d:
0x255d DD=1: f8 ff 03            L A, #0x03ff
label_2560:
0x2560 DD=1: 34 50               ST A, 0x0250
0x2562 DD=1: 38                  ST A, ER0
0x2563 DD=1: 22 20 a0            MOV DP, #0xa020
0x2566 DD=1: b4 53 74            MOVB R4, 0x0253
0x2569 DD=1: 15 12               MOVB R5, #0x12
0x256b DD=1: 45 d6               ACAL label_11d6
0x256d DD=1: 6c 86 53            MOVB 0x0253, R4
0x2570 DD=1: 34 54               ST A, 0x0254
0x2572 DD=1: fa                  CLR A
0x2573 DD=0: 94 78               LB A, 0x0278
0x2575 DD=0: 8f                  SLLB A
0x2576 DD=0: 60 aa               MOV X1, A
0x2578 DD=1: f8 8e 01            L A, #0x018e
0x257b DD=1: 58 94 14            JBS sbafix 02d4.0, label_2592
0x257e DD=1: 59 94 11            JBS sbafix 02d4.1, label_2592
0x2581 DD=1: 87 12 04            L A, 0x0412
0x2584 DD=1: bc 9f               SRL A, 4
0x2586 DD=1: bc 9d               SRL A, 2
0x2588 DD=1: 9e 9a 03            CMP A, #0x039a
0x258b DD=1: f0 0b               JGT label_2598
0x258d DD=1: 9e 2c 00            CMP A, #0x002c
0x2590 DD=1: f2 06               JLT label_2598
label_2592:
0x2592 DD=1: 58 50               RB sbafix 02d0.0
0x2594 DD=1: 34 56               ST A, 0x0256
0x2596 DD=1: 04 04               SJ label_259c
label_2598:
0x2598 DD=1: 58 10               SB sbafix 02d0.0
0x259a DD=1: 84 56               L A, 0x0256
label_259c:
0x259c DD=1: c8 58 02            ST A, 0x0258[X1]
0x259f DD=1: 38                  ST A, ER0
0x25a0 DD=1: 22 44 a0            MOV DP, #0xa044
0x25a3 DD=1: b4 62 74            MOVB R4, 0x0262
0x25a6 DD=1: 15 12               MOVB R5, #0x12
0x25a8 DD=1: 45 d6               ACAL label_11d6
0x25aa DD=1: 6c 86 62            MOVB 0x0262, R4
0x25ad DD=1: 34 60               ST A, 0x0260
0x25af DD=1: fa                  CLR A
0x25b0 DD=1: ca                  RC
0x25b1 DD=1: 58 e4 1e            JBR sbafix 02e4.0, label_25d2
0x25b4 DD=1: 58 a6 21            JBS sbafix 02e6.0, label_25d8
0x25b7 DD=0: 94 d6               LB A, 0x02d6
0x25b9 DD=0: be 60               ANDB A, #0x60
0x25bb DD=0: f6 1b               JNE label_25d8
0x25bd DD=1: 87 14 04            L A, 0x0414
0x25c0 DD=1: bc 9f               SRL A, 4
0x25c2 DD=1: bc 9d               SRL A, 2
0x25c4 DD=1: 24 9a 03            MOV ER0, #0x039a
0x25c7 DD=1: 64 94               CMP ER0, A
0x25c9 DD=1: f2 05               JLT label_25d0
0x25cb DD=1: 9e 2c 00            CMP A, #0x002c
0x25ce DD=1: f5 02               JGE label_25d2
label_25d0:
0x25d0 DD=1: 84 64               L A, 0x0264
label_25d2:
0x25d2 DD=1: b4 d1 18            MB 0x02d1.0, C
0x25d5 DD=1: 03 21 26            J label_2621
label_25d8:
0x25d8 DD=0: 94 d4               LB A, 0x02d4
0x25da DD=0: be 03               ANDB A, #0x03
0x25dc DD=0: f6 0a               JNE label_25e8
0x25de DD=1: 87 12 04            L A, 0x0412
0x25e1 DD=1: bc 9f               SRL A, 4
0x25e3 DD=1: bc 9d               SRL A, 2
0x25e5 DD=1: 03 1f 26            J label_261f
label_25e8:
0x25e8 DD=0: a4 4c 70            MOV ER0, 0x024c
0x25eb DD=0: b4 6c 74            MOVB R4, 0x026c
0x25ee DD=0: 15 08               MOVB R5, #0x08
0x25f0 DD=0: 22 a4 eb            MOV DP, #0xeba4
0x25f3 DD=0: 45 d6               ACAL label_11d6
0x25f5 DD=0: 34 68               STB A, 0x0268
0x25f7 DD=0: 6c 86 6c            MOVB 0x026c, R4
0x25fa DD=0: 22 90 eb            MOV DP, #0xeb90
0x25fd DD=0: a4 34 70            MOV ER0, 0x0234
0x2600 DD=0: b4 6d 74            MOVB R4, 0x026d
0x2603 DD=0: 15 0a               MOVB R5, #0x0a
0x2605 DD=0: 45 d6               ACAL label_11d6
0x2607 DD=0: 6c 86 6d            MOVB 0x026d, R4
0x260a DD=0: 34 6a               STB A, 0x026a
0x260c DD=0: 3c                  STB A, R4
0x260d DD=0: 7c                  LB A, R4
0x260e DD=0: b4 6c 71            MOVB R1, 0x026c
0x2611 DD=0: 16 08               MOVB R6, #0x08
0x2613 DD=0: a4 68 72            MOV ER2, 0x0268
0x2616 DD=0: 22 b4 eb            MOV DP, #0xebb4
0x2619 DD=0: 46 56               ACAL label_1256
0x261b DD=0: 34 66               STB A, 0x0266
0x261d DD=0: 4f 18               SB sbaoff d8.7
label_261f:
0x261f DD=0: 58 51               RB sbafix 02d1.0
label_2621:
0x2621 DD=0: 34 64               STB A, 0x0264
0x2623 DD=0: 8e 00               SUBB A, #0x00
0x2625 DD=0: 02                  RTI
0x2626 DD=1: f5 01               JGE label_2629
0x2628 DD=1: fa                  CLR A
label_2629:
0x2629 DD=1: 9f                  SRL A
0x262a DD=0: d8                  RDD
0x262b DD=0: 34 63               STB A, 0x0263
0x262d DD=0: b7 53 06 85         SUBB A, 0x0653
0x2631 DD=0: da                  DI
0x2632 DD=0: b5 d8 1c            MB off(0xd8).4, C
0x2635 DD=0: f5 01               JGE label_2638
0x2637 DD=0: cf                  NEGB A
label_2638:
0x2638 DD=0: 35 54               STB A, off(0x54)
0x263a DD=0: db                  EI
0x263b DD=0: b4 f0 13            MB C, 0x02f0.3
0x263e DD=0: b4 f0 1c            MB 0x02f0.4, C
0x2641 DD=1: f8 14 00            L A, #0x0014
0x2644 DD=1: 38                  ST A, ER0
0x2645 DD=1: f8 0a 00            L A, #0x000a
0x2648 DD=1: 39                  ST A, ER1
0x2649 DD=1: f2 01               JLT label_264c
0x264b DD=1: 74                  L A, ER0
label_264c:
0x264c DD=1: 9c 4c               CMP A, 0x024c
0x264e DD=1: b4 f0 1b            MB 0x02f0.3, C
0x2651 DD=1: f8 a5 0f            L A, #0x0fa5
0x2654 DD=1: 37 50 05            ST A, 0x0550
0x2657 DD=1: 3b                  ST A, ER3
0x2658 DD=1: ae d8 02            ADD A, #0x02d8
0x265b DD=1: f5 02               JGE label_265f
0x265d DD=1: bc d7               FILL A
label_265f:
0x265f DD=1: 37 52 05            ST A, 0x0552
0x2662 DD=1: 3a                  ST A, ER2
0x2663 DD=1: b7 ea 05 23 01      JBR 0x05ea.3, label_2669
0x2668 DD=1: 77                  L A, ER3
label_2669:
0x2669 DD=1: 9c 34               CMP A, 0x0234
0x266b DD=1: b7 ea 05 1b         MB 0x05ea.3, C
0x266f DD=1: b4 f0 11            MB C, 0x02f0.1
0x2672 DD=1: b4 f0 1a            MB 0x02f0.2, C
0x2675 DD=1: f5 04               JGE label_267b
0x2677 DD=1: 66 73               MOV ER3, ER2
0x2679 DD=1: 64 71               MOV ER1, ER0
label_267b:
0x267b DD=1: 67 90 34            CMP ER3, 0x0234
0x267e DD=1: f2 03               JLT label_2683
0x2680 DD=1: 65 90 4c            CMP ER1, 0x024c
label_2683:
0x2683 DD=1: fd                  CPL C
0x2684 DD=1: b4 f0 19            MB 0x02f0.1, C
0x2687 DD=1: 5b e2 38            JBR sbafix 02e2.3, label_26c2
0x268a DD=1: 22 aa 80            MOV DP, #0x80aa
0x268d DD=1: 5a f1 03            JBR sbafix 02f1.2, label_2693
0x2690 DD=1: 22 30 84            MOV DP, #0x8430
label_2693:
0x2693 DD=1: 84 34               L A, 0x0234
0x2695 DD=1: 14 07               MOVB R4, #0x07
loop_2697:
0x2697 DD=1: a1 95               CMP A, [DP-]
0x2699 DD=1: f5 02               JGE label_269d
0x269b DD=1: 05 7a               DJNZ R4, loop_2697
label_269d:
0x269d DD=1: 6c 87 76            MOVB off(0x76), R4
0x26a0 DD=1: 6c 70               MOVB R0, R4
0x26a2 DD=1: 68 8c               SLLB R0, 1
0x26a4 DD=1: 20 c6 80            MOV X1, #0x80c6
0x26a7 DD=1: ab 97               MOV A, [X1+R0]
0x26a9 DD=1: 9c 64               CMP A, 0x0264
0x26ab DD=1: 9a 56               BOR C, PSWH.6
0x26ad DD=1: b5 d5 18            MB off(0xd5).0, C
0x26b0 DD=0: 94 78               LB A, 0x0278
0x26b2 DD=0: b7 c5 04 b8         SBR 0x04c5.(AL)
0x26b6 DD=0: 95 d2               LB A, off(0xd2)
0x26b8 DD=0: be 30               ANDB A, #0x30
0x26ba DD=0: f6 06               JNE label_26c2
0x26bc DD=0: 95 d3               LB A, off(0xd3)
0x26be DD=0: be 30               ANDB A, #0x30
0x26c0 DD=0: f1 03               JEQ label_26c5
label_26c2:
0x26c2 DD=0: 03 35 27            J label_2735
label_26c5:
0x26c5 DD=0: 22 88 80            MOV DP, #0x8088
0x26c8 DD=0: 5a f1 03            JBR sbafix 02f1.2, label_26ce
0x26cb DD=0: 22 12 84            MOV DP, #0x8412
label_26ce:
0x26ce DD=0: 6f c7               CLRB R7
0x26d0 DD=0: a5 68 74            MOV X1, off(0x68)
0x26d3 DD=0: 8b 04 90 34         CMP 4[DP], 0x0234
0x26d7 DD=0: f0 18               JGT label_26f1
0x26d9 DD=0: 8b 06 90 34         CMP 6[DP], 0x0234
0x26dd DD=0: f2 12               JLT label_26f1
0x26df DD=0: 20 1e 83            MOV X1, #0x831e
0x26e2 DD=0: 5a f1 03            JBR sbafix 02f1.2, label_26e8
0x26e5 DD=0: 20 84 86            MOV X1, #0x8684
label_26e8:
0x26e8 DD=0: f9 1e               LB A, #0x1e
0x26ea DD=0: b5 76 a9            MULB off(0x76)
0x26ed DD=0: 60 a4               ADD X1, A
0x26ef DD=0: 6f 09               SB R7.1
label_26f1:
0x26f1 DD=0: a5 6a 75            MOV X2, off(0x6a)
0x26f4 DD=0: a2 90 34            CMP [DP], 0x0234
0x26f7 DD=0: f0 26               JGT label_271f
0x26f9 DD=0: 8b 02 90 34         CMP 2[DP], 0x0234
0x26fd DD=0: f2 20               JLT label_271f
0x26ff DD=0: 21 ae 81            MOV X2, #0x81ae
0x2702 DD=0: 5a f1 03            JBR sbafix 02f1.2, label_2708
0x2705 DD=0: 21 24 85            MOV X2, #0x8524
label_2708:
0x2708 DD=0: f9 2e               LB A, #0x2e
0x270a DD=0: b5 76 a9            MULB off(0x76)
0x270d DD=0: 61 a4               ADD X2, A
0x270f DD=0: 6f 08               SB R7.0
0x2711 DD=0: 24 59 8c            MOV ER0, #0x8c59
0x2714 DD=0: f9 05               LB A, #0x05
0x2716 DD=0: b5 76 a9            MULB off(0x76)
0x2719 DD=0: 64 a4               ADD ER0, A
0x271b DD=0: 64 9b 3e 05         MOV 0x053e, ER0
label_271f:
0x271f DD=0: da                  DI
0x2720 DD=0: 95 d3               LB A, off(0xd3)
0x2722 DD=0: be 03               ANDB A, #0x03
0x2724 DD=0: f6 0e               JNE label_2734
0x2726 DD=0: 60 87 68            MOV off(0x68), X1
0x2729 DD=0: 61 87 6a            MOV off(0x6a), X2
0x272c DD=0: 7f                  LB A, R7
0x272d DD=0: b5 d2 b3 f8         ANDB off(0xd2), #0xf8
0x2731 DD=0: b5 d2 c4            OR off(0xd2), A
label_2734:
0x2734 DD=0: db                  EI
label_2735:
0x2735 DD=0: 58 af 06            JBS sbafix 02ef.0, label_273e
0x2738 DD=0: 59 a8 06            JBS sbafix 02e8.1, label_2741
0x273b DD=0: 5d a8 03            JBS sbafix 02e8.5, label_2741
label_273e:
0x273e DD=0: 03 72 30            J label_3072
label_2741:
0x2741 DD=0: 5b ef 44            JBR sbafix 02ef.3, label_2788
0x2744 DD=0: 22 00 80            MOV DP, #0x8000
0x2747 DD=0: 44 2c               ACAL label_102c
0x2749 DD=0: 35 00               STB A, off(0x00)
0x274b DD=0: b5 4e 71            MOVB R1, off(0x4e)
0x274e DD=0: 68 c7               CLRB R0
0x2750 DD=0: 64 a9               MUL ER0
0x2752 DD=0: 69 8c               SLLB R1, 1
0x2754 DD=1: d9                  SDD
0x2755 DD=1: af                  ROL A
0x2756 DD=1: f5 02               JGE label_275a
0x2758 DD=1: bc d7               FILL A
label_275a:
0x275a DD=1: 35 02               ST A, off(0x02)
0x275c DD=1: 22 34 03            MOV DP, #0x0334
0x275f DD=1: 33                  ST A, [DP+]
0x2760 DD=1: 33                  ST A, [DP+]
0x2761 DD=1: 33                  ST A, [DP+]
0x2762 DD=1: 32                  ST A, [DP]
0x2763 DD=1: 4a 11               SB sbaoff d1.2
0x2765 DD=1: 22 27 80            MOV DP, #0x8027
0x2768 DD=1: 44 2c               ACAL label_102c
0x276a DD=1: 35 06               ST A, off(0x06)
0x276c DD=1: b5 05 c7            CLRB off(0x05)
0x276f DD=1: 26 00 20            MOV ER2, #0x2000
0x2772 DD=1: 0a                  SUB A, ER2
0x2773 DD=1: 3b                  ST A, ER3
0x2774 DD=1: 6a c7               CLRB R2
0x2776 DD=1: 13 66               MOVB R3, #0x66
0x2778 DD=1: 65 a9               MUL ER1
0x277a DD=1: 2a                  ADD A, ER2
0x277b DD=1: 35 08               ST A, off(0x08)
0x277d DD=1: 77                  L A, ER3
0x277e DD=1: 13 33               MOVB R3, #0x33
0x2780 DD=1: 65 a9               MUL ER1
0x2782 DD=1: 2a                  ADD A, ER2
0x2783 DD=1: 35 0a               ST A, off(0x0a)
0x2785 DD=1: 03 82 2f            J label_2f82
label_2788:
0x2788 DD=0: 4a d1 2c            JBR sbaoff d1.2, label_27b7
0x278b DD=1: 85 06               L A, off(0x06)
0x278d DD=1: 24 6c 07            MOV ER0, #0x076c
0x2790 DD=1: b6 07 93 2a         CMPB ACCH, #0x2a
0x2794 DD=1: f2 04               JLT label_279a
0x2796 DD=1: 9d 08               CMP A, off(0x08)
0x2798 DD=1: f5 0a               JGE label_27a4
label_279a:
0x279a DD=1: 24 c8 02            MOV ER0, #0x02c8
0x279d DD=1: 9d 0a               CMP A, off(0x0a)
0x279f DD=1: f5 03               JGE label_27a4
0x27a1 DD=1: 24 64 01            MOV ER0, #0x0164
label_27a4:
0x27a4 DD=1: 64 c8               XCHG A, ER0
0x27a6 DD=1: b5 05 84            SUBB off(0x05), A
0x27a9 DD=1: df                  SWAP
0x27aa DD=1: 64 c8               XCHG A, ER0
0x27ac DD=1: 69 c7               CLRB R1
0x27ae DD=1: 64 e5               SBC A, ER0
0x27b0 DD=1: 9e 00 20            CMP A, #0x2000
0x27b3 DD=1: f0 05               JGT label_27ba
0x27b5 DD=1: 4a 51               RB sbaoff d1.2
label_27b7:
0x27b7 DD=1: f8 00 20            L A, #0x2000
label_27ba:
0x27ba DD=1: 35 06               ST A, off(0x06)
0x27bc DD=1: 59 e5 08            JBR sbafix 02e5.1, label_27c7
0x27bf DD=1: 59 f3 05            JBR sbafix 02f3.1, label_27c7
0x27c2 DD=1: 5b f4 0d            JBR sbafix 02f4.3, label_27d2
0x27c5 DD=1: 04 03               SJ label_27ca
label_27c7:
0x27c7 DD=1: 5a e5 08            JBR sbafix 02e5.2, label_27d2
label_27ca:
0x27ca DD=1: b4 f4 12            MB C, 0x02f4.2
0x27cd DD=1: b4 f0 18            MB 0x02f0.0, C
0x27d0 DD=1: 04 29               SJ label_27fb
label_27d2:
0x27d2 DD=0: 94 d4               LB A, 0x02d4
0x27d4 DD=0: be 03               ANDB A, #0x03
0x27d6 DD=0: f6 17               JNE label_27ef
0x27d8 DD=0: 22 3d 80            MOV DP, #0x803d
0x27db DD=1: 84 34               L A, 0x0234
0x27dd DD=1: 44 a3               ACAL label_10a3
0x27df DD=1: 58 b0 11            JBS sbafix 02f0.0, label_27f3
0x27e2 DD=1: ae 04 00            ADD A, #0x0004
0x27e5 DD=1: f5 02               JGE label_27e9
0x27e7 DD=1: bc d7               FILL A
label_27e9:
0x27e9 DD=1: 35 0c               ST A, off(0x0c)
0x27eb DD=1: 9c 4c               CMP A, 0x024c
0x27ed DD=1: f5 0c               JGE label_27fb
label_27ef:
0x27ef DD=1: 58 30               SB sbafix 02f0.0
0x27f1 DD=1: 04 08               SJ label_27fb
label_27f3:
0x27f3 DD=1: 35 0c               ST A, off(0x0c)
0x27f5 DD=1: 9c 4c               CMP A, 0x024c
0x27f7 DD=1: f7 02               JLE label_27fb
0x27f9 DD=1: 58 70               RB sbafix 02f0.0
label_27fb:
0x27fb DD=1: fa                  CLR A
0x27fc DD=0: 94 78               LB A, 0x0278
0x27fe DD=0: 61 aa               MOV X2, A
0x2800 DD=1: f8 a8 03            L A, #0x03a8
0x2803 DD=1: 61 a9               MUL X2
0x2805 DD=1: 74                  L A, ER0
0x2806 DD=1: 58 b0 0d            JBS sbafix 02f0.0, label_2816
0x2809 DD=1: 22 10 b1            MOV DP, #0xb110
0x280c DD=1: 62 a4               ADD DP, A
0x280e DD=1: b4 62 71            MOVB R1, 0x0262
0x2811 DD=1: a4 60 72            MOV ER2, 0x0260
0x2814 DD=1: 04 0b               SJ label_2821
label_2816:
0x2816 DD=1: 22 50 ce            MOV DP, #0xce50
0x2819 DD=1: 62 a4               ADD DP, A
0x281b DD=1: b4 3f 71            MOVB R1, 0x023f
0x281e DD=1: a4 40 72            MOV ER2, 0x0240
label_2821:
0x2821 DD=0: 94 38               LB A, 0x0238
0x2823 DD=0: a4 36 74            MOV X1, 0x0236
0x2826 DD=0: 16 12               MOVB R6, #0x12
0x2828 DD=0: 46 56               ACAL label_1256
0x282a DD=0: 61 74               MOV X1, X2
0x282c DD=0: 60 8c               SLL X1, 1
0x282e DD=0: c8 0e 03            STB A, 0x030e[X1]
0x2831 DD=0: c8 16 03            STB A, 0x0316[X1]
0x2834 DD=1: fa                  CLR A
0x2835 DD=0: 94 78               LB A, 0x0278
0x2837 DD=0: 61 aa               MOV X2, A
0x2839 DD=0: 61 74               MOV X1, X2
0x283b DD=0: 60 8c               SLL X1, 1
0x283d DD=0: 65 c7               CLR ER1
0x283f DD=0: b7 17 06 75         MOVB R5, 0x0617
0x2843 DD=0: a7 14 06 73         MOV ER3, 0x0614
0x2847 DD=0: 58 b0 14            JBS sbafix 02f0.0, label_285e
0x284a DD=0: b7 16 06 75         MOVB R5, 0x0616
0x284e DD=0: a7 12 06 73         MOV ER3, 0x0612
0x2852 DD=0: d4 70 00            CMPB 0x0270, #0x00
0x2855 DD=0: f5 07               JGE label_285e
0x2857 DD=0: 59 f0 04            JBR sbafix 02f0.1, label_285e
0x285a DD=0: a8 1e 03 71         MOV ER1, 0x031e[X1]
label_285e:
0x285e DD=1: 88 0e 03            L A, 0x030e[X1]
0x2861 DD=1: 6c c7               CLRB R4
0x2863 DD=1: 66 a9               MUL ER2
0x2865 DD=1: 69 8c               SLLB R1, 1
0x2867 DD=1: af                  ROL A
0x2868 DD=1: f5 02               JGE label_286c
0x286a DD=1: bc d7               FILL A
label_286c:
0x286c DD=1: 2b                  ADD A, ER3
0x286d DD=1: 6f 2f 06            JBS R7.7, label_2876
0x2870 DD=1: f5 07               JGE label_2879
0x2872 DD=1: bc d7               FILL A
0x2874 DD=1: 04 03               SJ label_2879
label_2876:
0x2876 DD=1: f2 01               JLT label_2879
0x2878 DD=1: fa                  CLR A
label_2879:
0x2879 DD=1: 29                  ADD A, ER1
0x287a DD=1: 6b 2f 06            JBS R3.7, label_2883
0x287d DD=1: f5 07               JGE label_2886
0x287f DD=1: bc d7               FILL A
0x2881 DD=1: 04 03               SJ label_2886
label_2883:
0x2883 DD=1: f2 01               JLT label_2886
0x2885 DD=1: fa                  CLR A
label_2886:
0x2886 DD=1: 6a c7               CLRB R2
0x2888 DD=1: b9 26 03 73         MOVB R3, 0x0326[X2]
0x288c DD=1: 65 a9               MUL ER1
0x288e DD=1: 69 8c               SLLB R1, 1
0x2890 DD=1: af                  ROL A
0x2891 DD=1: f5 02               JGE label_2895
0x2893 DD=1: bc d7               FILL A
label_2895:
0x2895 DD=1: c8 2a 03            ST A, 0x032a[X1]
0x2898 DD=1: 22 10 b1            MOV DP, #0xb110
0x289b DD=1: b4 62 71            MOVB R1, 0x0262
0x289e DD=1: a4 60 72            MOV ER2, 0x0260
0x28a1 DD=1: 58 f0 09            JBR sbafix 02f0.0, label_28ad
0x28a4 DD=1: 22 50 ce            MOV DP, #0xce50
0x28a7 DD=1: b4 3f 71            MOVB R1, 0x023f
0x28aa DD=1: a4 40 72            MOV ER2, 0x0240
label_28ad:
0x28ad DD=0: 94 38               LB A, 0x0238
0x28af DD=0: a4 36 74            MOV X1, 0x0236
0x28b2 DD=0: 16 12               MOVB R6, #0x12
0x28b4 DD=0: 46 56               ACAL label_1256
0x28b6 DD=0: 35 16               STB A, off(0x16)
0x28b8 DD=0: 5b e2 11            JBR sbafix 02e2.3, label_28cc
0x28bb DD=0: 5d e2 05            JBR sbafix 02e2.5, label_28c3
0x28be DD=0: b7 c2 06 2d 09      JBS 0x06c2.5, label_28cc
label_28c3:
0x28c3 DD=0: 59 a9 10            JBS sbafix 02e9.1, label_28d6
0x28c6 DD=0: a5 70 c7            CLR off(0x70)
0x28c9 DD=0: a5 72 c7            CLR off(0x72)
label_28cc:
0x28cc DD=0: b5 8d c7            CLRB off(0x8d)
0x28cf DD=0: 4b 52               RB sbaoff d2.3
0x28d1 DD=0: 4b 53               RB sbaoff d3.3
0x28d3 DD=0: 03 dc 2a            J label_2adc
label_28d6:
0x28d6 DD=0: 68 c7               CLRB R0
0x28d8 DD=0: 22 82 80            MOV DP, #0x8082
0x28db DD=0: 5c e9 14            JBR sbafix 02e9.4, label_28f2
0x28de DD=1: 84 4e               L A, 0x024e
0x28e0 DD=1: a3 95               CMP A, [DP+]
0x28e2 DD=1: f2 0e               JLT label_28f2
0x28e4 DD=1: 10 01               MOVB R0, #0x01
0x28e6 DD=1: a3 95               CMP A, [DP+]
0x28e8 DD=1: f2 08               JLT label_28f2
0x28ea DD=1: 10 02               MOVB R0, #0x02
0x28ec DD=1: a2 95               CMP A, [DP]
0x28ee DD=1: f2 02               JLT label_28f2
0x28f0 DD=1: 10 04               MOVB R0, #0x04
label_28f2:
0x28f2 DD=0: 78                  LB A, R0
0x28f3 DD=0: b5 70 c8            XCHGB A, off(0x70)
0x28f6 DD=0: 68 a4               ADDB R0, A
0x28f8 DD=0: b5 71 c8            XCHGB A, off(0x71)
0x28fb DD=0: 68 a4               ADDB R0, A
0x28fd DD=0: b5 72 c8            XCHGB A, off(0x72)
0x2900 DD=0: 68 a4               ADDB R0, A
0x2902 DD=0: 35 73               STB A, off(0x73)
0x2904 DD=0: 68 87 74            MOVB off(0x74), R0
0x2907 DD=0: 68 93 04            CMPB R0, #0x04
0x290a DD=0: fd                  CPL C
0x290b DD=0: b5 d2 1b            MB off(0xd2).3, C
0x290e DD=0: 4d 93 29            JBS sbaoff d3.5, label_293a
0x2911 DD=0: 4c d3 13            JBR sbaoff d3.4, label_2927
0x2914 DD=0: 4b 13               SB sbaoff d3.3
0x2916 DD=0: 4c 12               SB sbaoff d2.4
0x2918 DD=0: a5 7c c7            CLR off(0x7c)
0x291b DD=0: b5 75 c7            CLRB off(0x75)
0x291e DD=0: a5 78 87 7a         MOV off(0x7a), off(0x78)
0x2922 DD=0: a5 6a 76            MOV DP, off(0x6a)
0x2925 DD=0: 04 1f               SJ label_2946
label_2927:
0x2927 DD=0: 95 d2               LB A, off(0xd2)
0x2929 DD=0: be 30               ANDB A, #0x30
0x292b DD=0: f6 23               JNE label_2950
0x292d DD=0: 4b d2 20            JBR sbaoff d2.3, label_2950
0x2930 DD=0: da                  DI
0x2931 DD=0: 95 d3               LB A, off(0xd3)
0x2933 DD=0: be 03               ANDB A, #0x03
0x2935 DD=0: f6 19               JNE label_2950
0x2937 DD=0: 49 d2 16            JBR sbaoff d2.1, label_2950
label_293a:
0x293a DD=0: 4d 12               SB sbaoff d2.5
0x293c DD=0: a5 7c c7            CLR off(0x7c)
0x293f DD=0: a5 78 87 7a         MOV off(0x7a), off(0x78)
0x2943 DD=0: a5 68 76            MOV DP, off(0x68)
label_2946:
0x2946 DD=0: 62 a3 04 00         ADD DP, #0x0004
0x294a DD=0: 62 87 6c            MOV off(0x6c), DP
0x294d DD=0: d7 8b 04            MOVB off(0x8b), #0x04
label_2950:
0x2950 DD=0: db                  EI
0x2951 DD=0: 4d 92 03            JBS sbaoff d2.5, label_2957
0x2954 DD=0: 03 b3 29            J label_29b3
label_2957:
0x2957 DD=1: 84 4e               L A, 0x024e
0x2959 DD=1: 5c a9 09            JBS sbafix 02e9.4, label_2965
0x295c DD=1: a7 9a 80 95         CMP A, 0x809a
0x2960 DD=1: f7 1c               JLE label_297e
0x2962 DD=1: 03 dc 2a            J label_2adc
label_2965:
0x2965 DD=1: 5e a9 16            JBS sbafix 02e9.6, label_297e
0x2968 DD=1: 4b d2 13            JBR sbaoff d2.3, label_297e
0x296b DD=1: a7 82 80 95         CMP A, 0x8082
0x296f DD=1: f2 0d               JLT label_297e
0x2971 DD=1: 87 96 80            L A, 0x8096
0x2974 DD=1: 5a f1 03            JBR sbafix 02f1.2, label_297a
0x2977 DD=1: 87 20 84            L A, 0x8420
label_297a:
0x297a DD=1: 9c 34               CMP A, 0x0234
0x297c DD=1: f5 07               JGE label_2985
label_297e:
0x297e DD=1: b5 8b a6 25         TJNZB off(0x8b), label_29a7
0x2982 DD=1: 03 97 2a            J label_2a97
label_2985:
0x2985 DD=1: a5 6c 76            MOV DP, off(0x6c)
0x2988 DD=0: 99 12               LB A, 18[DP]
0x298a DD=0: 35 8a               STB A, off(0x8a)
0x298c DD=0: 35 86               STB A, off(0x86)
0x298e DD=0: 35 87               STB A, off(0x87)
0x2990 DD=0: 35 88               STB A, off(0x88)
0x2992 DD=0: 35 89               STB A, off(0x89)
0x2994 DD=1: 72                  L A, DP
0x2995 DD=1: ae 13 00            ADD A, #0x0013
0x2998 DD=1: 35 6e               ST A, off(0x6e)
0x299a DD=1: 84 4e               L A, 0x024e
0x299c DD=1: 44 a3               ACAL label_10a3
0x299e DD=1: a5 7a a9            MUL off(0x7a)
0x29a1 DD=1: 10 04               MOVB R0, #0x04
0x29a3 DD=1: 46 c5               ACAL label_12c5
0x29a5 DD=1: 35 7c               ST A, off(0x7c)
label_29a7:
0x29a7 DD=0: 95 8b               LB A, off(0x8b)
0x29a9 DD=0: f1 03               JEQ label_29ae
0x29ab DD=0: b5 8b d6            DECB off(0x8b)
label_29ae:
0x29ae DD=1: 85 7c               L A, off(0x7c)
0x29b0 DD=1: 03 6b 2a            J label_2a6b
label_29b3:
0x29b3 DD=0: 4c 92 03            JBS sbaoff d2.4, label_29b9
0x29b6 DD=0: 03 dc 2a            J label_2adc
label_29b9:
0x29b9 DD=0: 4b d3 51            JBR sbaoff d3.3, label_2a0d
0x29bc DD=0: a5 6c 74            MOV X1, off(0x6c)
0x29bf DD=0: 95 75               LB A, off(0x75)
0x29c1 DD=0: b5 75 c6            INCB off(0x75)
0x29c4 DD=0: 9e 04               CMPB A, #0x04
0x29c6 DD=0: f5 38               JGE label_2a00
0x29c8 DD=0: 8f                  SLLB A
0x29c9 DD=0: aa 97               MOV A, [X1+A]
0x29cb DD=0: f1 33               JEQ label_2a00
0x29cd DD=0: 61 aa               MOV X2, A
0x29cf DD=0: 98 08 00            LB A, 0x0008[X1]
0x29d2 DD=0: 35 8a               STB A, off(0x8a)
0x29d4 DD=0: 35 86               STB A, off(0x86)
0x29d6 DD=0: 35 87               STB A, off(0x87)
0x29d8 DD=0: 35 88               STB A, off(0x88)
0x29da DD=0: 35 89               STB A, off(0x89)
0x29dc DD=0: 60 a3 09 00         ADD X1, #0x0009
0x29e0 DD=0: 60 87 6e            MOV off(0x6e), X1
0x29e3 DD=0: 5c e9 16            JBR sbafix 02e9.4, label_29fc
0x29e6 DD=0: 4b d2 13            JBR sbaoff d2.3, label_29fc
0x29e9 DD=1: 84 4e               L A, 0x024e
0x29eb DD=1: a7 9c 80 95         CMP A, 0x809c
0x29ef DD=1: f2 0b               JLT label_29fc
0x29f1 DD=1: a5 6c 76            MOV DP, off(0x6c)
0x29f4 DD=1: 62 a3 10 00         ADD DP, #0x0010
0x29f8 DD=1: 44 a3               ACAL label_10a3
0x29fa DD=1: f2 04               JLT label_2a00
label_29fc:
0x29fc DD=1: 71                  L A, X2
0x29fd DD=1: 03 59 2a            J label_2a59
label_2a00:
0x2a00 DD=0: d7 8f 02            MOVB off(0x8f), #0x02
0x2a03 DD=0: d7 8d 28            MOVB off(0x8d), #0x28
0x2a06 DD=0: 4b 53               RB sbaoff d3.3
0x2a08 DD=0: a5 6c a3 10 00      ADD off(0x6c), #0x0010
label_2a0d:
0x2a0d DD=1: 84 4e               L A, 0x024e
0x2a0f DD=1: 5c a9 0c            JBS sbafix 02e9.4, label_2a1e
0x2a12 DD=1: a7 9a 80 95         CMP A, 0x809a
0x2a16 DD=1: f7 1f               JLE label_2a37
0x2a18 DD=1: b5 8d c7            CLRB off(0x8d)
0x2a1b DD=1: 03 dc 2a            J label_2adc
label_2a1e:
0x2a1e DD=1: 5e a9 16            JBS sbafix 02e9.6, label_2a37
0x2a21 DD=1: 4b d2 13            JBR sbaoff d2.3, label_2a37
0x2a24 DD=1: a7 82 80 95         CMP A, 0x8082
0x2a28 DD=1: f2 0d               JLT label_2a37
0x2a2a DD=1: 87 94 80            L A, 0x8094
0x2a2d DD=1: 5a f1 03            JBR sbafix 02f1.2, label_2a33
0x2a30 DD=1: 87 1e 84            L A, 0x841e
label_2a33:
0x2a33 DD=1: 9c 34               CMP A, 0x0234
0x2a35 DD=1: f5 07               JGE label_2a3e
label_2a37:
0x2a37 DD=1: b5 8b a6 27         TJNZB off(0x8b), label_2a62
0x2a3b DD=1: 03 97 2a            J label_2a97
label_2a3e:
0x2a3e DD=1: a7 6c 03 76         MOV DP, 0x036c
0x2a42 DD=0: 99 12               LB A, 18[DP]
0x2a44 DD=0: 37 8a 03            STB A, 0x038a
0x2a47 DD=0: 35 86               STB A, off(0x86)
0x2a49 DD=0: 35 87               STB A, off(0x87)
0x2a4b DD=0: 35 88               STB A, off(0x88)
0x2a4d DD=0: 35 89               STB A, off(0x89)
0x2a4f DD=1: 72                  L A, DP
0x2a50 DD=1: ae 13 00            ADD A, #0x0013
0x2a53 DD=1: 35 6e               ST A, off(0x6e)
0x2a55 DD=1: 84 4e               L A, 0x024e
0x2a57 DD=1: 44 a3               ACAL label_10a3
label_2a59:
0x2a59 DD=1: a5 7a a9            MUL off(0x7a)
0x2a5c DD=1: 10 04               MOVB R0, #0x04
0x2a5e DD=1: 46 c5               ACAL label_12c5
0x2a60 DD=1: 35 7c               ST A, off(0x7c)
label_2a62:
0x2a62 DD=0: 95 8b               LB A, off(0x8b)
0x2a64 DD=0: f1 03               JEQ label_2a69
0x2a66 DD=0: b5 8b d6            DECB off(0x8b)
label_2a69:
0x2a69 DD=1: 85 7c               L A, off(0x7c)
label_2a6b:
0x2a6b DD=1: 60 c7               CLR X1
0x2a6d DD=1: 60 c8               XCHG A, X1
0x2a6f DD=1: b4 78 97            MOVB A, 0x0278
0x2a72 DD=1: 8f                  SLL A
0x2a73 DD=1: 60 c8               XCHG A, X1
0x2a75 DD=1: a8 16 03 70         MOV ER0, 0x0316[X1]
0x2a79 DD=1: 64 a9               MUL ER0
0x2a7b DD=1: a5 16 fb            DIVQ off(0x16)
0x2a7e DD=1: 9a 21 02            JBR PSWH.1, label_2a83
0x2a81 DD=1: bc d7               FILL A
label_2a83:
0x2a83 DD=1: 4b 93 0b            JBS sbaoff d3.3, label_2a91
0x2a86 DD=1: a8 7e 03 95         CMP A, 0x037e[X1]
0x2a8a DD=1: f5 05               JGE label_2a91
0x2a8c DD=1: a8 7e 03 a5         ADD A, 0x037e[X1]
0x2a90 DD=1: bf                  ROR A
label_2a91:
0x2a91 DD=1: c8 7e 03            ST A, 0x037e[X1]
0x2a94 DD=1: 03 ef 2a            J label_2aef
label_2a97:
0x2a97 DD=1: fa                  CLR A
0x2a98 DD=0: 94 78               LB A, 0x0278
0x2a9a DD=0: 61 aa               MOV X2, A
0x2a9c DD=0: 8f                  SLLB A
0x2a9d DD=0: 60 aa               MOV X1, A
0x2a9f DD=1: 88 7e 03            L A, 0x037e[X1]
0x2aa2 DD=1: f1 2a               JEQ label_2ace
0x2aa4 DD=1: a5 6e 76            MOV DP, off(0x6e)
0x2aa7 DD=1: a2 95               CMP A, [DP]
0x2aa9 DD=1: f7 0c               JLE label_2ab7
0x2aab DD=1: 8b 02 85            SUB A, 2[DP]
0x2aae DD=1: f2 04               JLT label_2ab4
0x2ab0 DD=1: a2 95               CMP A, [DP]
0x2ab2 DD=1: f0 1b               JGT label_2acf
label_2ab4:
0x2ab4 DD=1: 82                  L A, [DP]
0x2ab5 DD=1: 04 18               SJ label_2acf
label_2ab7:
0x2ab7 DD=1: b9 86 03 70         MOVB R0, 0x0386[X2]
0x2abb DD=1: b9 86 03 d6         DECB 0x0386[X2]
0x2abf DD=1: 68 83 01            SUBB R0, #0x01
0x2ac2 DD=1: f5 0b               JGE label_2acf
0x2ac4 DD=1: b5 8a 99 86 03      MOVB 0x0386[X2], off(0x8a)
0x2ac9 DD=1: 8b 04 85            SUB A, 4[DP]
0x2acc DD=1: f0 01               JGT label_2acf
label_2ace:
0x2ace DD=1: fa                  CLR A
label_2acf:
0x2acf DD=1: c8 7e 03            ST A, 0x037e[X1]
0x2ad2 DD=1: cd 7e               OR A, off(0x7e)
0x2ad4 DD=1: cd 80               OR A, off(0x80)
0x2ad6 DD=1: cd 82               OR A, off(0x82)
0x2ad8 DD=1: cd 84               OR A, off(0x84)
0x2ada DD=1: f6 13               JNE label_2aef
label_2adc:
0x2adc DD=1: fa                  CLR A
0x2add DD=1: 35 7c               ST A, off(0x7c)
0x2adf DD=1: 35 7e               ST A, off(0x7e)
0x2ae1 DD=1: 35 80               ST A, off(0x80)
0x2ae3 DD=1: 35 82               ST A, off(0x82)
0x2ae5 DD=1: 35 84               ST A, off(0x84)
0x2ae7 DD=1: 4d 52               RB sbaoff d2.5
0x2ae9 DD=1: b5 8d a6 02         TJNZB off(0x8d), label_2aef
0x2aed DD=1: 4c 52               RB sbaoff d2.4
label_2aef:
0x2aef DD=0: 94 70               LB A, 0x0270
0x2af1 DD=0: 9e a1               CMPB A, #0xa1
0x2af3 DD=0: b5 d8 1a            MB off(0xd8).2, C
0x2af6 DD=0: 9e 58               CMPB A, #0x58
0x2af8 DD=0: b5 d8 1b            MB off(0xd8).3, C
0x2afb DD=0: 58 a2 21            JBS sbafix 02e2.0, label_2b1f
0x2afe DD=0: 20 64 87            MOV X1, #0x8764
0x2b01 DD=0: 4b 98 09            JBS sbaoff d8.3, label_2b0d
0x2b04 DD=0: 20 6c 87            MOV X1, #0x876c
0x2b07 DD=0: 4a 98 03            JBS sbaoff d8.2, label_2b0d
0x2b0a DD=0: 20 74 87            MOV X1, #0x8774
label_2b0d:
0x2b0d DD=1: 80                  L A, [X1]
0x2b0e DD=1: 49 90 03            JBS sbaoff d0.1, label_2b14
0x2b11 DD=1: 88 02 00            L A, 0x0002[X1]
label_2b14:
0x2b14 DD=1: 60 a3 04 00         ADD X1, #0x0004
0x2b18 DD=1: 60 9b 08 05         MOV 0x0508, X1
0x2b1c DD=1: 03 43 2b            J label_2b43
label_2b1f:
0x2b1f DD=0: 20 7c 87            MOV X1, #0x877c
0x2b22 DD=0: 4b 98 09            JBS sbaoff d8.3, label_2b2e
0x2b25 DD=0: 20 84 87            MOV X1, #0x8784
0x2b28 DD=0: 4a 98 03            JBS sbaoff d8.2, label_2b2e
0x2b2b DD=0: 20 8c 87            MOV X1, #0x878c
label_2b2e:
0x2b2e DD=1: 84 34               L A, 0x0234
0x2b30 DD=1: 38                  ST A, ER0
0x2b31 DD=1: 8d 62               SUB A, off(0x62)
0x2b33 DD=1: 64 87 62            MOV off(0x62), ER0
0x2b36 DD=1: f2 04               JLT label_2b3c
0x2b38 DD=1: 60 a3 04 00         ADD X1, #0x0004
label_2b3c:
0x2b3c DD=1: 88 02 00            L A, 0x0002[X1]
0x2b3f DD=1: 37 06 05            ST A, 0x0506
0x2b42 DD=1: 80                  L A, [X1]
label_2b43:
0x2b43 DD=1: b7 e5 05 0f         SB 0x05e5.7
0x2b47 DD=1: 35 64               ST A, off(0x64)
0x2b49 DD=1: 9c 34               CMP A, 0x0234
0x2b4b DD=1: b5 d0 19            MB off(0xd0).1, C
0x2b4e DD=1: f2 07               JLT label_2b57
0x2b50 DD=1: a7 94 87 90 34      CMP 0x8794, 0x0234
0x2b55 DD=1: f7 11               JLE label_2b68
label_2b57:
0x2b57 DD=1: fd                  CPL C
0x2b58 DD=1: bc d7               FILL A
0x2b5a DD=1: 4a 50               RB sbaoff d0.2
0x2b5c DD=1: f2 2e               JLT label_2b8c
0x2b5e DD=1: 59 e2 01            JBR sbafix 02e2.1, label_2b62
0x2b61 DD=1: fd                  CPL C
label_2b62:
0x2b62 DD=1: b5 d7 1f            MB off(0xd7).7, C
0x2b65 DD=1: ca                  RC
0x2b66 DD=1: 04 24               SJ label_2b8c
label_2b68:
0x2b68 DD=1: 4a 90 1c            JBS sbaoff d0.2, label_2b87
0x2b6b DD=1: 87 96 87            L A, 0x8796
0x2b6e DD=1: 6d c7               CLRB R5
0x2b70 DD=1: b4 78 74            MOVB R4, 0x0278
0x2b73 DD=1: 66 74               MOV X1, ER2
0x2b75 DD=1: b8 98 87 74         MOVB R4, 0x8798[X1]
0x2b79 DD=1: 6c 93 04            CMPB R4, #0x04
0x2b7c DD=1: f5 05               JGE label_2b83
loop_2b7e:
0x2b7e DD=1: bc 10               MB C, A.0
0x2b80 DD=1: bf                  ROR A
0x2b81 DD=1: 05 7b               DJNZ R4, loop_2b7e
label_2b83:
0x2b83 DD=1: 35 60               ST A, off(0x60)
0x2b85 DD=1: 4a 10               SB sbaoff d0.2
label_2b87:
0x2b87 DD=1: 85 60               L A, off(0x60)
0x2b89 DD=1: bc 10               MB C, A.0
0x2b8b DD=1: bf                  ROR A
label_2b8c:
0x2b8c DD=1: 35 60               ST A, off(0x60)
0x2b8e DD=1: fd                  CPL C
0x2b8f DD=1: b5 d0 18            MB off(0xd0).0, C
0x2b92 DD=1: 5a e2 1c            JBR sbafix 02e2.2, label_2bb1
0x2b95 DD=1: b5 d0 13            MB C, off(0xd0).3
0x2b98 DD=1: b5 d0 1c            MB off(0xd0).4, C
0x2b9b DD=1: 5c 94 13            JBS sbafix 02d4.4, label_2bb1
0x2b9e DD=1: 59 a9 10            JBS sbafix 02e9.1, label_2bb1
0x2ba1 DD=1: 84 34               L A, 0x0234
0x2ba3 DD=1: 9e ff ff            CMP A, #0xffff
0x2ba6 DD=1: f0 09               JGT label_2bb1
0x2ba8 DD=1: 9e ff ff            CMP A, #0xffff
0x2bab DD=1: f2 04               JLT label_2bb1
0x2bad DD=1: 4b 10               SB sbaoff d0.3
0x2baf DD=1: 04 02               SJ label_2bb3
label_2bb1:
0x2bb1 DD=1: 4b 50               RB sbaoff d0.3
label_2bb3:
0x2bb3 DD=1: ca                  RC
0x2bb4 DD=1: 59 97 1f            JBS sbafix 02d7.1, label_2bd6
0x2bb7 DD=1: 58 97 08            JBS sbafix 02d7.0, label_2bc2
0x2bba DD=1: 5b dc 0a            JBR sbafix 02dc.3, label_2bc7
0x2bbd DD=1: b5 93 a6 1c         TJNZB off(0x93), label_2bdd
0x2bc1 DD=1: cb                  SC
label_2bc2:
0x2bc2 DD=1: b4 d1 1b            MB 0x02d1.3, C
0x2bc5 DD=1: 04 12               SJ label_2bd9
label_2bc7:
0x2bc7 DD=1: d7 93 14            MOVB off(0x93), #0x14
0x2bca DD=0: f9 0c               LB A, #0x0c
0x2bcc DD=0: 9c a2               CMPB A, 0x02a2
0x2bce DD=0: f5 0d               JGE label_2bdd
0x2bd0 DD=0: 94 6f               LB A, 0x026f
0x2bd2 DD=0: 9e 1f               CMPB A, #0x1f
0x2bd4 DD=0: f5 07               JGE label_2bdd
label_2bd6:
0x2bd6 DD=0: b4 d1 1d            MB 0x02d1.5, C
label_2bd9:
0x2bd9 DD=0: b7 c2 06 09         SB 0x06c2.1
label_2bdd:
0x2bdd DD=0: 58 e4 31            JBR sbafix 02e4.0, label_2c11
0x2be0 DD=0: cb                  SC
0x2be1 DD=0: 5f 96 27            JBS sbafix 02d6.7, label_2c0b
0x2be4 DD=0: 22 a8 87            MOV DP, #0x87a8
0x2be7 DD=1: 84 34               L A, 0x0234
0x2be9 DD=1: 44 a3               ACAL label_10a3
0x2beb DD=1: 64 c7               CLR ER0
0x2bed DD=1: b5 57 70            MOVB R0, off(0x57)
0x2bf0 DD=1: 64 8c               SLL ER0, 1
0x2bf2 DD=1: 08                  SUB A, ER0
0x2bf3 DD=1: f5 01               JGE label_2bf6
0x2bf5 DD=1: fa                  CLR A
label_2bf6:
0x2bf6 DD=1: 35 58               ST A, off(0x58)
0x2bf8 DD=1: 9c 64               CMP A, 0x0264
0x2bfa DD=1: f5 0a               JGE label_2c06
0x2bfc DD=1: ca                  RC
0x2bfd DD=1: b7 b6 06 a6 0b      TJNZB 0x06b6, label_2c0d
0x2c02 DD=1: 5a 11               SB sbafix 02d1.2
0x2c04 DD=1: 04 0b               SJ label_2c11
label_2c06:
0x2c06 DD=1: b7 b6 06 ab 05      MOVB 0x06b6, #0x05
label_2c0b:
0x2c0b DD=1: 5a 51               RB sbafix 02d1.2
label_2c0d:
0x2c0d DD=1: b7 c2 06 1c         MB 0x06c2.4, C
label_2c11:
0x2c11 DD=0: 94 d7               LB A, 0x02d7
0x2c13 DD=0: be 03               ANDB A, #0x03
0x2c15 DD=0: f1 0a               JEQ label_2c21
0x2c17 DD=0: 4d 18               SB sbaoff d8.5
0x2c19 DD=0: 49 14               SB sbaoff d4.1
0x2c1b DD=0: b6 11 0b            SB P1.3
0x2c1e DD=0: 03 9e 2c            J label_2c9e
label_2c21:
0x2c21 DD=1: 84 d4               L A, 0x02d4
0x2c23 DD=1: b4 d7 14            MB C, 0x02d7.4
0x2c26 DD=1: bc 18               MB A.0, C
0x2c28 DD=1: b5 d8 17            MB C, off(0xd8).7
0x2c2b DD=1: bc 19               MB A.1, C
0x2c2d DD=1: b4 d6 17            MB C, 0x02d6.7
0x2c30 DD=1: bc 1c               MB A.4, C
0x2c32 DD=1: be 3f 0f            AND A, #0x0f3f
0x2c35 DD=1: f1 07               JEQ label_2c3e
0x2c37 DD=1: 4d 18               SB sbaoff d8.5
0x2c39 DD=1: 4c 17               SB sbaoff d7.4
0x2c3b DD=1: 03 9e 2c            J label_2c9e
label_2c3e:
0x2c3e DD=1: 5c e7 19            JBR sbafix 02e7.4, label_2c5a
0x2c41 DD=0: f9 0c               LB A, #0x0c
0x2c43 DD=0: 9c a2               CMPB A, 0x02a2
0x2c45 DD=0: f5 13               JGE label_2c5a
0x2c47 DD=0: d4 6f 27            CMPB 0x026f, #0x27
0x2c4a DD=0: f2 05               JLT label_2c51
0x2c4c DD=0: d4 6e 07            CMPB 0x026e, #0x07
0x2c4f DD=0: f5 02               JGE label_2c53
label_2c51:
0x2c51 DD=0: 4c 17               SB sbaoff d7.4
label_2c53:
0x2c53 DD=0: b7 c2 06 19         MB 0x06c2.1, C
0x2c57 DD=0: b6 11 1b            MB P1.3, C
label_2c5a:
0x2c5a DD=0: 5d e7 41            JBR sbafix 02e7.5, label_2c9e
0x2c5d DD=1: 84 34               L A, 0x0234
0x2c5f DD=1: 9e 39 0e            CMP A, #0x0e39
0x2c62 DD=1: f7 30               JLE label_2c94
0x2c64 DD=1: 5a 9c 09            JBS sbafix 02dc.2, label_2c70
0x2c67 DD=1: b7 b2 06 a6 32      TJNZB 0x06b2, label_2c9e
0x2c6c DD=1: 49 14               SB sbaoff d4.1
0x2c6e DD=1: 04 1b               SJ label_2c8b
label_2c70:
0x2c70 DD=1: b7 b2 06 ab 0f      MOVB 0x06b2, #0x0f
0x2c75 DD=1: 9e 1c 47            CMP A, #0x471c
0x2c78 DD=1: f7 1f               JLE label_2c99
0x2c7a DD=1: 59 9c 07            JBS sbafix 02dc.1, label_2c84
0x2c7d DD=1: b7 b3 06 a7 07      TJZB 0x06b3, label_2c89
0x2c82 DD=1: 04 1a               SJ label_2c9e
label_2c84:
0x2c84 DD=1: b7 c2 06 23 10      JBR 0x06c2.3, label_2c99
label_2c89:
0x2c89 DD=1: 4c 17               SB sbaoff d7.4
label_2c8b:
0x2c8b DD=1: b7 c2 06 08         SB 0x06c2.0
0x2c8f DD=1: b6 11 0a            SB P1.2
0x2c92 DD=1: 04 0a               SJ label_2c9e
label_2c94:
0x2c94 DD=1: b7 b2 06 ab 0f      MOVB 0x06b2, #0x0f
label_2c99:
0x2c99 DD=1: b7 b3 06 ab 32      MOVB 0x06b3, #0x32
label_2c9e:
0x2c9e DD=1: ca                  RC
0x2c9f DD=1: 4c d7 49            JBR sbaoff d7.4, label_2ceb
0x2ca2 DD=1: 4e 98 1d            JBS sbaoff d8.6, label_2cc2
0x2ca5 DD=1: 84 34               L A, 0x0234
0x2ca7 DD=1: 10 28               MOVB R0, #0x28
0x2ca9 DD=1: 9e 1c 47            CMP A, #0x471c
0x2cac DD=1: f5 11               JGE label_2cbf
0x2cae DD=1: 68 c7               CLRB R0
0x2cb0 DD=1: 11 28               MOVB R1, #0x28
0x2cb2 DD=1: 9e e4 38            CMP A, #0x38e4
0x2cb5 DD=1: f5 05               JGE label_2cbc
0x2cb7 DD=1: 69 c7               CLRB R1
0x2cb9 DD=1: d7 90 28            MOVB off(0x90), #0x28
label_2cbc:
0x2cbc DD=1: 69 87 91            MOVB off(0x91), R1
label_2cbf:
0x2cbf DD=1: 68 87 92            MOVB off(0x92), R0
label_2cc2:
0x2cc2 DD=1: cb                  SC
0x2cc3 DD=1: b5 92 a7 08         TJZB off(0x92), label_2ccf
0x2cc7 DD=1: 22 d2 87            MOV DP, #0x87d2
0x2cca DD=1: d7 91 28            MOVB off(0x91), #0x28
0x2ccd DD=1: 04 16               SJ label_2ce5
label_2ccf:
0x2ccf DD=1: b5 91 a7 08         TJZB off(0x91), label_2cdb
0x2cd3 DD=1: 22 d6 87            MOV DP, #0x87d6
0x2cd6 DD=1: d7 90 28            MOVB off(0x90), #0x28
0x2cd9 DD=1: 04 0a               SJ label_2ce5
label_2cdb:
0x2cdb DD=1: 22 de 87            MOV DP, #0x87de
0x2cde DD=1: b5 90 a7 03         TJZB off(0x90), label_2ce5
0x2ce2 DD=1: 22 da 87            MOV DP, #0x87da
label_2ce5:
0x2ce5 DD=1: a3 87 5c            MOV off(0x5c), [DP+]
0x2ce8 DD=1: a2 87 5e            MOV off(0x5e), [DP]
label_2ceb:
0x2ceb DD=1: b5 d8 1e            MB off(0xd8).6, C
0x2cee DD=1: 85 5e               L A, off(0x5e)
0x2cf0 DD=1: 4b d4 06            JBR sbaoff d4.3, label_2cf9
0x2cf3 DD=1: 8e d8 02            SUB A, #0x02d8
0x2cf6 DD=1: f5 01               JGE label_2cf9
0x2cf8 DD=1: fa                  CLR A
label_2cf9:
0x2cf9 DD=1: 9c 34               CMP A, 0x0234
0x2cfb DD=1: b5 d4 1b            MB off(0xd4).3, C
0x2cfe DD=1: 85 5c               L A, off(0x5c)
0x2d00 DD=1: 4c 94 06            JBS sbaoff d4.4, label_2d09
0x2d03 DD=1: ae d8 02            ADD A, #0x02d8
0x2d06 DD=1: f5 01               JGE label_2d09
0x2d08 DD=1: fa                  CLR A
label_2d09:
0x2d09 DD=1: 9c 34               CMP A, 0x0234
0x2d0b DD=1: 9a 56               BOR C, PSWH.6
0x2d0d DD=1: b5 d4 1c            MB off(0xd4).4, C
0x2d10 DD=1: ca                  RC
0x2d11 DD=1: 49 94 0a            JBS sbaoff d4.1, label_2d1e
0x2d14 DD=1: 4c d7 06            JBR sbaoff d7.4, label_2d1d
0x2d17 DD=1: 4b 94 04            JBS sbaoff d4.3, label_2d1e
0x2d1a DD=1: 4c 94 08            JBS sbaoff d4.4, label_2d25
label_2d1d:
0x2d1d DD=1: cb                  SC
label_2d1e:
0x2d1e DD=1: a5 5a d7            FILL off(0x5a)
0x2d21 DD=1: 4a 54               RB sbaoff d4.2
0x2d23 DD=1: 04 22               SJ label_2d47
label_2d25:
0x2d25 DD=1: 4a 94 18            JBS sbaoff d4.2, label_2d40
0x2d28 DD=0: 94 78               LB A, 0x0278
0x2d2a DD=0: 20 a4 87            MOV X1, #0x87a4
0x2d2d DD=0: ba 74               MOVB R4, [X1+A]
0x2d2f DD=1: f8 ff ff            L A, #0xffff
loop_2d32:
0x2d32 DD=1: 6c 93 04            CMPB R4, #0x04
0x2d35 DD=1: f5 05               JGE label_2d3c
0x2d37 DD=1: bc 10               MB C, A.0
0x2d39 DD=1: bf                  ROR A
0x2d3a DD=1: 05 76               DJNZ R4, loop_2d32
label_2d3c:
0x2d3c DD=1: 35 5a               ST A, off(0x5a)
0x2d3e DD=1: 4a 14               SB sbaoff d4.2
label_2d40:
0x2d40 DD=1: 85 5a               L A, off(0x5a)
0x2d42 DD=1: bc 10               MB C, A.0
0x2d44 DD=1: bf                  ROR A
0x2d45 DD=1: 35 5a               ST A, off(0x5a)
label_2d47:
0x2d47 DD=1: fd                  CPL C
0x2d48 DD=1: b5 d4 18            MB off(0xd4).0, C
0x2d4b DD=1: 5c dc 46            JBR sbafix 02dc.4, label_2d94
0x2d4e DD=1: 22 e2 87            MOV DP, #0x87e2
0x2d51 DD=1: 82                  L A, [DP]
0x2d52 DD=1: 4e 90 02            JBS sbaoff d0.6, label_2d57
0x2d55 DD=1: 89 02               L A, 2[DP]
label_2d57:
0x2d57 DD=1: 9c 34               CMP A, 0x0234
0x2d59 DD=1: b5 d0 1e            MB off(0xd0).6, C
0x2d5c DD=1: f2 06               JLT label_2d64
0x2d5e DD=1: 8b 04 90 34         CMP 4[DP], 0x0234
0x2d62 DD=1: f7 07               JLE label_2d6b
label_2d64:
0x2d64 DD=1: fd                  CPL C
0x2d65 DD=1: bc d7               FILL A
0x2d67 DD=1: 4f 50               RB sbaoff d0.7
0x2d69 DD=1: 04 23               SJ label_2d8e
label_2d6b:
0x2d6b DD=1: 4f 90 1b            JBS sbaoff d0.7, label_2d89
0x2d6e DD=1: 89 06               L A, 6[DP]
0x2d70 DD=1: 6d c7               CLRB R5
0x2d72 DD=1: b4 78 74            MOVB R4, 0x0278
0x2d75 DD=1: 66 74               MOV X1, ER2
0x2d77 DD=1: b8 ea 87 74         MOVB R4, 0x87ea[X1]
0x2d7b DD=1: 6c 93 04            CMPB R4, #0x04
0x2d7e DD=1: f5 05               JGE label_2d85
loop_2d80:
0x2d80 DD=1: bc 10               MB C, A.0
0x2d82 DD=1: bf                  ROR A
0x2d83 DD=1: 05 7b               DJNZ R4, loop_2d80
label_2d85:
0x2d85 DD=1: 35 66               ST A, off(0x66)
0x2d87 DD=1: 4f 10               SB sbaoff d0.7
label_2d89:
0x2d89 DD=1: 85 66               L A, off(0x66)
0x2d8b DD=1: bc 10               MB C, A.0
0x2d8d DD=1: bf                  ROR A
label_2d8e:
0x2d8e DD=1: 35 66               ST A, off(0x66)
0x2d90 DD=1: fd                  CPL C
0x2d91 DD=1: b5 d0 1d            MB off(0xd0).5, C
label_2d94:
0x2d94 DD=1: b4 e8 12            MB C, 0x02e8.2
0x2d97 DD=1: b4 e8 1c            MB 0x02e8.4, C
0x2d9a DD=1: b5 d0 10            MB C, off(0xd0).0
0x2d9d DD=1: b5 d0 53            BOR C, off(0xd0).3
0x2da0 DD=1: b5 d4 50            BOR C, off(0xd4).0
0x2da3 DD=1: b5 d0 55            BOR C, off(0xd0).5
0x2da6 DD=1: b4 e8 1a            MB 0x02e8.2, C
0x2da9 DD=0: f9 80               LB A, #0x80
0x2dab DD=0: b5 55 70            MOVB R0, off(0x55)
0x2dae DD=0: 58 e3 33            JBR sbafix 02e3.0, label_2de4
0x2db1 DD=0: 5c 97 30            JBS sbafix 02d7.4, label_2de4
0x2db4 DD=0: 95 56               LB A, off(0x56)
0x2db6 DD=0: 48 96 17            JBS sbaoff d6.0, label_2dd0
0x2db9 DD=0: 9e 80               CMPB A, #0x80
0x2dbb DD=0: f7 27               JLE label_2de4
0x2dbd DD=0: 68 a6 15            TJNZB R0, label_2dd5
0x2dc0 DD=0: 10 00               MOVB R0, #0x00
0x2dc2 DD=0: 8e 80               SUBB A, #0x80
0x2dc4 DD=0: f2 04               JLT label_2dca
0x2dc6 DD=0: 9e 80               CMPB A, #0x80
0x2dc8 DD=0: f5 1a               JGE label_2de4
label_2dca:
0x2dca DD=0: f9 80               LB A, #0x80
0x2dcc DD=0: 49 56               RB sbaoff d6.1
0x2dce DD=0: 04 14               SJ label_2de4
label_2dd0:
0x2dd0 DD=0: 49 16               SB sbaoff d6.1
0x2dd2 DD=0: 68 a7 03            TJZB R0, label_2dd8
label_2dd5:
0x2dd5 DD=0: d0                  DEC R0
0x2dd6 DD=0: 04 0c               SJ label_2de4
label_2dd8:
0x2dd8 DD=0: 11 80               MOVB R1, #0x80
0x2dda DD=0: 10 00               MOVB R0, #0x00
0x2ddc DD=0: ae 80               ADDB A, #0x80
0x2dde DD=0: f2 03               JLT label_2de3
0x2de0 DD=0: 19                  CMPB A, R1
0x2de1 DD=0: f2 01               JLT label_2de4
label_2de3:
0x2de3 DD=0: 79                  LB A, R1
label_2de4:
0x2de4 DD=0: 68 87 55            MOVB off(0x55), R0
0x2de7 DD=0: 35 56               STB A, off(0x56)
0x2de9 DD=0: f9 80               LB A, #0x80
0x2deb DD=0: 5a a7 0f            JBS sbafix 02e7.2, label_2dfd
0x2dee DD=0: 95 4e               LB A, off(0x4e)
0x2df0 DD=0: 58 b0 0a            JBS sbafix 02f0.0, label_2dfd
0x2df3 DD=0: 95 4f               LB A, off(0x4f)
0x2df5 DD=0: a4 56 91 4c         CMP 0x0256, off(0x4c)
0x2df9 DD=0: f2 02               JLT label_2dfd
0x2dfb DD=0: 95 50               LB A, off(0x50)
label_2dfd:
0x2dfd DD=0: 35 4b               STB A, off(0x4b)
0x2dff DD=0: 58 e7 05            JBR sbafix 02e7.0, label_2e07
0x2e02 DD=0: 14 40               MOVB R4, #0x40
0x2e04 DD=0: 03 85 2e            J label_2e85
label_2e07:
0x2e07 DD=0: 20 50 88            MOV X1, #0x8850
0x2e0a DD=0: 5a f1 03            JBR sbafix 02f1.2, label_2e10
0x2e0d DD=0: 20 e7 88            MOV X1, #0x88e7
label_2e10:
0x2e10 DD=1: 84 34               L A, 0x0234
0x2e12 DD=1: 60 76               MOV DP, X1
0x2e14 DD=1: 62 a3 0a 00         ADD DP, #0x000a
0x2e18 DD=1: 44 a3               ACAL label_10a3
0x2e1a DD=1: 48 97 04            JBS sbaoff d7.0, label_2e21
0x2e1d DD=1: a8 08 00 a5         ADD A, 0x0008[X1]
label_2e21:
0x2e21 DD=1: 9c 4c               CMP A, 0x024c
0x2e23 DD=1: b5 d7 18            MB off(0xd7).0, C
0x2e26 DD=1: 84 34               L A, 0x0234
0x2e28 DD=1: 60 76               MOV DP, X1
0x2e2a DD=1: 62 a3 36 00         ADD DP, #0x0036
0x2e2e DD=1: 44 a3               ACAL label_10a3
0x2e30 DD=1: 49 97 04            JBS sbaoff d7.1, label_2e37
0x2e33 DD=1: a8 34 00 a5         ADD A, 0x0034[X1]
label_2e37:
0x2e37 DD=1: 9c 4c               CMP A, 0x024c
0x2e39 DD=1: 9a 56               BOR C, PSWH.6
0x2e3b DD=1: b5 d7 19            MB off(0xd7).1, C
0x2e3e DD=1: 6d c7               CLRB R5
0x2e40 DD=1: b5 48 74            MOVB R4, off(0x48)
0x2e43 DD=1: 6f c7               CLRB R7
0x2e45 DD=1: f2 08               JLT label_2e4f
0x2e47 DD=1: b5 47 76            MOVB R6, off(0x47)
0x2e4a DD=1: 48 d7 09            JBR sbaoff d7.0, label_2e56
0x2e4d DD=1: 04 36               SJ label_2e85
label_2e4f:
0x2e4f DD=1: b5 49 76            MOVB R6, off(0x49)
0x2e52 DD=1: 60 a3 2c 00         ADD X1, #0x002c
label_2e56:
0x2e56 DD=1: a8 06 00 71         MOV ER1, 0x0006[X1]
0x2e5a DD=1: 84 34               L A, 0x0234
0x2e5c DD=1: 65 94               CMP ER1, A
0x2e5e DD=1: f2 25               JLT label_2e85
0x2e60 DD=1: a0 70               MOV ER0, [X1]
0x2e62 DD=1: 18                  CMP A, ER0
0x2e63 DD=1: f2 20               JLT label_2e85
0x2e65 DD=1: a8 04 00 95         CMP A, 0x0004[X1]
0x2e69 DD=1: f5 0c               JGE label_2e77
0x2e6b DD=1: a8 02 00 71         MOV ER1, 0x0002[X1]
0x2e6f DD=1: 65 94               CMP ER1, A
0x2e71 DD=1: f5 0e               JGE label_2e81
0x2e73 DD=1: 6e 74               MOVB R4, R6
0x2e75 DD=1: 04 0e               SJ label_2e85
label_2e77:
0x2e77 DD=1: a8 04 00 70         MOV ER0, 0x0004[X1]
0x2e7b DD=1: 66 c8               XCHG A, ER2
0x2e7d DD=1: 67 c8               XCHG A, ER3
0x2e7f DD=1: 66 c8               XCHG A, ER2
label_2e81:
0x2e81 DD=1: 44 f3               ACAL label_10f3
0x2e83 DD=1: 6c aa               MOVB R4, A
label_2e85:
0x2e85 DD=1: 6c 87 46            MOVB off(0x46), R4
0x2e88 DD=1: c4 4c 04 00         CMP 0x024c, #0x0004
0x2e8c DD=1: f2 46               JLT label_2ed4
0x2e8e DD=1: 20 69 89            MOV X1, #0x8969
0x2e91 DD=1: 5a f1 03            JBR sbafix 02f1.2, label_2e97
0x2e94 DD=1: 20 6c 89            MOV X1, #0x896c
label_2e97:
0x2e97 DD=1: b7 e8 05 20 10      JBR 0x05e8.0, label_2eac
0x2e9c DD=1: 4b 56               RB sbaoff d6.3
0x2e9e DD=1: 4a 16               SB sbaoff d6.2
0x2ea0 DD=1: b8 02 00 87 51      MOVB off(0x51), 0x0002[X1]
0x2ea5 DD=1: b8 01 00 87 8c      MOVB off(0x8c), 0x0001[X1]
0x2eaa DD=1: 04 32               SJ label_2ede
label_2eac:
0x2eac DD=0: 4b 96 0a            JBS sbaoff d6.3, label_2eb9
0x2eaf DD=0: 97 e8 05            LB A, 0x05e8
0x2eb2 DD=0: be f0               ANDB A, #0xf0
0x2eb4 DD=0: f1 1e               JEQ label_2ed4
0x2eb6 DD=0: 4a d6 1b            JBR sbaoff d6.2, label_2ed4
label_2eb9:
0x2eb9 DD=0: b5 8c a6 21         TJNZB off(0x8c), label_2ede
0x2ebd DD=0: 95 51               LB A, off(0x51)
0x2ebf DD=0: b0 85               SUBB A, [X1]
0x2ec1 DD=0: f2 11               JLT label_2ed4
0x2ec3 DD=0: 9e 80               CMPB A, #0x80
0x2ec5 DD=0: f7 0d               JLE label_2ed4
0x2ec7 DD=0: 4b 16               SB sbaoff d6.3
0x2ec9 DD=0: 4a 16               SB sbaoff d6.2
0x2ecb DD=0: 35 51               STB A, off(0x51)
0x2ecd DD=0: b8 01 00 87 8c      MOVB off(0x8c), 0x0001[X1]
0x2ed2 DD=0: 04 0a               SJ label_2ede
label_2ed4:
0x2ed4 DD=0: 4b 56               RB sbaoff d6.3
0x2ed6 DD=0: 4a 56               RB sbaoff d6.2
0x2ed8 DD=0: d7 51 80            MOVB off(0x51), #0x80
0x2edb DD=0: b5 8c c7            CLRB off(0x8c)
label_2ede:
0x2ede DD=0: f9 40               LB A, #0x40
0x2ee0 DD=0: 58 e4 2b            JBR sbafix 02e4.0, label_2f0e
0x2ee3 DD=0: 5b a7 28            JBS sbafix 02e7.3, label_2f0e
0x2ee6 DD=0: 22 c3 89            MOV DP, #0x89c3
0x2ee9 DD=0: 94 6e               LB A, 0x026e
0x2eeb DD=0: 44 04               ACAL label_1004
0x2eed DD=0: 58 f0 1e            JBR sbafix 02f0.0, label_2f0e
0x2ef0 DD=0: 3a                  STB A, R2
0x2ef1 DD=1: 84 64               L A, 0x0264
0x2ef3 DD=1: 8e a5 00            SUB A, #0x00a5
0x2ef6 DD=1: f5 03               JGE label_2efb
0x2ef8 DD=0: fb                  CLRB A
0x2ef9 DD=0: 04 13               SJ label_2f0e
label_2efb:
0x2efb DD=1: 6b c7               CLRB R3
0x2efd DD=1: 65 a9               MUL ER1
0x2eff DD=1: 25 2e 01            MOV ER1, #0x012e
0x2f02 DD=1: 65 fb               DIVQ ER1
0x2f04 DD=1: 9a 29 04            JBS PSWH.1, label_2f0b
0x2f07 DD=1: b6 07 a7 02         TJZB ACCH, label_2f0d
label_2f0b:
0x2f0b DD=1: bc d7               FILL A
label_2f0d:
0x2f0d DD=0: d8                  RDD
label_2f0e:
0x2f0e DD=0: 35 52               STB A, off(0x52)
0x2f10 DD=0: f9 80               LB A, #0x80
0x2f12 DD=0: 58 e4 1c            JBR sbafix 02e4.0, label_2f31
0x2f15 DD=0: 5f a7 19            JBS sbafix 02e7.7, label_2f31
0x2f18 DD=0: b7 c3 06 20 14      JBR 0x06c3.0, label_2f31
0x2f1d DD=1: fa                  CLR A
0x2f1e DD=1: b5 54 97            MOVB A, off(0x54)
0x2f21 DD=1: 4c d8 05            JBR sbaoff d8.4, label_2f29
0x2f24 DD=1: de ff 00            XOR A, #0x00ff
0x2f27 DD=1: 04 03               SJ label_2f2c
label_2f29:
0x2f29 DD=1: ae 00 01            ADD A, #0x0100
label_2f2c:
0x2f2c DD=1: 22 d2 89            MOV DP, #0x89d2
0x2f2f DD=1: 44 70               ACAL label_1070
label_2f31:
0x2f31 DD=1: 35 53               ST A, off(0x53)
0x2f33 DD=0: 95 4a               LB A, off(0x4a)
0x2f35 DD=0: b5 46 a9            MULB off(0x46)
0x2f38 DD=0: 66 aa               MOV ER2, A
0x2f3a DD=0: 95 4b               LB A, off(0x4b)
0x2f3c DD=0: b5 51 a9            MULB off(0x51)
0x2f3f DD=0: 66 a9               MUL ER2
0x2f41 DD=0: 66 aa               MOV ER2, A
0x2f43 DD=1: fa                  CLR A
0x2f44 DD=1: b5 52 96 07         MOVB ACCH, off(0x52)
0x2f48 DD=1: 66 a9               MUL ER2
0x2f4a DD=1: 3a                  ST A, ER2
0x2f4b DD=1: fa                  CLR A
0x2f4c DD=1: b5 56 96 07         MOVB ACCH, off(0x56)
0x2f50 DD=1: 66 a9               MUL ER2
0x2f52 DD=1: 3a                  ST A, ER2
0x2f53 DD=1: fa                  CLR A
0x2f54 DD=1: b5 53 96 07         MOVB ACCH, off(0x53)
0x2f58 DD=1: 66 a9               MUL ER2
0x2f5a DD=1: a5 06 a9            MUL off(0x06)
0x2f5d DD=1: 64 8c               SLL ER0, 1
0x2f5f DD=1: af                  ROL A
0x2f60 DD=1: b6 07 a7 04         TJZB ACCH, label_2f68
0x2f64 DD=1: bc d7               FILL A
0x2f66 DD=1: 04 04               SJ label_2f6c
label_2f68:
0x2f68 DD=1: df                  SWAP
0x2f69 DD=1: 69 96 06            MOVB ACCL, R1
label_2f6c:
0x2f6c DD=1: 35 32               ST A, off(0x32)
0x2f6e DD=1: fa                  CLR A
0x2f6f DD=0: 94 78               LB A, 0x0278
0x2f71 DD=0: 60 aa               MOV X1, A
0x2f73 DD=0: 60 8c               SLL X1, 1
0x2f75 DD=1: 88 2a 03            L A, 0x032a[X1]
0x2f78 DD=1: a5 32 a9            MUL off(0x32)
0x2f7b DD=1: 10 03               MOVB R0, #0x03
0x2f7d DD=1: 46 c5               ACAL label_12c5
0x2f7f DD=1: c8 34 03            ST A, 0x0334[X1]
label_2f82:
0x2f82 DD=1: fa                  CLR A
0x2f83 DD=1: b4 78 97            MOVB A, 0x0278
0x2f86 DD=1: 3d                  ST A, X2
0x2f87 DD=1: 3c                  ST A, X1
0x2f88 DD=1: 60 8c               SLL X1, 1
0x2f8a DD=1: 88 34 03            L A, 0x0334[X1]
0x2f8d DD=1: f1 06               JEQ label_2f95
0x2f8f DD=1: ad 3c               ADD A, off(0x3c)
0x2f91 DD=1: f5 02               JGE label_2f95
0x2f93 DD=1: bc d7               FILL A
label_2f95:
0x2f95 DD=1: 59 a8 14            JBS sbafix 02e8.1, label_2fac
0x2f98 DD=1: a8 7e 03 a5         ADD A, 0x037e[X1]
0x2f9c DD=1: f5 02               JGE label_2fa0
0x2f9e DD=1: bc d7               FILL A
label_2fa0:
0x2fa0 DD=1: 5a e8 01            JBR sbafix 02e8.2, label_2fa4
0x2fa3 DD=1: fa                  CLR A
label_2fa4:
0x2fa4 DD=1: 5b af 05            JBS sbafix 02ef.3, label_2fac
0x2fa7 DD=1: c8 3e 03            ST A, 0x033e[X1]
0x2faa DD=1: 04 08               SJ label_2fb4
label_2fac:
0x2fac DD=1: 35 3e               ST A, off(0x3e)
0x2fae DD=1: 35 40               ST A, off(0x40)
0x2fb0 DD=1: 35 42               ST A, off(0x42)
0x2fb2 DD=1: 35 44               ST A, off(0x44)
label_2fb4:
0x2fb4 DD=1: 5d e6 4b            JBR sbafix 02e6.5, label_3002
0x2fb7 DD=1: 37 24 06            ST A, 0x0624
0x2fba DD=1: 22 77 8a            MOV DP, #0x8a77
0x2fbd DD=1: 44 70               ACAL label_1070
0x2fbf DD=1: 37 23 06            ST A, 0x0623
0x2fc2 DD=1: 5a a8 3d            JBS sbafix 02e8.2, label_3002
0x2fc5 DD=1: 10 01               MOVB R0, #0x01
0x2fc7 DD=1: 59 e8 02            JBR sbafix 02e8.1, label_2fcc
0x2fca DD=1: 10 04               MOVB R0, #0x04
label_2fcc:
0x2fcc DD=1: 68 a9               MULB R0
0x2fce DD=1: a7 24 06 a9         MUL 0x0624
0x2fd2 DD=1: 13 01               MOVB R3, #0x01
0x2fd4 DD=1: 6a c7               CLRB R2
0x2fd6 DD=1: 65 9c               SRL ER1, 1
0x2fd8 DD=1: 65 fb               DIVQ ER1
0x2fda DD=1: 9a 21 03            JBR PSWH.1, label_2fe0
0x2fdd DD=1: d9                  SDD
0x2fde DD=1: bc d7               FILL A
label_2fe0:
0x2fe0 DD=1: a7 28 06 a4         ADD 0x0628, A
0x2fe4 DD=1: f5 04               JGE label_2fea
0x2fe6 DD=1: a7 28 06 d7         FILL 0x0628
label_2fea:
0x2fea DD=1: a7 26 06 a4         ADD 0x0626, A
0x2fee DD=1: f2 08               JLT label_2ff8
0x2ff0 DD=1: a7 26 06 93 00 00   CMP 0x0626, #0x0000
0x2ff6 DD=1: f2 0a               JLT label_3002
label_2ff8:
0x2ff8 DD=1: a7 26 06 83 00 00   SUB 0x0626, #0x0000
0x2ffe DD=1: a7 2c 06 c6         INC 0x062c
label_3002:
0x3002 DD=1: 5f 9c 63            JBS sbafix 02dc.7, label_3068
0x3005 DD=1: 58 9f 60            JBS sbafix 02df.0, label_3068
0x3008 DD=1: b7 c7 04 28 5b      JBS 0x04c7.0, label_3068
0x300d DD=1: 88 3e 03            L A, 0x033e[X1]
0x3010 DD=1: f1 56               JEQ label_3068
0x3012 DD=1: 39                  ST A, ER1
0x3013 DD=1: 8d 3c               SUB A, off(0x3c)
0x3015 DD=1: f2 05               JLT label_301c
0x3017 DD=1: 9e 06 00            CMP A, #0x0006
0x301a DD=1: f5 03               JGE label_301f
label_301c:
0x301c DD=1: f8 06 00            L A, #0x0006
label_301f:
0x301f DD=1: 3b                  ST A, ER3
0x3020 DD=1: 59 e8 1c            JBR sbafix 02e8.1, label_303f
0x3023 DD=1: 60 c7               CLR X1
0x3025 DD=1: 61 c7               CLR X2
0x3027 DD=1: da                  DI
0x3028 DD=1: 47 d0               ACAL label_13d0
0x302a DD=1: 20 02 00            MOV X1, #0x0002
0x302d DD=1: 41                  INC X2
0x302e DD=1: 47 d0               ACAL label_13d0
0x3030 DD=1: 20 04 00            MOV X1, #0x0004
0x3033 DD=1: 41                  INC X2
0x3034 DD=1: 47 d0               ACAL label_13d0
0x3036 DD=1: 20 06 00            MOV X1, #0x0006
0x3039 DD=1: 41                  INC X2
0x303a DD=1: 47 d0               ACAL label_13d0
0x303c DD=1: db                  EI
0x303d DD=1: 04 29               SJ label_3068
label_303f:
0x303f DD=1: 71                  L A, X2
0x3040 DD=1: b6 4f b9            RBR TRNSIT.(AL)
0x3043 DD=1: da                  DI
0x3044 DD=1: 47 d0               ACAL label_13d0
0x3046 DD=1: db                  EI
0x3047 DD=1: 71                  L A, X2
0x3048 DD=1: b5 df ca            TBR off(0xdf).(AL)
0x304b DD=1: f1 1b               JEQ label_3068
0x304d DD=1: 5b af 18            JBS sbafix 02ef.3, label_3068
0x3050 DD=1: a6 d6 70            MOV ER0, TM1
label_3053:
0x3053 DD=1: 71                  L A, X2
0x3054 DD=1: da                  DI
0x3055 DD=1: b6 4f ca            TBR TRNSIT.(AL)
0x3058 DD=1: a6 d6 97            MOV A, TM1
0x305b DD=1: db                  EI
0x305c DD=1: f6 0a               JNE label_3068
0x305e DD=1: 08                  SUB A, ER0
0x305f DD=1: 9e 0d 00            CMP A, #0x000d
0x3062 DD=1: f2 ef               JLT label_3053
0x3064 DD=1: 71                  L A, X2
0x3065 DD=1: b4 d3 b8            SBR 0x02d3.(AL)
label_3068:
0x3068 DD=1: 59 68               RB sbafix 02e8.1
0x306a DD=1: da                  DI
0x306b DD=1: b4 79 a7 03         TJZB 0x0279, label_3072
0x306f DD=1: b6 42 0b            SB IRQ1L.3
label_3072:
0x3072 DD=1: 5d 6f               RB sbafix 02ef.5
0x3074 DD=1: 02                  RTI
adc1_vector:
0x3075 DD=0: b4 7f a6 03         TJNZB 0x027f, label_307c
0x3079 DD=0: 03 9a 38            J label_389a
label_307c:
0x307c DD=0: c6 02 e1 05         MOV LRB, #0x05e1
0x3080 DD=0: 8a ab 01            MOVB PSWL, #0x01
0x3083 DD=0: fb                  CLRB A
0x3084 DD=0: b4 83 c8            XCHGB A, 0x0283
0x3087 DD=0: b4 82 c8            XCHGB A, 0x0282
0x308a DD=0: b4 81 c8            XCHGB A, 0x0281
0x308d DD=0: b4 80 c8            XCHGB A, 0x0280
0x3090 DD=0: dc                  DECB A
0x3091 DD=0: 34 7e               STB A, 0x027e
0x3093 DD=0: b4 7f d6            DECB 0x027f
0x3096 DD=0: 5e 2f               SB sbafix 02ef.6
0x3098 DD=0: db                  EI
0x3099 DD=1: fa                  CLR A
0x309a DD=1: 59 af 21            JBS sbafix 02ef.1, label_30be
0x309d DD=1: da                  DI
0x309e DD=1: a4 2e 73            MOV ER3, 0x022e
0x30a1 DD=1: b4 32 74            MOVB R4, 0x0232
0x30a4 DD=1: db                  EI
0x30a5 DD=1: f8 0a 1a            L A, #0x1a0a
0x30a8 DD=1: 24 aa aa            MOV ER0, #0xaaaa
label_30ab:
0x30ab DD=1: 6c a7 09            TJZB R4, label_30b7
0x30ae DD=1: 6c 9c               SRLB R4, 1
0x30b0 DD=1: 67 bc               ROR ER3, 1
0x30b2 DD=1: 9f                  SRL A
0x30b3 DD=1: 64 bc               ROR ER0, 1
0x30b5 DD=1: 04 f4               SJ label_30ab
label_30b7:
0x30b7 DD=1: 67 fb               DIVQ ER3
0x30b9 DD=1: 9a 21 02            JBR PSWH.1, label_30be
0x30bc DD=1: bc d7               FILL A
label_30be:
0x30be DD=1: 35 00               ST A, off(0x00)
0x30c0 DD=1: 38                  ST A, ER0
0x30c1 DD=1: 22 68 a0            MOV DP, #0xa068
0x30c4 DD=1: b5 04 74            MOVB R4, off(0x04)
0x30c7 DD=1: 15 1a               MOVB R5, #0x1a
0x30c9 DD=1: 45 d6               ACAL label_11d6
0x30cb DD=1: 6c 87 04            MOVB off(0x04), R4
0x30ce DD=1: 35 02               ST A, off(0x02)
0x30d0 DD=1: da                  DI
0x30d1 DD=1: a4 3c 86 4c         MOV 0x024c, 0x023c
0x30d5 DD=1: a4 44 86 4e         MOV 0x024e, 0x0244
0x30d9 DD=1: b4 e9 13            MB C, 0x02e9.3
0x30dc DD=1: b4 e9 1c            MB 0x02e9.4, C
0x30df DD=1: b4 e9 10            MB C, 0x02e9.0
0x30e2 DD=1: b4 e9 19            MB 0x02e9.1, C
0x30e5 DD=1: db                  EI
0x30e6 DD=1: a4 4c 70            MOV ER0, 0x024c
0x30e9 DD=1: 22 20 a0            MOV DP, #0xa020
0x30ec DD=1: b4 3f 74            MOVB R4, 0x023f
0x30ef DD=1: 15 12               MOVB R5, #0x12
0x30f1 DD=1: 45 d6               ACAL label_11d6
0x30f3 DD=1: 6c 86 3f            MOVB 0x023f, R4
0x30f6 DD=1: 34 40               ST A, 0x0240
0x30f8 DD=1: f8 1d 07            L A, #0x071d
0x30fb DD=1: 48 a0 03            JBS sbaoff e0.0, label_3101
0x30fe DD=1: f8 f5 09            L A, #0x09f5
label_3101:
0x3101 DD=1: 9d 00               CMP A, off(0x00)
0x3103 DD=1: b5 e0 18            MB off(0xe0).0, C
0x3106 DD=1: 4f e5 14            JBR sbaoff e5.7, label_311d
0x3109 DD=1: 85 06               L A, off(0x06)
0x310b DD=1: 58 a2 08            JBS sbafix 02e2.0, label_3116
0x310e DD=1: a5 08 76            MOV DP, off(0x08)
0x3111 DD=1: 83                  L A, [DP+]
0x3112 DD=1: 49 a0 01            JBS sbaoff e0.1, label_3116
0x3115 DD=1: 82                  L A, [DP]
label_3116:
0x3116 DD=1: 35 06               ST A, off(0x06)
0x3118 DD=1: 9d 00               CMP A, off(0x00)
0x311a DD=1: b5 e0 19            MB off(0xe0).1, C
label_311d:
0x311d DD=1: fa                  CLR A
0x311e DD=0: 94 7e               LB A, 0x027e
0x3120 DD=0: 61 aa               MOV X2, A
0x3122 DD=0: 5c 94 03            JBS sbafix 02d4.4, label_3128
0x3125 DD=0: 5c d7 0f            JBR sbafix 02d7.4, label_3137
label_3128:
0x3128 DD=0: 20 9f 8a            MOV X1, #0x8a9f
0x312b DD=0: 95 04               LB A, off(0x04)
0x312d DD=0: aa 71               MOV ER1, [X1+A]
0x312f DD=0: a5 02 72            MOV ER2, off(0x02)
0x3132 DD=0: 45 17               ACAL label_1117
0x3134 DD=0: 03 63 31            J label_3163
label_3137:
0x3137 DD=1: f8 d4 01            L A, #0x01d4
0x313a DD=1: 61 a9               MUL X2
0x313c DD=1: 74                  L A, ER0
0x313d DD=1: 22 9c a0            MOV DP, #0xa09c
0x3140 DD=1: 62 a4               ADD DP, A
0x3142 DD=0: 95 04               LB A, off(0x04)
0x3144 DD=0: a5 02 74            MOV X1, off(0x02)
0x3147 DD=0: b4 3f 71            MOVB R1, 0x023f
0x314a DD=0: a4 40 72            MOV ER2, 0x0240
0x314d DD=0: 16 12               MOVB R6, #0x12
0x314f DD=0: 46 1d               ACAL label_121d
0x3151 DD=0: b9 0e 05 a5         ADDB A, 0x050e[X2]
0x3155 DD=0: b9 0e 05 2f 06      JBS 0x050e[X2].7, label_3160
0x315a DD=0: f5 07               JGE label_3163
0x315c DD=0: bc d7               FILLB A
0x315e DD=0: 04 03               SJ label_3163
label_3160:
0x3160 DD=0: f2 01               JLT label_3163
0x3162 DD=0: fb                  CLRB A
label_3163:
0x3163 DD=0: bc 99 0a 05         STB A, 0x050a[X2]
0x3167 DD=0: 20 ca 8a            MOV X1, #0x8aca
0x316a DD=0: 5a f1 03            JBR sbafix 02f1.2, label_3170
0x316d DD=0: 20 03 8b            MOV X1, #0x8b03
label_3170:
0x3170 DD=1: 85 00               L A, off(0x00)
0x3172 DD=1: 60 76               MOV DP, X1
0x3174 DD=1: 62 a3 0a 00         ADD DP, #0x000a
0x3178 DD=1: 44 a3               ACAL label_10a3
0x317a DD=1: 48 a9 04            JBS sbaoff e9.0, label_3181
0x317d DD=1: a8 08 00 a5         ADD A, 0x0008[X1]
label_3181:
0x3181 DD=1: 9c 4c               CMP A, 0x024c
0x3183 DD=1: 9a 56               BOR C, PSWH.6
0x3185 DD=1: b5 e9 18            MB off(0xe9).0, C
0x3188 DD=1: 26 80 00            MOV ER2, #0x0080
0x318b DD=1: f5 34               JGE label_31c1
0x318d DD=1: a8 06 00 71         MOV ER1, 0x0006[X1]
0x3191 DD=1: 85 00               L A, off(0x00)
0x3193 DD=1: 65 94               CMP ER1, A
0x3195 DD=1: f2 2a               JLT label_31c1
0x3197 DD=1: a0 70               MOV ER0, [X1]
0x3199 DD=1: 18                  CMP A, ER0
0x319a DD=1: f2 25               JLT label_31c1
0x319c DD=1: b5 13 76            MOVB R6, off(0x13)
0x319f DD=1: 6f c7               CLRB R7
0x31a1 DD=1: a8 04 00 95         CMP A, 0x0004[X1]
0x31a5 DD=1: f5 0c               JGE label_31b3
0x31a7 DD=1: a8 02 00 71         MOV ER1, 0x0002[X1]
0x31ab DD=1: 65 94               CMP ER1, A
0x31ad DD=1: f5 0e               JGE label_31bd
0x31af DD=1: 6e 74               MOVB R4, R6
0x31b1 DD=1: 04 0e               SJ label_31c1
label_31b3:
0x31b3 DD=1: a8 04 00 70         MOV ER0, 0x0004[X1]
0x31b7 DD=1: 66 c8               XCHG A, ER2
0x31b9 DD=1: 67 c8               XCHG A, ER3
0x31bb DD=1: 66 c8               XCHG A, ER2
label_31bd:
0x31bd DD=1: 44 f3               ACAL label_10f3
0x31bf DD=0: d8                  RDD
0x31c0 DD=0: 3c                  STB A, R4
label_31c1:
0x31c1 DD=0: 6c 87 14            MOVB off(0x14), R4
0x31c4 DD=0: 6c 2f 0b            JBS R4.7, label_31d2
0x31c7 DD=0: b8 25 00 87 70      MOVB off(0x70), 0x0025[X1]
0x31cc DD=0: 4a 29               SB sbaoff e9.2
0x31ce DD=0: 49 69               RB sbaoff e9.1
0x31d0 DD=0: 04 59               SJ label_322b
label_31d2:
0x31d2 DD=1: b8 20 00 90 70      CMPB 0x0020[X1], 0x0270
0x31d7 DD=1: f2 0e               JLT label_31e7
0x31d9 DD=1: a8 21 00 91 00      CMP 0x0021[X1], off(0x00)
0x31de DD=1: f0 07               JGT label_31e7
0x31e0 DD=1: a8 23 00 90 4c      CMP 0x0023[X1], 0x024c
0x31e5 DD=1: f7 08               JLE label_31ef
label_31e7:
0x31e7 DD=1: b8 25 00 87 70      MOVB off(0x70), 0x0025[X1]
0x31ec DD=1: ca                  RC
0x31ed DD=1: 04 08               SJ label_31f7
label_31ef:
0x31ef DD=1: ca                  RC
0x31f0 DD=0: 95 70               LB A, off(0x70)
0x31f2 DD=0: f6 03               JNE label_31f7
0x31f4 DD=0: 4a 69               RB sbaoff e9.2
0x31f6 DD=0: cb                  SC
label_31f7:
0x31f7 DD=0: b5 e9 19            MB off(0xe9).1, C
0x31fa DD=0: 4a a9 2e            JBS sbaoff e9.2, label_322b
0x31fd DD=0: 95 12               LB A, off(0x12)
0x31ff DD=0: ae 80               ADDB A, #0x80
0x3201 DD=0: d5 68 00            CMPB off(0x68), #0x00
0x3204 DD=0: f6 18               JNE label_321e
0x3206 DD=0: b8 26 00 87 68      MOVB off(0x68), 0x0026[X1]
0x320b DD=0: 49 a9 0a            JBS sbaoff e9.1, label_3218
0x320e DD=0: b8 27 00 a5         ADDB A, 0x0027[X1]
0x3212 DD=0: f5 0a               JGE label_321e
0x3214 DD=0: bc d7               FILLB A
0x3216 DD=0: 04 06               SJ label_321e
label_3218:
0x3218 DD=0: b8 27 00 85         SUBB A, 0x0027[X1]
0x321c DD=0: f2 03               JLT label_3221
label_321e:
0x321e DD=0: bc 2f 02            JBS A.7, label_3223
label_3221:
0x3221 DD=0: f9 80               LB A, #0x80
label_3223:
0x3223 DD=0: 6c c8               XCHGB A, R4
0x3225 DD=0: 1c                  CMPB A, R4
0x3226 DD=0: f5 03               JGE label_322b
0x3228 DD=0: 3c                  STB A, R4
0x3229 DD=0: 4a 29               SB sbaoff e9.2
label_322b:
0x322b DD=0: 6c a3 80            ADDB R4, #0x80
0x322e DD=0: 6c 87 12            MOVB off(0x12), R4
0x3231 DD=0: 20 46 8b            MOV X1, #0x8b46
0x3234 DD=0: 5a f1 03            JBR sbafix 02f1.2, label_323a
0x3237 DD=0: 20 a2 8b            MOV X1, #0x8ba2
label_323a:
0x323a DD=1: 85 00               L A, off(0x00)
0x323c DD=1: 60 76               MOV DP, X1
0x323e DD=1: 62 a3 0b 00         ADD DP, #0x000b
0x3242 DD=1: 44 a3               ACAL label_10a3
0x3244 DD=1: 4c a9 04            JBS sbaoff e9.4, label_324b
0x3247 DD=1: a8 09 00 a5         ADD A, 0x0009[X1]
label_324b:
0x324b DD=1: 9c 4c               CMP A, 0x024c
0x324d DD=1: 9a 56               BOR C, PSWH.6
0x324f DD=1: b5 e9 1c            MB off(0xe9).4, C
0x3252 DD=1: 85 00               L A, off(0x00)
0x3254 DD=1: 60 76               MOV DP, X1
0x3256 DD=1: 62 a3 2b 00         ADD DP, #0x002b
0x325a DD=1: 44 a3               ACAL label_10a3
0x325c DD=1: 4b a9 04            JBS sbaoff e9.3, label_3263
0x325f DD=1: a8 29 00 a5         ADD A, 0x0029[X1]
label_3263:
0x3263 DD=1: 9c 4c               CMP A, 0x024c
0x3265 DD=1: 9a 56               BOR C, PSWH.6
0x3267 DD=1: b5 e9 1b            MB off(0xe9).3, C
0x326a DD=1: b0 90 70            CMPB [X1], 0x0270
0x326d DD=1: f0 11               JGT label_3280
0x326f DD=1: 60 a3 21 00         ADD X1, #0x0021
0x3273 DD=1: 6f c7               CLRB R7
0x3275 DD=1: b5 17 76            MOVB R6, off(0x17)
0x3278 DD=1: 4b a9 13            JBS sbaoff e9.3, label_328e
0x327b DD=1: b5 16 76            MOVB R6, off(0x16)
0x327e DD=1: 04 0e               SJ label_328e
label_3280:
0x3280 DD=1: 60 a3 01 00         ADD X1, #0x0001
0x3284 DD=1: 6f c7               CLRB R7
0x3286 DD=1: b5 18 76            MOVB R6, off(0x18)
0x3289 DD=1: 4c a9 02            JBS sbaoff e9.4, label_328e
0x328c DD=1: 16 80               MOVB R6, #0x80
label_328e:
0x328e DD=1: 26 80 00            MOV ER2, #0x0080
0x3291 DD=1: a8 06 00 71         MOV ER1, 0x0006[X1]
0x3295 DD=1: 85 00               L A, off(0x00)
0x3297 DD=1: 65 94               CMP ER1, A
0x3299 DD=1: f2 25               JLT label_32c0
0x329b DD=1: a0 70               MOV ER0, [X1]
0x329d DD=1: 18                  CMP A, ER0
0x329e DD=1: f2 20               JLT label_32c0
0x32a0 DD=1: a8 04 00 95         CMP A, 0x0004[X1]
0x32a4 DD=1: f5 0c               JGE label_32b2
0x32a6 DD=1: a8 02 00 71         MOV ER1, 0x0002[X1]
0x32aa DD=1: 65 94               CMP ER1, A
0x32ac DD=1: f5 0e               JGE label_32bc
0x32ae DD=1: 6e 74               MOVB R4, R6
0x32b0 DD=1: 04 0e               SJ label_32c0
label_32b2:
0x32b2 DD=1: a8 04 00 70         MOV ER0, 0x0004[X1]
0x32b6 DD=1: 66 c8               XCHG A, ER2
0x32b8 DD=1: 67 c8               XCHG A, ER3
0x32ba DD=1: 66 c8               XCHG A, ER2
label_32bc:
0x32bc DD=1: 44 f3               ACAL label_10f3
0x32be DD=1: 6c aa               MOVB R4, A
label_32c0:
0x32c0 DD=1: 6c a3 80            ADDB R4, #0x80
0x32c3 DD=1: 6c 87 15            MOVB off(0x15), R4
0x32c6 DD=1: 48 e5 12            JBR sbaoff e5.0, label_32db
0x32c9 DD=1: 48 65               RB sbaoff e5.0
0x32cb DD=1: a5 3e 76            MOV DP, off(0x3e)
0x32ce DD=1: b3 87 44            MOVB off(0x44), [DP+]
0x32d1 DD=1: 62 87 40            MOV off(0x40), DP
0x32d4 DD=1: b5 43 c7            CLRB off(0x43)
0x32d7 DD=1: 49 25               SB sbaoff e5.1
0x32d9 DD=1: 4a 25               SB sbaoff e5.2
label_32db:
0x32db DD=1: 22 81 8c            MOV DP, #0x8c81
0x32de DD=1: 44 00               ACAL label_1000
0x32e0 DD=1: 35 45               ST A, off(0x45)
0x32e2 DD=1: 49 e5 22            JBR sbaoff e5.1, label_3307
0x32e5 DD=1: 4a e5 19            JBR sbaoff e5.2, label_3301
0x32e8 DD=1: d5 43 04            CMPB off(0x43), #0x04
0x32eb DD=1: f5 0f               JGE label_32fc
0x32ed DD=1: b5 43 70            MOVB R0, off(0x43)
0x32f0 DD=1: a5 40 74            MOV X1, off(0x40)
0x32f3 DD=1: bb 97               MOVB A, [X1+R0]
0x32f5 DD=1: b5 43 a3 01         ADDB off(0x43), #0x01
0x32f9 DD=1: bc a6 0e            TJNZ A, label_330a
label_32fc:
0x32fc DD=1: 4a 65               RB sbaoff e5.2
0x32fe DD=1: b5 43 c7            CLRB off(0x43)
label_3301:
0x3301 DD=0: 95 42               LB A, off(0x42)
0x3303 DD=0: 8d 44               SUBB A, off(0x44)
0x3305 DD=0: f0 03               JGT label_330a
label_3307:
0x3307 DD=0: fb                  CLRB A
0x3308 DD=0: 49 65               RB sbaoff e5.1
label_330a:
0x330a DD=0: b5 45 a9            MULB off(0x45)
0x330d DD=0: a6 06 8c            SLL ACC, 1
0x3310 DD=0: f2 05               JLT label_3317
0x3312 DD=0: df                  SWAP
0x3313 DD=0: 9e 80               CMPB A, #0x80
0x3315 DD=0: f2 02               JLT label_3319
label_3317:
0x3317 DD=0: f9 80               LB A, #0x80
label_3319:
0x3319 DD=0: 35 42               STB A, off(0x42)
0x331b DD=0: 58 a3 06            JBS sbafix 02e3.0, label_3324
0x331e DD=0: b5 5e c7            CLRB off(0x5e)
0x3321 DD=0: 03 87 34            J label_3487
label_3324:
0x3324 DD=0: b6 4f 04            RB TRNSIT.4
0x3327 DD=0: 9a 16               MB C, PSWH.6
0x3329 DD=0: fd                  CPL C
0x332a DD=0: 8a 1b               MB PSWL.3, C
0x332c DD=0: 20 fa 8d            MOV X1, #0x8dfa
0x332f DD=0: 5c 97 13            JBS sbafix 02d7.4, label_3345
0x3332 DD=0: 90                  LB A, [X1]
0x3333 DD=0: 9c 70               CMPB A, 0x0270
0x3335 DD=0: f2 0e               JLT label_3345
0x3337 DD=1: 88 01 00            L A, 0x0001[X1]
0x333a DD=1: 9d 00               CMP A, off(0x00)
0x333c DD=1: f0 07               JGT label_3345
0x333e DD=1: 8a 2b 04            JBS PSWL.3, label_3345
0x3341 DD=1: 5c 11               SB sbafix 02d1.4
0x3343 DD=1: 04 02               SJ label_3347
label_3345:
0x3345 DD=0: 5c 51               RB sbafix 02d1.4
label_3347:
0x3347 DD=0: 4a aa 15            JBS sbaoff ea.2, label_335f
0x334a DD=1: 88 03 00            L A, 0x0003[X1]
0x334d DD=1: 9d 00               CMP A, off(0x00)
0x334f DD=1: f0 0e               JGT label_335f
0x3351 DD=1: 8a 23 0e            JBR PSWL.3, label_3362
0x3354 DD=0: 95 5f               LB A, off(0x5f)
0x3356 DD=0: cc                  INCB A
0x3357 DD=0: b8 05 00 95         CMPB A, 0x0005[X1]
0x335b DD=0: f2 03               JLT label_3360
0x335d DD=0: 4a 2a               SB sbaoff ea.2
label_335f:
0x335f DD=0: fb                  CLRB A
label_3360:
0x3360 DD=0: 35 5f               STB A, off(0x5f)
label_3362:
0x3362 DD=0: 20 09 8e            MOV X1, #0x8e09
0x3365 DD=1: 80                  L A, [X1]
0x3366 DD=1: 4b a5 03            JBS sbaoff e5.3, label_336c
0x3369 DD=1: 88 02 00            L A, 0x0002[X1]
label_336c:
0x336c DD=1: 9d 00               CMP A, off(0x00)
0x336e DD=1: b5 e5 1b            MB off(0xe5).3, C
0x3371 DD=1: 88 04 00            L A, 0x0004[X1]
0x3374 DD=1: 4c a5 03            JBS sbaoff e5.4, label_337a
0x3377 DD=1: 88 06 00            L A, 0x0006[X1]
label_337a:
0x337a DD=1: 9d 00               CMP A, off(0x00)
0x337c DD=1: 9a 56               BOR C, PSWH.6
0x337e DD=1: b5 e5 1c            MB off(0xe5).4, C
0x3381 DD=1: ca                  RC
0x3382 DD=1: 4a ea 12            JBR sbaoff ea.2, label_3397
0x3385 DD=1: 5c 97 0f            JBS sbafix 02d7.4, label_3397
0x3388 DD=1: 5c 94 0c            JBS sbafix 02d4.4, label_3397
0x338b DD=1: 4b e5 09            JBR sbaoff e5.3, label_3397
0x338e DD=1: 4c a5 06            JBS sbaoff e5.4, label_3397
0x3391 DD=0: 94 70               LB A, 0x0270
0x3393 DD=0: b8 08 00 95         CMPB A, 0x0008[X1]
label_3397:
0x3397 DD=0: b4 ec 18            MB 0x02ec.0, C
0x339a DD=0: 22 70 ee            MOV DP, #0xee70
0x339d DD=0: 95 04               LB A, off(0x04)
0x339f DD=0: a5 02 74            MOV X1, off(0x02)
0x33a2 DD=0: b4 3f 71            MOVB R1, 0x023f
0x33a5 DD=0: a4 40 72            MOV ER2, 0x0240
0x33a8 DD=0: 16 12               MOVB R6, #0x12
0x33aa DD=0: 46 1d               ACAL label_121d
0x33ac DD=0: 35 60               STB A, off(0x60)
0x33ae DD=0: b5 5d a9            MULB off(0x5d)
0x33b1 DD=1: d9                  SDD
0x33b2 DD=1: bc 8d               SLL A, 2
0x33b4 DD=1: f5 02               JGE label_33b8
0x33b6 DD=1: bc d7               FILL A
label_33b8:
0x33b8 DD=1: b6 07 86 a7         MOVB 0x02a7, ACCH
0x33bc DD=1: 59 6c               RB sbafix 02ec.1
0x33be DD=1: 9a 16               MB C, PSWH.6
0x33c0 DD=1: fd                  CPL C
0x33c1 DD=1: b5 e5 1d            MB off(0xe5).5, C
0x33c4 DD=1: 5c 97 03            JBS sbafix 02d7.4, label_33ca
0x33c7 DD=1: 5c d4 04            JBR sbafix 02d4.4, label_33ce
label_33ca:
0x33ca DD=0: fb                  CLRB A
0x33cb DD=0: 03 85 34            J label_3485
label_33ce:
0x33ce DD=1: 4d e5 1d            JBR sbaoff e5.5, label_33ee
0x33d1 DD=0: f9 03               LB A, #0x03
0x33d3 DD=0: b5 5e a6 06         TJNZB off(0x5e), label_33dd
0x33d7 DD=0: b5 65 a6 02         TJNZB off(0x65), label_33dd
0x33db DD=0: f9 03               LB A, #0x03
label_33dd:
0x33dd DD=0: 35 61               STB A, off(0x61)
0x33df DD=0: b5 64 c7            CLRB off(0x64)
0x33e2 DD=0: b5 62 c7            CLRB off(0x62)
0x33e5 DD=0: 4d 65               RB sbaoff e5.5
0x33e7 DD=0: 4e 25               SB sbaoff e5.6
0x33e9 DD=0: d7 65 0a            MOVB off(0x65), #0x0a
0x33ec DD=0: 04 4a               SJ label_3438
label_33ee:
0x33ee DD=0: fb                  CLRB A
0x33ef DD=0: b7 d6 03 00         RB 0x03d6.0
0x33f3 DD=0: b7 d6 03 29 3e      JBS 0x03d6.1, label_3436
0x33f8 DD=0: d5 64 ff            CMPB off(0x64), #0xff
0x33fb DD=0: f1 03               JEQ label_3400
0x33fd DD=0: b5 64 c6            INCB off(0x64)
label_3400:
0x3400 DD=0: d5 64 20            CMPB off(0x64), #0x20
0x3403 DD=0: f2 2e               JLT label_3433
0x3405 DD=0: 20 36 8e            MOV X1, #0x8e36
0x3408 DD=0: 22 1d 8e            MOV DP, #0x8e1d
0x340b DD=0: 14 02               MOVB R4, #0x02
0x340d DD=1: 84 4c               L A, 0x024c
loop_340f:
0x340f DD=1: 50                  DEC X1
0x3410 DD=1: a1 95               CMP A, [DP-]
0x3412 DD=1: f5 03               JGE label_3417
0x3414 DD=1: 05 79               DJNZ R4, loop_340f
0x3416 DD=1: 50                  DEC X1
label_3417:
0x3417 DD=1: 60 a3 03 00         ADD X1, #0x0003
0x341b DD=1: 22 25 8e            MOV DP, #0x8e25
0x341e DD=1: 14 04               MOVB R4, #0x04
loop_3420:
0x3420 DD=1: 60 83 03 00         SUB X1, #0x0003
0x3424 DD=1: a1 91 00            CMP [DP-], off(0x00)
0x3427 DD=1: f7 06               JLE label_342f
0x3429 DD=1: 05 75               DJNZ R4, loop_3420
0x342b DD=1: 60 83 03 00         SUB X1, #0x0003
label_342f:
0x342f DD=0: 90                  LB A, [X1]
0x3430 DD=0: b5 64 c7            CLRB off(0x64)
label_3433:
0x3433 DD=0: b5 61 c7            CLRB off(0x61)
label_3436:
0x3436 DD=0: 35 62               STB A, off(0x62)
label_3438:
0x3438 DD=0: 20 36 8e            MOV X1, #0x8e36
0x343b DD=0: 95 04               LB A, off(0x04)
0x343d DD=0: aa 71               MOV ER1, [X1+A]
0x343f DD=0: a5 02 72            MOV ER2, off(0x02)
0x3442 DD=0: 45 17               ACAL label_1117
0x3444 DD=0: 35 63               STB A, off(0x63)
0x3446 DD=0: b5 65 70            MOVB R0, off(0x65)
0x3449 DD=0: 68 83 01            SUBB R0, #0x01
0x344c DD=0: f5 02               JGE label_3450
0x344e DD=0: 68 c7               CLRB R0
label_3450:
0x3450 DD=0: 68 87 65            MOVB off(0x65), R0
0x3453 DD=0: 58 ac 06            JBS sbafix 02ec.0, label_345c
0x3456 DD=0: 4b e5 03            JBR sbaoff e5.3, label_345c
0x3459 DD=0: 4c e5 29            JBR sbaoff e5.4, label_3485
label_345c:
0x345c DD=0: 95 5e               LB A, off(0x5e)
0x345e DD=0: ad 61               ADDB A, off(0x61)
0x3460 DD=0: f5 02               JGE label_3464
0x3462 DD=0: bc d7               FILLB A
label_3464:
0x3464 DD=0: 8d 62               SUBB A, off(0x62)
0x3466 DD=0: f5 01               JGE label_3469
0x3468 DD=0: fb                  CLRB A
label_3469:
0x3469 DD=0: 9d 63               CMPB A, off(0x63)
0x346b DD=0: 68 c7               CLRB R0
0x346d DD=0: f7 0a               JLE label_3479
0x346f DD=0: 95 63               LB A, off(0x63)
0x3471 DD=0: b5 66 70            MOVB R0, off(0x66)
0x3474 DD=0: c0                  INCB R0
0x3475 DD=0: f6 02               JNE label_3479
0x3477 DD=0: 68 d7               FILLB R0
label_3479:
0x3479 DD=0: 68 87 66            MOVB off(0x66), R0
0x347c DD=0: 68 93 14            CMPB R0, #0x14
0x347f DD=0: f7 04               JLE label_3485
0x3481 DD=0: b7 d6 03 08         SB 0x03d6.0
label_3485:
0x3485 DD=0: 35 5e               STB A, off(0x5e)
label_3487:
0x3487 DD=0: 95 46               LB A, off(0x46)
0x3489 DD=0: b5 47 70            MOVB R0, off(0x47)
0x348c DD=0: ca                  RC
0x348d DD=0: b7 c2 06 25 35      JBR 0x06c2.5, label_34c7
0x3492 DD=0: 4d aa 3a            JBS sbaoff ea.5, label_34cf
0x3495 DD=0: 4c aa 11            JBS sbaoff ea.4, label_34a9
0x3498 DD=0: 68 93 00            CMPB R0, #0x00
0x349b DD=0: f5 05               JGE label_34a2
0x349d DD=0: c0                  INCB R0
0x349e DD=0: f9 00               LB A, #0x00
0x34a0 DD=0: 04 2d               SJ label_34cf
label_34a2:
0x34a2 DD=0: 4c 2a               SB sbaoff ea.4
0x34a4 DD=0: 68 c7               CLRB R0
0x34a6 DD=0: d7 48 00            MOVB off(0x48), #0x00
label_34a9:
0x34a9 DD=0: 68 91 48            CMPB R0, off(0x48)
0x34ac DD=0: c0                  INCB R0
0x34ad DD=0: f2 14               JLT label_34c3
0x34af DD=0: 68 c7               CLRB R0
0x34b1 DD=0: 11 02               MOVB R1, #0x02
0x34b3 DD=0: 12 00               MOVB R2, #0x00
0x34b5 DD=0: 9e 00               CMPB A, #0x00
0x34b7 DD=0: f2 04               JLT label_34bd
0x34b9 DD=0: 11 05               MOVB R1, #0x05
0x34bb DD=0: 12 00               MOVB R2, #0x00
label_34bd:
0x34bd DD=0: 6a 87 48            MOVB off(0x48), R2
0x34c0 DD=0: 09                  SUBB A, R1
0x34c1 DD=0: f2 04               JLT label_34c7
label_34c3:
0x34c3 DD=0: cb                  SC
0x34c4 DD=0: bc a6 08            TJNZB A, label_34cf
label_34c7:
0x34c7 DD=0: b5 ea 1d            MB off(0xea).5, C
0x34ca DD=0: 4c 6a               RB sbaoff ea.4
0x34cc DD=0: fb                  CLRB A
0x34cd DD=0: 68 c7               CLRB R0
label_34cf:
0x34cf DD=0: 35 46               STB A, off(0x46)
0x34d1 DD=0: 68 87 47            MOVB off(0x47), R0
0x34d4 DD=0: f9 80               LB A, #0x80
0x34d6 DD=0: 11 0a               MOVB R1, #0x0a
0x34d8 DD=0: 59 e3 4e            JBR sbafix 02e3.1, label_3529
0x34db DD=0: b7 c2 06 25 49      JBR 0x06c2.5, label_3529
0x34e0 DD=0: b5 46 a6 45         TJNZB off(0x46), label_3529
0x34e4 DD=1: f8 de 1d            L A, #0x1dde
0x34e7 DD=1: 8d 00               SUB A, off(0x00)
0x34e9 DD=1: 9a 56               BOR C, PSWH.6
0x34eb DD=1: b5 e9 1d            MB off(0xe9).5, C
0x34ee DD=1: f5 01               JGE label_34f1
0x34f0 DD=1: cf                  NEG A
label_34f1:
0x34f1 DD=1: 35 4a               ST A, off(0x4a)
0x34f3 DD=1: b5 4c 71            MOVB R1, off(0x4c)
0x34f6 DD=1: 69 a7 03            TJZB R1, label_34fc
0x34f9 DD=1: d1                  DEC R1
0x34fa DD=1: 04 31               SJ label_352d
label_34fc:
0x34fc DD=1: 22 8b 8c            MOV DP, #0x8c8b
0x34ff DD=1: 9e ff 00            CMP A, #0x00ff
0x3502 DD=1: f5 05               JGE label_3509
0x3504 DD=1: 11 05               MOVB R1, #0x05
0x3506 DD=1: 22 8a 8c            MOV DP, #0x8c8a
label_3509:
0x3509 DD=1: b2 70               MOVB R0, [DP]
0x350b DD=0: 95 4d               LB A, off(0x4d)
0x350d DD=0: 8e 80               SUBB A, #0x80
0x350f DD=0: 4d e9 06            JBR sbaoff e9.5, label_3518
0x3512 DD=0: 08                  SUBB A, R0
0x3513 DD=0: f5 08               JGE label_351d
0x3515 DD=0: fb                  CLRB A
0x3516 DD=0: 04 05               SJ label_351d
label_3518:
0x3518 DD=0: 28                  ADDB A, R0
0x3519 DD=0: f5 02               JGE label_351d
0x351b DD=0: bc d7               FILLB A
label_351d:
0x351d DD=0: 9e 69               CMPB A, #0x69
0x351f DD=0: f5 02               JGE label_3523
0x3521 DD=0: f9 69               LB A, #0x69
label_3523:
0x3523 DD=0: 9e 97               CMPB A, #0x97
0x3525 DD=0: f7 02               JLE label_3529
0x3527 DD=0: f9 97               LB A, #0x97
label_3529:
0x3529 DD=0: ae 80               ADDB A, #0x80
0x352b DD=0: 35 4d               STB A, off(0x4d)
label_352d:
0x352d DD=0: 69 87 4c            MOVB off(0x4c), R1
0x3530 DD=0: fb                  CLRB A
0x3531 DD=0: 58 e4 1e            JBR sbafix 02e4.0, label_3552
0x3534 DD=0: b7 c3 06 20 19      JBR 0x06c3.0, label_3552
0x3539 DD=1: fa                  CLR A
0x353a DD=1: b7 54 03 97         MOVB A, 0x0354
0x353e DD=1: b7 d8 03 24 05      JBR 0x03d8.4, label_3548
0x3543 DD=1: de ff 00            XOR A, #0x00ff
0x3546 DD=1: 04 03               SJ label_354b
label_3548:
0x3548 DD=1: ae 00 01            ADD A, #0x0100
label_354b:
0x354b DD=1: 22 8c 8c            MOV DP, #0x8c8c
0x354e DD=1: 44 70               ACAL label_1070
0x3550 DD=1: ae 80 35            ADD A, #0x3580
0x3553 DD=1: 19                  CMP A, ER1
0x3554 DD=1: c4 4c 20 00         CMP 0x024c, #0x0020
0x3558 DD=1: f5 23               JGE label_357d
0x355a DD=1: 84 34               L A, 0x0234
0x355c DD=1: 48 a6 09            JBS sbaoff e6.0, label_3568
0x355f DD=1: 9e 00 40            CMP A, #0x4000
0x3562 DD=1: f7 19               JLE label_357d
0x3564 DD=1: 48 26               SB sbaoff e6.0
0x3566 DD=1: 04 08               SJ label_3570
label_3568:
0x3568 DD=1: d5 4f 0a            CMPB off(0x4f), #0x0a
0x356b DD=1: f5 0a               JGE label_3577
0x356d DD=1: b5 4f c6            INCB off(0x4f)
label_3570:
0x3570 DD=1: 22 a3 8c            MOV DP, #0x8ca3
0x3573 DD=1: 44 70               ACAL label_1070
0x3575 DD=1: 04 0c               SJ label_3583
label_3577:
0x3577 DD=0: 95 4e               LB A, off(0x4e)
0x3579 DD=0: 8e 03               SUBB A, #0x03
0x357b DD=0: f5 06               JGE label_3583
label_357d:
0x357d DD=0: fb                  CLRB A
0x357e DD=0: 48 66               RB sbaoff e6.0
0x3580 DD=0: b5 4f c7            CLRB off(0x4f)
label_3583:
0x3583 DD=0: 35 4e               STB A, off(0x4e)
0x3585 DD=1: fa                  CLR A
0x3586 DD=0: 95 15               LB A, off(0x15)
0x3588 DD=1: fc                  EXTND
0x3589 DD=1: 38                  ST A, ER0
0x358a DD=1: fa                  CLR A
0x358b DD=0: 95 12               LB A, off(0x12)
0x358d DD=1: fc                  EXTND
0x358e DD=1: 64 a4               ADD ER0, A
0x3590 DD=1: fa                  CLR A
0x3591 DD=0: 95 19               LB A, off(0x19)
0x3593 DD=1: fc                  EXTND
0x3594 DD=1: 64 a4               ADD ER0, A
0x3596 DD=1: fa                  CLR A
0x3597 DD=0: 95 4d               LB A, off(0x4d)
0x3599 DD=1: fc                  EXTND
0x359a DD=1: 64 a4               ADD ER0, A
0x359c DD=1: fa                  CLR A
0x359d DD=0: 95 42               LB A, off(0x42)
0x359f DD=0: 64 a4               ADD ER0, A
0x35a1 DD=1: fa                  CLR A
0x35a2 DD=0: 95 4e               LB A, off(0x4e)
0x35a4 DD=0: 64 a4               ADD ER0, A
0x35a6 DD=1: fa                  CLR A
0x35a7 DD=0: 95 5e               LB A, off(0x5e)
0x35a9 DD=0: 64 84               SUB ER0, A
0x35ab DD=1: fa                  CLR A
0x35ac DD=0: 95 46               LB A, off(0x46)
0x35ae DD=0: 64 84               SUB ER0, A
0x35b0 DD=0: 94 7e               LB A, 0x027e
0x35b2 DD=0: 61 aa               MOV X2, A
0x35b4 DD=0: b9 0a 05 97         MOVB A, 0x050a[X2]
0x35b8 DD=0: 28                  ADDB A, R0
0x35b9 DD=0: 69 72               MOVB R2, R1
0x35bb DD=0: 6a f3 00            ADCB R2, #0x00
0x35be DD=0: 69 2f 06            JBS R1.7, label_35c7
0x35c1 DD=0: f1 07               JEQ label_35ca
0x35c3 DD=0: bc d7               FILLB A
0x35c5 DD=0: 04 03               SJ label_35ca
label_35c7:
0x35c7 DD=0: f2 01               JLT label_35ca
0x35c9 DD=0: fb                  CLRB A
label_35ca:
0x35ca DD=0: bc 99 1a 05         STB A, 0x051a[X2]
0x35ce DD=0: 5a e4 11            JBR sbafix 02e4.2, label_35e2
0x35d1 DD=0: c4 4c ff 03         CMP 0x024c, #0x03ff
0x35d5 DD=0: 8a 1b               MB PSWL.3, C
0x35d7 DD=0: f5 03               JGE label_35dc
0x35d9 DD=0: d7 6e 14            MOVB off(0x6e), #0x14
label_35dc:
0x35dc DD=0: c4 4c 04 00         CMP 0x024c, #0x0004
0x35e0 DD=0: f5 09               JGE label_35eb
label_35e2:
0x35e2 DD=0: b5 e7 c7            CLRB off(0xe7)
0x35e5 DD=0: b5 1e c7            CLRB off(0x1e)
0x35e8 DD=0: 03 3d 36            J label_363d
label_35eb:
0x35eb DD=0: 95 e7               LB A, off(0xe7)
0x35ed DD=0: be f0               ANDB A, #0xf0
0x35ef DD=0: f6 41               JNE label_3632
0x35f1 DD=0: 4a a7 23            JBS sbaoff e7.2, label_3617
0x35f4 DD=0: 48 a7 15            JBS sbaoff e7.0, label_360c
0x35f7 DD=0: b5 1e c7            CLRB off(0x1e)
0x35fa DD=0: 8a 2b 40            JBS PSWL.3, label_363d
0x35fd DD=0: c5 00 ff ff         CMP off(0x00), #0xffff
0x3601 DD=0: f7 3a               JLE label_363d
0x3603 DD=0: b5 6e a7 36         TJZB off(0x6e), label_363d
0x3607 DD=0: d7 6a 00            MOVB off(0x6a), #0x00
0x360a DD=0: 48 27               SB sbaoff e7.0
label_360c:
0x360c DD=0: b5 6a a6 2d         TJNZB off(0x6a), label_363d
0x3610 DD=0: 4a 27               SB sbaoff e7.2
0x3612 DD=0: 48 67               RB sbaoff e7.0
0x3614 DD=0: d7 6b c8            MOVB off(0x6b), #0xc8
label_3617:
0x3617 DD=0: 20 e3 8b            MOV X1, #0x8be3
0x361a DD=0: 95 04               LB A, off(0x04)
0x361c DD=0: aa 71               MOV ER1, [X1+A]
0x361e DD=0: a5 02 72            MOV ER2, off(0x02)
0x3621 DD=0: 45 17               ACAL label_1117
0x3623 DD=0: 35 1e               STB A, off(0x1e)
0x3625 DD=0: b5 6b a6 14         TJNZB off(0x6b), label_363d
0x3629 DD=0: b5 e7 c3 f0         OR off(0xe7), #0xf0
0x362d DD=0: 4a 67               RB sbaoff e7.2
0x362f DD=0: d7 6c 0a            MOVB off(0x6c), #0x0a
label_3632:
0x3632 DD=0: b5 6c a6 07         TJNZB off(0x6c), label_363d
0x3636 DD=0: d7 6c 0a            MOVB off(0x6c), #0x0a
0x3639 DD=0: b5 1e a3 01         ADDB off(0x1e), #0x01
label_363d:
0x363d DD=0: 5c e4 4d            JBR sbafix 02e4.4, label_368d
0x3640 DD=0: 20 fd 8b            MOV X1, #0x8bfd
0x3643 DD=0: 5a f1 03            JBR sbafix 02f1.2, label_3649
0x3646 DD=0: 20 ff 8b            MOV X1, #0x8bff
label_3649:
0x3649 DD=1: 84 4c               L A, 0x024c
0x364b DD=1: a0 95               CMP A, [X1]
0x364d DD=1: 48 aa 04            JBS sbaoff ea.0, label_3654
0x3650 DD=1: a8 02 00 95         CMP A, 0x0002[X1]
label_3654:
0x3654 DD=1: fd                  CPL C
0x3655 DD=1: b5 ea 18            MB off(0xea).0, C
0x3658 DD=1: a8 04 00 95         CMP A, 0x0004[X1]
0x365c DD=1: 49 aa 04            JBS sbaoff ea.1, label_3663
0x365f DD=1: a8 06 00 95         CMP A, 0x0006[X1]
label_3663:
0x3663 DD=1: fd                  CPL C
0x3664 DD=1: b5 ea 19            MB off(0xea).1, C
0x3667 DD=1: 85 00               L A, off(0x00)
0x3669 DD=1: a8 08 00 95         CMP A, 0x0008[X1]
0x366d DD=1: 4b a0 04            JBS sbaoff e0.3, label_3674
0x3670 DD=1: a8 0a 00 95         CMP A, 0x000a[X1]
label_3674:
0x3674 DD=1: fd                  CPL C
0x3675 DD=1: b5 e0 1b            MB off(0xe0).3, C
0x3678 DD=1: a8 0c 00 95         CMP A, 0x000c[X1]
0x367c DD=1: 4c a0 04            JBS sbaoff e0.4, label_3683
0x367f DD=1: a8 0e 00 95         CMP A, 0x000e[X1]
label_3683:
0x3683 DD=1: fd                  CPL C
0x3684 DD=1: b5 e0 1c            MB off(0xe0).4, C
0x3687 DD=1: c4 4c 04 00         CMP 0x024c, #0x0004
0x368b DD=1: f5 05               JGE label_3692
label_368d:
0x368d DD=1: 64 c7               CLR ER0
0x368f DD=0: fb                  CLRB A
0x3690 DD=0: 04 49               SJ label_36db
label_3692:
0x3692 DD=1: b5 ea 10            MB C, off(0xea).0
0x3695 DD=1: b5 ea 49            BANDN C, off(0xea).1
0x3698 DD=1: b5 e0 43            BAND C, off(0xe0).3
0x369b DD=1: b5 e0 4c            BANDN C, off(0xe0).4
0x369e DD=1: f5 1f               JGE label_36bf
0x36a0 DD=1: b8 10 00 90 70      CMPB 0x0010[X1], 0x0270
0x36a5 DD=1: f2 18               JLT label_36bf
0x36a7 DD=1: b8 11 00 90 6e      CMPB 0x0011[X1], 0x026e
0x36ac DD=1: f2 11               JLT label_36bf
0x36ae DD=0: 95 04               LB A, off(0x04)
0x36b0 DD=0: ae 14               ADDB A, #0x14
0x36b2 DD=0: aa 71               MOV ER1, [X1+A]
0x36b4 DD=0: a5 02 72            MOV ER2, off(0x02)
0x36b7 DD=0: 45 17               ACAL label_1117
0x36b9 DD=0: 11 01               MOVB R1, #0x01
0x36bb DD=0: 68 c7               CLRB R0
0x36bd DD=0: 04 1c               SJ label_36db
label_36bf:
0x36bf DD=1: 68 c7               CLRB R0
0x36c1 DD=0: 95 e8               LB A, off(0xe8)
0x36c3 DD=0: 39                  STB A, R1
0x36c4 DD=0: f1 15               JEQ label_36db
0x36c6 DD=0: 48 e8 02            JBR sbaoff e8.0, label_36cb
0x36c9 DD=0: 11 f0               MOVB R1, #0xf0
label_36cb:
0x36cb DD=0: 95 1f               LB A, off(0x1f)
0x36cd DD=0: b5 69 70            MOVB R0, off(0x69)
0x36d0 DD=0: 68 a6 08            TJNZB R0, label_36db
0x36d3 DD=0: b8 13 00 70         MOVB R0, 0x0013[X1]
0x36d7 DD=0: b8 12 00 a5         ADDB A, 0x0012[X1]
label_36db:
0x36db DD=0: 69 87 e8            MOVB off(0xe8), R1
0x36de DD=0: 35 1f               STB A, off(0x1f)
0x36e0 DD=0: 68 87 69            MOVB off(0x69), R0
0x36e3 DD=0: 20 ba 8c            MOV X1, #0x8cba
0x36e6 DD=0: 95 04               LB A, off(0x04)
0x36e8 DD=0: aa 71               MOV ER1, [X1+A]
0x36ea DD=0: a5 02 72            MOV ER2, off(0x02)
0x36ed DD=0: 45 17               ACAL label_1117
0x36ef DD=0: 35 20               STB A, off(0x20)
0x36f1 DD=1: fa                  CLR A
0x36f2 DD=0: 94 7e               LB A, 0x027e
0x36f4 DD=0: 61 aa               MOV X2, A
0x36f6 DD=0: 4a a7 18            JBS sbaoff e7.2, label_3711
0x36f9 DD=0: 48 a8 2d            JBS sbaoff e8.0, label_3729
0x36fc DD=0: b9 1a 05 71         MOVB R1, 0x051a[X2]
0x3700 DD=0: ae 04               ADDB A, #0x04
0x3702 DD=0: b5 e7 ca            TBR off(0xe7).(AL)
0x3705 DD=0: f1 13               JEQ label_371a
0x3707 DD=0: 69 91 1e            CMPB R1, off(0x1e)
0x370a DD=0: f0 05               JGT label_3711
0x370c DD=0: b5 e7 b9            RBR off(0xe7).(AL)
0x370f DD=0: 04 03               SJ label_3714
label_3711:
0x3711 DD=0: b5 1e 71            MOVB R1, off(0x1e)
label_3714:
0x3714 DD=0: b5 e8 b3 0e         ANDB off(0xe8), #0x0e
0x3718 DD=0: 04 16               SJ label_3730
label_371a:
0x371a DD=0: b5 e8 ca            TBR off(0xe8).(AL)
0x371d DD=0: f1 11               JEQ label_3730
0x371f DD=0: 69 91 1f            CMPB R1, off(0x1f)
0x3722 DD=0: f0 05               JGT label_3729
0x3724 DD=0: b5 e8 b9            RBR off(0xe8).(AL)
0x3727 DD=0: 04 03               SJ label_372c
label_3729:
0x3729 DD=0: b5 1f 71            MOVB R1, off(0x1f)
label_372c:
0x372c DD=0: b5 e7 b3 00         ANDB off(0xe7), #0x00
label_3730:
0x3730 DD=0: 69 91 20            CMPB R1, off(0x20)
0x3733 DD=0: f5 03               JGE label_3738
0x3735 DD=0: b5 20 71            MOVB R1, off(0x20)
label_3738:
0x3738 DD=0: 69 99 21 05         MOVB 0x0521[X2], R1
0x373c DD=0: 22 d4 8c            MOV DP, #0x8cd4
0x373f DD=1: 85 00               L A, off(0x00)
0x3741 DD=1: 44 70               ACAL label_1070
0x3743 DD=1: 35 25               ST A, off(0x25)
0x3745 DD=1: fa                  CLR A
0x3746 DD=0: 94 7e               LB A, 0x027e
0x3748 DD=0: 61 aa               MOV X2, A
0x374a DD=0: 95 25               LB A, off(0x25)
0x374c DD=0: b9 21 05 a5         ADDB A, 0x0521[X2]
0x3750 DD=0: f2 04               JLT label_3756
0x3752 DD=0: 9e ff               CMPB A, #0xff
0x3754 DD=0: f2 02               JLT label_3758
label_3756:
0x3756 DD=0: f9 ff               LB A, #0xff
label_3758:
0x3758 DD=0: 37 26 05            STB A, 0x0526
0x375b DD=0: 22 ee 8c            MOV DP, #0x8cee
0x375e DD=1: 85 00               L A, off(0x00)
0x3760 DD=1: 44 a3               ACAL label_10a3
0x3762 DD=1: 68 c7               CLRB R0
0x3764 DD=1: b5 2b 71            MOVB R1, off(0x2b)
0x3767 DD=1: 64 a9               MUL ER0
0x3769 DD=1: 10 02               MOVB R0, #0x02
0x376b DD=1: 46 c5               ACAL label_12c5
0x376d DD=1: 24 ff ff            MOV ER0, #0xffff
0x3770 DD=1: 18                  CMP A, ER0
0x3771 DD=1: f5 06               JGE label_3779
0x3773 DD=1: 24 01 00            MOV ER0, #0x0001
0x3776 DD=1: 18                  CMP A, ER0
0x3777 DD=1: f5 01               JGE label_377a
label_3779:
0x3779 DD=1: 74                  L A, ER0
label_377a:
0x377a DD=1: 35 2c               ST A, off(0x2c)
0x377c DD=0: 95 26               LB A, off(0x26)
0x377e DD=0: 26 09 00            MOV ER2, #0x0009
0x3781 DD=0: 9e 9c               CMPB A, #0x9c
0x3783 DD=0: f5 0a               JGE label_378f
0x3785 DD=0: 26 0a aa            MOV ER2, #0xaa0a
0x3788 DD=0: 9e 47               CMPB A, #0x47
0x378a DD=0: f5 03               JGE label_378f
0x378c DD=0: 26 0b 55            MOV ER2, #0x550b
label_378f:
0x378f DD=0: 6d 84               SUBB R5, A
0x3791 DD=1: fa                  CLR A
0x3792 DD=0: 94 7e               LB A, 0x027e
0x3794 DD=0: 60 aa               MOV X1, A
0x3796 DD=0: 61 aa               MOV X2, A
0x3798 DD=0: 61 8c               SLL X2, 1
0x379a DD=0: da                  DI
0x379b DD=0: b5 26 98 27 05      MOVB 0x0527[X1], off(0x26)
0x37a0 DD=0: a5 2c 99 2e 05      MOV 0x052e[X2], off(0x2c)
0x37a5 DD=0: 66 99 36 05         MOV 0x0536[X2], ER2
0x37a9 DD=0: b5 e0 10            MB C, off(0xe0).0
0x37ac DD=0: b8 e1 05 18         MB 0x05e1[X1].0, C
0x37b0 DD=0: b5 e0 11            MB C, off(0xe0).1
0x37b3 DD=0: b8 e1 05 19         MB 0x05e1[X1].1, C
0x37b7 DD=0: db                  EI
0x37b8 DD=0: d6 03 06            MOVB LRBH, #0x06
0x37bb DD=0: 5d e4 36            JBR sbafix 02e4.5, label_37f4
0x37be DD=0: 94 7e               LB A, 0x027e
0x37c0 DD=0: f6 2e               JNE label_37f0
0x37c2 DD=1: 85 84               L A, off(0x84)
0x37c4 DD=1: a5 86 70            MOV ER0, off(0x86)
0x37c7 DD=1: b5 88 76            MOVB R6, off(0x88)
0x37ca DD=1: a7 00 05 a5         ADD A, 0x0500
0x37ce DD=1: 64 f3 00 00         ADC ER0, #0x0000
0x37d2 DD=1: 6e c6               INCB R6
0x37d4 DD=1: 6e 93 00            CMPB R6, #0x00
0x37d7 DD=1: f2 0f               JLT label_37e8
0x37d9 DD=1: 64 c8               XCHG A, ER0
0x37db DD=1: 6f c7               CLRB R7
0x37dd DD=1: 67 fb               DIVQ ER3
0x37df DD=1: 35 82               ST A, off(0x82)
0x37e1 DD=1: 4e 08               SB sbaoff c8.6
0x37e3 DD=1: fa                  CLR A
0x37e4 DD=1: 64 c7               CLR ER0
0x37e6 DD=1: 6e c7               CLRB R6
label_37e8:
0x37e8 DD=1: 35 84               ST A, off(0x84)
0x37ea DD=1: 64 87 86            MOV off(0x86), ER0
0x37ed DD=1: 6e 87 88            MOVB off(0x88), R6
label_37f0:
0x37f0 DD=1: b5 c8 3e 03         JBSR off(0xc8).6, label_37f7
label_37f4:
0x37f4 DD=1: 03 91 38            J label_3891
label_37f7:
0x37f7 DD=1: 22 6e 8e            MOV DP, #0x8e6e
0x37fa DD=1: 44 00               ACAL label_1000
0x37fc DD=1: 35 89               ST A, off(0x89)
0x37fe DD=1: 22 5f 8e            MOV DP, #0x8e5f
0x3801 DD=1: 44 00               ACAL label_1000
0x3803 DD=1: 35 8a               ST A, off(0x8a)
0x3805 DD=0: 94 71               LB A, 0x0271
0x3807 DD=0: 22 7d 8e            MOV DP, #0x8e7d
0x380a DD=0: 45 33               ACAL label_1133
0x380c DD=0: 35 8b               STB A, off(0x8b)
0x380e DD=0: b7 ee 05 2c 3f      JBS 0x05ee.4, label_3852
0x3813 DD=1: 84 d4               L A, 0x02d4
0x3815 DD=1: be 13 00            AND A, #0x0013
0x3818 DD=1: f6 0a               JNE label_3824
0x381a DD=1: 84 d6               L A, 0x02d6
0x381c DD=1: be 00 80            AND A, #0x8000
0x381f DD=1: f6 03               JNE label_3824
0x3821 DD=1: 5f d0 31            JBR sbafix 02d0.7, label_3855
label_3824:
0x3824 DD=1: b7 ed 05 22 29      JBR 0x05ed.2, label_3852
0x3829 DD=1: b7 ee 05 28 24      JBS 0x05ee.0, label_3852
0x382e DD=1: da                  DI
0x382f DD=1: b7 ed 05 03         RB 0x05ed.3
0x3833 DD=1: b7 ed 05 04         RB 0x05ed.4
0x3837 DD=1: b7 ee 05 02         RB 0x05ee.2
0x383b DD=1: b7 ed 05 01         RB 0x05ed.1
0x383f DD=1: b7 ee 05 01         RB 0x05ee.1
0x3843 DD=1: b7 ee 05 03         RB 0x05ee.3
0x3847 DD=1: b5 8d c7            CLRB off(0x8d)
0x384a DD=1: b5 8e c7            CLRB off(0x8e)
0x384d DD=1: b7 ee 05 08         SB 0x05ee.0
0x3851 DD=1: db                  EI
label_3852:
0x3852 DD=1: 03 82 38            J label_3882
label_3855:
0x3855 DD=1: b7 ee 05 09         SB 0x05ee.1
0x3859 DD=1: b5 90 70            MOVB R0, off(0x90)
0x385c DD=1: 5b ef 06            JBR sbafix 02ef.3, label_3865
0x385f DD=1: 10 1e               MOVB R0, #0x1e
0x3861 DD=0: 95 89               LB A, off(0x89)
0x3863 DD=0: 04 0e               SJ label_3873
label_3865:
0x3865 DD=1: 68 a7 03            TJZB R0, label_386b
0x3868 DD=1: d0                  DEC R0
0x3869 DD=1: 04 14               SJ label_387f
label_386b:
0x386b DD=1: d4 70 7c            CMPB 0x0270, #0x7c
0x386e DD=0: fb                  CLRB A
0x386f DD=0: f2 0c               JLT label_387d
0x3871 DD=0: 95 8a               LB A, off(0x8a)
label_3873:
0x3873 DD=0: ad 8b               ADDB A, off(0x8b)
0x3875 DD=0: f2 04               JLT label_387b
0x3877 DD=0: ad 8c               ADDB A, off(0x8c)
0x3879 DD=0: f5 02               JGE label_387d
label_387b:
0x387b DD=0: bc d7               FILLB A
label_387d:
0x387d DD=0: 35 8d               STB A, off(0x8d)
label_387f:
0x387f DD=0: 68 87 90            MOVB off(0x90), R0
label_3882:
0x3882 DD=0: 22 50 8e            MOV DP, #0x8e50
0x3885 DD=0: 44 00               ACAL label_1000
0x3887 DD=0: 35 8f               STB A, off(0x8f)
0x3889 DD=0: 9d 8d               CMPB A, off(0x8d)
0x388b DD=0: f7 02               JLE label_388f
0x388d DD=0: 95 8d               LB A, off(0x8d)
label_388f:
0x388f DD=0: 35 8e               STB A, off(0x8e)
label_3891:
0x3891 DD=0: b4 7f a7 03         TJZB 0x027f, label_3898
0x3895 DD=0: b6 42 0a            SB IRQ1L.2
label_3898:
0x3898 DD=0: 5e 6f               RB sbafix 02ef.6
label_389a:
0x389a DD=0: 02                  RTI
label_389b:
0x389b DD=1: 86 f8               L A, ADCR20
0x389d DD=1: b6 07 86 74         MOVB 0x0274, ACCH
0x38a1 DD=1: 86 f9               L A, ADCR21
0x38a3 DD=1: b6 07 86 75         MOVB 0x0275, ACCH
0x38a7 DD=1: 86 fa               L A, ADCR22
0x38a9 DD=1: b6 07 86 76         MOVB 0x0276, ACCH
0x38ad DD=1: 86 fb               L A, ADCR23
0x38af DD=1: b6 07 86 77         MOVB 0x0277, ACCH
0x38b3 DD=1: 86 f6               L A, ADCR18
0x38b5 DD=1: b6 07 9b 95 03      MOVB 0x0395, ACCH
0x38ba DD=1: 86 f7               L A, ADCR19
0x38bc DD=1: b6 07 9b 96 03      MOVB 0x0396, ACCH
0x38c1 DD=1: e0                  VCAL 0x0
0x38c2 DD=1: a7 4e 04 93 fe 11   CMP 0x044e, #0x11fe
0x38c8 DD=1: f7 1a               JLE label_38e4
0x38ca DD=1: f8 55 55            L A, #0x5555
0x38cd DD=1: 14 02               MOVB R4, #0x02
loop_38cf:
0x38cf DD=1: 3c                  ST A, X1
0x38d0 DD=1: 3d                  ST A, X2
0x38d1 DD=1: 3e                  ST A, DP
0x38d2 DD=1: 1c                  CMP A, X1
0x38d3 DD=1: f6 3d               JNE label_3912
0x38d5 DD=1: 1d                  CMP A, X2
0x38d6 DD=1: f6 3a               JNE label_3912
0x38d8 DD=1: 1e                  CMP A, DP
0x38d9 DD=1: f6 37               JNE label_3912
0x38db DD=1: 8f                  SLL A
0x38dc DD=1: 05 71               DJNZ R4, loop_38cf
0x38de DD=1: a7 4e 04 ab 06 02   MOV 0x044e, #0x0206
label_38e4:
0x38e4 DD=1: a7 4e 04 74         MOV X1, 0x044e
0x38e8 DD=1: da                  DI
0x38e9 DD=1: a6 d6 70            MOV ER0, TM1
0x38ec DD=1: 14 04               MOVB R4, #0x04
loop_38ee:
0x38ee DD=1: 05 7e               DJNZ R4, loop_38ee
0x38f0 DD=1: 80                  L A, [X1]
0x38f1 DD=1: a0 ab 55 55         MOV [X1], #0x5555
0x38f5 DD=1: a0 75               MOV X2, [X1]
0x38f7 DD=1: a0 ab aa aa         MOV [X1], #0xaaaa
0x38fb DD=1: a0 76               MOV DP, [X1]
0x38fd DD=1: 30                  ST A, [X1]
0x38fe DD=1: 86 d6               L A, TM1
0x3900 DD=1: b6 40 12            MB C, IRQ0L.2
0x3903 DD=1: 8a 1b               MB PSWL.3, C
0x3905 DD=1: db                  EI
0x3906 DD=1: 61 93 55 55         CMP X2, #0x5555
0x390a DD=1: f6 06               JNE label_3912
0x390c DD=1: 62 93 aa aa         CMP DP, #0xaaaa
0x3910 DD=1: f1 05               JEQ label_3917
label_3912:
0x3912 DD=1: b4 2a ab c1         MOVB 0x022a, #0xc1
0x3916 DD=0: ff                  BRK
label_3917:
0x3917 DD=1: a7 4e 04 a3 02 00   ADD 0x044e, #0x0002
0x391d DD=1: 08                  SUB A, ER0
0x391e DD=1: 38                  ST A, ER0
0x391f DD=1: f1 0f               JEQ label_3930
0x3921 DD=1: f5 03               JGE label_3926
0x3923 DD=1: 8a 23 0a            JBR PSWL.3, label_3930
label_3926:
0x3926 DD=1: 9e 09 00            CMP A, #0x0009
0x3929 DD=1: f5 05               JGE label_3930
0x392b DD=1: 9e 02 00            CMP A, #0x0002
0x392e DD=1: f0 05               JGT label_3935
label_3930:
0x3930 DD=1: b4 2a ab c5         MOVB 0x022a, #0xc5
0x3934 DD=0: ff                  BRK
label_3935:
0x3935 DD=1: 20 08 00            MOV X1, #0x0008
0x3938 DD=1: 85 0e               L A, off(0x0e)
0x393a DD=1: 3e                  ST A, DP
label_393b:
0x393b DD=1: da                  DI
0x393c DD=1: 62 da               LC A, [DP]
0x393e DD=1: 38                  ST A, ER0
0x393f DD=1: 62 e7 02 00         LC A, 0x0002[DP]
0x3943 DD=1: 39                  ST A, ER1
0x3944 DD=1: 62 e7 04 00         LC A, 0x0004[DP]
0x3948 DD=1: 3a                  ST A, ER2
0x3949 DD=1: 62 e7 06 00         LC A, 0x0006[DP]
0x394d DD=1: db                  EI
0x394e DD=1: 3b                  ST A, ER3
0x394f DD=1: 62 a3 08 00         ADD DP, #0x0008
0x3953 DD=0: 95 10               LB A, off(0x10)
0x3955 DD=0: 28                  ADDB A, R0
0x3956 DD=0: 29                  ADDB A, R1
0x3957 DD=0: 2a                  ADDB A, R2
0x3958 DD=0: 2b                  ADDB A, R3
0x3959 DD=0: 2c                  ADDB A, R4
0x395a DD=0: 2d                  ADDB A, R5
0x395b DD=0: 2e                  ADDB A, R6
0x395c DD=0: 2f                  ADDB A, R7
0x395d DD=0: 35 10               STB A, off(0x10)
0x395f DD=1: d9                  SDD
0x3960 DD=1: 60 ea d8            DJNZ X1L, label_393b
0x3963 DD=1: 72                  L A, DP
0x3964 DD=1: 35 0e               ST A, off(0x0e)
0x3966 DD=1: f6 11               JNE label_3979
0x3968 DD=1: b7 14 a0 2f 0c      JBS 0xa014.7, label_3979
0x396d DD=0: 95 10               LB A, off(0x10)
0x396f DD=0: f1 08               JEQ label_3979
0x3971 DD=0: b5 10 c7            CLRB off(0x10)
0x3974 DD=0: b4 2a ab c2         MOVB 0x022a, #0xc2
0x3978 DD=0: ff                  BRK
label_3979:
0x3979 DD=1: e0                  VCAL 0x0
0x397a DD=1: b6 0b 93 f2         CMPB ROMWIN, #0xf2
0x397e DD=1: f6 48               JNE label_39c8
0x3980 DD=1: a6 00 93 fe 09      CMP SSP, #0x09fe
0x3985 DD=1: f6 41               JNE label_39c8
0x3987 DD=1: a6 46 93 0d 80      CMP IE0, #0x800d
0x398c DD=1: f6 3a               JNE label_39c8
0x398e DD=1: a6 48 93 4e 80      CMP IE1, #0x804e
0x3993 DD=1: f6 33               JNE label_39c8
0x3995 DD=1: b6 4a 93 c0         CMPB IE2L, #0xc0
0x3999 DD=1: f6 2d               JNE label_39c8
0x399b DD=1: a6 02 93 e0 06      CMP LRB, #0x06e0
0x39a0 DD=1: f6 26               JNE label_39c8
0x39a2 DD=1: f8 aa aa            L A, #0xaaaa
0x39a5 DD=1: 20 55 55            MOV X1, #0x5555
0x39a8 DD=1: da                  DI
0x39a9 DD=1: 36 02               ST A, LRB
0x39ab DD=1: 86 02               L A, LRB
0x39ad DD=1: 60 96 02            MOV LRB, X1
0x39b0 DD=1: a6 02 74            MOV X1, LRB
0x39b3 DD=1: c6 02 e0 06         MOV LRB, #0x06e0
0x39b7 DD=1: db                  EI
0x39b8 DD=1: 9e aa aa            CMP A, #0xaaaa
0x39bb DD=1: f6 0b               JNE label_39c8
0x39bd DD=1: 9f                  SRL A
0x39be DD=1: 1c                  CMP A, X1
0x39bf DD=1: f6 07               JNE label_39c8
0x39c1 DD=0: d8                  RDD
label_39c2:
0x39c2 DD=0: 36 04               STB A, PSWL
0x39c4 DD=0: 8a 95               CMPB A, PSWL
0x39c6 DD=0: f1 05               JEQ label_39cd
label_39c8:
0x39c8 DD=0: b4 2a ab c0         MOVB 0x022a, #0xc0
0x39cc DD=0: ff                  BRK
label_39cd:
0x39cd DD=0: 8f                  SLLB A
0x39ce DD=0: f5 f2               JGE label_39c2
0x39d0 DD=0: c6 02 e0 06         MOV LRB, #0x06e0
0x39d4 DD=0: 8a ab 00            MOVB PSWL, #0x00
0x39d7 DD=0: d6 03 08            MOVB LRBH, #0x08
0x39da DD=0: f9 14               LB A, #0x14
0x39dc DD=0: ac a5               ADDB A, 0x02a5
0x39de DD=0: f5 44               JGE label_3a24
0x39e0 DD=0: b5 b2 2e 49         JBS off(0xb2).6, label_3a2d
0x39e4 DD=0: b5 b0 01            RB off(0xb0).1
0x39e7 DD=0: f1 37               JEQ label_3a20
0x39e9 DD=0: d5 a3 48            CMPB off(0xa3), #0x48
0x39ec DD=0: f6 05               JNE label_39f3
0x39ee DD=0: d5 a4 77            CMPB off(0xa4), #0x77
0x39f1 DD=0: f1 01               JEQ label_39f4
label_39f3:
0x39f3 DD=0: ff                  BRK
label_39f4:
0x39f4 DD=0: da                  DI
0x39f5 DD=0: b5 b0 0a            SB off(0xb0).2
0x39f8 DD=0: a6 40 c7            CLR IRQ0
0x39fb DD=0: a6 42 c7            CLR IRQ1
0x39fe DD=0: d6 44 c0            MOVB IRQ2L, #0xc0
0x3a01 DD=0: c6 46 00 80         MOV IE0, #0x8000
0x3a05 DD=0: c6 48 40 00         MOV IE1, #0x0040
0x3a09 DD=0: d6 4a c0            MOVB IE2L, #0xc0
0x3a0c DD=0: c6 00 38 08         MOV SSP, #0x0838
0x3a10 DD=0: d6 02 e0            MOVB LRBL, #0xe0
0x3a13 DD=0: 8a ab 00            MOVB PSWL, #0x00
0x3a16 DD=0: d6 de 88            MOVB EVNTCONL, #0x88
0x3a19 DD=0: b6 ef c7            CLRB ADHENCON
0x3a1c DD=0: db                  EI
0x3a1d DD=0: 03 d7 51            J label_51d7
label_3a20:
0x3a20 DD=0: b5 b0 28 03         JBS off(0xb0).0, label_3a27
label_3a24:
0x3a24 DD=0: b5 a3 c7            CLRB off(0xa3)
label_3a27:
0x3a27 DD=0: b5 a4 c7            CLRB off(0xa4)
0x3a2a DD=0: b5 b0 02            RB off(0xb0).2
label_3a2d:
0x3a2d DD=0: b5 b3 20 05         JBR off(0xb3).0, label_3a36
0x3a31 DD=0: b7 6e 90 87 bb      MOVB off(0xbb), 0x906e
label_3a36:
0x3a36 DD=0: b5 b9 a6 07         TJNZB off(0xb9), label_3a41
0x3a3a DD=0: b5 bb a6 03         TJNZB off(0xbb), label_3a41
0x3a3e DD=0: b5 b3 05            RB off(0xb3).5
label_3a41:
0x3a41 DD=0: d6 03 06            MOVB LRBH, #0x06
0x3a44 DD=0: 47 61               ACAL label_1361
0x3a46 DD=0: 47 13               ACAL label_1313
0x3a48 DD=0: e0                  VCAL 0x0
label_3a49:
0x3a49 DD=0: 59 e5 34            JBR sbafix 02e5.1, label_3a80
0x3a4c DD=0: 59 f3 31            JBR sbafix 02f3.1, label_3a80
0x3a4f DD=0: d4 8c 01            CMPB 0x028c, #0x01
0x3a52 DD=0: fd                  CPL C
0x3a53 DD=0: b4 f4 1a            MB 0x02f4.2, C
0x3a56 DD=0: 94 88               LB A, 0x0288
0x3a58 DD=0: 8e 08               SUBB A, #0x08
0x3a5a DD=0: f5 01               JGE label_3a5d
0x3a5c DD=0: fb                  CLRB A
label_3a5d:
0x3a5d DD=0: 37 26 03            STB A, 0x0326
0x3a60 DD=0: 94 89               LB A, 0x0289
0x3a62 DD=0: 8e 08               SUBB A, #0x08
0x3a64 DD=0: f5 01               JGE label_3a67
0x3a66 DD=0: fb                  CLRB A
label_3a67:
0x3a67 DD=0: 37 27 03            STB A, 0x0327
0x3a6a DD=0: 94 8a               LB A, 0x028a
0x3a6c DD=0: 8e 08               SUBB A, #0x08
0x3a6e DD=0: f5 01               JGE label_3a71
0x3a70 DD=0: fb                  CLRB A
label_3a71:
0x3a71 DD=0: 37 28 03            STB A, 0x0328
0x3a74 DD=0: 94 8b               LB A, 0x028b
0x3a76 DD=0: 8e 08               SUBB A, #0x08
0x3a78 DD=0: f5 01               JGE label_3a7b
0x3a7a DD=0: fb                  CLRB A
label_3a7b:
0x3a7b DD=0: 37 29 03            STB A, 0x0329
0x3a7e DD=0: 04 23               SJ label_3aa3
label_3a80:
0x3a80 DD=0: f9 88               LB A, #0x88
0x3a82 DD=0: 34 88               STB A, 0x0288
0x3a84 DD=0: 34 89               STB A, 0x0289
0x3a86 DD=0: 34 8a               STB A, 0x028a
0x3a88 DD=0: 34 8b               STB A, 0x028b
0x3a8a DD=0: b4 8c c7            CLRB 0x028c
0x3a8d DD=0: 5b 74               RB sbafix 02f4.3
0x3a8f DD=0: b4 e5 13            MB C, 0x02e5.3
0x3a92 DD=0: b4 f4 1a            MB 0x02f4.2, C
0x3a95 DD=0: f9 80               LB A, #0x80
0x3a97 DD=0: 37 26 03            STB A, 0x0326
0x3a9a DD=0: 37 27 03            STB A, 0x0327
0x3a9d DD=0: 37 28 03            STB A, 0x0328
0x3aa0 DD=0: 37 29 03            STB A, 0x0329
label_3aa3:
0x3aa3 DD=0: 58 a5 0f            JBS sbafix 02e5.0, label_3ab5
0x3aa6 DD=0: fb                  CLRB A
0x3aa7 DD=0: 37 0e 05            STB A, 0x050e
0x3aaa DD=0: 37 0f 05            STB A, 0x050f
0x3aad DD=0: 37 10 05            STB A, 0x0510
0x3ab0 DD=0: 37 11 05            STB A, 0x0511
0x3ab3 DD=0: 04 24               SJ label_3ad9
label_3ab5:
0x3ab5 DD=0: 94 74               LB A, 0x0274
0x3ab7 DD=0: 9f                  SRLB A
0x3ab8 DD=0: ae c0               ADDB A, #0xc0
0x3aba DD=0: 37 0e 05            STB A, 0x050e
0x3abd DD=0: 94 75               LB A, 0x0275
0x3abf DD=0: 9f                  SRLB A
0x3ac0 DD=0: ae c0               ADDB A, #0xc0
0x3ac2 DD=0: 37 0f 05            STB A, 0x050f
0x3ac5 DD=0: fb                  CLRB A
0x3ac6 DD=0: 5c a5 05            JBS sbafix 02e5.4, label_3ace
0x3ac9 DD=0: 94 76               LB A, 0x0276
0x3acb DD=0: 9f                  SRLB A
0x3acc DD=0: ae c0               ADDB A, #0xc0
label_3ace:
0x3ace DD=0: 37 10 05            STB A, 0x0510
0x3ad1 DD=0: 94 77               LB A, 0x0277
0x3ad3 DD=0: 9f                  SRLB A
0x3ad4 DD=0: ae c0               ADDB A, #0xc0
0x3ad6 DD=0: 37 11 05            STB A, 0x0511
label_3ad9:
0x3ad9 DD=0: f9 40               LB A, #0x40
0x3adb DD=0: 5c e5 02            JBR sbafix 02e5.4, label_3ae0
0x3ade DD=0: 94 76               LB A, 0x0276
label_3ae0:
0x3ae0 DD=0: 37 5d 05            STB A, 0x055d
0x3ae3 DD=0: fb                  CLRB A
0x3ae4 DD=0: 5f e5 02            JBR sbafix 02e5.7, label_3ae9
0x3ae7 DD=0: 94 77               LB A, 0x0277
label_3ae9:
0x3ae9 DD=0: 35 8c               STB A, off(0x8c)
0x3aeb DD=0: 5c 94 10            JBS sbafix 02d4.4, label_3afe
0x3aee DD=1: 86 e0               L A, ADCR0
0x3af0 DD=1: bc 9f               SRL A, 4
0x3af2 DD=1: bc 9d               SRL A, 2
0x3af4 DD=1: 9e f0 03            CMP A, #0x03f0
0x3af7 DD=1: f0 09               JGT label_3b02
0x3af9 DD=1: 9e 20 00            CMP A, #0x0020
0x3afc DD=1: f2 04               JLT label_3b02
label_3afe:
0x3afe DD=1: 5c 50               RB sbafix 02d0.4
0x3b00 DD=1: 04 02               SJ label_3b04
label_3b02:
0x3b02 DD=1: 5c 10               SB sbafix 02d0.4
label_3b04:
0x3b04 DD=1: 58 94 10            JBS sbafix 02d4.0, label_3b17
0x3b07 DD=1: 86 e1               L A, ADCR1
0x3b09 DD=1: bc 9f               SRL A, 4
0x3b0b DD=1: bc 9d               SRL A, 2
0x3b0d DD=1: 9e 9a 03            CMP A, #0x039a
0x3b10 DD=1: f0 09               JGT label_3b1b
0x3b12 DD=1: 9e 2c 00            CMP A, #0x002c
0x3b15 DD=1: f2 04               JLT label_3b1b
label_3b17:
0x3b17 DD=1: 58 50               RB sbafix 02d0.0
0x3b19 DD=1: 04 02               SJ label_3b1d
label_3b1b:
0x3b1b DD=1: 58 10               SB sbafix 02d0.0
label_3b1d:
0x3b1d DD=1: 58 e4 13            JBR sbafix 02e4.0, label_3b33
0x3b20 DD=1: 5d 96 10            JBS sbafix 02d6.5, label_3b33
0x3b23 DD=1: 86 e2               L A, ADCR2
0x3b25 DD=1: bc 9f               SRL A, 4
0x3b27 DD=1: bc 9d               SRL A, 2
0x3b29 DD=1: 9e 9a 03            CMP A, #0x039a
0x3b2c DD=1: f0 09               JGT label_3b37
0x3b2e DD=1: 9e 2c 00            CMP A, #0x002c
0x3b31 DD=1: f2 04               JLT label_3b37
label_3b33:
0x3b33 DD=1: 58 51               RB sbafix 02d1.0
0x3b35 DD=1: 04 02               SJ label_3b39
label_3b37:
0x3b37 DD=1: 58 11               SB sbafix 02d1.0
label_3b39:
0x3b39 DD=0: f9 73               LB A, #0x73
0x3b3b DD=0: 10 8c               MOVB R0, #0x8c
0x3b3d DD=0: 9d 17               CMPB A, off(0x17)
0x3b3f DD=0: 39                  STB A, R1
0x3b40 DD=0: f5 07               JGE label_3b49
0x3b42 DD=0: 68 91 17            CMPB R0, off(0x17)
0x3b45 DD=0: f5 05               JGE label_3b4c
0x3b47 DD=0: 68 71               MOVB R1, R0
label_3b49:
0x3b49 DD=0: 69 87 17            MOVB off(0x17), R1
label_3b4c:
0x3b4c DD=0: 9d 16               CMPB A, off(0x16)
0x3b4e DD=0: 39                  STB A, R1
0x3b4f DD=0: f5 07               JGE label_3b58
0x3b51 DD=0: 68 91 16            CMPB R0, off(0x16)
0x3b54 DD=0: f5 05               JGE label_3b5b
0x3b56 DD=0: 68 71               MOVB R1, R0
label_3b58:
0x3b58 DD=0: 69 87 16            MOVB off(0x16), R1
label_3b5b:
0x3b5b DD=1: f8 18 fc            L A, #0xfc18
0x3b5e DD=1: 24 e8 03            MOV ER0, #0x03e8
0x3b61 DD=1: c5 14 00 80         CMP off(0x14), #0x8000
0x3b65 DD=1: f5 09               JGE label_3b70
0x3b67 DD=1: 64 71               MOV ER1, ER0
0x3b69 DD=1: 64 91 14            CMP ER0, off(0x14)
0x3b6c DD=1: f2 07               JLT label_3b75
0x3b6e DD=1: 04 08               SJ label_3b78
label_3b70:
0x3b70 DD=1: 39                  ST A, ER1
0x3b71 DD=1: 9d 14               CMP A, off(0x14)
0x3b73 DD=1: f2 03               JLT label_3b78
label_3b75:
0x3b75 DD=1: 65 87 14            MOV off(0x14), ER1
label_3b78:
0x3b78 DD=1: c5 12 00 80         CMP off(0x12), #0x8000
0x3b7c DD=1: f5 09               JGE label_3b87
0x3b7e DD=1: 64 71               MOV ER1, ER0
0x3b80 DD=1: 64 91 12            CMP ER0, off(0x12)
0x3b83 DD=1: f2 07               JLT label_3b8c
0x3b85 DD=1: 04 08               SJ label_3b8f
label_3b87:
0x3b87 DD=1: 39                  ST A, ER1
0x3b88 DD=1: 9d 12               CMP A, off(0x12)
0x3b8a DD=1: f2 03               JLT label_3b8f
label_3b8c:
0x3b8c DD=1: 65 87 12            MOV off(0x12), ER1
label_3b8f:
0x3b8f DD=1: e0                  VCAL 0x0
0x3b90 DD=1: da                  DI
0x3b91 DD=1: d4 2d 02            CMPB 0x022d, #0x02
0x3b94 DD=1: f5 09               JGE label_3b9f
0x3b96 DD=1: 58 af 03            JBS sbafix 02ef.0, label_3b9c
0x3b99 DD=1: 59 af 03            JBS sbafix 02ef.1, label_3b9f
label_3b9c:
0x3b9c DD=1: 03 95 3c            J label_3c95
label_3b9f:
0x3b9f DD=1: 58 2f               SB sbafix 02ef.0
0x3ba1 DD=0: fb                  CLRB A
0x3ba2 DD=0: 34 2d               STB A, 0x022d
0x3ba4 DD=0: 34 e8               STB A, 0x02e8
0x3ba6 DD=0: 34 e9               STB A, 0x02e9
0x3ba8 DD=0: 34 ea               STB A, 0x02ea
0x3baa DD=0: 34 eb               STB A, 0x02eb
0x3bac DD=0: 34 ec               STB A, 0x02ec
0x3bae DD=0: 34 ed               STB A, 0x02ed
0x3bb0 DD=0: 34 ee               STB A, 0x02ee
0x3bb2 DD=0: 37 c0 04            STB A, 0x04c0
0x3bb5 DD=0: 37 c6 04            STB A, 0x04c6
0x3bb8 DD=0: 34 2c               STB A, 0x022c
0x3bba DD=0: 37 00 04            STB A, 0x0400
0x3bbd DD=0: 37 10 04            STB A, 0x0410
0x3bc0 DD=0: 37 18 04            STB A, 0x0418
0x3bc3 DD=1: fa                  CLR A
0x3bc4 DD=1: 34 44               ST A, 0x0244
0x3bc6 DD=1: 34 4e               ST A, 0x024e
0x3bc8 DD=1: 34 34               ST A, 0x0234
0x3bca DD=1: 37 00 05            ST A, 0x0500
0x3bcd DD=1: 37 62 03            ST A, 0x0362
0x3bd0 DD=1: dc                  DEC A
0x3bd1 DD=1: 37 0e 04            ST A, 0x040e
0x3bd4 DD=1: 14 18               MOVB R4, #0x18
0x3bd6 DD=1: 22 00 0b            MOV DP, #0x0b00
loop_3bd9:
0x3bd9 DD=1: 33                  ST A, [DP+]
0x3bda DD=1: 05 7d               DJNZ R4, loop_3bd9
0x3bdc DD=1: b4 32 ab 17         MOVB 0x0232, #0x17
0x3be0 DD=1: a4 2e ab e8 ff      MOV 0x022e, #0xffe8
0x3be5 DD=0: fb                  CLRB A
0x3be6 DD=0: 37 d0 03            STB A, 0x03d0
0x3be9 DD=0: 37 d1 03            STB A, 0x03d1
0x3bec DD=0: 37 d2 03            STB A, 0x03d2
0x3bef DD=0: 37 d3 03            STB A, 0x03d3
0x3bf2 DD=0: 37 d4 03            STB A, 0x03d4
0x3bf5 DD=0: 37 d5 03            STB A, 0x03d5
0x3bf8 DD=0: 37 d6 03            STB A, 0x03d6
0x3bfb DD=0: 37 c5 04            STB A, 0x04c5
0x3bfe DD=0: 37 76 03            STB A, 0x0376
0x3c01 DD=0: 37 75 03            STB A, 0x0375
0x3c04 DD=0: 37 55 03            STB A, 0x0355
0x3c07 DD=0: 37 4a 04            STB A, 0x044a
0x3c0a DD=0: 37 4b 04            STB A, 0x044b
0x3c0d DD=0: 37 4c 04            STB A, 0x044c
0x3c10 DD=0: 37 4d 04            STB A, 0x044d
0x3c13 DD=0: 97 45 8a            LB A, 0x8a45
0x3c16 DD=0: 37 44 04            STB A, 0x0444
0x3c19 DD=0: 37 46 04            STB A, 0x0446
0x3c1c DD=0: 37 47 04            STB A, 0x0447
0x3c1f DD=0: 37 48 04            STB A, 0x0448
0x3c22 DD=0: 37 49 04            STB A, 0x0449
0x3c25 DD=0: b7 56 03 ab 80      MOVB 0x0356, #0x80
0x3c2a DD=1: 86 d6               L A, TM1
0x3c2c DD=1: dc                  DEC A
0x3c2d DD=1: 36 92               ST A, TMR4
0x3c2f DD=1: 36 94               ST A, TMR5
0x3c31 DD=1: 36 96               ST A, TMR6
0x3c33 DD=1: 36 98               ST A, TMR7
0x3c35 DD=0: f9 ff               LB A, #0xff
0x3c37 DD=0: 36 c6               STB A, RTOCON4
0x3c39 DD=0: 36 c7               STB A, RTOCON5
0x3c3b DD=0: 36 c8               STB A, RTOCON6
0x3c3d DD=0: 36 c9               STB A, RTOCON7
0x3c3f DD=0: fb                  CLRB A
0x3c40 DD=0: 37 e0 05            STB A, 0x05e0
0x3c43 DD=0: 37 e1 05            STB A, 0x05e1
0x3c46 DD=0: 37 e2 05            STB A, 0x05e2
0x3c49 DD=0: 37 e3 05            STB A, 0x05e3
0x3c4c DD=0: 37 e4 05            STB A, 0x05e4
0x3c4f DD=0: 37 e5 05            STB A, 0x05e5
0x3c52 DD=0: 37 e6 05            STB A, 0x05e6
0x3c55 DD=0: 37 e7 05            STB A, 0x05e7
0x3c58 DD=0: 37 c1 04            STB A, 0x04c1
0x3c5b DD=0: 37 c2 04            STB A, 0x04c2
0x3c5e DD=0: 37 c3 04            STB A, 0x04c3
0x3c61 DD=0: 37 c4 04            STB A, 0x04c4
0x3c64 DD=0: 37 5e 05            STB A, 0x055e
0x3c67 DD=0: b7 e9 05 0a         SB 0x05e9.2
0x3c6b DD=0: b6 10 0e            SB P0.6
0x3c6e DD=0: f9 00               LB A, #0x00
0x3c70 DD=0: f6 15               JNE label_3c87
0x3c72 DD=1: 86 d6               L A, TM1
0x3c74 DD=1: dc                  DEC A
0x3c75 DD=1: 36 9a               ST A, TMR8
0x3c77 DD=1: 36 9c               ST A, TMR9
0x3c79 DD=1: 36 9e               ST A, TMR10
0x3c7b DD=1: 36 a0               ST A, TMR11
0x3c7d DD=0: f9 ff               LB A, #0xff
0x3c7f DD=0: 36 ca               STB A, RTOCON8
0x3c81 DD=0: 36 cb               STB A, RTOCON9
0x3c83 DD=0: 36 cc               STB A, RTOCON10
0x3c85 DD=0: 36 cd               STB A, RTOCON11
label_3c87:
0x3c87 DD=0: fb                  CLRB A
0x3c88 DD=0: 35 c0               STB A, off(0xc0)
0x3c8a DD=0: 35 c1               STB A, off(0xc1)
0x3c8c DD=0: d7 b7 05            MOVB off(0xb7), #0x05
0x3c8f DD=0: d7 a8 0a            MOVB off(0xa8), #0x0a
0x3c92 DD=0: b6 10 02            RB P0.2
label_3c95:
0x3c95 DD=0: 59 6f               RB sbafix 02ef.1
0x3c97 DD=0: db                  EI
0x3c98 DD=0: cb                  SC
0x3c99 DD=0: 58 af 0b            JBS sbafix 02ef.0, label_3ca7
0x3c9c DD=1: 84 34               L A, 0x0234
0x3c9e DD=1: 9e 65 07            CMP A, #0x0765
0x3ca1 DD=1: 5b af 03            JBS sbafix 02ef.3, label_3ca7
0x3ca4 DD=1: 9e 1c 07            CMP A, #0x071c
label_3ca7:
0x3ca7 DD=1: b4 ef 1b            MB 0x02ef.3, C
0x3caa DD=1: f5 12               JGE label_3cbe
0x3cac DD=1: b4 a1 c7            CLRB 0x02a1
0x3caf DD=1: b4 a2 c7            CLRB 0x02a2
0x3cb2 DD=1: d7 b2 0f            MOVB off(0xb2), #0x0f
0x3cb5 DD=1: d7 b3 32            MOVB off(0xb3), #0x32
0x3cb8 DD=1: 58 af 03            JBS sbafix 02ef.0, label_3cbe
0x3cbb DD=1: 5a 94 03            JBS sbafix 02d4.2, label_3cc1
label_3cbe:
0x3cbe DD=1: d7 ab 63            MOVB off(0xab), #0x63
label_3cc1:
0x3cc1 DD=1: ca                  RC
0x3cc2 DD=1: 5b 94 17            JBS sbafix 02d4.3, label_3cdc
0x3cc5 DD=1: 11 6e               MOVB R1, #0x6e
0x3cc7 DD=1: a6 eb 97            MOV A, ADCR11
0x3cca DD=0: 96 07               LB A, ACCH
0x3ccc DD=0: b7 c8 8e 94         CMPB 0x8ec8, A
0x3cd0 DD=0: f2 07               JLT label_3cd9
0x3cd2 DD=0: b7 c7 8e 95         CMPB A, 0x8ec7
0x3cd6 DD=0: f2 01               JLT label_3cd9
0x3cd8 DD=0: 39                  STB A, R1
label_3cd9:
0x3cd9 DD=0: 69 86 6f            MOVB 0x026f, R1
label_3cdc:
0x3cdc DD=0: b4 d0 1b            MB 0x02d0.3, C
0x3cdf DD=0: 11 58               MOVB R1, #0x58
0x3ce1 DD=0: 5a 94 37            JBS sbafix 02d4.2, label_3d1b
0x3ce4 DD=0: a6 f2 97            MOV A, ADCR14
0x3ce7 DD=0: 96 07               LB A, ACCH
0x3ce9 DD=0: b7 d3 8e 94         CMPB 0x8ed3, A
0x3ced DD=0: f2 04               JLT label_3cf3
0x3cef DD=0: b7 d2 8e 95         CMPB A, 0x8ed2
label_3cf3:
0x3cf3 DD=0: b4 d0 1f            MB 0x02d0.7, C
0x3cf6 DD=0: f2 3c               JLT label_3d34
0x3cf8 DD=0: 39                  STB A, R1
0x3cf9 DD=0: 8d 18               SUBB A, off(0x18)
0x3cfb DD=0: f5 01               JGE label_3cfe
0x3cfd DD=0: cf                  NEGB A
label_3cfe:
0x3cfe DD=0: 9e 03               CMPB A, #0x03
0x3d00 DD=0: f5 14               JGE label_3d16
0x3d02 DD=0: 95 ac               LB A, off(0xac)
0x3d04 DD=0: f6 36               JNE label_3d3c
0x3d06 DD=0: 79                  LB A, R1
0x3d07 DD=0: 58 af 04            JBS sbafix 02ef.0, label_3d0e
0x3d0a DD=0: 9d 19               CMPB A, off(0x19)
0x3d0c DD=0: f0 29               JGT label_3d37
label_3d0e:
0x3d0e DD=0: 22 70 02            MOV DP, #0x0270
0x3d11 DD=0: 47 03               ACAL label_1303
0x3d13 DD=0: 32                  STB A, [DP]
0x3d14 DD=0: 54 0a               ACAL label_140a
label_3d16:
0x3d16 DD=0: 69 87 18            MOVB off(0x18), R1
0x3d19 DD=0: 04 1c               SJ label_3d37
label_3d1b:
0x3d1b DD=0: 5f 50               RB sbafix 02d0.7
0x3d1d DD=0: 5b ef 14            JBR sbafix 02ef.3, label_3d34
0x3d20 DD=1: fa                  CLR A
0x3d21 DD=0: 95 ab               LB A, off(0xab)
0x3d23 DD=0: b7 d7 8e 70         MOVB R0, 0x8ed7
0x3d27 DD=0: 68 a8               DIVB R0
0x3d29 DD=0: 9e 05               CMPB A, #0x05
0x3d2b DD=0: f2 02               JLT label_3d2f
0x3d2d DD=0: f9 04               LB A, #0x04
label_3d2f:
0x3d2f DD=0: 20 d8 8e            MOV X1, #0x8ed8
0x3d32 DD=0: ba 71               MOVB R1, [X1+A]
label_3d34:
0x3d34 DD=0: 69 86 70            MOVB 0x0270, R1
label_3d37:
0x3d37 DD=0: b7 d4 8e 87 ac      MOVB off(0xac), 0x8ed4
label_3d3c:
0x3d3c DD=0: 22 11 88            MOV DP, #0x8811
0x3d3f DD=0: 5a f1 03            JBR sbafix 02f1.2, label_3d45
0x3d42 DD=0: 22 a8 88            MOV DP, #0x88a8
label_3d45:
0x3d45 DD=0: 62 74               MOV X1, DP
0x3d47 DD=0: 44 00               ACAL label_1000
0x3d49 DD=0: 3e                  STB A, R6
0x3d4a DD=0: 60 76               MOV DP, X1
0x3d4c DD=0: 62 a3 15 00         ADD DP, #0x0015
0x3d50 DD=0: 44 00               ACAL label_1000
0x3d52 DD=0: 3f                  STB A, R7
0x3d53 DD=0: 60 76               MOV DP, X1
0x3d55 DD=0: 62 a3 2a 00         ADD DP, #0x002a
0x3d59 DD=0: 44 00               ACAL label_1000
0x3d5b DD=0: da                  DI
0x3d5c DD=0: 6e 9b 47 03         MOVB 0x0347, R6
0x3d60 DD=0: 6f 9b 48 03         MOVB 0x0348, R7
0x3d64 DD=0: 37 49 03            STB A, 0x0349
0x3d67 DD=0: db                  EI
0x3d68 DD=0: 22 2b 8b            MOV DP, #0x8b2b
0x3d6b DD=0: 5a f1 03            JBR sbafix 02f1.2, label_3d71
0x3d6e DD=0: 22 87 8b            MOV DP, #0x8b87
label_3d71:
0x3d71 DD=0: 62 74               MOV X1, DP
0x3d73 DD=0: 44 00               ACAL label_1000
0x3d75 DD=0: 3e                  STB A, R6
0x3d76 DD=0: 60 76               MOV DP, X1
0x3d78 DD=0: 62 a3 09 00         ADD DP, #0x0009
0x3d7c DD=0: 44 00               ACAL label_1000
0x3d7e DD=0: df                  SWAP
0x3d7f DD=0: 7e                  LB A, R6
0x3d80 DD=0: a7 16 05 aa         MOV 0x0516, A
0x3d84 DD=0: 60 76               MOV DP, X1
0x3d86 DD=0: 62 a3 12 00         ADD DP, #0x0012
0x3d8a DD=0: 44 00               ACAL label_1000
0x3d8c DD=0: 37 18 05            STB A, 0x0518
0x3d8f DD=0: e0                  VCAL 0x0
0x3d90 DD=0: 22 84 89            MOV DP, #0x8984
0x3d93 DD=0: 5a f1 03            JBR sbafix 02f1.2, label_3d99
0x3d96 DD=0: 22 ae 89            MOV DP, #0x89ae
label_3d99:
0x3d99 DD=0: 44 00               ACAL label_1000
0x3d9b DD=0: 37 77 03            STB A, 0x0377
0x3d9e DD=0: 4c 84 0b            JBS sbaoff c4.4, label_3dac
0x3da1 DD=0: 22 6e 8e            MOV DP, #0x8e6e
0x3da4 DD=0: 44 00               ACAL label_1000
0x3da6 DD=0: 35 89               STB A, off(0x89)
0x3da8 DD=0: 35 8e               STB A, off(0x8e)
0x3daa DD=0: 4c 04               SB sbaoff c4.4
label_3dac:
0x3dac DD=0: e0                  VCAL 0x0
0x3dad DD=0: f9 94               LB A, #0x94
0x3daf DD=0: 22 6e 02            MOV DP, #0x026e
0x3db2 DD=0: 5d 94 11            JBS sbafix 02d4.5, label_3dc6
0x3db5 DD=0: a6 ea 97            MOV A, ADCR10
0x3db8 DD=0: 96 07               LB A, ACCH
0x3dba DD=0: 10 fc               MOVB R0, #0xfc
0x3dbc DD=0: 68 94               CMPB R0, A
0x3dbe DD=0: f2 08               JLT label_3dc8
0x3dc0 DD=0: 9e 04               CMPB A, #0x04
0x3dc2 DD=0: f2 04               JLT label_3dc8
0x3dc4 DD=0: 47 03               ACAL label_1303
label_3dc6:
0x3dc6 DD=0: 32                  STB A, [DP]
0x3dc7 DD=0: ca                  RC
label_3dc8:
0x3dc8 DD=0: b4 d0 1d            MB 0x02d0.5, C
0x3dcb DD=0: f9 80               LB A, #0x80
0x3dcd DD=0: 59 a7 25            JBS sbafix 02e7.1, label_3df5
0x3dd0 DD=0: 22 3f 89            MOV DP, #0x893f
0x3dd3 DD=1: 84 34               L A, 0x0234
0x3dd5 DD=1: 9e 06 1b            CMP A, #0x1b06
0x3dd8 DD=1: b7 d1 03 2b 03      JBS 0x03d1.3, label_3de0
0x3ddd DD=1: 9e 72 1c            CMP A, #0x1c72
label_3de0:
0x3de0 DD=1: fd                  CPL C
0x3de1 DD=1: b7 d1 03 1b         MB 0x03d1.3, C
0x3de5 DD=1: f2 06               JLT label_3ded
0x3de7 DD=1: c4 3c 04 00         CMP 0x023c, #0x0004
0x3deb DD=1: f2 04               JLT label_3df1
label_3ded:
0x3ded DD=1: 62 a3 15 00         ADD DP, #0x0015
label_3df1:
0x3df1 DD=0: 94 6e               LB A, 0x026e
0x3df3 DD=0: 44 04               ACAL label_1004
label_3df5:
0x3df5 DD=0: 37 4a 03            STB A, 0x034a
0x3df8 DD=0: 22 b9 8a            MOV DP, #0x8ab9
0x3dfb DD=0: 5a f1 03            JBR sbafix 02f1.2, label_3e01
0x3dfe DD=0: 22 f2 8a            MOV DP, #0x8af2
label_3e01:
0x3e01 DD=0: 94 6e               LB A, 0x026e
0x3e03 DD=0: 44 04               ACAL label_1004
0x3e05 DD=0: 37 13 05            STB A, 0x0513
0x3e08 DD=0: e0                  VCAL 0x0
0x3e09 DD=0: 5a a6 03            JBS sbafix 02e6.2, label_3e0f
0x3e0c DD=0: 03 4a 3e            J label_3e4a
label_3e0f:
0x3e0f DD=0: 95 1b               LB A, off(0x1b)
0x3e11 DD=0: 58 ef 31            JBR sbafix 02ef.0, label_3e45
0x3e14 DD=0: f9 f9               LB A, #0xf9
0x3e16 DD=0: 58 94 2c            JBS sbafix 02d4.0, label_3e45
0x3e19 DD=0: 59 94 29            JBS sbafix 02d4.1, label_3e45
0x3e1c DD=1: 86 e1               L A, ADCR1
0x3e1e DD=1: 58 a4 10            JBS sbafix 02e4.0, label_3e31
0x3e21 DD=1: 8e 3f 18            SUB A, #0x183f
0x3e24 DD=1: f5 03               JGE label_3e29
0x3e26 DD=1: fa                  CLR A
0x3e27 DD=1: 04 05               SJ label_3e2e
label_3e29:
0x3e29 DD=1: 8f                  SLL A
0x3e2a DD=1: f5 02               JGE label_3e2e
0x3e2c DD=1: bc d7               FILL A
label_3e2e:
0x3e2e DD=1: df                  SWAP
0x3e2f DD=1: 04 13               SJ label_3e44
label_3e31:
0x3e31 DD=1: 8e 40 32            SUB A, #0x3240
0x3e34 DD=1: f5 03               JGE label_3e39
0x3e36 DD=1: fa                  CLR A
0x3e37 DD=1: 04 0b               SJ label_3e44
label_3e39:
0x3e39 DD=1: 24 db 03            MOV ER0, #0x03db
0x3e3c DD=1: 64 a9               MUL ER0
0x3e3e DD=1: b6 07 a7 02         TJZB ACCH, label_3e44
0x3e42 DD=1: bc d7               FILL A
label_3e44:
0x3e44 DD=0: d8                  RDD
label_3e45:
0x3e45 DD=0: 35 1b               STB A, off(0x1b)
0x3e47 DD=0: 5b e6 38            JBR sbafix 02e6.3, label_3e82
label_3e4a:
0x3e4a DD=0: 22 1a 06            MOV DP, #0x061a
0x3e4d DD=0: f9 f9               LB A, #0xf9
0x3e4f DD=0: 5e 94 26            JBS sbafix 02d4.6, label_3e78
0x3e52 DD=1: 86 e3               L A, ADCR3
0x3e54 DD=1: 5a a6 0d            JBS sbafix 02e6.2, label_3e64
0x3e57 DD=1: 10 fe               MOVB R0, #0xfe
0x3e59 DD=1: 68 92 07            CMPB R0, ACCH
0x3e5c DD=1: f2 1c               JLT label_3e7a
0x3e5e DD=1: b6 07 93 00         CMPB ACCH, #0x00
0x3e62 DD=1: f2 16               JLT label_3e7a
label_3e64:
0x3e64 DD=1: 8e 3f 18            SUB A, #0x183f
0x3e67 DD=1: f5 03               JGE label_3e6c
0x3e69 DD=1: fa                  CLR A
0x3e6a DD=1: 04 05               SJ label_3e71
label_3e6c:
0x3e6c DD=1: 8f                  SLL A
0x3e6d DD=1: f5 02               JGE label_3e71
0x3e6f DD=1: bc d7               FILL A
label_3e71:
0x3e71 DD=1: df                  SWAP
0x3e72 DD=0: d8                  RDD
0x3e73 DD=0: 5a a6 02            JBS sbafix 02e6.2, label_3e78
0x3e76 DD=0: 47 03               ACAL label_1303
label_3e78:
0x3e78 DD=0: 32                  STB A, [DP]
0x3e79 DD=0: ca                  RC
label_3e7a:
0x3e7a DD=0: b4 d0 1e            MB 0x02d0.6, C
0x3e7d DD=0: 95 1a               LB A, off(0x1a)
0x3e7f DD=0: 5a e6 02            JBR sbafix 02e6.2, label_3e84
label_3e82:
0x3e82 DD=0: 95 1b               LB A, off(0x1b)
label_3e84:
0x3e84 DD=0: 34 71               STB A, 0x0271
0x3e86 DD=0: 22 ee 87            MOV DP, #0x87ee
0x3e89 DD=0: 94 71               LB A, 0x0271
0x3e8b DD=0: 44 04               ACAL label_1004
0x3e8d DD=0: 37 4f 03            STB A, 0x034f
0x3e90 DD=0: 22 fb 87            MOV DP, #0x87fb
0x3e93 DD=0: 94 71               LB A, 0x0271
0x3e95 DD=0: 44 04               ACAL label_1004
0x3e97 DD=0: 37 50 03            STB A, 0x0350
0x3e9a DD=0: 22 08 88            MOV DP, #0x8808
0x3e9d DD=0: 94 71               LB A, 0x0271
0x3e9f DD=0: 44 04               ACAL label_1004
0x3ea1 DD=0: 37 4e 03            STB A, 0x034e
0x3ea4 DD=1: fa                  CLR A
0x3ea5 DD=1: b4 71 97            MOVB A, 0x0271
0x3ea8 DD=1: ae 22 00            ADD A, #0x0022
0x3eab DD=1: 38                  ST A, ER0
0x3eac DD=1: f8 d4 01            L A, #0x01d4
0x3eaf DD=1: 8e a5 00            SUB A, #0x00a5
0x3eb2 DD=1: f5 03               JGE label_3eb7
0x3eb4 DD=1: fa                  CLR A
0x3eb5 DD=1: 04 12               SJ label_3ec9
label_3eb7:
0x3eb7 DD=1: 64 a9               MUL ER0
0x3eb9 DD=1: 25 1b 01            MOV ER1, #0x011b
0x3ebc DD=1: 65 fb               DIVQ ER1
0x3ebe DD=1: ae a5 00            ADD A, #0x00a5
0x3ec1 DD=1: 9e ff 03            CMP A, #0x03ff
0x3ec4 DD=1: f2 03               JLT label_3ec9
0x3ec6 DD=1: f8 ff 03            L A, #0x03ff
label_3ec9:
0x3ec9 DD=1: 37 4c 03            ST A, 0x034c
0x3ecc DD=0: 97 4a 03            LB A, 0x034a
0x3ecf DD=1: d9                  SDD
0x3ed0 DD=1: b7 4e 03 a9         MULB 0x034e
0x3ed4 DD=1: 6a c7               CLRB R2
0x3ed6 DD=1: b7 77 03 73         MOVB R3, 0x0377
0x3eda DD=1: 65 a9               MUL ER1
0x3edc DD=1: 10 01               MOVB R0, #0x01
0x3ede DD=1: 46 c5               ACAL label_12c5
0x3ee0 DD=1: 37 78 03            ST A, 0x0378
0x3ee3 DD=1: a6 e6 97            MOV A, ADCR6
0x3ee6 DD=0: 96 07               LB A, ACCH
0x3ee8 DD=0: 34 72               STB A, 0x0272
0x3eea DD=0: 5f e6 23            JBR sbafix 02e6.7, label_3f10
0x3eed DD=0: 5c e6 20            JBR sbafix 02e6.4, label_3f10
0x3ef0 DD=0: fb                  CLRB A
0x3ef1 DD=0: a7 e8 8e a9         MUL 0x8ee8
0x3ef5 DD=0: a6 06 9c            SRL ACC, 1
0x3ef8 DD=0: 24 00 02            MOV ER0, #0x0200
0x3efb DD=0: 64 a3 00 08         ADD ER0, #0x0800
0x3eff DD=0: f2 0d               JLT label_3f0e
0x3f01 DD=0: 64 a9               MUL ER0
0x3f03 DD=0: a7 ea 8e fb         DIVQ 0x8eea
0x3f07 DD=0: 9a 29 04            JBS PSWH.1, label_3f0e
0x3f0a DD=0: b6 07 a7 02         TJZB ACCH, label_3f10
label_3f0e:
0x3f0e DD=0: bc d7               FILLB A
label_3f10:
0x3f10 DD=0: 34 73               STB A, 0x0273
0x3f12 DD=0: 94 73               LB A, 0x0273
0x3f14 DD=0: 22 e9 89            MOV DP, #0x89e9
0x3f17 DD=0: 44 30               ACAL label_1030
0x3f19 DD=0: 37 3c 03            STB A, 0x033c
0x3f1c DD=0: 94 73               LB A, 0x0273
0x3f1e DD=0: 22 0c 8d            MOV DP, #0x8d0c
0x3f21 DD=0: 44 04               ACAL label_1004
0x3f23 DD=0: 37 2b 05            STB A, 0x052b
0x3f26 DD=0: e0                  VCAL 0x0
0x3f27 DD=0: 22 42 02            MOV DP, #0x0242
0x3f2a DD=0: 5c d4 03            JBR sbafix 02d4.4, label_3f30
0x3f2d DD=0: 03 98 3f            J label_3f98
label_3f30:
0x3f30 DD=0: 58 af 23            JBS sbafix 02ef.0, label_3f56
0x3f33 DD=0: 42                  INC DP
0x3f34 DD=0: f9 85               LB A, #0x85
0x3f36 DD=0: d4 70 7c            CMPB 0x0270, #0x7c
0x3f39 DD=0: f0 1a               JGT label_3f55
0x3f3b DD=0: b4 3e 71            MOVB R1, 0x023e
0x3f3e DD=0: c4 34 e9 13         CMP 0x0234, #0x13e9
0x3f42 DD=0: f0 11               JGT label_3f55
0x3f44 DD=0: 19                  CMPB A, R1
0x3f45 DD=0: f2 0e               JLT label_3f55
0x3f47 DD=0: 79                  LB A, R1
0x3f48 DD=0: b2 85               SUBB A, [DP]
0x3f4a DD=0: 10 01               MOVB R0, #0x01
0x3f4c DD=0: f5 03               JGE label_3f51
0x3f4e DD=0: 10 02               MOVB R0, #0x02
0x3f50 DD=0: cf                  NEGB A
label_3f51:
0x3f51 DD=0: 18                  CMPB A, R0
0x3f52 DD=0: f7 06               JLE label_3f5a
0x3f54 DD=0: 79                  LB A, R1
label_3f55:
0x3f55 DD=0: 31                  STB A, [DP-]
label_3f56:
0x3f56 DD=0: 48 45               RB sbaoff c5.0
0x3f58 DD=0: 04 38               SJ label_3f92
label_3f5a:
0x3f5a DD=0: 91                  LB A, [DP-]
0x3f5b DD=0: b2 95               CMPB A, [DP]
0x3f5d DD=0: 8a 1b               MB PSWL.3, C
0x3f5f DD=0: 9a 16               MB C, PSWH.6
0x3f61 DD=0: 8a 1e               MB PSWL.6, C
0x3f63 DD=0: 48 85 0c            JBS sbaoff c5.0, label_3f72
0x3f66 DD=0: 10 13               MOVB R0, #0x13
0x3f68 DD=0: 8a 2b 02            JBS PSWL.3, label_3f6d
0x3f6b DD=0: 10 be               MOVB R0, #0xbe
label_3f6d:
0x3f6d DD=0: 68 87 a9            MOVB off(0xa9), R0
0x3f70 DD=0: 48 05               SB sbaoff c5.0
label_3f72:
0x3f72 DD=0: b5 a9 a6 1c         TJNZB off(0xa9), label_3f92
0x3f76 DD=0: 8a 2e 19            JBS PSWL.6, label_3f92
0x3f79 DD=0: 32                  STB A, [DP]
0x3f7a DD=0: 49 85 15            JBS sbaoff c5.1, label_3f92
0x3f7d DD=0: 49 05               SB sbaoff c5.1
0x3f7f DD=0: 35 91               STB A, off(0x91)
0x3f81 DD=0: a5 94 71            MOV ER1, off(0x94)
0x3f84 DD=0: 65 a3 01 00         ADD ER1, #0x0001
0x3f88 DD=0: f2 03               JLT label_3f8d
0x3f8a DD=0: 65 87 94            MOV off(0x94), ER1
label_3f8d:
0x3f8d DD=0: 65 87 96            MOV off(0x96), ER1
0x3f90 DD=0: 5b 36               SB sbafix 02f6.3
label_3f92:
0x3f92 DD=0: f9 85               LB A, #0x85
0x3f94 DD=0: b2 95               CMPB A, [DP]
0x3f96 DD=0: f5 03               JGE label_3f9b
label_3f98:
0x3f98 DD=0: f9 67               LB A, #0x67
0x3f9a DD=0: 32                  STB A, [DP]
label_3f9b:
0x3f9b DD=0: e0                  VCAL 0x0
0x3f9c DD=0: ca                  RC
0x3f9d DD=0: 4c 85 1e            JBS sbaoff c5.4, label_3fbe
0x3fa0 DD=0: 58 94 1b            JBS sbafix 02d4.0, label_3fbe
0x3fa3 DD=0: 59 94 18            JBS sbafix 02d4.1, label_3fbe
0x3fa6 DD=0: 94 a5               LB A, 0x02a5
0x3fa8 DD=0: ae 20               ADDB A, #0x20
0x3faa DD=0: f5 03               JGE label_3faf
0x3fac DD=0: 58 ef 0f            JBR sbafix 02ef.0, label_3fbe
label_3faf:
0x3faf DD=1: 87 12 04            L A, 0x0412
0x3fb2 DD=0: 95 1c               LB A, off(0x1c)
0x3fb4 DD=0: b6 07 85            SUBB A, ACCH
0x3fb7 DD=0: f5 01               JGE label_3fba
0x3fb9 DD=0: cf                  NEGB A
label_3fba:
0x3fba DD=0: 9e 02               CMPB A, #0x02
0x3fbc DD=0: f7 05               JLE label_3fc3
label_3fbe:
0x3fbe DD=0: 4c 05               SB sbaoff c5.4
0x3fc0 DD=0: ca                  RC
0x3fc1 DD=0: 04 04               SJ label_3fc7
label_3fc3:
0x3fc3 DD=0: f9 30               LB A, #0x30
0x3fc5 DD=0: 9c a1               CMPB A, 0x02a1
label_3fc7:
0x3fc7 DD=0: b4 d0 19            MB 0x02d0.1, C
0x3fca DD=0: 58 e4 30            JBR sbafix 02e4.0, label_3ffd
0x3fcd DD=0: 58 a6 2d            JBS sbafix 02e6.0, label_3ffd
0x3fd0 DD=0: 4e 85 2a            JBS sbaoff c5.6, label_3ffd
0x3fd3 DD=0: 5d 96 27            JBS sbafix 02d6.5, label_3ffd
0x3fd6 DD=0: 5e 96 24            JBS sbafix 02d6.6, label_3ffd
0x3fd9 DD=0: 94 a5               LB A, 0x02a5
0x3fdb DD=0: ae 20               ADDB A, #0x20
0x3fdd DD=0: f5 03               JGE label_3fe2
0x3fdf DD=0: 58 ef 1b            JBR sbafix 02ef.0, label_3ffd
label_3fe2:
0x3fe2 DD=0: c4 34 e4 38         CMP 0x0234, #0x38e4
0x3fe6 DD=0: f2 17               JLT label_3fff
0x3fe8 DD=0: c4 3c 33 01         CMP 0x023c, #0x0133
0x3fec DD=0: f2 11               JLT label_3fff
0x3fee DD=1: 87 14 04            L A, 0x0414
0x3ff1 DD=0: 95 1d               LB A, off(0x1d)
0x3ff3 DD=0: b6 07 85            SUBB A, ACCH
0x3ff6 DD=0: f5 01               JGE label_3ff9
0x3ff8 DD=0: cf                  NEGB A
label_3ff9:
0x3ff9 DD=0: 9e 02               CMPB A, #0x02
0x3ffb DD=0: f7 05               JLE label_4002
label_3ffd:
0x3ffd DD=0: 4e 05               SB sbaoff c5.6
label_3fff:
0x3fff DD=0: ca                  RC
0x4000 DD=0: 04 04               SJ label_4006
label_4002:
0x4002 DD=0: f9 30               LB A, #0x30
0x4004 DD=0: 9c a1               CMPB A, 0x02a1
label_4006:
0x4006 DD=0: b4 d1 19            MB 0x02d1.1, C
0x4009 DD=0: ca                  RC
0x400a DD=0: 94 d5               LB A, 0x02d5
0x400c DD=0: be 0f               ANDB A, #0x0f
0x400e DD=0: f6 06               JNE label_4016
0x4010 DD=0: 94 a5               LB A, 0x02a5
0x4012 DD=0: ae 14               ADDB A, #0x14
0x4014 DD=0: f2 04               JLT label_401a
label_4016:
0x4016 DD=0: b4 ef 10            MB C, 0x02ef.0
0x4019 DD=0: fd                  CPL C
label_401a:
0x401a DD=0: b6 10 18            MB P0.0, C
0x401d DD=0: 8a 03               RB PSWL.3
0x401f DD=0: 58 af 16            JBS sbafix 02ef.0, label_4038
0x4022 DD=1: 84 34               L A, 0x0234
0x4024 DD=1: a4 3c 72            MOV ER2, 0x023c
0x4027 DD=1: 4d c2 12            JBR sbaoff c2.5, label_403c
0x402a DD=1: 5e dc 0b            JBR sbafix 02dc.6, label_4038
0x402d DD=1: 9e e4 38            CMP A, #0x38e4
0x4030 DD=1: f0 06               JGT label_4038
0x4032 DD=1: 66 93 00 01         CMP ER2, #0x0100
0x4036 DD=1: f7 77               JLE label_40af
label_4038:
0x4038 DD=1: ca                  RC
0x4039 DD=1: 03 d1 40            J label_40d1
label_403c:
0x403c DD=1: 4e 82 1a            JBS sbaoff c2.6, label_4059
0x403f DD=1: b5 35 c7            CLRB off(0x35)
0x4042 DD=1: 9e ab 2a            CMP A, #0x2aab
0x4045 DD=1: f5 09               JGE label_4050
0x4047 DD=1: 66 93 a4 00         CMP ER2, #0x00a4
0x404b DD=1: f5 03               JGE label_4050
0x404d DD=1: 03 dc 40            J label_40dc
label_4050:
0x4050 DD=1: b5 b5 a6 5b         TJNZB off(0xb5), label_40af
0x4054 DD=1: d7 b4 32            MOVB off(0xb4), #0x32
0x4057 DD=1: 4e 02               SB sbaoff c2.6
label_4059:
0x4059 DD=1: b5 a6 a6 43         TJNZB off(0xa6), label_40a0
0x405d DD=1: d7 a6 0a            MOVB off(0xa6), #0x0a
0x4060 DD=1: 84 34               L A, 0x0234
0x4062 DD=1: d5 35 04            CMPB off(0x35), #0x04
0x4065 DD=1: f2 24               JLT label_408b
0x4067 DD=1: 38                  ST A, ER0
0x4068 DD=1: fa                  CLR A
0x4069 DD=1: 64 a1 38            ADD ER0, off(0x38)
0x406c DD=1: bc f3 00 00         ADC A, #0x0000
0x4070 DD=1: 64 a1 3a            ADD ER0, off(0x3a)
0x4073 DD=1: bc f3 00 00         ADC A, #0x0000
0x4077 DD=1: 64 a1 3c            ADD ER0, off(0x3c)
0x407a DD=1: bc f3 00 00         ADC A, #0x0000
0x407e DD=1: 64 a1 3e            ADD ER0, off(0x3e)
0x4081 DD=1: bc f3 00 00         ADC A, #0x0000
0x4085 DD=1: 6b c7               CLRB R3
0x4087 DD=1: 12 05               MOVB R2, #0x05
0x4089 DD=1: 65 fb               DIVQ ER1
label_408b:
0x408b DD=1: 35 36               ST A, off(0x36)
0x408d DD=1: a5 38 c8            XCHG A, off(0x38)
0x4090 DD=1: a5 3a c8            XCHG A, off(0x3a)
0x4093 DD=1: a5 3c c8            XCHG A, off(0x3c)
0x4096 DD=1: 35 3e               ST A, off(0x3e)
0x4098 DD=1: b5 35 c6            INCB off(0x35)
0x409b DD=1: f6 03               JNE label_40a0
0x409d DD=1: b5 35 d7            FILLB off(0x35)
label_40a0:
0x40a0 DD=1: 66 93 33 00         CMP ER2, #0x0033
0x40a4 DD=1: f7 0c               JLE label_40b2
0x40a6 DD=1: 22 ec 8e            MOV DP, #0x8eec
0x40a9 DD=1: 85 36               L A, off(0x36)
0x40ab DD=1: 44 70               ACAL label_1070
0x40ad DD=1: 35 b4               ST A, off(0xb4)
label_40af:
0x40af DD=1: 03 e4 40            J label_40e4
label_40b2:
0x40b2 DD=1: ca                  RC
0x40b3 DD=1: b5 b4 a7 22         TJZB off(0xb4), label_40d9
0x40b7 DD=1: 4f 82 08            JBS sbaoff c2.7, label_40c2
0x40ba DD=1: 5e 9c 11            JBS sbafix 02dc.6, label_40ce
0x40bd DD=1: d7 a7 64            MOVB off(0xa7), #0x64
0x40c0 DD=1: 4f 02               SB sbaoff c2.7
label_40c2:
0x40c2 DD=1: 8a 0b               SB PSWL.3
0x40c4 DD=1: b5 a7 a6 06         TJNZB off(0xa7), label_40ce
0x40c8 DD=1: 5e dc 03            JBR sbafix 02dc.6, label_40ce
0x40cb DD=1: cb                  SC
0x40cc DD=1: 4f 42               RB sbaoff c2.7
label_40ce:
0x40ce DD=1: b5 c3 1f            MB off(0xc3).7, C
label_40d1:
0x40d1 DD=1: b5 c2 1d            MB off(0xc2).5, C
0x40d4 DD=1: b6 11 19            MB P1.1, C
0x40d7 DD=1: 04 03               SJ label_40dc
label_40d9:
0x40d9 DD=1: b5 c2 1f            MB off(0xc2).7, C
label_40dc:
0x40dc DD=1: 8a 2b 05            JBS PSWL.3, label_40e4
0x40df DD=1: 4e 42               RB sbaoff c2.6
0x40e1 DD=1: d7 b5 0f            MOVB off(0xb5), #0x0f
label_40e4:
0x40e4 DD=1: ca                  RC
0x40e5 DD=1: 5c dc 23            JBR sbafix 02dc.4, label_410b
0x40e8 DD=1: b7 d0 03 2d 0a      JBS 0x03d0.5, label_40f7
0x40ed DD=1: b5 b9 a6 09         TJNZB off(0xb9), label_40fa
0x40f1 DD=1: cb                  SC
0x40f2 DD=1: d7 ba 0a            MOVB off(0xba), #0x0a
0x40f5 DD=1: 04 14               SJ label_410b
label_40f7:
0x40f7 DD=1: d7 b9 14            MOVB off(0xb9), #0x14
label_40fa:
0x40fa DD=1: b5 ba a7 05         TJZB off(0xba), label_4103
0x40fe DD=1: d7 bb 0a            MOVB off(0xbb), #0x0a
0x4101 DD=1: 04 08               SJ label_410b
label_4103:
0x4103 DD=1: cb                  SC
0x4104 DD=1: b5 bb a6 03         TJNZB off(0xbb), label_410b
0x4108 DD=1: d7 ba 0a            MOVB off(0xba), #0x0a
label_410b:
0x410b DD=1: b6 10 1b            MB P0.3, C
0x410e DD=1: cb                  SC
0x410f DD=1: 4d c2 0a            JBR sbaoff c2.5, label_411c
0x4112 DD=1: c4 3c 00 00         CMP 0x023c, #0x0000
0x4116 DD=1: f2 04               JLT label_411c
0x4118 DD=1: c4 34 00 00         CMP 0x0234, #0x0000
label_411c:
0x411c DD=1: fd                  CPL C
0x411d DD=1: b6 11 18            MB P1.0, C
0x4120 DD=1: 59 b9 03            JBS sbafix 02f9.1, label_4126
0x4123 DD=1: 03 de 41            J label_41de
label_4126:
0x4126 DD=1: e0                  VCAL 0x0
0x4127 DD=1: a4 d0 70            MOV ER0, 0x02d0
0x412a DD=1: 17 01               MOVB R7, #0x01
0x412c DD=1: 22 b1 06            MOV DP, #0x06b1
label_412f:
0x412f DD=1: 64 9c               SRL ER0, 1
0x4131 DD=1: f2 11               JLT label_4144
0x4133 DD=0: 7f                  LB A, R7
0x4134 DD=0: 8d 9e               SUBB A, off(0x9e)
0x4136 DD=0: f6 03               JNE label_413b
0x4138 DD=0: 35 9e               STB A, off(0x9e)
0x413a DD=0: 32                  STB A, [DP]
label_413b:
0x413b DD=0: 7f                  LB A, R7
0x413c DD=0: 8d 9f               SUBB A, off(0x9f)
0x413e DD=0: f6 0b               JNE label_414b
0x4140 DD=0: 35 9f               STB A, off(0x9f)
0x4142 DD=0: 04 07               SJ label_414b
label_4144:
0x4144 DD=0: 95 9e               LB A, off(0x9e)
0x4146 DD=0: f1 11               JEQ label_4159
0x4148 DD=0: 1f                  CMPB A, R7
0x4149 DD=0: f1 09               JEQ label_4154
label_414b:
0x414b DD=0: 6f c6               INCB R7
0x414d DD=0: 6f 93 11            CMPB R7, #0x11
0x4150 DD=0: f2 dd               JLT label_412f
0x4152 DD=0: 04 0d               SJ label_4161
label_4154:
0x4154 DD=0: 92                  LB A, [DP]
0x4155 DD=0: f6 0a               JNE label_4161
0x4157 DD=0: 04 39               SJ label_4192
label_4159:
0x4159 DD=0: 7f                  LB A, R7
0x415a DD=0: 35 9e               STB A, off(0x9e)
0x415c DD=0: 20 b9 8f            MOV X1, #0x8fb9
0x415f DD=0: ba 8a               MOVB [DP], [X1+A]
label_4161:
0x4161 DD=1: fa                  CLR A
0x4162 DD=1: a4 d2 c8            XCHG A, 0x02d2
0x4165 DD=1: 39                  ST A, ER1
0x4166 DD=1: 17 11               MOVB R7, #0x11
0x4168 DD=1: 22 8e 02            MOV DP, #0x028e
label_416b:
0x416b DD=1: 65 9c               SRL ER1, 1
0x416d DD=1: f2 14               JLT label_4183
0x416f DD=0: 7f                  LB A, R7
0x4170 DD=0: 9d 9f               CMPB A, off(0x9f)
0x4172 DD=0: f6 14               JNE label_4188
0x4174 DD=0: 20 ca 8f            MOV X1, #0x8fca
0x4177 DD=0: 8e 11               SUBB A, #0x11
0x4179 DD=0: ba 97               MOVB A, [X1+A]
0x417b DD=0: b2 85               SUBB A, [DP]
0x417d DD=0: f6 09               JNE label_4188
0x417f DD=0: 35 9f               STB A, off(0x9f)
0x4181 DD=0: 04 05               SJ label_4188
label_4183:
0x4183 DD=0: 92                  LB A, [DP]
0x4184 DD=0: f1 0c               JEQ label_4192
0x4186 DD=0: b2 d6               DECB [DP]
label_4188:
0x4188 DD=0: 42                  INC DP
0x4189 DD=0: 6f c6               INCB R7
0x418b DD=0: 6f 93 21            CMPB R7, #0x21
0x418e DD=0: f2 db               JLT label_416b
0x4190 DD=0: 04 1d               SJ label_41af
label_4192:
0x4192 DD=0: f9 05               LB A, #0x05
0x4194 DD=0: 32                  STB A, [DP]
0x4195 DD=0: 95 9f               LB A, off(0x9f)
0x4197 DD=0: f6 05               JNE label_419e
0x4199 DD=0: 6f 87 9f            MOVB off(0x9f), R7
0x419c DD=0: 04 11               SJ label_41af
label_419e:
0x419e DD=0: 0f                  SUBB A, R7
0x419f DD=0: f6 0e               JNE label_41af
0x41a1 DD=0: 35 9f               STB A, off(0x9f)
0x41a3 DD=0: 7f                  LB A, R7
0x41a4 DD=0: 20 d9 8f            MOV X1, #0x8fd9
0x41a7 DD=0: ba 97               MOVB A, [X1+A]
0x41a9 DD=0: f1 04               JEQ label_41af
0x41ab DD=0: 6e aa               MOVB R6, A
0x41ad DD=0: 54 2a               ACAL label_142a
label_41af:
0x41af DD=0: 94 d4               LB A, 0x02d4
0x41b1 DD=0: ac d5               ADDB A, 0x02d5
0x41b3 DD=0: ac d6               ADDB A, 0x02d6
0x41b5 DD=0: ac d7               ADDB A, 0x02d7
0x41b7 DD=0: 9c 9f               CMPB A, 0x029f
0x41b9 DD=0: f6 11               JNE label_41cc
0x41bb DD=0: fb                  CLRB A
0x41bc DD=0: b4 d4 d5            XORB A, 0x02d4
0x41bf DD=0: b4 d5 d5            XORB A, 0x02d5
0x41c2 DD=0: b4 d6 d5            XORB A, 0x02d6
0x41c5 DD=0: b4 d7 d5            XORB A, 0x02d7
0x41c8 DD=0: 9c a0               CMPB A, 0x02a0
0x41ca DD=0: f1 12               JEQ label_41de
label_41cc:
0x41cc DD=1: fa                  CLR A
0x41cd DD=1: 34 d4               ST A, 0x02d4
0x41cf DD=1: 34 d6               ST A, 0x02d6
0x41d1 DD=1: 5d 75               RB sbafix 02f5.5
0x41d3 DD=0: d8                  RDD
0x41d4 DD=0: 34 9f               STB A, 0x029f
0x41d6 DD=0: 34 a0               STB A, 0x02a0
0x41d8 DD=0: 35 2f               STB A, off(0x2f)
0x41da DD=0: 35 30               STB A, off(0x30)
0x41dc DD=0: 35 ad               STB A, off(0xad)
label_41de:
0x41de DD=0: d6 03 0c            MOVB LRBH, #0x0c
0x41e1 DD=1: 87 19 90            L A, 0x9019
0x41e4 DD=1: a4 34 a9            MUL 0x0234
0x41e7 DD=1: 37 06 0c            ST A, 0x0c06
0x41ea DD=1: 86 e0               L A, ADCR0
0x41ec DD=1: b6 07 87 08         MOVB off(0x08), ACCH
0x41f0 DD=1: bc 9f               SRL A, 4
0x41f2 DD=1: bc 9d               SRL A, 2
0x41f4 DD=1: 64 c7               CLR ER0
0x41f6 DD=1: b4 42 70            MOVB R0, 0x0242
0x41f9 DD=1: 08                  SUB A, ER0
0x41fa DD=1: f5 01               JGE label_41fd
0x41fc DD=1: fa                  CLR A
label_41fd:
0x41fd DD=1: a7 1b 90 70         MOV ER0, 0x901b
0x4201 DD=1: 64 a9               MUL ER0
0x4203 DD=0: d8                  RDD
0x4204 DD=0: b6 07 a7 02         TJZB ACCH, label_420a
0x4208 DD=0: bc d7               FILLB A
label_420a:
0x420a DD=0: 35 09               STB A, off(0x09)
0x420c DD=1: 86 eb               L A, ADCR11
0x420e DD=0: 96 07               LB A, ACCH
0x4210 DD=0: 35 0a               STB A, off(0x0a)
0x4212 DD=0: 22 1d 90            MOV DP, #0x901d
0x4215 DD=0: 44 04               ACAL label_1004
0x4217 DD=0: 35 0b               STB A, off(0x0b)
0x4219 DD=1: 86 ea               L A, ADCR10
0x421b DD=0: 96 07               LB A, ACCH
0x421d DD=0: 35 0c               STB A, off(0x0c)
0x421f DD=0: 22 32 90            MOV DP, #0x9032
0x4222 DD=0: 44 04               ACAL label_1004
0x4224 DD=0: 35 0d               STB A, off(0x0d)
0x4226 DD=1: 86 e1               L A, ADCR1
0x4228 DD=1: b6 07 87 0e         MOVB off(0x0e), ACCH
0x422c DD=1: bc 9f               SRL A, 4
0x422e DD=1: bc 9d               SRL A, 2
0x4230 DD=1: a7 47 90 85         SUB A, 0x9047
0x4234 DD=1: f5 01               JGE label_4237
0x4236 DD=1: fa                  CLR A
label_4237:
0x4237 DD=1: a7 49 90 70         MOV ER0, 0x9049
0x423b DD=1: 64 a9               MUL ER0
0x423d DD=0: d8                  RDD
0x423e DD=0: b6 07 a7 02         TJZB ACCH, label_4244
0x4242 DD=0: bc d7               FILLB A
label_4244:
0x4244 DD=0: 35 0f               STB A, off(0x0f)
0x4246 DD=1: f8 ff ff            L A, #0xffff
0x4249 DD=1: b6 07 87 10         MOVB off(0x10), ACCH
0x424d DD=1: bc 9f               SRL A, 4
0x424f DD=1: bc 9d               SRL A, 2
0x4251 DD=1: a7 4b 90 85         SUB A, 0x904b
0x4255 DD=1: f5 01               JGE label_4258
0x4257 DD=1: fa                  CLR A
label_4258:
0x4258 DD=1: a7 4d 90 70         MOV ER0, 0x904d
0x425c DD=1: 64 a9               MUL ER0
0x425e DD=0: d8                  RDD
0x425f DD=0: b6 07 a7 02         TJZB ACCH, label_4265
0x4263 DD=0: bc d7               FILLB A
label_4265:
0x4265 DD=0: d7 11 ff            MOVB off(0x11), #0xff
0x4268 DD=1: 86 e6               L A, ADCR6
0x426a DD=1: bc 9f               SRL A, 4
0x426c DD=1: bc 9d               SRL A, 2
0x426e DD=1: a7 4f 90 70         MOV ER0, 0x904f
0x4272 DD=1: 64 a9               MUL ER0
0x4274 DD=0: d8                  RDD
0x4275 DD=0: b6 07 a7 02         TJZB ACCH, label_427b
0x4279 DD=0: bc d7               FILLB A
label_427b:
0x427b DD=0: 35 12               STB A, off(0x12)
0x427d DD=1: fa                  CLR A
0x427e DD=1: 58 af 05            JBS sbafix 02ef.0, label_4286
0x4281 DD=1: 87 3e 03            L A, 0x033e
0x4284 DD=1: bc 9d               SRL A, 2
label_4286:
0x4286 DD=1: 35 14               ST A, off(0x14)
0x4288 DD=0: f9 80               LB A, #0x80
0x428a DD=0: 58 af 1f            JBS sbafix 02ef.0, label_42ac
0x428d DD=0: b7 e1 05 29 1a      JBS 0x05e1.1, label_42ac
0x4292 DD=0: 97 51 90            LB A, 0x9051
0x4295 DD=0: b7 e1 05 20 12      JBR 0x05e1.0, label_42ac
0x429a DD=1: fa                  CLR A
0x429b DD=0: 97 21 05            LB A, 0x0521
0x429e DD=0: a7 52 90 70         MOV ER0, 0x9052
0x42a2 DD=0: 64 a9               MUL ER0
0x42a4 DD=0: b7 54 90 a5         ADDB A, 0x9054
0x42a8 DD=0: f5 02               JGE label_42ac
0x42aa DD=0: bc d7               FILLB A
label_42ac:
0x42ac DD=0: 35 16               STB A, off(0x16)
0x42ae DD=0: b7 54 05 87 17      MOVB off(0x17), 0x0554
0x42b3 DD=1: 86 f2               L A, ADCR14
0x42b5 DD=0: 96 07               LB A, ACCH
0x42b7 DD=0: 35 18               STB A, off(0x18)
0x42b9 DD=0: 22 55 90            MOV DP, #0x9055
0x42bc DD=0: 44 04               ACAL label_1004
0x42be DD=0: 35 19               STB A, off(0x19)
0x42c0 DD=1: 86 e2               L A, ADCR2
0x42c2 DD=1: b6 07 87 1a         MOVB off(0x1a), ACCH
0x42c6 DD=1: bc 9f               SRL A, 4
0x42c8 DD=1: bc 9d               SRL A, 2
0x42ca DD=1: a7 6a 90 85         SUB A, 0x906a
0x42ce DD=1: f5 01               JGE label_42d1
0x42d0 DD=1: fa                  CLR A
label_42d1:
0x42d1 DD=1: a7 6c 90 70         MOV ER0, 0x906c
0x42d5 DD=1: 64 a9               MUL ER0
0x42d7 DD=0: d8                  RDD
0x42d8 DD=0: b6 07 a7 02         TJZB ACCH, label_42de
0x42dc DD=0: bc d7               FILLB A
label_42de:
0x42de DD=0: 35 1b               STB A, off(0x1b)
0x42e0 DD=0: 68 c7               CLRB R0
0x42e2 DD=1: 87 a0 0c            L A, 0x0ca0
0x42e5 DD=1: 14 10               MOVB R4, #0x10
loop_42e7:
0x42e7 DD=1: 9f                  SRL A
0x42e8 DD=1: f5 01               JGE label_42eb
0x42ea DD=1: c0                  INCB R0
label_42eb:
0x42eb DD=1: 05 7a               DJNZ R4, loop_42e7
0x42ed DD=1: 87 a2 0c            L A, 0x0ca2
0x42f0 DD=1: 14 10               MOVB R4, #0x10
loop_42f2:
0x42f2 DD=1: 9f                  SRL A
0x42f3 DD=1: f5 01               JGE label_42f6
0x42f5 DD=1: c0                  INCB R0
label_42f6:
0x42f6 DD=1: 05 7a               DJNZ R4, loop_42f2
0x42f8 DD=1: 87 a4 0c            L A, 0x0ca4
0x42fb DD=1: 14 10               MOVB R4, #0x10
loop_42fd:
0x42fd DD=1: 9f                  SRL A
0x42fe DD=1: f5 01               JGE label_4301
0x4300 DD=1: c0                  INCB R0
label_4301:
0x4301 DD=1: 05 7a               DJNZ R4, loop_42fd
0x4303 DD=0: 78                  LB A, R0
0x4304 DD=0: f1 02               JEQ label_4308
0x4306 DD=0: bc 0f               SB A.7
label_4308:
0x4308 DD=0: 35 22               STB A, off(0x22)
0x430a DD=1: 86 f1               L A, ADCR13
0x430c DD=1: b6 07 87 23         MOVB off(0x23), ACCH
0x4310 DD=1: b7 5e 05 87 24      MOVB off(0x24), 0x055e
0x4315 DD=1: 86 f3               L A, ADCR15
0x4317 DD=1: b6 07 87 25         MOVB off(0x25), ACCH
0x431b DD=1: b5 26 c7            CLRB off(0x26)
0x431e DD=0: fb                  CLRB A
0x431f DD=0: b4 dc 10            MB C, 0x02dc.0
0x4322 DD=0: bc 1a               MB A.2, C
0x4324 DD=0: 35 27               STB A, off(0x27)
0x4326 DD=0: fb                  CLRB A
0x4327 DD=0: b4 dc 17            MB C, 0x02dc.7
0x432a DD=0: fd                  CPL C
0x432b DD=0: bc 19               MB A.1, C
0x432d DD=0: b4 dc 12            MB C, 0x02dc.2
0x4330 DD=0: bc 1a               MB A.2, C
0x4332 DD=0: b4 dc 11            MB C, 0x02dc.1
0x4335 DD=0: bc 1b               MB A.3, C
0x4337 DD=0: b4 dc 13            MB C, 0x02dc.3
0x433a DD=0: bc 1c               MB A.4, C
0x433c DD=0: b4 dc 14            MB C, 0x02dc.4
0x433f DD=0: bc 1d               MB A.5, C
0x4341 DD=0: b4 dc 16            MB C, 0x02dc.6
0x4344 DD=0: bc 1e               MB A.6, C
0x4346 DD=0: b4 df 10            MB C, 0x02df.0
0x4349 DD=0: bc 1f               MB A.7, C
0x434b DD=0: 35 28               STB A, off(0x28)
0x434d DD=0: fb                  CLRB A
0x434e DD=0: 35 29               STB A, off(0x29)
0x4350 DD=0: fb                  CLRB A
0x4351 DD=0: 35 2a               STB A, off(0x2a)
0x4353 DD=0: fb                  CLRB A
0x4354 DD=0: b6 10 10            MB C, P0.0
0x4357 DD=0: bc 18               MB A.0, C
0x4359 DD=0: 35 2b               STB A, off(0x2b)
0x435b DD=0: fb                  CLRB A
0x435c DD=0: b7 c2 06 15         MB C, 0x06c2.5
0x4360 DD=0: bc 19               MB A.1, C
0x4362 DD=0: 35 2c               STB A, off(0x2c)
0x4364 DD=0: d6 03 06            MOVB LRBH, #0x06
0x4367 DD=0: d6 03 0c            MOVB LRBH, #0x0c
0x436a DD=0: b7 b2 08 2b 09      JBS 0x08b2.3, label_4378
0x436f DD=0: b7 b4 08 28 04      JBS 0x08b4.0, label_4378
0x4374 DD=0: 95 96               LB A, off(0x96)
0x4376 DD=0: f1 03               JEQ label_437b
label_4378:
0x4378 DD=0: 03 eb 43            J label_43eb
label_437b:
0x437b DD=0: a5 06 87 80         MOV off(0x80), off(0x06)
0x437f DD=0: b5 08 87 82         MOVB off(0x82), off(0x08)
0x4383 DD=0: b5 09 87 83         MOVB off(0x83), off(0x09)
0x4387 DD=0: b5 0a 87 84         MOVB off(0x84), off(0x0a)
0x438b DD=0: b5 0b 87 85         MOVB off(0x85), off(0x0b)
0x438f DD=0: b5 0c 87 86         MOVB off(0x86), off(0x0c)
0x4393 DD=0: b5 0d 87 87         MOVB off(0x87), off(0x0d)
0x4397 DD=0: b5 0e 87 88         MOVB off(0x88), off(0x0e)
0x439b DD=0: b5 0f 87 89         MOVB off(0x89), off(0x0f)
0x439f DD=0: b5 10 87 8a         MOVB off(0x8a), off(0x10)
0x43a3 DD=0: b5 11 87 8b         MOVB off(0x8b), off(0x11)
0x43a7 DD=0: b5 12 87 8c         MOVB off(0x8c), off(0x12)
0x43ab DD=0: b5 13 87 8d         MOVB off(0x8d), off(0x13)
0x43af DD=0: a5 14 87 8e         MOV off(0x8e), off(0x14)
0x43b3 DD=0: b5 16 87 90         MOVB off(0x90), off(0x16)
0x43b7 DD=0: b5 17 87 91         MOVB off(0x91), off(0x17)
0x43bb DD=0: b5 18 87 92         MOVB off(0x92), off(0x18)
0x43bf DD=0: b5 19 87 93         MOVB off(0x93), off(0x19)
0x43c3 DD=0: b5 1a 87 94         MOVB off(0x94), off(0x1a)
0x43c7 DD=0: b5 1b 87 95         MOVB off(0x95), off(0x1b)
0x43cb DD=0: b5 1c 87 98         MOVB off(0x98), off(0x1c)
0x43cf DD=0: b5 1d 87 99         MOVB off(0x99), off(0x1d)
0x43d3 DD=0: b5 1e 87 9a         MOVB off(0x9a), off(0x1e)
0x43d7 DD=0: b5 1f 87 9c         MOVB off(0x9c), off(0x1f)
0x43db DD=0: b5 20 87 9d         MOVB off(0x9d), off(0x20)
0x43df DD=0: b5 21 87 9e         MOVB off(0x9e), off(0x21)
0x43e3 DD=0: 94 8d               LB A, 0x028d
0x43e5 DD=0: f1 02               JEQ label_43e9
0x43e7 DD=0: 5f 38               SB sbafix 02f8.7
label_43e9:
0x43e9 DD=0: 35 96               STB A, off(0x96)
label_43eb:
0x43eb DD=0: d6 03 06            MOVB LRBH, #0x06
0x43ee DD=1: 87 3e 03            L A, 0x033e
0x43f1 DD=1: bc 8d               SLL A, 2
0x43f3 DD=1: f5 02               JGE label_43f7
0x43f5 DD=1: bc d7               FILL A
label_43f7:
0x43f7 DD=1: b6 07 87 1e         MOVB off(0x1e), ACCH
0x43fb DD=1: 87 40 03            L A, 0x0340
0x43fe DD=1: bc 8d               SLL A, 2
0x4400 DD=1: f5 02               JGE label_4404
0x4402 DD=1: bc d7               FILL A
label_4404:
0x4404 DD=1: b6 07 87 1f         MOVB off(0x1f), ACCH
0x4408 DD=1: 87 42 03            L A, 0x0342
0x440b DD=1: bc 8d               SLL A, 2
0x440d DD=1: f5 02               JGE label_4411
0x440f DD=1: bc d7               FILL A
label_4411:
0x4411 DD=1: b6 07 87 20         MOVB off(0x20), ACCH
0x4415 DD=1: 87 44 03            L A, 0x0344
0x4418 DD=1: bc 8d               SLL A, 2
0x441a DD=1: f5 02               JGE label_441e
0x441c DD=1: bc d7               FILL A
label_441e:
0x441e DD=1: b6 07 87 21         MOVB off(0x21), ACCH
0x4422 DD=1: 87 32 03            L A, 0x0332
0x4425 DD=1: bc 8d               SLL A, 2
0x4427 DD=1: f5 02               JGE label_442b
0x4429 DD=1: bc d7               FILL A
label_442b:
0x442b DD=1: b6 07 87 22         MOVB off(0x22), ACCH
0x442f DD=1: 58 33               SB sbafix 02f3.0
0x4431 DD=1: f6 5e               JNE label_4491
0x4433 DD=1: 47 f1               ACAL label_13f1
0x4435 DD=1: b7 6a 01 0b         SB 0x016a.3
0x4439 DD=1: a7 20 01 ab fe fe   MOV 0x0120, #0xfefe
0x443f DD=1: b7 38 01 ab e0      MOVB 0x0138, #0xe0
0x4444 DD=1: b7 30 01 ab ea      MOVB 0x0130, #0xea
0x4449 DD=1: d6 38 10            MOVB S0STAT0, #0x10
0x444c DD=1: a7 22 01 ab f3 f3   MOV 0x0122, #0xf3f3
0x4452 DD=1: b7 39 01 ab 88      MOVB 0x0139, #0x88
0x4457 DD=1: b7 31 01 ab 98      MOVB 0x0131, #0x98
0x445c DD=1: d6 27 10            MOVB S1STAT, #0x10
0x445f DD=1: b7 2a 01 ab 53      MOVB 0x012a, #0x53
0x4464 DD=1: b7 2b 01 ab 53      MOVB 0x012b, #0x53
0x4469 DD=1: 86 d6               L A, TM1
0x446b DD=1: ae 14 00            ADD A, #0x0014
0x446e DD=1: 36 ac               ST A, TMR17
0x4470 DD=1: c6 82 00 f0         MOV PWINTQ0, #0xf000
0x4474 DD=1: c6 84 00 f0         MOV PWINTQ1, #0xf000
0x4478 DD=1: b6 4f c7            CLRB TRNSIT
0x447b DD=1: a6 40 c7            CLR IRQ0
0x447e DD=1: a6 42 c7            CLR IRQ1
0x4481 DD=1: d6 44 c0            MOVB IRQ2L, #0xc0
0x4484 DD=1: da                  DI
0x4485 DD=1: c6 46 0d 80         MOV IE0, #0x800d
0x4489 DD=1: c6 48 4e 80         MOV IE1, #0x804e
0x448d DD=1: d6 4a c0            MOVB IE2L, #0xc0
0x4490 DD=1: db                  EI
label_4491:
0x4491 DD=1: 03 9b 38            J label_389b
vcal0_vector:
0x4494 DD=0: 22 10 0a            MOV DP, #0x0a10
0x4497 DD=0: 57 cb               ACAL label_17cb
0x4499 DD=0: 56 75               ACAL label_1675
0x449b DD=0: d6 03 08            MOVB LRBH, #0x08
0x449e DD=0: b5 b1 29 03         JBS off(0xb1).1, label_44a5
0x44a2 DD=0: 03 38 48            J label_4838
label_44a5:
0x44a5 DD=0: 95 78               LB A, off(0x78)
0x44a7 DD=0: dc                  DECB A
0x44a8 DD=0: 3c                  STB A, R4
0x44a9 DD=0: 95 76               LB A, off(0x76)
0x44ab DD=0: 22 64 08            MOV DP, #0x0864
loop_44ae:
0x44ae DD=0: b3 a5               ADDB A, [DP+]
0x44b0 DD=0: 05 7c               DJNZ R4, loop_44ae
0x44b2 DD=0: f1 03               JEQ label_44b7
0x44b4 DD=0: 03 35 48            J label_4835
label_44b7:
0x44b7 DD=0: 22 7c 08            MOV DP, #0x087c
0x44ba DD=1: 85 64               L A, off(0x64)
0x44bc DD=1: b5 b1 0f            SB off(0xb1).7
0x44bf DD=1: 9e fe 04            CMP A, #0x04fe
0x44c2 DD=1: f6 1c               JNE label_44e0
0x44c4 DD=0: 95 66               LB A, off(0x66)
0x44c6 DD=0: 9e ff               CMPB A, #0xff
0x44c8 DD=0: f1 10               JEQ label_44da
0x44ca DD=0: 9e ff               CMPB A, #0xff
0x44cc DD=0: f6 0f               JNE label_44dd
0x44ce DD=0: b3 ab 0e            MOVB [DP+], #0x0e
0x44d1 DD=0: b3 ab 04            MOVB [DP+], #0x04
0x44d4 DD=0: b2 ab ff            MOVB [DP], #0xff
0x44d7 DD=0: b5 b1 07            RB off(0xb1).7
label_44da:
0x44da DD=0: b5 b3 0d            SB off(0xb3).5
label_44dd:
0x44dd DD=0: 03 15 48            J label_4815
label_44e0:
0x44e0 DD=1: b5 b3 2d 03         JBS off(0xb3).5, label_44e7
0x44e4 DD=1: 03 15 48            J label_4815
label_44e7:
0x44e7 DD=1: 9e 72 05            CMP A, #0x0572
0x44ea DD=1: f1 08               JEQ label_44f4
0x44ec DD=1: 9e 72 07            CMP A, #0x0772
0x44ef DD=1: f1 03               JEQ label_44f4
0x44f1 DD=1: 03 90 46            J label_4690
label_44f4:
0x44f4 DD=0: 95 66               LB A, off(0x66)
0x44f6 DD=0: 9e 60               CMPB A, #0x60
0x44f8 DD=0: f6 32               JNE label_452c
0x44fa DD=0: 95 67               LB A, off(0x67)
0x44fc DD=0: be 03               ANDB A, #0x03
0x44fe DD=0: f1 29               JEQ label_4529
0x4500 DD=0: b3 ab 02            MOVB [DP+], #0x02
0x4503 DD=0: b3 ab 05            MOVB [DP+], #0x05
0x4506 DD=0: b3 ab 60            MOVB [DP+], #0x60
0x4509 DD=0: b5 b4 70            MOVB R0, off(0xb4)
0x450c DD=0: 68 b3 83            ANDB R0, #0x83
0x450f DD=0: f1 0d               JEQ label_451e
0x4511 DD=0: 68 b3 03            ANDB R0, #0x03
0x4514 DD=0: f6 0d               JNE label_4523
0x4516 DD=0: b5 b4 07            RB off(0xb4).7
0x4519 DD=0: b2 ab 00            MOVB [DP], #0x00
0x451c DD=0: 04 08               SJ label_4526
label_451e:
0x451e DD=0: bc 0f               SB A.7
0x4520 DD=0: b5 b4 c4            OR off(0xb4), A
label_4523:
0x4523 DD=0: b2 ab 01            MOVB [DP], #0x01
label_4526:
0x4526 DD=0: b5 b1 07            RB off(0xb1).7
label_4529:
0x4529 DD=0: 03 8d 46            J label_468d
label_452c:
0x452c DD=0: 9e 71               CMPB A, #0x71
0x452e DD=0: f6 35               JNE label_4565
0x4530 DD=0: fe 80 17            CAL label_1780
0x4533 DD=0: fb                  CLRB A
0x4534 DD=0: b5 b6 20 0a         JBR off(0xb6).0, label_4542
0x4538 DD=0: b9 00 00 97         MOVB A, 0x0000[X2]
0x453c DD=0: 9e 20               CMPB A, #0x20
0x453e DD=0: f7 02               JLE label_4542
0x4540 DD=0: f9 20               LB A, #0x20
label_4542:
0x4542 DD=0: 3c                  STB A, R4
0x4543 DD=0: ae 05               ADDB A, #0x05
0x4545 DD=0: b3 ab 02            MOVB [DP+], #0x02
0x4548 DD=0: 33                  STB A, [DP+]
0x4549 DD=0: b3 ab 71            MOVB [DP+], #0x71
0x454c DD=0: 95 67               LB A, off(0x67)
0x454e DD=0: 33                  STB A, [DP+]
0x454f DD=0: b5 b6 20 0c         JBR off(0xb6).0, label_455f
0x4553 DD=0: 41                  INC X2
loop_4554:
0x4554 DD=0: a9 00 00 74         MOV X1, 0x0000[X2]
0x4558 DD=0: b0 97               MOVB A, [X1]
0x455a DD=0: 33                  STB A, [DP+]
0x455b DD=0: 41                  INC X2
0x455c DD=0: 41                  INC X2
0x455d DD=0: 05 75               DJNZ R4, loop_4554
label_455f:
0x455f DD=0: b5 b1 07            RB off(0xb1).7
0x4562 DD=0: 03 8d 46            J label_468d
label_4565:
0x4565 DD=0: 9e 72               CMPB A, #0x72
0x4567 DD=0: f6 6b               JNE label_45d4
0x4569 DD=0: fe 80 17            CAL label_1780
0x456c DD=0: 6a c7               CLRB R2
0x456e DD=0: 66 c7               CLR ER2
0x4570 DD=0: b5 b6 20 29         JBR off(0xb6).0, label_459d
0x4574 DD=0: 95 69               LB A, off(0x69)
0x4576 DD=0: f1 25               JEQ label_459d
0x4578 DD=0: 9e 20               CMPB A, #0x20
0x457a DD=0: f0 21               JGT label_459d
0x457c DD=0: 3b                  STB A, R3
0x457d DD=0: dc                  DECB A
0x457e DD=0: b5 68 70            MOVB R0, off(0x68)
0x4581 DD=0: 28                  ADDB A, R0
0x4582 DD=0: f2 19               JLT label_459d
0x4584 DD=0: 6b 72               MOVB R2, R3
0x4586 DD=0: 3b                  STB A, R3
0x4587 DD=0: b9 00 00 97         MOVB A, 0x0000[X2]
0x458b DD=0: dc                  DECB A
0x458c DD=0: 18                  CMPB A, R0
0x458d DD=0: f5 04               JGE label_4593
0x458f DD=0: 6a 75               MOVB R5, R2
0x4591 DD=0: 04 0a               SJ label_459d
label_4593:
0x4593 DD=0: 6a 74               MOVB R4, R2
0x4595 DD=0: 0b                  SUBB A, R3
0x4596 DD=0: f5 05               JGE label_459d
0x4598 DD=0: cf                  NEGB A
0x4599 DD=0: 3d                  STB A, R5
0x459a DD=0: 0a                  SUBB A, R2
0x459b DD=0: cf                  NEGB A
0x459c DD=0: 3c                  STB A, R4
label_459d:
0x459d DD=0: 7a                  LB A, R2
0x459e DD=0: ae 06               ADDB A, #0x06
0x45a0 DD=0: b3 ab 02            MOVB [DP+], #0x02
0x45a3 DD=0: 33                  STB A, [DP+]
0x45a4 DD=0: b3 ab 72            MOVB [DP+], #0x72
0x45a7 DD=0: 95 67               LB A, off(0x67)
0x45a9 DD=0: 33                  STB A, [DP+]
0x45aa DD=0: 95 68               LB A, off(0x68)
0x45ac DD=0: 33                  STB A, [DP+]
0x45ad DD=0: b5 b6 20 1d         JBR off(0xb6).0, label_45ce
0x45b1 DD=0: 7c                  LB A, R4
0x45b2 DD=0: f1 13               JEQ label_45c7
0x45b4 DD=0: 41                  INC X2
0x45b5 DD=0: 69 c7               CLRB R1
0x45b7 DD=1: 74                  L A, ER0
0x45b8 DD=1: 8f                  SLL A
0x45b9 DD=1: 61 a4               ADD X2, A
0x45bb DD=0: d8                  RDD
loop_45bc:
0x45bc DD=0: a9 00 00 74         MOV X1, 0x0000[X2]
0x45c0 DD=0: b0 97               MOVB A, [X1]
0x45c2 DD=0: 33                  STB A, [DP+]
0x45c3 DD=0: 41                  INC X2
0x45c4 DD=0: 41                  INC X2
0x45c5 DD=0: 05 75               DJNZ R4, loop_45bc
label_45c7:
0x45c7 DD=0: 7d                  LB A, R5
0x45c8 DD=0: f1 04               JEQ label_45ce
0x45ca DD=0: fb                  CLRB A
loop_45cb:
0x45cb DD=0: 33                  STB A, [DP+]
0x45cc DD=0: 05 fd               DJNZ R5, loop_45cb
label_45ce:
0x45ce DD=0: b5 b1 07            RB off(0xb1).7
0x45d1 DD=0: 03 8d 46            J label_468d
label_45d4:
0x45d4 DD=0: 9e 73               CMPB A, #0x73
0x45d6 DD=0: f1 03               JEQ label_45db
0x45d8 DD=0: 03 5c 46            J label_465c
label_45db:
0x45db DD=0: 95 67               LB A, off(0x67)
0x45dd DD=0: f6 24               JNE label_4603
0x45df DD=0: b3 ab 02            MOVB [DP+], #0x02
0x45e2 DD=0: b3 ab 07            MOVB [DP+], #0x07
0x45e5 DD=0: b3 ab 73            MOVB [DP+], #0x73
0x45e8 DD=0: 33                  STB A, [DP+]
0x45e9 DD=0: 33                  STB A, [DP+]
0x45ea DD=0: 31                  STB A, [DP-]
0x45eb DD=0: 68 c7               CLRB R0
0x45ed DD=0: 97 96 0c            LB A, 0x0c96
0x45f0 DD=0: f1 0f               JEQ label_4601
0x45f2 DD=0: b6 07 c7            CLRB ACCH
0x45f5 DD=1: d9                  SDD
0x45f6 DD=1: 8f                  SLL A
0x45f7 DD=1: 20 75 90            MOV X1, #0x9075
0x45fa DD=1: 60 a4               ADD X1, A
0x45fc DD=1: 80                  L A, [X1]
0x45fd DD=0: d8                  RDD
0x45fe DD=0: 33                  STB A, [DP+]
0x45ff DD=0: df                  SWAP
0x4600 DD=0: 33                  STB A, [DP+]
label_4601:
0x4601 DD=0: 04 53               SJ label_4656
label_4603:
0x4603 DD=0: b3 ab 02            MOVB [DP+], #0x02
0x4606 DD=0: b3 ab 0c            MOVB [DP+], #0x0c
0x4609 DD=0: b3 ab 73            MOVB [DP+], #0x73
0x460c DD=0: 33                  STB A, [DP+]
0x460d DD=1: fa                  CLR A
0x460e DD=1: 33                  ST A, [DP+]
0x460f DD=1: 33                  ST A, [DP+]
0x4610 DD=1: 33                  ST A, [DP+]
0x4611 DD=1: 33                  ST A, [DP+]
0x4612 DD=1: 22 81 08            MOV DP, #0x0881
0x4615 DD=1: 69 c7               CLRB R1
0x4617 DD=1: 12 01               MOVB R2, #0x01
0x4619 DD=1: b5 a7 c7            CLRB off(0xa7)
label_461c:
0x461c DD=0: 95 a7               LB A, off(0xa7)
0x461e DD=0: 9e 2b               CMPB A, #0x2b
0x4620 DD=0: f5 34               JGE label_4656
0x4622 DD=0: b7 a0 0c ca         TBR 0x0ca0.(AL)
0x4626 DD=0: f1 26               JEQ label_464e
0x4628 DD=0: 6a 91 67            CMPB R2, off(0x67)
0x462b DD=0: f1 0b               JEQ label_4638
0x462d DD=0: c1                  INCB R1
0x462e DD=0: 69 93 03            CMPB R1, #0x03
0x4631 DD=0: f2 1b               JLT label_464e
0x4633 DD=0: c2                  INCB R2
0x4634 DD=0: 69 c7               CLRB R1
0x4636 DD=0: 04 16               SJ label_464e
label_4638:
0x4638 DD=0: 69 93 03            CMPB R1, #0x03
0x463b DD=0: f5 16               JGE label_4653
0x463d DD=0: cc                  INCB A
0x463e DD=0: b6 07 c7            CLRB ACCH
0x4641 DD=1: d9                  SDD
0x4642 DD=1: 8f                  SLL A
0x4643 DD=1: 20 75 90            MOV X1, #0x9075
0x4646 DD=1: 60 a4               ADD X1, A
0x4648 DD=1: 80                  L A, [X1]
0x4649 DD=0: d8                  RDD
0x464a DD=0: 33                  STB A, [DP+]
0x464b DD=0: df                  SWAP
0x464c DD=0: 33                  STB A, [DP+]
0x464d DD=0: c1                  INCB R1
label_464e:
0x464e DD=0: b5 a7 c6            INCB off(0xa7)
0x4651 DD=0: 04 c9               SJ label_461c
label_4653:
0x4653 DD=0: d7 80 01            MOVB off(0x80), #0x01
label_4656:
0x4656 DD=0: b5 b1 07            RB off(0xb1).7
0x4659 DD=0: 03 8d 46            J label_468d
label_465c:
0x465c DD=0: 9e 00               CMPB A, #0x00
0x465e DD=0: f6 2d               JNE label_468d
0x4660 DD=0: 95 67               LB A, off(0x67)
0x4662 DD=0: 9e f1               CMPB A, #0xf1
0x4664 DD=0: f6 14               JNE label_467a
0x4666 DD=0: b5 b3 09            SB off(0xb3).1
0x4669 DD=0: b5 b3 00            RB off(0xb3).0
0x466c DD=0: b5 b3 05            RB off(0xb3).5
0x466f DD=0: b3 ab 02            MOVB [DP+], #0x02
0x4672 DD=0: b3 ab 04            MOVB [DP+], #0x04
0x4675 DD=0: b2 ab 00            MOVB [DP], #0x00
0x4678 DD=0: 04 10               SJ label_468a
label_467a:
0x467a DD=0: 9e f0               CMPB A, #0xf0
0x467c DD=0: f6 0f               JNE label_468d
0x467e DD=0: b5 b3 08            SB off(0xb3).0
0x4681 DD=0: b3 ab 02            MOVB [DP+], #0x02
0x4684 DD=0: b3 ab 04            MOVB [DP+], #0x04
0x4687 DD=0: b2 ab 00            MOVB [DP], #0x00
label_468a:
0x468a DD=0: b5 b1 07            RB off(0xb1).7
label_468d:
0x468d DD=0: 03 15 48            J label_4815
label_4690:
0x4690 DD=1: 9e 27 06            CMP A, #0x0627
0x4693 DD=1: f1 10               JEQ label_46a5
0x4695 DD=1: b4 a5 70            MOVB R0, 0x02a5
0x4698 DD=1: 68 a3 14            ADDB R0, #0x14
0x469b DD=1: f5 05               JGE label_46a2
0x469d DD=1: 9e 27 0b            CMP A, #0x0b27
0x46a0 DD=1: f1 03               JEQ label_46a5
label_46a2:
0x46a2 DD=1: 03 3f 47            J label_473f
label_46a5:
0x46a5 DD=1: b3 ab 07            MOVB [DP+], #0x07
0x46a8 DD=0: 95 66               LB A, off(0x66)
0x46aa DD=0: f6 12               JNE label_46be
0x46ac DD=0: b3 ab 05            MOVB [DP+], #0x05
0x46af DD=0: 95 67               LB A, off(0x67)
0x46b1 DD=0: df                  SWAP
0x46b2 DD=0: 95 68               LB A, off(0x68)
0x46b4 DD=0: 60 aa               MOV X1, A
0x46b6 DD=0: b0 8b               MOVB [DP+], [X1]
0x46b8 DD=0: 40                  INC X1
0x46b9 DD=0: b0 8b               MOVB [DP+], [X1]
0x46bb DD=0: 03 39 47            J label_4739
label_46be:
0x46be DD=0: 9e e0               CMPB A, #0xe0
0x46c0 DD=0: f6 50               JNE label_4712
0x46c2 DD=0: b3 ab 08            MOVB [DP+], #0x08
0x46c5 DD=0: b5 b0 28 2e         JBS off(0xb0).0, label_46f7
0x46c9 DD=0: d5 67 48            CMPB off(0x67), #0x48
0x46cc DD=0: f6 44               JNE label_4712
0x46ce DD=0: c5 68 65 6c         CMP off(0x68), #0x6c65
0x46d2 DD=0: f6 3e               JNE label_4712
0x46d4 DD=0: c5 6a 6c 6f         CMP off(0x6a), #0x6f6c
0x46d8 DD=0: f6 38               JNE label_4712
0x46da DD=0: c5 6c 48 6f         CMP off(0x6c), #0x6f48
0x46de DD=0: f6 32               JNE label_4712
0x46e0 DD=0: a3 ab 49 7f         MOV [DP+], #0x7f49
0x46e4 DD=0: a3 ab 61 6d         MOV [DP+], #0x6d61
0x46e8 DD=0: b3 ab 7f            MOVB [DP+], #0x7f
0x46eb DD=0: b5 b0 08            SB off(0xb0).0
0x46ee DD=0: d7 b7 64            MOVB off(0xb7), #0x64
0x46f1 DD=0: b5 67 87 a3         MOVB off(0xa3), off(0x67)
0x46f5 DD=0: 04 42               SJ label_4739
label_46f7:
0x46f7 DD=0: 95 b7               LB A, off(0xb7)
0x46f9 DD=0: f1 17               JEQ label_4712
0x46fb DD=0: d5 67 77            CMPB off(0x67), #0x77
0x46fe DD=0: f6 12               JNE label_4712
0x4700 DD=0: c5 68 41 72         CMP off(0x68), #0x7241
0x4704 DD=0: f6 0c               JNE label_4712
0x4706 DD=0: c5 6a 65 59         CMP off(0x6a), #0x5965
0x470a DD=0: f6 06               JNE label_4712
0x470c DD=0: c5 6c 6f 75         CMP off(0x6c), #0x756f
0x4710 DD=0: f1 0f               JEQ label_4721
label_4712:
0x4712 DD=0: b5 b7 c7            CLRB off(0xb7)
0x4715 DD=0: b5 b0 00            RB off(0xb0).0
0x4718 DD=0: b5 a3 c7            CLRB off(0xa3)
0x471b DD=0: b5 a4 c7            CLRB off(0xa4)
0x471e DD=0: 03 3c 47            J label_473c
label_4721:
0x4721 DD=0: a3 ab 46 69         MOV [DP+], #0x6946
0x4725 DD=0: a3 ab 6e 2e         MOV [DP+], #0x2e6e
0x4729 DD=0: b3 ab 7f            MOVB [DP+], #0x7f
0x472c DD=0: b5 b0 00            RB off(0xb0).0
0x472f DD=0: b5 b7 c7            CLRB off(0xb7)
0x4732 DD=0: b5 67 87 a4         MOVB off(0xa4), off(0x67)
0x4736 DD=0: b5 b0 09            SB off(0xb0).1
label_4739:
0x4739 DD=0: b5 b1 07            RB off(0xb1).7
label_473c:
0x473c DD=0: 03 15 48            J label_4815
label_473f:
0x473f DD=1: 9e 7d 06            CMP A, #0x067d
0x4742 DD=1: f1 03               JEQ label_4747
0x4744 DD=1: 03 b7 47            J label_47b7
label_4747:
0x4747 DD=1: b5 b5 29 0b         JBS off(0xb5).1, label_4756
0x474b DD=1: b3 ab 0d            MOVB [DP+], #0x0d
0x474e DD=1: 42                  INC DP
0x474f DD=1: 85 66               L A, off(0x66)
0x4751 DD=1: 9e 01 01            CMP A, #0x0101
0x4754 DD=1: f1 03               JEQ label_4759
label_4756:
0x4756 DD=1: 03 b4 47            J label_47b4
label_4759:
0x4759 DD=0: 96 07               LB A, ACCH
0x475b DD=0: 33                  STB A, [DP+]
0x475c DD=0: 95 68               LB A, off(0x68)
0x475e DD=0: f6 1b               JNE label_477b
0x4760 DD=0: 97 4e 92            LB A, 0x924e
0x4763 DD=0: 33                  STB A, [DP+]
0x4764 DD=0: 97 4f 92            LB A, 0x924f
0x4767 DD=0: 33                  STB A, [DP+]
0x4768 DD=0: 97 50 92            LB A, 0x9250
0x476b DD=0: 33                  STB A, [DP+]
0x476c DD=0: 97 51 92            LB A, 0x9251
0x476f DD=0: 33                  STB A, [DP+]
0x4770 DD=0: 97 52 92            LB A, 0x9252
0x4773 DD=0: 33                  STB A, [DP+]
0x4774 DD=0: 97 53 92            LB A, 0x9253
0x4777 DD=0: 33                  STB A, [DP+]
0x4778 DD=0: 03 a9 47            J label_47a9
label_477b:
0x477b DD=0: 9e 02               CMPB A, #0x02
0x477d DD=0: f5 07               JGE label_4786
0x477f DD=0: 97 12 0c            LB A, 0x0c12
0x4782 DD=0: 33                  STB A, [DP+]
0x4783 DD=0: 03 a9 47            J label_47a9
label_4786:
0x4786 DD=0: f6 0e               JNE label_4796
0x4788 DD=0: b3 ab 00            MOVB [DP+], #0x00
0x478b DD=1: 87 06 0c            L A, 0x0c06
0x478e DD=1: b6 07 8b            MOVB [DP+], ACCH
0x4791 DD=0: d8                  RDD
0x4792 DD=0: 33                  STB A, [DP+]
0x4793 DD=0: 03 a9 47            J label_47a9
label_4796:
0x4796 DD=0: 9e 03               CMPB A, #0x03
0x4798 DD=0: f6 1a               JNE label_47b4
0x479a DD=0: 95 aa               LB A, off(0xaa)
0x479c DD=0: 33                  STB A, [DP+]
0x479d DD=0: 95 ab               LB A, off(0xab)
0x479f DD=0: 33                  STB A, [DP+]
0x47a0 DD=0: 95 ac               LB A, off(0xac)
0x47a2 DD=0: 33                  STB A, [DP+]
0x47a3 DD=0: 95 ad               LB A, off(0xad)
0x47a5 DD=0: 33                  STB A, [DP+]
0x47a6 DD=0: 95 ae               LB A, off(0xae)
0x47a8 DD=0: 33                  STB A, [DP+]
label_47a9:
0x47a9 DD=1: 72                  L A, DP
0x47aa DD=1: 8e 7c 08            SUB A, #0x087c
0x47ad DD=0: d8                  RDD
0x47ae DD=0: cc                  INCB A
0x47af DD=0: 35 7d               STB A, off(0x7d)
0x47b1 DD=0: b5 b1 07            RB off(0xb1).7
label_47b4:
0x47b4 DD=0: 03 15 48            J label_4815
label_47b7:
0x47b7 DD=1: 9e 7d 08            CMP A, #0x087d
0x47ba DD=1: f1 03               JEQ label_47bf
0x47bc DD=1: 03 15 48            J label_4815
label_47bf:
0x47bf DD=1: b5 b5 29 52         JBS off(0xb5).1, label_4815
0x47c3 DD=0: 95 66               LB A, off(0x66)
0x47c5 DD=0: 9e 01               CMPB A, #0x01
0x47c7 DD=0: f6 4c               JNE label_4815
0x47c9 DD=0: b3 ab 0d            MOVB [DP+], #0x0d
0x47cc DD=0: b3 ab 05            MOVB [DP+], #0x05
0x47cf DD=0: 95 67               LB A, off(0x67)
0x47d1 DD=0: 33                  STB A, [DP+]
0x47d2 DD=0: 9e 02               CMPB A, #0x02
0x47d4 DD=0: f6 1a               JNE label_47f0
0x47d6 DD=1: 85 68               L A, off(0x68)
0x47d8 DD=1: 9e 50 47            CMP A, #0x4750
0x47db DD=1: f6 38               JNE label_4815
0x47dd DD=0: 95 6a               LB A, off(0x6a)
0x47df DD=0: 9e 4d               CMPB A, #0x4d
0x47e1 DD=0: f6 32               JNE label_4815
0x47e3 DD=0: f9 11               LB A, #0x11
0x47e5 DD=0: b5 ba a7 04         TJZB off(0xba), label_47ed
0x47e9 DD=0: b5 b5 0a            SB off(0xb5).2
0x47ec DD=0: fb                  CLRB A
label_47ed:
0x47ed DD=0: 33                  STB A, [DP+]
0x47ee DD=0: 04 22               SJ label_4812
label_47f0:
0x47f0 DD=0: 9e 03               CMPB A, #0x03
0x47f2 DD=0: f6 21               JNE label_4815
0x47f4 DD=1: 85 68               L A, off(0x68)
0x47f6 DD=1: 9e 2d 46            CMP A, #0x462d
0x47f9 DD=1: f6 1a               JNE label_4815
0x47fb DD=0: 95 6a               LB A, off(0x6a)
0x47fd DD=0: 9e 49               CMPB A, #0x49
0x47ff DD=0: f6 14               JNE label_4815
0x4801 DD=0: f9 1f               LB A, #0x1f
0x4803 DD=0: b5 b5 22 0a         JBR off(0xb5).2, label_4811
0x4807 DD=0: f9 11               LB A, #0x11
0x4809 DD=0: b5 ba a7 04         TJZB off(0xba), label_4811
0x480d DD=0: b5 b5 09            SB off(0xb5).1
0x4810 DD=0: fb                  CLRB A
label_4811:
0x4811 DD=0: 33                  STB A, [DP+]
label_4812:
0x4812 DD=0: b5 b1 07            RB off(0xb1).7
label_4815:
0x4815 DD=0: b5 b1 2f 1c         JBS off(0xb1).7, label_4835
0x4819 DD=0: 95 7d               LB A, off(0x7d)
0x481b DD=0: dc                  DECB A
0x481c DD=0: 3c                  STB A, R4
0x481d DD=0: 22 7c 08            MOV DP, #0x087c
0x4820 DD=0: fb                  CLRB A
loop_4821:
0x4821 DD=0: b3 a5               ADDB A, [DP+]
0x4823 DD=0: 05 7c               DJNZ R4, loop_4821
0x4825 DD=0: cf                  NEGB A
0x4826 DD=0: 32                  STB A, [DP]
0x4827 DD=0: b5 7d 87 79         MOVB off(0x79), off(0x7d)
0x482b DD=0: d7 78 01            MOVB off(0x78), #0x01
0x482e DD=0: b5 b2 0e            SB off(0xb2).6
0x4831 DD=0: b5 7c 96 26         MOVB S1BUF, off(0x7c)
label_4835:
0x4835 DD=0: b5 b1 01            RB off(0xb1).1
label_4838:
0x4838 DD=0: d6 03 06            MOVB LRBH, #0x06
0x483b DD=0: 58 f5 17            JBR sbafix 02f5.0, label_4855
0x483e DD=0: b6 15 0b            SB P5.3
0x4841 DD=1: 86 06               L A, ACC
0x4843 DD=1: 86 06               L A, ACC
0x4845 DD=1: 86 06               L A, ACC
0x4847 DD=1: 86 06               L A, ACC
0x4849 DD=1: 86 06               L A, ACC
0x484b DD=1: b6 15 10            MB C, P5.0
0x484e DD=1: b6 15 03            RB P5.3
0x4851 DD=1: f5 02               JGE label_4855
0x4853 DD=1: 56 99               ACAL label_1699
label_4855:
0x4855 DD=1: 48 48               RB sbaoff c8.0
0x4857 DD=1: f6 03               JNE label_485c
0x4859 DD=1: 03 80 50            J label_5080
label_485c:
0x485c DD=1: 22 30 0a            MOV DP, #0x0a30
0x485f DD=1: 57 cb               ACAL label_17cb
0x4861 DD=1: 47 f1               ACAL label_13f1
0x4863 DD=1: 14 01               MOVB R4, #0x01
0x4865 DD=1: 22 a3 02            MOV DP, #0x02a3
0x4868 DD=1: 47 ff               ACAL label_13ff
0x486a DD=1: 14 02               MOVB R4, #0x02
0x486c DD=1: 22 8c 03            MOV DP, #0x038c
0x486f DD=1: 47 ff               ACAL label_13ff
0x4871 DD=1: 14 01               MOVB R4, #0x01
0x4873 DD=1: 22 5e 04            MOV DP, #0x045e
0x4876 DD=1: 47 ff               ACAL label_13ff
0x4878 DD=1: 14 05               MOVB R4, #0x05
0x487a DD=1: 22 68 05            MOV DP, #0x0568
0x487d DD=1: 47 ff               ACAL label_13ff
0x487f DD=1: 14 06               MOVB R4, #0x06
0x4881 DD=1: 22 a3 06            MOV DP, #0x06a3
0x4884 DD=1: 47 ff               ACAL label_13ff
0x4886 DD=1: 14 04               MOVB R4, #0x04
0x4888 DD=1: 22 b7 08            MOV DP, #0x08b7
0x488b DD=1: 47 ff               ACAL label_13ff
0x488d DD=1: d6 03 08            MOVB LRBH, #0x08
0x4890 DD=1: b5 b5 29 03         JBS off(0xb5).1, label_4897
0x4894 DD=1: d7 ba 32            MOVB off(0xba), #0x32
label_4897:
0x4897 DD=1: 03 bc 48            J label_48bc
0x489a:                          db                               86 f5 10 c8 68 92
0x48a0:                          db 07 8a 1b a5 a8 c8 b5 b5 29 12 68 92 07 8a 23 06
0x48b0:                          db f2 0a f9 32 04 04 b5 b5 02 fb 35 ba
label_48bc:
0x48bc DD=1: b5 b5 20 07         JBR off(0xb5).0, label_48c7
0x48c0 DD=1: b5 b5 24 07         JBR off(0xb5).4, label_48cb
label_48c4:
0x48c4 DD=1: 00                  NOP
0x48c5 DD=1: 04 fd               SJ label_48c4
label_48c7:
0x48c7 DD=1: b5 b5 24 06         JBR off(0xb5).4, label_48d1
label_48cb:
0x48cb DD=1: b5 b5 00            RB off(0xb5).0
0x48ce DD=1: b5 b5 04            RB off(0xb5).4
label_48d1:
0x48d1 DD=1: 58 af 05            JBS sbafix 02ef.0, label_48d9
0x48d4 DD=1: b5 b3 02            RB off(0xb3).2
0x48d7 DD=1: 04 71               SJ label_494a
label_48d9:
0x48d9 DD=1: b5 b3 14            MB C, off(0xb3).4
0x48dc DD=1: b5 b3 1b            MB off(0xb3).3, C
0x48df DD=1: b6 16 12            MB C, P6.2
0x48e2 DD=1: b5 b3 1c            MB off(0xb3).4, C
0x48e5 DD=0: 95 bb               LB A, off(0xbb)
0x48e7 DD=0: f6 61               JNE label_494a
0x48e9 DD=0: b5 b3 2a 10         JBS off(0xb3).2, label_48fd
0x48ed DD=0: b5 b3 2c 59         JBS off(0xb3).4, label_494a
0x48f1 DD=0: b5 b3 23 55         JBR off(0xb3).3, label_494a
0x48f5 DD=0: b5 b3 0a            SB off(0xb3).2
0x48f8 DD=0: b5 a6 c7            CLRB off(0xa6)
0x48fb DD=0: 04 4d               SJ label_494a
label_48fd:
0x48fd DD=0: 95 a6               LB A, off(0xa6)
0x48ff DD=0: cc                  INCB A
0x4900 DD=0: 35 a6               STB A, off(0xa6)
0x4902 DD=0: b7 72 90 95         CMPB A, 0x9072
0x4906 DD=0: f5 21               JGE label_4929
0x4908 DD=0: b7 6f 90 95         CMPB A, 0x906f
0x490c DD=0: f0 06               JGT label_4914
0x490e DD=0: b5 b3 2c 12         JBS off(0xb3).4, label_4924
0x4912 DD=0: 04 36               SJ label_494a
label_4914:
0x4914 DD=0: b7 70 90 95         CMPB A, 0x9070
0x4918 DD=0: f0 30               JGT label_494a
0x491a DD=0: b7 71 90 95         CMPB A, 0x9071
0x491e DD=0: f2 2a               JLT label_494a
0x4920 DD=0: b5 b3 2c 26         JBS off(0xb3).4, label_494a
label_4924:
0x4924 DD=0: b5 b3 02            RB off(0xb3).2
0x4927 DD=0: 04 21               SJ label_494a
label_4929:
0x4929 DD=0: da                  DI
0x492a DD=0: b7 39 01 07         RB 0x0139.7
0x492e DD=0: a7 22 01 ab f4 f4   MOV 0x0122, #0xf4f4
0x4934 DD=0: b6 27 b3 fc         ANDB S1STAT, #0xfc
0x4938 DD=0: 96 26               LB A, S1BUF
0x493a DD=0: b7 39 01 0f         SB 0x0139.7
0x493e DD=0: b5 b3 02            RB off(0xb3).2
0x4941 DD=0: b7 73 90 87 b9      MOVB off(0xb9), 0x9073
0x4946 DD=0: b5 b1 0a            SB off(0xb1).2
0x4949 DD=0: db                  EI
label_494a:
0x494a DD=0: d6 03 06            MOVB LRBH, #0x06
0x494d DD=0: 5b 73               RB sbafix 02f3.3
0x494f DD=0: f6 08               JNE label_4959
0x4951 DD=0: 95 a3               LB A, off(0xa3)
0x4953 DD=0: f6 09               JNE label_495e
0x4955 DD=0: 59 73               RB sbafix 02f3.1
0x4957 DD=0: 04 05               SJ label_495e
label_4959:
0x4959 DD=1: 59 33               SB sbafix 02f3.1
0x495b DD=1: d7 a3 64            MOVB off(0xa3), #0x64
label_495e:
0x495e DD=1: 85 a0               L A, off(0xa0)
0x4960 DD=1: dc                  DEC A
0x4961 DD=1: f6 0e               JNE label_4971
0x4963 DD=1: b5 c8 15            MB C, off(0xc8).5
0x4966 DD=1: b5 c9 55            BOR C, off(0xc9).5
0x4969 DD=1: b5 c9 1d            MB off(0xc9).5, C
0x496c DD=1: 4d 08               SB sbaoff c8.5
0x496e DD=1: f8 e8 03            L A, #0x03e8
label_4971:
0x4971 DD=1: 35 a0               ST A, off(0xa0)
0x4973 DD=1: 10 0a               MOVB R0, #0x0a
0x4975 DD=1: 68 a8               DIVB R0
0x4977 DD=1: 69 a6 29            TJNZB R1, label_49a3
0x497a DD=1: b5 c8 12            MB C, off(0xc8).2
0x497d DD=1: b5 c9 52            BOR C, off(0xc9).2
0x4980 DD=1: b5 c9 1a            MB off(0xc9).2, C
0x4983 DD=1: 4a 08               SB sbaoff c8.2
0x4985 DD=1: 68 a8               DIVB R0
0x4987 DD=1: 69 a6 19            TJNZB R1, label_49a3
0x498a DD=1: b5 c8 13            MB C, off(0xc8).3
0x498d DD=1: b5 c9 53            BOR C, off(0xc9).3
0x4990 DD=1: b5 c9 1b            MB off(0xc9).3, C
0x4993 DD=1: 4b 08               SB sbaoff c8.3
0x4995 DD=1: 9f                  SRL A
0x4996 DD=1: f2 0b               JLT label_49a3
0x4998 DD=1: b5 c8 14            MB C, off(0xc8).4
0x499b DD=1: b5 c9 54            BOR C, off(0xc9).4
0x499e DD=1: b5 c9 1c            MB off(0xc9).4, C
0x49a1 DD=1: 4c 08               SB sbaoff c8.4
label_49a3:
0x49a3 DD=1: 58 f5 03            JBR sbafix 02f5.0, label_49a9
0x49a6 DD=1: 03 ee 4b            J label_4bee
label_49a9:
0x49a9 DD=1: 4d c7 03            JBR sbaoff c7.5, label_49af
0x49ac DD=1: 03 4a 4a            J label_4a4a
label_49af:
0x49af DD=1: b7 b2 08 2b 11      JBS 0x08b2.3, label_49c5
0x49b4 DD=0: 97 b4 08            LB A, 0x08b4
0x49b7 DD=0: be 03               ANDB A, #0x03
0x49b9 DD=0: f1 2d               JEQ label_49e8
0x49bb DD=0: b7 b4 08 20 1e      JBR 0x08b4.0, label_49de
0x49c0 DD=0: b7 b2 08 2d 19      JBS 0x08b2.5, label_49de
label_49c5:
0x49c5 DD=0: 5a 36               SB sbafix 02f6.2
0x49c7 DD=0: b7 b3 08 06         RB 0x08b3.6
0x49cb DD=0: b7 b2 08 0d         SB 0x08b2.5
0x49cf DD=0: 14 0b               MOVB R4, #0x0b
0x49d1 DD=0: 22 80 0c            MOV DP, #0x0c80
0x49d4 DD=1: fa                  CLR A
loop_49d5:
0x49d5 DD=1: 33                  ST A, [DP+]
0x49d6 DD=1: 05 7d               DJNZ R4, loop_49d5
0x49d8 DD=1: b7 96 0c aa         MOVB 0x0c96, A
0x49dc DD=1: 5f 38               SB sbafix 02f8.7
label_49de:
0x49de DD=1: b7 b4 08 21 05      JBR 0x08b4.1, label_49e8
0x49e3 DD=1: d7 91 67            MOVB off(0x91), #0x67
0x49e6 DD=1: 5b 36               SB sbafix 02f6.3
label_49e8:
0x49e8 DD=1: 5f 78               RB sbafix 02f8.7
0x49ea DD=1: f1 1a               JEQ label_4a06
0x49ec DD=1: b7 b2 08 2b 03      JBS 0x08b2.3, label_49f4
0x49f1 DD=1: 59 f9 12            JBR sbafix 02f9.1, label_4a06
label_49f4:
0x49f4 DD=1: b7 10 90 87 9a      MOVB off(0x9a), 0x9010
0x49f9 DD=1: a5 98 c7            CLR off(0x98)
0x49fc DD=1: c7 9c 80 0c         MOV off(0x9c), #0x0c80
0x4a00 DD=1: 5c 37               SB sbafix 02f7.4
0x4a02 DD=1: 4c 47               RB sbaoff c7.4
0x4a04 DD=1: 04 3f               SJ label_4a45
label_4a06:
0x4a06 DD=1: 59 76               RB sbafix 02f6.1
0x4a08 DD=1: f1 11               JEQ label_4a1b
0x4a0a DD=1: 59 f9 0e            JBR sbafix 02f9.1, label_4a1b
0x4a0d DD=1: b7 0d 90 87 9a      MOVB off(0x9a), 0x900d
0x4a12 DD=1: a7 a0 0c 87 98      MOV off(0x98), 0x0ca0
0x4a17 DD=1: 59 37               SB sbafix 02f7.1
0x4a19 DD=1: 04 24               SJ label_4a3f
label_4a1b:
0x4a1b DD=1: 5a 76               RB sbafix 02f6.2
0x4a1d DD=1: f1 0c               JEQ label_4a2b
0x4a1f DD=1: b7 0d 90 87 9a      MOVB off(0x9a), 0x900d
0x4a24 DD=1: a5 98 c7            CLR off(0x98)
0x4a27 DD=1: 5a 37               SB sbafix 02f7.2
0x4a29 DD=1: 04 14               SJ label_4a3f
label_4a2b:
0x4a2b DD=1: 5b 76               RB sbafix 02f6.3
0x4a2d DD=1: f6 03               JNE label_4a32
0x4a2f DD=1: 03 ee 4b            J label_4bee
label_4a32:
0x4a32 DD=1: b7 04 90 87 9a      MOVB off(0x9a), 0x9004
0x4a37 DD=1: fa                  CLR A
0x4a38 DD=1: b5 91 97            MOVB A, off(0x91)
0x4a3b DD=1: 35 98               ST A, off(0x98)
0x4a3d DD=1: 5b 37               SB sbafix 02f7.3
label_4a3f:
0x4a3f DD=1: b5 9a b3 1f         ANDB off(0x9a), #0x1f
0x4a43 DD=1: 4c 07               SB sbaoff c7.4
label_4a45:
0x4a45 DD=1: d7 9b 03            MOVB off(0x9b), #0x03
0x4a48 DD=1: 4d 07               SB sbaoff c7.5
label_4a4a:
0x4a4a DD=1: b7 b3 08 2f 23      JBS 0x08b3.7, label_4a72
0x4a4f DD=0: 95 9b               LB A, off(0x9b)
0x4a51 DD=0: f6 1c               JNE label_4a6f
0x4a53 DD=0: b5 9a 72            MOVB R2, off(0x9a)
0x4a56 DD=0: 57 54               ACAL label_1754
0x4a58 DD=0: f2 04               JLT label_4a5e
0x4a5a DD=0: 9d 98               CMPB A, off(0x98)
0x4a5c DD=0: f1 06               JEQ label_4a64
label_4a5e:
0x4a5e DD=0: b7 fa 8f 76         MOVB R6, 0x8ffa
0x4a62 DD=0: 54 2a               ACAL label_142a
label_4a64:
0x4a64 DD=0: 4c 47               RB sbaoff c7.4
0x4a66 DD=0: f1 0a               JEQ label_4a72
0x4a68 DD=0: d7 9b 03            MOVB off(0x9b), #0x03
0x4a6b DD=0: b5 9a c3 20         OR off(0x9a), #0x20
label_4a6f:
0x4a6f DD=0: 03 dc 4b            J label_4bdc
label_4a72:
0x4a72 DD=1: 5b f7 27            JBR sbafix 02f7.3, label_4a9c
0x4a75 DD=1: b7 b4 08 21 13      JBR 0x08b4.1, label_4a8d
0x4a7a DD=1: b4 42 ab 67         MOVB 0x0242, #0x67
0x4a7e DD=1: b4 43 ab 85         MOVB 0x0243, #0x85
0x4a82 DD=1: 48 45               RB sbaoff c5.0
0x4a84 DD=1: 49 45               RB sbaoff c5.1
0x4a86 DD=1: b5 a9 c7            CLRB off(0xa9)
0x4a89 DD=1: b7 b4 08 01         RB 0x08b4.1
label_4a8d:
0x4a8d DD=1: 5b 77               RB sbafix 02f7.3
0x4a8f DD=1: 4d 47               RB sbaoff c7.5
0x4a91 DD=1: 56 92               ACAL label_1692
0x4a93 DD=1: b7 05 90 72         MOVB R2, 0x9005
0x4a97 DD=1: 85 96               L A, off(0x96)
0x4a99 DD=1: 03 ec 4b            J label_4bec
label_4a9c:
0x4a9c DD=1: 5c f7 3c            JBR sbafix 02f7.4, label_4adb
0x4a9f DD=1: 87 96 0c            L A, 0x0c96
0x4aa2 DD=1: b7 10 90 72         MOVB R2, 0x9010
0x4aa6 DD=1: a5 9c 76            MOV DP, off(0x9c)
0x4aa9 DD=1: 62 93 96 0c         CMP DP, #0x0c96
0x4aad DD=1: f1 1d               JEQ label_4acc
0x4aaf DD=1: f2 14               JLT label_4ac5
0x4ab1 DD=1: b7 b2 08 03         RB 0x08b2.3
0x4ab5 DD=1: 5d 37               SB sbafix 02f7.5
0x4ab7 DD=1: 5c 77               RB sbafix 02f7.4
0x4ab9 DD=1: 4d 47               RB sbaoff c7.5
0x4abb DD=1: b7 b4 08 28 02      JBS 0x08b4.0, label_4ac2
0x4ac0 DD=1: 5d 35               SB sbafix 02f5.5
label_4ac2:
0x4ac2 DD=1: 03 ee 4b            J label_4bee
label_4ac5:
0x4ac5 DD=1: 82                  L A, [DP]
0x4ac6 DD=1: b5 9a 72            MOVB R2, off(0x9a)
0x4ac9 DD=1: 6a a3 03            ADDB R2, #0x03
label_4acc:
0x4acc DD=1: 35 98               ST A, off(0x98)
0x4ace DD=1: 6a 87 9a            MOVB off(0x9a), R2
0x4ad1 DD=1: 42                  INC DP
0x4ad2 DD=1: 42                  INC DP
0x4ad3 DD=1: 62 87 9c            MOV off(0x9c), DP
0x4ad6 DD=1: 4c 47               RB sbaoff c7.4
0x4ad8 DD=1: 03 d9 4b            J label_4bd9
label_4adb:
0x4adb DD=1: 59 f7 28            JBR sbafix 02f7.1, label_4b06
0x4ade DD=0: 97 0f 90            LB A, 0x900f
0x4ae1 DD=0: 9d 9a               CMPB A, off(0x9a)
0x4ae3 DD=0: f6 09               JNE label_4aee
0x4ae5 DD=0: 59 38               SB sbafix 02f8.1
0x4ae7 DD=0: 59 77               RB sbafix 02f7.1
0x4ae9 DD=0: 4d 47               RB sbaoff c7.5
0x4aeb DD=0: 03 ee 4b            J label_4bee
label_4aee:
0x4aee DD=0: a7 a4 0c 70         MOV ER0, 0x0ca4
0x4af2 DD=0: b7 0e 90 72         MOVB R2, 0x900e
0x4af6 DD=0: 6a 91 9a            CMPB R2, off(0x9a)
0x4af9 DD=0: f1 05               JEQ label_4b00
0x4afb DD=0: a7 a2 0c 70         MOV ER0, 0x0ca2
0x4aff DD=0: 7a                  LB A, R2
label_4b00:
0x4b00 DD=0: 64 87 98            MOV off(0x98), ER0
0x4b03 DD=0: 03 d3 4b            J label_4bd3
label_4b06:
0x4b06 DD=0: 97 0f 90            LB A, 0x900f
0x4b09 DD=0: 9d 9a               CMPB A, off(0x9a)
0x4b0b DD=0: f1 03               JEQ label_4b10
0x4b0d DD=0: 03 c6 4b            J label_4bc6
label_4b10:
0x4b10 DD=0: b7 b4 08 28 03      JBS 0x08b4.0, label_4b18
0x4b15 DD=0: 03 be 4b            J label_4bbe
label_4b18:
0x4b18 DD=0: b7 b3 08 2e 1f      JBS 0x08b3.6, label_4b3c
0x4b1d DD=0: 56 92               ACAL label_1692
0x4b1f DD=0: b7 fc 8f 72         MOVB R2, 0x8ffc
0x4b23 DD=0: b7 b3 08 17         MB C, 0x08b3.7
0x4b27 DD=0: b7 b3 08 1e         MB 0x08b3.6, C
0x4b2b DD=0: b7 b3 08 07         RB 0x08b3.7
0x4b2f DD=0: f2 07               JLT label_4b38
0x4b31 DD=0: 6a b3 1f            ANDB R2, #0x1f
0x4b34 DD=0: b7 b3 08 0f         SB 0x08b3.7
label_4b38:
0x4b38 DD=1: fa                  CLR A
0x4b39 DD=1: 03 ec 4b            J label_4bec
label_4b3c:
0x4b3c DD=1: fa                  CLR A
0x4b3d DD=1: 34 d4               ST A, 0x02d4
0x4b3f DD=1: 34 d6               ST A, 0x02d6
0x4b41 DD=1: 34 d0               ST A, 0x02d0
0x4b43 DD=1: 34 d2               ST A, 0x02d2
0x4b45 DD=1: 34 d8               ST A, 0x02d8
0x4b47 DD=1: 34 da               ST A, 0x02da
0x4b49 DD=1: 37 a0 0c            ST A, 0x0ca0
0x4b4c DD=1: 37 a2 0c            ST A, 0x0ca2
0x4b4f DD=1: 37 a4 0c            ST A, 0x0ca4
0x4b52 DD=1: 14 10               MOVB R4, #0x10
0x4b54 DD=1: 20 ca 8f            MOV X1, #0x8fca
0x4b57 DD=1: 22 8e 02            MOV DP, #0x028e
loop_4b5a:
0x4b5a DD=1: b0 8a               MOVB [DP], [X1]
0x4b5c DD=1: 42                  INC DP
0x4b5d DD=1: 40                  INC X1
0x4b5e DD=1: 05 7a               DJNZ R4, loop_4b5a
0x4b60 DD=0: fb                  CLRB A
0x4b61 DD=0: 34 9f               STB A, 0x029f
0x4b63 DD=0: 34 a0               STB A, 0x02a0
0x4b65 DD=0: 34 8d               STB A, 0x028d
0x4b67 DD=0: 5c 75               RB sbafix 02f5.4
0x4b69 DD=0: 5d 75               RB sbafix 02f5.5
0x4b6b DD=0: 5e 75               RB sbafix 02f5.6
0x4b6d DD=0: 58 34               SB sbafix 02f4.0
0x4b6f DD=0: 35 9e               STB A, off(0x9e)
0x4b71 DD=0: 35 9f               STB A, off(0x9f)
0x4b73 DD=0: 35 b0               STB A, off(0xb0)
0x4b75 DD=0: 35 b1               STB A, off(0xb1)
0x4b77 DD=0: 35 ad               STB A, off(0xad)
0x4b79 DD=0: 35 ae               STB A, off(0xae)
0x4b7b DD=0: 35 2f               STB A, off(0x2f)
0x4b7d DD=0: 35 30               STB A, off(0x30)
0x4b7f DD=0: 35 af               STB A, off(0xaf)
0x4b81 DD=0: b7 b2 08 04         RB 0x08b2.4
0x4b85 DD=0: b4 2a c7            CLRB 0x022a
0x4b88 DD=0: b4 28 c7            CLRB 0x0228
0x4b8b DD=0: b4 2b c7            CLRB 0x022b
0x4b8e DD=0: b4 29 ab 02         MOVB 0x0229, #0x02
0x4b92 DD=0: d7 b6 05            MOVB off(0xb6), #0x05
0x4b95 DD=0: 4c 42               RB sbaoff c2.4
0x4b97 DD=0: b7 93 03 ab 14      MOVB 0x0393, #0x14
0x4b9c DD=0: 49 42               RB sbaoff c2.1
0x4b9e DD=0: b6 11 03            RB P1.3
0x4ba1 DD=0: d7 b2 0f            MOVB off(0xb2), #0x0f
0x4ba4 DD=0: d7 b3 32            MOVB off(0xb3), #0x32
0x4ba7 DD=0: 48 42               RB sbaoff c2.0
0x4ba9 DD=0: 4b 42               RB sbaoff c2.3
0x4bab DD=0: b7 d7 03 04         RB 0x03d7.4
0x4baf DD=0: b7 d4 03 01         RB 0x03d4.1
0x4bb3 DD=0: b6 11 02            RB P1.2
0x4bb6 DD=0: b7 b4 08 00         RB 0x08b4.0
0x4bba DD=0: b7 b2 08 05         RB 0x08b2.5
label_4bbe:
0x4bbe DD=0: 5a 38               SB sbafix 02f8.2
0x4bc0 DD=0: 5a 77               RB sbafix 02f7.2
0x4bc2 DD=0: 4d 47               RB sbaoff c7.5
0x4bc4 DD=0: 04 28               SJ label_4bee
label_4bc6:
0x4bc6 DD=0: b7 0e 90 72         MOVB R2, 0x900e
0x4bca DD=0: 6a 91 9a            CMPB R2, off(0x9a)
0x4bcd DD=0: f1 01               JEQ label_4bd0
0x4bcf DD=0: 7a                  LB A, R2
label_4bd0:
0x4bd0 DD=0: a5 98 c7            CLR off(0x98)
label_4bd3:
0x4bd3 DD=0: be 1f               ANDB A, #0x1f
0x4bd5 DD=0: 35 9a               STB A, off(0x9a)
0x4bd7 DD=0: 4c 07               SB sbaoff c7.4
label_4bd9:
0x4bd9 DD=0: d7 9b 03            MOVB off(0x9b), #0x03
label_4bdc:
0x4bdc DD=0: 56 92               ACAL label_1692
0x4bde DD=0: b5 9a 72            MOVB R2, off(0x9a)
0x4be1 DD=0: f9 03               LB A, #0x03
0x4be3 DD=0: 8d 9b               SUBB A, off(0x9b)
0x4be5 DD=0: b5 9b d6            DECB off(0x9b)
0x4be8 DD=0: 6a a4               ADDB R2, A
0x4bea DD=1: 85 98               L A, off(0x98)
label_4bec:
0x4bec DD=1: 57 13               ACAL label_1713
label_4bee:
0x4bee DD=1: b5 a0 28 20         JBS off(0xa0).0, label_4c12
0x4bf2 DD=1: 14 01               MOVB R4, #0x01
0x4bf4 DD=1: 22 a4 02            MOV DP, #0x02a4
0x4bf7 DD=1: 47 ff               ACAL label_13ff
0x4bf9 DD=1: 14 01               MOVB R4, #0x01
0x4bfb DD=1: 22 8e 03            MOV DP, #0x038e
0x4bfe DD=1: 47 ff               ACAL label_13ff
0x4c00 DD=1: 14 01               MOVB R4, #0x01
0x4c02 DD=1: 22 6d 05            MOV DP, #0x056d
0x4c05 DD=1: 47 ff               ACAL label_13ff
0x4c07 DD=1: 14 01               MOVB R4, #0x01
0x4c09 DD=1: 22 a9 06            MOV DP, #0x06a9
0x4c0c DD=1: 47 ff               ACAL label_13ff
0x4c0e DD=1: b5 a0 21 03         JBR off(0xa0).1, label_4c15
label_4c12:
0x4c12 DD=1: 03 7f 50            J label_507f
label_4c15:
0x4c15 DD=1: 58 e4 03            JBR sbafix 02e4.0, label_4c1b
0x4c18 DD=1: 58 ef 06            JBR sbafix 02ef.0, label_4c21
label_4c1b:
0x4c1b DD=1: 48 43               RB sbaoff c3.0
0x4c1d DD=1: fa                  CLR A
0x4c1e DD=1: 03 7d 50            J label_507d
label_4c21:
0x4c21 DD=1: 5b af 06            JBS sbafix 02ef.3, label_4c2a
0x4c24 DD=0: 94 d4               LB A, 0x02d4
0x4c26 DD=0: be 37               ANDB A, #0x37
0x4c28 DD=0: f1 08               JEQ label_4c32
label_4c2a:
0x4c2a DD=0: 48 43               RB sbaoff c3.0
0x4c2c DD=0: d7 52 00            MOVB off(0x52), #0x00
0x4c2f DD=0: 03 c5 4e            J label_4ec5
label_4c32:
0x4c32 DD=0: 48 80 2f            JBS sbaoff c0.0, label_4c64
0x4c35 DD=0: c4 34 c7 31         CMP 0x0234, #0x31c7
0x4c39 DD=0: f5 09               JGE label_4c44
0x4c3b DD=0: 5e e4 0d            JBR sbafix 02e4.6, label_4c4b
0x4c3e DD=0: c4 3c 9a 03         CMP 0x023c, #0x039a
0x4c42 DD=0: f2 07               JLT label_4c4b
label_4c44:
0x4c44 DD=0: 49 40               RB sbaoff c0.1
0x4c46 DD=0: d7 b7 1e            MOVB off(0xb7), #0x1e
0x4c49 DD=0: 04 07               SJ label_4c52
label_4c4b:
0x4c4b DD=0: b5 b7 a7 0c         TJZB off(0xb7), label_4c5b
0x4c4f DD=0: 5e 9c 05            JBS sbafix 02dc.6, label_4c57
label_4c52:
0x4c52 DD=0: d7 a8 0a            MOVB off(0xa8), #0x0a
0x4c55 DD=0: 04 0b               SJ label_4c62
label_4c57:
0x4c57 DD=0: b5 a8 a6 07         TJNZB off(0xa8), label_4c62
label_4c5b:
0x4c5b DD=0: 48 00               SB sbaoff c0.0
0x4c5d DD=0: 49 40               RB sbaoff c0.1
0x4c5f DD=0: d7 b8 0b            MOVB off(0xb8), #0x0b
label_4c62:
0x4c62 DD=0: 04 29               SJ label_4c8d
label_4c64:
0x4c64 DD=0: c4 34 c7 31         CMP 0x0234, #0x31c7
0x4c68 DD=0: f2 1e               JLT label_4c88
0x4c6a DD=0: 5e e4 06            JBR sbafix 02e4.6, label_4c73
0x4c6d DD=0: c4 3c cd 03         CMP 0x023c, #0x03cd
0x4c71 DD=0: f2 15               JLT label_4c88
label_4c73:
0x4c73 DD=0: 10 0b               MOVB R0, #0x0b
0x4c75 DD=0: 5e 9c 0b            JBS sbafix 02dc.6, label_4c83
0x4c78 DD=0: b5 b8 70            MOVB R0, off(0xb8)
0x4c7b DD=0: 68 a6 05            TJNZB R0, label_4c83
0x4c7e DD=0: 49 00               SB sbaoff c0.1
0x4c80 DD=0: d7 b7 1e            MOVB off(0xb7), #0x1e
label_4c83:
0x4c83 DD=0: 68 87 b8            MOVB off(0xb8), R0
0x4c86 DD=0: 04 05               SJ label_4c8d
label_4c88:
0x4c88 DD=0: 49 40               RB sbaoff c0.1
0x4c8a DD=0: d7 b8 0b            MOVB off(0xb8), #0x0b
label_4c8d:
0x4c8d DD=0: 58 e3 47            JBR sbafix 02e3.0, label_4cd7
0x4c90 DD=0: fb                  CLRB A
0x4c91 DD=0: 48 87 03            JBS sbaoff c7.0, label_4c97
0x4c94 DD=0: 48 83 42            JBS sbaoff c3.0, label_4cd9
label_4c97:
0x4c97 DD=0: 35 40               STB A, off(0x40)
0x4c99 DD=0: b7 e5 05 3e 0f      JBSR 0x05e5.6, label_4cad
0x4c9e DD=0: 35 41               STB A, off(0x41)
0x4ca0 DD=0: b5 42 c6            INCB off(0x42)
0x4ca3 DD=0: d5 42 02            CMPB off(0x42), #0x02
0x4ca6 DD=0: f2 18               JLT label_4cc0
0x4ca8 DD=0: d7 40 1d            MOVB off(0x40), #0x1d
0x4cab DD=0: 04 11               SJ label_4cbe
label_4cad:
0x4cad DD=0: 10 0f               MOVB R0, #0x0f
0x4caf DD=0: b5 43 a6 02         TJNZB off(0x43), label_4cb5
0x4cb3 DD=0: 10 0f               MOVB R0, #0x0f
label_4cb5:
0x4cb5 DD=0: 68 87 41            MOVB off(0x41), R0
0x4cb8 DD=0: 48 07               SB sbaoff c7.0
0x4cba DD=0: 35 47               STB A, off(0x47)
0x4cbc DD=0: 35 46               STB A, off(0x46)
label_4cbe:
0x4cbe DD=0: 35 42               STB A, off(0x42)
label_4cc0:
0x4cc0 DD=0: 95 43               LB A, off(0x43)
0x4cc2 DD=0: ad 41               ADDB A, off(0x41)
0x4cc4 DD=0: f5 02               JGE label_4cc8
0x4cc6 DD=0: bc d7               FILLB A
label_4cc8:
0x4cc8 DD=0: 8d 40               SUBB A, off(0x40)
0x4cca DD=0: f0 03               JGT label_4ccf
0x4ccc DD=0: fb                  CLRB A
0x4ccd DD=0: 48 47               RB sbaoff c7.0
label_4ccf:
0x4ccf DD=0: 9e 80               CMPB A, #0x80
0x4cd1 DD=0: f7 02               JLE label_4cd5
0x4cd3 DD=0: f9 80               LB A, #0x80
label_4cd5:
0x4cd5 DD=0: 35 43               STB A, off(0x43)
label_4cd7:
0x4cd7 DD=0: 04 40               SJ label_4d19
label_4cd9:
0x4cd9 DD=0: 35 44               STB A, off(0x44)
0x4cdb DD=0: b7 e5 05 3e 0f      JBSR 0x05e5.6, label_4cef
0x4ce0 DD=0: 35 45               STB A, off(0x45)
0x4ce2 DD=0: b5 46 c6            INCB off(0x46)
0x4ce5 DD=0: d5 46 64            CMPB off(0x46), #0x64
0x4ce8 DD=0: f2 18               JLT label_4d02
0x4cea DD=0: d7 44 01            MOVB off(0x44), #0x01
0x4ced DD=0: 04 11               SJ label_4d00
label_4cef:
0x4cef DD=0: 10 0f               MOVB R0, #0x0f
0x4cf1 DD=0: b5 47 a6 02         TJNZB off(0x47), label_4cf7
0x4cf5 DD=0: 10 0f               MOVB R0, #0x0f
label_4cf7:
0x4cf7 DD=0: 68 87 45            MOVB off(0x45), R0
0x4cfa DD=0: 49 07               SB sbaoff c7.1
0x4cfc DD=0: 35 43               STB A, off(0x43)
0x4cfe DD=0: 35 42               STB A, off(0x42)
label_4d00:
0x4d00 DD=0: 35 46               STB A, off(0x46)
label_4d02:
0x4d02 DD=0: 95 47               LB A, off(0x47)
0x4d04 DD=0: ad 45               ADDB A, off(0x45)
0x4d06 DD=0: f5 02               JGE label_4d0a
0x4d08 DD=0: bc d7               FILLB A
label_4d0a:
0x4d0a DD=0: 8d 44               SUBB A, off(0x44)
0x4d0c DD=0: f0 03               JGT label_4d11
0x4d0e DD=0: fb                  CLRB A
0x4d0f DD=0: 49 47               RB sbaoff c7.1
label_4d11:
0x4d11 DD=0: 9e 43               CMPB A, #0x43
0x4d13 DD=0: f7 02               JLE label_4d17
0x4d15 DD=0: f9 43               LB A, #0x43
label_4d17:
0x4d17 DD=0: 35 47               STB A, off(0x47)
label_4d19:
0x4d19 DD=0: a5 48 87 4a         MOV off(0x4a), off(0x48)
0x4d1d DD=0: 24 03 00            MOV ER0, #0x0003
0x4d20 DD=1: 84 3c               L A, 0x023c
0x4d22 DD=1: 39                  ST A, ER1
0x4d23 DD=1: 8d 48               SUB A, off(0x48)
0x4d25 DD=1: f5 04               JGE label_4d2b
0x4d27 DD=1: cf                  NEG A
0x4d28 DD=1: 24 03 00            MOV ER0, #0x0003
label_4d2b:
0x4d2b DD=1: 18                  CMP A, ER0
0x4d2c DD=1: f2 03               JLT label_4d31
0x4d2e DD=1: 65 87 48            MOV off(0x48), ER1
label_4d31:
0x4d31 DD=1: 22 72 ec            MOV DP, #0xec72
0x4d34 DD=1: 15 0a               MOVB R5, #0x0a
0x4d36 DD=1: a5 48 70            MOV ER0, off(0x48)
0x4d39 DD=1: b5 51 74            MOVB R4, off(0x51)
0x4d3c DD=1: 45 d6               ACAL label_11d6
0x4d3e DD=1: 6c 87 51            MOVB off(0x51), R4
0x4d41 DD=1: 35 4e               ST A, off(0x4e)
0x4d43 DD=1: 22 54 ec            MOV DP, #0xec54
0x4d46 DD=1: 15 0f               MOVB R5, #0x0f
0x4d48 DD=1: a4 34 70            MOV ER0, 0x0234
0x4d4b DD=1: b5 50 74            MOVB R4, off(0x50)
0x4d4e DD=1: 45 d6               ACAL label_11d6
0x4d50 DD=1: 6c 87 50            MOVB off(0x50), R4
0x4d53 DD=1: 35 4c               ST A, off(0x4c)
0x4d55 DD=1: 22 86 ec            MOV DP, #0xec86
0x4d58 DD=1: 3c                  ST A, X1
0x4d59 DD=0: 7c                  LB A, R4
0x4d5a DD=0: a5 4e 72            MOV ER2, off(0x4e)
0x4d5d DD=0: b5 51 71            MOVB R1, off(0x51)
0x4d60 DD=0: 16 0a               MOVB R6, #0x0a
0x4d62 DD=0: 46 1d               ACAL label_121d
0x4d64 DD=0: 35 52               STB A, off(0x52)
0x4d66 DD=0: 5d e5 0d            JBR sbafix 02e5.5, label_4d76
0x4d69 DD=1: 86 f8               L A, ADCR20
0x4d6b DD=0: 96 07               LB A, ACCH
0x4d6d DD=0: 35 66               STB A, off(0x66)
0x4d6f DD=0: 35 53               STB A, off(0x53)
0x4d71 DD=0: 48 03               SB sbaoff c3.0
0x4d73 DD=0: 03 c5 4e            J label_4ec5
label_4d76:
0x4d76 DD=0: 22 3a ed            MOV DP, #0xed3a
0x4d79 DD=0: b4 6e 70            MOVB R0, 0x026e
0x4d7c DD=0: 15 0a               MOVB R5, #0x0a
0x4d7e DD=0: b5 59 74            MOVB R4, off(0x59)
0x4d81 DD=0: 45 8d               ACAL label_118d
0x4d83 DD=0: 6c 87 59            MOVB off(0x59), R4
0x4d86 DD=0: 35 56               STB A, off(0x56)
0x4d88 DD=0: 22 1c ed            MOV DP, #0xed1c
0x4d8b DD=0: a4 34 70            MOV ER0, 0x0234
0x4d8e DD=0: 15 0f               MOVB R5, #0x0f
0x4d90 DD=0: b5 58 74            MOVB R4, off(0x58)
0x4d93 DD=0: 45 d6               ACAL label_11d6
0x4d95 DD=0: 6c 87 58            MOVB off(0x58), R4
0x4d98 DD=0: 35 54               STB A, off(0x54)
0x4d9a DD=0: 22 1c 8d            MOV DP, #0x8d1c
0x4d9d DD=1: 84 34               L A, 0x0234
0x4d9f DD=1: 44 70               ACAL label_1070
0x4da1 DD=1: 35 62               ST A, off(0x62)
0x4da3 DD=1: 22 44 ed            MOV DP, #0xed44
0x4da6 DD=1: a5 54 74            MOV X1, off(0x54)
0x4da9 DD=0: 95 58               LB A, off(0x58)
0x4dab DD=0: a5 56 72            MOV ER2, off(0x56)
0x4dae DD=0: b5 59 71            MOVB R1, off(0x59)
0x4db1 DD=0: 16 0a               MOVB R6, #0x0a
0x4db3 DD=0: 46 1d               ACAL label_121d
0x4db5 DD=0: 35 5a               STB A, off(0x5a)
0x4db7 DD=0: 3c                  STB A, R4
0x4db8 DD=0: 22 7a 8d            MOV DP, #0x8d7a
0x4dbb DD=0: 94 70               LB A, 0x0270
0x4dbd DD=0: 44 04               ACAL label_1004
0x4dbf DD=0: 35 5c               STB A, off(0x5c)
0x4dc1 DD=0: 1c                  CMPB A, R4
0x4dc2 DD=0: f7 01               JLE label_4dc5
0x4dc4 DD=0: 7c                  LB A, R4
label_4dc5:
0x4dc5 DD=0: 9d 62               CMPB A, off(0x62)
0x4dc7 DD=0: f7 02               JLE label_4dcb
0x4dc9 DD=0: 95 62               LB A, off(0x62)
label_4dcb:
0x4dcb DD=0: 35 60               STB A, off(0x60)
0x4dcd DD=0: 22 4b 8d            MOV DP, #0x8d4b
0x4dd0 DD=1: 84 34               L A, 0x0234
0x4dd2 DD=1: 44 70               ACAL label_1070
0x4dd4 DD=1: 35 63               ST A, off(0x63)
0x4dd6 DD=1: 22 da ed            MOV DP, #0xedda
0x4dd9 DD=1: a5 54 74            MOV X1, off(0x54)
0x4ddc DD=0: 95 58               LB A, off(0x58)
0x4dde DD=0: a5 56 72            MOV ER2, off(0x56)
0x4de1 DD=0: b5 59 71            MOVB R1, off(0x59)
0x4de4 DD=0: 16 0a               MOVB R6, #0x0a
0x4de6 DD=0: 46 1d               ACAL label_121d
0x4de8 DD=0: 35 5b               STB A, off(0x5b)
0x4dea DD=0: 3c                  STB A, R4
0x4deb DD=0: 22 89 8d            MOV DP, #0x8d89
0x4dee DD=0: 94 70               LB A, 0x0270
0x4df0 DD=0: 44 04               ACAL label_1004
0x4df2 DD=0: 35 5d               STB A, off(0x5d)
0x4df4 DD=0: 1c                  CMPB A, R4
0x4df5 DD=0: f7 01               JLE label_4df8
0x4df7 DD=0: 7c                  LB A, R4
label_4df8:
0x4df8 DD=0: 9d 63               CMPB A, off(0x63)
0x4dfa DD=0: f7 02               JLE label_4dfe
0x4dfc DD=0: 95 63               LB A, off(0x63)
label_4dfe:
0x4dfe DD=0: 35 61               STB A, off(0x61)
0x4e00 DD=0: 3a                  STB A, R2
0x4e01 DD=0: b5 60 73            MOVB R3, off(0x60)
0x4e04 DD=0: 10 a0               MOVB R0, #0xa0
0x4e06 DD=0: 11 d8               MOVB R1, #0xd8
0x4e08 DD=0: 94 71               LB A, 0x0271
0x4e0a DD=0: 44 cf               ACAL label_10cf
0x4e0c DD=0: 5b e4 05            JBR sbafix 02e4.3, label_4e14
0x4e0f DD=0: 8d 47               SUBB A, off(0x47)
0x4e11 DD=0: f5 01               JGE label_4e14
0x4e13 DD=0: fb                  CLRB A
label_4e14:
0x4e14 DD=0: 5a a3 4f            JBS sbafix 02e3.2, label_4e66
0x4e17 DD=0: 5b e3 4c            JBR sbafix 02e3.3, label_4e66
0x4e1a DD=0: 38                  STB A, R0
0x4e1b DD=0: f9 a0               LB A, #0xa0
0x4e1d DD=0: 12 40               MOVB R2, #0x40
0x4e1f DD=0: 6b c7               CLRB R3
0x4e21 DD=0: 48 c0 39            JBR sbaoff c0.0, label_4e5d
0x4e24 DD=0: 49 80 02            JBS sbaoff c0.1, label_4e29
0x4e27 DD=0: 04 2e               SJ label_4e57
label_4e29:
0x4e29 DD=0: 95 5f               LB A, off(0x5f)
0x4e2b DD=0: b5 64 72            MOVB R2, off(0x64)
0x4e2e DD=0: b5 65 73            MOVB R3, off(0x65)
0x4e31 DD=0: 6a a7 09            TJZB R2, label_4e3d
0x4e34 DD=0: 6a 83 01            SUBB R2, #0x01
0x4e37 DD=0: f5 02               JGE label_4e3b
0x4e39 DD=0: 6a c7               CLRB R2
label_4e3b:
0x4e3b DD=0: 04 1a               SJ label_4e57
label_4e3d:
0x4e3d DD=0: bc a7 13            TJZB A, label_4e53
0x4e40 DD=0: 6b a7 09            TJZB R3, label_4e4c
0x4e43 DD=0: 6b 83 01            SUBB R3, #0x01
0x4e46 DD=0: f5 02               JGE label_4e4a
0x4e48 DD=0: 6b c7               CLRB R3
label_4e4a:
0x4e4a DD=0: 04 0b               SJ label_4e57
label_4e4c:
0x4e4c DD=0: 13 20               MOVB R3, #0x20
0x4e4e DD=0: 8e 01               SUBB A, #0x01
0x4e50 DD=0: f0 05               JGT label_4e57
0x4e52 DD=0: fb                  CLRB A
label_4e53:
0x4e53 DD=0: 48 40               RB sbaoff c0.0
0x4e55 DD=0: 49 40               RB sbaoff c0.1
label_4e57:
0x4e57 DD=0: 68 84               SUBB R0, A
0x4e59 DD=0: f5 02               JGE label_4e5d
0x4e5b DD=0: 68 c7               CLRB R0
label_4e5d:
0x4e5d DD=0: 35 5f               STB A, off(0x5f)
0x4e5f DD=0: 78                  LB A, R0
0x4e60 DD=0: 6a 87 64            MOVB off(0x64), R2
0x4e63 DD=0: 6b 87 65            MOVB off(0x65), R3
label_4e66:
0x4e66 DD=0: 35 5e               STB A, off(0x5e)
0x4e68 DD=0: 8d 60               SUBB A, off(0x60)
0x4e6a DD=0: f5 01               JGE label_4e6d
0x4e6c DD=0: cf                  NEGB A
label_4e6d:
0x4e6d DD=0: 37 57 03            STB A, 0x0357
0x4e70 DD=0: 95 5e               LB A, off(0x5e)
0x4e72 DD=0: 48 83 04            JBS sbaoff c3.0, label_4e79
0x4e75 DD=0: 35 53               STB A, off(0x53)
0x4e77 DD=0: 04 0f               SJ label_4e88
label_4e79:
0x4e79 DD=0: 9d 53               CMPB A, off(0x53)
0x4e7b DD=0: f1 08               JEQ label_4e85
0x4e7d DD=0: f5 04               JGE label_4e83
0x4e7f DD=0: b5 a4 a6 05         TJNZB off(0xa4), label_4e88
label_4e83:
0x4e83 DD=0: 35 53               STB A, off(0x53)
label_4e85:
0x4e85 DD=0: d7 a4 00            MOVB off(0xa4), #0x00
label_4e88:
0x4e88 DD=0: 48 87 34            JBS sbaoff c7.0, label_4ebf
0x4e8b DD=0: b5 c3 10            MB C, off(0xc3).0
0x4e8e DD=0: b5 c3 19            MB off(0xc3).1, C
0x4e91 DD=0: 22 98 8d            MOV DP, #0x8d98
0x4e94 DD=1: 84 34               L A, 0x0234
0x4e96 DD=1: 44 a3               ACAL label_10a3
0x4e98 DD=1: 9d 48               CMP A, off(0x48)
0x4e9a DD=1: f0 23               JGT label_4ebf
0x4e9c DD=1: c4 44 29 00         CMP 0x0244, #0x0029
0x4ea0 DD=1: f2 03               JLT label_4ea5
0x4ea2 DD=1: b5 a5 c7            CLRB off(0xa5)
label_4ea5:
0x4ea5 DD=0: 95 a5               LB A, off(0xa5)
0x4ea7 DD=0: f6 1c               JNE label_4ec5
0x4ea9 DD=0: 48 83 05            JBS sbaoff c3.0, label_4eb1
0x4eac DD=0: d7 a5 14            MOVB off(0xa5), #0x14
0x4eaf DD=0: 04 12               SJ label_4ec3
label_4eb1:
0x4eb1 DD=1: 85 4a               L A, off(0x4a)
0x4eb3 DD=1: 8d 48               SUB A, off(0x48)
0x4eb5 DD=1: f2 0c               JLT label_4ec3
0x4eb7 DD=1: 9e 00 01            CMP A, #0x0100
0x4eba DD=1: f2 07               JLT label_4ec3
0x4ebc DD=1: d7 a5 14            MOVB off(0xa5), #0x14
label_4ebf:
0x4ebf DD=1: 48 43               RB sbaoff c3.0
0x4ec1 DD=1: 04 02               SJ label_4ec5
label_4ec3:
0x4ec3 DD=0: 48 03               SB sbaoff c3.0
label_4ec5:
0x4ec5 DD=0: b5 c3 12            MB C, off(0xc3).2
0x4ec8 DD=0: b5 c3 1b            MB off(0xc3).3, C
0x4ecb DD=0: 95 53               LB A, off(0x53)
0x4ecd DD=0: 8c 63               SUBB A, 0x0263
0x4ecf DD=0: b5 c3 1a            MB off(0xc3).2, C
0x4ed2 DD=0: f5 01               JGE label_4ed5
0x4ed4 DD=0: cf                  NEGB A
label_4ed5:
0x4ed5 DD=0: 35 67               STB A, off(0x67)
0x4ed7 DD=0: 22 b0 8d            MOV DP, #0x8db0
0x4eda DD=1: 84 34               L A, 0x0234
0x4edc DD=1: 44 70               ACAL label_1070
0x4ede DD=1: 35 69               ST A, off(0x69)
0x4ee0 DD=1: 39                  ST A, ER1
0x4ee1 DD=1: 22 ad 8d            MOV DP, #0x8dad
0x4ee4 DD=1: 4a 83 03            JBS sbaoff c3.2, label_4eea
0x4ee7 DD=1: 22 aa 8d            MOV DP, #0x8daa
label_4eea:
0x4eea DD=0: 93                  LB A, [DP+]
0x4eeb DD=0: 69 a9               MULB R1
0x4eed DD=0: a5 6a aa            MOV off(0x6a), A
0x4ef0 DD=0: 93                  LB A, [DP+]
0x4ef1 DD=0: 69 a9               MULB R1
0x4ef3 DD=0: a5 6e aa            MOV off(0x6e), A
0x4ef6 DD=0: 92                  LB A, [DP]
0x4ef7 DD=0: 69 a9               MULB R1
0x4ef9 DD=0: a5 72 aa            MOV off(0x72), A
0x4efc DD=1: fa                  CLR A
0x4efd DD=1: b5 67 96 07         MOVB ACCH, off(0x67)
0x4f01 DD=1: a5 6a a9            MUL off(0x6a)
0x4f04 DD=1: 10 02               MOVB R0, #0x02
0x4f06 DD=1: 46 c5               ACAL label_12c5
0x4f08 DD=1: a5 76 70            MOV ER0, off(0x76)
0x4f0b DD=1: 4a 83 08            JBS sbaoff c3.2, label_4f16
0x4f0e DD=1: 64 a4               ADD ER0, A
0x4f10 DD=1: f5 0a               JGE label_4f1c
0x4f12 DD=1: 64 d7               FILL ER0
0x4f14 DD=1: 04 06               SJ label_4f1c
label_4f16:
0x4f16 DD=1: 64 84               SUB ER0, A
0x4f18 DD=1: f5 02               JGE label_4f1c
0x4f1a DD=1: 64 c7               CLR ER0
label_4f1c:
0x4f1c DD=1: fa                  CLR A
0x4f1d DD=1: d6 07 ff            MOVB ACCH, #0xff
0x4f20 DD=1: 18                  CMP A, ER0
0x4f21 DD=1: f2 08               JLT label_4f2b
0x4f23 DD=1: d6 07 00            MOVB ACCH, #0x00
0x4f26 DD=1: 64 94               CMP ER0, A
0x4f28 DD=1: f2 01               JLT label_4f2b
0x4f2a DD=1: 74                  L A, ER0
label_4f2b:
0x4f2b DD=1: 35 6c               ST A, off(0x6c)
0x4f2d DD=1: fa                  CLR A
0x4f2e DD=1: b5 67 96 07         MOVB ACCH, off(0x67)
0x4f32 DD=1: a5 6e a9            MUL off(0x6e)
0x4f35 DD=1: 10 02               MOVB R0, #0x02
0x4f37 DD=1: 46 c5               ACAL label_12c5
0x4f39 DD=1: 35 70               ST A, off(0x70)
0x4f3b DD=0: 95 67               LB A, off(0x67)
0x4f3d DD=0: b5 68 70            MOVB R0, off(0x68)
0x4f40 DD=0: 4a 83 05            JBS sbaoff c3.2, label_4f48
0x4f43 DD=0: 4b 83 05            JBS sbaoff c3.3, label_4f4b
0x4f46 DD=0: 04 12               SJ label_4f5a
label_4f48:
0x4f48 DD=0: 4b 83 0d            JBS sbaoff c3.3, label_4f58
label_4f4b:
0x4f4b DD=0: b5 c3 12            MB C, off(0xc3).2
0x4f4e DD=0: b5 c3 1c            MB off(0xc3).4, C
0x4f51 DD=0: 28                  ADDB A, R0
0x4f52 DD=0: f5 0d               JGE label_4f61
0x4f54 DD=0: bc d7               FILLB A
0x4f56 DD=0: 04 09               SJ label_4f61
label_4f58:
0x4f58 DD=0: 68 c8               XCHGB A, R0
label_4f5a:
0x4f5a DD=0: 08                  SUBB A, R0
0x4f5b DD=0: b5 c3 1c            MB off(0xc3).4, C
0x4f5e DD=0: f5 01               JGE label_4f61
0x4f60 DD=0: cf                  NEGB A
label_4f61:
0x4f61 DD=0: df                  SWAP
0x4f62 DD=0: fb                  CLRB A
0x4f63 DD=0: a5 72 a9            MUL off(0x72)
0x4f66 DD=0: 10 02               MOVB R0, #0x02
0x4f68 DD=0: 46 c5               ACAL label_12c5
0x4f6a DD=0: 35 74               STB A, off(0x74)
0x4f6c DD=1: 85 6c               L A, off(0x6c)
0x4f6e DD=1: 38                  ST A, ER0
0x4f6f DD=1: 4a 83 08            JBS sbaoff c3.2, label_4f7a
0x4f72 DD=1: ad 70               ADD A, off(0x70)
0x4f74 DD=1: f5 09               JGE label_4f7f
0x4f76 DD=1: bc d7               FILL A
0x4f78 DD=1: 04 05               SJ label_4f7f
label_4f7a:
0x4f7a DD=1: 8d 70               SUB A, off(0x70)
0x4f7c DD=1: f5 01               JGE label_4f7f
0x4f7e DD=1: fa                  CLR A
label_4f7f:
0x4f7f DD=1: 4c 83 08            JBS sbaoff c3.4, label_4f8a
0x4f82 DD=1: ad 74               ADD A, off(0x74)
0x4f84 DD=1: f5 09               JGE label_4f8f
0x4f86 DD=1: bc d7               FILL A
0x4f88 DD=1: 04 05               SJ label_4f8f
label_4f8a:
0x4f8a DD=1: 8d 74               SUB A, off(0x74)
0x4f8c DD=1: f5 01               JGE label_4f8f
0x4f8e DD=1: fa                  CLR A
label_4f8f:
0x4f8f DD=0: 96 07               LB A, ACCH
0x4f91 DD=0: b5 52 73            MOVB R3, off(0x52)
0x4f94 DD=0: 48 83 11            JBS sbaoff c3.0, label_4fa8
0x4f97 DD=0: 1b                  CMPB A, R3
0x4f98 DD=0: f2 03               JLT label_4f9d
0x4f9a DD=0: 4a 83 04            JBS sbaoff c3.2, label_4fa1
label_4f9d:
0x4f9d DD=0: 7b                  LB A, R3
0x4f9e DD=0: 39                  STB A, R1
0x4f9f DD=0: 68 c7               CLRB R0
label_4fa1:
0x4fa1 DD=0: 8d 43               SUBB A, off(0x43)
0x4fa3 DD=0: f5 1f               JGE label_4fc4
0x4fa5 DD=0: fb                  CLRB A
0x4fa6 DD=0: 04 1c               SJ label_4fc4
label_4fa8:
0x4fa8 DD=0: 4a 83 15            JBS sbaoff c3.2, label_4fc0
0x4fab DD=0: d5 67 25            CMPB off(0x67), #0x25
0x4fae DD=0: f2 10               JLT label_4fc0
0x4fb0 DD=0: 1b                  CMPB A, R3
0x4fb1 DD=0: f5 0d               JGE label_4fc0
0x4fb3 DD=0: 7b                  LB A, R3
0x4fb4 DD=0: 39                  STB A, R1
0x4fb5 DD=0: 68 c7               CLRB R0
0x4fb7 DD=0: b7 d7 03 27 04      JBR 0x03d7.7, label_4fc0
0x4fbc DD=0: f9 ff               LB A, #0xff
0x4fbe DD=0: 04 04               SJ label_4fc4
label_4fc0:
0x4fc0 DD=0: b7 d7 03 07         RB 0x03d7.7
label_4fc4:
0x4fc4 DD=0: 64 87 76            MOV off(0x76), ER0
0x4fc7 DD=0: b5 67 87 68         MOVB off(0x68), off(0x67)
0x4fcb DD=0: 38                  STB A, R0
0x4fcc DD=0: 95 79               LB A, off(0x79)
0x4fce DD=0: 11 ff               MOVB R1, #0xff
0x4fd0 DD=0: b5 7a 72            MOVB R2, off(0x7a)
0x4fd3 DD=0: b5 7b 73            MOVB R3, off(0x7b)
0x4fd6 DD=0: 5a e3 08            JBR sbafix 02e3.2, label_4fe1
0x4fd9 DD=0: 48 c0 05            JBR sbaoff c0.0, label_4fe1
0x4fdc DD=0: 49 80 09            JBS sbaoff c0.1, label_4fe8
0x4fdf DD=0: 11 60               MOVB R1, #0x60
label_4fe1:
0x4fe1 DD=0: 79                  LB A, R1
0x4fe2 DD=0: 12 00               MOVB R2, #0x00
0x4fe4 DD=0: 6b c7               CLRB R3
0x4fe6 DD=0: 04 2e               SJ label_5016
label_4fe8:
0x4fe8 DD=0: 6a a7 09            TJZB R2, label_4ff4
0x4feb DD=0: 6a 83 01            SUBB R2, #0x01
0x4fee DD=0: f5 02               JGE label_4ff2
0x4ff0 DD=0: 6a c7               CLRB R2
label_4ff2:
0x4ff2 DD=0: 04 22               SJ label_5016
label_4ff4:
0x4ff4 DD=0: 9e ff               CMPB A, #0xff
0x4ff6 DD=0: f5 18               JGE label_5010
0x4ff8 DD=0: 6b a7 09            TJZB R3, label_5004
0x4ffb DD=0: 6b 83 01            SUBB R3, #0x01
0x4ffe DD=0: f5 02               JGE label_5002
0x5000 DD=0: 6b c7               CLRB R3
label_5002:
0x5002 DD=0: 04 12               SJ label_5016
label_5004:
0x5004 DD=0: 13 01               MOVB R3, #0x01
0x5006 DD=0: ae 15               ADDB A, #0x15
0x5008 DD=0: f5 02               JGE label_500c
0x500a DD=0: bc d7               FILLB A
label_500c:
0x500c DD=0: 9e ff               CMPB A, #0xff
0x500e DD=0: f2 06               JLT label_5016
label_5010:
0x5010 DD=0: f9 ff               LB A, #0xff
0x5012 DD=0: 48 40               RB sbaoff c0.0
0x5014 DD=0: 49 40               RB sbaoff c0.1
label_5016:
0x5016 DD=0: 6a 87 7a            MOVB off(0x7a), R2
0x5019 DD=0: 6b 87 7b            MOVB off(0x7b), R3
0x501c DD=0: 35 79               STB A, off(0x79)
0x501e DD=0: 68 94               CMPB R0, A
0x5020 DD=0: f5 07               JGE label_5029
0x5022 DD=0: f9 00               LB A, #0x00
0x5024 DD=0: 68 94               CMPB R0, A
0x5026 DD=0: f2 01               JLT label_5029
0x5028 DD=0: 78                  LB A, R0
label_5029:
0x5029 DD=0: 35 78               STB A, off(0x78)
0x502b DD=1: fa                  CLR A
0x502c DD=1: 5c 94 4c            JBS sbafix 02d4.4, label_507b
0x502f DD=1: 5c 97 49            JBS sbafix 02d7.4, label_507b
0x5032 DD=1: 5f 96 46            JBS sbafix 02d6.7, label_507b
0x5035 DD=1: 4b 82 43            JBS sbaoff c2.3, label_507b
0x5038 DD=1: 5c 9c 40            JBS sbafix 02dc.4, label_507b
0x503b DD=0: 95 78               LB A, off(0x78)
0x503d DD=0: 22 c7 8d            MOV DP, #0x8dc7
0x5040 DD=0: 44 30               ACAL label_1030
0x5042 DD=0: 35 7c               STB A, off(0x7c)
0x5044 DD=0: 94 72               LB A, 0x0272
0x5046 DD=0: b7 ed 8d 70         MOVB R0, 0x8ded
0x504a DD=0: 68 94               CMPB R0, A
0x504c DD=0: 8a 1b               MB PSWL.3, C
0x504e DD=0: 22 e6 8d            MOV DP, #0x8de6
0x5051 DD=0: f2 03               JLT label_5056
0x5053 DD=0: 22 ed 8d            MOV DP, #0x8ded
label_5056:
0x5056 DD=0: 44 30               ACAL label_1030
0x5058 DD=0: 8a 23 01            JBR PSWL.3, label_505c
0x505b DD=0: cf                  NEGB A
label_505c:
0x505c DD=0: 35 7e               STB A, off(0x7e)
0x505e DD=0: ad 7c               ADDB A, off(0x7c)
0x5060 DD=0: 8a 23 05            JBR PSWL.3, label_5068
0x5063 DD=0: f2 07               JLT label_506c
0x5065 DD=1: fa                  CLR A
0x5066 DD=1: 04 04               SJ label_506c
label_5068:
0x5068 DD=0: f5 02               JGE label_506c
0x506a DD=0: bc d7               FILLB A
label_506c:
0x506c DD=0: 38                  STB A, R0
0x506d DD=1: f8 58 98            L A, #0x9858
0x5070 DD=1: 18                  CMP A, ER0
0x5071 DD=1: f2 08               JLT label_507b
0x5073 DD=1: f8 e8 03            L A, #0x03e8
0x5076 DD=1: 64 94               CMP ER0, A
0x5078 DD=1: f2 01               JLT label_507b
0x507a DD=1: 74                  L A, ER0
label_507b:
0x507b DD=1: 35 80               ST A, off(0x80)
label_507d:
0x507d DD=1: 36 68               ST A, PWR0
label_507f:
0x507f DD=1: 01                  RT
label_5080:
0x5080 DD=1: 4a 48               RB sbaoff c8.2
0x5082 DD=1: f6 03               JNE label_5087
0x5084 DD=1: 03 83 51            J label_5183
label_5087:
0x5087 DD=1: 22 50 0a            MOV DP, #0x0a50
0x508a DD=1: 57 cb               ACAL label_17cb
0x508c DD=1: 14 01               MOVB R4, #0x01
0x508e DD=1: 22 a5 02            MOV DP, #0x02a5
0x5091 DD=1: 47 ff               ACAL label_13ff
0x5093 DD=1: 14 05               MOVB R4, #0x05
0x5095 DD=1: 22 8f 03            MOV DP, #0x038f
0x5098 DD=1: 47 ff               ACAL label_13ff
0x509a DD=1: 14 01               MOVB R4, #0x01
0x509c DD=1: 22 60 04            MOV DP, #0x0460
0x509f DD=1: 47 ff               ACAL label_13ff
0x50a1 DD=1: 14 02               MOVB R4, #0x02
0x50a3 DD=1: 22 6e 05            MOV DP, #0x056e
0x50a6 DD=1: 47 ff               ACAL label_13ff
0x50a8 DD=1: 14 13               MOVB R4, #0x13
0x50aa DD=1: 22 aa 06            MOV DP, #0x06aa
0x50ad DD=1: 47 ff               ACAL label_13ff
0x50af DD=1: 14 01               MOVB R4, #0x01
0x50b1 DD=1: 22 bb 08            MOV DP, #0x08bb
0x50b4 DD=1: 47 ff               ACAL label_13ff
0x50b6 DD=0: 94 a1               LB A, 0x02a1
0x50b8 DD=0: cc                  INCB A
0x50b9 DD=0: f1 02               JEQ label_50bd
0x50bb DD=0: 34 a1               STB A, 0x02a1
label_50bd:
0x50bd DD=0: 5b f9 06            JBR sbafix 02f9.3, label_50c6
0x50c0 DD=0: b6 10 09            SB P0.1
0x50c3 DD=0: 03 82 51            J label_5182
label_50c6:
0x50c6 DD=0: 59 f9 36            JBR sbafix 02f9.1, label_50ff
0x50c9 DD=0: 5d f5 1f            JBR sbafix 02f5.5, label_50eb
0x50cc DD=0: 59 74               RB sbafix 02f4.1
0x50ce DD=0: f6 03               JNE label_50d3
0x50d0 DD=0: 58 f4 22            JBR sbafix 02f4.0, label_50f5
label_50d3:
0x50d3 DD=0: 5d 9c 1f            JBS sbafix 02dc.5, label_50f5
0x50d6 DD=0: b5 2f c7            CLRB off(0x2f)
0x50d9 DD=0: b5 30 c7            CLRB off(0x30)
0x50dc DD=0: b5 ad c7            CLRB off(0xad)
0x50df DD=0: 58 b4 05            JBS sbafix 02f4.0, label_50e7
0x50e2 DD=0: d7 ae 17            MOVB off(0xae), #0x17
0x50e5 DD=0: 58 34               SB sbafix 02f4.0
label_50e7:
0x50e7 DD=0: b5 ae a7 05         TJZB off(0xae), label_50f0
label_50eb:
0x50eb DD=0: b6 10 01            RB P0.1
0x50ee DD=0: 04 0f               SJ label_50ff
label_50f0:
0x50f0 DD=0: b6 10 09            SB P0.1
0x50f3 DD=0: 04 0a               SJ label_50ff
label_50f5:
0x50f5 DD=0: 58 74               RB sbafix 02f4.0
0x50f7 DD=0: 22 d4 02            MOV DP, #0x02d4
0x50fa DD=0: 20 87 8e            MOV X1, #0x8e87
0x50fd DD=0: 55 62               ACAL label_1562
label_50ff:
0x50ff DD=0: 5a f9 4c            JBR sbafix 02f9.2, label_514e
0x5102 DD=0: 5c f5 4b            JBR sbafix 02f5.4, label_5150
0x5105 DD=0: 5d b3 48            JBS sbafix 02f3.5, label_5150
0x5108 DD=0: 5a b6 40            JBS sbafix 02f6.2, label_514b
0x510b DD=0: 5a b7 3d            JBS sbafix 02f7.2, label_514b
0x510e DD=0: 5a b8 50            JBS sbafix 02f8.2, label_5161
0x5111 DD=0: 58 ef 3c            JBR sbafix 02ef.0, label_5150
0x5114 DD=0: 58 9c 19            JBS sbafix 02dc.0, label_5130
0x5117 DD=0: 5e b5 07            JBS sbafix 02f5.6, label_5121
0x511a DD=0: 5e 35               SB sbafix 02f5.6
0x511c DD=0: d7 af 32            MOVB off(0xaf), #0x32
0x511f DD=0: 04 04               SJ label_5125
label_5121:
0x5121 DD=0: b5 af a7 1a         TJZB off(0xaf), label_513f
label_5125:
0x5125 DD=0: b5 30 c7            CLRB off(0x30)
0x5128 DD=0: b5 ad c7            CLRB off(0xad)
0x512b DD=0: b5 2f c7            CLRB off(0x2f)
0x512e DD=0: 04 22               SJ label_5152
label_5130:
0x5130 DD=0: 5e f5 24            JBR sbafix 02f5.6, label_5157
0x5133 DD=0: b5 af a7 08         TJZB off(0xaf), label_513f
0x5137 DD=0: 5a 36               SB sbafix 02f6.2
0x5139 DD=0: b7 b2 08 0b         SB 0x08b2.3
0x513d DD=0: 04 0c               SJ label_514b
label_513f:
0x513f DD=0: b5 ae a6 08         TJNZB off(0xae), label_514b
0x5143 DD=0: 58 b4 0a            JBS sbafix 02f4.0, label_5150
0x5146 DD=0: 58 34               SB sbafix 02f4.0
0x5148 DD=0: d7 ae 17            MOVB off(0xae), #0x17
label_514b:
0x514b DD=0: b6 10 01            RB P0.1
label_514e:
0x514e DD=0: 04 32               SJ label_5182
label_5150:
0x5150 DD=0: 5d 33               SB sbafix 02f3.5
label_5152:
0x5152 DD=0: b6 10 09            SB P0.1
0x5155 DD=0: 04 2b               SJ label_5182
label_5157:
0x5157 DD=0: 22 d8 02            MOV DP, #0x02d8
0x515a DD=0: 20 a7 8e            MOV X1, #0x8ea7
0x515d DD=0: 55 62               ACAL label_1562
0x515f DD=0: 04 21               SJ label_5182
label_5161:
0x5161 DD=0: 58 96 04            JBS sbafix 02d6.0, label_5168
0x5164 DD=0: 55 c3               ACAL label_15c3
0x5166 DD=0: 04 1a               SJ label_5182
label_5168:
0x5168 DD=0: 22 d4 02            MOV DP, #0x02d4
0x516b DD=0: 20 87 8e            MOV X1, #0x8e87
0x516e DD=0: 55 62               ACAL label_1562
0x5170 DD=0: a4 d8 c7            CLR 0x02d8
0x5173 DD=0: a4 da c7            CLR 0x02da
0x5176 DD=0: a7 a0 0c c7         CLR 0x0ca0
0x517a DD=0: a7 a2 0c c7         CLR 0x0ca2
0x517e DD=0: a7 a4 0c c7         CLR 0x0ca4
label_5182:
0x5182 DD=0: 01                  RT
label_5183:
0x5183 DD=1: 4c 48               RB sbaoff c8.4
0x5185 DD=1: f6 03               JNE label_518a
0x5187 DD=1: 03 d6 51            J label_51d6
label_518a:
0x518a DD=1: 14 01               MOVB R4, #0x01
0x518c DD=1: 22 a6 02            MOV DP, #0x02a6
0x518f DD=1: 47 ff               ACAL label_13ff
0x5191 DD=1: 14 01               MOVB R4, #0x01
0x5193 DD=1: 22 94 03            MOV DP, #0x0394
0x5196 DD=1: 47 ff               ACAL label_13ff
0x5198 DD=1: 14 01               MOVB R4, #0x01
0x519a DD=1: 22 70 05            MOV DP, #0x0570
0x519d DD=1: 47 ff               ACAL label_13ff
0x519f DD=1: 14 01               MOVB R4, #0x01
0x51a1 DD=1: 22 bd 06            MOV DP, #0x06bd
0x51a4 DD=1: 47 ff               ACAL label_13ff
0x51a6 DD=0: 94 a2               LB A, 0x02a2
0x51a8 DD=0: cc                  INCB A
0x51a9 DD=0: f1 02               JEQ label_51ad
0x51ab DD=0: 34 a2               STB A, 0x02a2
label_51ad:
0x51ad DD=0: 95 b0               LB A, off(0xb0)
0x51af DD=0: f6 25               JNE label_51d6
0x51b1 DD=0: d7 b0 28            MOVB off(0xb0), #0x28
0x51b4 DD=0: 17 19               MOVB R7, #0x19
0x51b6 DD=0: 22 96 02            MOV DP, #0x0296
0x51b9 DD=0: 20 d2 8f            MOV X1, #0x8fd2
label_51bc:
0x51bc DD=0: da                  DI
0x51bd DD=0: 92                  LB A, [DP]
0x51be DD=0: b0 95               CMPB A, [X1]
0x51c0 DD=0: cc                  INCB A
0x51c1 DD=0: f2 01               JLT label_51c4
0x51c3 DD=0: 90                  LB A, [X1]
label_51c4:
0x51c4 DD=0: 32                  STB A, [DP]
0x51c5 DD=0: db                  EI
0x51c6 DD=0: 7f                  LB A, R7
0x51c7 DD=0: 8d 9f               SUBB A, off(0x9f)
0x51c9 DD=0: f6 02               JNE label_51cd
0x51cb DD=0: 35 9f               STB A, off(0x9f)
label_51cd:
0x51cd DD=0: 40                  INC X1
0x51ce DD=0: 42                  INC DP
0x51cf DD=0: 6f c6               INCB R7
0x51d1 DD=0: 6f 93 21            CMPB R7, #0x21
0x51d4 DD=0: f2 e6               JLT label_51bc
label_51d6:
0x51d6 DD=0: 01                  RT
label_51d7:
0x51d7 DD=0: b6 42 01            RB IRQ1L.1
0x51da DD=0: f1 14               JEQ label_51f0
0x51dc DD=0: d6 4c 3c            MOVB WDT, #0x3c
0x51df DD=0: d6 4c c3            MOVB WDT, #0xc3
0x51e2 DD=0: b6 14 17            MB C, P4.7
0x51e5 DD=0: fd                  CPL C
0x51e6 DD=0: b6 14 1f            MB P4.7, C
0x51e9 DD=0: 95 b8               LB A, off(0xb8)
0x51eb DD=0: f1 03               JEQ label_51f0
0x51ed DD=0: b5 b8 d6            DECB off(0xb8)
label_51f0:
0x51f0 DD=0: b6 40 05            RB IRQ0L.5
0x51f3 DD=0: f1 0a               JEQ label_51ff
0x51f5 DD=1: 86 8e               L A, TMR2
0x51f7 DD=1: a5 5e 73            MOV ER3, off(0x5e)
0x51fa DD=1: 35 5e               ST A, off(0x5e)
0x51fc DD=1: 0b                  SUB A, ER3
0x51fd DD=1: 35 5a               ST A, off(0x5a)
label_51ff:
0x51ff DD=1: b6 40 03            RB IRQ0L.3
0x5202 DD=1: f1 4c               JEQ label_5250
0x5204 DD=1: 86 8a               L A, TMR0
0x5206 DD=1: 3b                  ST A, ER3
0x5207 DD=1: b6 10 12            MB C, P0.2
0x520a DD=1: fd                  CPL C
0x520b DD=1: b6 10 1a            MB P0.2, C
0x520e DD=1: 12 ff               MOVB R2, #0xff
0x5210 DD=1: 85 60               L A, off(0x60)
0x5212 DD=1: f1 11               JEQ label_5225
0x5214 DD=1: 38                  ST A, ER0
0x5215 DD=1: da                  DI
0x5216 DD=1: 86 d6               L A, TM1
0x5218 DD=1: 0b                  SUB A, ER3
0x5219 DD=1: ae 04 00            ADD A, #0x0004
0x521c DD=1: 18                  CMP A, ER0
0x521d DD=1: f5 06               JGE label_5225
0x521f DD=1: 74                  L A, ER0
0x5220 DD=1: 2b                  ADD A, ER3
0x5221 DD=1: 36 9a               ST A, TMR8
0x5223 DD=1: 12 fe               MOVB R2, #0xfe
label_5225:
0x5225 DD=1: 6a 96 ca            MOVB RTOCON8, R2
0x5228 DD=1: db                  EI
0x5229 DD=1: 12 ff               MOVB R2, #0xff
0x522b DD=1: 85 62               L A, off(0x62)
0x522d DD=1: f1 11               JEQ label_5240
0x522f DD=1: 38                  ST A, ER0
0x5230 DD=1: da                  DI
0x5231 DD=1: 86 d6               L A, TM1
0x5233 DD=1: 0b                  SUB A, ER3
0x5234 DD=1: ae 04 00            ADD A, #0x0004
0x5237 DD=1: 18                  CMP A, ER0
0x5238 DD=1: f5 06               JGE label_5240
0x523a DD=1: 74                  L A, ER0
0x523b DD=1: 2b                  ADD A, ER3
0x523c DD=1: 36 9c               ST A, TMR9
0x523e DD=1: 12 fe               MOVB R2, #0xfe
label_5240:
0x5240 DD=1: 6a 96 cb            MOVB RTOCON9, R2
0x5243 DD=1: db                  EI
0x5244 DD=1: 77                  L A, ER3
0x5245 DD=1: a5 5c 73            MOV ER3, off(0x5c)
0x5248 DD=1: 35 5c               ST A, off(0x5c)
0x524a DD=1: 0b                  SUB A, ER3
0x524b DD=1: 35 58               ST A, off(0x58)
0x524d DD=1: 03 9a 55            J label_559a
label_5250:
0x5250 DD=1: b6 40 00            RB IRQ0L.0
0x5253 DD=1: f6 03               JNE label_5258
0x5255 DD=1: 03 cc 52            J label_52cc
label_5258:
0x5258 DD=1: a6 d6 71            MOV ER1, TM1
0x525b DD=1: 60 c7               CLR X1
0x525d DD=1: 22 c6 00            MOV DP, #0x00c6
0x5260 DD=1: 14 04               MOVB R4, #0x04
loop_5262:
0x5262 DD=1: 15 ff               MOVB R5, #0xff
0x5264 DD=1: 88 48 08            L A, 0x0848[X1]
0x5267 DD=1: f1 21               JEQ label_528a
0x5269 DD=1: 15 f8               MOVB R5, #0xf8
0x526b DD=1: 9e ff ff            CMP A, #0xffff
0x526e DD=1: f1 1a               JEQ label_528a
0x5270 DD=1: 3b                  ST A, ER3
0x5271 DD=1: 88 3a 08            L A, 0x083a[X1]
0x5274 DD=1: 38                  ST A, ER0
0x5275 DD=1: da                  DI
0x5276 DD=1: 86 d6               L A, TM1
0x5278 DD=1: 09                  SUB A, ER1
0x5279 DD=1: ae c8 00            ADD A, #0x00c8
0x527c DD=1: 18                  CMP A, ER0
0x527d DD=1: f5 01               JGE label_5280
0x527f DD=1: 74                  L A, ER0
label_5280:
0x5280 DD=1: 29                  ADD A, ER1
0x5281 DD=1: c8 92 00            ST A, 0x0092[X1]
0x5284 DD=1: 2b                  ADD A, ER3
0x5285 DD=1: c8 ae 00            ST A, 0x00ae[X1]
0x5288 DD=1: 15 fd               MOVB R5, #0xfd
label_528a:
0x528a DD=1: 6d 8a               MOVB [DP], R5
0x528c DD=1: db                  EI
0x528d DD=1: 40                  INC X1
0x528e DD=1: 40                  INC X1
0x528f DD=1: 42                  INC DP
0x5290 DD=1: 05 50               DJNZ R4, loop_5262
0x5292 DD=1: 60 c7               CLR X1
0x5294 DD=1: 22 cc 00            MOV DP, #0x00cc
0x5297 DD=1: 14 02               MOVB R4, #0x02
loop_5299:
0x5299 DD=1: 15 ff               MOVB R5, #0xff
0x529b DD=1: 88 50 08            L A, 0x0850[X1]
0x529e DD=1: f1 21               JEQ label_52c1
0x52a0 DD=1: 15 f8               MOVB R5, #0xf8
0x52a2 DD=1: 9e ff ff            CMP A, #0xffff
0x52a5 DD=1: f1 1a               JEQ label_52c1
0x52a7 DD=1: 3b                  ST A, ER3
0x52a8 DD=1: 88 42 08            L A, 0x0842[X1]
0x52ab DD=1: 38                  ST A, ER0
0x52ac DD=1: da                  DI
0x52ad DD=1: 86 d6               L A, TM1
0x52af DD=1: 09                  SUB A, ER1
0x52b0 DD=1: ae c8 00            ADD A, #0x00c8
0x52b3 DD=1: 18                  CMP A, ER0
0x52b4 DD=1: f5 01               JGE label_52b7
0x52b6 DD=1: 74                  L A, ER0
label_52b7:
0x52b7 DD=1: 29                  ADD A, ER1
0x52b8 DD=1: c8 9e 00            ST A, 0x009e[X1]
0x52bb DD=1: 2b                  ADD A, ER3
0x52bc DD=1: c8 ba 00            ST A, 0x00ba[X1]
0x52bf DD=1: 15 fd               MOVB R5, #0xfd
label_52c1:
0x52c1 DD=1: 6d 8a               MOVB [DP], R5
0x52c3 DD=1: db                  EI
0x52c4 DD=1: 40                  INC X1
0x52c5 DD=1: 40                  INC X1
0x52c6 DD=1: 42                  INC DP
0x52c7 DD=1: 05 50               DJNZ R4, loop_5299
0x52c9 DD=1: 03 9a 55            J label_559a
label_52cc:
0x52cc DD=1: b5 b1 21 04         JBR off(0xb1).1, label_52d4
0x52d0 DD=1: b5 b0 25 03         JBR off(0xb0).5, label_52d7
label_52d4:
0x52d4 DD=1: 03 9a 55            J label_559a
label_52d7:
0x52d7 DD=0: 95 78               LB A, off(0x78)
0x52d9 DD=0: dc                  DECB A
0x52da DD=0: 3c                  STB A, R4
0x52db DD=0: 95 76               LB A, off(0x76)
0x52dd DD=0: 22 64 08            MOV DP, #0x0864
loop_52e0:
0x52e0 DD=0: b3 a5               ADDB A, [DP+]
0x52e2 DD=0: 05 7c               DJNZ R4, loop_52e0
0x52e4 DD=0: f6 0a               JNE label_52f0
0x52e6 DD=0: 22 7c 08            MOV DP, #0x087c
0x52e9 DD=1: 85 64               L A, off(0x64)
0x52eb DD=1: 9e 82 82            CMP A, #0x8282
0x52ee DD=1: f1 03               JEQ label_52f3
label_52f0:
0x52f0 DD=1: 03 97 55            J label_5597
label_52f3:
0x52f3 DD=1: ae 10 10            ADD A, #0x1010
0x52f6 DD=1: 33                  ST A, [DP+]
0x52f7 DD=0: 95 66               LB A, off(0x66)
0x52f9 DD=0: 33                  STB A, [DP+]
0x52fa DD=0: 42                  INC DP
0x52fb DD=0: 9e 04               CMPB A, #0x04
0x52fd DD=0: f6 22               JNE label_5321
0x52ff DD=0: 95 6a               LB A, off(0x6a)
0x5301 DD=0: f1 10               JEQ label_5313
0x5303 DD=0: 9e 0c               CMPB A, #0x0c
0x5305 DD=0: f0 0c               JGT label_5313
0x5307 DD=0: 3c                  STB A, R4
0x5308 DD=0: b6 07 c7            CLRB ACCH
0x530b DD=1: d9                  SDD
0x530c DD=1: ad 68               ADD A, off(0x68)
0x530e DD=1: 9e 01 12            CMP A, #0x1201
0x5311 DD=1: f2 03               JLT label_5316
label_5313:
0x5313 DD=1: 03 97 55            J label_5597
label_5316:
0x5316 DD=1: 85 68               L A, off(0x68)
0x5318 DD=1: 3c                  ST A, X1
loop_5319:
0x5319 DD=1: b0 8b               MOVB [DP+], [X1]
0x531b DD=1: 40                  INC X1
0x531c DD=1: 05 7b               DJNZ R4, loop_5319
0x531e DD=1: 03 73 55            J label_5573
label_5321:
0x5321 DD=0: 9e 05               CMPB A, #0x05
0x5323 DD=0: f6 24               JNE label_5349
0x5325 DD=0: 95 6a               LB A, off(0x6a)
0x5327 DD=0: f1 11               JEQ label_533a
0x5329 DD=0: 9e 06               CMPB A, #0x06
0x532b DD=0: f0 0d               JGT label_533a
0x532d DD=0: 3c                  STB A, R4
0x532e DD=0: b6 07 c7            CLRB ACCH
0x5331 DD=0: 8f                  SLLB A
0x5332 DD=1: d9                  SDD
0x5333 DD=1: ad 68               ADD A, off(0x68)
0x5335 DD=1: 9e 01 12            CMP A, #0x1201
0x5338 DD=1: f2 03               JLT label_533d
label_533a:
0x533a DD=1: 03 97 55            J label_5597
label_533d:
0x533d DD=1: 85 68               L A, off(0x68)
0x533f DD=1: 3c                  ST A, X1
loop_5340:
0x5340 DD=1: a0 8b               MOV [DP+], [X1]
0x5342 DD=1: 40                  INC X1
0x5343 DD=1: 40                  INC X1
0x5344 DD=1: 05 7a               DJNZ R4, loop_5340
0x5346 DD=1: 03 73 55            J label_5573
label_5349:
0x5349 DD=0: 9e 08               CMPB A, #0x08
0x534b DD=0: f6 2b               JNE label_5378
0x534d DD=0: 95 67               LB A, off(0x67)
0x534f DD=0: 8e 07               SUBB A, #0x07
0x5351 DD=0: f7 10               JLE label_5363
0x5353 DD=0: 9e 0c               CMPB A, #0x0c
0x5355 DD=0: f0 0c               JGT label_5363
0x5357 DD=0: 3c                  STB A, R4
0x5358 DD=0: b6 07 c7            CLRB ACCH
0x535b DD=1: d9                  SDD
0x535c DD=1: ad 68               ADD A, off(0x68)
0x535e DD=1: 9e 01 12            CMP A, #0x1201
0x5361 DD=1: f2 03               JLT label_5366
label_5363:
0x5363 DD=1: 03 97 55            J label_5597
label_5366:
0x5366 DD=1: 62 77               MOV USP, DP
0x5368 DD=1: a5 68 76            MOV DP, off(0x68)
0x536b DD=1: 20 6a 08            MOV X1, #0x086a
loop_536e:
0x536e DD=1: b0 8b               MOVB [DP+], [X1]
0x5370 DD=1: 40                  INC X1
0x5371 DD=1: 05 7b               DJNZ R4, loop_536e
0x5373 DD=1: 63 76               MOV DP, USP
0x5375 DD=1: 03 69 55            J label_5569
label_5378:
0x5378 DD=0: 9e 09               CMPB A, #0x09
0x537a DD=0: f6 30               JNE label_53ac
0x537c DD=0: 95 67               LB A, off(0x67)
0x537e DD=0: 8e 07               SUBB A, #0x07
0x5380 DD=0: f7 14               JLE label_5396
0x5382 DD=0: 9f                  SRLB A
0x5383 DD=0: f2 11               JLT label_5396
0x5385 DD=0: 9e 06               CMPB A, #0x06
0x5387 DD=0: f0 0d               JGT label_5396
0x5389 DD=0: 3c                  STB A, R4
0x538a DD=0: b6 07 c7            CLRB ACCH
0x538d DD=0: 8f                  SLLB A
0x538e DD=1: d9                  SDD
0x538f DD=1: ad 68               ADD A, off(0x68)
0x5391 DD=1: 9e 01 12            CMP A, #0x1201
0x5394 DD=1: f2 03               JLT label_5399
label_5396:
0x5396 DD=1: 03 97 55            J label_5597
label_5399:
0x5399 DD=1: 62 77               MOV USP, DP
0x539b DD=1: a5 68 76            MOV DP, off(0x68)
0x539e DD=1: 20 6a 08            MOV X1, #0x086a
loop_53a1:
0x53a1 DD=1: a0 8b               MOV [DP+], [X1]
0x53a3 DD=1: 40                  INC X1
0x53a4 DD=1: 40                  INC X1
0x53a5 DD=1: 05 7a               DJNZ R4, loop_53a1
0x53a7 DD=1: 63 76               MOV DP, USP
0x53a9 DD=1: 03 69 55            J label_5569
label_53ac:
0x53ac DD=0: 9e 00               CMPB A, #0x00
0x53ae DD=0: f6 2a               JNE label_53da
0x53b0 DD=0: 95 6b               LB A, off(0x6b)
0x53b2 DD=0: f1 17               JEQ label_53cb
0x53b4 DD=0: 9e 0c               CMPB A, #0x0c
0x53b6 DD=0: f0 13               JGT label_53cb
0x53b8 DD=1: fc                  EXTND
0x53b9 DD=1: 3a                  ST A, ER2
0x53ba DD=1: b5 68 a6 0d         TJNZB off(0x68), label_53cb
0x53be DD=1: f8 00 00            L A, #0x0000
0x53c1 DD=1: 0a                  SUB A, ER2
0x53c2 DD=1: b5 69 70            MOVB R0, off(0x69)
0x53c5 DD=1: b5 6a 71            MOVB R1, off(0x6a)
0x53c8 DD=1: 18                  CMP A, ER0
0x53c9 DD=1: f5 03               JGE label_53ce
label_53cb:
0x53cb DD=1: 03 97 55            J label_5597
label_53ce:
0x53ce DD=1: 64 74               MOV X1, ER0
0x53d0 DD=0: d8                  RDD
loop_53d1:
0x53d1 DD=0: 60 db               LCB A, [X1]
0x53d3 DD=0: 40                  INC X1
0x53d4 DD=0: 33                  STB A, [DP+]
0x53d5 DD=0: 05 7a               DJNZ R4, loop_53d1
0x53d7 DD=0: 03 73 55            J label_5573
label_53da:
0x53da DD=0: 9e 10               CMPB A, #0x10
0x53dc DD=0: f1 03               JEQ label_53e1
0x53de DD=0: 03 93 54            J label_5493
label_53e1:
0x53e1 DD=0: 95 68               LB A, off(0x68)
0x53e3 DD=0: 9e c0               CMPB A, #0xc0
0x53e5 DD=0: f2 03               JLT label_53ea
0x53e7 DD=0: 03 97 55            J label_5597
label_53ea:
0x53ea DD=0: 9e 80               CMPB A, #0x80
0x53ec DD=0: f5 4f               JGE label_543d
0x53ee DD=0: d6 07 06            MOVB ACCH, #0x06
0x53f1 DD=1: d9                  SDD
0x53f2 DD=1: bc 8f               SLL A, 4
0x53f4 DD=1: 8f                  SLL A
0x53f5 DD=1: 14 0b               MOVB R4, #0x0b
0x53f7 DD=1: b6 15 0b            SB P5.3
loop_53fa:
0x53fa DD=1: 8f                  SLL A
0x53fb DD=1: b6 15 19            MB P5.1, C
0x53fe DD=1: 00                  NOP
0x53ff DD=1: 00                  NOP
0x5400 DD=1: 00                  NOP
0x5401 DD=1: b6 15 0a            SB P5.2
0x5404 DD=1: 00                  NOP
0x5405 DD=1: 00                  NOP
0x5406 DD=1: 00                  NOP
0x5407 DD=1: 00                  NOP
0x5408 DD=1: 00                  NOP
0x5409 DD=1: 00                  NOP
0x540a DD=1: b6 15 02            RB P5.2
0x540d DD=1: 05 6b               DJNZ R4, loop_53fa
0x540f DD=1: b6 15 01            RB P5.1
0x5412 DD=1: 14 10               MOVB R4, #0x10
loop_5414:
0x5414 DD=1: b6 15 0a            SB P5.2
0x5417 DD=1: 86 06               L A, ACC
0x5419 DD=1: 86 06               L A, ACC
0x541b DD=1: 86 06               L A, ACC
0x541d DD=1: 86 06               L A, ACC
0x541f DD=1: 86 06               L A, ACC
0x5421 DD=1: b6 15 10            MB C, P5.0
0x5424 DD=1: af                  ROL A
0x5425 DD=1: b6 15 02            RB P5.2
0x5428 DD=1: 00                  NOP
0x5429 DD=1: 00                  NOP
0x542a DD=1: 00                  NOP
0x542b DD=1: 05 67               DJNZ R4, loop_5414
0x542d DD=1: b6 15 03            RB P5.3
0x5430 DD=1: 00                  NOP
0x5431 DD=1: 00                  NOP
0x5432 DD=1: 00                  NOP
0x5433 DD=1: b6 15 0b            SB P5.3
0x5436 DD=1: 00                  NOP
0x5437 DD=1: b6 15 03            RB P5.3
0x543a DD=1: 03 8f 54            J label_548f
label_543d:
0x543d DD=0: 8e 80               SUBB A, #0x80
0x543f DD=0: df                  SWAP
0x5440 DD=0: fb                  CLRB A
0x5441 DD=1: d9                  SDD
0x5442 DD=1: 9f                  SRL A
0x5443 DD=1: ce 00 c0            OR A, #0xc000
0x5446 DD=1: 14 09               MOVB R4, #0x09
0x5448 DD=1: b6 1b 0f            SB p11.7
loop_544b:
0x544b DD=1: 8f                  SLL A
0x544c DD=1: b6 1b 1d            MB p11.5, C
0x544f DD=1: 00                  NOP
0x5450 DD=1: 00                  NOP
0x5451 DD=1: 00                  NOP
0x5452 DD=1: b6 1b 0e            SB p11.6
0x5455 DD=1: 00                  NOP
0x5456 DD=1: 00                  NOP
0x5457 DD=1: 00                  NOP
0x5458 DD=1: 00                  NOP
0x5459 DD=1: 00                  NOP
0x545a DD=1: 00                  NOP
0x545b DD=1: b6 1b 06            RB p11.6
0x545e DD=1: 05 6b               DJNZ R4, loop_544b
0x5460 DD=1: b6 1b 05            RB p11.5
0x5463 DD=1: 14 10               MOVB R4, #0x10
loop_5465:
0x5465 DD=1: b6 1b 0e            SB p11.6
0x5468 DD=1: 86 06               L A, ACC
0x546a DD=1: 86 06               L A, ACC
0x546c DD=1: 86 06               L A, ACC
0x546e DD=1: 86 06               L A, ACC
0x5470 DD=1: 86 06               L A, ACC
0x5472 DD=1: 86 06               L A, ACC
0x5474 DD=1: 86 06               L A, ACC
0x5476 DD=1: b6 1b 14            MB C, p11.4
0x5479 DD=1: af                  ROL A
0x547a DD=1: b6 1b 06            RB p11.6
0x547d DD=1: 00                  NOP
0x547e DD=1: 00                  NOP
0x547f DD=1: 00                  NOP
0x5480 DD=1: 05 63               DJNZ R4, loop_5465
0x5482 DD=1: b6 1b 07            RB p11.7
0x5485 DD=1: 00                  NOP
0x5486 DD=1: 00                  NOP
0x5487 DD=1: 00                  NOP
0x5488 DD=1: b6 1b 0f            SB p11.7
0x548b DD=1: 00                  NOP
0x548c DD=1: b6 1b 07            RB p11.7
label_548f:
0x548f DD=1: 33                  ST A, [DP+]
0x5490 DD=1: 03 73 55            J label_5573
label_5493:
0x5493 DD=0: 9e 14               CMPB A, #0x14
0x5495 DD=0: f1 03               JEQ label_549a
0x5497 DD=0: 03 ec 54            J label_54ec
label_549a:
0x549a DD=0: 95 68               LB A, off(0x68)
0x549c DD=0: 9e 80               CMPB A, #0x80
0x549e DD=0: f2 03               JLT label_54a3
0x54a0 DD=0: 03 97 55            J label_5597
label_54a3:
0x54a3 DD=0: b5 b0 2e 06         JBS off(0xb0).6, label_54ad
0x54a7 DD=0: fe 92 16            CAL label_1692
0x54aa DD=0: b5 b0 0e            SB off(0xb0).6
label_54ad:
0x54ad DD=0: 55 f3               ACAL label_15f3
0x54af DD=0: b5 6a 96 07         MOVB ACCH, off(0x6a)
0x54b3 DD=0: 95 69               LB A, off(0x69)
0x54b5 DD=0: b5 68 72            MOVB R2, off(0x68)
0x54b8 DD=0: 13 05               MOVB R3, #0x05
0x54ba DD=0: 14 05               MOVB R4, #0x05
0x54bc DD=1: d9                  SDD
loop_54bd:
0x54bd DD=1: 8f                  SLL A
0x54be DD=1: 65 ac               ROL ER1, 1
0x54c0 DD=1: 05 7b               DJNZ R4, loop_54bd
0x54c2 DD=1: 14 1b               MOVB R4, #0x1b
0x54c4 DD=1: b6 15 0b            SB P5.3
loop_54c7:
0x54c7 DD=1: 8f                  SLL A
0x54c8 DD=1: 65 ac               ROL ER1, 1
0x54ca DD=1: b6 15 19            MB P5.1, C
0x54cd DD=1: 00                  NOP
0x54ce DD=1: 00                  NOP
0x54cf DD=1: 00                  NOP
0x54d0 DD=1: b6 15 0a            SB P5.2
0x54d3 DD=1: 00                  NOP
0x54d4 DD=1: 00                  NOP
0x54d5 DD=1: 00                  NOP
0x54d6 DD=1: 00                  NOP
0x54d7 DD=1: 00                  NOP
0x54d8 DD=1: 00                  NOP
0x54d9 DD=1: b6 15 02            RB P5.2
0x54dc DD=1: 05 69               DJNZ R4, loop_54c7
0x54de DD=1: b6 15 03            RB P5.3
0x54e1 DD=1: b6 15 01            RB P5.1
0x54e4 DD=1: 00                  NOP
0x54e5 DD=1: 00                  NOP
0x54e6 DD=1: b5 b0 0d            SB off(0xb0).5
0x54e9 DD=1: 03 69 55            J label_5569
label_54ec:
0x54ec DD=0: 9e 18               CMPB A, #0x18
0x54ee DD=0: f6 3a               JNE label_552a
0x54f0 DD=0: b5 b0 2e 05         JBS off(0xb0).6, label_54f9
0x54f4 DD=0: 56 92               ACAL label_1692
0x54f6 DD=0: b5 b0 0e            SB off(0xb0).6
label_54f9:
0x54f9 DD=0: 55 f3               ACAL label_15f3
0x54fb DD=0: 25 1f 88            MOV ER1, #0x881f
0x54fe DD=1: f8 e0 ff            L A, #0xffe0
0x5501 DD=1: 14 1b               MOVB R4, #0x1b
0x5503 DD=1: b6 15 0b            SB P5.3
loop_5506:
0x5506 DD=1: 8f                  SLL A
0x5507 DD=1: 65 ac               ROL ER1, 1
0x5509 DD=1: b6 15 19            MB P5.1, C
0x550c DD=1: 00                  NOP
0x550d DD=1: 00                  NOP
0x550e DD=1: 00                  NOP
0x550f DD=1: b6 15 0a            SB P5.2
0x5512 DD=1: 00                  NOP
0x5513 DD=1: 00                  NOP
0x5514 DD=1: 00                  NOP
0x5515 DD=1: 00                  NOP
0x5516 DD=1: 00                  NOP
0x5517 DD=1: 00                  NOP
0x5518 DD=1: b6 15 02            RB P5.2
0x551b DD=1: 05 69               DJNZ R4, loop_5506
0x551d DD=1: b6 15 03            RB P5.3
0x5520 DD=1: b6 15 01            RB P5.1
0x5523 DD=1: 00                  NOP
0x5524 DD=1: 00                  NOP
0x5525 DD=1: b5 b0 0d            SB off(0xb0).5
0x5528 DD=1: 04 3f               SJ label_5569
label_552a:
0x552a DD=0: 9e 19               CMPB A, #0x19
0x552c DD=0: f1 03               JEQ label_5531
0x552e DD=0: 03 97 55            J label_5597
label_5531:
0x5531 DD=0: b5 b0 2e 05         JBS off(0xb0).6, label_553a
0x5535 DD=0: 56 92               ACAL label_1692
0x5537 DD=0: b5 b0 0e            SB off(0xb0).6
label_553a:
0x553a DD=0: 55 f3               ACAL label_15f3
0x553c DD=0: 25 00 88            MOV ER1, #0x8800
0x553f DD=1: f8 00 00            L A, #0x0000
0x5542 DD=1: 14 1b               MOVB R4, #0x1b
0x5544 DD=1: b6 15 0b            SB P5.3
loop_5547:
0x5547 DD=1: 8f                  SLL A
0x5548 DD=1: 65 ac               ROL ER1, 1
0x554a DD=1: b6 15 19            MB P5.1, C
0x554d DD=1: 00                  NOP
0x554e DD=1: 00                  NOP
0x554f DD=1: 00                  NOP
0x5550 DD=1: b6 15 0a            SB P5.2
0x5553 DD=1: 00                  NOP
0x5554 DD=1: 00                  NOP
0x5555 DD=1: 00                  NOP
0x5556 DD=1: 00                  NOP
0x5557 DD=1: 00                  NOP
0x5558 DD=1: 00                  NOP
0x5559 DD=1: b6 15 02            RB P5.2
0x555c DD=1: 05 69               DJNZ R4, loop_5547
0x555e DD=1: b6 15 03            RB P5.3
0x5561 DD=1: b6 15 01            RB P5.1
0x5564 DD=1: 00                  NOP
0x5565 DD=1: 00                  NOP
0x5566 DD=1: b5 b0 0d            SB off(0xb0).5
label_5569:
0x5569 DD=1: d7 7f 05            MOVB off(0x7f), #0x05
0x556c DD=1: 14 04               MOVB R4, #0x04
0x556e DD=1: 20 80 08            MOV X1, #0x0880
0x5571 DD=1: 04 0a               SJ label_557d
label_5573:
0x5573 DD=1: 72                  L A, DP
0x5574 DD=1: 3c                  ST A, X1
0x5575 DD=1: 8e 7c 08            SUB A, #0x087c
0x5578 DD=0: d8                  RDD
0x5579 DD=0: 3c                  STB A, R4
0x557a DD=0: cc                  INCB A
0x557b DD=0: 35 7f               STB A, off(0x7f)
label_557d:
0x557d DD=0: 52                  DEC DP
0x557e DD=0: fb                  CLRB A
loop_557f:
0x557f DD=0: b1 a5               ADDB A, [DP-]
0x5581 DD=0: 05 7c               DJNZ R4, loop_557f
0x5583 DD=0: cf                  NEGB A
0x5584 DD=0: 30                  STB A, [X1]
0x5585 DD=0: b5 7f 87 79         MOVB off(0x79), off(0x7f)
0x5589 DD=0: b5 b0 2d 0a         JBS off(0xb0).5, label_5597
0x558d DD=0: d7 78 01            MOVB off(0x78), #0x01
0x5590 DD=0: b5 b2 0e            SB off(0xb2).6
0x5593 DD=0: b5 7c 96 26         MOVB S1BUF, off(0x7c)
label_5597:
0x5597 DD=0: b5 b1 01            RB off(0xb1).1
label_559a:
0x559a DD=0: fe f3 15            CAL label_15f3
0x559d DD=0: b5 b0 25 25         JBR off(0xb0).5, label_55c6
0x55a1 DD=0: b6 15 0b            SB P5.3
0x55a4 DD=1: 86 06               L A, ACC
0x55a6 DD=1: 86 06               L A, ACC
0x55a8 DD=1: 86 06               L A, ACC
0x55aa DD=1: 86 06               L A, ACC
0x55ac DD=1: 86 06               L A, ACC
0x55ae DD=1: b6 15 10            MB C, P5.0
0x55b1 DD=1: b6 15 03            RB P5.3
0x55b4 DD=1: f5 10               JGE label_55c6
0x55b6 DD=1: b5 b0 05            RB off(0xb0).5
0x55b9 DD=1: d7 78 01            MOVB off(0x78), #0x01
0x55bc DD=1: b5 b2 0e            SB off(0xb2).6
0x55bf DD=1: b5 7c 96 26         MOVB S1BUF, off(0x7c)
0x55c3 DD=1: b5 b1 01            RB off(0xb1).1
label_55c6:
0x55c6 DD=1: 03 d7 51            J label_51d7

org 0x8001
0x8001:                          db    f0 55 dd f0 55 cc 78 32 b7 06 21 92 6c 18 70
0x8010:                          db 88 13 2d d0 07 01 d0 07 00 ff 00 ff dd 00 ff cc
0x8020:                          db 00 ff b7 00 ff 00 00 ff cd 2c dd cd 2c cc 85 2b
0x8030:                          db 9f 2f 25 7a 00 20 34 00 20 01 00 20 00 ff ff 5c
0x8040:                          db 00 c7 71 5c 00 55 55 48 00 e4 38 3c 00 ab 2a 3c
0x8050:                          db 00 72 1c 3c 00 55 15 3c 00 01 00 3c 00 00 00 05
0x8060:                          db 05 05 05 dc 60 00 8d 00 00 73 00 00 24 40 00 00
0x8070:                          db 00 00 40 48 60 68 80 88 a0 a8 c0 c8 ff ff 02 00
0x8080:                          db 02 00 05 00 05 00 05 00 39 0e 1c 47 1c 07 00 80
0x8090:                          db 00 00 00 00 00 80 00 80 00 00 04 00 10 00 8e 23
0x80a0:                          db ab 2a c7 31 e4 38 00 40 1c 47 55 55 00 00 0f 0f
0x80b0:                          db 0f 0f 0f 0f 0f 0f 0f 0f 0f 0f 0f 0f 0f 0f 0f 0f
0x80c0:                          db 0f 0f 0f 0f 0f 0f 1a 02 29 02 47 02 65 02 83 02
0x80d0:                          db 92 02 a1 02 fa 02 fa 02 ff 00 92 00 30 00 82 00
0x80e0:                          db 20 00 72 00 03 00 1d 00 00 00 10 87 01 e8 01 e8
0x80f0:                          db 01 fa 02 ff 00 92 00 30 00 82 00 20 00 72 00 03
0x8100:                          db 00 1d 00 00 00 10 87 01 e8 01 e8 01 fa 02 ff 00
0x8110:                          db 92 00 30 00 82 00 20 00 72 00 03 00 1d 00 00 00
0x8120:                          db 10 87 01 e8 01 e8 01 fa 02 ff 00 92 00 30 00 82
0x8130:                          db 00 20 00 72 00 03 00 1d 00 00 00 10 87 01 e8 01
0x8140:                          db e8 01 fa 02 ff 00 92 00 30 00 82 00 20 00 72 00
0x8150:                          db 03 00 1d 00 00 00 10 87 01 e8 01 e8 01 fa 02 ff
0x8160:                          db 00 92 00 30 00 82 00 20 00 72 00 03 00 1d 00 00
0x8170:                          db 00 10 87 01 e8 01 e8 01 fa 02 ff 00 92 00 30 00
0x8180:                          db 82 00 20 00 72 00 03 00 1d 00 00 00 10 87 01 e8
0x8190:                          db 01 e8 01 fa 02 ff 00 92 00 30 00 82 00 20 00 72
0x81a0:                          db 00 03 00 1d 00 00 00 10 87 01 e8 01 e8 01 c4 09
0x81b0:                          db 58 1b 00 00 00 00 00 00 00 00 00 f4 01 f4 01 32
0x81c0:                          db 00 90 c0 00 82 14 60 00 ac 0d 30 00 d0 07 02 00
0x81d0:                          db 58 02 00 00 00 f4 01 f4 01 32 00 a0 bc 02 58 1b
0x81e0:                          db 00 00 00 00 00 00 00 00 00 f4 01 f4 01 32 00 90
0x81f0:                          db c0 00 dc 05 60 00 e8 03 30 00 58 02 02 00 2c 01
0x8200:                          db 00 00 08 58 02 28 00 04 00 a0 bc 02 58 1b 00 00
0x8210:                          db 00 00 00 00 00 00 00 f4 01 f4 01 32 00 90 c0 00
0x8220:                          db d0 07 60 00 e8 03 30 00 58 02 02 00 2c 01 00 00
0x8230:                          db 08 58 02 28 00 04 00 a0 bc 02 58 1b 00 00 00 00
0x8240:                          db 00 00 00 00 00 f4 01 f4 01 32 00 90 c0 00 d0 07
0x8250:                          db 60 00 e8 03 30 00 58 02 02 00 2c 01 00 00 08 58
0x8260:                          db 02 28 00 04 00 a0 bc 02 58 1b 00 00 00 00 00 00
0x8270:                          db 00 00 00 f4 01 f4 01 32 00 90 c0 00 d0 07 60 00
0x8280:                          db e8 03 30 00 f4 01 02 00 c8 00 00 00 08 58 02 28
0x8290:                          db 00 04 00 a0 bc 02 58 1b 00 00 00 00 00 00 00 00
0x82a0:                          db 00 f4 01 f4 01 32 00 90 c0 00 d0 07 60 00 e8 03
0x82b0:                          db 30 00 f4 01 02 00 c8 00 00 00 08 58 02 28 00 04
0x82c0:                          db 00 a0 bc 02 88 13 00 00 00 00 00 00 00 00 00 f4
0x82d0:                          db 01 f4 01 32 00 90 c0 00 b0 04 60 00 20 03 20 00
0x82e0:                          db 90 01 06 00 c8 00 00 00 04 f4 01 64 00 04 00 a0
0x82f0:                          db f4 01 88 13 00 00 00 00 00 00 00 00 00 f4 01 f4
0x8300:                          db 01 32 00 90 c0 00 b0 04 60 00 58 02 20 00 c8 00
0x8310:                          db 06 00 c8 00 00 00 04 f4 01 64 00 04 00 a0 c7 08
0x8320:                          db b6 1c c0 00 d8 0e 60 00 ac 0d 30 00 d0 07 02 00
0x8330:                          db 58 02 00 00 00 f4 01 f4 01 32 00 90 df 02 58 1b
0x8340:                          db c0 00 34 08 60 00 1a 04 30 00 76 02 02 00 2c 01
0x8350:                          db 00 00 08 58 02 2a 00 04 00 90 df 02 58 1b c0 00
0x8360:                          db 34 08 60 00 1a 04 30 00 76 02 02 00 2c 01 00 00
0x8370:                          db 08 58 02 2a 00 04 00 90 df 02 58 1b c0 00 34 08
0x8380:                          db 60 00 1a 04 30 00 76 02 02 00 2c 01 00 00 08 58
0x8390:                          db 02 2a 00 04 00 90 df 02 58 1b c0 00 34 08 60 00
0x83a0:                          db 4c 04 30 00 26 02 02 00 c8 00 00 00 08 58 02 3c
0x83b0:                          db 00 04 00 90 df 02 58 1b c0 00 34 08 60 00 4c 04
0x83c0:                          db 30 00 26 02 02 00 c8 00 00 00 08 58 02 3c 00 04
0x83d0:                          db 00 90 df 02 88 13 c0 00 ec 04 60 00 70 03 20 00
0x83e0:                          db b8 01 06 00 c8 00 00 00 04 f4 01 69 00 04 00 90
0x83f0:                          db 0d 02 88 13 c0 00 ec 04 60 00 76 02 20 00 d2 00
0x8400:                          db 06 00 c8 00 00 00 04 f4 01 69 00 04 00 90 ef 03
0x8410:                          db 10 00 00 20 ff ff 00 30 ff ff 00 40 00 60 00 80
0x8420:                          db 00 70 00 80 ab 2a e4 38 55 55 c7 71 00 80 00 85
0x8430:                          db 00 90 00 00 05 05 01 01 03 03 03 03 02 02 0a 0a
0x8440:                          db 0a 0a 08 08 0c 0c 0c 0c 04 04 05 05 fa 02 ff 00
0x8450:                          db 92 00 30 00 82 00 20 00 72 00 03 00 1d 00 00 00
0x8460:                          db 10 87 01 e8 01 e8 01 fa 02 ff 00 92 00 30 00 82
0x8470:                          db 00 20 00 72 00 03 00 1d 00 00 00 10 87 01 e8 01
0x8480:                          db e8 01 fa 02 ff 00 92 00 30 00 82 00 20 00 72 00
0x8490:                          db 03 00 1d 00 00 00 10 87 01 e8 01 e8 01 fa 02 ff
0x84a0:                          db 00 92 00 30 00 82 00 20 00 72 00 03 00 1d 00 00
0x84b0:                          db 00 10 87 01 e8 01 e8 01 fa 02 ff 00 92 00 30 00
0x84c0:                          db 82 00 20 00 72 00 03 00 1d 00 00 00 10 87 01 e8
0x84d0:                          db 01 e8 01 fa 02 ff 00 92 00 30 00 82 00 20 00 72
0x84e0:                          db 00 03 00 1d 00 00 00 10 87 01 e8 01 e8 01 fa 02
0x84f0:                          db ff 00 92 00 30 00 82 00 20 00 72 00 03 00 1d 00
0x8500:                          db 00 00 10 87 01 e8 01 e8 01 fa 02 ff 00 92 00 30
0x8510:                          db 00 82 00 20 00 72 00 03 00 1d 00 00 00 10 87 01
0x8520:                          db e8 01 e8 01 fa 02 bf 02 bf 02 bf 02 bf 02 10 a0
0x8530:                          db 00 0a 00 02 00 90 ff 00 d3 02 40 00 d3 02 30 00
0x8540:                          db d3 02 02 00 1f 00 00 00 10 87 01 02 00 02 00 a0
0x8550:                          db fa 02 bf 02 bf 02 bf 02 bf 02 10 a0 00 0a 00 02
0x8560:                          db 00 90 ff 00 d3 02 40 00 d3 02 30 00 d3 02 02 00
0x8570:                          db 1f 00 00 00 10 87 01 02 00 02 00 a0 fa 02 bf 02
0x8580:                          db bf 02 bf 02 bf 02 10 a0 00 0a 00 02 00 90 ff 00
0x8590:                          db d3 02 40 00 d3 02 30 00 d3 02 02 00 1f 00 00 00
0x85a0:                          db 10 87 01 02 00 02 00 a0 fa 02 bf 02 bf 02 bf 02
0x85b0:                          db bf 02 10 a0 00 0a 00 02 00 90 ff 00 d3 02 40 00
0x85c0:                          db d3 02 30 00 d3 02 02 00 1f 00 00 00 10 87 01 02
0x85d0:                          db 00 02 00 a0 fa 02 bf 02 bf 02 bf 02 bf 02 10 a0
0x85e0:                          db 00 0a 00 02 00 90 ff 00 d3 02 40 00 d3 02 30 00
0x85f0:                          db d3 02 02 00 1f 00 00 00 10 87 01 02 00 02 00 a0
0x8600:                          db fa 02 bf 02 bf 02 bf 02 bf 02 10 a0 00 0a 00 02
0x8610:                          db 00 90 ff 00 d3 02 40 00 d3 02 30 00 d3 02 02 00
0x8620:                          db 1f 00 00 00 10 87 01 02 00 02 00 a0 fa 02 bf 02
0x8630:                          db bf 02 bf 02 bf 02 10 a0 00 0a 00 02 00 90 ff 00
0x8640:                          db d3 02 40 00 d3 02 30 00 d3 02 02 00 1f 00 00 00
0x8650:                          db 10 87 01 02 00 02 00 a0 fa 02 bf 02 bf 02 bf 02
0x8660:                          db bf 02 10 a0 00 0a 00 02 00 90 ff 00 d3 02 40 00
0x8670:                          db d3 02 30 00 d3 02 02 00 1f 00 00 00 10 87 01 02
0x8680:                          db 00 02 00 a0 ea 00 60 00 d3 02 30 00 ea 00 20 00
0x8690:                          db d0 00 02 00 1f 00 00 00 10 87 01 02 00 02 00 90
0x86a0:                          db ea 00 60 00 d3 02 30 00 ea 00 20 00 d0 00 02 00
0x86b0:                          db 1f 00 00 00 10 87 01 02 00 02 00 90 ea 00 60 00
0x86c0:                          db d3 02 30 00 ea 00 20 00 d0 00 02 00 1f 00 00 00
0x86d0:                          db 10 87 01 02 00 02 00 90 ea 00 60 00 d3 02 30 00
0x86e0:                          db ea 00 20 00 d0 00 02 00 1f 00 00 00 10 87 01 02
0x86f0:                          db 00 02 00 90 ea 00 60 00 d3 02 30 00 ea 00 20 00
0x8700:                          db d0 00 02 00 1f 00 00 00 10 87 01 02 00 02 00 90
0x8710:                          db ea 00 60 00 d3 02 30 00 ea 00 20 00 d0 00 02 00
0x8720:                          db 1f 00 00 00 10 87 01 02 00 02 00 90 ea 00 60 00
0x8730:                          db d3 02 30 00 ea 00 20 00 d0 00 02 00 1f 00 00 00
0x8740:                          db 10 87 01 02 00 02 00 90 ea 00 60 00 d3 02 30 00
0x8750:                          db ea 00 20 00 d0 00 02 00 1f 00 00 00 10 87 01 02
0x8760:                          db 00 02 00 90 72 9c 72 9c de 5d de 5d 72 9c 72 9c
0x8770:                          db de 5d de 5d 72 9c 72 9c ab 6a ab 6a 72 9c fa 64
0x8780:                          db 39 8e de 5d 72 9c fa 64 39 8e de 5d 72 9c c7 71
0x8790:                          db 39 8e ab 6a 39 8e ff ff 04 03 01 02 00 9d 00 a4
0x87a0:                          db 00 90 de b7 04 03 01 02 72 9c f4 02 8e 63 f4 02
0x87b0:                          db 72 5c f7 02 e4 58 f7 02 55 55 fa 02 39 4e 06 03
0x87c0:                          db 1c 47 09 03 00 40 fa 02 e4 38 fa 02 c7 31 fa 02
0x87d0:                          db 00 00 de 5d de 5d 1c 47 1c 47 e4 38 e4 38 ab 2a
0x87e0:                          db ab 2a 28 3d 28 3d bc 3b 94 94 04 03 01 02 ff 80
0x87f0:                          db f9 80 bd a7 98 ca 73 ef 01 ef 00 ff 80 f9 80 bd
0x8800:                          db 80 98 80 73 80 2e 80 00 ff 80 fa 80 72 80 2e 80
0x8810:                          db 00 ff 60 e2 60 d5 53 cc 50 b7 4a 86 42 6e 40 2d
0x8820:                          db 40 21 40 01 40 00 ff 60 e2 60 d9 5d cc 5a b7 53
0x8830:                          db 86 42 6e 40 2d 40 21 40 01 40 00 ff 60 e2 60 d9
0x8840:                          db 5d cc 5a b7 53 86 42 6e 40 2d 40 21 40 01 40 00
0x8850:                          db 00 1c 00 2c 00 55 00 65 30 00 ff ff 35 00 c7 71
0x8860:                          db 35 00 55 55 35 00 e4 38 35 00 ab 2a 35 00 72 1c
0x8870:                          db 35 00 55 15 35 00 01 00 35 00 00 00 00 1c 00 2c
0x8880:                          db 00 55 00 65 30 00 ff ff 10 02 c7 71 10 02 55 55
0x8890:                          db a0 01 e4 38 f0 00 ab 2a c0 00 72 1c 90 00 55 15
0x88a0:                          db 80 00 01 00 80 00 00 00 ff 35 e2 35 d5 34 cc 2f
0x88b0:                          db b7 23 86 1b 48 16 2d 10 21 10 01 10 00 ff 45 e2
0x88c0:                          db 45 d5 40 cc 35 b7 30 86 30 48 25 2d 25 21 25 01
0x88d0:                          db 20 00 ff 65 e2 65 d5 60 cc 60 b7 55 86 55 48 50
0x88e0:                          db 2d 50 21 35 01 35 00 00 1c 00 2c 00 55 00 65 30
0x88f0:                          db 00 ff ff 10 02 c7 71 10 02 55 55 a0 01 e4 38 f0
0x8900:                          db 00 ab 2a c0 00 72 1c 90 00 55 15 80 00 01 00 80
0x8910:                          db 00 00 00 00 1c 00 2c 00 55 00 65 30 00 ff ff 10
0x8920:                          db 02 c7 71 10 02 55 55 a0 01 e4 38 f0 00 ab 2a c0
0x8930:                          db 00 72 1c 90 00 55 15 80 00 01 00 80 00 00 00 ff
0x8940:                          db a0 e4 a0 c5 8f a1 86 7b 80 57 7d 3c 7a 23 75 13
0x8950:                          db 75 01 75 00 ff 96 e1 96 d0 90 a1 87 7b 80 57 7a
0x8960:                          db 3c 75 23 6e 18 6a 01 6a 00 00 0a 80 01 10 80 ff
0x8970:                          db aa e2 aa d5 a0 cc 96 b7 86 86 6a 47 40 2d 20 1b
0x8980:                          db 03 01 03 00 ff 2a e2 2a d5 2a cc 26 b7 24 86 22
0x8990:                          db 59 20 2d 20 1b 20 01 20 00 ff aa e2 aa d5 a0 cc
0x89a0:                          db 96 b7 86 86 6a 47 40 2d 20 1b 03 01 03 00 ff 50
0x89b0:                          db e2 50 d5 48 cc 40 b7 30 85 28 47 22 2d 20 1b 20
0x89c0:                          db 01 20 00 cf 40 a1 40 7a 40 56 40 3c 40 23 40 17
0x89d0:                          db 40 00 ff 01 80 80 01 80 40 01 80 00 01 80 80 00
0x89e0:                          db 80 40 00 80 10 00 80 00 00 a7 07 03 92 bb 03 7d
0x89f0:                          db bc 04 68 68 06 54 b9 09 3f 82 11 00 01 03 04 02
0x8a00:                          db 00 00 00 00 9a 19 72 1c 39 2e c7 31 72 3c 00 40
0x8a10:                          db ab 4a 39 4e e4 58 72 5c 1c 67 ab 6a 39 6e c7 71
0x8a20:                          db 72 7c 00 80 ab 8a 39 8e ff ff ff ff 00 00 00 00
0x8a30:                          db ff 03 ff 03 ff 03 ff 03 ff 03 ff 03 ff 03 ff 03
0x8a40:                          db ff ff ff ff 02 0d 0d 0d 0d 0d 0a 0a 0a 0a 0a 05
0x8a50:                          db 05 05 05 05 02 02 02 02 02 00 00 00 00 00 17 17
0x8a60:                          db 17 17 17 04 04 04 04 04 04 04 04 04 04 04 04 04
0x8a70:                          db 04 04 04 04 04 04 04 40 0a 80 50 08 80 70 06 80
0x8a80:                          db 90 03 80 a0 02 80 c0 01 80 e0 00 80 00 00 e0 15
0x8a90:                          db 64 80 0c 60 40 06 54 c0 03 4a e0 01 40 00 00 77
0x8aa0:                          db 77 47 47 47 4d 55 5b 61 6b 79 84 91 8e 8b 86 7f
0x8ab0:                          db 78 72 72 72 6c 6c 67 65 65 70 80 60 80 53 80 52
0x8ac0:                          db 80 50 80 4f 80 4e 80 29 80 00 94 fe d0 fe e0 ff
0x8ad0:                          db ff ff 30 00 ff ff 10 02 ab 2a c0 00 72 1c 90 00
0x8ae0:                          db 55 15 80 00 01 00 80 00 00 00 40 00 40 40 00 05
0x8af0:                          db 40 01 70 80 60 80 53 80 52 80 50 80 4f 80 4e 80
0x8b00:                          db 29 80 00 94 fe d0 fe e0 ff ff ff 30 00 ff ff 10
0x8b10:                          db 02 ab 2a c0 00 72 1c 90 00 55 15 80 00 01 00 80
0x8b20:                          db 00 00 00 40 00 40 40 00 05 40 01 e6 80 cc 80 85
0x8b30:                          db 80 45 80 00 e6 80 85 80 59 80 44 80 00 30 80 1f
0x8b40:                          db 80 1b 80 12 80 00 01 00 2f d0 30 00 5f 00 60 30
0x8b50:                          db 00 ff ff 10 02 ab 2a c0 00 72 1c 90 00 55 15 80
0x8b60:                          db 00 01 00 80 00 00 00 94 fe d0 fe e0 ff ff ff 30
0x8b70:                          db 00 ff ff 10 02 ab 2a c0 00 72 1c 90 00 55 15 80
0x8b80:                          db 00 01 00 80 00 00 00 e6 80 85 80 59 80 45 80 00
0x8b90:                          db e6 80 85 80 59 80 44 80 00 30 80 1f 80 1b 80 12
0x8ba0:                          db 80 00 47 00 2f d0 30 00 5f 00 60 30 00 ff ff 10
0x8bb0:                          db 02 ab 2a c0 00 72 1c 90 00 55 15 80 00 01 00 80
0x8bc0:                          db 00 00 00 94 fe d0 fe e0 ff ff ff 30 00 ff ff 10
0x8bd0:                          db 02 ab 2a c0 00 72 1c 90 00 55 15 80 00 01 00 80
0x8be0:                          db 00 00 00 77 77 47 47 47 4d 55 5b 61 6b 79 84 91
0x8bf0:                          db 8e 8b 86 7f 78 72 72 72 6c 6c 67 65 65 ff 03 ff
0x8c00:                          db 03 00 00 00 00 ff ff ff ff 00 00 00 00 01 01 06
0x8c10:                          db 0a 77 77 47 47 47 4d 55 5b 61 6b 79 84 91 8e 8b
0x8c20:                          db 86 7f 78 72 72 72 6c 6c 67 65 65 50 00 70 00 00
0x8c30:                          db 02 50 02 1c 07 89 08 d2 27 ab 2a 92 e1 06 0a 2b
0x8c40:                          db 2b 2b 39 41 4a 55 5d 61 65 69 6c 79 85 90 90 90
0x8c50:                          db 86 86 86 86 86 86 86 86 86 01 22 17 17 17 01 17
0x8c60:                          db 17 17 17 01 17 17 17 17 01 0e 0e 0e 0e 01 00 00
0x8c70:                          db 00 00 01 00 00 00 00 01 00 00 00 00 01 00 00 00
0x8c80:                          db 00 e0 80 a1 80 70 80 3c 80 00 01 02 ff 01 80 80
0x8c90:                          db 01 80 40 01 80 00 01 80 80 00 80 40 00 80 10 00
0x8ca0:                          db 80 00 00 00 80 00 55 55 00 1c 47 07 e4 38 06 ab
0x8cb0:                          db 2a 04 72 1c 03 39 0e 03 00 00 2b 2b 2b 2b 2b 2b
0x8cc0:                          db 2b 2b 2b 2b 2b 3c 3c 3c 3c 3f 47 59 67 68 6a 6c
0x8cd0:                          db 6c 6c 6c 6c ab aa 1c 00 80 17 8e 63 11 1c 47 0c
0x8ce0:                          db ab 2a 06 72 1c 01 39 0e 01 1d 07 01 00 00 ab aa
0x8cf0:                          db c4 09 e4 78 b8 0b 55 55 b8 0b 1c 47 b8 0b c7 31
0x8d00:                          db b8 0b 72 1c b8 0b 1d 07 a0 0f 00 00 a7 40 7d 40
0x8d10:                          db 68 40 3f 40 00 00 12 06 0c 38 8e e3 00 f0 67 1c
0x8d20:                          db 67 67 8e 63 67 72 5c 67 e4 58 67 c1 56 6d 55 55
0x8d30:                          db 67 39 4e 67 1c 47 67 e4 38 50 c7 31 33 ab 2a 33
0x8d40:                          db 8e 23 33 72 1c 33 8c 05 33 00 00 00 f0 41 1c 67
0x8d50:                          db 41 8e 63 41 72 5c 41 e4 58 41 c1 56 4a 55 55 4a
0x8d60:                          db 39 4e 48 1c 47 46 e4 38 24 c7 31 24 ab 2a 24 8e
0x8d70:                          db 23 24 72 1c 24 8c 05 24 00 00 ae 00 a1 1d 88 4f
0x8d80:                          db 70 7d 58 7d 45 7d 35 7d 00 ae 00 a1 1d 88 4f 70
0x8d90:                          db 4f 58 4f 45 4f 35 4f 00 55 55 66 02 1c 47 66 02
0x8da0:                          db e4 38 66 02 ab 2a 66 02 00 00 20 40 01 2c 80 01
0x8db0:                          db 00 a0 80 8e 63 80 55 55 80 1c 47 80 00 40 80 e4
0x8dc0:                          db 38 80 ab 2a 80 00 00 ff 70 94 f3 a0 8c da d0 84
0x8dd0:                          db b6 60 6d 9c c0 5d 82 20 4e 68 80 3e 4e e0 2e 34
0x8de0:                          db 40 1f 01 b8 0b 00 a7 b0 04 92 00 00 00 92 00 00
0x8df0:                          db 88 20 03 7d e8 03 68 2e 11 00 e0 8e 23 39 0e 08
0x8e00:                          db 41 10 04 20 08 82 20 08 84 d2 27 ab 2a 06 5b de
0x8e10:                          db 5d cf 07 02 04 41 10 20 00 90 00 68 00 cc 00 ab
0x8e20:                          db 2a e4 38 1c 47 55 55 01 01 01 01 01 01 01 01 01
0x8e30:                          db 01 01 01 01 01 01 00 00 00 00 00 00 00 00 00 00
0x8e40:                          db 00 11 11 11 11 14 1c 1f 0b 0a 08 00 00 00 00 00
0x8e50:                          db d0 be b0 be 90 be 70 be 50 be 30 be 10 be 00 e0
0x8e60:                          db 87 cf 87 c5 82 b9 73 a1 69 88 50 7c 00 00 e0 af
0x8e70:                          db cf aa c5 a0 b9 91 a1 82 88 69 7c 69 00 f5 00 bd
0x8e80:                          db 00 30 20 00 10 30 20 01 02 44 07 08 09 10 00 12
0x8e90:                          db 13 14 15 18 19 00 00 33 00 00 00 00 42 43 45 46
0x8ea0:                          db 47 00 00 25 00 00 29 01 02 44 07 08 09 10 00 12
0x8eb0:                          db 13 14 15 18 19 00 00 33 00 00 00 00 42 43 45 46
0x8ec0:                          db 47 00 00 25 00 00 29 04 fc 05 58 05 14 e1 cf a0
0x8ed0:                          db 6d 28 04 fc 05 ff 05 14 df ba 6e 32 1a 04 fc 05
0x8ee0:                          db 58 05 14 e1 cf a0 6d 28 00 02 00 0a c7 71 28 1c
0x8ef0:                          db 47 28 ab 2a 1e 38 0e 1e 00 00 fe 03 fe 09 fe 04
0x8f00:                          db fe 0a ff 05 fe 0b 00 06 fe fe 01 07 fe fe 02 08
0x8f10:                          db fe fe 03 09 fe fe 04 0a ff fe 05 0b ff fe 06 fe
0x8f20:                          db 00 fe 07 fe 01 fe 08 fe 02 fe 09 fe 03 fe 0a fe
0x8f30:                          db 04 fe 0b fe 05 ff fe fe 06 00 fe fe 07 01 fe fe
0x8f40:                          db 08 02 fe fe 09 03 fe fe 0a 04 fe ff 0b 05 fe 00
0x8f50:                          db fe 06 fe 01 fe 07 fe 02 fe 08 0e 14 08 02 0f 15
0x8f60:                          db 09 03 10 16 0a 04 11 17 0b 05 12 00 0c 06 13 01
0x8f70:                          db 0d 07 14 02 0e 08 15 03 0f 09 16 04 10 0a 17 05
0x8f80:                          db 11 0b 00 06 12 0c 01 07 13 0d 02 08 14 0e 03 09
0x8f90:                          db 15 0f 04 0a 16 10 05 0b 17 11 06 0c 00 12 07 0d
0x8fa0:                          db 01 13 08 0e 02 14 09 0f 03 15 0a 10 04 16 0b 11
0x8fb0:                          db 05 17 0c 12 06 00 0d 13 07 01 0f 2d ff 0f 0f 0f
0x8fc0:                          db 0f 0f 0f 2d 0a 0f 32 0f 14 14 10 10 ff ff 19 19
0x8fd0:                          db ff ff 19 19 19 19 ff ff ff ff 01 02 00 04 05 06
0x8fe0:                          db 07 03 16 17 18 19 1d 1a 20 20 0d 0e 00 00 00 00
0x8ff0:                          db 00 00 09 0a 0b 0c 00 00 00 00 11 20 21 22 23 24
0x9000:                          db 25 26 27 28 30 33 29 2a 2b 2c 2d 2e 2f 37 3a 3d
0x9010:                          db 40 43 01 00 08 04 03 02 13 50 46 00 32 fc 00 f6
0x9020:                          db 05 e6 18 cd 29 4d 60 33 72 24 80 19 90 0f a8 01
0x9030:                          db ff 00 fc 00 f6 08 e6 1a cd 29 4d 5f 33 6f 24 7c
0x9040:                          db 19 8a 0f 9f 01 ff 00 a5 00 b5 55 00 00 ff ff 40
0x9050:                          db 3d 9e 00 b4 62 fc 00 f6 06 e6 19 cd 29 4d 5f 33
0x9060:                          db 6f 24 7c 19 8a 0f 9f 01 ff 00 a5 00 b5 55 37 04
0x9070:                          db 11 09 11 63 00 00 00 01 01 01 02 02 01 07 01 07
0x9080:                          db 02 08 01 08 02 09 01 09 02 00 00 00 00 00 00 0c
0x9090:                          db 01 0d 01 0e 01 0f 01 00 00 00 00 12 01 13 01 00
0x90a0:                          db 00 00 00 00 00 00 00 19 01 00 00 00 00 00 00 1d
0x90b0:                          db 01 21 02 00 00 00 00 00 00 00 00 2a 01 2a 02 2b
0x90c0:                          db 01 2c 01 2c 02 2d 01 2e 01 2f 01 00 00 00 00 00
0x90d0:                          db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x90e0:                          db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x90f0:                          db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x9100:                          db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x9110:                          db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x9120:                          db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0a
0x9130:                          db 00 0c 01 0c 02 0c 03 0c 04 0c 00 06 74 90 74 90
0x9140:                          db 74 90 74 90 11 07 0c 06 0c 08 0c 09 0c 0a 0c 0b
0x9150:                          db 0c 0c 0c 0d 0c 0e 0c 0f 0c 10 0c 11 0c 12 0c 74
0x9160:                          db 90 15 0c 14 0c 16 0c 14 07 0c 06 0c 08 0c 09 0c
0x9170:                          db 0a 0c 0b 0c 0c 0c 0d 0c 0e 0c 0f 0c 10 0c 11 0c
0x9180:                          db 12 0c 74 90 15 0c 14 0c 16 0c 17 0c 74 90 74 90
0x9190:                          db 16 07 0c 06 0c 08 0c 09 0c 0a 0c 0b 0c 0c 0c 0d
0x91a0:                          db 0c 0e 0c 0f 0c 10 0c 11 0c 12 0c 74 90 15 0c 14
0x91b0:                          db 0c 16 0c 17 0c 18 0c 19 0c 1a 0c 1b 0c 11 81 0c
0x91c0:                          db 80 0c 82 0c 83 0c 84 0c 85 0c 86 0c 87 0c 88 0c
0x91d0:                          db 89 0c 8a 0c 8b 0c 8c 0c 74 90 8f 0c 8e 0c 90 0c
0x91e0:                          db 14 81 0c 80 0c 82 0c 83 0c 84 0c 85 0c 86 0c 87
0x91f0:                          db 0c 88 0c 89 0c 8a 0c 8b 0c 8c 0c 74 90 8f 0c 8e
0x9200:                          db 0c 90 0c 91 0c 74 90 74 90 16 81 0c 80 0c 82 0c
0x9210:                          db 83 0c 84 0c 85 0c 86 0c 87 0c 88 0c 89 0c 8a 0c
0x9220:                          db 8b 0c 8c 0c 74 90 8f 0c 8e 0c 90 0c 91 0c 92 0c
0x9230:                          db 93 0c 94 0c 95 0c 05 22 0c 23 0c 74 90 24 0c 74
0x9240:                          db 90 06 27 0c 28 0c 29 0c 2a 0c 2b 0c 2c 0c 59 33
0x9250:                          db 30 30 33 30 61 14 6d 14 21 15 72 14 7e 14 8a 14
0x9260:                          db 4d 15 4d 15 a7 14 ac 14 b1 14 b6 14 c5 14 ca 14
0x9270:                          db 4d 15 4d 15 fc 14 4d 15 4d 15 4d 15 4d 15 10 15
0x9280:                          db 1c 15 2d 15 32 15 37 15 4d 15 4d 15 e3 14 4d 15
0x9290:                          db 4d 15 f7 14 01 01 02 04 04 05 05 06 06 00 00 00
0x92a0:                          db 09 0a 0b 0c 00 00 0d 0e 00 00 00 00 1d 00 00 00
0x92b0:                          db 20 11 00 00 00 00 16 16 17 03 03 18 19 1a 00 00

org 0xa000
0xa000:                          db 48 31 31 41 32 30 41 20 53 0c 45 00 00 00 00 00
0xa010:                          db 3b 07 2b 00 04 b0 00 00 00 00 00 00 00 00 00 00
0xa020:                          db 00 00 0c 00 24 00 38 00 54 00 6c 00 88 00 a4 00
0xa030:                          db c0 00 d8 00 10 01 48 01 98 01 04 02 64 02 d0 02
0xa040:                          db 30 03 fc 03 00 00 05 01 1c 01 34 01 4c 01 64 01
0xa050:                          db 7c 01 94 01 ac 01 c4 01 f3 01 23 02 53 02 83 02
0xa060:                          db b3 02 e2 02 3a 03 ff 03 00 00 60 0b a5 0f 11 11
0xa070:                          db 7d 12 55 15 9a 19 72 1c 4a 1f 22 22 fa 24 d2 27
0xa080:                          db ab 2a c7 31 e4 38 00 40 1c 47 39 4e 55 55 c1 56
0xa090:                          db e4 58 72 5c de 5d fa 64 1c 67 ff ff 7d 7d 7d 7d
0xa0a0:                          db 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d
0xa0b0:                          db 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d
0xa0c0:                          db 45 45 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 4d
0xa0d0:                          db 4d 4d 45 45 5b 62 63 64 65 66 67 68 6a 6c 6f 6f
0xa0e0:                          db 6f 4d 4d 4d 45 45 5b 62 63 64 65 66 67 68 6a 6c
0xa0f0:                          db 6f 6f 6f 4d 4d 4d 53 53 5b 62 63 64 65 66 67 68
0xa100:                          db 6a 6c 6f 6f 6f 53 53 53 5b 5b 65 65 66 67 68 69
0xa110:                          db 6a 6b 6c 6d 6f 6f 6f 5b 5b 5b 61 61 68 69 6a 6a
0xa120:                          db 6b 6b 6c 6c 6d 6e 6f 6f 6f 61 61 61 67 67 68 69
0xa130:                          db 6a 6a 6b 6b 6c 6c 6d 6e 6f 6f 6f 67 67 67 69 69
0xa140:                          db 69 69 6a 6a 6b 6b 6c 6c 6d 6e 6f 6f 6f 71 71 71
0xa150:                          db 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 7f
0xa160:                          db 7f 7f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f
0xa170:                          db 6f 8a 8a 8a 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f
0xa180:                          db 6f 6f 6f 97 97 97 78 78 78 78 78 78 78 78 78 78
0xa190:                          db 78 78 78 78 78 94 94 94 83 83 83 83 83 83 83 83
0xa1a0:                          db 83 83 83 83 83 83 83 91 91 91 87 87 87 87 87 87
0xa1b0:                          db 87 87 87 87 87 87 87 87 87 8c 8c 8c 87 87 87 87
0xa1c0:                          db 87 87 87 87 87 87 87 87 87 87 85 85 85 85 81 81
0xa1d0:                          db 81 81 81 81 81 81 81 81 81 81 7f 7b 79 78 78 78
0xa1e0:                          db 81 81 81 81 81 81 81 81 81 81 80 7e 7b 78 74 72
0xa1f0:                          db 72 72 81 81 81 81 81 81 81 81 81 81 80 7e 7b 78
0xa200:                          db 74 72 72 72 81 81 81 81 81 81 81 81 81 81 80 7e
0xa210:                          db 7b 78 74 72 72 72 79 79 79 79 79 79 79 79 79 79
0xa220:                          db 79 78 76 72 6e 6c 6c 6c 79 79 79 79 79 79 79 79
0xa230:                          db 79 79 79 78 76 72 6e 6c 6c 6c 77 77 77 77 77 77
0xa240:                          db 77 77 77 77 75 72 70 6b 68 67 67 67 77 77 77 77
0xa250:                          db 77 77 77 77 77 77 74 71 6e 69 66 65 65 65 77 77
0xa260:                          db 77 77 77 77 77 77 77 77 74 71 6e 69 66 65 65 65
0xa270:                          db 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d
0xa280:                          db 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d
0xa290:                          db 7d 7d 7d 7d 45 45 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f
0xa2a0:                          db 6f 6f 6f 4d 4d 4d 45 45 5b 62 63 64 65 66 67 68
0xa2b0:                          db 6a 6c 6f 6f 6f 4d 4d 4d 45 45 5b 62 63 64 65 66
0xa2c0:                          db 67 68 6a 6c 6f 6f 6f 4d 4d 4d 53 53 5b 62 63 64
0xa2d0:                          db 65 66 67 68 6a 6c 6f 6f 6f 53 53 53 5b 5b 65 65
0xa2e0:                          db 66 67 68 69 6a 6b 6c 6d 6f 6f 6f 5b 5b 5b 61 61
0xa2f0:                          db 68 69 6a 6a 6b 6b 6c 6c 6d 6e 6f 6f 6f 61 61 61
0xa300:                          db 67 67 68 69 6a 6a 6b 6b 6c 6c 6d 6e 6f 6f 6f 67
0xa310:                          db 67 67 69 69 69 69 6a 6a 6b 6b 6c 6c 6d 6e 6f 6f
0xa320:                          db 6f 71 71 71 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f
0xa330:                          db 6f 6f 6f 7f 7f 7f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f
0xa340:                          db 6f 6f 6f 6f 6f 8a 8a 8a 6f 6f 6f 6f 6f 6f 6f 6f
0xa350:                          db 6f 6f 6f 6f 6f 6f 6f 97 97 97 78 78 78 78 78 78
0xa360:                          db 78 78 78 78 78 78 78 78 78 94 94 94 83 83 83 83
0xa370:                          db 83 83 83 83 83 83 83 83 83 83 83 91 91 91 87 87
0xa380:                          db 87 87 87 87 87 87 87 87 87 87 87 87 87 8c 8c 8c
0xa390:                          db 87 87 87 87 87 87 87 87 87 87 87 87 87 87 85 85
0xa3a0:                          db 85 85 81 81 81 81 81 81 81 81 81 81 81 81 7f 7b
0xa3b0:                          db 79 78 78 78 81 81 81 81 81 81 81 81 81 81 80 7e
0xa3c0:                          db 7b 78 74 72 72 72 81 81 81 81 81 81 81 81 81 81
0xa3d0:                          db 80 7e 7b 78 74 72 72 72 81 81 81 81 81 81 81 81
0xa3e0:                          db 81 81 80 7e 7b 78 74 72 72 72 79 79 79 79 79 79
0xa3f0:                          db 79 79 79 79 79 78 76 72 6e 6c 6c 6c 79 79 79 79
0xa400:                          db 79 79 79 79 79 79 79 78 76 72 6e 6c 6c 6c 77 77
0xa410:                          db 77 77 77 77 77 77 77 77 75 72 70 6b 68 67 67 67
0xa420:                          db 77 77 77 77 77 77 77 77 77 77 74 71 6e 69 66 65
0xa430:                          db 65 65 77 77 77 77 77 77 77 77 77 77 74 71 6e 69
0xa440:                          db 66 65 65 65 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d
0xa450:                          db 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d
0xa460:                          db 7d 7d 7d 7d 7d 7d 7d 7d 45 45 6f 6f 6f 6f 6f 6f
0xa470:                          db 6f 6f 6f 6f 6f 6f 6f 4d 4d 4d 45 45 5b 62 63 64
0xa480:                          db 65 66 67 68 6a 6c 6f 6f 6f 4d 4d 4d 45 45 5b 62
0xa490:                          db 63 64 65 66 67 68 6a 6c 6f 6f 6f 4d 4d 4d 53 53
0xa4a0:                          db 5b 62 63 64 65 66 67 68 6a 6c 6f 6f 6f 53 53 53
0xa4b0:                          db 5b 5b 65 65 66 67 68 69 6a 6b 6c 6d 6f 6f 6f 5b
0xa4c0:                          db 5b 5b 61 61 68 69 6a 6a 6b 6b 6c 6c 6d 6e 6f 6f
0xa4d0:                          db 6f 61 61 61 67 67 68 69 6a 6a 6b 6b 6c 6c 6d 6e
0xa4e0:                          db 6f 6f 6f 67 67 67 69 69 69 69 6a 6a 6b 6b 6c 6c
0xa4f0:                          db 6d 6e 6f 6f 6f 71 71 71 6f 6f 6f 6f 6f 6f 6f 6f
0xa500:                          db 6f 6f 6f 6f 6f 6f 6f 7f 7f 7f 6f 6f 6f 6f 6f 6f
0xa510:                          db 6f 6f 6f 6f 6f 6f 6f 6f 6f 8a 8a 8a 6f 6f 6f 6f
0xa520:                          db 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 97 97 97 78 78
0xa530:                          db 78 78 78 78 78 78 78 78 78 78 78 78 78 94 94 94
0xa540:                          db 83 83 83 83 83 83 83 83 83 83 83 83 83 83 83 91
0xa550:                          db 91 91 87 87 87 87 87 87 87 87 87 87 87 87 87 87
0xa560:                          db 87 8c 8c 8c 87 87 87 87 87 87 87 87 87 87 87 87
0xa570:                          db 87 87 85 85 85 85 81 81 81 81 81 81 81 81 81 81
0xa580:                          db 81 81 7f 7b 79 78 78 78 81 81 81 81 81 81 81 81
0xa590:                          db 81 81 80 7e 7b 78 74 72 72 72 81 81 81 81 81 81
0xa5a0:                          db 81 81 81 81 80 7e 7b 78 74 72 72 72 81 81 81 81
0xa5b0:                          db 81 81 81 81 81 81 80 7e 7b 78 74 72 72 72 79 79
0xa5c0:                          db 79 79 79 79 79 79 79 79 79 78 76 72 6e 6c 6c 6c
0xa5d0:                          db 79 79 79 79 79 79 79 79 79 79 79 78 76 72 6e 6c
0xa5e0:                          db 6c 6c 77 77 77 77 77 77 77 77 77 77 75 72 70 6b
0xa5f0:                          db 68 67 67 67 77 77 77 77 77 77 77 77 77 77 74 71
0xa600:                          db 6e 69 66 65 65 65 77 77 77 77 77 77 77 77 77 77
0xa610:                          db 74 71 6e 69 66 65 65 65 7d 7d 7d 7d 7d 7d 7d 7d
0xa620:                          db 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d
0xa630:                          db 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 45 45 6f 6f
0xa640:                          db 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 4d 4d 4d 45 45
0xa650:                          db 5b 62 63 64 65 66 67 68 6a 6c 6f 6f 6f 4d 4d 4d
0xa660:                          db 45 45 5b 62 63 64 65 66 67 68 6a 6c 6f 6f 6f 4d
0xa670:                          db 4d 4d 53 53 5b 62 63 64 65 66 67 68 6a 6c 6f 6f
0xa680:                          db 6f 53 53 53 5b 5b 65 65 66 67 68 69 6a 6b 6c 6d
0xa690:                          db 6f 6f 6f 5b 5b 5b 61 61 68 69 6a 6a 6b 6b 6c 6c
0xa6a0:                          db 6d 6e 6f 6f 6f 61 61 61 67 67 68 69 6a 6a 6b 6b
0xa6b0:                          db 6c 6c 6d 6e 6f 6f 6f 67 67 67 69 69 69 69 6a 6a
0xa6c0:                          db 6b 6b 6c 6c 6d 6e 6f 6f 6f 71 71 71 6f 6f 6f 6f
0xa6d0:                          db 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 7f 7f 7f 6f 6f
0xa6e0:                          db 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 8a 8a 8a
0xa6f0:                          db 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 97
0xa700:                          db 97 97 78 78 78 78 78 78 78 78 78 78 78 78 78 78
0xa710:                          db 78 94 94 94 83 83 83 83 83 83 83 83 83 83 83 83
0xa720:                          db 83 83 83 91 91 91 87 87 87 87 87 87 87 87 87 87
0xa730:                          db 87 87 87 87 87 8c 8c 8c 87 87 87 87 87 87 87 87
0xa740:                          db 87 87 87 87 87 87 85 85 85 85 81 81 81 81 81 81
0xa750:                          db 81 81 81 81 81 81 7f 7b 79 78 78 78 81 81 81 81
0xa760:                          db 81 81 81 81 81 81 80 7e 7b 78 74 72 72 72 81 81
0xa770:                          db 81 81 81 81 81 81 81 81 80 7e 7b 78 74 6d 6d 6d
0xa780:                          db 81 81 81 81 81 81 81 81 81 81 80 7e 7b 78 74 6c
0xa790:                          db 6c 6c 79 79 79 79 79 79 79 79 79 79 79 78 76 72
0xa7a0:                          db 6e 69 69 69 79 79 79 79 79 79 79 79 79 79 79 78
0xa7b0:                          db 76 72 6e 68 68 68 77 77 77 77 77 77 77 77 77 77
0xa7c0:                          db 75 72 70 6b 68 67 67 67 77 77 77 77 77 77 77 77
0xa7d0:                          db 77 77 74 71 6e 69 66 65 65 65 77 77 77 77 77 77
0xa7e0:                          db 77 77 77 77 74 71 6e 69 66 65 65 65 70 70 70 70
0xa7f0:                          db 70 70 70 70 70 70 70 70 70 70 70 70 70 70 62 62
0xa800:                          db 62 62 62 62 62 62 62 62 62 62 62 62 62 62 62 62
0xa810:                          db 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
0xa820:                          db 54 54 56 56 56 56 56 56 56 56 56 56 56 56 56 56
0xa830:                          db 56 56 56 56 57 57 57 57 57 57 57 57 57 57 57 57
0xa840:                          db 57 57 57 57 57 57 58 58 58 58 58 58 58 58 58 58
0xa850:                          db 58 58 58 58 58 58 58 58 5a 5a 5a 5a 5a 5a 5a 5a
0xa860:                          db 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5c 5c 5c 5c 5c 5c
0xa870:                          db 5c 5c 5c 5c 5c 5c 5c 5c 5c 5c 5c 5c 65 65 65 65
0xa880:                          db 65 65 65 64 63 62 61 61 60 60 60 60 60 60 6c 6c
0xa890:                          db 6c 6c 6c 6c 6b 6a 69 68 67 66 65 65 65 65 65 65
0xa8a0:                          db 73 73 73 73 73 73 71 6f 6e 6d 6d 6d 6d 6a 68 68
0xa8b0:                          db 68 68 7a 7a 7a 7a 7a 7a 79 78 77 76 75 74 73 71
0xa8c0:                          db 6f 6f 6f 6f 81 81 81 81 81 81 81 80 7f 7e 7b 77
0xa8d0:                          db 7a 77 79 79 79 79 88 88 88 88 88 88 88 88 88 87
0xa8e0:                          db 81 7a 7a 77 7a 7a 7a 7a 8c 8c 8c 8c 8c 8c 8c 8c
0xa8f0:                          db 8c 8c 84 7c 7a 78 7b 7b 7b 7b 8f 8f 8f 8f 8f 8f
0xa900:                          db 8f 8f 8f 8f 86 7d 7a 79 7e 7e 7e 7e 8f 8f 8f 8f
0xa910:                          db 8f 8f 8f 8f 8f 8f 86 7d 7a 7d 84 85 87 87 8f 8f
0xa920:                          db 8f 8f 8f 8f 8f 8f 8f 8f 8b 87 85 86 87 87 87 87
0xa930:                          db 8f 8f 8f 8f 8f 8f 8f 8f 8f 8f 8b 87 84 85 86 87
0xa940:                          db 87 87 8f 8f 8f 8f 8f 8f 8f 8f 8f 8f 8b 87 84 81
0xa950:                          db 79 7b 7e 7e 8f 8f 8f 8f 8f 8f 8f 8f 8f 8f 8f 8f
0xa960:                          db 8f 86 79 7b 7e 7e 8f 8f 8f 8f 8f 8f 8f 8f 8f 8f
0xa970:                          db 8f 8f 8f 8b 87 84 81 81 8f 8f 8f 8f 8f 8f 8f 8f
0xa980:                          db 8f 8e 8f 8f 8f 8d 8b 88 85 85 8f 8f 8f 8e 8f 8f
0xa990:                          db 8f 8f 8f 8f 8f 8f 8f 8f 8f 8d 8a 8a 8f 8f 8f 8f
0xa9a0:                          db 8f 8f 8f 8f 8f 8f 8f 8f 8f 8f 8f 8f 8f 8f 8f 8f
0xa9b0:                          db 8f 8f 8f 8f 8f 8f 8f 8f 8f 8f 8f 8f 8f 8f 8f 8f
0xa9c0:                          db 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64
0xa9d0:                          db 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64
0xa9e0:                          db 64 64 64 64 55 55 55 55 55 55 55 55 55 55 55 55
0xa9f0:                          db 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55
0xaa00:                          db 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55
0xaa10:                          db 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55
0xaa20:                          db 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55
0xaa30:                          db 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55
0xaa40:                          db 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55
0xaa50:                          db 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59
0xaa60:                          db 59 59 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5d 5d 5c 5c
0xaa70:                          db 5e 5e 5e 5e 62 62 62 62 62 62 62 62 62 62 61 60
0xaa80:                          db 5e 60 62 62 62 62 66 66 66 66 66 66 66 66 66 66
0xaa90:                          db 65 63 61 63 66 66 66 66 6c 6c 6c 6c 6c 6c 6c 6c
0xaaa0:                          db 6c 6c 6b 6a 68 68 69 69 69 69 74 74 74 74 74 74
0xaab0:                          db 74 74 74 74 73 71 6f 71 73 73 72 72 78 78 78 78
0xaac0:                          db 78 78 78 78 78 78 77 75 73 76 7a 79 78 78 83 83
0xaad0:                          db 83 83 83 83 83 83 83 83 80 7c 7b 7c 80 80 80 80
0xaae0:                          db 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 88 82 7e 83 8b 8b
0xaaf0:                          db 8b 8b 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 88 82 7e 83
0xab00:                          db 8b 8b 8b 8b 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 88 82
0xab10:                          db 7e 83 8b 8b 8b 8b 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e
0xab20:                          db 8e 8e 8e 8a 86 85 83 83 8e 8e 8e 8e 8e 8e 8e 8e
0xab30:                          db 8e 8e 8e 8e 8e 8a 86 85 83 83 8e 8e 8e 8e 8e 8e
0xab40:                          db 8e 8e 8e 8e 8e 8e 8e 8c 89 86 83 83 8e 8e 8e 8e
0xab50:                          db 8e 8e 8e 8e 8e 8e 8e 8e 8e 8c 89 86 83 83 8e 8e
0xab60:                          db 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8c 8b 8b
0xab70:                          db 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8c
0xab80:                          db 8b 8b 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e
0xab90:                          db 8e 8c 8b 8b 64 64 64 64 64 64 64 64 64 64 64 64
0xaba0:                          db 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64
0xabb0:                          db 64 64 64 64 64 64 64 64 55 55 55 55 55 55 55 55
0xabc0:                          db 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55
0xabd0:                          db 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55
0xabe0:                          db 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55
0xabf0:                          db 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55
0xac00:                          db 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
0xac10:                          db 58 58 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d
0xac20:                          db 5d 5d 5d 5d 61 61 61 61 61 61 61 61 61 61 61 61
0xac30:                          db 61 61 61 61 61 61 66 66 66 66 66 66 66 66 66 66
0xac40:                          db 66 66 66 66 66 66 66 66 6c 6c 6c 6c 6c 6c 6c 6c
0xac50:                          db 6c 6c 6c 6c 6b 6a 69 69 69 69 71 71 71 71 71 71
0xac60:                          db 71 71 71 71 71 70 6f 6e 6e 6e 6e 6e 78 78 78 78
0xac70:                          db 78 78 78 78 78 78 78 76 75 75 75 75 76 76 7f 7f
0xac80:                          db 7f 7f 7f 7f 7f 7f 7f 7f 7e 7d 7b 7b 7c 7c 7c 7c
0xac90:                          db 83 83 83 83 83 83 83 83 83 83 82 80 7e 7f 80 80
0xaca0:                          db 80 80 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 89 84 83 83
0xacb0:                          db 88 87 86 86 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 89 84
0xacc0:                          db 84 84 8b 88 86 86 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e
0xacd0:                          db 89 84 84 84 8b 89 87 87 8e 8e 8e 8e 8e 8e 8e 8e
0xace0:                          db 8e 8e 8c 8a 86 86 8b 89 87 87 8e 8e 8e 8e 8e 8e
0xacf0:                          db 8e 8e 8e 8e 8e 8e 8e 8c 8b 89 87 87 8e 8e 8e 8e
0xad00:                          db 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8b 87 87 8e 8e
0xad10:                          db 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8a 86 86
0xad20:                          db 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 89
0xad30:                          db 83 83 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e
0xad40:                          db 8e 8b 87 87 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e
0xad50:                          db 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e
0xad60:                          db 8e 8e 8e 8e 8e 8e 8e 8e 64 64 64 64 64 64 64 64
0xad70:                          db 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64
0xad80:                          db 64 64 64 64 64 64 64 64 64 64 64 64 55 55 55 55
0xad90:                          db 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55
0xada0:                          db 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55
0xadb0:                          db 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55
0xadc0:                          db 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55
0xadd0:                          db 55 55 55 55 58 58 58 58 58 58 57 57 57 57 58 58
0xade0:                          db 58 58 58 58 58 58 5d 5d 5d 5d 5d 5d 5c 5a 59 58
0xadf0:                          db 5a 5b 5d 5d 5d 5d 5d 5d 61 61 61 61 61 61 5f 5e
0xae00:                          db 5c 5a 5d 5f 61 61 61 61 61 61 66 66 66 66 66 66
0xae10:                          db 64 60 5e 5c 5f 64 66 65 63 65 66 66 6c 6c 6c 6c
0xae20:                          db 6c 6c 69 65 61 5e 63 68 6c 6b 69 69 69 69 71 71
0xae30:                          db 71 71 71 71 6f 6b 69 66 6a 6e 71 6e 6c 6d 6d 6d
0xae40:                          db 76 76 76 76 76 76 75 73 73 73 73 76 76 74 72 73
0xae50:                          db 73 73 7c 7c 7c 7c 7c 7c 7b 7b 7b 7b 7b 7a 79 7a
0xae60:                          db 7a 7b 7b 7b 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7e 7c
0xae70:                          db 7b 7d 7f 7f 7f 7f 89 89 89 89 89 89 89 89 89 89
0xae80:                          db 86 83 83 85 89 89 89 89 8e 8e 8e 8e 8e 8e 8e 8e
0xae90:                          db 8e 8e 8a 86 86 89 8e 8c 89 89 8e 8e 8e 8e 8e 8e
0xaea0:                          db 8e 8e 8e 8e 8a 86 87 89 8e 8c 89 89 8e 8e 8e 8e
0xaeb0:                          db 8e 8e 8e 8e 8e 8e 8a 86 88 89 8e 8c 89 89 8e 8e
0xaec0:                          db 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8b 88 8b 8d 8d
0xaed0:                          db 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8b 87 87
0xaee0:                          db 87 87 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8b
0xaef0:                          db 88 87 87 87 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e
0xaf00:                          db 8e 8b 88 87 87 87 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e
0xaf10:                          db 8e 8e 8e 8e 8e 8c 8b 8b 8e 8e 8e 8e 8e 8e 8e 8e
0xaf20:                          db 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e
0xaf30:                          db 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 56 56 56 56
0xaf40:                          db 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56
0xaf50:                          db 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56
0xaf60:                          db 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56
0xaf70:                          db 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56
0xaf80:                          db 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56
0xaf90:                          db 56 56 56 56 56 56 59 59 59 59 59 59 59 59 56 56
0xafa0:                          db 56 56 56 56 56 56 56 56 5c 5c 5c 5c 5c 5c 5c 5c
0xafb0:                          db 56 56 56 56 56 56 56 56 56 56 5f 5f 5f 5f 5f 5f
0xafc0:                          db 5f 5f 58 58 58 58 58 58 58 58 58 58 61 61 61 61
0xafd0:                          db 61 61 61 61 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 65 65
0xafe0:                          db 65 65 65 65 65 65 64 64 64 64 64 64 64 64 64 64
0xaff0:                          db 69 69 69 69 69 69 69 69 69 69 69 69 69 69 69 69
0xb000:                          db 69 69 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f
0xb010:                          db 6f 6f 6f 6f 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d
0xb020:                          db 7d 7d 7d 7d 7d 7d 86 8b 8b 8b 8b 8b 8b 8b 8b 8b
0xb030:                          db 8b 8b 8b 8b 8b 8b 8b 8b 86 97 97 97 97 93 91 91
0xb040:                          db 91 91 91 91 91 91 91 91 91 91 86 97 97 97 97 93
0xb050:                          db 91 91 91 91 91 91 91 91 91 91 91 91 86 92 92 92
0xb060:                          db 92 91 8f 8f 8f 8f 8d 8d 8d 8c 8c 8c 8c 8c 86 8c
0xb070:                          db 8c 8c 8c 8c 8c 8c 8c 8c 87 87 87 84 84 84 84 84
0xb080:                          db 86 86 86 86 86 86 86 86 86 86 86 86 86 79 79 79
0xb090:                          db 79 79 86 86 86 86 86 86 86 86 86 86 86 86 86 76
0xb0a0:                          db 76 72 72 72 86 86 86 86 86 86 86 86 86 86 86 86
0xb0b0:                          db 86 77 77 74 74 74 86 86 86 86 86 86 86 86 86 86
0xb0c0:                          db 86 86 86 79 79 77 77 77 86 86 86 86 86 86 86 86
0xb0d0:                          db 86 86 86 86 86 79 79 77 77 77 86 86 86 86 86 86
0xb0e0:                          db 86 86 86 86 86 86 86 7d 7d 7b 7b 7b 86 86 86 86
0xb0f0:                          db 86 86 86 86 86 86 86 86 86 83 83 83 83 83 86 86
0xb100:                          db 86 86 86 86 86 86 86 86 86 86 86 86 86 86 86 86
0xb110:                          db fd 02 fd 02 4a 03 c2 03 3a 04 c4 04 e8 05 ef 06
0xb120:                          db 11 08 90 09 cc 0c ec 10 52 18 5c 1f 9a 23 ce 27
0xb130:                          db bc 2a 9a 33 fd 02 fd 02 4a 03 c2 03 3a 04 c4 04
0xb140:                          db e8 05 ef 06 11 08 90 09 cc 0c ec 10 52 18 5c 1f
0xb150:                          db 9a 23 ce 27 bc 2a 9a 33 fd 02 fd 02 4a 03 c2 03
0xb160:                          db 3a 04 c4 04 e8 05 ef 06 11 08 90 09 cc 0c ec 10
0xb170:                          db 52 18 5c 1f 9a 23 ce 27 bc 2a 9a 33 fd 02 fd 02
0xb180:                          db 4a 03 c2 03 3a 04 c4 04 e8 05 ef 06 11 08 90 09
0xb190:                          db cc 0c ec 10 52 18 5c 1f 9a 23 ce 27 bc 2a 9a 33
0xb1a0:                          db fd 02 fd 02 4a 03 ab 03 17 04 a7 04 aa 05 db 06
0xb1b0:                          db d6 07 19 09 7b 0c ec 10 52 18 5c 1f 9a 23 ce 27
0xb1c0:                          db bc 2a 9a 33 e1 02 e1 02 16 03 41 03 a8 03 66 04
0xb1d0:                          db 68 05 9f 06 72 07 59 08 e1 0b ec 10 52 18 5c 1f
0xb1e0:                          db 9a 23 ce 27 bc 2a 9a 33 81 02 81 02 ae 02 05 03
0xb1f0:                          db 70 03 10 04 c4 04 c1 05 a0 06 69 07 e1 0b ec 10
0xb200:                          db 52 18 5c 1f 9a 23 ce 27 bc 2a 9a 33 85 02 85 02
0xb210:                          db a7 02 d2 02 16 03 74 03 f6 03 bb 04 82 05 7b 06
0xb220:                          db e1 0b ec 10 52 18 5c 1f 9a 23 ce 27 bc 2a 9a 33
0xb230:                          db d5 01 d5 01 1e 02 73 02 c4 02 1f 03 f6 03 90 04
0xb240:                          db 70 05 8b 06 e1 0b ec 10 52 18 5c 1f 9a 23 ce 27
0xb250:                          db bc 2a 9a 33 d5 01 d5 01 1e 02 8a 02 f4 02 64 03
0xb260:                          db 3a 04 d5 04 8a 05 f2 06 e1 0b ec 10 52 18 5c 1f
0xb270:                          db 9a 23 ce 27 bc 2a 9a 33 d5 01 d5 01 42 02 9c 02
0xb280:                          db eb 02 6c 03 3a 04 00 05 e8 05 37 07 e1 0b ec 10
0xb290:                          db 52 18 5c 1f 9a 23 ce 27 bc 2a 9a 33 a5 01 a5 01
0xb2a0:                          db f9 01 56 02 eb 02 64 03 6e 04 1a 05 02 06 73 07
0xb2b0:                          db e1 0b ec 10 52 18 5c 1f 9a 23 ce 27 bc 2a 9a 33
0xb2c0:                          db 2d 01 2d 01 9c 01 31 02 c0 02 5b 03 65 04 09 05
0xb2d0:                          db 35 06 c1 07 e1 0b ec 10 52 18 5c 1f 9a 23 ce 27
0xb2e0:                          db bc 2a 9a 33 46 01 46 01 9c 01 31 02 d2 02 75 03
0xb2f0:                          db 7f 04 81 05 ae 06 1f 08 e1 0b ec 10 52 18 5c 1f
0xb300:                          db 9a 23 ce 27 bc 2a 9a 33 46 01 46 01 b6 01 51 02
0xb310:                          db c9 02 75 03 99 04 ac 05 d0 06 53 08 e1 0b ec 10
0xb320:                          db 52 18 5c 1f 9a 23 ce 27 bc 2a 9a 33 3f 01 3f 01
0xb330:                          db d0 01 59 02 eb 02 aa 03 d5 04 e1 05 02 07 85 08
0xb340:                          db e1 0b 33 10 f6 18 66 22 33 25 96 28 dc 2d 4e 34
0xb350:                          db 26 01 26 01 d0 01 59 02 eb 02 e8 03 13 05 0a 06
0xb360:                          db 16 07 85 08 f6 0c 33 10 d7 17 52 24 00 27 30 2a
0xb370:                          db 02 30 6e 37 26 01 26 01 d0 01 59 02 eb 02 80 04
0xb380:                          db 66 05 9a 06 8f 07 85 08 33 0d f6 0f 8f 16 cd 24
0xb390:                          db 6a 27 30 2a 7a 30 58 39 26 01 26 01 d0 01 59 02
0xb3a0:                          db eb 02 80 04 66 05 9a 06 8f 07 85 08 52 0d d7 0f
0xb3b0:                          db a4 14 ae 23 9a 26 cc 29 02 30 ba 36 26 01 26 01
0xb3c0:                          db d0 01 59 02 eb 02 80 04 66 05 9a 06 8f 07 85 08
0xb3d0:                          db 52 0d d7 0f a4 14 ae 23 9a 26 cc 29 02 30 ba 36
0xb3e0:                          db 26 01 26 01 d0 01 59 02 eb 02 80 04 66 05 9a 06
0xb3f0:                          db 8f 07 85 08 52 0d d7 0f a4 14 ae 23 9a 26 cc 29
0xb400:                          db 02 30 ba 36 26 01 26 01 d0 01 59 02 eb 02 80 04
0xb410:                          db 66 05 9a 06 8f 07 85 08 52 0d 7b 0f 29 14 c3 21
0xb420:                          db 66 25 96 28 02 30 ba 36 26 01 26 01 d0 01 59 02
0xb430:                          db eb 02 80 04 66 05 9a 06 8f 07 85 08 52 0d 7b 0f
0xb440:                          db 29 14 c3 21 66 25 96 28 02 30 ba 36 26 01 26 01
0xb450:                          db d0 01 59 02 eb 02 80 04 66 05 9a 06 8f 07 85 08
0xb460:                          db 85 0e 85 11 cd 14 85 23 33 26 68 29 02 30 ba 36
0xb470:                          db 26 01 26 01 d0 01 59 02 eb 02 80 04 66 05 9a 06
0xb480:                          db 8f 07 85 08 00 0f e1 11 c3 15 00 24 38 27 30 2a
0xb490:                          db 02 30 ba 36 26 01 26 01 d0 01 59 02 eb 02 80 04
0xb4a0:                          db 66 05 9a 06 8f 07 85 08 00 0f e1 11 c3 15 00 24
0xb4b0:                          db 38 27 30 2a 02 30 ba 36 66 02 66 02 b8 02 3d 03
0xb4c0:                          db cd 03 92 04 66 05 43 06 42 08 71 0a f6 0c 9a 12
0xb4d0:                          db 52 18 5c 1f 00 23 00 27 ac 2b fc 35 66 02 66 02
0xb4e0:                          db b8 02 3d 03 cd 03 92 04 66 05 43 06 42 08 71 0a
0xb4f0:                          db f6 0c 9a 12 52 18 5c 1f 00 23 00 27 ac 2b fc 35
0xb500:                          db 66 02 66 02 b8 02 3d 03 cd 03 92 04 66 05 43 06
0xb510:                          db 42 08 71 0a f6 0c 9a 12 52 18 5c 1f 00 23 00 27
0xb520:                          db ac 2b fc 35 66 02 66 02 b8 02 3d 03 cd 03 92 04
0xb530:                          db 66 05 43 06 42 08 71 0a f6 0c 9a 12 52 18 5c 1f
0xb540:                          db 00 23 00 27 ac 2b fc 35 66 02 66 02 b8 02 3d 03
0xb550:                          db cd 03 87 04 55 05 38 06 1c 08 15 0a f6 0c 9a 12
0xb560:                          db 52 18 5c 1f 00 23 00 27 ac 2b fc 35 1e 02 1e 02
0xb570:                          db 9e 02 0e 03 a0 03 71 04 3f 05 1d 06 0c 08 65 09
0xb580:                          db f6 0c 9a 12 52 18 5c 1f 00 23 00 27 ac 2b fc 35
0xb590:                          db f2 01 f2 01 6b 02 eb 02 97 03 25 04 dd 04 6a 05
0xb5a0:                          db e5 06 98 08 f6 0c 9a 12 52 18 5c 1f 00 23 00 27
0xb5b0:                          db ac 2b fc 35 8b 01 8b 01 0c 02 51 02 d1 02 6d 03
0xb5c0:                          db 10 04 bb 04 8b 05 70 07 f6 0c 9a 12 52 18 5c 1f
0xb5d0:                          db 00 23 00 27 ac 2b fc 35 69 01 69 01 c3 01 58 02
0xb5e0:                          db ba 02 4a 03 cf 03 aa 04 81 05 6b 07 f6 0c 9a 12
0xb5f0:                          db 52 18 5c 1f 00 23 00 27 ac 2b fc 35 71 01 71 01
0xb600:                          db d0 01 6b 02 c9 02 75 03 dc 03 bb 04 a3 05 c1 07
0xb610:                          db f6 0c 9a 12 52 18 5c 1f 00 23 00 27 ac 2b fc 35
0xb620:                          db 7a 01 7a 01 d9 01 63 02 c0 02 8f 03 18 04 ef 04
0xb630:                          db bd 05 e3 07 f6 0c 9a 12 52 18 5c 1f 00 23 00 27
0xb640:                          db ac 2b fc 35 8b 01 8b 01 ea 01 55 02 da 02 75 03
0xb650:                          db 21 04 f7 04 0a 06 28 08 f6 0c 9a 12 52 18 5c 1f
0xb660:                          db 00 23 00 27 ac 2b fc 35 96 01 96 01 f2 01 47 02
0xb670:                          db da 02 7d 03 65 04 09 05 47 06 41 08 f6 0c 9a 12
0xb680:                          db 52 18 5c 1f 00 23 00 27 ac 2b fc 35 7a 01 7a 01
0xb690:                          db ea 01 47 02 05 03 8f 03 6e 04 67 05 94 06 48 08
0xb6a0:                          db f6 0c 9a 12 52 18 5c 1f 00 23 00 27 ac 2b fc 35
0xb6b0:                          db 60 01 60 01 d9 01 48 02 fd 02 6c 03 54 04 5f 05
0xb6c0:                          db 71 06 0a 08 c3 0b 71 10 7b 18 d7 1f cd 23 ce 27
0xb6d0:                          db 24 2c ba 36 3b 01 3b 01 d0 01 62 02 4a 03 d3 03
0xb6e0:                          db b3 04 a3 05 c7 06 66 08 48 0b 1f 0f a4 18 cd 20
0xb6f0:                          db 66 24 64 28 e2 2c 32 37 f6 00 f6 00 9c 01 af 02
0xb700:                          db 4a 03 d3 03 b3 04 a3 05 c7 06 66 08 3d 0c c3 0e
0xb710:                          db 8f 16 33 23 cd 26 cc 29 54 2e f0 37 f6 00 f6 00
0xb720:                          db 9c 01 af 02 4a 03 d3 03 b3 04 a3 05 c7 06 66 08
0xb730:                          db 00 0c 85 0e 9a 15 29 24 38 27 30 2a 44 2f da 39
0xb740:                          db f6 00 f6 00 9c 01 af 02 4a 03 d3 03 b3 04 a3 05
0xb750:                          db c7 06 66 08 00 0c 85 0e 52 14 0a 23 00 26 cc 29
0xb760:                          db 90 2e 16 3a f6 00 f6 00 9c 01 af 02 4a 03 d3 03
0xb770:                          db b3 04 a3 05 c7 06 66 08 00 0c 85 0e 52 14 0a 23
0xb780:                          db 00 26 cc 29 90 2e 16 3a f6 00 f6 00 9c 01 af 02
0xb790:                          db 4a 03 d3 03 b3 04 a3 05 c7 06 66 08 00 0c 85 0e
0xb7a0:                          db 52 14 0a 23 00 26 cc 29 90 2e 16 3a f6 00 f6 00
0xb7b0:                          db 9c 01 af 02 4a 03 d3 03 b3 04 a3 05 c7 06 66 08
0xb7c0:                          db 00 0c ec 0d 8f 12 9a 21 9a 25 c8 28 96 2d aa 37
0xb7d0:                          db f6 00 f6 00 9c 01 af 02 4a 03 d3 03 b3 04 a3 05
0xb7e0:                          db c7 06 66 08 00 0c ec 0d 8f 12 9a 21 9a 25 c8 28
0xb7f0:                          db 96 2d aa 37 f6 00 f6 00 9c 01 af 02 4a 03 d3 03
0xb800:                          db b3 04 a3 05 c7 06 66 08 d7 0c 85 0e 66 12 b8 22
0xb810:                          db 66 26 30 2a cc 2e 16 3a f6 00 f6 00 9c 01 af 02
0xb820:                          db 4a 03 d3 03 b3 04 a3 05 c7 06 66 08 f6 0c b8 0f
0xb830:                          db e1 12 0a 23 38 27 30 2a 08 2f 9e 39 f6 00 f6 00
0xb840:                          db 9c 01 af 02 4a 03 d3 03 b3 04 a3 05 c7 06 66 08
0xb850:                          db f6 0c 33 10 5c 13 ae 23 38 27 30 2a 44 2f 8e 3a
0xb860:                          db 1a 03 1a 03 62 03 b4 03 05 04 9d 04 6e 05 6f 06
0xb870:                          db 43 08 78 0a f6 0c b8 12 7b 18 33 1f 33 23 9a 26
0xb880:                          db 3a 2a 32 37 1a 03 1a 03 62 03 b4 03 05 04 9d 04
0xb890:                          db 6e 05 6f 06 43 08 78 0a f6 0c b8 12 7b 18 33 1f
0xb8a0:                          db 33 23 9a 26 3a 2a 32 37 1a 03 1a 03 62 03 b4 03
0xb8b0:                          db 05 04 9d 04 6e 05 6f 06 43 08 78 0a f6 0c b8 12
0xb8c0:                          db 7b 18 33 1f 33 23 9a 26 3a 2a 32 37 1a 03 1a 03
0xb8d0:                          db 62 03 b4 03 05 04 9d 04 6e 05 6f 06 43 08 78 0a
0xb8e0:                          db f6 0c b8 12 7b 18 33 1f 33 23 9a 26 3a 2a 32 37
0xb8f0:                          db 1a 03 1a 03 74 03 c6 03 05 04 92 04 65 05 59 06
0xb900:                          db 0a 08 1e 0a f6 0c b8 12 7b 18 33 1f 33 23 9a 26
0xb910:                          db 3a 2a 32 37 40 02 40 02 8d 02 0e 03 da 03 7c 04
0xb920:                          db 38 05 39 06 67 07 57 09 f6 0c b8 12 7b 18 33 1f
0xb930:                          db 33 23 9a 26 3a 2a 32 37 69 01 69 01 f9 01 a7 02
0xb940:                          db 98 03 50 04 14 05 0b 06 fc 06 37 08 f6 0c b8 12
0xb950:                          db 7b 18 33 1f 33 23 9a 26 3a 2a 32 37 84 01 84 01
0xb960:                          db 14 02 84 02 fd 02 7d 03 e8 03 aa 04 a9 05 45 07
0xb970:                          db f6 0c b8 12 7b 18 33 1f 33 23 9a 26 3a 2a 32 37
0xb980:                          db 8d 01 8d 01 d5 01 73 02 eb 02 86 03 dc 03 aa 04
0xb990:                          db 9b 05 0c 07 f6 0c b8 12 7b 18 33 1f 33 23 9a 26
0xb9a0:                          db 3a 2a 32 37 8d 01 8d 01 d5 01 62 02 c9 02 75 03
0xb9b0:                          db fe 03 cd 04 ce 05 96 07 f6 0c b8 12 7b 18 33 1f
0xb9c0:                          db 33 23 9a 26 3a 2a 32 37 8d 01 8d 01 d9 01 48 02
0xb9d0:                          db d2 02 86 03 4c 04 3c 05 35 06 fd 07 f6 0c b8 12
0xb9e0:                          db 7b 18 33 1f 33 23 9a 26 3a 2a 32 37 9f 01 9f 01
0xb9f0:                          db d5 01 49 02 d2 02 97 03 77 04 9b 05 60 06 30 08
0xba00:                          db f6 0c b8 12 7b 18 33 1f 33 23 9a 26 3a 2a 32 37
0xba10:                          db 69 01 69 01 de 01 52 02 e3 02 8f 03 7f 04 9b 05
0xba20:                          db a5 06 1f 08 f6 0c b8 12 7b 18 33 1f 33 23 9a 26
0xba30:                          db 3a 2a 32 37 45 01 45 01 e1 01 52 02 c9 02 97 03
0xba40:                          db 6e 04 92 05 d7 06 66 08 f6 0c b8 12 7b 18 33 1f
0xba50:                          db 33 23 9a 26 3a 2a 32 37 90 01 90 01 28 02 84 02
0xba60:                          db c0 02 86 03 90 04 78 05 9a 06 ec 07 e1 0b 52 10
0xba70:                          db cd 18 85 1f 9a 23 38 27 34 2b a4 38 71 01 71 01
0xba80:                          db f2 01 7c 02 eb 02 a8 03 a2 04 92 05 bf 06 29 08
0xba90:                          db 29 0b 3d 0f cd 18 1f 21 cd 24 64 28 70 2b da 39
0xbaa0:                          db 45 01 45 01 f2 01 b8 02 30 03 a8 03 a2 04 92 05
0xbab0:                          db bf 06 29 08 1f 0c 3d 0f 0a 17 ae 23 38 27 62 2a
0xbac0:                          db dc 2d 88 3b 45 01 45 01 f2 01 b8 02 30 03 a8 03
0xbad0:                          db a2 04 92 05 bf 06 29 08 3d 0c c3 0e ec 15 52 24
0xbae0:                          db 9c 27 62 2a 08 2f 36 3d 45 01 45 01 f2 01 b8 02
0xbaf0:                          db 30 03 a8 03 a2 04 92 05 bf 06 29 08 c3 0b 48 0e
0xbb00:                          db 7b 14 ae 23 33 26 fe 29 08 2f 36 3d 45 01 45 01
0xbb10:                          db f2 01 b8 02 30 03 a8 03 a2 04 92 05 bf 06 29 08
0xbb20:                          db c3 0b 48 0e 7b 14 ae 23 33 26 fe 29 08 2f 36 3d
0xbb30:                          db 45 01 45 01 f2 01 b8 02 30 03 a8 03 a2 04 92 05
0xbb40:                          db bf 06 29 08 c3 0b 48 0e 7b 14 ae 23 33 26 fe 29
0xbb50:                          db 08 2f 36 3d 45 01 45 01 f2 01 b8 02 30 03 a8 03
0xbb60:                          db a2 04 92 05 bf 06 29 08 c3 0b cd 0d 0a 13 9a 21
0xbb70:                          db 66 25 c8 28 08 2f 36 3d 45 01 45 01 f2 01 b8 02
0xbb80:                          db 30 03 a8 03 a2 04 92 05 bf 06 29 08 c3 0b cd 0d
0xbb90:                          db 0a 13 9a 21 66 25 c8 28 08 2f 36 3d 45 01 45 01
0xbba0:                          db f2 01 b8 02 30 03 a8 03 a2 04 92 05 bf 06 29 08
0xbbb0:                          db b8 0c 3d 0f 66 12 8f 22 00 26 62 2a 08 2f 36 3d
0xbbc0:                          db 45 01 45 01 f2 01 b8 02 30 03 a8 03 a2 04 92 05
0xbbd0:                          db bf 06 29 08 52 0d 71 10 33 13 d7 23 38 27 62 2a
0xbbe0:                          db 08 2f 36 3d 45 01 45 01 f2 01 b8 02 30 03 a8 03
0xbbf0:                          db a2 04 92 05 bf 06 29 08 52 0d 71 10 33 13 d7 23
0xbc00:                          db 38 27 62 2a 08 2f 36 3d c9 02 c9 02 86 03 32 04
0xbc10:                          db 83 04 1e 05 dc 05 de 06 c9 07 f6 09 8f 0d 8f 13
0xbc20:                          db ec 19 a4 20 9a 24 96 28 a6 2c 2c 38 c9 02 c9 02
0xbc30:                          db 86 03 32 04 83 04 1e 05 dc 05 de 06 c9 07 f6 09
0xbc40:                          db 8f 0d 8f 13 ec 19 a4 20 9a 24 96 28 a6 2c 2c 38
0xbc50:                          db c9 02 c9 02 86 03 32 04 83 04 1e 05 dc 05 de 06
0xbc60:                          db c9 07 f6 09 8f 0d 8f 13 ec 19 a4 20 9a 24 96 28
0xbc70:                          db a6 2c 2c 38 c9 02 c9 02 86 03 32 04 83 04 1e 05
0xbc80:                          db d5 05 de 06 c9 07 f6 09 8f 0d 8f 13 ec 19 a4 20
0xbc90:                          db 9a 24 96 28 a6 2c 2c 38 c9 02 c9 02 59 03 c6 03
0xbca0:                          db 68 04 fe 04 b6 05 b8 06 8b 07 8e 09 8f 0d 8f 13
0xbcb0:                          db ec 19 a4 20 9a 24 96 28 a6 2c 2c 38 62 02 62 02
0xbcc0:                          db e3 02 30 03 f6 03 b2 04 65 05 6c 06 40 07 a3 08
0xbcd0:                          db 8f 0d 8f 13 ec 19 a4 20 9a 24 96 28 a6 2c 2c 38
0xbce0:                          db 2e 02 2e 02 8d 02 d2 02 7d 03 29 04 01 05 ef 05
0xbcf0:                          db 98 06 bf 07 8f 0d 8f 13 ec 19 a4 20 9a 24 96 28
0xbd00:                          db a6 2c 2c 38 e1 01 e1 01 37 02 8d 02 dd 02 77 03
0xbd10:                          db e5 03 92 04 56 05 5d 06 8f 0d 8f 13 ec 19 a4 20
0xbd20:                          db 9a 24 96 28 a6 2c 2c 38 a8 01 a8 01 0c 02 58 02
0xbd30:                          db ca 02 6b 03 e5 03 90 04 34 05 4f 06 8f 0d 8f 13
0xbd40:                          db ec 19 a4 20 9a 24 96 28 a6 2c 2c 38 71 01 71 01
0xbd50:                          db fb 01 62 02 ab 02 90 03 10 04 de 04 81 05 f2 06
0xbd60:                          db 8f 0d 8f 13 ec 19 a4 20 9a 24 96 28 a6 2c 2c 38
0xbd70:                          db 69 01 69 01 ea 01 51 02 ab 02 99 03 54 04 67 05
0xbd80:                          db 0a 06 af 07 8f 0d 8f 13 ec 19 a4 20 9a 24 96 28
0xbd90:                          db a6 2c 2c 38 69 01 69 01 ea 01 51 02 c9 02 c2 03
0xbda0:                          db 7f 04 a3 05 47 06 fd 07 8f 0d 8f 13 ec 19 a4 20
0xbdb0:                          db 9a 24 96 28 a6 2c 2c 38 46 01 46 01 d9 01 26 02
0xbdc0:                          db eb 02 dc 03 90 04 b4 05 a5 06 97 08 8f 0d 8f 13
0xbdd0:                          db ec 19 a4 20 9a 24 96 28 a6 2c 2c 38 45 01 45 01
0xbde0:                          db ea 01 59 02 05 03 cb 03 90 04 bd 05 b6 06 e1 08
0xbdf0:                          db 8f 0d 8f 13 ec 19 a4 20 9a 24 96 28 a6 2c 2c 38
0xbe00:                          db 58 01 58 01 03 02 51 02 0e 03 ba 03 b3 04 df 05
0xbe10:                          db d0 06 66 08 7b 0c 66 11 9a 19 71 21 9a 25 68 29
0xbe20:                          db e2 2c e0 38 6d 01 6d 01 0c 02 73 02 1f 03 cb 03
0xbe30:                          db cd 04 02 06 fb 06 c3 08 00 0c 8f 10 9a 19 85 23
0xbe40:                          db 00 27 d0 2a c6 2f 52 3a 6d 01 6d 01 0c 02 73 02
0xbe50:                          db 1f 03 cb 03 cd 04 02 06 fb 06 c3 08 8f 0d ec 10
0xbe60:                          db cd 18 ec 25 9a 29 9c 2c b0 31 88 3b 6d 01 6d 01
0xbe70:                          db 0c 02 73 02 1f 03 cb 03 cd 04 02 06 fb 06 c3 08
0xbe80:                          db ae 0d cd 10 5c 17 c3 25 9a 29 6a 2c b0 31 c4 3b
0xbe90:                          db 6d 01 6d 01 0c 02 73 02 1f 03 cb 03 cd 04 02 06
0xbea0:                          db fb 06 c3 08 a4 0e 66 11 c3 15 48 25 64 28 fc 2b
0xbeb0:                          db f2 30 ca 3a 6d 01 6d 01 0c 02 73 02 1f 03 cb 03
0xbec0:                          db cd 04 02 06 fb 06 c3 08 a4 0e 66 11 c3 15 48 25
0xbed0:                          db 64 28 fc 2b f2 30 ca 3a 6d 01 6d 01 0c 02 73 02
0xbee0:                          db 1f 03 cb 03 cd 04 02 06 fb 06 c3 08 a4 0e 66 11
0xbef0:                          db c3 15 48 25 64 28 fc 2b f2 30 ca 3a 6d 01 6d 01
0xbf00:                          db 0c 02 73 02 1f 03 cb 03 cd 04 02 06 fb 06 c3 08
0xbf10:                          db 29 0e 71 10 a4 14 e1 22 9a 26 fe 29 cc 2e 16 3a
0xbf20:                          db 6d 01 6d 01 0c 02 73 02 1f 03 cb 03 cd 04 02 06
0xbf30:                          db fb 06 c3 08 29 0e 71 10 a4 14 e1 22 9a 26 fe 29
0xbf40:                          db cc 2e 16 3a 6d 01 6d 01 0c 02 73 02 1f 03 cb 03
0xbf50:                          db cd 04 02 06 fb 06 c3 08 e1 0e 00 12 7b 14 d7 23
0xbf60:                          db 9a 26 d0 2a 3e 30 ca 3a 6d 01 6d 01 0c 02 73 02
0xbf70:                          db 1f 03 cb 03 cd 04 02 06 fb 06 c3 08 c3 0e 3d 12
0xbf80:                          db f6 14 7b 24 cd 26 34 2b f2 30 06 3b 6d 01 6d 01
0xbf90:                          db 0c 02 73 02 1f 03 cb 03 cd 04 02 06 fb 06 c3 08
0xbfa0:                          db c3 0e c3 11 48 15 52 24 ce 27 fc 2b b6 30 ca 3a
0xbfb0:                          db 00 05 26 00 44 00 61 00 7d 00 9f 00 c0 00 db 00
0xbfc0:                          db 05 01 27 01 47 01 62 01 8d 01 a9 01 c5 01 ee 01
0xbfd0:                          db 28 02 5c 03 17 00 27 00 42 00 61 00 7d 00 9e 00
0xbfe0:                          db c1 00 db 00 fc 00 26 01 40 01 60 01 89 01 a2 01
0xbff0:                          db c4 01 ed 01 28 02 5c 03 16 00 26 00 43 00 5f 00
0xc000:                          db 80 00 a2 00 c4 00 de 00 fb 00 2b 01 40 01 61 01
0xc010:                          db 8d 01 a6 01 c5 01 ee 01 28 02 5d 03 16 00 29 00
0xc020:                          db 41 00 5e 00 84 00 a2 00 c4 00 df 00 02 01 26 01
0xc030:                          db 40 01 64 01 8e 01 aa 01 c4 01 f1 01 28 02 77 03
0xc040:                          db 26 00 2c 00 41 00 61 00 83 00 a1 00 fb 00 e1 00
0xc050:                          db 0a 01 2c 01 4a 01 70 01 98 01 b2 01 cd 01 f5 01
0xc060:                          db 2b 02 98 03 15 00 27 00 46 00 65 00 81 00 aa 00
0xc070:                          db cb 00 e8 00 10 01 35 01 54 01 78 01 9b 01 b8 01
0xc080:                          db d9 01 fa 01 2d 02 dd 03 0d 00 24 00 47 00 65 00
0xc090:                          db 84 00 a5 00 c2 00 e5 00 0c 01 2c 01 50 01 70 01
0xc0a0:                          db 97 01 b6 01 d4 01 f4 01 2c 02 41 04 0c 00 2b 00
0xc0b0:                          db 44 00 60 00 8c 00 a8 00 c9 00 e5 00 09 01 2e 01
0xc0c0:                          db 4c 01 6f 01 96 01 b5 01 d5 01 f5 01 37 02 6f 04
0xc0d0:                          db 21 00 36 00 4e 00 69 00 96 00 b0 00 d0 00 f1 00
0xc0e0:                          db 0e 01 35 01 51 01 71 01 96 01 c4 01 d7 01 f9 01
0xc0f0:                          db 4e 02 7e 04 21 00 36 00 57 00 70 00 91 00 ae 00
0xc100:                          db d4 00 f5 00 0f 01 32 01 50 01 74 01 95 01 be 01
0xc110:                          db d9 01 f8 01 5e 02 86 04 2e 00 47 00 5f 00 81 00
0xc120:                          db 9f 00 ba 00 e0 00 fc 00 17 01 3a 01 55 01 7a 01
0xc130:                          db 9e 01 bf 01 d7 01 02 02 65 02 86 04 20 00 3e 00
0xc140:                          db 57 00 77 00 99 00 b4 00 dc 00 ff 00 16 01 34 01
0xc150:                          db 53 01 7a 01 a7 01 c3 01 dc 01 0b 02 5e 02 5f 04
0xc160:                          db 25 00 41 00 56 00 7a 00 97 00 b7 00 ee 00 06 01
0xc170:                          db 1d 01 3c 01 5e 01 8a 01 b5 01 d7 01 f3 01 14 02
0xc180:                          db 60 02 c6 03 32 00 47 00 62 00 7f 00 a0 00 c9 00
0xc190:                          db f9 00 18 01 33 01 51 01 71 01 9d 01 b7 01 dc 01
0xc1a0:                          db 00 02 24 02 64 02 af 03 49 00 5f 00 7c 00 95 00
0xc1b0:                          db ae 00 ce 00 f7 00 1c 01 37 01 5e 01 81 01 b1 01
0xc1c0:                          db be 01 de 01 fe 01 2e 02 65 02 a7 03 3b 00 5f 00
0xc1d0:                          db 8a 00 ad 00 c5 00 da 00 02 01 24 01 4f 01 6a 01
0xc1e0:                          db 90 01 cc 01 da 01 f4 01 17 02 3c 02 65 02 90 03
0xc1f0:                          db 51 00 5c 00 7a 00 a3 00 c5 00 da 00 07 01 2b 01
0xc200:                          db 50 01 60 01 90 01 c2 01 ec 01 00 02 0a 02 2a 02
0xc210:                          db 65 02 c6 03 50 00 62 00 77 00 9a 00 ad 00 bd 00
0xc220:                          db de 00 0a 01 46 01 69 01 97 01 b9 01 d2 01 fc 01
0xc230:                          db 14 02 29 02 78 02 ef 03 46 00 46 00 65 00 84 00
0xc240:                          db 9a 00 b7 00 e6 00 11 01 39 01 53 01 6f 01 8c 01
0xc250:                          db a8 01 c4 01 de 01 0d 02 5e 02 5f 04 4a 00 55 00
0xc260:                          db 76 00 94 00 b8 00 d5 00 f1 00 13 01 31 01 4a 01
0xc270:                          db 66 01 80 01 94 01 ad 01 cc 01 0d 02 5e 02 5f 04
0xc280:                          db 1f 00 26 00 4e 00 6e 00 8b 00 a1 00 b7 00 db 00
0xc290:                          db ff 00 27 01 4a 01 68 01 89 01 ad 01 cc 01 0d 02
0xc2a0:                          db 5e 02 5f 04 20 00 30 00 48 00 5e 00 87 00 9d 00
0xc2b0:                          db b6 00 d5 00 fc 00 25 01 4a 01 64 01 88 01 ad 01
0xc2c0:                          db cc 01 0d 02 5e 02 5f 04 34 00 30 00 47 00 5e 00
0xc2d0:                          db 81 00 9a 00 b5 00 d5 00 00 01 28 01 4b 01 65 01
0xc2e0:                          db 88 01 ad 01 cc 01 0d 02 5e 02 5f 04 30 00 30 00
0xc2f0:                          db 4e 00 64 00 87 00 9a 00 b4 00 d4 00 ff 00 22 01
0xc300:                          db 49 01 65 01 87 01 ad 01 cc 01 0d 02 5e 02 5f 04
0xc310:                          db 30 00 30 00 4e 00 64 00 87 00 97 00 b4 00 cf 00
0xc320:                          db fe 00 25 01 4a 01 65 01 88 01 ad 01 cc 01 0d 02
0xc330:                          db 5e 02 5f 04 30 00 30 00 4e 00 64 00 87 00 85 00
0xc340:                          db 97 00 b6 00 dc 00 0f 01 37 01 51 01 7f 01 ad 01
0xc350:                          db cc 01 0d 02 5e 02 5f 04 00 06 1c 00 3c 00 5b 00
0xc360:                          db 83 00 a3 00 d7 00 fb 00 25 01 42 01 64 01 a8 01
0xc370:                          db c4 01 d5 01 01 02 4d 02 ff 02 03 04 17 00 1c 00
0xc380:                          db 3f 00 61 00 7f 00 a4 00 d7 00 fa 00 28 01 3d 01
0xc390:                          db 62 01 a6 01 c5 01 da 01 02 02 43 02 ff 02 03 04
0xc3a0:                          db 17 00 1c 00 39 00 5e 00 82 00 a1 00 d3 00 fb 00
0xc3b0:                          db 27 01 3d 01 67 01 a9 01 ca 01 d7 01 02 02 49 02
0xc3c0:                          db ff 02 03 04 17 00 1c 00 42 00 61 00 81 00 a6 00
0xc3d0:                          db d6 00 ff 00 24 01 4a 01 6d 01 a8 01 cf 01 db 01
0xc3e0:                          db 02 02 49 02 ff 02 03 04 14 00 27 00 41 00 5a 00
0xc3f0:                          db 83 00 df 00 d0 00 f1 00 1b 01 43 01 66 01 97 01
0xc400:                          db c5 01 d5 01 f9 01 51 02 b0 02 dd 03 14 00 14 00
0xc410:                          db 35 00 54 00 83 00 a6 00 d4 00 f1 00 0f 01 34 01
0xc420:                          db 56 01 83 01 a3 01 c1 01 e6 01 2c 02 93 02 a7 03
0xc430:                          db 16 00 26 00 3d 00 59 00 83 00 a2 00 d0 00 ee 00
0xc440:                          db 0e 01 34 01 5a 01 88 01 a3 01 c1 01 e3 01 1e 02
0xc450:                          db 8c 02 6a 03 1a 00 2b 00 3f 00 5f 00 87 00 ae 00
0xc460:                          db d2 00 f5 00 15 01 35 01 5c 01 8f 01 ae 01 c7 01
0xc470:                          db e9 01 20 02 9b 02 4b 03 1a 00 2b 00 45 00 61 00
0xc480:                          db 85 00 c0 00 d7 00 fa 00 22 01 40 01 63 01 99 01
0xc490:                          db b8 01 d1 01 f2 01 3a 02 c1 02 44 03 18 00 31 00
0xc4a0:                          db 4f 00 6a 00 87 00 ae 00 ce 00 ee 00 11 01 36 01
0xc4b0:                          db 5d 01 91 01 b3 01 d3 01 f6 01 51 02 ef 02 71 03
0xc4c0:                          db 21 00 38 00 4e 00 6f 00 92 00 b2 00 cc 00 e9 00
0xc4d0:                          db 0e 01 37 01 5e 01 8c 01 b8 01 d9 01 04 02 81 02
0xc4e0:                          db 1d 03 03 04 22 00 35 00 50 00 6d 00 8d 00 a7 00
0xc4f0:                          db cc 00 e4 00 04 01 33 01 5a 01 87 01 b7 01 d5 01
0xc500:                          db 09 02 87 02 62 03 50 04 27 00 33 00 4f 00 6a 00
0xc510:                          db 91 00 b5 00 cf 00 ee 00 09 01 34 01 59 01 89 01
0xc520:                          db c1 01 de 01 09 02 93 02 89 03 6f 04 34 00 3e 00
0xc530:                          db 59 00 72 00 9a 00 c4 00 dd 00 ff 00 13 01 34 01
0xc540:                          db 5f 01 8c 01 c8 01 e6 01 1e 02 aa 02 b7 03 76 04
0xc550:                          db 33 00 47 00 66 00 80 00 9d 00 c0 00 df 00 fc 00
0xc560:                          db 0a 01 38 01 5b 01 89 01 cc 01 f6 01 37 02 a6 02
0xc570:                          db b7 03 6f 04 36 00 4e 00 6e 00 95 00 a2 00 c1 00
0xc580:                          db e3 00 fa 00 25 01 36 01 5b 01 85 01 b1 01 d8 01
0xc590:                          db 01 02 65 02 34 03 0b 04 31 00 50 00 6a 00 87 00
0xc5a0:                          db 9d 00 b8 00 d8 00 f0 00 1d 01 34 01 54 01 85 01
0xc5b0:                          db 9e 01 c0 01 ef 01 2c 02 ef 02 be 03 37 00 4c 00
0xc5c0:                          db 60 00 7b 00 92 00 b9 00 d4 00 f4 00 0f 01 32 01
0xc5d0:                          db 53 01 81 01 aa 01 c3 01 eb 01 27 02 c1 02 98 03
0xc5e0:                          db 2d 00 3d 00 5c 00 7a 00 96 00 b2 00 d4 00 f2 00
0xc5f0:                          db 21 01 46 01 68 01 93 01 b0 01 d6 01 03 02 52 02
0xc600:                          db 9b 02 b7 03 2f 00 47 00 61 00 84 00 ab 00 bd 00
0xc610:                          db dd 00 fc 00 1d 01 39 01 6d 01 90 01 b2 01 c0 01
0xc620:                          db e7 01 3c 02 93 02 7e 04 24 00 24 00 46 00 5c 00
0xc630:                          db 8b 00 a5 00 b5 00 d4 00 ec 00 16 01 3f 01 70 01
0xc640:                          db a0 01 c0 01 e7 01 29 02 93 02 9d 04 16 00 1d 00
0xc650:                          db 37 00 4c 00 84 00 a4 00 b3 00 ce 00 ea 00 11 01
0xc660:                          db 3c 01 6d 01 9e 01 c0 01 e7 01 27 02 93 02 b4 04
0xc670:                          db 25 00 29 00 34 00 4d 00 84 00 a9 00 bb 00 d4 00
0xc680:                          db f6 00 1d 01 42 01 6e 01 9e 01 c0 01 e7 01 27 02
0xc690:                          db 93 02 6f 04 19 00 20 00 34 00 51 00 81 00 a4 00
0xc6a0:                          db b1 00 d0 00 ef 00 13 01 40 01 6d 01 9e 01 c0 01
0xc6b0:                          db e7 01 21 02 93 02 58 04 19 00 20 00 34 00 51 00
0xc6c0:                          db 81 00 a4 00 b3 00 ce 00 ef 00 0f 01 41 01 6d 01
0xc6d0:                          db 9e 01 c0 01 e7 01 26 02 93 02 58 04 19 00 20 00
0xc6e0:                          db 34 00 51 00 6e 00 99 00 a4 00 bd 00 e9 00 05 01
0xc6f0:                          db 2b 01 5d 01 9e 01 c0 01 e7 01 05 02 93 02 58 04
0xc700:                          db 00 07 19 00 24 00 3e 00 49 00 6e 00 95 00 c1 00
0xc710:                          db e4 00 15 01 3d 01 54 01 6b 01 88 01 ac 01 d9 01
0xc720:                          db 74 02 be 03 1c 00 19 00 24 00 3d 00 4a 00 64 00
0xc730:                          db 95 00 ba 00 e2 00 11 01 3f 01 54 01 6e 01 8b 01
0xc740:                          db ad 01 da 01 74 02 be 03 17 00 17 00 23 00 3d 00
0xc750:                          db 4c 00 64 00 97 00 b9 00 e7 00 14 01 3b 01 55 01
0xc760:                          db 6b 01 8d 01 ab 01 df 01 74 02 be 03 19 00 19 00
0xc770:                          db 21 00 3e 00 4c 00 63 00 89 00 b7 00 dd 00 11 01
0xc780:                          db 44 01 59 01 6f 01 8f 01 ac 01 de 01 74 02 be 03
0xc790:                          db 12 00 24 00 3c 00 44 00 53 00 6a 00 d8 00 c3 00
0xc7a0:                          db e7 00 0b 01 23 01 3c 01 73 01 8c 01 a7 01 db 01
0xc7b0:                          db 3f 02 be 03 11 00 17 00 35 00 4f 00 66 00 84 00
0xc7c0:                          db a3 00 ce 00 e8 00 0a 01 1d 01 35 01 5e 01 7c 01
0xc7d0:                          db a2 01 d6 01 3f 02 f4 03 14 00 25 00 2f 00 4e 00
0xc7e0:                          db 69 00 84 00 9f 00 c3 00 e4 00 00 01 27 01 40 01
0xc7f0:                          db 61 01 7c 01 9d 01 d8 01 30 02 03 04 14 00 25 00
0xc800:                          db 3d 00 52 00 6d 00 87 00 ab 00 c7 00 ea 00 02 01
0xc810:                          db 2e 01 48 01 6d 01 87 01 9d 01 c4 01 20 02 0b 04
0xc820:                          db 29 00 36 00 4a 00 61 00 80 00 a3 00 b1 00 d2 00
0xc830:                          db ee 00 0f 01 3a 01 52 01 79 01 8f 01 ab 01 c6 01
0xc840:                          db 23 02 03 04 2b 00 31 00 4e 00 61 00 84 00 9f 00
0xc850:                          db bb 00 d2 00 ec 00 08 01 30 01 4c 01 6b 01 86 01
0xc860:                          db a9 01 cf 01 31 02 d5 03 2b 00 40 00 55 00 71 00
0xc870:                          db 85 00 ad 00 cb 00 dd 00 f3 00 08 01 34 01 50 01
0xc880:                          db 6d 01 85 01 b2 01 db 01 4c 02 b7 03 29 00 31 00
0xc890:                          db 3f 00 64 00 78 00 9b 00 b7 00 d6 00 ec 00 04 01
0xc8a0:                          db 25 01 46 01 6a 01 7f 01 ae 01 d1 01 51 02 dd 03
0xc8b0:                          db 14 00 26 00 36 00 5e 00 7c 00 a2 00 b6 00 d0 00
0xc8c0:                          db ed 00 0f 01 25 01 48 01 6c 01 83 01 aa 01 d2 01
0xc8d0:                          db 6a 02 39 04 1e 00 2f 00 48 00 64 00 82 00 a5 00
0xc8e0:                          db c0 00 e3 00 03 01 23 01 38 01 5f 01 75 01 87 01
0xc8f0:                          db bd 01 eb 01 83 02 48 04 2f 00 3f 00 5f 00 80 00
0xc900:                          db 96 00 b3 00 cf 00 e7 00 05 01 27 01 40 01 5d 01
0xc910:                          db 7c 01 93 01 c8 01 f2 01 84 02 39 04 2e 00 47 00
0xc920:                          db 61 00 8b 00 97 00 b6 00 d0 00 f2 00 1b 01 3b 01
0xc930:                          db 54 01 68 01 7c 01 9a 01 bd 01 df 01 5e 02 e5 03
0xc940:                          db 38 00 4c 00 66 00 89 00 95 00 b4 00 cc 00 e7 00
0xc950:                          db 18 01 33 01 4c 01 6a 01 8b 01 9a 01 b8 01 e2 01
0xc960:                          db 55 02 af 03 3f 00 49 00 65 00 7c 00 94 00 b3 00
0xc970:                          db c8 00 eb 00 10 01 2d 01 4a 01 62 01 82 01 a3 01
0xc980:                          db b4 01 ed 01 46 02 a7 03 3c 00 49 00 61 00 7b 00
0xc990:                          db 91 00 a9 00 ce 00 eb 00 0d 01 43 01 5a 01 69 01
0xc9a0:                          db 8c 01 b0 01 c7 01 04 02 52 02 c6 03 3b 00 55 00
0xc9b0:                          db 6f 00 82 00 99 00 b2 00 cd 00 e9 00 0d 01 34 01
0xc9c0:                          db 53 01 6d 01 8b 01 aa 01 ba 01 ec 01 43 02 c6 03
0xc9d0:                          db 2d 00 40 00 4e 00 61 00 7f 00 95 00 af 00 cc 00
0xc9e0:                          db f2 00 0d 01 26 01 47 01 68 01 7f 01 99 01 d1 01
0xc9f0:                          db 11 02 03 04 2d 00 37 00 4e 00 5f 00 7b 00 95 00
0xca00:                          db ae 00 cf 00 f2 00 0c 01 2c 01 47 01 67 01 78 01
0xca10:                          db 88 01 b7 01 11 02 41 04 33 00 3a 00 4f 00 61 00
0xca20:                          db 7c 00 96 00 ae 00 cc 00 f1 00 10 01 2a 01 48 01
0xca30:                          db 67 01 79 01 88 01 b6 01 11 02 41 04 3f 00 3d 00
0xca40:                          db 51 00 64 00 7b 00 9a 00 ae 00 cd 00 f4 00 12 01
0xca50:                          db 2a 01 4a 01 66 01 76 01 86 01 b7 01 11 02 1a 04
0xca60:                          db 2e 00 43 00 54 00 63 00 7b 00 98 00 ad 00 ce 00
0xca70:                          db f0 00 10 01 2c 01 4a 01 63 01 77 01 87 01 b6 01
0xca80:                          db 11 02 1a 04 2e 00 2e 00 46 00 57 00 6e 00 9a 00
0xca90:                          db ab 00 c7 00 ee 00 04 01 28 01 42 01 60 01 70 01
0xcaa0:                          db 78 01 a2 01 11 02 1a 04 00 08 1c 00 36 00 4f 00
0xcab0:                          db 7f 00 9f 00 b4 00 d4 00 07 01 1a 01 2d 01 5e 01
0xcac0:                          db 82 01 a2 01 c4 01 eb 01 5e 02 50 04 1c 00 1c 00
0xcad0:                          db 37 00 50 00 80 00 9e 00 b6 00 d7 00 02 01 18 01
0xcae0:                          db 34 01 66 01 85 01 a4 01 c4 01 eb 01 5e 02 50 04
0xcaf0:                          db 19 00 19 00 38 00 4c 00 7d 00 9c 00 b7 00 d7 00
0xcb00:                          db 0d 01 20 01 38 01 67 01 85 01 a4 01 c4 01 eb 01
0xcb10:                          db 5e 02 50 04 17 00 17 00 31 00 4a 00 80 00 9c 00
0xcb20:                          db bb 00 d6 00 09 01 1d 01 36 01 6a 01 8b 01 a5 01
0xcb30:                          db c4 01 eb 01 5e 02 50 04 14 00 21 00 3c 00 51 00
0xcb40:                          db 7b 00 e3 00 ba 00 d9 00 01 01 1c 01 36 01 69 01
0xcb50:                          db 8e 01 9f 01 c1 01 da 01 5d 02 0c 04 14 00 14 00
0xcb60:                          db 36 00 59 00 7a 00 9b 00 be 00 e1 00 02 01 1f 01
0xcb70:                          db 3d 01 6b 01 81 01 95 01 bf 01 e1 01 46 02 39 04
0xcb80:                          db 0e 00 25 00 39 00 53 00 78 00 94 00 bb 00 da 00
0xcb90:                          db fb 00 19 01 3b 01 63 01 8d 01 a1 01 c9 01 e9 01
0xcba0:                          db 3f 02 0b 04 0d 00 1b 00 2f 00 59 00 81 00 9d 00
0xcbb0:                          db bf 00 df 00 fe 00 1f 01 4b 01 66 01 91 01 ad 01
0xcbc0:                          db dd 01 f5 01 44 02 90 03 23 00 23 00 48 00 63 00
0xcbd0:                          db 87 00 a9 00 cd 00 e8 00 08 01 29 01 58 01 7a 01
0xcbe0:                          db 97 01 c6 01 f2 01 09 02 54 02 5c 03 24 00 24 00
0xcbf0:                          db 43 00 69 00 85 00 ac 00 c4 00 e7 00 01 01 23 01
0xcc00:                          db 50 01 77 01 94 01 ba 01 dd 01 00 02 5a 02 71 03
0xcc10:                          db 28 00 41 00 4d 00 76 00 97 00 b1 00 cd 00 e6 00
0xcc20:                          db 0e 01 27 01 54 01 75 01 95 01 c1 01 cf 01 03 02
0xcc30:                          db 68 02 90 03 24 00 24 00 4c 00 6d 00 8e 00 a9 00
0xcc40:                          db c7 00 e7 00 07 01 21 01 53 01 77 01 90 01 c0 01
0xcc50:                          db d2 01 fe 01 8c 02 be 03 1f 00 33 00 4e 00 68 00
0xcc60:                          db 8c 00 ac 00 ca 00 e7 00 0a 01 26 01 56 01 87 01
0xcc70:                          db aa 01 cb 01 ef 01 21 02 c1 02 dd 03 1f 00 35 00
0xcc80:                          db 5c 00 76 00 9f 00 c6 00 dc 00 f5 00 13 01 39 01
0xcc90:                          db 68 01 8d 01 a6 01 c3 01 ef 01 2c 02 d8 02 dd 03
0xcca0:                          db 34 00 40 00 5f 00 7f 00 a2 00 c1 00 dd 00 ec 00
0xccb0:                          db 0e 01 3b 01 5b 01 78 01 ad 01 c9 01 eb 01 34 02
0xccc0:                          db d1 02 ce 03 34 00 34 00 61 00 8f 00 a0 00 c7 00
0xccd0:                          db e7 00 01 01 15 01 46 01 62 01 6c 01 a2 01 c0 01
0xcce0:                          db d8 01 05 02 8c 02 6a 03 34 00 37 00 5f 00 7e 00
0xccf0:                          db ab 00 ce 00 e4 00 f6 00 17 01 44 01 6c 01 81 01
0xcd00:                          db 93 01 b1 01 d4 01 fa 01 6d 02 2d 03 31 00 44 00
0xcd10:                          db 60 00 7b 00 9c 00 b7 00 cd 00 f8 00 19 01 42 01
0xcd20:                          db 5e 01 73 01 a2 01 b4 01 e0 01 03 02 47 02 37 03
0xcd30:                          db 2e 00 33 00 55 00 6f 00 8d 00 b0 00 da 00 f4 00
0xcd40:                          db 23 01 52 01 68 01 84 01 b4 01 d3 01 ed 01 2f 02
0xcd50:                          db 7c 02 d3 03 26 00 4b 00 69 00 86 00 ac 00 ca 00
0xcd60:                          db e4 00 fd 00 27 01 45 01 65 01 87 01 af 01 ba 01
0xcd70:                          db d7 01 18 02 64 02 f0 03 25 00 2e 00 4e 00 6f 00
0xcd80:                          db 89 00 a6 00 bf 00 dc 00 ff 00 21 01 47 01 6c 01
0xcd90:                          db 9c 01 b1 01 dd 01 07 02 71 02 22 04 31 00 34 00
0xcda0:                          db 44 00 66 00 84 00 a3 00 b6 00 cf 00 f0 00 10 01
0xcdb0:                          db 36 01 5e 01 8a 01 a0 01 cb 01 02 02 4f 02 86 04
0xcdc0:                          db 2b 00 2e 00 39 00 5a 00 76 00 a0 00 b3 00 cd 00
0xcdd0:                          db e7 00 07 01 2c 01 5a 01 7d 01 8f 01 c8 01 f2 01
0xcde0:                          db 41 02 58 04 32 00 31 00 46 00 61 00 79 00 9c 00
0xcdf0:                          db b1 00 cd 00 ea 00 07 01 2e 01 59 01 7a 01 8f 01
0xce00:                          db c4 01 f2 01 39 02 f4 03 32 00 31 00 46 00 61 00
0xce10:                          db 79 00 9d 00 b4 00 cd 00 ed 00 07 01 2f 01 5d 01
0xce20:                          db 80 01 8f 01 c5 01 f2 01 3f 02 f4 03 32 00 31 00
0xce30:                          db 46 00 61 00 79 00 92 00 a1 00 bb 00 d7 00 f8 00
0xce40:                          db 23 01 46 01 70 01 8f 01 c5 01 f2 01 38 02 f4 03
0xce50:                          db 36 06 ec 06 96 08 79 09 b7 09 f5 09 44 0a 85 0a
0xce60:                          db cd 0a 16 0b 7f 0b fc 0b 3d 0d 08 0e 5e 0e e8 0e
0xce70:                          db e8 0e e8 0e 36 06 ec 06 96 08 79 09 b7 09 f5 09
0xce80:                          db 44 0a 85 0a cd 0a 16 0b 7f 0b fc 0b 3d 0d 08 0e
0xce90:                          db 5e 0e e8 0e e8 0e e8 0e 36 06 ec 06 96 08 79 09
0xcea0:                          db b7 09 f5 09 44 0a 85 0a cd 0a 16 0b 7f 0b fc 0b
0xceb0:                          db 3d 0d 08 0e 5e 0e e8 0e e8 0e e8 0e 36 06 ec 06
0xcec0:                          db 96 08 79 09 b7 09 f5 09 44 0a 85 0a cd 0a 16 0b
0xced0:                          db 7f 0b fc 0b 3d 0d 08 0e 5e 0e e8 0e e8 0e e8 0e
0xcee0:                          db 36 06 ec 06 96 08 79 09 b7 09 f5 09 44 0a 85 0a
0xcef0:                          db cd 0a 16 0b 7f 0b fc 0b 3d 0d 08 0e 5e 0e e8 0e
0xcf00:                          db e8 0e e8 0e 35 04 ab 05 54 07 a0 08 27 09 79 09
0xcf10:                          db 05 0a 5b 0a 2a 0b fc 0b c3 0c 41 0d 88 0e 4d 0f
0xcf20:                          db 53 0f 99 0f 99 0f 99 0f 71 03 db 04 da 05 20 07
0xcf30:                          db a9 08 93 09 1e 0a 2d 0b 3a 0c 16 0d 45 0e a2 0e
0xcf40:                          db a8 0f f4 0f e6 0f f7 0f c6 0f c6 0f fa 02 ff 03
0xcf50:                          db 2f 05 1e 06 6a 08 73 09 2f 0a a1 0b ee 0c 4c 0e
0xcf60:                          db 3a 0f 6c 0f 32 10 5e 10 5b 10 5c 10 0a 10 0a 10
0xcf70:                          db dd 02 c4 03 fb 04 df 05 99 07 d3 08 1a 0a 82 0b
0xcf80:                          db 19 0d 76 0e 58 0f cb 0f 5c 10 a3 10 e3 10 26 11
0xcf90:                          db db 10 db 10 ba 02 8f 03 b2 04 a6 05 06 07 79 08
0xcfa0:                          db 3f 0a b5 0b 28 0d 66 0e 2c 10 a2 10 8f 11 d1 11
0xcfb0:                          db 0c 12 bb 12 6d 12 6d 12 96 02 5b 03 6a 04 6c 05
0xcfc0:                          db f7 06 55 08 3f 0a 1d 0c c1 0d 29 0f c9 10 62 11
0xcfd0:                          db 70 12 70 12 70 12 33 13 08 13 08 13 6b 02 3c 03
0xcfe0:                          db 5f 04 43 05 c3 06 97 08 99 0a ad 0c 32 0e 80 0f
0xcff0:                          db c7 11 39 12 5e 13 5f 13 60 13 1e 14 f2 13 f2 13
0xd000:                          db 45 02 2b 03 54 04 38 05 98 06 b0 08 f3 0a 3d 0d
0xd010:                          db a5 0e d9 0f 7c 12 4f 13 23 15 5b 15 8d 15 22 16
0xd020:                          db d2 15 d2 15 09 02 0c 03 40 04 ef 04 64 06 41 08
0xd030:                          db b9 09 34 0b 80 0c b4 0e 42 12 a9 13 83 14 0b 15
0xd040:                          db 55 15 67 15 1b 15 1b 15 c0 01 de 02 0a 04 e5 04
0xd050:                          db 3b 06 ea 07 2f 09 90 0a fe 0b 4b 0d 27 10 13 13
0xd060:                          db e4 14 14 15 3f 15 96 15 49 15 49 15 96 01 ce 02
0xd070:                          db 00 04 c5 04 07 06 d1 07 0d 09 bf 0a 62 0c a5 0d
0xd080:                          db 44 10 85 12 31 15 7c 15 bf 15 30 16 ca 15 ca 15
0xd090:                          db 4b 01 b0 02 e0 03 a5 04 fc 05 c9 07 fd 08 7b 0a
0xd0a0:                          db f2 0b 54 0d 89 0f a9 11 0d 15 cf 15 7b 16 dd 16
0xd0b0:                          db 35 17 35 17 33 01 ab 02 fe 03 b8 04 1c 06 ec 07
0xd0c0:                          db 27 09 7e 0a 1d 0c 95 0d 80 0f 6c 11 ab 14 fc 15
0xd0d0:                          db 27 17 a3 17 11 18 11 18 2b 01 99 02 d9 03 8e 04
0xd0e0:                          db fe 05 a9 07 e0 08 19 0a 61 0b b8 0c 42 0f 9b 10
0xd0f0:                          db 7c 13 82 15 4e 17 fc 17 97 18 97 18 2c 01 9c 02
0xd100:                          db dc 03 92 04 02 06 af 07 e0 08 ef 09 2b 0b 82 0c
0xd110:                          db 0b 0f 7e 10 1a 13 2d 15 05 17 c2 17 6a 18 6a 18
0xd120:                          db 2c 01 9c 02 dc 03 92 04 02 06 af 07 e0 08 e1 09
0xd130:                          db 0a 0b 4d 0c ca 0e 73 10 d4 12 f9 14 e2 16 9e 17
0xd140:                          db 45 18 45 18 2b 01 99 02 d8 03 8c 04 fc 05 7c 07
0xd150:                          db e8 08 e1 09 12 0b 1a 0c e2 0e 54 10 6e 12 90 14
0xd160:                          db 76 16 37 17 e2 17 e2 17 2b 01 99 02 d8 03 8c 04
0xd170:                          db fc 05 75 07 e8 08 ea 09 12 0b 1a 0c e2 0e 54 10
0xd180:                          db 7c 12 8d 14 64 16 11 17 ab 17 ab 17 c0 01 e6 03
0xd190:                          db c4 05 d2 06 fa 08 30 0b 5c 0d df 0e 9b 10 27 12
0xd1a0:                          db 53 16 7e 18 ba 1b 51 1f ee 20 a1 22 6e 23 6e 23
0xd1b0:                          db c0 01 e6 03 c4 05 d2 06 fa 08 30 0b 5c 0d df 0e
0xd1c0:                          db 9b 10 27 12 53 16 7e 18 ba 1b 51 1f ee 20 a1 22
0xd1d0:                          db 6e 23 6e 23 c0 01 e6 03 c4 05 d2 06 fa 08 30 0b
0xd1e0:                          db 5c 0d df 0e 9b 10 27 12 53 16 7e 18 ba 1b 51 1f
0xd1f0:                          db ee 20 a1 22 6e 23 6e 23 8c 05 f7 06 96 08 3e 0a
0xd200:                          db 86 0a ef 0a 3f 0b 8a 0b e7 0b 7a 0c e2 0c 2c 0d
0xd210:                          db c6 0d 62 0e 5f 0e 63 0e 42 0e 42 0e 8c 05 f7 06
0xd220:                          db 96 08 3e 0a 86 0a ef 0a 3f 0b 8a 0b e7 0b 7a 0c
0xd230:                          db e2 0c 2c 0d c6 0d 62 0e 5f 0e 63 0e 42 0e 42 0e
0xd240:                          db b7 05 f7 06 96 08 3e 0a 86 0a ef 0a 3f 0b 8a 0b
0xd250:                          db e7 0b 7a 0c e2 0c 2c 0d c6 0d 62 0e 5f 0e 63 0e
0xd260:                          db 42 0e 42 0e b7 05 f7 06 96 08 3e 0a 86 0a ef 0a
0xd270:                          db 3f 0b 8a 0b e7 0b 7a 0c e2 0c 2c 0d c6 0d 62 0e
0xd280:                          db 5f 0e 63 0e 42 0e 42 0e b7 05 f7 06 96 08 3e 0a
0xd290:                          db 86 0a ef 0a 3f 0b 8a 0b e7 0b 7a 0c e2 0c 2c 0d
0xd2a0:                          db c6 0d 62 0e 5f 0e 63 0e 42 0e 42 0e 38 04 27 06
0xd2b0:                          db db 07 31 09 a3 09 34 0a 0c 0b 75 0b fc 0b 0c 0d
0xd2c0:                          db 6a 0d b3 0d 51 0e c4 0e c1 0e 8f 0e 9f 0e 9f 0e
0xd2d0:                          db 71 03 11 05 51 06 92 07 0e 09 4e 0a 0c 0b d3 0b
0xd2e0:                          db 02 0d 10 0e 6e 0e ad 0e 69 0f df 0f f1 0f 80 0f
0xd2f0:                          db fd 0e 08 0f eb 02 40 04 72 05 aa 06 c1 08 7b 0a
0xd300:                          db 1c 0b 75 0c aa 0d f2 0e 3a 0f 6c 0f 7e 10 a4 10
0xd310:                          db c5 10 73 10 63 10 63 10 d2 02 d8 03 10 05 df 05
0xd320:                          db b3 07 2e 09 99 0a f2 0b 88 0d aa 0e 44 0f a8 0f
0xd330:                          db 9f 10 ed 10 32 11 96 10 45 10 45 10 b1 02 b8 03
0xd340:                          db d2 04 e4 05 ed 06 64 08 56 0a da 0b 87 0d f7 0e
0xd350:                          db b2 0f 6d 10 77 11 e2 11 41 12 03 12 0a 12 0a 12
0xd360:                          db 78 02 9b 03 f0 04 f4 05 12 07 7d 08 82 0a 0e 0c
0xd370:                          db 01 0e ac 0f 9d 10 8e 11 e5 12 fe 12 14 13 e9 12
0xd380:                          db 03 13 03 13 6a 02 8f 03 e6 04 1e 06 5b 07 31 09
0xd390:                          db e8 0a 57 0c 57 0e 0e 10 2d 12 d7 12 d7 13 97 13
0xd3a0:                          db 52 13 f3 13 e8 13 e8 13 5c 02 70 03 c5 04 26 06
0xd3b0:                          db 81 07 7a 09 4c 0b e8 0c 96 0e 06 10 ed 12 f8 13
0xd3c0:                          db 75 15 82 15 70 15 b3 15 9d 15 9d 15 20 02 3d 03
0xd3d0:                          db 80 04 d2 05 13 07 97 08 44 0a 99 0b f7 0c 52 0f
0xd3e0:                          db 76 12 96 13 31 15 43 15 8d 15 47 15 31 15 31 15
0xd3f0:                          db d6 01 f5 02 35 04 93 05 ac 06 ff 07 f0 09 4e 0b
0xd400:                          db 70 0c ec 0d d1 10 c6 12 92 15 62 15 cf 15 34 16
0xd410:                          db fb 15 fb 15 44 01 a0 02 b6 03 08 05 44 06 f2 07
0xd420:                          db 89 09 18 0b 63 0c 96 0d 27 10 95 12 0d 16 5b 16
0xd430:                          db 73 16 a1 16 95 16 95 16 fd 00 52 02 4e 03 92 04
0xd440:                          db 1e 06 04 08 52 09 b9 0a 93 0c da 0d 98 10 08 13
0xd450:                          db 82 16 79 17 cf 17 65 18 93 18 93 18 0d 01 05 02
0xd460:                          db 2e 03 57 04 0d 06 1e 08 53 09 a0 0a 6c 0c 63 0d
0xd470:                          db 7a 10 8d 12 83 15 35 17 10 18 68 18 b7 18 b7 18
0xd480:                          db 06 01 f8 01 f8 02 26 04 be 05 e6 07 c1 08 d9 09
0xd490:                          db 5c 0b 6d 0c 19 0f 25 11 12 14 e2 15 7e 17 ed 17
0xd4a0:                          db ad 18 ad 18 08 01 fa 01 fb 02 29 04 c2 05 ef 07
0xd4b0:                          db c1 08 d9 09 49 0b 43 0c e5 0e e1 10 b1 13 9d 15
0xd4c0:                          db 53 17 c8 17 8e 18 8e 18 08 01 fa 01 fb 02 29 04
0xd4d0:                          db c2 05 cf 07 c1 08 e1 09 3f 0b 2d 0c 86 0e 7d 10
0xd4e0:                          db 50 13 75 15 5e 17 01 18 93 18 93 18 06 01 f8 01
0xd4f0:                          db f8 02 24 04 c2 05 9a 07 c8 08 e1 09 50 0b 1f 0c
0xd500:                          db 62 0e 3e 10 b9 12 2d 15 ba 16 4a 17 82 18 82 18
0xd510:                          db 06 01 f8 01 f8 02 24 04 bf 05 93 07 c8 08 ea 09
0xd520:                          db 50 0b 1f 0c 62 0e 3e 10 c9 12 2d 15 a8 16 68 17
0xd530:                          db a8 18 a8 18 89 01 f4 02 74 04 36 06 9f 08 08 0b
0xd540:                          db 2c 0d df 0e f8 10 2f 12 93 15 5d 18 2e 1c c4 1f
0xd550:                          db 51 21 1c 23 f0 23 f0 23 89 01 f4 02 74 04 36 06
0xd560:                          db 9f 08 08 0b 2c 0d df 0e f8 10 2f 12 93 15 5d 18
0xd570:                          db 2e 1c c4 1f 51 21 1c 23 f0 23 f0 23 89 01 f4 02
0xd580:                          db 74 04 36 06 9f 08 08 0b 2c 0d df 0e f8 10 2f 12
0xd590:                          db 93 15 5d 18 2e 1c c4 1f 51 21 1c 23 f0 23 f0 23
0xd5a0:                          db c8 05 0c 07 b4 08 2a 0a 3e 0a 86 0a e1 0a 02 0b
0xd5b0:                          db d2 0b 26 0c ae 0c f6 0c a7 0d 62 0e 8a 0e 1d 0f
0xd5c0:                          db 6a 0f 6a 0f c8 05 0c 07 b4 08 2a 0a 3e 0a 86 0a
0xd5d0:                          db e1 0a 02 0b d2 0b 26 0c ae 0c f6 0c a7 0d 62 0e
0xd5e0:                          db 8a 0e 1d 0f 6a 0f 6a 0f f4 05 0c 07 b4 08 2a 0a
0xd5f0:                          db 3e 0a 86 0a e1 0a 02 0b d2 0b 26 0c ae 0c f6 0c
0xd600:                          db a7 0d 62 0e 8a 0e 1d 0f 6a 0f 6a 0f f4 05 0c 07
0xd610:                          db b4 08 2a 0a 3e 0a 86 0a e1 0a 02 0b d2 0b 26 0c
0xd620:                          db ae 0c f6 0c a7 0d 62 0e 8a 0e 1d 0f 6a 0f 6a 0f
0xd630:                          db f4 05 0c 07 b4 08 2a 0a 3e 0a 86 0a e1 0a 02 0b
0xd640:                          db d2 0b 26 0c ae 0c f6 0c a7 0d 62 0e 8a 0e 1d 0f
0xd650:                          db 6a 0f 6a 0f 21 04 12 06 89 07 3c 09 5a 09 c3 09
0xd660:                          db c1 0a 4c 0b 46 0c 8e 0c 2c 0d 5f 0d 25 0e b9 0e
0xd670:                          db d8 0e 53 0f 71 0f 71 0f 8f 03 f2 04 45 06 c6 07
0xd680:                          db f0 08 3f 0a 0c 0b d3 0b 41 0d b3 0d 30 0e 79 0e
0xd690:                          db 69 0f f6 0f f1 0f e2 0f e2 0f e2 0f 28 03 2c 04
0xd6a0:                          db 6c 05 66 06 a9 08 91 0a 8d 0b fb 0c 0c 0e f2 0e
0xd6b0:                          db 4e 0f 81 0f 9e 10 83 10 f1 10 b1 10 b1 10 b1 10
0xd6c0:                          db 12 03 ce 03 e6 04 27 06 cc 07 54 09 70 0a fc 0b
0xd6d0:                          db 9c 0d d3 0e 4e 0f c7 0f 03 11 fa 10 72 11 53 11
0xd6e0:                          db 73 11 73 11 cb 02 8f 03 bd 04 f9 05 0c 07 3e 08
0xd6f0:                          db 0c 0a 81 0b 35 0d aa 0e 2c 10 ac 10 69 11 71 11
0xd700:                          db 4c 12 1f 12 35 12 35 12 9c 02 94 03 93 04 fe 05
0xd710:                          db fd 06 71 08 3f 0a c8 0b 9e 0d 31 0f e7 10 62 11
0xd720:                          db 74 12 6e 12 de 12 d6 12 0e 13 0e 13 6a 02 75 03
0xd730:                          db 93 04 fe 05 26 07 d6 08 f3 0a 91 0c 6c 0e 03 10
0xd740:                          db fa 11 78 12 a1 13 6d 13 32 13 dd 13 d3 13 d3 13
0xd750:                          db 72 02 70 03 92 04 07 06 1f 07 1b 09 a7 0b 5a 0d
0xd760:                          db ca 0e 06 10 ce 12 98 13 49 15 a4 15 bd 15 db 15
0xd770:                          db f6 15 f6 15 2a 02 41 03 73 04 aa 05 e2 06 f0 08
0xd780:                          db b6 0a 0b 0c 22 0d 1b 0f d4 12 f2 13 67 15 62 15
0xd790:                          db 98 15 a0 15 a8 15 a8 15 f6 01 08 03 0b 04 61 05
0xd7a0:                          db ac 06 14 08 f0 09 7b 0b 89 0c 2a 0e e7 10 9f 13
0xd7b0:                          db 92 15 8e 15 fb 15 54 16 12 16 12 16 7e 01 c0 02
0xd7c0:                          db d8 03 0f 05 44 06 e1 07 60 09 2d 0b 63 0c 97 0d
0xd7d0:                          db 4f 10 23 13 b6 15 39 16 68 16 95 16 5e 16 5e 16
0xd7e0:                          db 51 01 6e 02 8e 03 f3 04 de 05 bf 07 dd 08 8f 0a
0xd7f0:                          db 7f 0c 8d 0d 85 10 81 12 d3 15 ff 16 28 17 fd 17
0xd800:                          db fd 17 fd 17 59 01 7c 02 a4 03 c2 04 e6 05 d4 07
0xd810:                          db fc 08 c0 0a 6c 0c 28 0d 7a 10 8f 12 4d 15 11 17
0xd820:                          db ab 17 64 18 41 18 41 18 30 01 41 02 62 03 83 04
0xd830:                          db aa 05 b1 07 ab 08 1e 0a 67 0b 38 0c 1a 0f fb 10
0xd840:                          db 9c 13 cb 15 bc 17 33 18 9d 18 9d 18 32 01 44 02
0xd850:                          db 64 03 87 04 af 05 df 07 ab 08 1e 0a 34 0b f0 0b
0xd860:                          db c5 0e bb 10 45 13 7f 15 7a 17 1d 18 ae 18 ae 18
0xd870:                          db 32 01 44 02 64 03 87 04 af 05 df 07 ab 08 27 0a
0xd880:                          db fe 0a e5 0b 67 0e 45 10 e4 12 1d 15 16 17 f4 17
0xd890:                          db ba 18 ba 18 30 01 40 02 61 03 82 04 a9 05 ab 07
0xd8a0:                          db b2 08 27 0a 1b 0b e5 0b 2a 0e 53 10 18 12 6a 14
0xd8b0:                          db 7b 16 47 17 b4 18 b4 18 30 01 40 02 61 03 82 04
0xd8c0:                          db a9 05 a3 07 b2 08 2f 0a 1b 0b e5 0b 2a 0e 53 10
0xd8d0:                          db 26 12 68 14 69 16 5f 17 f4 18 f4 18 c8 01 60 03
0xd8e0:                          db 12 05 c3 06 7e 08 1f 0b 0b 0d 47 0f a8 10 d8 11
0xd8f0:                          db 3f 15 7c 18 39 1b bf 1e 7b 20 c3 22 a0 23 a0 23
0xd900:                          db c8 01 60 03 12 05 c3 06 7e 08 1f 0b 0b 0d 47 0f
0xd910:                          db a8 10 d8 11 3f 15 7c 18 39 1b bf 1e 7b 20 c3 22
0xd920:                          db a0 23 a0 23 c8 01 60 03 12 05 c3 06 7e 08 1f 0b
0xd930:                          db 0b 0d 47 0f a8 10 d8 11 3f 15 7c 18 39 1b bf 1e
0xd940:                          db 7b 20 c3 22 a0 23 a0 23 2c 06 f7 06 4c 08 84 09
0xd950:                          db d7 09 34 0a a2 0a ed 0a 55 0b b4 0b fc 0b 3b 0c
0xd960:                          db 3d 0d b8 0d e5 0d 78 0e 78 0e 78 0e 2c 06 f7 06
0xd970:                          db 4c 08 84 09 d7 09 34 0a a2 0a ed 0a 55 0b b4 0b
0xd980:                          db fc 0b 3b 0c 3d 0d b8 0d e5 0d 78 0e 78 0e 78 0e
0xd990:                          db 2c 06 f7 06 4c 08 84 09 d7 09 34 0a a2 0a ed 0a
0xd9a0:                          db 55 0b b4 0b fc 0b 3b 0c 3d 0d b8 0d e5 0d 78 0e
0xd9b0:                          db 78 0e 78 0e 2c 06 f7 06 4c 08 84 09 d7 09 34 0a
0xd9c0:                          db a2 0a ed 0a 55 0b b4 0b fc 0b 3b 0c 3d 0d b8 0d
0xd9d0:                          db e5 0d 78 0e 78 0e 78 0e 2c 06 f7 06 4c 08 84 09
0xd9e0:                          db d7 09 34 0a a2 0a ed 0a 55 0b b4 0b fc 0b 3b 0c
0xd9f0:                          db 3d 0d b8 0d e5 0d 78 0e 78 0e 78 0e 34 04 b6 05
0xda00:                          db 15 07 6c 08 f2 08 a3 09 3a 0a ed 0a a8 0b 26 0c
0xda10:                          db 8e 0c ae 0c e1 0d 60 0e 69 0e 20 0f 0b 0f 0b 0f
0xda20:                          db 5c 03 a8 04 d5 05 ec 06 61 08 99 09 53 0a 4f 0b
0xda30:                          db 6f 0c 60 0d d2 0d c8 0d f3 0e 90 0f 92 0f ec 0f
0xda40:                          db ec 0f ec 0f f7 02 02 04 28 05 f4 05 01 08 93 09
0xda50:                          db 9e 0a a8 0b 22 0d 66 0e e9 0e 26 0f 1d 10 96 10
0xda60:                          db 70 10 35 10 c8 0f c8 0f e3 02 f7 03 0f 05 ca 05
0xda70:                          db 41 07 a3 08 fc 09 8d 0b 1d 0d 74 0e 0b 0f b2 0f
0xda80:                          db c8 10 09 11 f0 10 f0 10 a3 10 a3 10 c4 02 ce 03
0xda90:                          db f2 04 bb 05 b6 06 3e 08 c5 09 b8 0b 43 0d 96 0e
0xdaa0:                          db 04 10 79 10 cf 11 d7 11 2c 12 42 12 7e 12 7e 12
0xdab0:                          db 65 02 8f 03 fb 04 b6 05 b6 06 3e 08 11 0a fb 0b
0xdac0:                          db ae 0d 22 0f be 10 43 11 b6 12 9b 12 9e 12 e1 12
0xdad0:                          db 47 13 47 13 60 02 86 03 d2 04 b6 05 b6 06 8a 08
0xdae0:                          db 5d 0a 18 0c 03 0e a8 0f b2 11 50 12 cb 13 95 13
0xdaf0:                          db 4e 13 cf 13 42 14 42 14 39 02 46 03 b1 04 b5 05
0xdb00:                          db d6 06 bc 08 9a 0a 43 0c 30 0e d6 0f 33 12 3b 13
0xdb10:                          db 5b 15 94 15 53 15 9b 15 dc 15 dc 15 16 02 f5 02
0xdb20:                          db 54 04 77 05 e2 06 6a 08 d2 09 34 0b 3f 0c 6b 0e
0xdb30:                          db ef 11 61 13 06 15 17 15 40 15 3c 15 39 15 39 15
0xdb40:                          db c0 01 c9 02 ec 03 41 05 a2 06 3d 08 6c 09 dc 0a
0xdb50:                          db fe 0b 5b 0d 7c 10 1a 13 77 15 43 15 77 15 98 15
0xdb60:                          db b6 15 b6 15 79 01 6e 02 b8 03 19 05 44 06 c2 07
0xdb70:                          db 2e 09 c0 0a 31 0c b4 0d 61 10 2f 13 2b 16 51 16
0xdb80:                          db 97 16 91 16 8b 16 8b 16 4a 01 4f 02 70 03 d9 04
0xdb90:                          db 1b 06 01 08 28 09 9b 0a 24 0c c7 0d 3d 10 01 13
0xdba0:                          db 05 16 a2 16 2d 17 9c 17 fe 17 fe 17 44 01 25 02
0xdbb0:                          db 68 03 c2 04 1c 06 05 08 1a 09 93 0a cf 0b de 0d
0xdbc0:                          db 56 10 76 12 5b 15 a4 16 c9 17 5f 18 e4 18 e4 18
0xdbd0:                          db 3c 01 f8 01 5d 03 83 04 be 05 bd 07 aa 08 0b 0a
0xdbe0:                          db 41 0b c2 0c 79 0f 4f 11 be 13 e5 15 ce 17 9d 18
0xdbf0:                          db 55 19 55 19 3d 01 fa 01 60 03 87 04 c3 05 c3 07
0xdc00:                          db ad 08 0b 0a 41 0b 78 0c 37 0f 33 11 86 13 9d 15
0xdc10:                          db 78 17 56 18 1b 19 1b 19 3d 01 fa 01 60 03 87 04
0xdc20:                          db c3 05 c3 07 b2 08 14 0a 4b 0b 4d 0c f6 0e ea 10
0xdc30:                          db 00 13 31 15 23 17 16 18 ee 18 ee 18 3c 01 f8 01
0xdc40:                          db 5c 03 82 04 bd 05 90 07 b5 08 14 0a 53 0b 43 0c
0xdc50:                          db ec 0e 92 10 84 12 9d 14 7b 16 b7 17 d0 18 d0 18
0xdc60:                          db 3c 01 f8 01 5c 03 82 04 bd 05 88 07 b6 08 1d 0a
0xdc70:                          db 53 0b 43 0c ec 0e 92 10 93 12 9b 14 69 16 6c 17
0xdc80:                          db 53 18 53 18 da 01 f4 02 0a 05 c3 06 9c 08 f8 0a
0xdc90:                          db 11 0d 2b 0f fc 10 63 12 62 16 da 18 52 1b d7 1e
0xdca0:                          db 7a 20 1c 22 be 23 be 23 da 01 f4 02 0a 05 c3 06
0xdcb0:                          db 9c 08 f8 0a 11 0d 2b 0f fc 10 63 12 62 16 da 18
0xdcc0:                          db 52 1b d7 1e 7a 20 1c 22 be 23 be 23 da 01 f4 02
0xdcd0:                          db 0a 05 c3 06 9c 08 f8 0a 11 0d 2b 0f fc 10 63 12
0xdce0:                          db 62 16 da 18 52 1b d7 1e 7a 20 1c 22 be 23 be 23
0xdcf0:                          db 67 01 67 01 e2 01 39 02 9c 02 e7 02 0b 03 2e 03
0xdd00:                          db 2e 03 2e 03 2e 03 17 03 2e 03 36 03 1a 04 1a 04
0xdd10:                          db 65 04 65 04 67 01 67 01 e2 01 38 02 99 02 e5 02
0xdd20:                          db 0c 03 2e 03 2e 03 2e 03 2e 03 17 03 2e 03 36 03
0xdd30:                          db 1a 04 1a 04 65 04 65 04 67 01 67 01 e0 01 38 02
0xdd40:                          db 9c 02 e5 02 0f 03 2e 03 2e 03 2e 03 2e 03 17 03
0xdd50:                          db 2e 03 36 03 1a 04 33 04 65 04 65 04 67 01 67 01
0xdd60:                          db e2 01 3c 02 9c 02 e5 02 0f 03 2e 03 2e 03 2e 03
0xdd70:                          db 2e 03 17 03 2e 03 36 03 1a 04 1a 04 65 04 65 04
0xdd80:                          db 67 01 67 01 ec 01 40 02 a1 02 fb 02 35 03 2e 03
0xdd90:                          db 2e 03 2e 03 2e 03 47 03 63 03 9d 03 1a 04 4c 04
0xdda0:                          db 65 04 65 04 57 01 57 01 dc 01 17 02 95 02 e7 02
0xddb0:                          db 31 03 71 03 91 03 96 03 9a 03 8b 03 7e 03 9b 03
0xddc0:                          db f9 03 72 04 7a 04 8a 04 48 01 48 01 e4 01 03 02
0xddd0:                          db 5f 02 ca 02 11 03 4d 03 8f 03 96 03 97 03 82 03
0xdde0:                          db 8a 03 b8 03 52 04 a8 04 b0 04 b0 04 33 01 33 01
0xddf0:                          db dc 01 04 02 67 02 ca 02 1f 03 64 03 8a 03 a9 03
0xde00:                          db c8 03 c8 03 ee 03 0d 04 65 04 a5 04 c9 04 ea 04
0xde10:                          db 0a 01 0a 01 d4 01 15 02 67 02 bb 02 27 03 75 03
0xde20:                          db b2 03 ee 03 f6 03 fe 03 05 04 1c 04 5b 04 ab 04
0xde30:                          db b0 04 b4 04 f8 00 0d 01 d5 01 22 02 7b 02 cb 02
0xde40:                          db 27 03 a2 03 f5 03 20 04 33 04 44 04 55 04 6a 04
0xde50:                          db 6e 04 da 04 de 04 e5 04 f1 00 f1 00 ae 01 0a 02
0xde60:                          db 5d 02 98 02 e8 02 6b 03 c4 03 e7 03 e7 03 e7 03
0xde70:                          db 05 04 24 04 3b 04 a1 04 b0 04 b0 04 fe 00 da 00
0xde80:                          db 86 01 da 01 20 02 5c 02 a9 02 09 03 58 03 8b 03
0xde90:                          db c8 03 c0 03 cf 03 f4 03 34 04 7c 04 90 04 8d 04
0xdea0:                          db cd 00 cd 00 86 01 c9 01 07 02 48 02 8d 02 db 02
0xdeb0:                          db 27 03 5c 03 70 03 81 03 a3 03 be 03 42 04 9e 04
0xdec0:                          db b0 04 b0 04 c3 00 c3 00 5e 01 be 01 ec 01 21 02
0xded0:                          db 67 02 ac 02 e9 02 0f 03 4a 03 7c 03 a3 03 c2 03
0xdee0:                          db 42 04 7e 04 a2 04 a0 04 be 00 be 00 4a 01 b2 01
0xdef0:                          db e4 01 0a 02 4c 02 89 02 bb 02 e9 02 50 03 6f 03
0xdf00:                          db 9b 03 bc 03 3c 04 8c 04 a7 04 a6 04 b6 00 98 00
0xdf10:                          db 30 01 8f 01 d4 01 07 02 44 02 7f 02 9c 02 df 02
0xdf20:                          db 43 03 7d 03 b4 03 e8 03 3a 04 b9 04 b0 04 b0 04
0xdf30:                          db 9c 00 9c 00 14 01 84 01 d3 01 04 02 38 02 73 02
0xdf40:                          db ac 02 e7 02 3d 03 78 03 aa 03 ed 03 67 04 c4 04
0xdf50:                          db ca 04 c7 04 7b 00 7b 00 0f 01 80 01 e4 01 17 02
0xdf60:                          db 38 02 85 02 c4 02 05 03 59 03 90 03 c2 03 1a 04
0xdf70:                          db 4a 04 9c 04 b0 04 b0 04 5c 00 5c 00 03 01 65 01
0xdf80:                          db d9 01 f3 01 29 02 64 02 a9 02 e5 02 45 03 9a 03
0xdf90:                          db 05 04 3a 04 5a 04 89 04 b3 04 b6 04 5f 00 8a 00
0xdfa0:                          db ee 00 48 01 be 01 fe 01 2b 02 51 02 9d 02 d1 02
0xdfb0:                          db 2d 03 6b 03 e5 03 39 04 24 05 94 05 9b 05 ab 05
0xdfc0:                          db 38 00 62 00 ad 00 ee 00 69 01 c4 01 f3 01 18 02
0xdfd0:                          db 54 02 96 02 f4 02 4f 03 ca 03 2a 04 f7 04 84 05
0xdfe0:                          db 93 05 aa 05 33 00 33 00 7f 00 db 00 43 01 9f 01
0xdff0:                          db ec 01 0a 02 31 02 7b 02 df 02 2b 03 a4 03 0c 04
0xe000:                          db db 04 6d 05 85 05 a1 05 31 00 31 00 7b 00 bd 00
0xe010:                          db 33 01 9f 01 c5 01 fb 01 29 02 48 02 a4 02 f8 02
0xe020:                          db 71 03 cc 03 a6 04 4c 05 6e 05 91 05 2e 00 2e 00
0xe030:                          db 68 00 a9 00 0d 01 88 01 a7 01 cd 01 fb 01 1a 02
0xe040:                          db 71 02 c9 02 36 03 8f 03 58 04 23 05 44 05 64 05
0xe050:                          db 2e 00 2e 00 60 00 9e 00 0d 01 88 01 a7 01 cd 01
0xe060:                          db fb 01 1a 02 4f 02 85 02 01 03 61 03 17 04 bc 04
0xe070:                          db f9 04 2b 05 2e 00 2e 00 60 00 9e 00 0d 01 88 01
0xe080:                          db a7 01 cd 01 fb 01 1a 02 4f 02 85 02 da 02 45 03
0xe090:                          db a1 03 df 03 e2 04 e2 04 43 01 43 01 b6 01 f7 01
0xe0a0:                          db 95 02 ca 02 00 03 17 03 36 03 73 03 8a 03 a1 03
0xe0b0:                          db c0 03 d7 03 f6 03 05 04 05 04 05 04 43 01 43 01
0xe0c0:                          db b6 01 f7 01 95 02 ca 02 00 03 17 03 36 03 73 03
0xe0d0:                          db 8a 03 a1 03 c0 03 d7 03 f6 03 05 04 05 04 05 04
0xe0e0:                          db 43 01 43 01 b6 01 f7 01 95 02 ca 02 00 03 17 03
0xe0f0:                          db 36 03 73 03 8a 03 a1 03 c0 03 d7 03 f6 03 05 04
0xe100:                          db 05 04 05 04 43 01 43 01 b6 01 f7 01 95 02 ca 02
0xe110:                          db 00 03 17 03 36 03 73 03 8a 03 a1 03 c0 03 d7 03
0xe120:                          db f6 03 05 04 05 04 05 04 43 01 43 01 d6 01 05 02
0xe130:                          db 7d 02 ca 02 00 03 17 03 36 03 55 03 64 03 7b 03
0xe140:                          db 8a 03 a9 03 e8 03 1a 04 4c 04 4c 04 2e 01 2e 01
0xe150:                          db ba 01 f0 01 5f 02 95 02 e1 02 08 03 1f 03 27 03
0xe160:                          db 45 03 64 03 7b 03 83 03 e8 03 1a 04 4c 04 4c 04
0xe170:                          db 19 01 19 01 bb 01 dc 01 21 02 5f 02 a4 02 f1 02
0xe180:                          db 15 03 29 03 2e 03 55 03 55 03 5c 03 cf 03 1a 04
0xe190:                          db 4c 04 4c 04 08 01 08 01 a9 01 d5 01 10 02 4c 02
0xe1a0:                          db 92 02 db 02 08 03 20 03 30 03 80 03 77 03 4d 03
0xe1b0:                          db d9 03 1a 04 4c 04 4c 04 f3 00 f3 00 a2 01 da 01
0xe1c0:                          db 08 02 4a 02 91 02 d1 02 0f 03 2f 03 50 03 68 03
0xe1d0:                          db 76 03 80 03 f2 03 2d 04 5e 04 5c 04 e4 00 e4 00
0xe1e0:                          db 8a 01 ca 01 f8 01 3e 02 8d 02 de 02 1f 03 36 03
0xe1f0:                          db 5a 03 6f 03 89 03 8f 03 1c 04 6a 04 77 04 90 04
0xe200:                          db d2 00 d2 00 7d 01 ba 01 03 02 48 02 99 02 ea 02
0xe210:                          db 2f 03 67 03 89 03 9a 03 b8 03 d2 03 37 04 6c 04
0xe220:                          db 5e 04 98 04 cf 00 c0 00 69 01 c5 01 1a 02 5f 02
0xe230:                          db a2 02 f1 02 3c 03 8d 03 d0 03 f6 03 fe 03 fe 03
0xe240:                          db 53 04 88 04 91 04 b5 04 cd 00 cd 00 5d 01 c1 01
0xe250:                          db 0a 02 5f 02 b3 02 08 03 60 03 a5 03 fe 03 05 04
0xe260:                          db 15 04 19 04 73 04 ad 04 c3 04 d7 04 bb 00 bb 00
0xe270:                          db 43 01 c1 01 0f 02 4d 02 ac 02 f5 02 4f 03 90 03
0xe280:                          db d4 03 e5 03 08 04 0e 04 59 04 9a 04 a4 04 a7 04
0xe290:                          db b3 00 b3 00 37 01 be 01 0b 02 43 02 9c 02 d2 02
0xe2a0:                          db 17 03 76 03 b9 03 e7 03 fe 03 0d 04 30 04 7e 04
0xe2b0:                          db 7e 04 8f 04 9c 00 82 00 11 01 97 01 ec 01 16 02
0xe2c0:                          db 33 02 78 02 c5 02 0b 03 65 03 a1 03 c0 03 b8 03
0xe2d0:                          db 09 04 87 04 7e 04 7e 04 97 00 97 00 f2 00 71 01
0xe2e0:                          db ae 01 ec 01 1a 02 57 02 a1 02 ea 02 35 03 60 03
0xe2f0:                          db 8b 03 99 03 11 04 6c 04 7e 04 7e 04 8d 00 7f 00
0xe300:                          db dd 00 57 01 ac 01 e2 01 1a 02 57 02 95 02 c3 02
0xe310:                          db 2e 03 5c 03 73 03 83 03 ee 03 4b 04 7e 04 7e 04
0xe320:                          db 7b 00 84 00 d0 00 45 01 ad 01 e4 01 1a 02 57 02
0xe330:                          db 95 02 c3 02 27 03 4d 03 a8 03 d6 03 0d 04 50 04
0xe340:                          db 7e 04 7e 04 69 00 69 00 c4 00 24 01 af 01 f4 01
0xe350:                          db 35 02 67 02 a7 02 d0 02 44 03 8e 03 17 04 5f 04
0xe360:                          db 42 05 90 05 a5 05 b8 05 3e 00 3e 00 aa 00 f3 00
0xe370:                          db 78 01 cd 01 0a 02 38 02 76 02 9c 02 04 03 64 03
0xe380:                          db db 03 48 04 1f 05 72 05 96 05 ae 05 24 00 24 00
0xe390:                          db 87 00 df 00 59 01 b6 01 f3 01 29 02 4f 02 7d 02
0xe3a0:                          db ef 02 56 03 c2 03 36 04 07 05 58 05 7a 05 93 05
0xe3b0:                          db 21 00 21 00 7b 00 bd 00 2c 01 9f 01 dd 01 0e 02
0xe3c0:                          db 33 02 60 02 cb 02 2c 03 9e 03 10 04 e3 04 31 05
0xe3d0:                          db 50 05 74 05 1f 00 1f 00 7b 00 ad 00 05 01 88 01
0xe3e0:                          db ae 01 e4 01 15 02 41 02 aa 02 02 03 6a 03 cf 03
0xe3f0:                          db 95 04 0a 05 27 05 3f 05 20 00 1f 00 73 00 b8 00
0xe400:                          db 05 01 88 01 ae 01 e4 01 12 02 3b 02 95 02 da 02
0xe410:                          db 36 03 9a 03 3c 04 9c 04 bd 04 dc 04 1f 00 1f 00
0xe420:                          db 73 00 b8 00 05 01 88 01 ae 01 e4 01 12 02 3f 02
0xe430:                          db 95 02 da 02 36 03 9a 03 d7 03 2b 04 5a 04 5a 04
0xe440:                          db 45 01 45 01 b6 01 fb 01 7d 02 ca 02 e9 02 2e 03
0xe450:                          db 4d 03 5c 03 7d 03 8a 03 9a 03 a1 03 a9 03 b8 03
0xe460:                          db c0 03 c0 03 45 01 45 01 b6 01 fb 01 7d 02 ca 02
0xe470:                          db e9 02 2e 03 4d 03 5c 03 7d 03 8a 03 9a 03 a1 03
0xe480:                          db a9 03 b8 03 c0 03 c0 03 45 01 45 01 b6 01 fb 01
0xe490:                          db 7d 02 ca 02 e9 02 2e 03 4d 03 5c 03 7d 03 8a 03
0xe4a0:                          db 9a 03 a1 03 a9 03 b8 03 c0 03 c0 03 45 01 45 01
0xe4b0:                          db b6 01 fb 01 7d 02 ca 02 e9 02 2e 03 4d 03 5c 03
0xe4c0:                          db 7d 03 8a 03 9a 03 a1 03 a9 03 b8 03 c0 03 c0 03
0xe4d0:                          db 45 01 53 01 d9 01 39 02 7d 02 ca 02 24 03 4a 03
0xe4e0:                          db 62 03 6f 03 7d 03 8a 03 9a 03 a1 03 a9 03 b8 03
0xe4f0:                          db c0 03 c0 03 2e 01 31 01 ae 01 1c 02 70 02 b3 02
0xe500:                          db 0f 03 42 03 4d 03 5c 03 8a 03 92 03 b1 03 b8 03
0xe510:                          db b8 03 d7 03 d5 03 d2 03 1c 01 1c 01 c6 01 f6 01
0xe520:                          db 31 02 95 02 d2 02 27 03 5c 03 6e 03 8a 03 9a 03
0xe530:                          db b8 03 d7 03 03 04 2a 04 2e 04 51 04 03 01 03 01
0xe540:                          db a7 01 cd 01 2e 02 88 02 ca 02 27 03 5b 03 7d 03
0xe550:                          db 9a 03 b1 03 cf 03 df 03 01 04 5b 04 6e 04 94 04
0xe560:                          db f1 00 09 01 94 01 e2 01 2f 02 81 02 d7 02 17 03
0xe570:                          db 6e 03 8c 03 a1 03 b1 03 c8 03 df 03 19 04 5e 04
0xe580:                          db 6e 04 97 04 e4 00 e4 00 7d 01 b6 01 0a 02 4f 02
0xe590:                          db b3 02 00 03 45 03 73 03 92 03 92 03 9a 03 b1 03
0xe5a0:                          db 0e 04 65 04 64 04 82 04 dc 00 dc 00 69 01 b2 01
0xe5b0:                          db 03 02 48 02 a4 02 e9 02 36 03 5c 03 84 03 84 03
0xe5c0:                          db 8b 03 aa 03 06 04 51 04 52 04 74 04 10 01 d5 00
0xe5d0:                          db 59 01 a7 01 fb 01 42 02 90 02 e1 02 36 03 64 03
0xe5e0:                          db 8d 03 8d 03 90 03 b4 03 1f 04 72 04 69 04 80 04
0xe5f0:                          db ca 00 ca 00 57 01 a3 01 f3 01 32 02 85 02 e1 02
0xe600:                          db 36 03 64 03 92 03 b1 03 c8 03 e7 03 44 04 8f 04
0xe610:                          db 92 04 92 04 ca 00 c8 00 43 01 9f 01 fb 01 31 02
0xe620:                          db 85 02 da 02 2e 03 5c 03 a1 03 b8 03 d7 03 ee 03
0xe630:                          db 39 04 91 04 a2 04 a2 04 c3 00 c3 00 37 01 9f 01
0xe640:                          db fb 01 29 02 76 02 b3 02 1f 03 4d 03 83 03 b8 03
0xe650:                          db df 03 df 03 20 04 47 04 60 04 92 04 b1 00 91 00
0xe660:                          db 19 01 8f 01 e4 01 12 02 31 02 76 02 bb 02 f8 02
0xe670:                          db 2e 03 4d 03 83 03 9e 03 11 04 66 04 5c 04 6e 04
0xe680:                          db a7 00 95 00 05 01 78 01 be 01 ec 01 25 02 48 02
0xe690:                          db 85 02 d5 02 11 03 42 03 78 03 ab 03 07 04 68 04
0xe6a0:                          db 7d 04 92 04 85 00 72 00 e3 00 46 01 a7 01 d5 01
0xe6b0:                          db 0c 02 3e 02 76 02 a8 02 e0 02 1d 03 62 03 92 03
0xe6c0:                          db ea 03 1c 04 38 04 5f 04 73 00 85 00 d4 00 3f 01
0xe6d0:                          db a5 01 c5 01 0b 02 34 02 69 02 98 02 06 03 48 03
0xe6e0:                          db a2 03 c3 03 e7 03 12 04 22 04 2d 04 4f 00 89 00
0xe6f0:                          db bd 00 fa 00 81 01 b9 01 dc 01 0a 02 3c 02 64 02
0xe700:                          db fb 02 70 03 b8 03 eb 03 1f 04 5f 04 71 04 86 04
0xe710:                          db 48 00 48 00 a4 00 da 00 43 01 93 01 cf 01 fa 01
0xe720:                          db 3d 02 65 02 d7 02 30 03 c5 03 19 04 66 04 80 04
0xe730:                          db 83 04 9e 04 3e 00 3e 00 7b 00 b5 00 26 01 80 01
0xe740:                          db be 01 ec 01 1a 02 50 02 bb 02 0b 03 95 03 04 04
0xe750:                          db 72 04 89 04 9a 04 9a 04 36 00 36 00 64 00 96 00
0xe760:                          db 0d 01 78 01 a7 01 cd 01 fb 01 3e 02 94 02 ea 02
0xe770:                          db 57 03 de 03 6a 04 89 04 9a 04 9a 04 2e 00 2e 00
0xe780:                          db 68 00 a1 00 ee 00 52 01 8f 01 ae 01 dc 01 26 02
0xe790:                          db 71 02 c3 02 1b 03 a5 03 35 04 57 04 70 04 70 04
0xe7a0:                          db 2e 00 2e 00 68 00 a1 00 ee 00 52 01 8f 01 ae 01
0xe7b0:                          db dc 01 f3 01 38 02 7d 02 e9 02 6d 03 e8 03 57 04
0xe7c0:                          db 70 04 70 04 2e 00 2e 00 68 00 a1 00 ee 00 52 01
0xe7d0:                          db 8f 01 ae 01 dc 01 f3 01 38 02 7d 02 e9 02 4d 03
0xe7e0:                          db e8 03 57 04 70 04 70 04 45 01 50 01 c1 01 2d 02
0xe7f0:                          db c3 02 17 03 27 03 45 03 5c 03 73 03 a9 03 c8 03
0xe800:                          db ee 03 0d 04 2b 04 4a 04 52 04 52 04 45 01 45 01
0xe810:                          db c1 01 2d 02 c3 02 17 03 27 03 45 03 5c 03 73 03
0xe820:                          db a9 03 c8 03 ee 03 0d 04 2b 04 4a 04 52 04 52 04
0xe830:                          db 45 01 45 01 c1 01 2d 02 c3 02 17 03 27 03 45 03
0xe840:                          db 5c 03 73 03 a9 03 c8 03 ee 03 0d 04 2b 04 4a 04
0xe850:                          db 52 04 52 04 45 01 45 01 c1 01 2d 02 c3 02 17 03
0xe860:                          db 27 03 45 03 5c 03 73 03 a9 03 c8 03 ee 03 0d 04
0xe870:                          db 2b 04 4a 04 52 04 52 04 45 01 45 01 f5 01 60 02
0xe880:                          db c3 02 17 03 27 03 45 03 5c 03 73 03 a9 03 c8 03
0xe890:                          db ee 03 0d 04 2b 04 4a 04 52 04 52 04 2c 01 2c 01
0xe8a0:                          db d1 01 29 02 9c 02 f8 02 1f 03 3e 03 55 03 73 03
0xe8b0:                          db a1 03 c8 03 ee 03 0d 04 24 04 33 04 3b 04 3b 04
0xe8c0:                          db 19 01 19 01 c9 01 0a 02 76 02 c3 02 08 03 38 03
0xe8d0:                          db 54 03 69 03 83 03 a9 03 c8 03 d7 03 ff 03 26 04
0xe8e0:                          db 4c 04 4c 04 00 01 00 01 b6 01 f3 01 48 02 98 02
0xe8f0:                          db e1 02 18 03 40 03 54 03 67 03 7c 03 93 03 96 03
0xe900:                          db 02 04 32 04 43 04 55 04 e7 00 e7 00 97 01 ec 01
0xe910:                          db 1d 02 6e 02 bc 02 0f 03 45 03 58 03 73 03 6d 03
0xe920:                          db 83 03 74 03 fd 03 45 04 42 04 56 04 df 00 df 00
0xe930:                          db 80 01 ce 01 17 02 59 02 9c 02 09 03 3f 03 63 03
0xe940:                          db 7e 03 61 03 66 03 7d 03 f7 03 31 04 58 04 80 04
0xe950:                          db d5 00 d5 00 66 01 ab 01 0a 02 48 02 8d 02 f1 02
0xe960:                          db 30 03 56 03 70 03 64 03 75 03 7b 03 31 04 60 04
0xe970:                          db 7c 04 8e 04 ed 00 c9 00 59 01 a7 01 03 02 4f 02
0xe980:                          db 8e 02 f1 02 2e 03 55 03 85 03 7f 03 a8 03 b7 03
0xe990:                          db 53 04 a3 04 b4 04 b7 04 ca 00 ca 00 52 01 a7 01
0xe9a0:                          db f3 01 48 02 a4 02 e1 02 1f 03 4d 03 7b 03 92 03
0xe9b0:                          db b1 03 cf 03 52 04 a1 04 ae 04 b1 04 c0 00 c0 00
0xe9c0:                          db 37 01 ae 01 fb 01 38 02 95 02 ca 02 08 03 36 03
0xe9d0:                          db 5c 03 7b 03 9a 03 b1 03 24 04 6a 04 9d 04 95 04
0xe9e0:                          db b8 00 b8 00 2c 01 ab 01 fb 01 29 02 6e 02 ac 02
0xe9f0:                          db e9 02 17 03 2e 03 4d 03 7b 03 8a 03 ff 03 62 04
0xea00:                          db 73 04 62 04 a1 00 77 00 0d 01 88 01 d5 01 03 02
0xea10:                          db 31 02 6e 02 95 02 bb 02 eb 02 29 03 60 03 7c 03
0xea20:                          db 19 04 48 04 58 04 63 04 a7 00 87 00 fe 00 63 01
0xea30:                          db c3 01 ea 01 28 02 40 02 79 02 a3 02 f2 02 2c 03
0xea40:                          db 62 03 94 03 fa 03 3a 04 52 04 5c 04 9c 00 8b 00
0xea50:                          db f6 00 4e 01 b5 01 db 01 08 02 38 02 67 02 a9 02
0xea60:                          db d4 02 f9 02 1c 03 5d 03 a1 03 e3 03 f5 03 f9 03
0xea70:                          db 80 00 90 00 d3 00 44 01 bc 01 e1 01 07 02 2c 02
0xea80:                          db 70 02 9a 02 00 03 35 03 79 03 c0 03 d4 03 f7 03
0xea90:                          db 22 04 25 04 5c 00 7e 00 b6 00 18 01 8f 01 dc 01
0xeaa0:                          db 12 02 40 02 7d 02 ac 02 0f 03 65 03 b4 03 ec 03
0xeab0:                          db 4b 04 a7 04 be 04 ca 04 45 00 45 00 9a 00 e4 00
0xeac0:                          db 71 01 c2 01 0a 02 40 02 5f 02 8d 02 f7 02 4c 03
0xead0:                          db c0 03 20 04 7f 04 ca 04 ef 04 e0 04 38 00 38 00
0xeae0:                          db 73 00 bd 00 33 01 b6 01 03 02 36 02 4f 02 86 02
0xeaf0:                          db ec 02 38 03 a8 03 1b 04 89 04 bf 04 e5 04 e5 04
0xeb00:                          db 2e 00 2e 00 68 00 9a 00 2c 01 97 01 cd 01 0d 02
0xeb10:                          db 35 02 70 02 c7 02 19 03 6f 03 ee 03 49 04 92 04
0xeb20:                          db b3 04 b3 04 31 00 31 00 68 00 8e 00 df 00 71 01
0xeb30:                          db a7 01 f6 01 1c 02 57 02 a0 02 e0 02 34 03 93 03
0xeb40:                          db e0 03 20 04 47 04 47 04 31 00 31 00 5c 00 ad 00
0xeb50:                          db df 00 71 01 a7 01 d5 01 03 02 29 02 7d 02 b3 02
0xeb60:                          db 0f 03 7b 03 e0 03 20 04 47 04 47 04 31 00 31 00
0xeb70:                          db 5c 00 ad 00 df 00 71 01 a7 01 d5 01 03 02 29 02
0xeb80:                          db 7d 02 b3 02 0f 03 7b 03 e0 03 20 04 47 04 47 04
0xeb90:                          db 11 11 72 1c ab 2a e4 38 1c 47 39 4e 55 55 72 5c
0xeba0:                          db 8e 63 39 8e 24 00 54 00 a4 00 10 01 48 01 98 01
0xebb0:                          db 64 02 30 03 d4 01 d4 01 d4 01 d4 01 d4 01 d4 01
0xebc0:                          db d4 01 d4 01 d4 01 d4 01 da 01 ea 01 e9 01 ec 01
0xebd0:                          db f0 01 f2 01 d4 01 d4 01 e8 01 48 02 51 02 56 02
0xebe0:                          db 5d 02 48 02 d4 01 d4 01 f6 01 47 02 56 02 61 02
0xebf0:                          db 7d 02 d5 02 d4 01 d4 01 15 02 49 02 57 02 62 02
0xec00:                          db 78 02 d8 02 d4 01 d4 01 19 02 4d 02 5b 02 67 02
0xec10:                          db 81 02 d7 02 d4 01 d4 01 19 02 4f 02 5e 02 6b 02
0xec20:                          db 85 02 d7 02 d4 01 d4 01 20 02 57 02 66 02 6f 02
0xec30:                          db 87 02 cb 02 d4 01 d4 01 22 02 56 02 66 02 6f 02
0xec40:                          db 83 02 cb 02 d4 01 d4 01 22 02 56 02 66 02 6f 02
0xec50:                          db 83 02 cb 02 00 00 55 15 72 1c 8e 23 ab 2a c7 31
0xec60:                          db e4 38 00 40 1c 47 39 4e 55 55 72 5c 8e 63 1c 67
0xec70:                          db ff ff 00 00 50 00 d8 00 34 01 98 01 00 02 68 02
0xec80:                          db cc 02 34 03 fc 03 00 00 00 00 00 00 00 00 00 00
0xec90:                          db 00 00 00 00 00 ff ff ff ff ff 00 00 00 00 00 ff
0xeca0:                          db ff ff ff ff 00 00 00 00 00 ff ff ff ff ff 00 00
0xecb0:                          db 00 00 00 ff ff ff ff ff 00 00 00 00 00 40 4d ff
0xecc0:                          db ff ff 00 00 00 00 00 33 66 ff ff ff 00 00 00 00
0xecd0:                          db 00 33 69 ff ff ff 00 00 00 00 00 33 78 ff ff ff
0xece0:                          db 00 00 00 00 00 29 80 ff ff ff 00 00 00 00 00 14
0xecf0:                          db 80 80 80 80 00 00 00 00 00 00 80 80 80 80 00 00
0xed00:                          db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0xed10:                          db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 55 15
0xed20:                          db 72 1c 8e 23 ab 2a c7 31 e4 38 00 40 1c 47 39 4e
0xed30:                          db 55 55 72 5c 8e 63 1c 67 ff ff 01 07 18 1f 28 34
0xed40:                          db 44 87 ba e1 ff ff ff ff ff ff ff ff ff ff ff ff

org 0xef24
0xef24:                          db             c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8
0xef30:                          db c8 c8 c8 c8 c8 c8 a0 a0 a0 a0 a0 a0 a0 a0 a0 a0
0xef40:                          db a0 a0 a0 a0 a0 a0 a0 a0 8c 8c 8c 8c 8c 8c 8c 88
0xef50:                          db 88 88 88 76 6c 6c 64 60 68 68 78 78 78 78 78 78
0xef60:                          db 78 78 74 74 74 72 70 6a 6e 70 74 74 64 64 64 64
0xef70:                          db 64 64 64 64 64 60 60 5e 5f 67 65 60 60 60 58 58
0xef80:                          db 58 58 58 58 58 58 58 58 54 54 62 56 50 50 50 50
0xef90:                          db 38 38 38 38 38 38 38 38 38 38 38 38 38 4e 48 44
0xefa0:                          db 54 54 34 34 34 34 34 34 34 34 34 34 34 34 34 34
0xefb0:                          db 38 3c 3e 3e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e
0xefc0:                          db 2e 32 38 3c 3e 3e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e
0xefd0:                          db 2e 2e 2e 2e 34 3c 3e 3e 2e 2e 2e 2e 2e 2e 2e 2e
0xefe0:                          db 2e 2e 2e 2e 2e 2e 30 32 38 38 2c 2c 2c 2c 2c 2c
0xeff0:                          db 2c 2c 2c 2c 2c 2c 2c 2c 2c 30 30 30 2c 2c 2c 2c
0xf000:                          db 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c
0xf010:                          db 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c
0xf020:                          db 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c
0xf030:                          db 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c
0xf040:                          db 2c 2c 2c 2c ff ff ff ff ff ff ff ff ff ff ff ff

org 0xff10
0xff10:                          db 00 00 00 00 00 00 00 00 00 00 00 00 00 7d 00 00
0xff20:                          db 00 00 00 00 00 ff ff ff ff ff ff ff ff ff ff ff

org 0x0000
