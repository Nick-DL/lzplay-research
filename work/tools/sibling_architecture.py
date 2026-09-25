#!/usr/bin/env python3
"""
Deeper comparison of the three apps: do the siblings share lzplay's architecture?

Specifically:
  - do they declare a DeviceAdminReceiver + device_admin.xml (the "become device
    administrator" half of the mechanism)?
  - do they query com.google.android.gsf.gservices for android_id (the GSF-ID half)?
  - do they carry an embedded companion APK like lzplay's assets/insidehelper.apk?
  - do they have a splash screen + an "install GMS" activity layout?
  - what download/server endpoints do they reference?
"""
import io, os, re, zipfile

TARGETS = [
    ('lzplay      ', 'com.lzplay.helper.apk'),
    ('ChatPartner ', 'chat partner Chinese translated.apk'),
    ('TravelEss.  ', '旅游必备 travel essentials.apk'),
]

KEYS = {
    'gsf provider   ': [b'com.google.android.gsf.gservices', b'android_id'],
    'gservices perm ': [b'READ_GSERVICES'],
    'device admin   ': [b'device_admin', b'DeviceAdminReceiver', b'BIND_DEVICE_ADMIN',
                        b'DEVICE_ADMIN_ENABLED'],
    'splash         ': [b'SplashActivity', b'activity_splash'],
    'install act    ': [b'InstallActivity', b'activity_install'],
    'submit act     ': [b'SubmitActivity', b'activity_submit'],
    'launcher act   ': [b'LauncherActivity', b'activity_launcher'],
    'fetch/register ': [b'recev.sfid', b'sf_id', b'register_google', b'GetIdService',
                        b'insidehelper'],
    'hw mdm perms   ': [b'permission.sec.MDM', b'systemmanager.permission.ACCESS_INTERFACE'],
    'jiagu shell    ': [b'com.stub.StubApp', b'com.qihoo.util', b'libjiagu'],
}

URL_PAT = re.compile(rb'https?://[A-Za-z0-9._~:/?#\[\]@!$&\'()*+,;=%-]{6,120}')


def ascii_strings(blob, minlen=6):
    return set(m.group().decode('ascii', 'replace')
               for m in re.finditer(rb'[\x20-\x7e]{%d,}' % minlen, blob))


def main():
    for label, path in TARGETS:
        print('=' * 78)
        print(label, os.path.basename(path))
        if not os.path.exists(path):
            print('   MISSING')
            continue
        z = zipfile.ZipFile(path)
        names = z.namelist()

        # gather a searchable corpus: manifest + arsc + all dex + layout names
        corpus = bytearray()
        for n in names:
            if n in ('AndroidManifest.xml', 'resources.arsc') or n.endswith('.dex'):
                corpus += z.read(n)
        # also concatenate entry NAMES (layouts/activities are their own signal)
        namestr = '\n'.join(names).encode()

        for label2, keys in KEYS.items():
            hits = []
            for k in keys:
                if k in corpus or k in namestr:
                    hits.append(k.decode('ascii', 'replace'))
            print('   %s %s' % (label2, hits if hits else '-'))

        # embedded companion apk?
        embedded = [n for n in names if n.lower().endswith('.apk')]
        print('   embedded apk    %s' % (embedded if embedded else '-'))

        # layouts / drawables that hint at the same UX
        lays = sorted(n for n in names if '/layout' in n and n.endswith('.xml'))
        print('   layouts (%d)     %s' % (len(lays), [os.path.basename(x) for x in lays][:14]))

        # endpoints from the plaintext-visible parts
        urls = set()
        for n in names:
            if n.endswith('.dex') or n == 'resources.arsc' or n == 'AndroidManifest.xml':
                for m in URL_PAT.finditer(z.read(n)):
                    urls.add(m.group().decode('ascii', 'replace'))
        print('   http endpoints  (%d)' % len(urls))
        for u in sorted(urls)[:18]:
            print('        %s' % u)

        # huawei-ish classes present in dex
        hw = set()
        for n in names:
            if n.endswith('.dex'):
                for s in ascii_strings(z.read(n), 8):
                    if 'huawei' in s.lower() and ('admin' in s.lower() or 'mdm' in s.lower()
                                                  or 'systemmanager' in s.lower()):
                        hw.add(s)
        print('   huawei admin strings in dex (%d)' % len(hw))
        for s in sorted(hw)[:20]:
            print('        %s' % s)
        print()


if __name__ == '__main__':
    main()
