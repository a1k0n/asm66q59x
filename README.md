### Disassembler for OKI 66Q591/592.

All instructions are now supported and disassembly is, as far as I can tell,
correct insofar as it can track the DD flag.

See ecu.s for the full disassembly of all reachable code that the disassembler
can find and a hexdump of all the data.

Future work is to also track the Local Register Base (LRB) register so that
variable access can be further reverse-engineered when it uses the offset
addressing mode (`off(x)` refers to memory at `(LRBH << 8) + xx`).
