#!/usr/bin/env python3
"""
Rebuild the travel app's APK from the patched smali tree.

Mirrors rebuild_chat_apk.py: copy every original zip entry verbatim, swap in a freshly
assembled classes.dex, keep META-INF/HUAWEI.CER, drop the now-invalid JAR signature
files, then re-sign.

Only the code changes - the 120 MB of bundled GMS assets are copied through untouched,
which is what makes this viable at all (aapt2 would choke on repacking that much).

Usage:
    python tools/rebuild_travel_apk.py            # assemble + repack + sign
    python tools/rebuild_travel_apk.py --no-sign
"""
import io
import os
import shutil
import subprocess
import sys
import time
import zipfile

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
TREE = os.path.join(BASE, 'work', 'travel_decoded')
SRC = os.path.join(BASE, 'work', 'originals', '旅游必备 travel essentials.apk')
OUT_RAW = os.path.join(BASE, 'work', 'travel_rebuilt_unsigned.apk')
OUT = os.path.join(BASE, '旅游必备-nostream-oom.apk')

# baksmali/smali are bundled inside the apktool jar
APKTOOL = None
for cand in (os.path.join(BASE, 'work', 'tools', 'apktool-2.11.1.jar'),
             os.path.join(BASE, 'work', 'tools', 'apktool.jar')):
    if os.path.exists(cand):
        APKTOOL = cand
        break

BT = r'D:\Android\Sdk\build-tools\37.0.0'
KS = os.path.join(BASE, 'work', 'siblings.jks')
KSPASS = 'lzplay123'

INNER_DEX = 'classes.dex'
SIG_SUFFIXES = ('.SF', '.RSA', '.DSA', '.EC')
SIG_EXACT = ('META-INF/MANIFEST.MF',)


def is_signature(n):
    if n in SIG_EXACT:
        return True
    if not n.startswith('META-INF/'):
        return False
    if '/' in n[len('META-INF/'):]:
        return False
    return n.upper().endswith(SIG_SUFFIXES)


def run(cmd, **kw):
    print('  $ %s' % ' '.join(str(c) for c in cmd[:6]))
    r = subprocess.run(cmd, capture_output=True, encoding='utf-8',
                       errors='replace', timeout=3600, **kw)
    out = ((r.stdout or '') + (r.stderr or '')).strip()
    if out:
        for ln in out.splitlines()[-6:]:
            print('      %s' % ln[:160])
    return r.returncode


def main():
    sign = '--no-sign' not in sys.argv

    print('=' * 78)
    print('REBUILD travel app from patched smali')
    print('=' * 78)
    print('  tree : %s' % os.path.relpath(TREE, BASE))
    print('  src  : %s (%d bytes)' % (os.path.relpath(SRC, BASE), os.path.getsize(SRC)))

    if APKTOOL is None:
        print('\nERROR: apktool jar not found in work/tools/')
        return 1
    print('  tool : %s' % os.path.relpath(APKTOOL, BASE))

    # ---- 1. assemble smali -> dex ----
    dexdir = os.path.join(BASE, 'work', 'travel_dex')
    if os.path.isdir(dexdir):
        shutil.rmtree(dexdir)
    os.makedirs(dexdir)
    smali_in = os.path.join(TREE, 'smali')
    print('\n[1/4] smali -> dex')
    t0 = time.time()
    rc = run(['java', '-Xmx4g', '-cp', APKTOOL,
              'com.android.tools.smali.smali.Main', 'a', smali_in,
              '-o', os.path.join(dexdir, INNER_DEX)])
    if rc != 0:
        print('  assembly FAILED (exit %d)' % rc)
        return 1
    dex = os.path.join(dexdir, INNER_DEX)
    print('  -> %s (%d bytes, %.1fs)' % (os.path.relpath(dex, BASE),
                                         os.path.getsize(dex), time.time() - t0))

    # ---- 2. repack ----
    print('\n[2/4] repack (copying all original entries)')
    zin = zipfile.ZipFile(SRC)
    names = zin.namelist()
    has_cer = any(n.upper().endswith('HUAWEI.CER') for n in names)
    print('  entries %d, HUAWEI.CER present %s' % (len(names), has_cer))

    dexdata = io.open(dex, 'rb').read()
    dropped = 0
    with zipfile.ZipFile(OUT_RAW, 'w', zipfile.ZIP_DEFLATED, compresslevel=6) as zout:
        for item in zin.infolist():
            n = item.filename
            if is_signature(n):
                dropped += 1
                continue
            data = dexdata if n == INNER_DEX else zin.read(n)
            zi = zipfile.ZipInfo(n, date_time=item.date_time)
            zi.compress_type = item.compress_type
            zi.external_attr = item.external_attr
            zi.internal_attr = item.internal_attr
            zi.create_system = item.create_system
            zout.writestr(zi, data)
    zin.close()
    print('  dropped %d signature file(s)' % dropped)
    print('  -> %s (%d bytes)' % (os.path.relpath(OUT_RAW, BASE),
                                  os.path.getsize(OUT_RAW)))

    if not sign:
        print('\n(--no-sign) done')
        return 0

    # ---- 3. zipalign ----
    print('\n[3/4] zipalign')
    aligned = os.path.join(BASE, 'work', 'travel_rebuilt_aligned.apk')
    rc = run([os.path.join(BT, 'zipalign.exe'), '-f', '-p', '4', OUT_RAW, aligned])
    if rc != 0:
        print('  zipalign failed')
        return 1

    # ---- 4. sign ----
    print('\n[4/4] apksigner')
    rc = run([os.path.join(BT, 'apksigner.bat'), 'sign',
              '--ks', KS, '--ks-pass', 'pass:' + KSPASS, '--key-pass', 'pass:' + KSPASS,
              '--v1-signing-enabled', 'true', '--v2-signing-enabled', 'true',
              '--out', OUT, aligned])
    if rc != 0:
        print('  signing failed')
        return 1

    print('\n[done] %s (%d bytes)' % (os.path.relpath(OUT, BASE), os.path.getsize(OUT)))
    return 0


if __name__ == '__main__':
    sys.exit(main())
