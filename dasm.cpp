#include <stdio.h>
#include <stdint.h>


class DasmnX8 {
 private:
  const uint8_t *rom_;
  uint16_t nexti_;

  const char *parsebytesuffix(uint16_t addr, const char *byteop) {
#include "bytesuffix.i"
  }

  const char *parsewordsuffix(uint16_t addr, const char *wordop) {
#include "wordsuffix.i"
  }

  const char *sfr16_name(uint8_t sfr) {
    switch (sfr) {
#include "sfr16.i"
    }
    static char buf[16];
    snprintf(buf, sizeof(buf), "sfr%02x", sfr);
    return buf;
  }

  const char *sfr8_name(uint8_t sfr) {
    switch (sfr) {
#include "sfr8.i"
    }
    static char buf[16];
    snprintf(buf, sizeof(buf), "sfr%02x", sfr);
    return buf;
  }

  int signextend7(uint8_t byte) {
    int8_t n7 = (int8_t) (byte << 1);
    return n7 >> 1;
  }

 public:
  explicit DasmnX8(const uint8_t *rom) {
    rom_ = rom;
    nexti_ = 0x93;  // todo: load reset vector
  }

  uint16_t NextAddress() { return nexti_; }

  // Returns string representation of opcode at addr;
  // also updates NextAddress().
  const char *GetInstruction(uint8_t addr) {
#include "opcode.i"
  }
};

int main() {
  const char *fname = "ecu.bin";

  uint8_t rom[65536];
  FILE *fp = fopen(fname, "rb");
  if (!fp) {
    perror(fname);
    return 1;
  }
  if (fread(rom, 1, 65536, fp) != 65536) {
    perror("short read");
    return 1;
  }

  DasmnX8 dasm(rom);

  uint16_t addr = dasm.NextAddress();
  for (int i = 0; i < 20; i++) {
    const char *insn = dasm.GetInstruction(addr);
    uint16_t nextaddr = dasm.NextAddress();
    int nspace = 20;
    printf("%04x: ", addr);
    for (; addr < nextaddr; addr++) {
      printf("%02x ", rom[addr]);
      nspace -= 3;
    }
    while (nspace-- > 0) {
      putc(' ', stdout);
    }

    printf("%s\n", insn);
  }
}
