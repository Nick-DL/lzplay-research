#!/usr/bin/env python3
"""
Inspect Reqable 3.2.23 to find out which interception features it actually has.

The user could not find a "重写" (rewrite) entry, and resources.arsc contains no
"rewrite" string at all, while classes.dex has only two. So enumerate the candidate
feature names instead of assuming.
"""
import os
import re
import zipfile

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
APK = os.path.join(BASE, 'work', 'reqable.apk')

z = zipfile.ZipFile(APK)

# ---------------------------------------------------------------- 1. dex strings
print('=' * 78)
print('1) candidate feature names inside the dex files')
print('=' * 78)
CANDIDATES = [
    'Rewrite', 'rewrite',
    'Script', 'script',
    'Breakpoint', 'breakpoint',
    'Redirect', 'redirect',
    'Replace', 'replace',
    'ResponseBody', 'responseBody',
    'Mirror', 'mirror',
    'MapRemote', 'MapLocal', 'mapLocal', 'mapRemote',
    'Gateway', 'gateway',
    'Interceptor', 'interceptor',
    'Modify', 'modify',
    'Rule', 'rule',
    'ReverseProxy', 'reverseProxy',
]
for n in z.namelist():
    if not n.endswith('.dex'):
        continue
    d = z.read(n)
    print('  --- %s (%d bytes) ---' % (n, len(d)))
    for kw in CANDIDATES:
        c = d.count(kw.encode())
        if c:
            print('    %-16s %d' % (kw, c))

# --------------------------------------------------------- 2. the Rewrite context
print()
print('=' * 78)
print('2) context around "Rewrite" in the dex')
print('=' * 78)
for n in z.namelist():
    if not n.endswith('.dex'):
        continue
    d = z.read(n)
    for m in re.finditer(rb'Rewrite', d):
        lo = max(0, m.start() - 120)
        hi = min(len(d), m.end() + 160)
        chunk = d[lo:hi]
        # printable-ise
        s = ''.join(chr(b) if 32 <= b < 127 else '.' for b in chunk)
        print('  %s @%d' % (n, m.start()))
        print('    %s' % s)
        print()

# ------------------------------------------------------------- 3. ui strings (arsc)
print('=' * 78)
print('3) UI strings that look like feature names (from resources.arsc)')
print('=' * 78)
arsc = z.read('resources.arsc')
# UTF-8 and UTF-16 strings
utf8 = set(re.findall(rb'[\x20-\x7e]{5,60}', arsc))
want = ('rewrite', 'script', 'breakpoint', 'redirect', 'replace', 'modify',
        'intercept', 'rule', 'mirror', 'mapping', 'map ')
found = []
for b in utf8:
    s = b.decode('ascii', 'replace')
    low = s.lower()
    if any(w in low for w in want):
        found.append(s)
for s in sorted(set(found)):
    print('  %s' % s[:80])

print()
print('=' * 78)
print('4) Chinese feature names (UTF-16LE in arsc)')
print('=' * 78)
zh = ('重写', '脚本', '断点', '重定向', '替换', '修改', '拦截', '规则', '映射',
      '重发', '编辑', '注入', '篡改')
for t in zh:
    b = t.encode('utf-16-le')
    if b in arsc:
        # find a little context
        m = arsc.find(b)
        print('  %-8s FOUND at %d' % (t, m))
    else:
        print('  %-8s -' % t)
