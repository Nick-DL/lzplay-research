#!/usr/bin/env python3
"""Minimal 32-bit x86 length disassembler + mnemonic renderer.
Enough to read libjiagu_x86.so: finds calls/strings/loops, renders operands.
Not a full disassembler - focused on control flow, immediates and memory refs."""
import struct, sys, base64, gzip, re, os

REGS32 = ['eax','ecx','edx','ebx','esp','ebp','esi','edi']
REGS8  = ['al','cl','dl','bl','ah','ch','dh','bh']

class Insn:
    __slots__ = ('addr','size','text','target','is_call','is_jmp','is_ret','bytes_')
    def __init__(self, addr, size, text, target=None, is_call=False, is_jmp=False, is_ret=False, bs=b''):
        self.addr=addr; self.size=size; self.text=text; self.target=target
        self.is_call=is_call; self.is_jmp=is_jmp; self.is_ret=is_ret; self.bytes_=bs
    def __repr__(self):
        return '%08x  %-28s %s' % (self.addr, self.bytes_.hex(), self.text)


def modrm(d, p, addr, size_of_addr=False):
    """Decode modrm/sib/disp. Return (mod, reg, rm, text, newp)."""
    m = d[p]; p += 1
    mod = m >> 6; reg = (m >> 3) & 7; rm = m & 7
    txt = None
    if mod != 3:
        if rm == 4:  # SIB
            sib = d[p]; p += 1
            scale = 1 << (sib >> 6); index = (sib >> 3) & 7; base = sib & 7
            parts = []
            if index != 4:
                parts.append(REGS32[index] + ('' if scale == 1 else '*%d' % scale))
            if mod == 0 and base == 5:
                disp = struct.unpack_from('<i', d, p)[0]; p += 4
                parts.append('%#x' % disp)
            else:
                parts.append(REGS32[base])
                if mod == 1:
                    disp = struct.unpack_from('<b', d, p)[0]; p += 1
                    if disp: parts.append('%+#x' % disp)
                elif mod == 2:
                    disp = struct.unpack_from('<i', d, p)[0]; p += 4
                    if disp: parts.append('%+#x' % disp)
            txt = '[' + '+'.join(parts) + ']'
        elif mod == 0 and rm == 5:
            disp = struct.unpack_from('<i', d, p)[0]; p += 4
            txt = '[%#x]' % disp
        else:
            base = REGS32[rm]
            if mod == 1:
                disp = struct.unpack_from('<b', d, p)[0]; p += 1
                txt = '[%s%+#x]' % (base, disp) if disp else '[%s]' % base
            elif mod == 2:
                disp = struct.unpack_from('<i', d, p)[0]; p += 4
                txt = '[%s%+#x]' % (base, disp) if disp else '[%s]' % base
            else:
                txt = '[%s]' % base
    else:
        txt = REGS32[rm]
    return mod, reg, rm, txt, p


