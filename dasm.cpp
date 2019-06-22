#include <stdio.h>
#include <stdint.h>
#include <deque>
#include <map>
#include <string>


// TODO(asloane): LRB tracking
struct DasmQueueEntry {
  uint16_t addr;
  int8_t dd;
  uint8_t lrbh;

  DasmQueueEntry() {}
  DasmQueueEntry(uint16_t addr, int8_t dd, uint8_t lrbh) {
    this->addr = addr;
    this->dd = dd;
    this->lrbh = lrbh;
  }
};

class DasmnX8 {
 private:
  const uint8_t *rom_;
  bool *code_mask_;
  bool *dd_value_;
  uint8_t *lrbh_value_;

  uint16_t nexti_;
  bool end_block_;
  uint8_t dd_;
  uint8_t lrbh_;

  std::multimap<uint16_t, std::string> labels_;
  std::map<uint16_t, std::string> data_labels_;
  std::deque<DasmQueueEntry> dasm_queue_;

  const char *get_code_label(uint16_t addr, const char *prefix="label") {
    std::map<uint16_t, std::string>::iterator l = labels_.find(addr);
    if (l != labels_.end()) {
      return l->second.c_str();
    }
    dasm_queue_.push_back(DasmQueueEntry(addr, dd_, lrbh_));
    char buf[32];
    snprintf(buf, sizeof(buf), "%s_%04x", prefix, addr);
    std::string label(buf);
    labels_.insert(std::make_pair(addr, label));
    return label.c_str();
  }

  const char *get_loop_label(uint16_t addr) {
    return get_code_label(addr, "loop");
  }

  const char *get_data_label(uint16_t addr) {
    static char databuf[32];

    std::map<uint16_t, std::string>::iterator l = data_labels_.find(addr);
    if (l != data_labels_.end()) {
      return l->second.c_str();
    }

    // also add exceptions for certain values
    if (addr > 0x8000 && addr != 0xaaaa) {
      snprintf(databuf, sizeof(databuf), "tbl_%04x", addr);
      std::string label(databuf);
      data_labels_.insert(std::make_pair(addr, label));
    }
    snprintf(databuf, sizeof(databuf)-1, "0x%04x", addr);
    return databuf;
  }

  const char *parsebytesuffix(uint16_t addr, const char *byteop) {
#include "bytesuffix.i"
      return "???";
  }

  const char *parsewordsuffix(uint16_t addr, const char *wordop) {
#include "wordsuffix.i"
      return "???";
  }

  const char *sfr16_name(uint8_t sfr) {
    switch (sfr) {
#include "sfr16.i"
    }
    static char buf[16];
    snprintf(buf, sizeof(buf), "sfr(0x%02x)", sfr);
    return buf;
  }

  const char *sfr8_name(uint8_t sfr) {
    switch (sfr) {
#include "sfr8.i"
    }
    static char buf[16];
    snprintf(buf, sizeof(buf), "sfr(0x%02x)", sfr);
    return buf;
  }

  int signextend7(uint8_t byte) {
    int8_t n7 = (int8_t) (byte << 1);
    return n7 >> 1;
  }

 public:
  explicit DasmnX8(const uint8_t *rom) {
    rom_ = rom;
    dd_ = 0;
    nexti_ = 0;
    end_block_ = false;
  }

  uint16_t NextAddress() { return nexti_; }
  uint8_t GetDD() { return dd_; }
  uint8_t GetLRBH() { return lrbh_; }

  // Returns string representation of opcode at addr;
  // also updates NextAddress().
  const char *GetInstruction(uint16_t addr) {
    // special cases for lrbh
    if (rom_[addr] == 0xD6 && rom_[addr+1] == 0x03) {
      lrbh_ = rom_[addr+2];
    }
    if (rom_[addr] == 0xC6 && rom_[addr+1] == 0x02) {
      lrbh_ = rom_[addr+3];
    }
#include "opcode.i"
      return "???";
  }

  void AddVector(uint16_t vaddr, const char *name) {
    // what is DD initially set to anyway?
    uint16_t addr = rom_[vaddr] + (rom_[vaddr+1] << 8);
    dasm_queue_.push_back(DasmQueueEntry(addr, 0, 0));
    labels_.insert(make_pair(addr, std::string(name) + "_vector"));
    printf("%20s dw %s_vector  ; 0x%04x\n", "", name, addr);
  }

