#!/usr/bin/env python3
"""Dump the travel-app state machine: c(I)V (UI per state) and S/T/U/Y."""
import io, re, sys

F = 'work/travel_decoded/smali/com/x/plus/pro/b.smali'
src = io.open(F, encoding='utf-8').read()
lines = src.splitlines()

METHOD = re.compile(r'^\.method .*?([\w$<>]+)\(([^)]*)\)([^\s]*)\s*$')


def dump(name, args_contains=None, maxlines=400):
    start = None
    for i, ln in enumerate(lines):
        s = ln.strip()
        if not s.startswith('.method'):
            continue
        m = METHOD.match(s)
        if not m:
            continue
        if m.group(1) != name:
            continue
        if args_contains is not None and args_contains not in m.group(2):
            continue
        start = i
        break
    if start is None:
        print('  <%s not found>' % name)
        return
    end = None
    for j in range(start + 1, min(start + maxlines, len(lines))):
        if lines[j].strip() == '.end method':
            end = j
            break
    if end is None:
        end = min(start + maxlines, len(lines)) - 1
    print('=' * 76)
    print('METHOD %s(%s)%s  (lines %d..%d)' % (
        name, METHOD.match(lines[start].strip()).group(2),
        METHOD.match(lines[start].strip()).group(3), start + 1, end + 1))
    print('=' * 76)
    for ln in lines[start:end + 1]:
        s = ln.rstrip()
        if s.strip() == '' or s.strip().startswith('.line'):
            continue
        print(s)


def main():
    which = sys.argv[1] if len(sys.argv) > 1 else 'all'
    if which in ('all', 'c'):
        dump('c', 'I')
    if which in ('all', 'S'):
        dump('S', '')
    if which in ('all', 'T'):
        dump('T', '')
    if which in ('all', 'U'):
        dump('U', '')
    if which in ('all', 'V'):
        dump('V', '')
    if which in ('all', 'W'):
        dump('W', '')
    if which in ('all', 'X'):
        dump('X', '')


if __name__ == '__main__':
    main()
