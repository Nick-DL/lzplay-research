#!/usr/bin/env python3
"""Patch .gitignore and the report with the round-2 findings (UTF-8 exact)."""
import io, os

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'

# ---------- 1) .gitignore ----------
p = os.path.join(BASE, '.gitignore')
t = io.open(p, encoding='utf-8').read()
old = (
    "# --- large generated artifacts ---\n"
    "work/native/insidehelper.apk\n"
    "work/probe_out/\n"
    "work/inside/\n"
)
new = (
    "# --- large generated artifacts ---\n"
    "work/native/insidehelper.apk\n"
    "work/probe_out/\n"
    "work/inside/\n"
    "work/pylibs/\n"
    "\n"
    "# --- per-project build dirs produced by build_apk.ps1 ---\n"
    "work/*/build/\n"
    "work/__pycache__/\n"
)
if old in t:
    io.open(p, 'w', encoding='utf-8', newline='\n').write(t.replace(old, new, 1))
    print('gitignore: updated')
elif 'work/*/build/' in t:
    print('gitignore: already updated')
else:
    print('gitignore: ANCHOR NOT FOUND')

# ---------- 2) report ----------
p = os.path.join(BASE, 'REPORT-lzplay-\u5206\u6790.md')
t = io.open(p, encoding='utf-8').read()
anchor = '## \u4e5d\u3001\u7ed9\u4e0b\u4e00\u6b65\u7684\u5efa\u8bae\uff08\u6309\u6027\u4ef7\u6bd4\u6392\u5e8f\uff09\n'
if anchor not in t:
    print('report: ANCHOR NOT FOUND (marker=%r)' % anchor)
else:
    ins = io.open(os.path.join(BASE, r'work\tmp\report_insert.md'), encoding='utf-8').read()
    if '9.0 \u66f4\u65b0' in t:
        print('report: already contains 9.0')
    else:
        t2 = t.replace(anchor, anchor + '\n' + ins, 1)
        io.open(p, 'w', encoding='utf-8', newline='\n').write(t2)
        print('report: updated, %d -> %d chars' % (len(t), len(t2)))

# ---------- verify ----------
for f in ('.gitignore', 'REPORT-lzplay-\u5206\u6790.md'):
    fp = os.path.join(BASE, f)
    raw = io.open(fp, 'rb').read()
    ok = True
    try:
        io.open(fp, encoding='utf-8').read()
    except Exception as e:
        ok = False
        print('  UTF-8 FAIL', f, e)
    print('  %-28s %6d bytes  utf8=%s  bom=%s' % (f, len(raw), ok, raw[:3] == b'\xef\xbb\xbf'))
