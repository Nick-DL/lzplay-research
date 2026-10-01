package com.lzplay.revive;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

/**
 * Probe the two network checks that 旅游必备 (com.qiyecomm) performs at startup, so we
 * can tell which one is failing on HarmonyOS 4.2 / Android 12.
 *
 * The app's chain is:
 *
 *   HttpUtil.a(Context)                      // com/x/plus/pro/f/d.a
 *       if (!NetworkUtil.a(ctx)) return false;        // <-- GATE, no network I/O
 *       retry 2x:
 *           GET https://www.google.com            // 15 s connect + 15 s read
 *           return true if responseCode in [100, 400)
 *
 *   NetworkUtil.a(Context)                   // com/x/plus/pro/f/h.a
 *       NetworkInfo[] all = cm.getAllNetworkInfo();
 *       if (all != null) for (...) if (ni.isConnected()) return true;
 *       return false;
 *
 * getAllNetworkInfo() is deprecated since API 29 and is documented to return null
 * there, which would make the gate fail instantly - and would explain why a packet
 * capture shows NO request to google.com at all.  NetworkUtil.b(Context) additionally
 * uses the deprecated getNetworkInfo(TYPE_WIFI), which on modern Android returns the
 * *default* network's info relabelled as WIFI.
 *
 * This probe answers, with measurements rather than assumptions:
 *   1. does getAllNetworkInfo() return null here?
 *   2. what does getNetworkInfo(TYPE_WIFI) actually report?
 *   3. which network is the default, and does it expose INTERNET?
 *   4. what does the real GET https://www.google.com do, and how long does it take?
 *   5. what would the app's own logic have concluded?
 *
 * The timing in (4) matters: the app shows its dialog ~8 s after launch, which is far
 * too quick for 2 x 15 s of timeouts, so something must be short-circuiting.
 */
public final class NetProbe {

    private NetProbe() { }

