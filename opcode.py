import re

# <word>, AKA ** table
# TODO: expand SFRs
wordprefix = '''
60+n = PRn
64+n = ERn
A0 = [X1]
A1 = [DP-]
A2 = [DP]
A3 = [DP+]
A4 fix8 = fix8
A5 off8 = off8
A6 sfr8 = sfr16
A7 l16 h16 = n16
A8 l16 h16 = n16[X1]
A9 l16 h16 = n16[X2]
8B n7 = n7p
AA = [X1+A]
AB = [X1+R0]
'''

byteprefix = '''
68+n = Rn
B0 = [X1]
B1 = [DP-]
B2 = [DP]
B3 = [DP+]
B4 fix8 = fix8
B5 off8 = off8
B6 sfr8 = sfr8
B7 l16 h16 = n16
B8 l16 h16 = n16[X1]
B9 l16 h16 = n16[X2]
9B n7 = n7p
BA = [X1+A]
BB = [X1+R0]
8A = PSWL
9A = PSWH
'''

opcodelist = open("ops.txt").read()


def parse_spec(data):
    ''' parse the byte, word, and opcode specs, expanding Rns as necessary '''
    for line in data.split('\n'):
        if len(line) < 1 or line.startswith('#'):
            continue
        k, v = line.split(' = ')
        b = k.split()
        cond = None
        effect = []
        if b[0].startswith('DD'):
            if b[0] == 'DD+':
                effect.append("dd_ = 1;")
            elif b[0] == 'DD-':
                effect.append("dd_ = 0;")
            elif b[0] == 'DD0':
                cond = '!dd_'
            elif b[0] == 'DD1':
                cond = 'dd_'
            else:
                raise "unrecognized cond/effect", b[0]
            b = b[1:]
        expandbase = None
        expandidx = None
        for i in range(len(b)):
            if '+' in b[i]:
                expandbase = int(b[i].split('+')[0], 16)
                expandidx = i
                break
        if expandbase is not None:
            for exp in re.findall(r'(Rn|PRn|ERn|bit|Vadr)', v):
                if exp == 'Rn':
                    for n in range(0, 8):
                        b[expandidx] = hex(expandbase + n)
                        yield b[:], v.replace('Rn', 'R%d' % n), cond, effect
                if exp == 'ERn':
                    for n in range(0, 4):
                        b[expandidx] = hex(expandbase + n)
                        yield b[:], v.replace('ERn', 'ER%d' % n), cond, effect
                if exp == 'PRn':
                    for n, reg in enumerate(['X1', 'X2', 'DP', 'USP']):
                        b[expandidx] = hex(expandbase + n)
                        yield b[:], v.replace('PRn', reg), cond, effect
                if exp == 'bit':
                    for n in range(0, 8):
                        b[expandidx] = hex(expandbase + n)
                        yield b[:], v.replace('bit', '%d' % n), cond, effect
                if exp == 'Vadr':
                    for n in range(0, 16):
                        b[expandidx] = hex(expandbase + n)
                        yield b[:], v.replace('Vadr', '0x%x' % n), cond, effect
        else:
            yield b, v, cond, effect


def format_ops(opcodes, insn):
    ''' assuming opcodes[1:] are all arguments to opcodes[0] (which is always
    true), generate code to replace variables in insn w/ input bytes '''
    args = []
    for exp in re.findall(r'(fix8|off8|sfr8|sfr16|a8|n8|n16|Cadr|T16|Tadr|n7p|radr|rdiff7|\*+)', insn):
        print 'formatting', exp, 'in', insn
        if exp == 'fix8':
            insn = insn.replace(exp, "0x02%02x", 1)
            args.append("rom_[addr+%d]" % opcodes.index(exp))
        elif exp == 'off8':
            insn = insn.replace(exp, "off(0x%02x)", 1)
            args.append("rom_[addr+%d]" % opcodes.index(exp))
        elif exp == 'sfr8':
            insn = insn.replace(exp, "%s", 1)
            args.append("sfr8_name(rom_[addr+%d])" % opcodes.index('sfr8'))
        elif exp == 'sfr16':
            insn = insn.replace(exp, "%s", 1)
            args.append("sfr16_name(rom_[addr+%d])" % opcodes.index('sfr8'))
        elif exp == 'a8':
            insn = insn.replace(exp, "%02x", 1)
            args.append("rom_[addr+%d]" % opcodes.index(exp))
        elif exp == 'n8':
            insn = insn.replace(exp, "0x%02x", 1)
            args.append("rom_[addr+%d]" % opcodes.index(exp))
        elif exp == 'n16':
            insn = insn.replace(exp, "0x%02x%02x", 1)
            args.extend([
                "rom_[addr+%d]" % opcodes.index('h16'),
                "rom_[addr+%d]" % opcodes.index('l16')])
        elif exp == 'n7p':
            idx = opcodes.index('n7')
            insn = insn.replace(exp, '%d[%s]', 1)
            args.extend([
                "signextend7(rom_[addr+%d] & 0x7f)" % idx,
                "rom_[addr+%d] < 0x80 ? \"DP\" : \"USP\"" % idx])
        elif exp == 'rdiff7':  # 7-bit loop addr, -128..-1
            # TODO: add loop block label
            idx = opcodes.index(exp)
            insn = insn.replace('R45', 'R%d', 1)
            insn = insn.replace(exp, '0x%04x', 1)
            args.extend([
                'rom_[addr+%d] & 0x80 ? 5 : 4' % idx,
                'addr + %d + ((int8_t) 0x80|rom_[addr+%d])' % (
                    len(opcodes), idx)
            ])
        elif exp == 'radr':  # relative address
            # TODO: add code block label
            insn = insn.replace(exp, '0x%04x', 1)
            args.append('addr + %d + ((int8_t) rom_[addr+%d])' % (
                len(opcodes), opcodes.index('rdiff8')))
        elif exp == 'Cadr':  # code address
            # TODO: add code label
            insn = insn.replace(exp, '0x%04x', 1)
            args.append('rom_[addr+%d] + (rom_[addr+%d] << 8)' % (
                opcodes.index('CadrL'),
                opcodes.index('CadrH')))
        elif exp == 'Tadr':  # absolute ROM table address
            # TODO: add a ROM table label
            insn = insn.replace(exp, '0x%04x', 1)
            args.append('rom_[addr+%d] + (rom_[addr+%d] << 8)' % (
                opcodes.index('TadrL'),
                opcodes.index('TadrH')))
        elif exp == 'T16':  # relative ROM table address
            # this is a relative table offset; can't use a label
            insn = insn.replace(exp, '0x%04x', 1)
            args.append('rom_[addr+%d] + (rom_[addr+%d] << 8)' % (
                opcodes.index('T16L'),
                opcodes.index('T16H')))
        elif exp == '*':
            insn = insn.replace(exp, '%s', 1)
            args.extend(['byteop'])
        elif exp == '**':
            insn = insn.replace(exp, '%s', 1)
            args.extend(['wordop'])
        else:
            raise "wtf?", exp
    return insn, args


