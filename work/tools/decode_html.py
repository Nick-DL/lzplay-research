#!/usr/bin/env python3
"""
Decode an HTML error page pulled off the device (Android's curl/toybox can emit
UTF-16LE) and print the visible text plus any form fields.
"""
import html
import io
import re
import sys

P = sys.argv[1] if len(sys.argv) > 1 else r'work/reg.html'

blob = open(P, 'rb').read()


def decode(b):
    # BOM sniffing
    if b[:2] in (b'\xff\xfe',):
        return b.decode('utf-16-le', 'replace')
    if b[:2] == b'\xfe\xff':
        return b.decode('utf-16-be', 'replace')
    # lots of NULs -> UTF-16LE without BOM
    if b.count(0) > len(b) // 4:
        return b.decode('utf-16-le', 'replace')
    return b.decode('utf-8', 'replace')


t = decode(blob)
print('file        : %s' % P)
print('raw bytes   : %d' % len(blob))
print('decoded len : %d' % len(t))
print('first bytes : %r' % blob[:16])
print()

s = re.sub(r'<script.*?</script>', ' ', t, flags=re.S | re.I)
s = re.sub(r'<style.*?</style>', ' ', s, flags=re.S | re.I)
s = re.sub(r'<!--.*?-->', ' ', s, flags=re.S)
s = re.sub(r'<[^>]+>', ' ', s)
s = html.unescape(re.sub(r'\s+', ' ', s)).strip()

print('--- visible text ---')
print(s.encode('ascii', 'replace').decode('ascii')[:2000])
print()

print('--- forms / inputs ---')
for m in re.finditer(r'<form[^>]*>', t, re.I):
    print('  form : %s' % m.group(0)[:200])
for m in re.finditer(r'<input[^>]*>', t, re.I):
    print('  input: %s' % m.group(0)[:200])
