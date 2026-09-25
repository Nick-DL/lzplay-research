#!/usr/bin/env python3
"""
Decode META-INF/HUAWEI.CER from lzplay and its two siblings and compare them
field by field.  The file is a plaintext "DeveloperKey:<hex DER>" descriptor, so
the binary is recoverable exactly; the two 3051/3060/3160-byte sizes suggest the
same certificate with slightly different app-specific payloads.
"""
import io, os, re, base64, zipfile

TARGETS = [
    ('lzplay     ', 'com.lzplay.helper.apk'),
    ('ChatPartner', 'chat partner Chinese translated.apk'),
    ('TravelEss. ', '旅游必备 travel essentials.apk'),
]

OIDS = {
    b'\x06\x03\x55\x04\x03': 'CN',
    b'\x06\x03\x55\x04\x06': 'C',
    b'\x06\x03\x55\x04\x08': 'ST',
    b'\x06\x03\x55\x04\x07': 'L',
    b'\x06\x03\x55\x04\x0a': 'O',
    b'\x06\x03\x55\x04\x0b': 'OU',
}


def attrs(der):
    out = {}
    for oid, label in OIDS.items():
        idx = 0
        vals = []
        while True:
            idx = der.find(oid, idx)
            if idx < 0:
                break
            p = idx + len(oid)
            for tag in (0x0C, 0x13, 0x14, 0x16, 0x1E):
                if p < len(der) and der[p] == tag:
                    if tag == 0x1E:                      # BMPString
                        ln = int.from_bytes(der[p + 1:p + 2], 'big')
                        vals.append(der[p + 2:p + 2 + ln].decode('utf-16-be', 'replace'))
                    else:
                        ln = der[p + 1]
                        if ln & 0x80:
                            n = ln & 0x7F
                            ln = int.from_bytes(der[p + 2:p + 2 + n], 'big')
                            vals.append(der[p + 2 + n:p + 2 + n + ln].decode('utf-8', 'replace'))
                        else:
                            vals.append(der[p + 2:p + 2 + ln].decode('utf-8', 'replace'))
                    break
            idx += 1
        if vals:
            out[label] = vals
    return out


def times(der):
    """Find UTCTime/GeneralizedTime values."""
    out = []
    for m in re.finditer(rb'[\x17\x18](.)', der[:1200], re.S):
        tag = m.group(0)[0]
        ln = m.group(1)[0]
        if 10 <= ln <= 20:
            val = der[m.start() + 2:m.start() + 2 + ln]
            try:
                out.append(val.decode('ascii'))
            except Exception:
                pass
    return out[:4]


def serial(der):
    try:
        p = 2 if der[1] < 0x80 else 2 + (der[1] & 0x7F)
        q = p
        assert der[q] == 0x30
        q += 2 if der[q + 1] < 0x80 else 2 + (der[q + 1] & 0x7F)
        if der[q] == 0xA0:
            ln = der[q + 1]
            q += 2 + ln
        assert der[q] == 0x02
        ln = der[q + 1]
        return der[q + 2:q + 2 + ln].hex()
    except Exception:
        return '?'


def modulus(der):
    i = der.find(b'\x02\x82\x01\x01')
    if i < 0:
        i = der.find(b'\x02\x81\x81')
    if i < 0:
        return None
    return der[i + 4:i + 4 + 256]


def main():
    info = {}
    for label, path in TARGETS:
        print('=' * 76)
        print(label, os.path.basename(path))
        if not os.path.exists(path):
            print('   MISSING')
            continue
        z = zipfile.ZipFile(path)
        hit = [n for n in z.namelist() if n.upper().endswith('HUAWEI.CER')]
        if not hit:
            print('   no HUAWEI.CER')
            continue
        raw = z.read(hit[0])
        txt = raw.decode('utf-8', 'replace')
        head = txt.split(':', 1)[0]
        print('   header keyword : %r' % head)
        body = txt.split(':', 1)[1]
        # strip anything that is not hex (newlines, spaces, trailing text)
        hexs = re.sub(r'[^0-9a-fA-F]', '', body)
        if len(hexs) % 2:
            hexs = hexs[:-1]
        try:
            der = bytes.fromhex(hexs)
        except Exception as e:
            print('   hex decode failed even after cleaning:', e)
            continue
        i = der.find(b'\x30\x82')
        if i > 0:
            der = der[i:]
        print('   DER size      : %d bytes' % len(der))
        print('   serial        : %s' % serial(der))
        a = attrs(der)
        print('   subject/issuer: %s' % a)
        print('   validity      : %s' % times(der))
        m = modulus(der)
        if m:
            print('   RSA modulus   : %s... (%d bytes)' % (m[:16].hex(), len(m)))
        info[label] = dict(der=der, attrs=a, serial=serial(der), mod=m)

    print()
    print('=' * 76)
    print('CROSS COMPARISON')
    keys = list(info)
    for i in range(len(keys)):
        for j in range(i + 1, len(keys)):
            a, b = info[keys[i]], info[keys[j]]
            same_der = a['der'] == b['der']
            same_mod = a['mod'] is not None and a['mod'] == b['mod']
            print('  %s vs %s : identical_der=%s identical_rsa_key=%s'
                  % (keys[i], keys[j], same_der, same_mod))
            if not same_der and a['mod'] and b['mod']:
                # where do they diverge?
                n = min(len(a['der']), len(b['der']))
                diff = [k for k in range(n) if a['der'][k] != b['der'][k]]
                print('      first difference at byte %s ; total differing bytes %d/%d'
                      % (diff[0] if diff else '-', len(diff), n))

    # dump the full DER of one so it can be inspected with a real tool
    for label, d in info.items():
        fn = 'work/certs/huawei_%s.der' % label.strip().replace('.', '').replace(' ', '')
        os.makedirs('work/certs', exist_ok=True)
        io.open(fn, 'wb').write(d['der'])
        print('  wrote %s' % fn)


if __name__ == '__main__':
    main()
