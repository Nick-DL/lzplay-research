#!/usr/bin/env python3
"""
The user's correction: the "暂不支持该设备" check happens at the splash screen,
offline, immediately.  That means it is a LOCAL model/version table, not a server
round-trip.

Where would such a table live?  The real code is inside the 360 Jiagu-encrypted DEX,
so this script hunts the places that do NOT need the DEX:

  1. resources.arsc string/array resources (a hardcoded model list would show up here)
  2. every asset/raw file, including the encrypted libjiagu payload
  3. raw APK bytes, for known Huawei model-code patterns
"""
import io, os, re, struct, zipfile

APK = 'com.lzplay.helper.apk'

# Huawei model codes that such a table would plausibly contain
MODEL_PAT = re.compile(
    rb'(?:(?:MATE|MATE\d|P\d{1,2}|NOVA|PRA|LON|ALP|MHA|ELE|LYA|VOG|COL|TAS|CLT|ANE|PAR|JSN|INE|SEA|VTR|EVR|YAL|DCO|CET|NOH|ANA|JAD|JNY|BVL|FNE|MRD|AGS|BAH|BZT|KOB|CMR|WGR|AGR|SCM|CND|LGE|BZA|DEB|GLK|FRL|JEF|MAH|THR|WAS|NEO|BLN|DUK|HMA|KNT|STK|JKM|LLD|YAL|NXT|RNE|HON|MAR|CHM|TNY)\s*-?\s*[A-Z]{0,3}\d{1,3}[A-Z]?)',
    re.I)

# generic markers a device-gate would use
MARKERS = [b'isSupport', b'isSupported', b'supportModel', b'whiteList', b'whitelist',
           b'WhiteList', b'SupportList', b'deviceList', b'supportDevice',
           b'notSupport', b'unsupport', b'dialog_text_refuse', b'BLL', b'DCO-']


def look(label, blob, limit=40):
    hits = []
    for m in MODEL_PAT.finditer(blob):
        try:
            s = m.group(0).decode('ascii', 'replace')
        except Exception:
            continue
        if len(s) >= 3:
            hits.append((m.start(), s))
        if len(hits) >= limit:
            break
    marks = []
    for k in MARKERS:
        for m in re.finditer(re.escape(k), blob):
            marks.append((m.start(), k.decode()))
            break
    if hits or marks:
        print('  [%s]' % label)
        seen = set()
        for off, s in hits:
            if s.upper() in seen:
                continue
            seen.add(s.upper())
            print('      model-like %#08x  %s' % (off, s))
        for off, s in marks:
            print('      marker     %#08x  %s' % (off, s))
    return hits, marks


def main():
    z = zipfile.ZipFile(APK)
    names = z.namelist()
    print('APK entries: %d' % len(names))

    print('\n=== 1. resources.arsc ===')
    arsc = z.read('resources.arsc')
    look('resources.arsc', arsc)

    print('\n=== 2. every asset / raw file ===')
    for n in names:
        if n.startswith('assets/') or '/raw/' in n:
            blob = z.read(n)
            res = look(n, blob, limit=15)
            if not res[0] and not res[1]:
                print('  [%s] no model-like strings (%d bytes)' % (n, len(blob)))

    print('\n=== 3. res/ XML (decoded text form would not exist, but check .xml) ===')
    cnt = 0
    for n in names:
        if n.startswith('res/') and n.endswith('.xml'):
            blob = z.read(n)
            r = look(n, blob, limit=8)
            if r[0] or r[1]:
                cnt += 1
    print('  res xml files mentioning anything: %d' % cnt)

    print('\n=== 4. classes.dex (shell) ===')
    look('classes.dex', z.read('classes.dex'))

    print('\n=== 5. raw whole-APK scan ===')
    with open(APK, 'rb') as f:
        whole = f.read()
    look('whole APK', whole, limit=60)


if __name__ == '__main__':
    main()
