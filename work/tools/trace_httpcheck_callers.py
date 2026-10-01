#!/usr/bin/env python3
"""
Who calls HttpUtil.a(Context)  (com/x/plus/pro/f/d.a)  in the ORIGINAL apk?

Everything so far assumed it sits on the splash path. The packet capture showed only
api.trip-happy.com, which would mean either it is not on this path at all, or it is
called somewhere that never runs.
"""
import os
import re

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay\work\orig_smali'

print('=' * 78)
print('1) callers of f/d;->a(Landroid/content/Context;)Z   (HttpUtil.a)')
print('=' * 78)
pat = re.compile(r'invoke-static \{[^}]*\}, Lcom/x/plus/pro/f/d;->a\(Landroid/content/Context;\)Z')
found = 0
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
                    meth = lines[j][:88]
                    break
            print('  %-52s L%-5d %s' % (os.path.relpath(fp, BASE), ln, meth))
            found += 1
if not found:
    print('  (none)')

print()
print('=' * 78)
print('2) callers of f/h;->a and ->b   (NetworkUtil)')
print('=' * 78)
for meth in ('a', 'b'):
    p = re.compile(r'invoke-static \{[^}]*\}, Lcom/x/plus/pro/f/h;->' + meth + r'\(Landroid/content/Context;\)Z')
    for root, dirs, files in os.walk(BASE):
        for f in files:
            if not f.endswith('.smali'):
                continue
            fp = os.path.join(root, f)
            t = open(fp, encoding='utf-8', errors='replace').read()
            for m in p.finditer(t):
                ln = t[:m.start()].count('\n') + 1
                lines = t.splitlines()
                mname = '?'
                for j in range(ln - 1, max(0, ln - 400), -1):
                    if lines[j].startswith('.method'):
                        mname = lines[j][:88]
                        break
                print('  h.%s  %-46s L%-5d %s'
                      % (meth, os.path.relpath(fp, BASE), ln, mname))

print()
print('=' * 78)
print('3) UpdateInstance (update/e) - every method, and what it calls')
print('=' * 78)
p = os.path.join(BASE, 'com', 'x', 'plus', 'pro', 'update', 'e.smali')
if os.path.exists(p):
    lines = open(p, encoding='utf-8', errors='replace').read().splitlines()
    print('  methods:')
    for l in lines:
        if l.startswith('.method'):
            print('    %s' % l[:100])
    print()
    print('  calls to network / http helpers:')
    for i, l in enumerate(lines):
        if any(k in l for k in ('f/d;->', 'f/h;->', 'HttpURLConnection', 'openConnection',
                                'trip-happy', 'URL;', 'okhttp', 'HttpUtil')):
            print('    L%-5d %s' % (i + 1, l.strip()[:118]))
else:
    print('  update/e.smali not found')
