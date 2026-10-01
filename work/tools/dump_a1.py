#!/usr/bin/env python3
"""
Dump com/x/plus/pro/a/a$1.smali - the update-check callback that decides whether to
show the "连接谷歌网络异常" dialog.
"""
import glob
import io
import os

DIR = r'C:\Users\NickDL\Desktop\codespace\lzplay\work\travel_decoded\smali\com\x\plus\pro\a'

for pat in ('a$1.smali', 'a$1$1.smali'):
    hits = glob.glob(os.path.join(DIR, pat))
    if not hits:
        # glob treats $ literally, but be defensive
        hits = [p for p in glob.glob(os.path.join(DIR, 'a*.smali'))
                if os.path.basename(p) == pat]
    for p in hits:
        lines = io.open(p, encoding='utf-8', errors='replace').read().splitlines()
        print('=' * 78)
        print('=== %s   (%d 行) ===' % (os.path.basename(p), len(lines)))
        print('=' * 78)
        for i, l in enumerate(lines):
            t = l.rstrip()
            if t.strip() and not t.strip().startswith('.line'):
                print('  %4d %s' % (i + 1, t[:130]))
        print()

print('=' * 78)
print('该目录下所有文件:')
for p in sorted(glob.glob(os.path.join(DIR, '*.smali'))):
    n = os.path.basename(p)
    if n.startswith('a$') or n == 'a.smali':
        print('  %s  (%d B)' % (n, os.path.getsize(p)))
