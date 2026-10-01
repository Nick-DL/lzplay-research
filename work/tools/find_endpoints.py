#!/usr/bin/env python3
"""
Find every hard-coded URL/host in the travel app, and locate the real network
availability check.

Context: the user reports that the "连接谷歌网络异常" dialog appears regardless of
WiFi vs mobile data and regardless of whether a VPN is running, so a plain
ConnectivityManager check cannot be the trigger.  We need the actual endpoint that
is probed.
"""
import os
import re

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay\work\travel_decoded'
SMALI = os.path.join(BASE, 'smali')

HOST_RE = re.compile(r'https?://[A-Za-z0-9._~:/?#\[\]@!$&\'()*+,;=%-]+')
BARE_RE = re.compile(r'\b(?:[a-z0-9-]+\.)+(?:com|cn|net|org|io|sg|hk|xyz|top)(?:/[A-Za-z0-9._~:/?#\[\]@!$&\'()*+,;=%-]*)?')

print('=' * 78)
print('1) smali 里的完整 URL')
print('=' * 78)
urls = {}
for root, dirs, files in os.walk(SMALI):
    for f in files:
        if not f.endswith('.smali'):
            continue
        fp = os.path.join(root, f)
        t = open(fp, encoding='utf-8', errors='replace').read()
        for m in HOST_RE.finditer(t):
            u = m.group(0).rstrip('"\\')
            urls.setdefault(u, set()).add(os.path.relpath(fp, BASE))
for u in sorted(urls):
    print('  %-62s %s' % (u[:62], list(urls[u])[0][:40]))

print()
print('=' * 78)
print('2) 裸域名（含资源/配置文件）')
print('=' * 78)
hosts = {}
for root, dirs, files in os.walk(BASE):
    if '.git' in root:
        continue
    for f in files:
        fp = os.path.join(root, f)
        if os.path.getsize(fp) > 4_000_000:
            continue
        try:
            t = open(fp, encoding='utf-8', errors='replace').read()
        except Exception:
            continue
        for m in BARE_RE.finditer(t):
            h = m.group(0)
            if h.startswith('http'):
                continue
            if any(x in h for x in ('schemas.android', 'android.com', 'w3.org',
                                    'apache.org', 'example.com', 'json.org',
                                    'slf4j.org', 'bouncycastle.org')):
                continue
            hosts.setdefault(h.split('/')[0], set()).add(os.path.relpath(fp, BASE))
for h in sorted(hosts):
    print('  %-46s %s' % (h[:46], list(hosts[h])[0][:44]))

print()
print('=' * 78)
print('3) 网络可达性检查类：找 InetAddress / isReachable / Runtime.exec')
print('=' * 78)
for root, dirs, files in os.walk(SMALI):
    for f in files:
        if not f.endswith('.smali'):
            continue
        fp = os.path.join(root, f)
        t = open(fp, encoding='utf-8', errors='replace').read()
        marks = []
        for kw, label in (('InetAddress', 'InetAddress'),
                          ('isReachable', 'isReachable'),
                          ('getRuntime', 'Runtime.exec'),
                          ('ProcessBuilder', 'ProcessBuilder'),
                          ('HttpURLConnection', 'HttpURLConnection'),
                          ('openConnection', 'openConnection'),
                          ('getNetworkInfo', 'getNetworkInfo'),
                          ('ping', '"ping"')):
            if kw in t:
                marks.append(label)
        if marks and ('network' in fp.lower() or 'Net' in f or 'Http' in f
                      or 'InetAddress' in marks or 'isReachable' in marks):
            print('  %-52s %s' % (os.path.relpath(fp, BASE), ', '.join(sorted(set(marks)))))
