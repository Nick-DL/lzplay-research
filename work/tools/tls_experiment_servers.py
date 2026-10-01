#!/usr/bin/env python3
"""
Controlled TLS experiment for the LZRevive proxy.

Three HTTPS servers on the PC, each with a different trust story, so the device can
tell us exactly what the app will accept.  All three present a certificate whose SAN
covers BOTH "api.trip-happy.com" and the PC's LAN IP, so hostname verification is never
the reason for a failure - only the trust chain is.

  18501  certificate signed by the NDC root the user installed   -> is a USER CA
  18502  self-signed certificate                                  -> trust anchor absent
  18444  (kept for compatibility with the older probe)

The NDC root is present in AndroidCAStore as "user:4325b699.0" but NOT among the 125
issuers the JSSE default TrustManager offers, and the app has no networkSecurityConfig
and targets SDK 29 - so the prediction is that 18501 also fails.  If it unexpectedly
succeeds, the whole proxy design becomes viable without root.
"""
import os
import socket
import ssl
import subprocess
import sys
import threading
import time

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
CA = os.path.join(BASE, 'work', 'ca')

SERVERS = [
    (18501, 'ndc-ca-signed', os.path.join(CA, 'server-ip.crt'), os.path.join(CA, 'server.key')),
    (18502, 'self-signed', os.path.join(CA, 'selfsigned-ip.crt'), os.path.join(CA, 'selfsigned-ip.key')),
]


def serve(port, label, crt, key):
    if not (os.path.exists(crt) and os.path.exists(key)):
        print('  [%s] MISSING cert/key, skipping' % label)
        return None
    ctx = ssl.SSLContext(ssl.PROTOCOL_TLS_SERVER)
    ctx.load_cert_chain(crt, key)
    try:
        srv = socket.socket()
        srv.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
        srv.bind(('0.0.0.0', port))
        srv.listen(16)
    except Exception as e:
        print('  [%s] bind :%d failed: %s' % (label, port, e))
        return None
    print('  [%-14s] https://0.0.0.0:%-5d  %s' % (label, port, os.path.basename(crt)))

    def loop():
        while True:
            try:
                raw, addr = srv.accept()
            except Exception:
                return
            threading.Thread(target=handle, args=(ctx, raw, addr, label), daemon=True).start()

    threading.Thread(target=loop, daemon=True).start()
    return srv


def handle(ctx, raw, addr, label):
    ts = time.strftime('%H:%M:%S')
    try:
        raw.settimeout(15)
        tls = ctx.wrap_socket(raw, server_side=True)
    except ssl.SSLError as e:
        print('  %s [%s] TLS FAILED from %s: %s' % (ts, label, addr[0], e))
        try:
            raw.close()
        except Exception:
            pass
        return
    except Exception as e:
        print('  %s [%s] error from %s: %s' % (ts, label, addr[0], e))
        return
    try:
        req = b''
        raw2 = tls
        raw2.settimeout(10)
        while b'\r\n\r\n' not in req and len(req) < 65536:
            chunk = raw2.recv(4096)
            if not chunk:
                break
            req += chunk
        first = req.split(b'\r\n')[0].decode('latin-1', 'replace')
        # pull the JSON body if there is one
        body = b''
        if b'\r\n\r\n' in req:
            body = req.split(b'\r\n\r\n', 1)[1]
        clen = 0
        for line in req.split(b'\r\n'):
            if line.lower().startswith(b'content-length:'):
                try:
                    clen = int(line.split(b':', 1)[1].strip())
                except Exception:
                    pass
        while len(body) < clen:
            chunk = raw2.recv(4096)
            if not chunk:
                break
            body += chunk
        print('  %s [%s] <-- %s  from %s' % (ts, label, first, addr[0]))
        if body:
            print('        body: %s' % body[:400].decode('utf-8', 'replace'))
        # reply with something clearly identifiable
        payload = ('{"probe":"%s","accepted":true}' % label).encode()
        raw2.sendall(b'HTTP/1.1 200 OK\r\n'
                     b'Content-Type: application/json\r\n'
                     b'Content-Length: ' + str(len(payload)).encode() + b'\r\n'
                     b'Connection: close\r\n\r\n' + payload)
    except Exception as e:
        print('  %s [%s] io error: %s' % (ts, label, e))
    finally:
        try:
            tls.close()
        except Exception:
            pass


def serve_plaintext(port):
    """
    Answer with a plaintext HTTP response on a port the client will treat as TLS.

    This is exactly what a naive VPN proxy does.  The point is to see HOW the client
    fails: an SSL protocol error means our bytes reached it and TLS rejected them, while
    a timeout would mean the proxy stayed silent.  Case D of ProxyFeasibilityProbe.
    """
    srv = socket.socket()
    srv.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    srv.bind(('0.0.0.0', port))
    srv.listen(16)
    print('  [%-14s] http-on-tls-port 0.0.0.0:%-5d  (no TLS)' % ('plaintext', port))

    def loop():
        while True:
            try:
                conn, addr = srv.accept()
            except Exception:
                return
            threading.Thread(target=handle_plain, args=(conn, addr), daemon=True).start()

    threading.Thread(target=loop, daemon=True).start()
    return srv


def handle_plain(conn, addr):
    ts = time.strftime('%H:%M:%S')
    try:
        conn.settimeout(10)
        data = conn.recv(1024)
        print('  %s [plaintext] <-- %d bytes from %s: %r'
              % (ts, len(data), addr[0], data[:40]))
        payload = b'{"probe":"plaintext","accepted":true}'
        conn.sendall(b'HTTP/1.1 200 OK\r\n'
                     b'Content-Type: application/json\r\n'
                     b'Content-Length: ' + str(len(payload)).encode() + b'\r\n'
                     b'Connection: close\r\n\r\n' + payload)
        print('  %s [plaintext] --> sent plaintext HTTP where a ServerHello belongs' % ts)
    except Exception as e:
        print('  %s [plaintext] error: %s' % (ts, e))
    finally:
        try:
            conn.close()
        except Exception:
            pass


def main():
    print('=' * 78)
    print('TLS TRUST EXPERIMENT SERVERS')
    print('=' * 78)
    for port, label, crt, key in SERVERS:
        serve(port, label, crt, key)
    serve_plaintext(18503)
    print()
    print('  prediction:')
    print('    18501 (NDC user CA)  -> FAIL  Trust anchor not found')
    print('    18502 (self-signed)  -> FAIL  Trust anchor not found')
    print('    18503 (plaintext)    -> FAIL  SSL protocol error, NOT a timeout')
    print('  if 18501 succeeds, the proxy works with no root.')
    print('  if 18503 gives an SSL error, our bytes reach the app and TLS is the wall.')
    print()
    print('  Ctrl-C to stop.')
    try:
        threading.Event().wait()
    except KeyboardInterrupt:
        pass
    return 0


if __name__ == '__main__':
    sys.exit(main())
