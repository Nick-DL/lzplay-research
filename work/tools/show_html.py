#!/usr/bin/env python3
"""Show the visible text of an HTML file fetched from the device (encoding-safe)."""
import html
import io
import re
import sys

P = sys.argv[1] if len(sys.argv) > 1 else r'work/reg.html'

t = io.open(P, encoding='utf-8', errors='replace').read()
raw = t.encode('utf-8', 'replace')

# strip scripts/styles then tags
s = re.sub(r'<script.*?</script>', ' ', t, flags=re.S | re.I)
s = re.sub(r'<style.*?</style>', ' ', s, flags=re.S | re.I)
s = re.sub(r'<[^>]+>', ' ', s)
s = html.unescape(re.sub(r'\s+', ' ', s)).strip()

# keep only characters the console can print
s = s.encode('ascii', 'replace').decode('ascii')

print('file  : %s' % P)
print('bytes : %d' % len(raw))
print()
print('--- visible text ---')
print(s[:1600])
print()

# any form action / hidden inputs tell us what Google wants
for m in re.finditer(r'<form[^>]*>', t, re.I):
    print('form: %s' % m.group(0)[:200])
for m in re.finditer(r'<input[^>]*>', t, re.I):
    print('input: %s' % m.group(0)[:200])
