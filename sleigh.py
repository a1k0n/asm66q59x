# <word>, AKA ** table
# TODO: expand SFRs
wordprefix = '''
regop0=0xc & reg16 | reg16
op=0xA0 | X1indw
op=0xA1 | DPinddecw
op=0xA2 | DPindw
op=0xA3 | DPindincw
op=0xA4; op1fix16 | op1fix16
op=0xA5; op1off16 | op1off16
op=0xA6; op1sfr16 | op1sfr16
op=0xA7; op1n16 | op1n16
op=0xA8; X1immw| X1immw
op=0xA9; X2immw| X2immw
op=0xAA | X1plusAw
op=0xAB | X1plusR0w
'''
# op=0x8B; n7w | n7w | n7w

byteprefix = '''
regop0=0xd & reg8 | reg8
op=0xB0 | X1indb
op=0xB1 | DPinddecb
op=0xB2 | DPindb
op=0xB3 | DPindincb
op=0xB4; op1fix8 | op1fix8
op=0xB5; op1off8 | op1off8
op=0xB6; op1sfr8 | op1sfr8
op=0xB7; op1n16 | op1n16
op=0xB8; X1immb | X1immb
op=0xB9; X2immb | X2immb
op=0xBA | X1plusAb
op=0xBB | X1plusR0b
op=0x8A & PSWL | PSWL
op=0x9A & PSWH | PSWH
'''
# op=0x9B; n7b | n7b


def is_hex(s):
    if len(s) >= 3 and len(s) <= 4 and s[:2] == '0x':
        return True
    return len(s) == 2 and not any(x.islower() for x in s)


def export(prefix, b, disassembly, is8=None):
    pat = prefix
    context = ""

    if b[0].startswith('DD'):
        if b[0] == 'DD+':
            context = "[ dd=1; globalset(inst_next, dd); ]"
        elif b[0] == 'DD-':
            context = "[ dd=0; globalset(inst_next, dd); ]"
        elif b[0] == 'DD0':
            pat.append('dd=0 & ')
        elif b[0] == 'DD1':
            pat.append('dd=1 & ')
        else:
            raise Exception("unrecognized cond/effect", b[0])
        b = b[1:]

    # TODO: handle sbafix/sbaoff
    if len(b) > 1 and b[1].startswith('sba'):
        arg, off = b[1].split('+')
        return

    d = disassembly.split(' ', 1)
    fn = d[0]
    ops = []
    if len(d) > 1:
        ops = d[1].split(', ')
    for i in range(len(b)):
        if '+' in b[i]:
            # TODO: Rn, PRn, ERn, bit, Vadr, width, Cadr11
            # expandbase = int(b[i].split('+')[0], 16)
            # expandidx = i
            return
        if b[i] == 'l16':
            pat.append('n16')
        elif b[i] == 'h16':
            continue
        elif b[i] == 'TadrL':
            pat.append('Tadr')
            # TODO: Tadr
            return
        elif b[i] == 'TadrH':
            continue
        elif b[i] == 'T16L':
            # TODO: T16 addressing
            return
        elif b[i] == 'Cadr11L':
            # TODO: Cadr11
            return
        elif b[i] == 'CadrL':
            pat.append('Cadr')
            # TODO: Cadr
            return
        elif b[i] == 'CadrH':
            continue
        elif b[i] == 'n7':
            # TODO: n7
            return
        elif b[i] == 'rdiff8':
            pat.append('rel8')
            disassembly = disassembly.replace('radr', 'rel8')
        elif b[i] == 'sfr8':
            if 'sfr16' in disassembly:
                pat.append('sfr16')
            else:
                pat.append('sfr8')
        elif b[i] == '*':
            if '*' not in disassembly:
                # TODO: dummy prefixes
                return
            for line in byteprefix.split('\n'):
                line = line.strip().split('|')
                if len(line) < 2:
                    continue
                prefix, disop = line
                assert(i == 0)
                export([prefix.strip(), '; '], b[1:], disassembly.replace('*', disop.strip()), True)
            return
        elif b[i] == '**':
            if '**' not in disassembly:
                # TODO: dummy prefixes
                return
            for line in wordprefix.split('\n'):
                line = line.strip().split('|')
                if len(line) < 2:
                    continue
                prefix, disop = line
                assert(i == 0)
                export([prefix.strip(), '; '], b[1:], disassembly.replace('**', disop.strip()), False)
            return
        elif is_hex(b[i]):
            pat.append('op=0x%s' % b[i])
        else:
            pat.append(b[i])
        pat.append('; ')

    # 8 or 16 bit instruction?
    if is8 is None:
        # if we don't know, just guess based on the opcode
        if fn[-1] == 'B' and fn != "SUB":
            is8 = True
        else:
            is8 = False

    if '.' in disassembly and len(prefix) == 0:
        disassembly = disassembly.replace('.', '^"."^')

    printops = []
    for i in range(len(ops)):
        if ops[i] == 'A':
            ops[i] = is8 and 'A8' or 'A16'
        # ^^^ printops[i] == ops[i]
        printops.append(ops[i])
        # vvv printops needs modification
        if '.' in ops[i]:
            # need some fixups for bit ops
            printops[i] = printops[i].replace('.', '^"."^')
            ops[i] = ','.join(ops[i].split('.'))
    # discard last element of pat, as it's a ; terminator
    print(':'+fn+' ' + ', '.join(printops), 'is', ''.join(pat[:-1]),
          context, '{} # %s' % (', '.join(ops)))


def gen():
    opcodelist = open("ops.txt").read()
    for line in opcodelist.split('\n'):
        if len(line) < 1 or line.startswith('#'):
            continue
        pat, dis = line.split(' = ')
        export([], pat.split(), dis)

if __name__ == '__main__':
    gen()