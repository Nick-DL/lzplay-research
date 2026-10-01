#!/usr/bin/env python3
"""Who instantiates the Runnable that shows the network dialog, and who calls it?"""
import os
import re

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay\work\travel_decoded\smali'
NEEDLE = 'a$1$1'

print('=== 文件中出现 %s 的位置 ===' % NEEDLE)
for root, dirs, files in os.walk(BASE):
    for f in files:
        if not f.endswith('.smali'):
            continue
        fp = os.path.join(root, f)
        t = open(fp, encoding='utf-8', errors='replace').read()
        if NEEDLE not in t:
            continue
        lines = t.splitlines()
        for i, l in enumerate(lines):
            if NEEDLE in l:
                meth = '?'
                for j in range(i, max(0, i - 250), -1):
                    if lines[j].startswith('.method'):
                        meth = lines[j][:78]
                        break
                print('  %-46s L%-5d  %s' % (os.path.relpath(fp, BASE), i + 1, meth))
                print('        %s' % l.strip()[:118])

print()
print('=== com/x/plus/pro/a/a$1.smali 全文（含 a() 之外的方法）===')
p = os.path.join(BASE, 'com', 'x', 'plus', 'pro', 'a')
for fn in sorted(os.listdir(p)):
    if not fn.startswith('a'):
        continue
    fp = os.path.join(p, fn)
    lines = open(fp, encoding='utf-8', errors='replace').read().splitlines()
    meths = [l for l in lines if l.startswith('.method')]
    print('  %-28s %4d 行  方法: %s' % (fn, len(lines), ' | '.join(
        m.split('(')[0].split()[-1] for m in meths)))
