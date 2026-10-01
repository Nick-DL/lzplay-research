#!/usr/bin/env python3
"""
Trace what actually produces the "连接谷歌网络异常，请检查网络链接。" dialog.

The string lives in res/values-zh-rCN/strings.xml as `register_net`.  Find its
resource id and every smali site that references it, then walk back to the deciding
branch.
"""
import io
import os
import re
import sys

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay\work\travel_decoded'
RDIR = os.path.join(BASE, 'smali')

# 1. the string name
sx = os.path.join(BASE, 'res', 'values-zh-rCN', 'strings.xml')
s = io.open(sx, encoding='utf-8', errors='replace').read()
m = re.search(r'<string name="([^"]+)"[^>]*>([^<]*谷歌网络异常[^<]*)</string>', s)
if not m:
    print('string not found')
    sys.exit(1)
name = m.group(1)
print('=== 资源 ===')
print('  name = %s' % name)
print('  text = %s' % m.group(2))

# 2. its id from any R$string class
rid = None
for root, dirs, files in os.walk(RDIR):
    for f in files:
        if f == 'R$string.smali':
            t = io.open(os.path.join(root, f), encoding='utf-8', errors='replace').read()
            mm = re.search(re.escape(name) + r':I = (0x[0-9a-fA-F]+)', t)
            if mm:
                rid = mm.group(1)
                print('  id   = %s   (%s)' % (rid, os.path.relpath(os.path.join(root, f), BASE)))
                break
    if rid:
        break

if not rid:
    print('  id 未找到')
    sys.exit(1)

# 3. every smali that references the id
print()
print('=== 引用该 id 的位置 ===')
found = 0
for root, dirs, files in os.walk(RDIR):
    for f in files:
        if not f.endswith('.smali'):
            continue
        fp = os.path.join(root, f)
        t = io.open(fp, encoding='utf-8', errors='replace').read()
        if rid not in t:
            continue
        lines = t.splitlines()
        for i, ln in enumerate(lines):
            if rid in ln:
                meth = '?'
                for j in range(i, max(0, i - 300), -1):
                    if lines[j].startswith('.method'):
                        meth = lines[j][:90]
                        break
                print('  %-56s 行 %-5d' % (os.path.relpath(fp, BASE), i + 1))
                print('        %s' % meth)
                found += 1
if not found:
    print('  (无 —— 可能通过 getIdentifier 动态取)')

# 4. also show callers of NetworkUtil so we can see both checks
print()
print('=== NetworkUtil (com/x/plus/pro/f/h) 的调用点 ===')
for root, dirs, files in os.walk(RDIR):
    for f in files:
        if not f.endswith('.smali'):
            continue
        fp = os.path.join(root, f)
        t = io.open(fp, encoding='utf-8', errors='replace').read()
        for mm in re.finditer(
                r'invoke-static \{[^}]*\}, Lcom/x/plus/pro/f/h;->([ab])\(Landroid/content/Context;\)Z', t):
            ln = t[:mm.start()].count('\n') + 1
            lines = t.splitlines()
            meth = '?'
            for j in range(ln - 1, max(0, ln - 300), -1):
                if lines[j].startswith('.method'):
                    meth = lines[j][:80]
                    break
            print('  %-52s 行 %-5d h.%s()   [%s]'
                  % (os.path.relpath(fp, BASE), ln, mm.group(2), meth))
