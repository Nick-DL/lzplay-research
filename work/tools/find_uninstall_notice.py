#!/usr/bin/env python3
"""Find who shows strings.uninstall_notice ("检测到设备已安装版本较旧...")."""
import io
import os
import re

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay\work\orig_smali'

rid = None
for root, dirs, files in os.walk(BASE):
    for f in files:
        if f == 'R$string.smali':
            t = io.open(os.path.join(root, f), encoding='utf-8', errors='replace').read()
            for key in ('uninstall_notice', 'uninstall_gms_notice', 'uninstall_gms',
                        'uninstall', 'old_version'):
                m = re.search(re.escape(key) + r':I = (0x[0-9a-fA-F]+)', t)
                if m:
                    print('  %-24s = %s' % (key, m.group(1)))
                    if key == 'uninstall_notice' and not rid:
                        rid = m.group(1)

if not rid:
    print('!! uninstall_notice id not found; dumping all uninstall-ish ids')
    for root, dirs, files in os.walk(BASE):
        for f in files:
            if f == 'R$string.smali':
                t = io.open(os.path.join(root, f), encoding='utf-8', errors='replace').read()
                for m in re.finditer(r'^\s*\.field public static final (\w*uninstall\w*|\w*old\w*):I = (0x[0-9a-fA-F]+)', t, re.M):
                    print('    %-30s %s' % (m.group(1), m.group(2)))
    raise SystemExit(1)

print()
print('=== references to %s ===' % rid)
for root, dirs, files in os.walk(BASE):
    for f in files:
        if not f.endswith('.smali'):
            continue
        p = os.path.join(root, f)
        t = io.open(p, encoding='utf-8', errors='replace').read()
        if rid not in t:
            continue
        lines = t.splitlines()
        for i, l in enumerate(lines):
            if rid in l:
                meth = '?'
                for j in range(i, max(0, i - 500), -1):
                    if lines[j].startswith('.method'):
                        meth = lines[j][:90]
                        break
                print('  %-56s L%-5d %s' % (os.path.relpath(p, BASE), i + 1, meth))

print()
print('=== also: sites calling uninstallPackage ===')
for root, dirs, files in os.walk(BASE):
    for f in files:
        if not f.endswith('.smali'):
            continue
        p = os.path.join(root, f)
        t = io.open(p, encoding='utf-8', errors='replace').read()
        if 'uninstallPackage' not in t:
            continue
        lines = t.splitlines()
        for i, l in enumerate(lines):
            if 'uninstallPackage' in l:
                meth = '?'
                for j in range(i, max(0, i - 500), -1):
                    if lines[j].startswith('.method'):
                        meth = lines[j][:90]
                        break
                print('  %-56s L%-5d %s' % (os.path.relpath(p, BASE), i + 1, meth))