def disasm_one(d, addr):
    """Returns Insn. addr is file offset == virtual addr for our lib (vaddr==offset for .text)."""
    if addr + 1 > len(d): return None
    p = addr
    start = p
    prefixes = []
    while p < len(d) and d[p] in (0x66, 0x67, 0xf0, 0xf2, 0xf3, 0x2e, 0x36, 0x3e, 0x26, 0x64, 0x65):
        prefixes.append(d[p]); p += 1
    if p >= len(d): return None
    op = d[p]; p += 1
    raw = lambda: d[start:p]
    target = None; is_call = False; is_jmp = False; is_ret = False
    txt = None

    # --- push/pop reg ---
    if 0x50 <= op <= 0x57: txt = 'push %s' % REGS32[op - 0x50]
    elif 0x58 <= op <= 0x5f: txt = 'pop %s' % REGS32[op - 0x58]
    elif op == 0x68:
        v = struct.unpack_from('<i', d, p)[0]; p += 4
        txt = 'push %#x' % v
    elif op == 0x6a:
        v = struct.unpack_from('<b', d, p)[0]; p += 1
        txt = 'push %+d' % v
    elif op in (0x90,): txt = 'nop'
    elif op == 0xc3: txt = 'ret'; is_ret = True
    elif op == 0xc2:
        v = struct.unpack_from('<H', d, p)[0]; p += 2
        txt = 'ret %#x' % v; is_ret = True
    elif op == 0xcc: txt = 'int3'
    elif op == 0xcd:
        v = d[p]; p += 1; txt = 'int %#x' % v
    elif op in (0xc9,): txt = 'leave'
    elif op == 0x99: txt = 'cdq'
    elif op == 0xf4: txt = 'hlt'
    elif op in (0xf8,0xf9,0xfc,0xfd,0xfa,0xfb,0xf5): txt = {0xf8:'clc',0xf9:'stc',0xfc:'cld',0xfd:'std',0xfa:'cli',0xfb:'sti',0xf5:'cmc'}[op]
    elif 0x91 <= op <= 0x97: txt = 'xchg eax, %s' % REGS32[op - 0x90]
    elif op == 0x87:  # xchg r/m
        mod, reg, rm, m, p = modrm(d, p, addr)
        txt = 'xchg %s, %s' % (REGS32[reg], m)
    elif op == 0x89 or op == 0x8b:
        mod, reg, rm, m, p = modrm(d, p, addr)
        txt = '%s %s, %s' % ('mov' if op == 0x8b else 'mov', REGS32[reg] if op == 0x8b else m,
                             m if op == 0x8b else REGS32[reg])
    elif op in (0x88, 0x8a):
        mod, reg, rm, m, p = modrm(d, p, addr)
        txt = '%s %s, %s' % ('mov' if op == 0x8a else 'mov', REGS8[reg] if op == 0x8a else m,
                             m if op == 0x8a else REGS8[reg])
    elif op == 0xc7:
        mod, reg, rm, m, p = modrm(d, p, addr)
        v = struct.unpack_from('<I', d, p)[0]; p += 4
        txt = 'mov %s, %#x' % (m, v)
    elif op == 0xc6:
        mod, reg, rm, m, p = modrm(d, p, addr)
        v = d[p]; p += 1
        txt = 'mov %s, %#x' % (m, v)
    elif op in (0xb8,0xb9,0xba,0xbb,0xbc,0xbd,0xbe,0xbf):
        v = struct.unpack_from('<I', d, p)[0]; p += 4
        txt = 'mov %s, %#x' % (REGS32[op - 0xb8], v)
    elif op in (0xb0,0xb1,0xb2,0xb3,0xb4,0xb5,0xb6,0xb7):
        v = d[p]; p += 1
        txt = 'mov %s, %#x' % (REGS8[op - 0xb0], v)
    elif op in (0x01, 0x03, 0x29, 0x2b, 0x31, 0x33, 0x39, 0x3b, 0x21, 0x23, 0x09, 0x0b,
                0x11, 0x13, 0x19, 0x1b, 0x69, 0x6b, 0x85, 0x87, 0x8d, 0x8f, 0xff, 0xfe, 0xf7, 0xd1, 0xd3, 0xc1):
        if op == 0x69:
            mod, reg, rm, m, p = modrm(d, p, addr)
            v = struct.unpack_from('<i', d, p)[0]; p += 4
            txt = 'imul %s, %s, %#x' % (REGS32[reg], m, v)
        elif op == 0x6b:
            mod, reg, rm, m, p = modrm(d, p, addr)
            v = struct.unpack_from('<b', d, p)[0]; p += 1
            txt = 'imul %s, %s, %+d' % (REGS32[reg], m, v)
        elif op == 0xff:
            mod, reg, rm, m, p = modrm(d, p, addr)
            nm = ['inc','dec','call','callf','jmp','jmpf','push','?'][reg]
            if reg in (2, 3): is_call = True
            if reg in (4, 5): is_jmp = True
            txt = '%s %s' % (nm, m)
        elif op == 0xf7:
            mod, reg, rm, m, p = modrm(d, p, addr)
            nm = ['test','test','not','neg','mul','imul','div','idiv'][reg]
            if reg in (0, 1):
                v = struct.unpack_from('<I', d, p)[0]; p += 4
                txt = '%s %s, %#x' % (nm, m, v)
            else:
                txt = '%s %s' % (nm, m)
        elif op == 0x85:
            mod, reg, rm, m, p = modrm(d, p, addr)
            txt = 'test %s, %s' % (m, REGS32[reg])
        elif op == 0x8d:
            mod, reg, rm, m, p = modrm(d, p, addr)
            txt = 'lea %s, %s' % (REGS32[reg], m)
        elif op == 0x8f:
            mod, reg, rm, m, p = modrm(d, p, addr)
            txt = 'pop %s' % m
        elif op == 0xfe:
            mod, reg, rm, m, p = modrm(d, p, addr)
            txt = '%s %s' % (['inc','dec','?','?','?','?','?','?'][reg], m)
        elif op in (0xd1, 0xd3, 0xc1):
            mod, reg, rm, m, p = modrm(d, p, addr)
            nm = ['rol','ror','rcl','rcr','shl','shr','sal','sar'][reg]
            if op == 0xc1:
                v = d[p]; p += 1
                txt = '%s %s, %#x' % (nm, m, v)
            elif op == 0xd3:
                txt = '%s %s, cl' % (nm, m)
            else:
                txt = '%s %s, 1' % (nm, m)
        else:
            nm = {0x01:'add',0x03:'add',0x29:'sub',0x2b:'sub',0x31:'xor',0x33:'xor',0x39:'cmp',0x3b:'cmp',
                  0x21:'and',0x23:'and',0x09:'or',0x0b:'or',0x11:'adc',0x13:'adc',0x19:'sbb',0x1b:'sbb',
                  0x87:'xchg'}[op]
            mod, reg, rm, m, p = modrm(d, p, addr)
            dst_first = op in (0x01,0x29,0x31,0x39,0x21,0x09,0x11,0x19)
            if dst_first:
                txt = '%s %s, %s' % (nm, m, REGS32[reg])
            else:
                txt = '%s %s, %s' % (nm, REGS32[reg], m)
    elif op in (0x80, 0x81, 0x83):
        mod, reg, rm, m, p = modrm(d, p, addr)
        nm = ['add','or','adc','sbb','and','sub','xor','cmp'][reg]
        if op == 0x80:
            v = d[p]; p += 1; txt = '%s %s, %#x' % (nm, m, v)
        elif op == 0x81:
            v = struct.unpack_from('<I', d, p)[0]; p += 4; txt = '%s %s, %#x' % (nm, m, v)
        else:
            v = struct.unpack_from('<b', d, p)[0]; p += 1; txt = '%s %s, %+d' % (nm, m, v)
    elif op == 0xe8:
        v = struct.unpack_from('<i', d, p)[0]; p += 4
        target = p + v; is_call = True
        txt = 'call %#x' % target
    elif op == 0xe9:
        v = struct.unpack_from('<i', d, p)[0]; p += 4
        target = p + v; is_jmp = True
        txt = 'jmp %#x' % target
    elif op == 0xeb:
        v = struct.unpack_from('<b', d, p)[0]; p += 1
        target = p + v; is_jmp = True
        txt = 'jmp %#x' % target
    elif 0x70 <= op <= 0x7f:
        v = struct.unpack_from('<b', d, p)[0]; p += 1
        target = p + v; is_jmp = True
        nm = ['jo','jno','jb','jae','je','jne','jbe','ja','js','jns','jp','jnp','jl','jge','jle','jg'][op - 0x70]
        txt = '%s %#x' % (nm, target)
    elif op == 0x0f:
        op2 = d[p]; p += 1
        if 0x80 <= op2 <= 0x8f:
            v = struct.unpack_from('<i', d, p)[0]; p += 4
            target = p + v; is_jmp = True
            nm = ['jo','jno','jb','jae','je','jne','jbe','ja','js','jns','jp','jnp','jl','jge','jle','jg'][op2 - 0x80]
            txt = '%s %#x' % (nm, target)
        elif op2 in (0x84, 0x85):
            v = struct.unpack_from('<i', d, p)[0]; p += 4
            target = p + v; is_jmp = True
            txt = '%s %#x' % ('je' if op2 == 0x84 else 'jne', target)
        elif op2 in (0xaf, 0xb6, 0xb7, 0xbe, 0xbf, 0x95, 0x94, 0xa3, 0xa5, 0xab, 0xa4, 0xac, 0xb0, 0xb1, 0xc0, 0xc1, 0xb8):
            names = {0xaf:'imul',0xb6:'movzx',0xb7:'movzx',0xbe:'movsx',0xbf:'movsx'}
            if op2 in names:
                mod, reg, rm, m, p = modrm(d, p, addr)
                txt = '%s %s, %s' % (names[op2], REGS32[reg], m)
            elif op2 == 0xa3: txt = 'bt'
            elif op2 in (0xa5,): txt = 'shld'
            elif op2 == 0xab: txt = 'bts'
            elif op2 in (0xa4,): txt = 'shld'
            elif op2 == 0xac: txt = 'shrd'
            elif op2 in (0x95, 0x94): txt = 'set%s' % ('ne' if op2 == 0x95 else 'e')
            elif op2 in (0xb0, 0xb1):
                mod, reg, rm, m, p = modrm(d, p, addr)
                txt = '%s %s, %s' % ('cmpxchg' if op2 == 0xb1 else 'cmpxchg', m, REGS8[reg] if op2 == 0xb0 else REGS32[reg])
            elif op2 == 0xb8: txt = 'popcnt'
            else: txt = '0f%02x' % op2
        elif op2 == 0x05: txt = 'syscall'
        elif op2 == 0x0b: txt = 'ud2'
        elif op2 == 0x1f:
            mod, reg, rm, m, p = modrm(d, p, addr); txt = 'nop %s' % m
        elif op2 == 0xc8: txt = 'bswap eax'
        elif 0xc8 <= op2 <= 0xcf: txt = 'bswap %s' % REGS32[op2 - 0xc8]
        else: txt = '0f %02x' % op2
    else:
        txt = 'db %02x' % op

    size = p - start
    return Insn(addr, size, txt, target, is_call, is_jmp, is_ret, d[start:p])


def load(path):
    if path.endswith('.b64.gz'):
        return gzip.decompress(base64.b64decode(open(path,'rb').read()))
    return open(path,'rb').read()


def main():
    d = load(sys.argv[1])
    start = int(sys.argv[2], 0)
    count = int(sys.argv[3]) if len(sys.argv) > 3 else 60
    a = start
    for _ in range(count):
        if a >= len(d): break
        ins = disasm_one(d, a)
        if ins is None: break
        mark = '  <== CALL' if ins.is_call else ('  <== JMP' if ins.is_jmp else '')
        print('%08x  %-24s %-34s%s' % (ins.addr, ins.bytes_.hex(), ins.text, mark))
        a += ins.size


if __name__ == '__main__':
    main()
