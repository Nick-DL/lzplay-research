package com.lzplay.revive;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;

import javax.net.ssl.HttpsURLConnection;

/**
 * Ask the device itself whether it trusts the NDC root CA.
 *
 * Two servers are run on the PC:
 *   port 18443  certificate signed by the NDC CA      -> should SUCCEED if trusted
 *   port 18444  self-signed certificate               -> should FAIL on any device
 *                                                        that actually validates
 *
 * Why this matters: 旅游必备 talks to https://api.trip-happy.com over TLS, and it
 * contains no TrustManager/HostnameVerifier overrides at all, has no
 * networkSecurityConfig and targets SDK 29 - so it uses the platform trust store,
 * which honours user-installed CAs.  If the NDC root is already present on the device
 * we can serve the forged response without asking the user to install anything.
 *
 * The probe runs entirely on background threads; results land in the LzLog report.
 */
public final class TlsProbe {

    /** Set this to the PC's LAN address before running. */
    public static volatile String host = "10.95.226.159";

    private TlsProbe() { }

    public static void run(final android.content.Context ctx) {
        final LzLog log = LzLog.get();
        log.section("TLS TRUST PROBE (is the NDC root CA installed?)");
        log.kv("target host", host);

        new Thread(new Runnable() {
            @Override public void run() {
                LzLog l = LzLog.get();
                boolean ndcOk = attempt(l, 18443, "NDC-signed");
                boolean selfOk = attempt(l, 18444, "self-signed");
                l.get().add("");
                l.kv("NDC-signed reachable", ndcOk);
                l.kv("self-signed reachable", selfOk);
                l.get().add("");
                if (ndcOk && !selfOk) {
                    l.kv("VERDICT", "NDC root IS trusted -> no cert install needed");
                } else if (ndcOk && selfOk) {
                    l.kv("VERDICT", "both accepted - something is bypassing validation");
                } else if (!ndcOk && !selfOk) {
                    l.kv("VERDICT", "neither accepted -> NDC root NOT installed");
                } else {
                    l.kv("VERDICT", "unexpected: NDC failed but self-signed passed");
                }
                l.get().add("  (if the CA is missing, install work/ca/ndc-ca.crt)");
                try {
                    java.io.File dir = ctx.getExternalFilesDir(null);
                    if (dir == null) dir = ctx.getFilesDir();
                    java.io.File f = new java.io.File(dir, "lzrevive-tls.txt");
                    java.io.FileOutputStream fos = new java.io.FileOutputStream(f);
                    fos.write(l.stamped().getBytes("UTF-8"));
                    fos.close();
                    l.get().add("  (written to " + f.getAbsolutePath() + ")");
                } catch (Throwable t) {
                    l.get().add("  (could not write: " + t + ")");
                }
            }
        }, "tlsprobe").start();
    }

    private static boolean attempt(LzLog l, int port, String label) {
        String url = "https://" + host + ":" + port + "/";
        long t0 = System.currentTimeMillis();
        HttpsURLConnection c = null;
        try {
            c = (HttpsURLConnection) new URL(url).openConnection();
            c.setConnectTimeout(8000);
            c.setReadTimeout(8000);
            c.setRequestMethod("GET");
            int code = c.getResponseCode();
            long dt = System.currentTimeMillis() - t0;
            BufferedReader r = new BufferedReader(new InputStreamReader(c.getInputStream()));
            String body = r.readLine();
            r.close();
            l.get().add("  [" + label + "] HTTP " + code + " in " + dt + " ms  body=" + body);
            try {
                Certificate[] chain = c.getServerCertificates();
                if (chain != null && chain.length > 0 && chain[0] instanceof X509Certificate) {
                    X509Certificate x = (X509Certificate) chain[0];
                    l.get().add("      subject: " + x.getSubjectDN());
                    l.get().add("      issuer : " + x.getIssuerDN());
                }
            } catch (Throwable ignore) {
                // getServerCertificates needs a handshake that completed; ignore
            }
            return true;
        } catch (Throwable t) {
            long dt = System.currentTimeMillis() - t0;
            Throwable cause = t.getCause() != null ? t.getCause() : t;
            l.get().add("  [" + label + "] FAILED in " + dt + " ms: "
                    + cause.getClass().getName());
            l.get().add("      " + String.valueOf(cause.getMessage()));
            return false;
        } finally {
            if (c != null) c.disconnect();
        }
    }
}
