#!/usr/bin/env python3
"""Dump the two smali files that reference R.string.register_net."""
import io
import os

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay\work\travel_decoded\smali'
FILES = [
    ('com/x/plus/pro/a/a$1$1.smali', 1, 200),
    ('com/x/plus/pro/a/a$2.smali', 1, 220),
]

for rel, lo, hi in FILES:
    p = os.path.join(BASE, rel.replace('/', os.sep))
    if not os.path.exists(p):
        print('=== %s 不存在 ===' % rel)
        continue
    lines = io.open(p, encoding='utf-8', errors='replace').read().splitlines()
    print('=' * 76)
    print('=== %s   (%d 行) ===' % (rel, len(lines)))
    print('=' * 76)
    for i in range(lo - 1, min(hi, len(lines))):
        t = lines[i].rstrip()
        if t.strip() and not t.strip().startswith('.line'):
            print('  %4d %s' % (i + 1, t[:130]))
    print()
