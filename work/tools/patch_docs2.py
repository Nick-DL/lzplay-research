#!/usr/bin/env python3
"""Patch .gitignore for round 3 (unicorn payload + pycache) and verify deliverables."""
import io, os

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'

p = os.path.join(BASE, '.gitignore')
t = io.open(p, encoding='utf-8').read()
add = (
    "\n# --- python deps unpacked into the workspace (unicorn engine, ~16 MB) ---\n"
    "work/pylibs/\n"
)
if 'work/pylibs/' not in t:
    # replace the earlier single-line entry with a commented block
    t = t.replace('work/pylibs/\n', '')
    t = t.rstrip('\n') + '\n' + add
    io.open(p, 'w', encoding='utf-8', newline='\n').write(t)
    print('gitignore: added pytlibs block')
else:
    print('gitignore: pylibs already present')
    if '# unicorn engine' not in t:
        t = t.replace('work/pylibs/\n', '')
        t = t.rstrip('\n') + '\n' + add
        io.open(p, 'w', encoding='utf-8', newline='\n').write(t)
        print('gitignore: restructured pylibs entry')

# sanity: every delivered file is valid UTF-8 and has no BOM
print('\n--- deliverable verification ---')
for f in ('REPORT-lzplay-\u5206\u6790.md', 'PROBE-README.md', 'REVIVE-README.md',
          r'work\UNPACKING-NOTES.md', '.gitignore',
          r'work\revive\src\com\lzplay\revive\MainActivity.java',
          r'work\revive\src\com\lzplay\revive\LzCore.java'):
    fp = os.path.join(BASE, f)
    if not os.path.exists(fp):
        print('  MISSING  %s' % f)
        continue
    raw = io.open(fp, 'rb').read()
    try:
        io.open(fp, encoding='utf-8').read()
        enc = 'utf-8 OK'
    except Exception as e:
        enc = 'UTF-8 FAIL: %s' % e
    print('  %-52s %7d B  bom=%-5s %s' % (f, len(raw), raw[:3] == b'\xef\xbb\xbf', enc))
