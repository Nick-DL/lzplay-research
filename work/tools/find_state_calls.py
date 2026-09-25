#!/usr/bin/env python3
"""Show every call site of b;->c(I)V with the enclosing method and the state constant."""
import io, re

F = 'work/travel_decoded/smali/com/x/plus/pro/b.smali'
lines = io.open(F, encoding='utf-8').read().splitlines()

# build method ranges
methods = []
cur = None
for i, ln in enumerate(lines):
    s = ln.strip()
    if s.startswith('.method'):
        cur = {'start': i, 'sig': s}
    elif s == '.end method' and cur:
        cur['end'] = i
        methods.append(cur)
        cur = None

def enclosing(idx):
    for m in methods:
        if m['start'] <= idx <= m.get('end', len(lines)):
            return m
    return None

print('%-46s %-6s %s' % ('enclosing method', 'line', 'state pushed to c()'))
print('-' * 100)
for i, ln in enumerate(lines):
    if 'Lcom/x/plus/pro/b;->c(I)V' not in ln:
        continue
    m = enclosing(i)
    # look back up to 8 lines for the const that becomes the argument
    arg = None
    reg = None
    inv = ln.strip()
    mm = re.search(r'\{p0, (\w+)\}', inv)
    if mm:
        reg = mm.group(1)
    for j in range(i - 1, max(0, i - 12), -1):
        mm2 = re.match(r'\s*const(?:/4|/16|)\s+%s,\s*(0x[0-9a-fA-F]+|-?\d+)' % re.escape(reg or 'x'), lines[j])
        if mm2:
            arg = mm2.group(1)
            break
        if re.match(r'\s*const(?:/4|/16|)\s+%s,' % re.escape(reg or 'x'), lines[j]):
            arg = lines[j].strip()
            break
    sig = m['sig'] if m else '?'
    sig = re.sub(r'^\.method\s+', '', sig)
    print('%-46s %-6d %s   -> %s' % (sig[:46], i + 1, arg, inv.strip()))

print()
print('state table (from packed-switch on field ah):')
print('  0 -> install_error  "安装异常，请重试"        [retry]')
print('  1 -> new_guide / home_gms_error               [start] / [home_repair]')
print('  2 -> register_fail_notice                     [register_google]')
print('  3 -> home_done "Everything is OK."            (button hidden)')
print('  4 -> installing "Installing, please do not exit" (progress bar)')
print('  5 -> home_gms_error                           [home_repair]')
print('  6 -> (button hidden)')
