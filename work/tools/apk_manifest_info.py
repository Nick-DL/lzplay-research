#!/usr/bin/env python3
"""Read package name / versionCode / targetSdk / minSdk straight out of the binary
AndroidManifest.xml, so we can tell which of the bundled GMS APKs are installable
on the HarmonyOS 4.2 (Android 12 / API 31) target."""
import glob, os, re, struct, zipfile

STRINGS = {}

def pool(blob, off):
    typ, hsz, size = struct.unpack_from('<HHI', blob, off)
    if typ != 0x0001:
        return None
    cnt, styc, flags, sstart, stystart = struct.unpack_from('<IIIII', blob, off + 8)
    utf8 = bool(flags & (1 << 8))
    offs = [struct.unpack_from('<I', blob, off + hsz + i * 4)[0] for i in range(cnt)]
    out = []
    for o in offs:
        p = off + sstart + o
        if utf8:
            n = blob[p]; p += 1
            if n & 0x80:
                n = ((n & 0x7f) << 8) | blob[p]; p += 1
            bl = blob[p]; p += 1
            if bl & 0x80:
                bl = ((bl & 0x7f) << 8) | blob[p]; p += 1
            out.append(blob[p:p + bl].decode('utf-8', 'replace'))
        else:
            n = struct.unpack_from('<H', blob, p)[0]
            out.append(blob[p + 2:p + 2 + n * 2].decode('utf-16-le', 'replace'))
    return out


def manifest_info(path):
    z = zipfile.ZipFile(path)
    m = z.read('AndroidManifest.xml')
    sp = pool(m, 8)
    if sp is None:
        return None
    # walk chunks inside <manifest>
    res = {'strings': sp}
    # attributes live in START_ELEMENT chunks; a simpler approach: hunt for the
    # well-known android attribute name strings and their following ints.
    def find(name):
        try:
            return sp.index(name)
        except ValueError:
            return None
    r = {}
    # The manifest chunk starts right after the string pool
    typ, hsz, size = struct.unpack_from('<HHI', m, 8)
    pos = 8 + size
    # scan all START_ELEMENT (0x0102) chunks
    def walk(pos, end, depth=0):
        while pos < end:
            if pos + 8 > len(m):
                return
            t, h, s = struct.unpack_from('<HHI', m, pos)
            if s == 0:
                return
            if t == 0x0102:      # START_ELEMENT
                ns_i, name_i = struct.unpack_from('<ii', m, pos + 16)
                attr_start, attr_size, attr_count = struct.unpack_from('<HHH', m, pos + 24)
                attrs = []
                for a in range(attr_count):
                    ao = pos + 16 + attr_start + a * attr_size
                    a_ns, a_name, a_raw, a_typ = struct.unpack_from('<iiii', m, ao)
                    a_data = struct.unpack_from('<I', m, ao + 16)[0]
                    an = sp[a_name] if 0 <= a_name < len(sp) else '?'
                    if a_typ == 0x03 and 0 <= a_raw < len(sp):
                        val = sp[a_raw]
                    elif a_typ == 0x10:
                        val = struct.unpack_from('<i', m, ao + 16)[0]
                    elif a_typ == 0x11:
                        val = a_data
                    else:
                        val = a_data
                    attrs.append((an, val))
                nm = sp[name_i] if 0 <= name_i < len(sp) else '?'
                if depth == 0 and nm == 'manifest':
                    for an, val in attrs:
                        if an in ('package', 'versionCode', 'versionName',
                                  'platformBuildVersionCode', 'compileSdkVersion'):
                            r[an] = val
                if nm == 'uses-sdk':
                    for an, val in attrs:
                        if an in ('minSdkVersion', 'targetSdkVersion'):
                            r[an] = val
                walk(pos + h, pos + s, depth + 1)
            elif t in (0x0100, 0x0101, 0x0103, 0x0180, 0x0181):
                pass
            pos += s
    walk(pos, len(m))
    return r


def main():
    print('%-44s %-34s %-9s %-9s %s' % ('file', 'package', 'minSdk', 'targetSdk', 'verCode'))
    print('-' * 118)
    for f in sorted(glob.glob('work/gms29/*.apk')):
        try:
            r = manifest_info(f)
        except Exception as e:
            print('%-44s ERROR %s' % (os.path.basename(f), e))
            continue
        if not r:
            print('%-44s <no manifest info>' % os.path.basename(f))
            continue
        print('%-44s %-34s %-9s %-9s %s' % (
            os.path.basename(f), r.get('package', '?'),
            r.get('minSdkVersion', '?'), r.get('targetSdkVersion', '?'),
            r.get('versionCode', '?')))
    print()
    print('note: targetSdk >= 30 is required for install on Android 12+;')
    print('      anything lower needs INSTALL_FAILED_DEPRECATED_SDK_VERSION bypass.')


if __name__ == '__main__':
    main()
