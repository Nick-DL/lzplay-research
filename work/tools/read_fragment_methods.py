#!/usr/bin/env python3
"""Read b.k() and the surrounding GMS install methods in GooglePlayFragment."""
import io
import os
import re

p = r'C:\Users\NickDL\Desktop\codespace\lzplay\work\orig_smali\com\x\plus\pro\b.smali'
lines = io.open(p, encoding='utf-8', errors='replace').read().splitlines()

print('=== b.smali 的全部方法 ===')
meths = [(i, l) for i, l in enumerate(lines) if l.startswith('.method')]
for i, l in meths:
    print('  L%-5d %s' % (i + 1, l[:100]))

print()
for name in ('k()V', 'S()V', 'Y()V', 'V()V'):
    st = None
    for i, l in meths:
        if l.rstrip().endswith(name):
            st = i
            break
    if st is None:
        print('=== %s 未找到 ===' % name)
        continue
    en = st + 1
    while en < len(lines) and not lines[en].startswith('.method'):
        en += 1
    print('=' * 74)
    print('=== b.%s   (L%d-%d, %d lines) ===' % (name, st + 1, en, en - st))
    print('=' * 74)
    for i in range(st, min(en, st + 70)):
        t = lines[i].rstrip()
        if t.strip() and not t.strip().startswith('.line'):
            print('  %5d %s' % (i + 1, t[:132]))
    if en - st > 70:
        print('  ... (%d more lines)' % (en - st - 70))
    print()
