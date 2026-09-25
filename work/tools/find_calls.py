#!/usr/bin/env python3
"""Find every call to a target address inside libjiagu_x86 and dump the
surrounding instructions so the real calling convention can be read off."""
import sys, os, struct
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), '..'))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from x86dis import disasm_one, load

TEXT = (0x1000, 0x1000 + 22246)
ENGINE = (0x66e6, 0x66e6 + 1594)


def insns_between(d, lo, hi):
    a = lo
    out = []
    while a < hi:
        ins = disasm_one(d, a)
        if ins is None or ins.size == 0:
            a += 1
            continue
        out.append(ins)
        a += ins.size
    return out


def find_calls(d, target, ranges):
    hits = []
    for lo, hi in ranges:
        for ins in insns_between(d, lo, hi):
            if ins.is_call and ins.target == target:
                hits.append(ins.addr)
    return hits


def dump_around(d, center, before=16, after=10):
    lo = max(0x1000, center - before * 6)
    ins = insns_between(d, lo, center + after * 6 + 6)
    # locate index of the call
    idx = None
    for i, x in enumerate(ins):
        if x.addr == center:
            idx = i
            break
    if idx is None:
        print('  <call not found in range>')
        return
    for j in range(max(0, idx - before), min(len(ins), idx + after + 1)):
        mark = '   <<<< CALL' if ins[j].addr == center else ''
        print('  %08x  %-24s %s%s' % (ins[j].addr, ins[j].bytes_.hex(), ins[j].text, mark))


def main():
    d = load(sys.argv[1] if len(sys.argv) > 1 else 'work/native/libjiagu_x86.so.b64.gz')
    ranges = [TEXT, ENGINE]
    targets = {
        '__fun_a_18 (decoder)': 0x66e6,
        'JNI_OnLoad': 0x666b,
        '__arm_a_1 (init)': 0x63ea,
        '__arm_a_2': 0x5f49,
        '__arm_a_20': 0x5c13,
        '__arm_a_21': 0x5b6c,
        'thunk 0x10b0 (get_pc)': 0x10b0,
        'alloc 0xf50': 0xf50,
        'helper 0x40e0': 0x40e0,
        'helper 0x4154': 0x4154,
        'helper 0x1677': 0x1677,
    }
    for label, t in targets.items():
        hits = find_calls(d, t, ranges)
        print('=' * 74)
        print('%s  @ %#x   -> %d call site(s): %s'
              % (label, t, len(hits), ', '.join(hex(h) for h in hits[:20])))
        for h in hits[:6]:
            print('  ---- context around %#x ----' % h)
            dump_around(d, h, 14, 4)


if __name__ == '__main__':
    main()
