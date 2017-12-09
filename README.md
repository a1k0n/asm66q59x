### WIP disassembler for OKI 66Q591.

Some instructions supported, some to go. sbafix/sbaoff addressing modes not
implemented. Rudimentary DD tracking is implemented (the value of DD affects
instruction decoding in some cases)

example:

```
$ python opcode.py && g++ -o dasm dasm.cpp && ./dasm
0093(0): c6 00 fe 09         MOV SSP, #0x09fe
0097(0): d6 14 60            MOVB P4, #0x60
009a(0): b7 14 01 ab e0      MOVB [0x0114], #0xe0
009f(0): d6 1e 1f            MOVB P4SF, #0x1f
00a2(0): c6 02 e0 06         MOV LRB, #0x06e0
00a6(0): 8a ab 00            MOVB PSWL, #0x00
00a9(0): b7 00 01 ab 50      MOVB [0x0100], #0x50
00ae(0): b7 00 01 ab a0      MOVB [0x0100], #0xa0
00b3(0): b7 01 01 01         RB [0x0101].1
00b7(0): d6 08 00            MOVB TSR, #0x00
00ba(0): d6 0b f2            MOVB ROMWIN, #0xf2
00bd(0): 94 2a               LB A, [0x022a]
00bf(0): 34 28               STB A, [0x0228]
00c1(0): f6 0e               JNE 00d1
00c3(0): b4 2a ab cf         MOVB [0x022a], #0xcf
00c7(0): b6 14 0f            SB P4.7
00ca(0): f9 14               LB A, #0x14
00cc(0): 00                  NOP
00cd(0): bc ea fc ff         STB A, 0xfffc[X2]
00d1(0): 9e d2               CMPB A, #0xd2
00d3(0): f1 62               JEQ 0137
00d5(0): b4 29 d6            DECB [0x0229]
00d8(0): f6 60               JNE 013a
00da(0): b6 14 0f            SB P4.7
00dd(0): d6 15 d8            MOVB P5, #0xd8
00e0(0): b7 15 01 ab de      MOVB [0x0115], #0xde
00e5(0): d6 1f 00            MOVB P5SF, #0x00
00e8(0): 22 c2 1f            MOV DP, #0x1fc2
00eb(0): 52                  DEC DP
00ec(0): 62 93 c0 1f         CMP DP, #0x1fc0
00f0(0): f5 f9               JGE 00eb
00f2(0): b6 15 28 03         JBS P5.0, 00f9
00f6(0): 62 a6 f2            TJNZ DP, 00eb
00f9(0): b6 15 03            RB P5.3
00fc(0): 3f                  STB A, R7
00fd(0): 56                  ??? 56
00fe(0): 92                  LB A, [DP]
00ff(0): fa                  CLR A
0100(0): 7f                  LB A, R7
0101(0): b7 fc 8f 72         MOVB R2, [0x8ffc]
0105(0): 6a b3 1f            ANDB R2, #0x1f
0108(0): 57                  ??? 57
0109(0): 13 b6               MOVB R3, #0xb6
010b(0): 14 07               MOVB R4, #0x07
010d(0): f9 05               LB A, #0x05
010f(0): 00                  NOP
0110(0): bc ea fc b6         STB A, 0xb6fc[X2]
0114(0): 15 0b               MOVB R5, #0x0b
0116(0): 22 c2 1f            MOV DP, #0x1fc2
0119(0): 52                  DEC DP
011a(0): 62 93 c0 1f         CMP DP, #0x1fc0
011e(0): f5 f9               JGE 0119
0120(0): b6 15 28 03         JBS P5.0, 0127
0124(0): 62 a6 f2            TJNZ DP, 0119
0127(0): b6 15 03            RB P5.3
012a(0): b6 14 0f            SB P4.7
012d(0): fa                  CLR A
012e(0): 7f                  LB A, R7
012f(0): b7 fc 8f 72         MOVB R2, [0x8ffc]
0133(0): 57                  ??? 57
0134(0): 13 04               MOVB R3, #0x04
0136(0): fe                  ??? fe
0137(0): b4 28 c7            CLRB [0x0228]
013a(0): b7 1f 01 ab fa      MOVB [0x011f], #0xfa
013f(0): b7 05 01 ab ff      MOVB [0x0105], #0xff
0144(0): d6 4c 3c            MOVB sfr4c, #0x3c
0147(0): b6 14 0f            SB P4.7
014a(0): b6 0b 93 f2         CMP ROMWIN, #0xf2
014e(0): f6 31               JNE 0181
0150(0): a6 00 93 fe 09      CMP SSP, #0x09fe
0155(0): f6 2a               JNE 0181
0157(1): f8 55 55            L A, #0x5555
015a(1): 36 02               ST A, LRB
015c(1): a6 02 95            CMP A, LRB
015f(1): f6 20               JNE 0181
0161(1): 36 46               ST A, sfr46
0163(1): a6 46 95            CMP A, sfr46
0166(1): f6 19               JNE 0181
0168(1): 36 48               ST A, sfr48
016a(1): a6 48 95            CMP A, sfr48
016d(1): f6 12               JNE 0181
016f(0): d8                  RDD
0170(0): ce                  ??? ce
0171(0): c0                  ??? c0
0172(0): 36 4a               STB A, sfr4a
0174(0): b6 4a 95            CMPB A, sfr4a
0177(0): f6 08               JNE 0181
0179(0): 96 07               LB A, ACCH
017b(0): 36 04               STB A, PSWL
017d(0): 8a 95               CMPB A, PSWL
017f(0): f1 05               JEQ 0186
0181(0): b4 2a ab c0         MOVB [0x022a], #0xc0
0185(0): ff                  BRK
0186(1): d9                  SDD
0187(1): 8f                  ??? 8f
0188(1): f5 d0               JGE 015a
018a(1): fa                  CLR A
018b(1): 36 46               ST A, sfr46
018d(1): 36 48               ST A, sfr48
018f(0): d8                  RDD

```
