#!/usr/bin/env python3
"""
Dump the splash / device-helper chain compactly so we can see the real decision.

Files of interest (all DeviceHelper / SplashActivity related):
  com/x/plus/pro/a/a.smali        DeviceHelper
  com/x/plus/pro/a/a$1.smali      update callback (a = failure, b = success)
  com/x/plus/pro/a/a$1$1.smali    the Runnable that shows the network dialog
  com/x/plus/pro/a/a$a.smali      inner callback type
  com/x/plus/pro/a/b.smali        the other network check (has a(Context) and b(Context))
  com/x/plus/pro/SplashActivity.smali
  com/x/plus/pro/update/e.smali   UpdateInstance (who calls a()/b())
"""
import glob
import io
import os
import re

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay\work\travel_decoded\smali'

WANT = [
    'com/x/plus/pro/a/a.smali',
    'com/x/plus/pro/a/a$1.smali',
    'com/x/plus/pro/a/a$1$1.smali',
    'com/x/plus/pro/a/a$a.smali',
    'com/x/plus/pro/a/b.smali',
]

for rel in WANT:
    p = os.path.join(BASE, rel.replace('/', os.sep))
    if not os.path.exists(p):
        print('### %s NOT FOUND' % rel)
        continue
    lines = io.open(p, encoding='utf-8', errors='replace').read().splitlines()
    print('=' * 80)
    print('### %s   (%d lines)' % (rel, len(lines)))
    print('=' * 80)
    for i, l in enumerate(lines):
        t = l.rstrip()
        s = t.strip()
        if not s or s.startswith('.line'):
            continue
        # keep it tight: collapse blank-heavy smali
        print('%4d %s' % (i + 1, t[:132]))
    print()

# who calls UpdateInstance a()/b()  ->  i.e. what triggers the callback
print('=' * 80)
print('### callers of update/e;->a(...) / ->b(...)')
print('=' * 80)
for root, dirs, files in os.walk(os.path.join(BASE, 'com', 'x', 'plus', 'pro')):
    for f in files:
        if not f.endswith('.smali'):
            continue
        fp = os.path.join(root, f)
        t = io.open(fp, encoding='utf-8', errors='replace').read()
        for m in re.finditer(r'invoke-static \{[^}]*\}, Lcom/x/plus/pro/update/e;->([ab])\(', t):
            ln = t[:m.start()].count('\n') + 1
            print('  %-56s line %-5d  e.%s(...)' % (
                os.path.relpath(fp, BASE), ln, m.group(1)))
