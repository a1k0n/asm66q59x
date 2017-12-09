### WIP disassembler for OKI 66Q591.

So far, only MOV/MOVB is supported; need to do a ton of data entry now.

example:

```
$ python opcode.py && g++ -o dasm dasm.cpp && ./dasm
0093: c6 00 fe 09         MOV SSP, #0x09fe
0097: d6 14 60            MOVB P4, #0x60
009a: b7 14 01 ab e0      MOVB dir(0x0114), #0xe0
009f: d6 1e 1f            MOVB P4SF, #0x1f
00a2: c6 02 e0 06         MOV LRB, #0x06e0
00a6: 8a ab 00            MOVB PSWL, #0x00
00a9: b7 00 01 ab 50      MOVB dir(0x0100), #0x50
00ae: b7 00 01 ab a0      MOVB dir(0x0100), #0xa0
00b3: b7 01 01 01         ??? 01
00b7: d6 08 00            MOVB TSR, #0x00
00ba: d6 0b f2            MOVB ROMWIN, #0xf2
00bd: 94                  ??? 94
00be: 2a                  ??? 2a
00bf: 34                  ??? 34
00c0: 28                  ??? 28
00c1: f6                  ??? f6
00c2: 0e                  ??? 0e
00c3: b4 2a ab cf         MOVB fix(0x2a), #0xcf
00c7: b6 14 0f            ??? 0f
00ca: f9                  ??? f9
```
