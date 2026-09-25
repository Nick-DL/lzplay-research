#!/usr/bin/env python3
"""
Compare the sibling apps (Chat Partner / 旅游必备) against lzplay with the exact
same battery of checks:

  1. META-INF/HUAWEI.CER present?   -> Huawei's un-signed signing descriptor
  2. Huawei MDM permissions in the manifest?
  3. assets/insidehelper.apk        -> the companion GSF-ID app
  4. libjiagu / 360 Jiagu shell?
  5. signing certificate subject / validity
"""
import io, os, struct, sys, zipfile, hashlib

NS = '{http://schemas.android.com/apk/res/android}'
TARGETS = [
    ('lzplay        ', 'com.lzplay.helper.apk'),
    ('ChatPartner   ', 'chat partner Chinese translated.apk'),
    ('TravelEssentl ', '旅游必备 travel essentials.apk'),
]


def human(n):
    for u in ('B', 'KB', 'MB', 'GB'):
        if n < 1024:
            return '%.1f %s' % (n, u)
        n /= 1024.0
    return '%.1f TB' % n


def cert_from_pkcs7(der):
    """Extract the first X.509 SEQUENCE from a PKCS#7 blob (crude but works)."""
    i = der.find(b'\x30\x82')
    if i < 0:
        return None
    return der[i:]


def parse_x509_name(der):
    """Very small ASN.1 walker to read the subject DN + validity of an X.509 cert."""
    try:
        # Certificate ::= SEQUENCE { tbsCertificate, sigAlg, sigValue }
        assert der[0] == 0x30
        # tbsCertificate is the first inner SEQUENCE
        p = 2 if der[1] < 0x80 else 2 + (der[1] & 0x7F)
        assert der[p] == 0x30
        tbs_len = der[p + 1] if der[p + 1] < 0x80 else int.from_bytes(der[p + 2:p + 2 + (der[p + 1] & 0x7F)], 'big')
        q = p + (2 if der[p + 1] < 0x80 else 2 + (der[p + 1] & 0x7F))
        end = q + tbs_len
        # skip optional [0] version
        if der[q] == 0xA0:
            ln = der[q + 1]
            q += 2 + (ln if ln < 0x80 else int.from_bytes(der[q + 2:q + 2 + (ln & 0x7F)], 'big'))
        # serial
        q += 2 + (der[q + 1] if der[q + 1] < 0x80 else 0)
        # signature alg
        q += 2 + (der[q + 1] if der[q + 1] < 0x80 else 0)
        # issuer
        issuer_start = q
        ilen = der[q + 1] if der[q + 1] < 0x80 else int.from_bytes(der[q + 2:q + 2 + (der[q + 1] & 0x7F)], 'big')
        issuer = der[q:q + 2 + ilen]
        q += 2 + ilen
        # validity
        vlen = der[q + 1] if der[q + 1] < 0x80 else int.from_bytes(der[q + 2:q + 2 + (der[q + 1] & 0x7F)], 'big')
        validity = der[q + 2:q + 2 + vlen]
        return issuer, validity
    except Exception as e:
        return None, None


def asn1_times(validity):
    out = []
    i = 0
    while i < len(validity):
        tag = validity[i]
        ln = validity[i + 1]
        val = validity[i + 2:i + 2 + ln]
        if tag in (0x17, 0x18):
            out.append(val.decode('ascii', 'replace'))
        i += 2 + ln
    return out


def find_oids(blob):
    """Locate common Name attribute OIDs and their UTF8/PrintableString values."""
    oids = {
        b'\x06\x03\x55\x04\x03': 'CN',
        b'\x06\x03\x55\x04\x06': 'C',
        b'\x06\x03\x55\x04\x08': 'ST',
        b'\x06\x03\x55\x04\x07': 'L',
        b'\x06\x03\x55\x04\x0a': 'O',
        b'\x06\x03\x55\x04\x0b': 'OU',
    }
    found = {}
    for oid, label in oids.items():
        idx = 0
        while True:
            idx = blob.find(oid, idx)
            if idx < 0:
                break
            p = idx + len(oid)
            for tag in (0x0C, 0x13, 0x14, 0x16):
                if p < len(blob) and blob[p] == tag:
                    ln = blob[p + 1]
                    val = blob[p + 2:p + 2 + ln].decode('utf-8', 'replace')
                    found.setdefault(label, []).append(val)
                    break
            idx += 1
    return found


