#!/usr/bin/env python3
"""
Two HTTPS servers so the device can tell us whether the NDC root CA is trusted.

  port 18443  certificate signed by NDC CA      -> proves the CA is installed
  port 18444  self-signed certificate           -> control: must FAIL on a device
                                                   that validates certificates

If 18443 succeeds and 18444 fails, the device trusts the NDC root, and the app -
which has no cert-relaxing code, no networkSecurityConfig and targetSdk 29 - will
therefore accept the proxy's certificate for api.trip-happy.com.
"""
import os
import socket
import ssl
import subprocess
import sys
import threading

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
CA = os.path.join(BASE, 'work', 'ca')
OPENSSL = r'D:\Program Files\Git\usr\bin\openssl.exe'
PORT_NDC = 18443
PORT_SELF = 18444
HOST = 'api.trip-happy.com'


def make_selfsigned():
    crt = os.path.join(CA, 'control-selfsigned.crt')
    key = os.path.join(CA, 'control-selfsigned.key')
    if not (os.path.exists(crt) and os.path.exists(key)):
        print('[setup] generating a self-signed control certificate')
        subprocess.run([OPENSSL, 'req', '-x509', '-newkey', 'rsa:2048', '-nodes',
                        '-keyout', key, '-out', crt, '-days', '3650',
                        '-subj', '/CN=%s' % HOST],
                       capture_output=True, text=True)
    return crt, key


def serve(port, crt, key, label):
    ctx = ssl.SSLContext(ssl.PROTOCOL_TLS_SERVER)
    ctx.load_cert_chain(crt, key)
    srv = socket.socket()
    srv.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    srv.bind(('0.0.0.0', port))
    srv.listen(8)
    print('  [%s] https://0.0.0.0:%d  cert=%s' % (label, port, os.path.basename(crt)))

    def loop():
        while True:
            try:
                raw, addr = srv.accept()
            except Exception:
                return
            try:
                tls = ctx.wrap_socket(raw, server_side=True)
                try:
                    req = tls.recv(8192)
                    first = req.split(b'\r\n')[0].decode('latin-1', 'replace')
                    print('    [%s] <-- %s  from %s' % (label, first, addr[0]))
                    body = b'{"ok":true,"server":"%s"}' % label.encode()
                    tls.sendall(b'HTTP/1.1 200 OK\r\n'
                                b'Content-Type: application/json\r\n'
                                b'Content-Length: ' + str(len(body)).encode() + b'\r\n'
                                b'Connection: close\r\n\r\n' + body)
                finally:
                    try:
                        tls.close()
                    except Exception:
                        pass
            except ssl.SSLError as e:
                print('    [%s] TLS handshake FAILED from %s: %s' % (label, addr[0], e))
            except Exception as e:
                print('    [%s] error: %s' % (label, e))

    t = threading.Thread(target=loop)
    t.daemon = True
    t.start()
    return srv


def main():
    self_crt, self_key = make_selfsigned()
    ndc_crt = os.path.join(CA, 'server.crt')
    ndc_key = os.path.join(CA, 'server.key')

    for p in (ndc_crt, ndc_key):
        if not os.path.exists(p):
            print('missing %s - run make_server_cert.py first' % p)
            return 1

    print('=' * 78)
    print('TLS TRUST PROBE SERVERS')
    print('=' * 78)
    serve(PORT_NDC, ndc_crt, ndc_key, 'NDC-signed')
    serve(PORT_SELF, self_crt, self_key, 'self-signed')
    print()
    print('  From the device, a Java client should:')
    print('    https://<pc>:%d/  ->  SUCCESS   (NDC root is trusted)' % PORT_NDC)
    print('    https://<pc>:%d/  ->  FAIL      (untrusted) ' % PORT_SELF)
    print()
    print('  Ctrl-C to stop.')
    try:
        threading.Event().wait()
    except KeyboardInterrupt:
        pass
    return 0


if __name__ == '__main__':
    sys.exit(main())
