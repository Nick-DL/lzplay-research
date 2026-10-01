#!/usr/bin/env python3
"""
Issue a server certificate for api.trip-happy.com from the user's own root CA
(NDC.crt / NDC.key), and verify the resulting chain by actually running a TLS
server and connecting to it with the CA as the only trust anchor.

Why this exists: 旅游必备 talks to https://api.trip-happy.com over TLS and performs
normal certificate validation (no cert-relaxing code anywhere in the app, no
networkSecurityConfig, targetSdk 29 - so a user-installed CA is honoured). To serve
it a forged response we must present a certificate it will accept, which means
signing with a CA that is installed on the device.

Usage:
    python work/tools/make_server_cert.py --pass <key passphrase> [--host api.trip-happy.com]
"""
import argparse
import datetime
import os
import ssl
import subprocess
import sys
import tempfile
import threading

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
CA_DIR = os.path.join(BASE, 'work', 'ca')
SRC_CRT = r"E:\NickDL\Documents\ND's Files\DGMZ\FCCertificates\NDC.crt"
SRC_KEY = r"E:\NickDL\Documents\ND's Files\DGMZ\FCCertificates\NDC.key"
OPENSSL = r'D:\Program Files\Git\usr\bin\openssl.exe'

HOST = 'api.trip-happy.com'
DAYS = 3650


def run(cmd, **kw):
    r = subprocess.run(cmd, capture_output=True, text=True,
                       encoding='utf-8', errors='replace', **kw)
    return r.returncode, (r.stdout or ''), (r.stderr or '')


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--pass', dest='pw', default=None,
                    help='passphrase for NDC.key (omit when using --plain-key)')
    ap.add_argument('--plain-key', dest='plain', default=None,
                    help='path to an already decrypted PEM private key (NDC.key equivalent)')
    ap.add_argument('--ca-crt', dest='cacrt', default=SRC_CRT,
                    help='path to the CA certificate (defaults to NDC.crt)')
    ap.add_argument('--host', default=HOST)
    ap.add_argument('--days', type=int, default=DAYS)
    a = ap.parse_args()

    if not a.pw and not a.plain:
        print('ERROR: give either --pass <passphrase> or --plain-key <file.pem>')
        return 1

    os.makedirs(CA_DIR, exist_ok=True)
    host = a.host

    print('=' * 78)
    print('ISSUE SERVER CERT for %s' % host)
    print('=' * 78)
    print('  openssl : %s' % OPENSSL)
    print('  CA crt  : %s' % a.cacrt)
    if a.plain:
        print('  CA key  : %s  (already decrypted PEM)' % a.plain)
    else:
        print('  CA key  : %s  (passphrase supplied)' % SRC_KEY)
    print('  out dir : %s' % CA_DIR)
    print()

    if not os.path.exists(OPENSSL):
        print('  ERROR: openssl not found')
        return 1
    if not os.path.exists(a.cacrt):
        print('  ERROR: CA certificate not found: %s' % a.cacrt)
        return 1

    # ---- 1. plain PEM CA certificate (no bag attributes) -------------------
    ca_pem = os.path.join(CA_DIR, 'ndc-ca.crt')
    rc, out, err = run([OPENSSL, 'x509', '-in', a.cacrt, '-out', ca_pem])
    print('[1] CA certificate -> %s  rc=%d' % (os.path.basename(ca_pem), rc))
    if rc != 0:
        print('    %s' % err.strip()[:200])
        return 1

    # ---- 2. plain PEM CA key ----------------------------------------------
    ca_key = os.path.join(CA_DIR, 'ndc-ca.key')
    if a.plain:
        if not os.path.exists(a.plain):
            print('[2] ERROR: plain key not found: %s' % a.plain)
            return 1
        # normalise it through openssl so any PKCS#8/PKCS#1 form works
        rc, out, err = run([OPENSSL, 'rsa', '-in', a.plain, '-out', ca_key])
        if rc != 0:
            # maybe it is already PKCS#8 and rsa(1) is unavailable; just copy
            import shutil
            shutil.copyfile(a.plain, ca_key)
            rc = 0
        print('[2] CA private key  -> %s  rc=%d' % (os.path.basename(ca_key), rc))
    else:
        rc, out, err = run([OPENSSL, 'rsa', '-in', SRC_KEY, '-out', ca_key,
                            '-passin', 'pass:%s' % a.pw])
        print('[2] CA private key  -> %s  rc=%d' % (os.path.basename(ca_key), rc))
        if rc != 0:
            print('    %s' % err.strip()[:300])
            print('    (likely a wrong passphrase)')
            return 1
    os.chmod(ca_key, 0o600)

    # ---- 3. verify the pair actually matches -------------------------------
    _, cm, _ = run([OPENSSL, 'x509', '-in', ca_pem, '-noout', '-modulus'])
    _, km, _ = run([OPENSSL, 'rsa', '-in', ca_key, '-noout', '-modulus'])
    match = cm.strip() == km.strip() and cm.strip() != ''
    print('[3] key/cert modulus match : %s' % ('YES' if match else 'NO'))
    if not match:
        print('    certificate and private key do not belong together')
        return 1

    # ---- 4. server key + CSR ----------------------------------------------
    srv_key = os.path.join(CA_DIR, 'server.key')
    srv_csr = os.path.join(CA_DIR, 'server.csr')
    rc, out, err = run([OPENSSL, 'req', '-new', '-newkey', 'rsa:2048', '-nodes',
                        '-keyout', srv_key, '-out', srv_csr,
                        '-subj', '/CN=%s' % host])
    print('[4] server key + CSR  rc=%d' % rc)
    if rc != 0:
        print('    %s' % err.strip()[:200])
        return 1

    # ---- 5. sign with the CA, with SAN (mandatory for hostname checks) ------
    srv_crt = os.path.join(CA_DIR, 'server.crt')
    ext = os.path.join(CA_DIR, 'server.ext')
    with open(ext, 'w', encoding='utf-8', newline='\n') as f:
        f.write('basicConstraints=CA:FALSE\n')
        f.write('keyUsage=critical,digitalSignature,keyEncipherment\n')
        f.write('extendedKeyUsage=serverAuth\n')
        f.write('subjectAltName=DNS:%s\n' % host)
        f.write('subjectKeyIdentifier=hash\n')
        f.write('authorityKeyIdentifier=keyid,issuer\n')

    rc, out, err = run([OPENSSL, 'x509', '-req', '-in', srv_csr,
                        '-CA', ca_pem, '-CAkey', ca_key,
                        '-CAcreateserial', '-out', srv_crt,
                        '-days', str(a.days), '-sha256', '-extfile', ext])
    print('[5] signed server cert rc=%d' % rc)
    if rc != 0:
        print('    %s' % err.strip()[:300])
        return 1

    print()
    rc, out, err = run([OPENSSL, 'x509', '-in', srv_crt, '-noout',
                        '-subject', '-issuer', '-dates', '-ext',
                        'subjectAltName,keyUsage,extendedKeyUsage'])
    print('  --- issued certificate ---')
    for line in out.strip().splitlines():
        print('    %s' % line.strip())

    # ---- 6. real TLS handshake test with the CA as the only trust anchor ----
    print()
    print('[6] live TLS handshake test (server trusts nothing but this CA)')
    ok = handshake_test(ca_pem, srv_crt, srv_key, host)
    print('    result: %s' % ('PASS - the chain verifies' if ok else 'FAIL'))

    print()
    print('  artifacts:')
    for n in ('ndc-ca.crt', 'ndc-ca.key', 'server.crt', 'server.key'):
        p = os.path.join(CA_DIR, n)
        print('    %-16s %s' % (n, ('%d B' % os.path.getsize(p)) if os.path.exists(p) else 'MISSING'))
    print()
    print('  >>> install %s on the device if it is not already trusted'
          % os.path.basename(ca_pem))
    print('      (Settings > Security > More security settings > Encryption &')
    print('       credentials > Install a certificate > CA certificate)')
    print('      then the proxy can serve %s.' % host)
    return 0 if ok else 1


