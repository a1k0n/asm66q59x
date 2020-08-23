# <word>, AKA ** table
# TODO: expand SFRs
wordprefix = '''
regop0=0xc & reg16 | reg16
op=0xA0 & X1indw | X1indw
op=0xA1 & DPinddecw| DPinddecw
op=0xA2 & DPindw | DPindw
op=0xA3 & DPindincw| DPindincw
op=0xA4; op1fix16 | op1fix16
op=0xA5; op1off16 | op1off16
op=0xA6; op1sfr16 | op1sfr16
op=0xA7; op1n16w | op1n16w
op=0xA8; X1immw| X1immw
op=0xA9; X2immw| X2immw
op=0xAA & X1plusAw | X1plusAw
op=0xAB & X1plusR0w | X1plusR0w
'''
# op=0x8B; n7w | n7w | n7w

byteprefix = '''
regop0=0xd & reg8 | reg8
op=0xB0 & X1indb | X1indb
op=0xB1 & DPinddecb | DPinddecb
op=0xB2 & DPindb | DPindb
op=0xB3 & DPindincb | DPindincb
op=0xB4; op1fix8 | op1fix8
op=0xB5; op1off8 | op1off8
op=0xB6; op1sfr8 | op1sfr8
op=0xB7; op1n16b | op1n16b
op=0xB8; X1immb | X1immb
op=0xB9; X2immb | X2immb
op=0xBA & X1plusAb | X1plusAb
op=0xBB & X1plusR0b | X1plusR0b
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
            op, field = b[i].split('+')
            if field == 'bit':
                pat.append('bitop0=%d & bit' % (int(op, 16) >> 3))
            elif field == 'n':
                if 'ERn' in disassembly:
                    pat.append('hregop0=%d & ERn' % (int(op, 16) >> 2))
                elif 'PRn' in disassembly:
                    pat.append('hregop0=%d & PRn' % (int(op, 16) >> 2))
                elif 'Rn' in disassembly:
                    pat.append('regop0=%d & Rn' % (int(op, 16) >> 3))
                else:
                    assert('unknown +field ' + b[i])
            else:
                # TODO: Vadr, width, Cadr11
                return
        elif b[i] == 'l16':
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
        elif b[i] == 'sfr8':
            if 'sfr16' in disassembly:
                pat.append('sfr16')
            else:
                pat.append('sfr8')
        elif b[i] == 'rdiff7':
            pat.append('rdiff7 & r45switch')
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
        elif fn in ['BAND', 'BANDN', 'BOR', 'BORN', 'BXOR', 'MB', 'MBR',
                    'RB', 'RBR', 'BC', 'SBR', 'TBR']:
            # bit ops must be 8-bit
            is8 = True
        else:
            is8 = False

    if '.' in disassembly and len(prefix) == 0:
        disassembly = disassembly.replace('.', '^"."^')

    printops = []
    for i in range(len(ops)):
        if ops[i] == 'A':
            ops[i] = is8 and 'A8' or 'A16'
            pat = pat[:-1]
            pat.extend([" & " + ops[i], ";"])
        elif ops[i] == 'A.bit':
            ops[i] = 'A8.bit'
            pat = pat[:-1]
            pat.extend([" & A8", ";"])
        elif ops[i] == 'R45':
            ops[i] = 'r45switch'
        elif ops[i] >= 'R0' and ops[i] <= 'R7':  # special case single-register opcodes
            pat = pat[:-1]
            pat.extend([" & " + ops[i], ";"])
        elif ops[i] == 'radr':
            ops[i] = 'rel8'
        elif ops[i] == 'n16[X1]':
            pat = pat[:-1]
            pat.extend([" & X1", ";"])
        elif ops[i] == 'n16[X2]':
            pat = pat[:-1]
            pat.extend([" & X2", ";"])
        elif ops[i] == 'C':
            pat = pat[:-1]
            pat.extend([" & C", ";"])
        elif '(AL)' in ops[i]:
            pat = pat[:-1]
            pat.extend([" & AL", ";"])
        # ^^^ printops[i] == ops[i]
        printops.append(ops[i])
        # vvv printops needs modification
        if '.' in ops[i]:
            # need some fixups for bit ops
            printops[i] = printops[i].replace('.', '^"."^')
            ops[i] = ','.join(ops[i].split('.'))
        elif ops[i][0] == '#':
            # remove # from #n16
            ops[i] = ops[i][1:]
        elif ops[i][0] == '[':
            # TODO: indirect references
            return
    # discard last element of pat, as it's a ; terminator
    fncall = fn.lower() + "(" + ', '.join(ops) + ")"
    print(':'+fn+' ' + ', '.join(printops), 'is', ''.join(pat[:-1]),
          context, '{} # %s' % (fncall))


def gen():
    opcodelist = open("ops.txt").read()
    for line in opcodelist.split('\n'):
        if len(line) < 1 or line.startswith('#'):
            continue
        pat, dis = line.split(' = ')
        export([], pat.split(), dis)

if __name__ == '__main__':
    gen()
