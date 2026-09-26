#!/usr/bin/env python3
"""
Verify every relative link and image reference inside docs/README.md actually resolves.

Catches the classic rot: a doc gets renamed or moved and the index keeps pointing
at the old path.

Usage:
    python check_readme_links.py
"""
import io
import os
import re

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
README = os.path.join(BASE, 'docs', 'README.md')

text = io.open(README, encoding='utf-8').read()
docs_dir = os.path.dirname(README)

# markdown links [label](target) and images ![alt](target)
refs = []
for m in re.finditer(r'!?\[([^\]]*)\]\(([^)]+)\)', text):
    label, target = m.group(1), m.group(2).strip()
    if target.startswith(('http://', 'https://', '#')):
        continue
    refs.append((label, target))

ok, bad = [], []
for label, target in refs:
    p = target.replace('/', os.sep)
    full = os.path.normpath(os.path.join(docs_dir, p))
    if os.path.exists(full):
        ok.append((label, target))
    else:
        bad.append((label, target, full))

print('=' * 74)
print('README LINK CHECK  (%s)' % README)
print('=' * 74)
print('  total internal references : %d' % len(refs))
print('  resolvable                 : %d' % len(ok))
print('  BROKEN                     : %d' % len(bad))
print()

if bad:
    print('BROKEN REFERENCES:')
    for label, target, full in bad:
        print('  %-46s -> %s' % (target, full))
    print()

# also list every doc that exists but is NOT referenced - possible orphans
all_docs = set()
for root, _, files in os.walk(os.path.join(BASE, 'docs')):
    for f in files:
        if f.endswith('.md'):
            rel = os.path.relpath(os.path.join(root, f), docs_dir).replace(os.sep, '/')
            all_docs.add(rel)

referenced = {t for _, t in refs}
orphans = sorted(d for d in all_docs
                 if d not in referenced and d != 'README.md')

print('DOCS NOT REFERENCED FROM README (%d):' % len(orphans))
for o in orphans:
    print('  %s' % o)
if not orphans:
    print('  (none - every document is reachable from the index)')

raise SystemExit(1 if bad else 0)
