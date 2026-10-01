package com.lzplay.revive;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.VpnService;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.Log;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * VPN 代理：把两个已失效 CDN 域名的 HTTP 请求劫持到本地，返回预置的原版 GMS 包。
 *
 * 为什么需要这一步：
 *   App 的内置清单（assets/Xpp_Q.json）里，下载地址是
 *     http://cdn.trip-happy.com/d_xxx_006.apk
 *   这些 CDN 早已下线。而清单文件本身、以及我们要分发的 APK 都在本地，
 *   所以只需要让 App 拿到正确的字节流即可 —— 不必让它真的联网下载。
 *
 * 实现方式：
 *   VpnService 把流向 CDN 解析出的 IP 的流量收进 TUN，我们在用户态实现一个
 *   最小 IPv4 + TCP 栈来应答（只需要处理 HTTP GET 的一问一答）。
 *   这在概念上等同于"本地 HTTP 服务器"，但不需要 root、不占用回环端口，
 *   也不依赖任何域名解析。
 *
 * 与 Google 的 /android/uncertified 无关 —— 那个接口是活的，不在拦截范围内。
 */
public class ProxyVpnService extends VpnService {

    private static final String TAG = "LZProxy";
    private static final String CHANNEL = "lzproxy";
    private static final int NOTIF_ID = 0x5250;

    // 给 TUN 分配的私有地址；我们把目标域名解析到这个地址上，
    // 于是 App 发往 CDN 的连接会被路由进 TUN。
    private static final String VPN_ADDR = "10.71.0.2";
    private static final int VPN_PREFIX = 32;

    private static volatile boolean running = false;
    private static ProxyVpnService instance;

    private ParcelFileDescriptor tun;
    private Thread pump;
    /** 包名或文件名 -> 磁盘上的预置 APK。不把内容读进内存。 */
    private final Map<String, File> files = new ConcurrentHashMap<String, File>();
    /** 已经分发过的包（用于按声明顺序回落分配）。 */
    final java.util.Set<String> served = java.util.Collections.newSetFromMap(
            new ConcurrentHashMap<String, Boolean>());
    private final TcpStack stack = new TcpStack();

    public static boolean isRunning() {
        return running;
    }

    public static void start(Context ctx) {
        Intent i = new Intent(ctx, ProxyVpnService.class);
        i.setAction("com.lzplay.revive.PROXY_START");
        if (Build.VERSION.SDK_INT >= 26) ctx.startForegroundService(i);
        else ctx.startService(i);
    }

    public static void stop(Context ctx) {
        Intent i = new Intent(ctx, ProxyVpnService.class);
        i.setAction("com.lzplay.revive.PROXY_STOP");
        ctx.startService(i);
    }

    static void log(String s) {
        Log.i(TAG, s);
        ProxyVpnService inst = instance;
        if (inst != null) inst.appendLog(s);
    }

    private final StringBuilder logBuf = new StringBuilder();

    private void appendLog(String s) {
        synchronized (logBuf) {
            logBuf.append(s).append('\n');
            if (logBuf.length() > 40000) logBuf.delete(0, logBuf.length() - 30000);
        }
    }

    public String getLog() {
        synchronized (logBuf) {
            return logBuf.toString();
        }
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        instance = this;
        String action = intent == null ? null : intent.getAction();
        if ("com.lzplay.revive.PROXY_STOP".equals(action)) {
            teardown();
            stopSelf();
            return START_NOT_STICKY;
        }
        startForeground(NOTIF_ID, buildNotification());
        if (!running) {
            try {
                loadPayloads();
                establish();
            } catch (Throwable t) {
                log("启动失败: " + t);
                teardown();
                stopSelf();
            }
        }
        return START_STICKY;
    }

    @Override
    public void onRevoke() {
        log("VPN 授权被撤销");
        teardown();
        super.onRevoke();
    }

    @Override
    public void onDestroy() {
        teardown();
        super.onDestroy();
    }

    // ------------------------------------------------------------------ 建立

    private void establish() throws Exception {
        Builder b = new Builder();
        b.setSession("LZRevive GMS 代理");
        b.addAddress(VPN_ADDR, VPN_PREFIX);
        b.addDnsServer("8.8.8.8");

        // 只把"目标域名解析出的地址"路由进 TUN，其余流量照常走系统网络。
        // 清单里的 CDN 都已经不能解析了，所以这里用固定地址：我们在自己的
        // DNS 层把它们映射到 VPN_ADDR，因此 App 连的就是 VPN_ADDR。
        b.addRoute(VPN_ADDR, VPN_PREFIX);

        // 让 App 自己（以及必要的系统组件）绕过 VPN，避免把我们的流量也劫持
        try {
            b.addDisallowedApplication(getPackageName());
        } catch (Exception ignored) {
            // 某些 ROM 不支持，忽略
        }

        if (Build.VERSION.SDK_INT >= 29) {
            b.setMetered(false);
        }
        b.setBlocking(true);

        tun = b.establish();
        if (tun == null) throw new IOException("establish() 返回 null（用户未授权？）");

        running = true;
        log("✅ 代理已启动");
        log("   TUN 地址   : " + VPN_ADDR + "/" + VPN_PREFIX);
        log("   拦截域名   : " + Arrays.toString(ProxyAssets.HIJACK_HOSTS));

        pump = new Thread(new Runnable() {
            @Override
            public void run() {
                loop();
            }
        }, "lzproxy-pump");
        pump.start();
    }

