package com.lzplay.revive;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.security.cert.CertificateException;

/**
 * The decisive experiment for the proxy question.
 *
 * Claim: an app that targets SDK 29 with no networkSecurityConfig validates TLS against
 * the system CA store only.  Our controlled test already showed that a certificate
 * signed by the user-installed NDC root is rejected with "Trust anchor for
 * certification path not found", while a certificate from a real CA succeeds.
 *
 * What is still untested is what the app does when something answers on port 443 with
 * the WRONG PROTOCOL - i.e. a plaintext HTTP response where a TLS ServerHello belongs.
 * That is what a naive VPN proxy would do, and the user explicitly asked us to try it
 * and track the app's reaction.
 *
 * This probe reproduces the judgement with the exact same API surface the app uses:
 *     URL.openConnection() -> HttpURLConnection  (HttpsURLConnectionImpl when https)
 *
 * Four cases, all against the PC:
 *   A. https to a REAL CA certificate            -> expect 200
 *   B. https to the NDC user-CA certificate      -> expect CertificateException
 *   C. https to a self-signed certificate        -> expect CertificateException
 *   D. PLAINTEXT HTTP response served on the TLS port -> expect SSLException
 *
 * Case D is the interesting one.  It also distinguishes "wrong version number" from a
 * plain timeout, which tells us whether a proxy that answers HTTP would at least be
 * *seen* by the app.
 */
public final class ProxyFeasibilityProbe {

    /** PC LAN address. */
    public static volatile String host = "192.168.3.37";

    /** Port that answers with a plaintext HTTP response (no TLS at all). */
    private static final int PORT_PLAINTEXT = 18503;

    private ProxyFeasibilityProbe() { }

    public static void run(final android.content.Context ctx) {
        final LzLog log = LzLog.get();
        log.section("PROXY FEASIBILITY PROBE");
        log.kv("host", host);

        new Thread(new Runnable() {
            @Override public void run() {
                LzLog l = LzLog.get();

                boolean real = probe(l, "https://www.google.com/generate_204",
                        "A real CA", true);
                boolean ndc = probe(l, "https://" + host + ":18501/",
                        "B NDC user CA", false);
                boolean self = probe(l, "https://" + host + ":18502/",
                        "C self-signed", false);
                boolean plain = probe(l, "https://" + host + ":" + PORT_PLAINTEXT + "/",
                        "D plaintext on TLS port", false);

                l.get().add("");
                l.kv("A real CA accepted", real);
                l.kv("B NDC user CA accepted", ndc);
                l.kv("C self-signed accepted", self);
                l.kv("D plaintext accepted", plain);
                l.get().add("");
                if (!real) {
                    l.kv("VERDICT", "baseline failed - the test setup is wrong, not the app");
                } else if (plain) {
                    l.kv("VERDICT", "*** a plaintext reply is accepted - proxy is trivial ***");
                } else if (ndc) {
                    l.kv("VERDICT", "user CA accepted - proxy needs no root");
                } else {
                    l.kv("VERDICT",
                            "TLS cannot be bypassed: only real CAs work, and neither a "
                                    + "user CA nor a plaintext reply is accepted");
                }
                l.get().add("  D failing with an SSL exception (not a timeout) means the");
                l.get().add("  proxy's bytes DID reach the app, and TLS is what rejected it.");

                write(ctx, l);
            }
        }, "proxyfeas").start();
    }

    private static boolean probe(LzLog l, String url, String label, boolean dumpChain) {
        long t0 = System.currentTimeMillis();
        HttpURLConnection c = null;
        try {
            c = (HttpURLConnection) new URL(url).openConnection();
            c.setConnectTimeout(8000);
            c.setReadTimeout(8000);
            c.setRequestMethod("GET");
            int code = c.getResponseCode();
            long dt = System.currentTimeMillis() - t0;
            l.get().add("  [" + label + "] HTTP " + code + " in " + dt + " ms");
            if (dumpChain) {
                try {
                    // getServerCertificates() lives on HttpsURLConnection, and the plain
                    // HttpURLConnection type we hold does not expose it.
                    if (c instanceof javax.net.ssl.HttpsURLConnection) {
                        java.security.cert.Certificate[] chain =
                                ((javax.net.ssl.HttpsURLConnection) c).getServerCertificates();
                        if (chain != null && chain.length > 0) {
                            l.get().add("      peer: " + chain[0]);
                        }
                    }
                } catch (Throwable ignore) {
                    // not https or handshake incomplete
                }
            }
            return true;
        } catch (Throwable t) {
            long dt = System.currentTimeMillis() - t0;
            Throwable cause = t.getCause() != null ? t.getCause() : t;
            String cls = cause.getClass().getName();
            l.get().add("  [" + label + "] FAILED in " + dt + " ms");
            l.get().add("      class  : " + cls);
            l.get().add("      message: " + String.valueOf(cause.getMessage()));
            // classify, because that is the point of the exercise
            String kind;
            if (cause instanceof SocketTimeoutException) {
                kind = "TIMEOUT - nothing came back (or the proxy stayed silent)";
            } else if (cause instanceof CertificateException
                    || cls.contains("CertPathValidator")) {
                kind = "CERTIFICATE REJECTED - handshake reached validation";
            } else if (cause instanceof javax.net.ssl.SSLException) {
                kind = "SSL PROTOCOL ERROR - bytes arrived but were not valid TLS";
            } else {
                kind = "other";
            }
            l.get().add("      kind   : " + kind);
            return false;
        } finally {
            if (c != null) c.disconnect();
        }
    }

    private static void write(android.content.Context ctx, LzLog l) {
        try {
            java.io.File dir = ctx.getExternalFilesDir(null);
            if (dir == null) dir = ctx.getFilesDir();
            java.io.File f = new java.io.File(dir, "lzrevive-proxy.txt");
            java.io.FileOutputStream fos = new java.io.FileOutputStream(f);
            fos.write(l.stamped().getBytes("UTF-8"));
            fos.close();
            l.get().add("  (written to " + f.getAbsolutePath() + ")");
        } catch (Throwable t) {
            l.get().add("  (could not write: " + t + ")");
        }
    }
}
