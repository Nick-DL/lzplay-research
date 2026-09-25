#!/usr/bin/env python3
"""Dump the travel app's decision + drive methods: m(), S(), T(), Q(), onClick."""
import io, re, sys

F = sys.argv[3] if len(sys.argv) > 3 else 'work/travel_decoded/smali/com/x/plus/pro/b.smali'
lines = io.open(F, encoding='utf-8').read().splitlines()

METHOD = re.compile(r'^\.method\s+(?P<mods>.*?)(?P<name>[\w$<>]+)\((?P<args>[^)]*)\)(?P<ret>\S+)\s*$')


def methods():
    out, cur = [], None
    for i, ln in enumerate(lines):
        s = ln.strip()
        m = METHOD.match(s)
        if m and s.startswith('.method'):
            cur = {'start': i, 'name': m.group('name'), 'args': m.group('args'),
                   'ret': m.group('ret')}
        elif s == '.end method' and cur:
            cur['end'] = i
            out.append(cur)
            cur = None
    return out


def dump(name, args=None, skip_comments=True):
    for m in methods():
        if m['name'] != name:
            continue
        if args is not None and args not in m['args']:
            continue
        print('=' * 78)
        print('%s(%s)%s   lines %d..%d' % (m['name'], m['args'], m['ret'],
                                           m['start'] + 1, m['end'] + 1))
        print('=' * 78)
        for ln in lines[m['start']:m['end'] + 1]:
            s = ln.rstrip()
            if skip_comments and (s.strip() == '' or s.strip().startswith('.line')):
                continue
            print(s)
        print()


if __name__ == '__main__':
    target = sys.argv[1] if len(sys.argv) > 1 else 'm'
    a = sys.argv[2] if len(sys.argv) > 2 else None
    dump(target, a)