    private void teardown() {
        running = false;
        stack.reset();
        if (tun != null) {
            try { tun.close(); } catch (IOException ignored) { }
            tun = null;
        }
        if (pump != null) {
            pump.interrupt();
            pump = null;
        }
        log("代理已停止");
    }

    // ------------------------------------------------------------------ 载荷

    /**
     * 把内置的原版 APK 读进内存。
     * 这些文件来自厂商清单（md5 已核对），所以直接按文件名索引即可。
     */
    private void loadPayloads() {
        // APK 体积很大（合计约 120 MB），不能整包读进内存。
        // 首次运行时把 assets 释放到外部目录，之后按需从磁盘读段。
        File dir = ProxyAssets.payloadDir(this);
        int ok = 0;
        for (Map.Entry<String, String> e : ProxyAssets.ASSETS.entrySet()) {
            File f = new File(dir, e.getKey());
            if (!f.exists() || f.length() == 0) {
                String md5 = ProxyAssets.copyAsset(this, e.getKey(), f);
                if (md5 == null) {
                    log("  ⚠️ 释放失败 " + e.getKey());
                    continue;
                }
                if (!md5.equalsIgnoreCase(e.getValue())) {
                    log("  ⚠️ " + e.getKey() + " md5 不符（期望 " + e.getValue()
                            + " 实得 " + md5 + "），仍会使用");
                }
            }
            String pkg = e.getKey().endsWith(".apk")
                    ? e.getKey().substring(0, e.getKey().length() - 4) : e.getKey();
            files.put(pkg, f);
            files.put(e.getKey(), f);
            ok++;
        }
        log("   预置包目录 : " + dir.getAbsolutePath());
        log("   就绪文件数 : " + ok + "/" + ProxyAssets.ASSETS.size());
        for (Map.Entry<String, File> e : files.entrySet()) {
            if (e.getKey().equals(e.getValue().getName())) continue;
            log(String.format("     %-46s %d 字节", e.getKey(), e.getValue().length()));
        }
    }

    /** 按索引取一个载荷文件；找不到返回 null。 */
    File payloadFile(String name) {
        return files.get(name);
    }

    // ------------------------------------------------------------------ 主循环

    private void loop() {
        byte[] buf = new byte[32768];
        FileInputStream in = new FileInputStream(tun.getFileDescriptor());
        FileOutputStream out = new FileOutputStream(tun.getFileDescriptor());
        while (running && !Thread.currentThread().isInterrupted()) {
            int n;
            try {
                n = in.read(buf);
            } catch (IOException e) {
                if (running) log("TUN 读取结束: " + e.getMessage());
                break;
            }
            if (n <= 0) continue;
            try {
                byte[] resp = stack.handlePacket(Arrays.copyOf(buf, n), this);
                if (resp != null && resp.length > 0) {
                    out.write(resp);
                    out.flush();
                }
            } catch (Throwable t) {
                log("处理包异常: " + t);
            }
        }
    }

    // ------------------------------------------------------------------ 通知

    private Notification buildNotification() {
        NotificationManager nm = (NotificationManager) getSystemService(NOTIFICATION_SERVICE);
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel ch = new NotificationChannel(CHANNEL, "GMS 代理",
                    NotificationManager.IMPORTANCE_LOW);
            nm.createNotificationChannel(ch);
        }
        Intent open = new Intent(this, MainActivity.class);
        int fl = Build.VERSION.SDK_INT >= 23 ? PendingIntent.FLAG_IMMUTABLE : 0;
        PendingIntent pi = PendingIntent.getActivity(this, 0, open, fl);

        Notification.Builder b = Build.VERSION.SDK_INT >= 26
                ? new Notification.Builder(this, CHANNEL)
                : new Notification.Builder(this);
        return b.setContentTitle("LZRevive 代理运行中")
                .setContentText("正在把已失效 CDN 的下载请求重定向到本地预置包")
                .setSmallIcon(android.R.drawable.stat_sys_download_done)
                .setContentIntent(pi)
                .setOngoing(true)
                .build();
    }

    // ==================================================================
    //  最小 IPv4 + TCP 栈
    // ==================================================================

    /**
     * 只需要处理一种流量：App 向 CDN 发起 HTTP GET，我们回一个 200 + 文件体。
     * 因此这是一个"够用就好的"实现，不追求完整的 TCP 语义（不做拥塞控制、
     * 不做窗口缩放、不做重传定时器）—— 因为它面对的是同一台机器上的回环式
     * 通信，丢包几乎不会发生。
     */
    static final class TcpStack {

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
