#!/usr/bin/env python3
"""
Dump the full text of META-INF/HUAWEI.CER for the three apps.

The backup/restore subagent disassembled the device's own
com.android.server.pm.auth.processor.ValidPeriodProcessor and found it parses

    ValidPeriod: from <yyyy-MM-dd HH:mm:ss> to <yyyy-MM-dd HH:mm:ss>   (GMT)

and fails with "VP_VC date expired " when the clock is outside that window.  That is
why the official lzplay tutorial tells you to set the date to 2019 before restoring.

This script confirms the exact window our own APK carries, and lists every other
VerifiedInfo field PMS's processors look for (Certificate, ApkHash, Signature,
DeveloperKey, ...).
"""
import io, os, re, zipfile

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
APPS = [
    ('com.lzplay.helper.apk', 'lzplay (原始，未改动)'),
    ('旅游必备 travel essentials.apk', '旅游必备 (原始)'),
    ('chat partner Chinese translated.apk', 'Chat Partner (用户汉化重签版)'),
    ('旅游必备-patched.apk', '旅游必备 (我方改包重签版)'),
    ('ChatPartner-patched.apk', 'Chat Partner (我方改包重签版)'),
]

# fields the Huawei PMS certificate processors are known to consume
KNOWN = ['DeveloperKey', 'Certificate', 'ValidPeriod', 'ApkHash', 'Signature',
         'PackageName', 'Version', 'Issuer', 'Subject', 'ReleaseKey',
         'DeveloperCertificate', 'MDM', 'Permission']


def main():
    print('=' * 78)
    print('META-INF/HUAWEI.CER contents')
    print('=' * 78)

    for fname, label in APPS:
        p = os.path.join(BASE, fname)
        print('\n' + '-' * 78)
        print('%s   [%s]' % (label, fname))
        print('-' * 78)
        if not os.path.exists(p):
            print('  MISSING')
            continue
        try:
            z = zipfile.ZipFile(p)
        except Exception as e:
            print('  not a zip: %s' % e)
            continue

        cer = None
        for n in z.namelist():
            if n.upper().endswith('HUAWEI.CER'):
                cer = n
                break
        if not cer:
            print('  HUAWEI.CER: ABSENT')
            continue

        blob = z.read(cer)
        txt = blob.decode('latin-1')
        print('  %s  (%d bytes)' % (cer, len(blob)))

        found = False
        for key in KNOWN:
            for m in re.finditer(re.escape(key) + r'\s*[:=]\s*([^\r\n]{0,120})', txt):
                val = m.group(1).strip()
                if key == 'DeveloperKey' and len(val) > 60:
                    val = val[:56] + '...(%d hex chars)' % len(val)
                print('     %-22s %s' % (key + ':', val))
                found = True
        if not found:
            print('     no known fields matched; raw head:')
            print('     %r' % txt[:300])

        # highlight the validity window explicitly
        m = re.search(r'ValidPeriod\s*[:=]\s*from\s*([0-9-]+ [0-9:]+)\s*to\s*([0-9-]+ [0-9:]+)', txt)
        if m:
            print('\n     >>> ValidPeriod window: %s  ..  %s  (GMT)' % (m.group(1), m.group(2)))
            print('     >>> PMS refuses ("VP_VC date expired") if the device clock is')
            print('     >>> outside this window AT INSTALL TIME.')
        else:
            print('\n     >>> no ValidPeriod field found - PMS will not date-check this APK')

    print('\n' + '=' * 78)
    print('Note: the two patched APKs are ours and were re-signed, so their')
    print('DeveloperKey can no longer match.  Only the ORIGINAL files keep the')
    print('self-consistent Huawei certificate pair.')
    print('=' * 78)


if __name__ == '__main__':
    main()
