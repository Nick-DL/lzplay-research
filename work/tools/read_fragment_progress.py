#!/usr/bin/env python3
"""Read b.k() (synthetic), b.g()/i()/j()/l() and c(I) - the progress machinery."""
import io

p = r'C:\Users\NickDL\Desktop\codespace\lzplay\work\orig_smali\com\x\plus\pro\b.smali'
lines = io.open(p, encoding='utf-8', errors='replace').read().splitlines()

TARGETS = [
    ('g(Lcom/x/plus/pro/b;)V', 996),
    ('i(Lcom/x/plus/pro/b;)V', 1064),
    ('j(Lcom/x/plus/pro/b;)V', 1073),
    ('k(Lcom/x/plus/pro/b;)V', 1082),
    ('l(Lcom/x/plus/pro/b;)V', 1091),
    ('c(I)V', 499),
    ('n()V', 1621),
    ('onClick(Landroid/view/View;)V', 1679),
]

for sig, ln0 in TARGETS:
    st = ln0 - 1
    if not lines[st].startswith('.method'):
        # search
        st = None
        for i, l in enumerate(lines):
            if l.startswith('.method') and l.rstrip().endswith(sig):
                st = i
                break
        if st is None:
            print('=== %s NOT FOUND ===' % sig)
            continue
    en = st + 1
    while en < len(lines) and not lines[en].startswith('.method'):
        en += 1
    print('=' * 74)
    print('=== %s   (L%d-%d) ===' % (sig, st + 1, en))
    print('=' * 74)
    shown = 0
    for i in range(st, en):
        t = lines[i].rstrip()
        if t.strip() and not t.strip().startswith('.line'):
            print('  %5d %s' % (i + 1, t[:130]))
            shown += 1
            if shown > 90:
                print('  ... (truncated)')
                break
    print()
