#!/usr/bin/env python3
"""
Find EVERY site in the ORIGINAL apk that can show R.string.register_net
("连接谷歌网络异常，请检查网络链接。") and what decides it.

Also find who triggers the splash -> MainActivity transition, i.e. which callback
success actually is.
"""
import os
import re

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay\work\orig_smali'

# resource id of register_net in the original R
rid = None
for root, dirs, files in os.walk(BASE):
    for f in files:
        if f == 'R$string.smali':
            t = open(os.path.join(root, f), encoding='utf-8', errors='replace').read()
            m = re.search(r'register_net:I = (0x[0-9a-fA-F]+)', t)
            if m:
                rid = m.group(1)
print('R.string.register_net = %s' % rid)

print()
print('=' * 78)
print('1) sites using that id (0x%08x)' % int(rid, 16))
print('=' * 78)
for root, dirs, files in os.walk(BASE):
    for f in files:
        if not f.endswith('.smali'):
            continue
        fp = os.path.join(root, f)
        t = open(fp, encoding='utf-8', errors='replace').read()
        if rid not in t:
            continue
        lines = t.splitlines()
        for i, l in enumerate(lines):
            if rid not in l:
                continue
            meth = '?'
            for j in range(i, max(0, i - 400), -1):
                if lines[j].startswith('.method'):
                    meth = lines[j][:80]
                    break
            print('  %-50s L%-5d %s' % (os.path.relpath(fp, BASE), i + 1, meth))

print()
print('=' * 78)
print('2) who calls UpdateInstance.c(Context)  (update/e;->c)')
print('=' * 78)
pat = re.compile(r'invoke-static \{[^}]*\}, Lcom/x/plus/pro/update/e;->c\(Landroid/content/Context;\)')
for root, dirs, files in os.walk(BASE):
    for f in files:
        if not f.endswith('.smali'):
            continue
        fp = os.path.join(root, f)
        t = open(fp, encoding='utf-8', errors='replace').read()
        for m in pat.finditer(t):
            ln = t[:m.start()].count('\n') + 1
            lines = t.splitlines()
            meth = '?'
            for j in range(ln - 1, max(0, ln - 400), -1):
                if lines[j].startswith('.method'):
                    meth = lines[j][:80]
                    break
            print('  %-50s L%-5d %s' % (os.path.relpath(fp, BASE), ln, meth))

print()
print('=' * 78)
print('3) who calls UpdateInstance.a(Context, IUpdateRequestCallback)  (update/e;->a with 2 args)')
print('=' * 78)
pat = re.compile(r'invoke-static \{[^}]*\}, Lcom/x/plus/pro/update/e;->a\(Landroid/content/Context;Lcom/x/plus/pro/update/b;\)V')
for root, dirs, files in os.walk(BASE):
    for f in files:
        if not f.endswith('.smali'):
            continue
        fp = os.path.join(root, f)
        t = open(fp, encoding='utf-8', errors='replace').read()
        for m in pat.finditer(t):
            ln = t[:m.start()].count('\n') + 1
            lines = t.splitlines()
            meth = '?'
            for j in range(ln - 1, max(0, ln - 400), -1):
                if lines[j].startswith('.method'):
                    meth = lines[j][:80]
                    break
            print('  %-50s L%-5d %s' % (os.path.relpath(fp, BASE), ln, meth))

print()
print('=' * 78)
print('4) who calls DeviceManage.a(Context)  (a/b;->a)')
print('=' * 78)
pat = re.compile(r'invoke-static \{[^}]*\}, Lcom/x/plus/pro/a/b;->a\(Landroid/content/Context;\)Z')
for root, dirs, files in os.walk(BASE):
    for f in files:
        if not f.endswith('.smali'):
            continue
        fp = os.path.join(root, f)
        t = open(fp, encoding='utf-8', errors='replace').read()
        for m in pat.finditer(t):
            ln = t[:m.start()].count('\n') + 1
            lines = t.splitlines()
            meth = '?'
            for j in range(ln - 1, max(0, ln - 400), -1):
                if lines[j].startswith('.method'):
                    meth = lines[j][:80]
                    break
            print('  %-50s L%-5d %s' % (os.path.relpath(fp, BASE), ln, meth))

print()
print('=' * 78)
print('5) MainActivity references (who navigates there)')
print('=' * 78)
for root, dirs, files in os.walk(BASE):
    for f in files:
        if not f.endswith('.smali'):
            continue
        fp = os.path.join(root, f)
        t = open(fp, encoding='utf-8', errors='replace').read()
        if 'Lcom/x/plus/pro/MainActivity;' in t:
            print('  %s' % os.path.relpath(fp, BASE))