    public static void run(final Context ctx) {
        final LzLog log = LzLog.get();
        log.section("NET PROBE (旅游必备 startup network gate)");

        // ---- 1. getAllNetworkInfo() ------------------------------------------
        ConnectivityManager cm =
                (ConnectivityManager) ctx.getSystemService(Context.CONNECTIVITY_SERVICE);
        log.kv("ConnectivityManager", cm == null ? "NULL" : "ok");

        if (cm != null) {
            try {
                NetworkInfo[] all = cm.getAllNetworkInfo();
                if (all == null) {
                    log.kv("getAllNetworkInfo()", "*** NULL ***  <- gate returns false instantly");
                } else {
                    log.kv("getAllNetworkInfo()", "length=" + all.length);
                    for (int i = 0; i < all.length; i++) {
                        NetworkInfo ni = all[i];
                        if (ni == null) {
                            log.get().add("      [" + i + "] null");
                            continue;
                        }
                        log.get().add("      [" + i + "] type=" + ni.getType()
                                + " typeName=" + ni.getTypeName()
                                + " state=" + ni.getState()
                                + " connected=" + ni.isConnected()
                                + " detailed=" + ni.getDetailedState());
                    }
                }
            } catch (Throwable t) {
                log.kv("getAllNetworkInfo() THREW", t);
            }

            // ---- 2. getNetworkInfo(TYPE_WIFI) --------------------------------
            try {
                NetworkInfo wifi = cm.getNetworkInfo(ConnectivityManager.TYPE_WIFI);
                if (wifi == null) {
                    log.kv("getNetworkInfo(TYPE_WIFI)", "*** NULL ***");
                } else {
                    log.kv("getNetworkInfo(TYPE_WIFI)",
                            "type=" + wifi.getType()
                                    + " typeName=" + wifi.getTypeName()
                                    + " state=" + wifi.getState()
                                    + " connected=" + wifi.isConnected()
                                    + " detailed=" + wifi.getDetailedState());
                    log.get().add("      -> the app's NetworkUtil.b() would return "
                            + wifi.isConnected());
                }
            } catch (Throwable t) {
                log.kv("getNetworkInfo(TYPE_WIFI) THREW", t);
            }

            try {
                NetworkInfo mob = cm.getNetworkInfo(ConnectivityManager.TYPE_MOBILE);
                log.kv("getNetworkInfo(TYPE_MOBILE)",
                        mob == null ? "NULL"
                                : ("typeName=" + mob.getTypeName()
                                        + " connected=" + mob.isConnected()));
            } catch (Throwable t) {
                log.kv("getNetworkInfo(TYPE_MOBILE) THREW", t);
            }

            // ---- 2b. active network info (what the deprecated call delegates to)
            try {
                NetworkInfo act = cm.getActiveNetworkInfo();
                log.kv("getActiveNetworkInfo()",
                        act == null ? "NULL"
                                : ("type=" + act.getType()
                                        + " typeName=" + act.getTypeName()
                                        + " connected=" + act.isConnected()));
            } catch (Throwable t) {
                log.kv("getActiveNetworkInfo() THREW", t);
            }

            // ---- 3. modern API: default network + capabilities ----------------
            try {
                Network n = cm.getActiveNetwork();
                log.kv("getActiveNetwork()", n == null ? "NULL" : n.toString());
                if (n != null) {
                    NetworkCapabilities nc = cm.getNetworkCapabilities(n);
                    if (nc == null) {
                        log.kv("NetworkCapabilities", "NULL");
                    } else {
                        log.get().add("      transports: "
                                + (nc.hasTransport(NetworkCapabilities.TRANSPORT_WIFI) ? "WIFI " : "")
                                + (nc.hasTransport(NetworkCapabilities.TRANSPORT_CELLULAR) ? "CELLULAR " : "")
                                + (nc.hasTransport(NetworkCapabilities.TRANSPORT_VPN) ? "VPN " : "")
                                + (nc.hasTransport(NetworkCapabilities.TRANSPORT_ETHERNET) ? "ETHERNET " : ""));
                        log.get().add("      INTERNET=" + nc.hasCapability(
                                NetworkCapabilities.NET_CAPABILITY_INTERNET)
                                + " VALIDATED=" + nc.hasCapability(
                                NetworkCapabilities.NET_CAPABILITY_VALIDATED)
                                + " NOT_RESTRICTED=" + nc.hasCapability(
                                NetworkCapabilities.NET_CAPABILITY_NOT_RESTRICTED));
                    }
                }
                Network[] allNets = cm.getAllNetworks();
                log.kv("getAllNetworks()", allNets == null ? "NULL"
                        : (allNets.length + " networks"));
            } catch (Throwable t) {
                log.kv("modern network API THREW", t);
            }
        }

        // ---- 4. the real HTTP check, exactly like the app does ---------------
        log.section("HTTP CHECK  GET https://www.google.com  (2 attempts, like the app)");
        // run off the UI thread
        new Thread(new Runnable() {
            @Override public void run() {
                LzLog l = LzLog.get();
                long t0 = System.currentTimeMillis();
                boolean ok = false;
                String verdictDetail = "";
                for (int attempt = 2; attempt > 0 && !ok; attempt--) {
                    long a0 = System.currentTimeMillis();
                    try {
                        URL u = new URL("https://www.google.com");
                        HttpURLConnection c = (HttpURLConnection) u.openConnection();
                        c.setRequestMethod("GET");
                        c.setUseCaches(false);
                        c.setInstanceFollowRedirects(true);
                        c.setConnectTimeout(15000);
                        c.setReadTimeout(15000);
                        c.connect();
                        BufferedReader r = new BufferedReader(new InputStreamReader(c.getInputStream()));
                        r.readLine();
                        int code = c.getResponseCode();
                        long dt = System.currentTimeMillis() - a0;
                        l.get().add("  attempt: code=" + code + "  in " + dt + " ms");
                        ok = (code >= 100 && code < 400);
                        verdictDetail = "code=" + code;
                        r.close();
                        c.disconnect();
                    } catch (Throwable t) {
                        long dt = System.currentTimeMillis() - a0;
                        Throwable cause = t.getCause() != null ? t.getCause() : t;
                        l.get().add("  attempt FAILED in " + dt + " ms: "
                                + cause.getClass().getName() + ": " + cause.getMessage());
                        verdictDetail = cause.getClass().getSimpleName();
                    }
                }
                long total = System.currentTimeMillis() - t0;
                l.get().add("");
                l.kv("HttpUtil.a() would return", ok);
                l.kv("total time", total + " ms");
                l.kv("detail", verdictDetail);
                l.get().add("");
                l.get().add("  INTERPRETATION:");
                l.get().add("    gate fail (getAllNetworkInfo null) -> NO google request at all");
                l.get().add("    gate passes + HTTP ok              -> app should proceed");
                l.get().add("    gate passes + HTTP fails           -> google unreachable from app");
                l.get().add("    total ~<2 s  => gate short-circuited (no I/O happened)");
                l.get().add("    total ~>4 s  => the HTTP attempts really ran");

                // Persist immediately: the on-screen report is only written at onCreate,
                // which happens long before these results exist.
                try {
                    java.io.File dir = ctx.getExternalFilesDir(null);
                    if (dir == null) dir = ctx.getFilesDir();
                    java.io.File f = new java.io.File(dir, "lzrevive-net.txt");
                    java.io.FileOutputStream fos = new java.io.FileOutputStream(f);
                    fos.write(l.stamped().getBytes("UTF-8"));
                    fos.close();
                    l.get().add("  (written to " + f.getAbsolutePath() + ")");
                } catch (Throwable t) {
                    l.get().add("  (could not write net report: " + t + ")");
                }
            }
        }, "netprobe-http").start();
    }
}
