#!/usr/bin/env python3
"""
Replace the TcpStack class in ProxyVpnService.java with a clean implementation.

The incremental edits left it inconsistent (the response body moved from an in-memory
byte[] to an on-disk file, but several call sites still assumed the old shape).  This
rewrites the whole inner class in one go.

Usage: python tools/fix_tcpstack.py
"""
import io
import os
import re

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
P = os.path.join(BASE, 'work', 'revive', 'src', 'com', 'lzplay', 'revive',
                 'ProxyVpnService.java')

MARKER = '    static final class TcpStack {'

NEW = r'''    static final class TcpStack {

        private static final int FIN = 0x01, SYN = 0x02, RST = 0x04,
                PSH = 0x08, ACK = 0x10;
        /** 单个 TCP 段的最大载荷。TUN MTU 1500 减去 IP+TCP 头。 */
        private static final int MSS = 1400;

        private final Map<String, Conn> conns = new HashMap<String, Conn>();
        private int ipId = 1;

        void reset() {
            synchronized (conns) { conns.clear(); }
        }

        /**
         * 处理一个从 TUN 读到的 IP 包，返回需要写回 TUN 的响应包（或 null）。
         *
         * 只处理 TCP；只需要支持"一问一答的 HTTP GET"，所以刻意不做拥塞控制、
         * 不做重传定时器、不做窗口缩放 —— 面对的是本机到本机的路径，几乎不会丢包。
         */
        synchronized byte[] handlePacket(byte[] pkt, ProxyVpnService svc) {
            if (pkt.length < 20) return null;
            if (((pkt[0] >> 4) & 0xF) != 4) return null;
            int ihl = (pkt[0] & 0xF) * 4;
            if (pkt.length < ihl + 20) return null;
            if ((pkt[9] & 0xFF) != 6) return null;             // TCP only

            byte[] srcIp = Arrays.copyOfRange(pkt, 12, 16);
            byte[] dstIp = Arrays.copyOfRange(pkt, 16, 20);
            int srcPort = u16(pkt, ihl);
            int dstPort = u16(pkt, ihl + 2);
            long seq = u32(pkt, ihl + 4);
            long theirAck = u32(pkt, ihl + 8);
            int dataOff = ((pkt[ihl + 12] >> 4) & 0xF) * 4;
            int flags = pkt[ihl + 13] & 0xFF;
            int payloadLen = pkt.length - ihl - dataOff;
            if (payloadLen < 0) payloadLen = 0;

            String key = key(srcIp, srcPort, dstIp, dstPort);

            // ---------- SYN：三次握手第一步 ----------
            if ((flags & SYN) != 0 && (flags & ACK) == 0) {
                Conn c = new Conn();
                synchronized (conns) { conns.put(key, c); }
                ProxyVpnService.log("TCP 连接 " + ip(srcIp) + ":" + srcPort
                        + " -> " + ip(dstIp) + ":" + dstPort);
                return build(srcIp, srcPort, dstIp, dstPort,
                        c.serverNext, seq + 1, SYN | ACK, null);
            }

            Conn c;
            synchronized (conns) { c = conns.get(key); }
            if (c == null) {
                return build(srcIp, srcPort, dstIp, dstPort, 0, seq + payloadLen, RST | ACK, null);
            }

            if ((flags & RST) != 0) {
                synchronized (conns) { conns.remove(key); }
                return null;
            }

            long ackNo = seq + payloadLen;

            // ---------- FIN：对端关闭 ----------
            if ((flags & FIN) != 0) {
                synchronized (conns) { conns.remove(key); }
                return build(srcIp, srcPort, dstIp, dstPort,
                        c.serverNext, ackNo + 1, FIN | ACK, null);
            }

            // ---------- 收到请求数据 ----------
            if (payloadLen > 0) {
                byte[] data = Arrays.copyOfRange(pkt, ihl + dataOff, pkt.length);
                c.request.append(new String(data));
                if (!c.responded && c.request.indexOf("\r\n\r\n") >= 0) {
                    c.responded = true;
                    c.header = respond(c, c.request.toString(), svc);
                    c.offset = 0;
                    return nextChunk(c, srcIp, srcPort, dstIp, dstPort, ackNo);
                }
                return build(srcIp, srcPort, dstIp, dstPort, c.serverNext, ackNo, ACK, null);
            }

            // ---------- 纯 ACK ----------
            if (theirAck > c.serverNext) {
                c.offset += (int) (theirAck - c.serverNext);
                c.serverNext = theirAck;
            }
            if (c.responded && c.offset < c.bodyLength) {
                return nextChunk(c, srcIp, srcPort, dstIp, dstPort, ackNo);
            }
            if (c.responded && c.offset >= c.bodyLength && !c.finSent) {
                c.finSent = true;
                return build(srcIp, srcPort, dstIp, dstPort,
                        c.serverNext, ackNo, FIN | ACK, null);
            }
            return null;
        }

        /**
         * 切出下一段响应体并发出去。
         * 响应体 = c.header（内存里的 HTTP 头）+ c.bodyLength 字节的载荷，
         * 载荷优先从 c.bodyFile 读（APK 很大，不能整包进内存），
         * 也可以用 c.bodyBytes（404 之类的小包）。
         */
        private byte[] nextChunk(Conn c, byte[] dstIp, int dstPort,
                                 byte[] srcIp, int srcPort, long ackNo) {
            int headerLen = c.header.length;
            int n;
            byte[] payload;

            if (c.offset < headerLen) {
                n = Math.min(headerLen - c.offset, MSS);
                payload = Arrays.copyOfRange(c.header, c.offset, c.offset + n);
            } else {
                long bodyOff = c.offset - headerLen;
                long remaining = c.bodyLength - bodyOff;
                if (remaining <= 0) return null;
                n = (int) Math.min(remaining, MSS);
                payload = new byte[n];
                if (c.bodyFile != null) {
                    java.io.RandomAccessFile raf = null;
                    try {
                        raf = new java.io.RandomAccessFile(c.bodyFile, "r");
                        raf.seek(bodyOff);
                        raf.readFully(payload);
                    } catch (IOException e) {
                        ProxyVpnService.log("读取载荷失败: " + e.getMessage());
                        return null;
                    } finally {
                        if (raf != null) try { raf.close(); } catch (IOException ignored) { }
                    }
                } else {
                    System.arraycopy(c.bodyBytes, (int) bodyOff, payload, 0, n);
                }
            }

            long seqOut = c.serverNext;
            c.serverNext += n;
            c.offset += n;
            return build(dstIp, dstPort, srcIp, srcPort, seqOut, ackNo, ACK | PSH, payload);
        }

        /** 解析请求，设置 c 的响应体，返回 HTTP 头字节。 */
        private byte[] respond(Conn c, String req, ProxyVpnService svc) {
            String first = req.split("\r\n", 2)[0];
            String path = "/";
            try {
                String[] parts = first.split(" ");
                if (parts.length >= 2) path = parts[1];
            } catch (Exception ignored) { }

            ProxyVpnService.log("HTTP " + first);

            File f = pick(path, svc);
            if (f == null || !f.exists()) {
                byte[] msg = ("no payload for " + path).getBytes();
                c.bodyBytes = msg;
                c.bodyLength = msg.length;
                c.bodyFile = null;
                return header(404, "Not Found", "text/plain", msg.length);
            }

            ProxyVpnService.log("  -> " + f.getName() + "  " + f.length() + " 字节");
            c.bodyFile = f;
            c.bodyBytes = new byte[0];
            c.bodyLength = f.length();
            return header(200, "OK", "application/vnd.android.package-archive", f.length());
        }

        /**
         * 按请求路径挑一个预置包。
         *
         * 清单 URL 形如 /d_568628e0d993b1973adc718237da6e93_006.apk —— 文件名里的
         * hash 是厂商内部的，无法反推包名。所以：
         *   1) 文件名直接命中（我们自己分发时用包名当文件名）
         *   2) 路径里含包名
         *   3) 回落：按清单声明顺序返回下一个尚未分发过的包
         *      （清单里 number 1..5 的顺序就是 App 的安装顺序）
         */
        private File pick(String path, ProxyVpnService svc) {
            String file = path;
            int q = file.indexOf('?');
            if (q >= 0) file = file.substring(0, q);
            int s = file.lastIndexOf('/');
            if (s >= 0) file = file.substring(s + 1);

            File hit = svc.payloadFile(file);
            if (hit != null) return hit;

            for (String pkg : ProxyAssets.PKG_ORDER) {
                if (path.contains(pkg)) {
                    hit = svc.payloadFile(pkg);
                    if (hit != null) return hit;
                }
            }
            for (String pkg : ProxyAssets.PKG_ORDER) {
                if (!svc.served.contains(pkg)) {
                    svc.served.add(pkg);
                    ProxyVpnService.log("  (按清单顺序分配 -> " + pkg + ")");
                    return svc.payloadFile(pkg);
                }
            }
            return null;
        }

        private byte[] header(int code, String reason, String type, long len) {
            StringBuilder h = new StringBuilder();
            h.append("HTTP/1.1 ").append(code).append(' ').append(reason).append("\r\n");
            h.append("Content-Type: ").append(type).append("\r\n");
            h.append("Content-Length: ").append(len).append("\r\n");
            h.append("Connection: close\r\n");
            h.append("\r\n");
            return h.toString().getBytes();
        }

        // ---------------------------------------------------------- 组包

        private byte[] build(byte[] dstIp, int dstPort, byte[] srcIp, int srcPort,
                             long seq, long ack, int flags, byte[] payload) {
            int pl = payload == null ? 0 : payload.length;
            byte[] p = new byte[40 + pl];
            p[0] = 0x45;
            put16(p, 2, 40 + pl);                 // total length
            put16(p, 4, ipId++ & 0xFFFF);         // id
            put16(p, 6, 0x4000);                  // don't fragment
            p[8] = 64;                            // ttl
            p[9] = 6;                             // tcp
            System.arraycopy(dstIp, 0, p, 12, 4);
            System.arraycopy(srcIp, 0, p, 16, 4);
            put16(p, 10, csum(p, 0, 20));         // ip checksum

            int t = 20;
            put16(p, t, dstPort);
            put16(p, t + 2, srcPort);
            put32(p, t + 4, seq);
            put32(p, t + 8, ack);
            p[t + 12] = (byte) 0x50;              // data offset 5 words
            p[t + 13] = (byte) flags;
            put16(p, t + 14, 65535);              // window
            if (pl > 0) System.arraycopy(payload, 0, p, t + 20, pl);
            put16(p, t + 16, tcpCsum(p, dstIp, srcIp, t, 20 + pl));
            return p;
        }

        private int tcpCsum(byte[] p, byte[] dstIp, byte[] srcIp, int off, int len) {
            int sum = 0;
            for (int i = 0; i < 4; i += 2) {
                sum += ((dstIp[i] & 0xFF) << 8) | (dstIp[i + 1] & 0xFF);
                sum += ((srcIp[i] & 0xFF) << 8) | (srcIp[i + 1] & 0xFF);
            }
            sum += 6;                             // protocol
            sum += len;                           // tcp length
            for (int i = off; i < off + len; i += 2) {
                int hi = p[i] & 0xFF;
                int lo = (i + 1 < off + len) ? (p[i + 1] & 0xFF) : 0;
                sum += (hi << 8) | lo;
            }
            while ((sum >> 16) != 0) sum = (sum & 0xFFFF) + (sum >> 16);
            return (~sum) & 0xFFFF;
        }

        private int csum(byte[] p, int off, int len) {
            int sum = 0;
            for (int i = off; i < off + len; i += 2) {
                int hi = p[i] & 0xFF;
                int lo = (i + 1 < off + len) ? (p[i + 1] & 0xFF) : 0;
                sum += (hi << 8) | lo;
            }
            while ((sum >> 16) != 0) sum = (sum & 0xFFFF) + (sum >> 16);
            return (~sum) & 0xFFFF;
        }

        private static void put16(byte[] b, int o, int v) {
            b[o] = (byte) ((v >> 8) & 0xFF);
            b[o + 1] = (byte) (v & 0xFF);
        }

        private static void put32(byte[] b, int o, long v) {
            b[o] = (byte) ((v >> 24) & 0xFF);
            b[o + 1] = (byte) ((v >> 16) & 0xFF);
            b[o + 2] = (byte) ((v >> 8) & 0xFF);
            b[o + 3] = (byte) (v & 0xFF);
        }

        private static int u16(byte[] b, int o) {
            return ((b[o] & 0xFF) << 8) | (b[o + 1] & 0xFF);
        }

        private static long u32(byte[] b, int o) {
            return ((long) (b[o] & 0xFF) << 24) | ((b[o + 1] & 0xFF) << 16)
                    | ((b[o + 2] & 0xFF) << 8) | (b[o + 3] & 0xFF);
        }

        private static String key(byte[] a, int ap, byte[] b, int bp) {
            return ip(a) + ":" + ap + "|" + ip(b) + ":" + bp;
        }

        private static String ip(byte[] a) {
            return (a[0] & 0xFF) + "." + (a[1] & 0xFF) + "." + (a[2] & 0xFF) + "." + (a[3] & 0xFF);
        }

        /** 一条 TCP 连接的状态。 */
        static final class Conn {
            long serverNext = 0x40000000L + (System.nanoTime() & 0xFFFF);
            boolean responded;
            boolean finSent;
            /** 已经从【头部+载荷】整个响应里发出去多少字节。 */
            int offset;
            byte[] header = new byte[0];
            byte[] bodyBytes = new byte[0];
            File bodyFile;
            long bodyLength;
            final StringBuilder request = new StringBuilder();
        }
    }
}
'''


def main():
    src = io.open(P, encoding='utf-8').read()
    i = src.find(MARKER)
    if i < 0:
        raise SystemExit('marker not found: %r' % MARKER)

    out = src[:i] + NEW
    io.open(P, 'w', encoding='utf-8', newline='\n').write(out)
    print('rewrote TcpStack: %d bytes -> %d bytes' % (len(src), len(out)))

    # quick sanity checks
    for probe in ('handlePacket(byte[] pkt, ProxyVpnService svc) {',
                  'nextChunk(c, srcIp, srcPort, dstIp, dstPort, ackNo)',
                  'class Conn {',
                  'private byte[] header(int code'):
        print('  %-58s %s' % (probe[:56], 'OK' if probe in out else 'MISSING'))

    # stale references from the incremental edits must be gone
    for stale in ('stack.handlePacket(Arrays.copyOf(buf, n), this, out)',
                  'c.response', 'c.sent',
                  'payloads.get', 'payloads.clear', 'payloads.put'):
        if stale in out:
            print('  STALE REFERENCE STILL PRESENT: %s' % stale)


if __name__ == '__main__':
    main()
