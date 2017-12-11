### WIP disassembler for OKI 66Q591.

All instructions are now supported and disassembly is, as far as I can tell,
correct insofar as it can track the DD flag.

The next step is to add basic block extraction and DD flag tracking through
jumps and calls, and also to disassemble only reachable code and not
disassemble data as instructions.

example:

```
$ python opcode.py && g++ -o dasm dasm.cpp && ./dasm

0076(0): b4 2a ab d2         MOVB 0x022a, #0xd2
007a(0): b4 29 ab 02         MOVB 0x0229, #0x02
007e(0): ff                  BRK
007f(0): b4 2a ab cc         MOVB 0x022a, #0xcc
0083(0): ff                  BRK
0084(0): b4 2a ab cd         MOVB 0x022a, #0xcd
0088(0): ff                  BRK
0089(0): b4 2a ab ce         MOVB 0x022a, #0xce
008d(0): ff                  BRK
008e(0): b4 2a ab d3         MOVB 0x022a, #0xd3
0092(0): ff                  BRK
0093(0): c6 00 fe 09         MOV SSP, #0x09fe
0097(0): d6 14 60            MOVB P4, #0x60
009a(0): b7 14 01 ab e0      MOVB 0x0114, #0xe0
009f(0): d6 1e 1f            MOVB P4SF, #0x1f
00a2(0): c6 02 e0 06         MOV LRB, #0x06e0
00a6(0): 8a ab 00            MOVB PSWL, #0x00
00a9(0): b7 00 01 ab 50      MOVB 0x0100, #0x50
00ae(0): b7 00 01 ab a0      MOVB 0x0100, #0xa0
00b3(0): b7 01 01 01         RB 0x0101.1
00b7(0): d6 08 00            MOVB TSR, #0x00
00ba(0): d6 0b f2            MOVB ROMWIN, #0xf2
00bd(0): 94 2a               LB A, 0x022a
00bf(0): 34 28               STB A, 0x0228
00c1(0): f6 0e               JNE 0x00d1
00c3(0): b4 2a ab cf         MOVB 0x022a, #0xcf
00c7(0): b6 14 0f            SB P4.7
00ca(0): f9 14               LB A, #0x14
00cc(0): 00                  NOP
00cd(0): bc ea fc            DJNZ A, 0x00cc
00d0(0): ff                  BRK
00d1(0): 9e d2               CMPB A, #0xd2
00d3(0): f1 62               JEQ 0x0137
00d5(0): b4 29 d6            DECB 0x0229
00d8(0): f6 60               JNE 0x013a
00da(0): b6 14 0f            SB P4.7
00dd(0): d6 15 d8            MOVB P5, #0xd8
00e0(0): b7 15 01 ab de      MOVB 0x0115, #0xde
00e5(0): d6 1f 00            MOVB P5SF, #0x00
00e8(0): 22 c2 1f            MOV DP, #0x1fc2
00eb(0): 52                  DEC DP
00ec(0): 62 93 c0 1f         CMP DP, #0x1fc0
00f0(0): f5 f9               JGE 0x00eb
00f2(0): b6 15 28 03         JBS P5.0, 0x00f9
00f6(0): 62 a6 f2            TJNZ DP, 0x00eb
00f9(0): b6 15 03            RB P5.3
00fc(0): 3f                  STB A, R7
00fd(0): 56 92               ACAL 0x1692
00ff(1): fa                  CLR A
0100(0): 7f                  LB A, R7
0101(0): b7 fc 8f 72         MOVB R2, 0x8ffc
0105(0): 6a b3 1f            ANDB R2, #0x1f
0108(0): 57 13               ACAL 0x1713
010a(0): b6 14 07            RB P4.7
010d(0): f9 05               LB A, #0x05
010f(0): 00                  NOP
0110(0): bc ea fc            DJNZ A, 0x010f
0113(0): b6 15 0b            SB P5.3
0116(0): 22 c2 1f            MOV DP, #0x1fc2
0119(0): 52                  DEC DP
011a(0): 62 93 c0 1f         CMP DP, #0x1fc0
011e(0): f5 f9               JGE 0x0119
0120(0): b6 15 28 03         JBS P5.0, 0x0127
0124(0): 62 a6 f2            TJNZ DP, 0x0119
0127(0): b6 15 03            RB P5.3
012a(0): b6 14 0f            SB P4.7
012d(1): fa                  CLR A
012e(0): 7f                  LB A, R7
012f(0): b7 fc 8f 72         MOVB R2, 0x8ffc
0133(0): 57 13               ACAL 0x1713
0135(0): 04 fe               SJ 0x0135
...
```
