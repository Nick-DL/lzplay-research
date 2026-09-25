#!/usr/bin/env python3
"""
Rebuild Chat Partner's APK, replacing only classes.dex.

Chat Partner's resources.arsc uses obfuscated resource type names, so apktool cannot
decode/rebuild it.  We therefore touch nothing but the code: copy every entry from the
original zip verbatim, swap in the reassembled classes.dex, then re-sign.

Signature-related entries (META-INF/*.SF, *.RSA, *.MF, HUAWEI.CER) are dropped because
they are invalidated by the change and apksigner will regenerate them.  HUAWEI.CER is
preserved separately since it is not part of the JAR signature but is the Huawei
publisher descriptor the app family ships.
"""
import io, os, shutil, sys, zipfile

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
SRC = os.path.join(BASE, 'chat partner Chinese translated.apk')
DEX = os.path.join(BASE, 'work', 'chat_dex', 'classes_patched.dex')
OUT = os.path.join(BASE, 'work', 'chat_rebuilt_unsigned.apk')

INNER_DEX = 'classes.dex'
# Only the JAR *signature* files must go - they are invalidated by the change and
# apksigner regenerates them.  Everything else under META-INF/ (notably the
# androidx *.version files and HUAWEI.CER) is part of the app and must be preserved.
SIG_SUFFIXES = ('.SF', '.RSA', '.DSA', '.EC')
SIG_EXACT = ('META-INF/MANIFEST.MF',)


def is_signature(n):
    if n in SIG_EXACT:
        return True
    if not n.startswith('META-INF/'):
        return False
    # signature files live directly in META-INF/, not in sub-directories
    if '/' in n[len('META-INF/'):]:
        return False
    return n.upper().endswith(SIG_SUFFIXES)


def main():
    zin = zipfile.ZipFile(SRC)
    names = zin.namelist()
    print('source: %s' % os.path.basename(SRC))
    print('  entries: %d' % len(names))
    print('  classes.dex present: %s' % (INNER_DEX in names))

    dex = io.open(DEX, 'rb').read()
    print('  patched dex: %d bytes' % len(dex))

    dropped, kept, replaced = [], 0, 0
    with zipfile.ZipFile(OUT, 'w', zipfile.ZIP_DEFLATED, compresslevel=6) as zout:
        for item in zin.infolist():
            n = item.filename
            if is_signature(n):
                dropped.append(n)
                continue
            data = zin.read(n)
            if n == INNER_DEX:
                data = dex
                replaced += 1
            # keep the original compression choice where it matters
            zi = zipfile.ZipInfo(n, date_time=item.date_time)
            zi.compress_type = item.compress_type
            zi.external_attr = item.external_attr
            zi.internal_attr = item.internal_attr
            zi.create_system = item.create_system
            zout.writestr(zi, data)
            kept += 1

    print('  kept %d entries, replaced %d, dropped %d signature files'
          % (kept, replaced, len(dropped)))
    if dropped:
        print('  dropped: %s' % ', '.join(dropped[:6]) +
              (' ...' if len(dropped) > 6 else ''))
    print('wrote %s (%d bytes)' % (os.path.basename(OUT), os.path.getsize(OUT)))
    return 0


if __name__ == '__main__':
    sys.exit(main())