def analyse(label, path):
    print('=' * 78)
    print('%s  %s' % (label, os.path.basename(path)))
    if not os.path.exists(path):
        print('   MISSING')
        return
    size = os.path.getsize(path)
    print('   size      : %s (%d bytes)' % (human(size), size))
    with open(path, 'rb') as f:
        head = f.read(1 << 20)
    print('   md5(head) : %s' % hashlib.md5(head).hexdigest())

    try:
        z = zipfile.ZipFile(path)
    except Exception as e:
        print('   NOT A ZIP: %s' % e)
        return
    names = z.namelist()
    print('   entries   : %d' % len(names))

    # ---- 1. HUAWEI.CER ----
    hw = [n for n in names if 'HUAWEI' in n.upper()]
    print('   HUAWEI.*  : %s' % (hw if hw else 'NONE'))
    for n in hw:
        blob = z.read(n)
        print('      %s  %d bytes' % (n, len(blob)))
        txt = blob.decode('utf-8', 'replace')
        if txt.startswith('DeveloperKey:'):
            print('      -> plaintext "DeveloperKey:<hex>" descriptor (same format as lzplay)')
            hexpart = txt.split(':', 1)[1].strip()
            try:
                der = bytes.fromhex(hexpart)
                i = der.find(b'\x30\x82')
                if i >= 0:
                    der = der[i:]
                o = find_oids(der)
                print('      subject/issuer fields: %s' % o)
                _, val = parse_x509_name(der)
                if val:
                    print('      validity: %s' % asn1_times(val))
            except Exception as e:
                print('      hex parse failed: %s' % e)
        else:
            print('      -> not the DeveloperKey format; first 80 bytes: %r' % blob[:80])

    # ---- 2. signing certs (.RSA/.DSA/.EC) ----
    sigs = [n for n in names if n.upper().startswith('META-INF/') and
            n.upper().endswith(('.RSA', '.DSA', '.EC'))]
    print('   sig files : %s' % sigs)
    for n in sigs:
        der = cert_from_pkcs7(z.read(n))
        if der:
            o = find_oids(der)
            print('      %-28s subject/issuer: %s' % (n, o))
            _, val = parse_x509_name(der)
            if val:
                print('      %-28s validity: %s' % ('', asn1_times(val)))

    # ---- 3. key structural markers ----
    markers = {
        'assets/insidehelper.apk': 'companion GSF-ID app',
        'assets/libjiagu.so': '360 Jiagu ARM',
        'assets/libjiagu_x86.so': '360 Jiagu x86',
        'assets/.appkey': '360 appkey',
    }
    print('   markers   :')
    for m, desc in markers.items():
        hit = [n for n in names if n.lower() == m.lower()]
        if hit:
            info = z.getinfo(hit[0])
            extra = ''
            if m.endswith('.appkey'):
                extra = '  value=%r' % z.read(hit[0])
            print('      %-28s %-18s %s%s' % (m, human(info.file_size), desc, extra))
        else:
            print('      %-28s %-18s (absent)' % (m, '-'))

    # ---- 4. classes.dex stats (packed or not?) ----
    dexes = [n for n in names if n.endswith('.dex')]
    print('   dex files : %s' % dexes)
    for n in dexes[:6]:
        d = z.read(n)
        if len(d) > 112:
            cls = struct.unpack_from('<I', d, 96)[0]
            mtd = struct.unpack_from('<I', d, 88)[0]
            strn = struct.unpack_from('<I', d, 56)[0]
            print('      %-22s %-10s classes=%-6d methods=%-7d strings=%d'
                  % (n, human(len(d)), cls, mtd, strn))

    # ---- 5. manifest checks ----
    man = z.read('AndroidManifest.xml') if 'AndroidManifest.xml' in names else b''
    if man:
        import re
        asc = man.decode('utf-16-le', 'ignore')
        asc += man.decode('latin-1', 'ignore')
        perms = sorted(set(re.findall(r'[a-zA-Z0-9_.]*huawei[a-zA-Z0-9_.]*', asc, re.I)))
        hwperms = [p for p in perms if 'permission' in p.lower() or 'mdm' in p.lower()]
        print('   huawei-ish strings in manifest:')
        for p in hwperms[:20]:
            print('      %s' % p)
        for key in ('insidehelper', 'lzplay', 'DeviceAdmin', 'device_admin',
                    'READ_GSERVICES', 'MDM', 'systemmanager'):
            if key.lower() in asc.lower():
                print('      [contains] %s' % key)
    print()


def main():
    for label, path in TARGETS:
        analyse(label, path)


if __name__ == '__main__':
    main()
