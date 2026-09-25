#!/usr/bin/env python3
"""
Recover 360 Jiagu's real (undecorated) C++ symbol names.

The x86 code is position independent: every function starts with
    call __x86.get_pc_thunk.bx   ; ebx = return address
    add  ebx, IMM                ; ebx = PIC base
and then references constants as [ebx +/- disp].  We discover the PIC base values
from the thunk sites, then resolve every disp32 in the code against .rodata so the
original C++ symbol strings become visible.
"""
import os, re, struct, sys

HERE = os.path.dirname(os.path.abspath(__file__))
WS = os.path.dirname(os.path.dirname(HERE))
sys.path.insert(0, os.path.join(WS, 'work', 'pylibs'))
sys.path.insert(0, HERE)
from x86dis import disasm_one, load  # noqa: E402


def sections(d):
    """Parse enough ELF to get section name -> (addr, off, size)."""
    shoff, = struct.unpack_from('<I', d, 0x20)
    shentsize, shnum, shstrndx = struct.unpack_from('<HHH', d, 0x2e)
    secs = []
    for i in range(shnum):
        o = shoff + i * shentsize
        name, typ, flags, addr, off, size, link, info, align, entsize = \
            struct.unpack_from('<IIIIIIIIII', d, o)
        secs.append(dict(name=name, type=typ, addr=addr, off=off, size=size))
    shstr = secs[shstrndx]
    out = {}
    for s in secs:
        p = shstr['off'] + s['name']
        e = d.index(b'\x00', p)
        nm = d[p:e].decode('ascii', 'replace')
        s['sname'] = nm
        if nm:
            out[nm] = s
    return out


def cstr(d, off, maxlen=240):
    raw = d[off:off + maxlen]
    z = raw.find(b'\x00')
    s = raw[:z if z >= 0 else len(raw)]
    if len(s) < 4:
        return None
    if not all(32 <= c < 127 for c in s):
        return None
    return s.decode('ascii')


def find_pic_bases(d, sec, thunk=0x10b0):
    """Every `call thunk` followed by `add ebx, imm` gives a PIC base."""
    bases = {}
    a = sec['off']
    end = sec['off'] + sec['size']
    while a < end:
        ins = disasm_one(d, a)
        if ins is None or ins.size == 0:
            a += 1
            continue
        if ins.is_call and ins.target == thunk:
            nxt = disasm_one(d, ins.addr + ins.size)
            if nxt and nxt.text.startswith('add ebx,'):
                imm = int(nxt.text.split(',')[1].strip(), 16)
                retaddr = ins.addr + ins.size          # value ebx holds after thunk
                bases[ins.addr] = (retaddr + imm) & 0xFFFFFFFF
        a += ins.size
    return bases


def collect_disp32(d, sec, pic_addr):
    """Yield (insn_addr, disp_text, disp_value, abs_ebx) for a function region."""
    out = []
    a = sec['off']
    end = sec['off'] + sec['size']
    while a < end:
        ins = disasm_one(d, a)
        if ins is None or ins.size == 0:
            a += 1
            continue
        # only consider instructions mentioning ebx
        if 'ebx' in ins.text:
            for m in re.finditer(r'([+-])0x([0-9a-f]+)', ins.text):
                sign = -1 if m.group(1) == '-' else 1
                v = int(m.group(2), 16) * sign
                base = pic_addr.get(ins.addr)
                if base is None:
                    # nearest preceding pic base
                    cands = [k for k in pic_addr if k <= ins.addr]
                    if not cands:
                        continue
                    base = pic_addr[max(cands)]
                out.append((ins.addr, ins.text, v, (base + v) & 0xFFFFFFFF))
        a += ins.size
    return out


def main():
    path = sys.argv[1] if len(sys.argv) > 1 else 'work/native/libjiagu_x86.so.b64.gz'
    d = load(path)
    secs = sections(d)
    ro = secs['.rodata']
    drr = secs['.data.rel.ro']

    # collect pic bases across all code sections
    pic = {}
    for nm in ('.text', '.engine', '.context'):
        pic.update(find_pic_bases(d, secs[nm]))

    print('PIC base values discovered: %d' % len(pic))
    from collections import Counter
    for base, n in Counter(pic.values()).most_common(10):
        print('   %#010x  x%d' % (base, n))

    # where does a PIC base land relative to .rodata?
    bases = Counter(pic.values())
    common = bases.most_common(1)[0][0] if bases else 0
    print('\nmost common PIC base = %#x ; .rodata is %#x..%#x ; delta=%+#x'
          % (common, ro['addr'], ro['addr'] + ro['size'], common - ro['addr']))

    # now scan for ebx-relative refs and resolve rodata strings
    hits = {}
    for nm in ('.text', '.engine', '.context'):
        for addr, text, disp, absv in collect_disp32(d, secs[nm], pic):
            if ro['addr'] <= absv < ro['addr'] + ro['size']:
                s = cstr(d, ro['off'] + (absv - ro['addr']))
                if s:
                    hits.setdefault(s, addr)
    print('\n=== STRINGS RECOVERED FROM [ebx+disp] REFERENCES: %d ===' % len(hits))
    for s, addr in sorted(hits.items(), key=lambda kv: kv[1]):
        print('  %08x  %s' % (addr, s))


if __name__ == '__main__':
    main()
