#!/usr/bin/env python3
"""
Recon for the two un-hardened sibling apps.

Goals:
  1. which single "network check" gate blocks startup?
  2. is the device-model whitelist local, and where?
  3. what actually needs the network vs what works offline?
  4. is the app patched easily (plaintext dex, v1 signature only, no integrity check)?
"""
import io, os, re, zipfile
from collections import Counter

TARGETS = [
    ('ChatPartner', 'chat partner Chinese translated.apk'),
    ('TravelEss. ', '旅游必备 travel essentials.apk'),
]

NET_ERROR = [
    b'network', b'NetworkException', b'SocketTimeout', b'UnknownHost',
    b'ConnectException', b'no network', b'\xe7\xbd\x91\xe7\xbb\x9c',      # 网络
    b'\xe7\xbd\x91\xe7\xbb\x9c\xe5\xbc\x82\xe5\xb8\xb8',                  # 网络异常
    b'\xe6\xa3\x80\xe6\x9f\xa5\xe7\xbd\x91\xe7\xbb\x9c',                  # 检查网络
]
UNSUPPORTED = [
    b'\xe6\x9a\x82\xe4\xb8\x8d\xe6\x94\xaf\xe6\x8c\x81',                  # 暂不支持
    b'\xe4\xb8\x8d\xe6\x94\xaf\xe6\x8c\x81\xe8\xaf\xa5\xe8\xae\xbe\xe5\xa4\x87',  # 不支持该设备
    b'not support', b'unsupported', b'isSupport',
    b'\xe6\x94\xaf\xe6\x8c\x81\xe6\x9c\xba\xe5\x9e\x8b',                  # 支持机型
]
MODEL_HINT = [
    b'Build.MODEL', b'Build.DISPLAY', b'ro.build.display.id', b'Build.PRODUCT',
    b'Build.DEVICE', b'SystemProperties',
]
REGISTER = [
    b'uncertified', b'register_google', b'gservices', b'android_id',
    b'GSF', b'gsf_id', b'sf_id', b'recev.sfid',
]


def dex_strings(z, name):
    d = z.read(name)
    import struct
    if len(d) < 112:
        return [], d
    try:
        n = struct.unpack_from('<I', d, 56)[0]
        off = struct.unpack_from('<I', d, 60)[0]
    except Exception:
        return [], d
    out = []
    for i in range(n):
        try:
            o = struct.unpack_from('<I', d, off + i * 4)[0]
            p = o
            r = 0
            s = 0
            while True:
                b = d[p]
                p += 1
                r |= (b & 0x7F) << s
                if not (b & 0x80):
                    break
                s += 7
            out.append(d[p:p + r].decode('utf-8', 'replace'))
        except Exception:
            continue
    return out, d


def main():
    for label, path in TARGETS:
        print('=' * 80)
        print(label, os.path.basename(path))
        if not os.path.exists(path):
            print('   MISSING')
            continue
        z = zipfile.ZipFile(path)
        names = z.namelist()

        # signature scheme present?
        sigs = [n for n in names if n.upper().startswith('META-INF/')
                and n.upper().endswith(('.RSA', '.DSA', '.EC', '.SF'))]
        has_v2 = any(n == 'META-INF/MANIFEST.MF' for n in names)
        print('   v1 sig files : %s' % sigs)

        allstr = []
        for n in names:
            if n.endswith('.dex'):
                s, _ = dex_strings(z, n)
                allstr.extend(s)
        print('   total dex strings: %d' % len(allstr))
        joined = '\n'.join(allstr)

        def show(title, needles, limit=14):
            print('   --- %s ---' % title)
            hits = []
            for k in needles:
                try:
                    needle = k.decode('utf-8')
                except Exception:
                    needle = ''
                if not needle:
                    continue
                for s in allstr:
                    if needle in s:
                        hits.append(s)
            seen = []
            for h in hits:
                if h not in seen:
                    seen.append(h)
            for h in seen[:limit]:
                print('        %s' % h[:150])
            if not seen:
                print('        (none)')

        show('NETWORK / error dialogs', NET_ERROR)
        show('UNSUPPORTED / device gate', UNSUPPORTED)
        show('MODEL / build queries', MODEL_HINT)
        show('REGISTER / GSF', REGISTER)

        # URLs and hosts
        print('   --- endpoints ---')
        urls = set()
        for s in allstr:
            for m in re.finditer(r'https?://[A-Za-z0-9._~:/?#\[\]@!$&\'()*+,;=%-]{4,120}', s):
                urls.add(m.group())
        for u in sorted(urls)[:25]:
            print('        %s' % u)

        # activities / receivers worth patching
        print('   --- component-ish class names ---')
        comp = sorted(set(s for s in allstr
                          if re.match(r'^L?[\w./$]*(Activity|Receiver|Service|Application)[\w$]*;?$', s)))
        for c in comp[:30]:
            print('        %s' % c)
        print()


if __name__ == '__main__':
    main()