def handshake_test(ca_pem, srv_crt, srv_key, host):
    """Start a one-shot TLS server and connect to it, verifying against ca_pem only."""
    ctx_s = ssl.SSLContext(ssl.PROTOCOL_TLS_SERVER)
    ctx_s.load_cert_chain(srv_crt, srv_key)
    ctx_s.set_ciphers('DEFAULT@SECLEVEL=1')

    import socket
    srv = socket.socket()
    srv.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    srv.bind(('127.0.0.1', 0))
    srv.listen(1)
    port = srv.getsockname()[1]
    result = {'ok': False, 'err': ''}

    def serve():
        try:
            raw, _ = srv.accept()
            tls = ctx_s.wrap_socket(raw, server_side=True)
            tls.recv(4096)
            tls.sendall(b'HTTP/1.1 200 OK\r\nContent-Length: 2\r\n\r\nok')
            tls.close()
        except Exception as e:
            result['err'] = 'server: %s' % e
        finally:
            srv.close()

    t = threading.Thread(target=serve)
    t.start()

    try:
        ctx_c = ssl.SSLContext(ssl.PROTOCOL_TLS_CLIENT)
        ctx_c.load_verify_locations(cafile=ca_pem)
        ctx_c.check_hostname = True
        ctx_c.verify_mode = ssl.CERT_REQUIRED
        ctx_c.set_ciphers('DEFAULT@SECLEVEL=1')
        with socket.create_connection(('127.0.0.1', port), timeout=10) as raw:
            with ctx_c.wrap_socket(raw, server_hostname=host) as tls:
                tls.sendall(b'GET / HTTP/1.0\r\nHost: %s\r\n\r\n' % host.encode())
                data = tls.recv(200)
                result['ok'] = data.startswith(b'HTTP/1.1 200')
                print('    peer cert subject: %s'
                      % (tls.getpeercert().get('subject')))
    except Exception as e:
        result['err'] = 'client: %s' % e
    t.join(timeout=10)
    if result['err']:
        print('    %s' % result['err'])
    return result['ok']


if __name__ == '__main__':
    sys.exit(main())
