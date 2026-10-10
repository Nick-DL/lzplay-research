#!/usr/bin/env python3
"""Read b.V() - the uninstall-old-version handler."""
import io

p = r'C:\Users\NickDL\Desktop\codespace\lzplay\work\orig_smali\com\x\plus\pro\b.smali'
lines = io.open(p, encoding='utf-8', errors='replace').read().splitlines()

for sig, ln0 in (('V()V', 285), ('W()V', 338), ('Y()V', 419), ('T()V', 154), ('U()V', 234)):
    st = ln0 - 1
    if not lines[st].startswith('.method'):
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
    print('=== b.%s   (L%d-%d) ===' % (sig, st + 1, en))
    print('=' * 74)
    for i in range(st, en):
        t = lines[i].rstrip()
        if t.strip() and not t.strip().startswith('.line'):
            print('  %5d %s' % (i + 1, t[:132]))
    print()
