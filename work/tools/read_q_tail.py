#!/usr/bin/env python3
"""Read the rest of b.Q() and the dialog button handlers b$3/b$4/b$5."""
import io
import os

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay\work\orig_smali\com\x\plus\pro'

# ---- rest of Q() ----
p = os.path.join(BASE, 'b.smali')
lines = io.open(p, encoding='utf-8', errors='replace').read().splitlines()
print('=== Q() 尾部（1283 -> 下一个方法）===')
en = 1283
while en < len(lines) and not lines[en].startswith('.method'):
    en += 1
for i in range(1282, min(en, 1283 + 70)):
    t = lines[i].rstrip()
    if t.strip() and not t.strip().startswith('.line'):
        print('  %5d %s' % (i + 1, t[:130]))

print()
print('=== 对话框按钮处理器 ===')
for fn in ('b$3.smali', 'b$4.smali', 'b$5.smali'):
    q = os.path.join(BASE, fn)
    if not os.path.exists(q):
        print('  %s 不存在' % fn)
        continue
    ls = io.open(q, encoding='utf-8', errors='replace').read().splitlines()
    print('--- %s ---' % fn)
    for i, l in enumerate(ls):
        t = l.rstrip()
        if t.strip() and not t.strip().startswith('.line'):
            print('  %5d %s' % (i + 1, t[:125]))
    print()