  // Disassembler pass 1:
  void AddResetVectors() {
    AddVector(0x0000, "reset");
    AddVector(0x0002, "brk");
    AddVector(0x0004, "wdt");
    AddVector(0x0006, "optrp");
    AddVector(0x0008, "nmi");
    AddVector(0x000a, "int0");
    AddVector(0x000c, "tm0");
    AddVector(0x000e, "tm1");
    AddVector(0x0010, "cap0");
    AddVector(0x0012, "cap1");
    AddVector(0x0014, "cap2");
    AddVector(0x0016, "cap3");
    AddVector(0x0018, "rto4");
    AddVector(0x001a, "rto5");
    AddVector(0x001c, "rto6");
    AddVector(0x001e, "rto7");
    AddVector(0x0020, "rto8");
    AddVector(0x0022, "rto9");
    AddVector(0x0024, "rto10");
    AddVector(0x0026, "rto11");
    AddVector(0x0028, "sci1");
    AddVector(0x002a, "sxtm");
    AddVector(0x002c, "gtmc");
    AddVector(0x002e, "adc1");
    AddVector(0x0030, "adc0");
    AddVector(0x0032, "pwc0_1");
    AddVector(0x0034, "pwc2_3");
    AddVector(0x0036, "sci0");
    AddVector(0x0038, "int1");
    AddVector(0x003a, "rto12");
    AddVector(0x003c, "rto13");
    AddVector(0x003e, "pwc4_5");
    AddVector(0x0040, "pwc6_7");
    AddVector(0x0042, "cap14");
    AddVector(0x0044, "cap15");
    AddVector(0x0046, "ftm16");
    AddVector(0x0048, "ftm17");
    for (int i = 0; i < 16; i++) {
      char buf[8];
      snprintf(buf, sizeof(buf), "vcal%d", i);
      AddVector(0x004a + 2*i, buf);
    }
    AddVector(0x006a, "pwc8_9");
    AddVector(0x006c, "pwc10_11");
    AddVector(0x006e, "sci2");
    AddVector(0x0070, "sci3");
    AddVector(0x0072, "sci4");
    AddVector(0x0074, "sci5");
  }

  void Pass1() {
    AddResetVectors();
    // hack for switch/case @ 145e
    for (int i = 0x9254; i < 0x9294; i += 2) {
      uint16_t addr = rom_[i] + (rom_[i+1] << 8);
      int n = (i - 0x9254) / 2;
      dasm_queue_.push_back(DasmQueueEntry(addr, 1, 0));
      labels_.insert(make_pair(addr, std::string("case_") + std::to_string(n)));
    }
    dd_ = 0;
    lrbh_ = 0;
    code_mask_ = new bool[65536];
    dd_value_ = new bool[65536];
    lrbh_value_ = new uint8_t[65536];
    while (!dasm_queue_.empty()) {
      DasmQueueEntry e = dasm_queue_.front();
      dasm_queue_.pop_front();

      uint16_t addr = e.addr;
      if (code_mask_[addr]) {  // already reached here
        continue;
      }
      dd_ = e.dd;
      lrbh_ = e.lrbh;
      end_block_ = false;
      while (!end_block_) {
        const char *insn = GetInstruction(addr);
        uint16_t nextaddr = NextAddress();
        for (; addr != nextaddr; addr++) {
          code_mask_[addr] = true;
          dd_value_[addr] = dd_;
          lrbh_value_[addr] = lrbh_;
        }
      }
    }
  }

  // fix this garbage
  void OutputLabels(uint16_t addr) {
    std::multimap<uint16_t, std::string>::iterator i;
    for (i = labels_.find(addr); i != labels_.end() && i->first == addr; i++) {
      printf("%s:\n", i->second.c_str());
    }
    for (i = data_labels_.find(addr); i != data_labels_.end() && i->first == addr; i++) {
      printf("%s:\n", i->second.c_str());
    }
  }

  bool HasDataLabel(uint16_t addr) {
    return data_labels_.find(addr) != data_labels_.end();
  }

  bool IsCode(uint16_t addr) { return code_mask_[addr]; }
  void SetRegsFromAddress(uint16_t addr) {
    dd_ = dd_value_[addr];
    lrbh_ = lrbh_value_[addr];
  }
};

int main(int argc, char **argv) {
  if (argc < 2) {
    fprintf(stderr, "%s [ecu.bin]\n", argv[0]);
    return 1;
  }

  const char *fname = argv[1];

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

  dasm.Pass1();

  uint16_t addr = 0x76;
  while (addr != 0) {
    dasm.OutputLabels(addr);
    if (!dasm.IsCode(addr)) {
      int run = 0;
      while ((addr + run) <= 65536
          && rom[addr+run] == 0xff
          && !dasm.IsCode(addr+run)) {
        run++;
      }
      if (run > 7) {
        // at least 3 FFs in a row; skip to next occupied address
        addr += run;
        if (addr == 0) {
          break;
        }
        printf("\norg 0x%04x\n", addr);
        continue;
      }
      if ((addr & 0x0f) != 0) {
        printf("0x%04x: %24s db%*s", addr, "", (addr & 0x0f)*3, "");
      }
      // wow this is terrible code.
      while (!dasm.IsCode(addr) && addr != 0) {
        if ((addr & 0x0f) == 0) {
          printf("0x%04x: %24s db", addr, "");
        }
        printf(" %02x", rom[addr]);
        addr++;
        if ((addr & 0x0f) == 0) {
          printf("\n");
        }
        if (rom[addr] == 0xff && (addr & 0x0f) == 0) {
          break;
        }
        if (dasm.HasDataLabel(addr)) {
          break;
        }
      }
      if ((addr & 0x0f) != 0) {
        printf("\n");
      }
      continue;
    }
    dasm.SetRegsFromAddress(addr);
    const char *insn = dasm.GetInstruction(addr);
    uint16_t nextaddr = dasm.NextAddress();
    int nspace = 20;
    printf("0x%04x DD=%d: ", addr, dasm.GetDD());

    for (; addr != nextaddr; addr++) {
      printf("%02x ", rom[addr]);
      nspace -= 3;
    }
    while (nspace-- > 0) {
      putc(' ', stdout);
    }

    printf("%s\n", insn);
  }
}
