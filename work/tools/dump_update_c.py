#!/usr/bin/env python3
"""
Dump update/c.smali - the UpdateImp that talks to
https://api.trip-happy.com/index.php/upgrade/info/ - so we can read the exact
request body and the exact response schema out of the code.

update/e is UpdateInstance and holds two IUpdateRequest implementations:
    e.a = new update/c()   -> used for /upgrade/info/
    e.b = new update/d()   -> used for /upgrade/checkinfo/
"""
import io
import os
import re

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay\work\orig_smali'
P = os.path.join(BASE, 'com', 'x', 'plus', 'pro', 'update', 'c.smali')

lines = io.open(P, encoding='utf-8', errors='replace').read().splitlines()
print('update/c.smali  %d lines' % len(lines))
print()
print('=== methods ===')
for i, l in enumerate(lines):
    if l.startswith('.method'):
        print('  L%-5d %s' % (i + 1, l[:110]))

print()
print('=== string constants (URLs, json keys, signatures) ===')
for i, l in enumerate(lines):
    if 'const-string' in l:
        m = re.search(r'const-string [vp]\d+, "(.*)"', l)
        if m:
            print('  L%-5d %s' % (i + 1, m.group(1)[:110]))