def gen():
    byte0 = [None] * 256
    for opcodes, insn, _, _ in parse_spec(byteprefix):
        opbyte = int(opcodes[0], 16)
        op, args = format_ops(opcodes, insn)
        if len(args) == 0:
            byte0[opbyte] = [
                "return parsebytesuffix(addr+%d, \"%s\");" % (
                    len(opcodes), op)
            ]
        else:
            byte0[opbyte] = [
                "sprintf(buf, \"%s\", %s);" % (op, ', '.join(args)),
                "return parsebytesuffix(addr+%d, buf);" % (
                    len(opcodes))
            ]

    for opcodes, insn, _, _ in parse_spec(wordprefix):
        opbyte = int(opcodes[0], 16)
        op, args = format_ops(opcodes, insn)
        if len(args) == 0:
            byte0[opbyte] = [
                "return parsewordsuffix(addr+%d, \"%s\");" % (
                    len(opcodes), op)
            ]
        else:
            byte0[opbyte] = [
                "sprintf(buf, \"%s\", %s);" % (op, ', '.join(args)),
                "return parsewordsuffix(addr+%d, buf);" % (
                    len(opcodes))
            ]

    def add_insn(byte0, opcodes, insn, cond, effect):
        op, args = format_ops(opcodes, insn)
        opbyte = int(opcodes[0], 16)
        code = []
        indent = ''
        if cond is not None:
            code.append('if (%s) {' % cond)
            indent = '  '
        for e in effect:
            code.append(indent + e)
        if len(args) == 0:
            code.extend([
                indent + 'nexti_ = addr + %d;' % len(opcodes),
                indent + 'return "%s";' % op
            ])
        else:
            code.extend([
                indent + 'nexti_ = addr + %d;' % len(opcodes),
                indent + "sprintf(buf, \"%s\", %s);" % (op, ', '.join(args)),
                indent + "return buf;"
            ])
        if cond is not None:
            code.append('}')

        if byte0[opbyte] is not None:
            byte0[opbyte].extend(code)
        else:
            byte0[opbyte] = code

    bytesuffix0 = [None] * 256
    wordsuffix0 = [None] * 256
    for opcodes, insn, cond, effect in parse_spec(opcodelist):
        # we'll handle the word and byte stuff separately
        if opcodes[0] == '*':
            add_insn(bytesuffix0, opcodes[1:], insn, cond, effect)
        elif opcodes[0] == '**':
            add_insn(wordsuffix0, opcodes[1:], insn, cond, effect)
        else:
            add_insn(byte0, opcodes, insn, cond, effect)

    def dumpswitchtable(fname, byte0, operand):
        f = open(fname, 'w')
        print >>f, 'static char buf[128];'
        print >>f, 'switch(rom_[addr]) {'
        for i in range(256):
            if byte0[i] is not None:
                print >>f, "  case 0x%02x:" % i
                for line in byte0[i]:
                    print >>f, "    " + line
                print >>f, "    break;"
        print >>f, '  default:'
        if operand is not None:
            print >>f, '    sprintf(buf, "??? %02x %s", rom_[addr], ' + operand + ');'
        else:
            print >>f, '    sprintf(buf, "??? %02x", rom_[addr]);'
        print >>f, '    nexti_ = addr + 1;'
        print >>f, '    return buf;'
        print >>f, '}'
        f.close()

    dumpswitchtable("opcode.i", byte0, None)
    dumpswitchtable("bytesuffix.i", bytesuffix0, 'byteop')
    dumpswitchtable("wordsuffix.i", wordsuffix0, 'wordop')

    f8 = open("sfr8.i", "w")
    f16 = open("sfr16.i", "w")
    for line in open("sfrs.txt"):
        sfr = line.strip().split()
        if len(sfr) < 2:
            continue
        print >>f8, "case 0x%s:" % sfr[0]
        print >>f8, '  return "%s";' % sfr[1]
        if len(sfr) > 2:
            print >>f16, "case 0x%s:" % sfr[0]
            print >>f16, '  return "%s";' % sfr[2]
    f8.close()
    f16.close()

gen()

