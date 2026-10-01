package com.lzplay.revive;

import android.content.Context;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * 预置的原版 GMS 包清单 + 从 assets 复制到设备。
 *
 * 为什么可以内置这些文件：
 *   我们从两个姊妹 App 的 assets 里解密出了它们**期望安装的包清单**，
 *   并且验证了清单里的 fileMd5 与我们手里的 APK **逐字节一致**：
 *
 *     Xpp_Q.json（旅游必备, SDK>=29）
 *       com.google.android.gms                    200615030  29c0b6feb1ad1b514687b8b733644f55  MATCH
 *       com.google.android.gsf                    29         95a3c04f3fa1bef6ed41d749ab507966  MATCH
 *       com.google.android.syncadapters.contacts  29         8f3de57a7040586b0e72a63e5a7edfb8  MATCH
 *       com.oversea.gmapjar                       1          3dd591e51f95faed12950f5df5152996  MATCH
 *       com.android.vending                       81881600   9ed188488b8c6745f892fdb931419ee6  MATCH
 *
 *   也就是说：我们内置的就是厂商指定的那一套原版包，用户不再需要自己去搜集。
 *   签名核对也一致（Google 官方签名 cde9f6208d672b54b1dacc0b7029f5eb）。
 *
 * 这些 apk 放在 assets/gms/ 下，由构建脚本从 work/gms29/ 复制进来。
 */
public final class ProxyAssets {

    private ProxyAssets() { }

    public static final String ASSET_DIR = "gms";

    /** 厂商清单里的包（顺序即 lzplay / 两个姊妹 App 的安装顺序 number 1..5）。 */
    public static final String[] PKG_ORDER = {
            "com.google.android.gms",
            "com.google.android.gsf",
            "com.google.android.syncadapters.contacts",
            "com.oversea.gmapjar",
            "com.android.vending",
    };

    /** assets 里的文件名 -> 期望的 md5（来自解密出的清单）。 */
    public static final Map<String, String> ASSETS = new LinkedHashMap<String, String>();

    static {
        ASSETS.put("com.google.android.gms.apk",
                "29c0b6feb1ad1b514687b8b733644f55");
        ASSETS.put("com.google.android.gsf.apk",
                "95a3c04f3fa1bef6ed41d749ab507966");
        ASSETS.put("com.google.android.syncadapters.contacts.apk",
                "8f3de57a7040586b0e72a63e5a7edfb8");
        ASSETS.put("com.oversea.gmapjar.apk",
                "3dd591e51f95faed12950f5df5152996");
        ASSETS.put("com.android.vending.apk",
                "9ed188488b8c6745f892fdb931419ee6");
    }

    /** 被劫持的下载域名（都来自两个 App 的内置清单，均已下线）。 */
    public static final String[] HIJACK_HOSTS = {
            "cdn.trip-happy.com",
            "cdn-trip-happy.sg.ufileos.com",
            "cdn.chat-kingdom.com",
            // 更新检查接口（也是死的，但拦截它不是必须的）
            "api.trip-happy.com",
            "api.chat-kingdom.com",
    };

    public static List<String> listAssets(Context ctx) {
        List<String> out = new ArrayList<String>();
        try {
            String[] names = ctx.getAssets().list(ASSET_DIR);
            if (names != null) {
                for (String n : names) out.add(n);
            }
        } catch (IOException e) {
            // ignore
        }
        return out;
    }

    public static void list(Context ctx, LzLog log) {
        log.section("预置 GMS 包（assets/" + ASSET_DIR + "）");
        List<String> got = listAssets(ctx);
        log.kv("assets 里的文件数", String.valueOf(got.size()));
        for (Map.Entry<String, String> e : ASSETS.entrySet()) {
            boolean present = got.contains(e.getKey());
            log.get().add(String.format("  %-46s %s  期望md5=%s",
                    e.getKey(), present ? "存在" : "缺失", e.getValue()));
        }
        log.get().add("");
        log.get().add("  被拦截的域名：");
        for (String h : HIJACK_HOSTS) log.get().add("    " + h);
    }

    /** 把某个 asset 复制到目标文件，并返回其 md5（失败返回 null）。 */
    public static String copyAsset(Context ctx, String name, File dst) {
        InputStream in = null;
        OutputStream out = null;
        try {
            in = new BufferedInputStream(ctx.getAssets().open(ASSET_DIR + "/" + name));
            File parent = dst.getParentFile();
            if (parent != null && !parent.exists()) parent.mkdirs();
            out = new FileOutputStream(dst);
            byte[] buf = new byte[1 << 16];
            MessageDigest md5 = MessageDigest.getInstance("MD5");
            int n;
            while ((n = in.read(buf)) > 0) {
                out.write(buf, 0, n);
                md5.update(buf, 0, n);
            }
            out.flush();
            return hex(md5.digest());
        } catch (Throwable t) {
            return null;
        } finally {
            close(in);
            close(out);
        }
    }

    /**
     * 把内置的原版包解到外部目录，供用户手动安装（或供 VPN 代理读取）。
     * 输出到 <external-files>/payload/
     */
    public static File payloadDir(Context ctx) {
        File d = new File(ctx.getExternalFilesDir(null), "payload");
        if (!d.exists()) d.mkdirs();
        return d;
    }

    public static void pushToDevice(Context ctx, LzLog log) {
        log.section("释放预置 GMS 包到设备");
        File dir = payloadDir(ctx);
        log.kv("输出目录", dir.getAbsolutePath());
        int ok = 0, bad = 0;
        for (Map.Entry<String, String> e : ASSETS.entrySet()) {
            File dst = new File(dir, e.getKey());
            String got = copyAsset(ctx, e.getKey(), dst);
            if (got == null) {
                log.get().add("  ❌ " + e.getKey() + "  复制失败");
                bad++;
            } else if (!got.equalsIgnoreCase(e.getValue())) {
                log.get().add("  ⚠️ " + e.getKey() + "  md5 不符！期望 "
                        + e.getValue() + " 实得 " + got);
                bad++;
            } else {
                log.get().add(String.format("  ✅ %-46s %d 字节  md5 匹配",
                        e.getKey(), dst.length()));
                ok++;
            }
        }
        log.get().add("");
        log.kv("结果", ok + " 成功 / " + bad + " 失败");
        if (ok > 0) {
            log.get().add("  下一步：用「安装 GMS 包」按钮，或");
            log.get().add("    adb install " + dir.getAbsolutePath() + "/*.apk");
        }
    }

    private static String hex(byte[] b) {
        StringBuilder sb = new StringBuilder(b.length * 2);
        for (byte x : b) {
            String s = Integer.toString(x & 0xFF, 16);
            if (s.length() == 1) sb.append('0');
            sb.append(s);
        }
        return sb.toString();
    }

    private static void close(java.io.Closeable c) {
        if (c != null) {
            try { c.close(); } catch (IOException ignored) { }
        }
    }
}
