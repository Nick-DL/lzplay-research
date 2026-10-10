#!/usr/bin/env python3
"""
Map the GooglePlayFragment state machine.

Locals of interest in com/x/plus/pro/b.smali:
  ah  current UI state (set by c(I), read by Y()/Q())
  W   the install state machine (com/x/plus/pro/e/b)
We want:
  - every iput of ah (i.e. every c(N) call) and the N
  - the button->method wiring in a(...) / m() / n() / onClick
  - what e/b.a(boolean) returns for true vs false  (it decides "needs uninstall" vs "install")
"""
import io
import re

p = r'C:\Users\NickDL\Desktop\codespace\lzplay\work\orig_smali\com\x\plus\pro\b.smali'
src = io.open(p, encoding='utf-8', errors='replace').read()
lines = src.splitlines()

print('=== every call to c(<int>)  [sets field ah] ===')
for i, l in enumerate(lines):
    if 'b;->c(I)V' in l:
        # look back a few lines for the const that loads the argument
        arg = '?'
        for j in range(i - 1, max(0, i - 6), -1):
            m = re.search(r'const(?:/4|/16|/high16)?\s+v(\d+), (-?0x[0-9a-fA-F]+|-?\d+)', lines[j])
            if m:
                arg = m.group(2)
                break
        meth = '?'
        for j in range(i, max(0, i - 500), -1):
            if lines[j].startswith('.method'):
                meth = lines[j][:70]
                break
        print('  L%-5d  c(%s)      in %s' % (i + 1, arg, meth))

print()
print('=== every read of field ah ===')
for i, l in enumerate(lines):
    if 'b;->ah:I' in l:
        op = 'read ' if 'iget' in l else 'write'
        for j in range(i, max(0, i - 400), -1):
            if lines[j].startswith('.method'):
                meth = lines[j][:70]
                break
        print('  L%-5d  %s  in %s' % (i + 1, op, meth))

print()
print('=== button wiring: every new-instance of b$N and the method it calls ===')
for i, l in enumerate(lines):
    m = re.search(r'new-instance v\d+, Lcom/x/plus/pro/(b\$\d+);', l)
    if m:
        cls = m.group(1)
        # find nearest dialog setter afterwards
        ctx = ''
        for j in range(i, min(len(lines), i + 12)):
            if 'view/a$a;->a(I' in lines[j] and 'OnClick' in lines[j]:
                ctx = 'POSITIVE'
            if 'view/a$a;->b(I' in lines[j] and 'OnClick' in lines[j]:
                ctx = 'NEGATIVE'
            if 'view/a$a;->c(I' in lines[j] and 'OnClick' in lines[j]:
                ctx = 'NEUTRAL'
        print('  L%-5d  %s  -> %s' % (i + 1, cls, ctx or '?'))

print()
print('=== e/b.a(boolean) : the method that decides needs-uninstall ===')
q = r'C:\Users\NickDL\Desktop\codespace\lzplay\work\orig_smali\com\x\plus\pro\e\b.smali'
ls = io.open(q, encoding='utf-8', errors='replace').read().splitlines()
st = None
for i, l in enumerate(ls):
    if l.startswith('.method public final a(Z)Z'):
        st = i
        break
if st is None:
    for i, l in enumerate(ls):
        if l.startswith('.method') and '(Z)Z' in l:
            print('  candidate: L%d %s' % (i + 1, l))
            if st is None:
                st = i
if st is not None:
    en = st + 1
    while en < len(ls) and not ls[en].startswith('.method'):
        en += 1
    print('  --- e/b.a(Z)Z  L%d-%d ---' % (st + 1, en))
    for i in range(st, min(en, st + 60)):
        t = ls[i].rstrip()
        if t.strip() and not t.strip().startswith('.line'):
            print('  %5d %s' % (i + 1, t[:126]))
