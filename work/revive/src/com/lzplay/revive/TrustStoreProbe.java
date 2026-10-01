package com.lzplay.revive;

import java.security.KeyStore;
import java.security.cert.X509Certificate;
import java.util.Enumeration;

import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

/**
 * Enumerate the trust stores the platform actually consults, and report whether the
 * NDC root is among them.
 *
 * The TLS probe showed "Trust anchor for certification path not found" for a server
 * signed by the NDC CA even though the user installed that CA.  There are two possible
 * explanations and this class separates them:
 *
 *   a) the certificate is not in the store the JSSE default TrustManager reads, or
 *   b) it is there but under a name/store we did not expect.
 *
 * We look at both stores that matter:
 *   AndroidCAStore  - system CAs, plus user-installed CAs that the user store exposes
 *   the JSSE default  - what HttpsURLConnection actually uses
 *
 * The alias used by Android for a user-installed CA is derived from the certificate
 * subject hash, e.g. "user:CN=ND Certification".
 */
public final class TrustStoreProbe {

    private TrustStoreProbe() { }

    public static void run(android.content.Context ctx) {
        LzLog log = LzLog.get();
        log.section("TRUST STORE PROBE");

        // ---- 1. what does the JSSE default TrustManager accept? --------------
        try {
            TrustManagerFactory tmf = TrustManagerFactory.getInstance(
                    TrustManagerFactory.getDefaultAlgorithm());
            tmf.init((KeyStore) null);
            int n = 0;
            boolean sawNdc = false;
            for (javax.net.ssl.TrustManager tm : tmf.getTrustManagers()) {
                if (!(tm instanceof X509TrustManager)) continue;
                X509Certificate[] chain = ((X509TrustManager) tm).getAcceptedIssuers();
                n = chain == null ? 0 : chain.length;
                if (chain != null) {
                    for (X509Certificate c : chain) {
                        String s = String.valueOf(c.getSubjectDN());
                        if (s.contains("ND Certification")) sawNdc = true;
                    }
                }
            }
            log.kv("default TrustManager issuers", n);
            log.kv("  contains ND Certification", sawNdc);
        } catch (Throwable t) {
            log.kv("default TrustManager FAILED", t);
        }

        // ---- 2. the AndroidCAStore, which is where user CAs live ------------
        try {
            KeyStore ks = KeyStore.getInstance("AndroidCAStore");
            ks.load(null, null);
            int total = 0, userCount = 0;
            boolean sawNdc = false;
            StringBuilder ndcAliases = new StringBuilder();
            Enumeration<String> aliases = ks.aliases();
            while (aliases.hasMoreElements()) {
                String a = aliases.nextElement();
                total++;
                if (a.startsWith("user:")) userCount++;
                java.security.cert.Certificate c = ks.getCertificate(a);
                if (c instanceof X509Certificate) {
                    String subj = String.valueOf(((X509Certificate) c).getSubjectDN());
                    if (subj.contains("ND Certification") || a.contains("ND Certification")) {
                        sawNdc = true;
                        ndcAliases.append(a).append("  ");
                    }
                }
            }
            log.kv("AndroidCAStore total", total);
            log.kv("  user-installed entries", userCount);
            log.kv("  contains ND Certification", sawNdc);
            if (sawNdc) log.get().add("      alias(es): " + ndcAliases);
        } catch (Throwable t) {
            log.kv("AndroidCAStore FAILED", t);
        }

        // ---- 3. list every user-installed CA so the result is inspectable ---
        try {
            KeyStore ks = KeyStore.getInstance("AndroidCAStore");
            ks.load(null, null);
            log.get().add("  user-installed CAs:");
            Enumeration<String> aliases = ks.aliases();
            int shown = 0;
            while (aliases.hasMoreElements() && shown < 40) {
                String a = aliases.nextElement();
                if (!a.startsWith("user:")) continue;
                java.security.cert.Certificate c = ks.getCertificate(a);
                String subj = (c instanceof X509Certificate)
                        ? String.valueOf(((X509Certificate) c).getSubjectDN()) : "?";
                log.get().add("      " + a + "   ->  " + subj);
                shown++;
            }
            if (shown == 0) log.get().add("      (none)");
        } catch (Throwable t) {
            log.kv("user CA listing FAILED", t);
        }

        // ---- 4. every SYSTEM CA, so we can look for a usable third-party root --
        // Some Chinese ROMs preinstall extra roots. If any of them is a commercial CA
        // that would issue a certificate for an arbitrary domain, that changes the
        // whole feasibility question for the proxy.
        try {
            KeyStore ks = KeyStore.getInstance("AndroidCAStore");
            ks.load(null, null);
            StringBuilder sb = new StringBuilder();
            int n = 0;
            Enumeration<String> aliases = ks.aliases();
            while (aliases.hasMoreElements()) {
                String a = aliases.nextElement();
                if (a.startsWith("user:")) continue;
                java.security.cert.Certificate c = ks.getCertificate(a);
                if (!(c instanceof X509Certificate)) continue;
                X509Certificate x = (X509Certificate) c;
                String subj = String.valueOf(x.getSubjectDN());
                // only the CN is useful here and keeps the report small
                String cn = subj;
                int i = subj.indexOf("CN=");
                if (i >= 0) {
                    cn = subj.substring(i + 3);
                    int j = cn.indexOf(',');
                    if (j > 0) cn = cn.substring(0, j);
                }
                sb.append(cn).append(" | ");
                n++;
            }
            log.section("SYSTEM CA LIST (" + n + " entries)");
            String all = sb.toString();
            // wrap so the report stays readable
            int width = 100;
            for (int i = 0; i < all.length(); i += width) {
                log.get().add("      " + all.substring(i, Math.min(all.length(), i + width)));
            }
        } catch (Throwable t) {
            log.kv("system CA listing FAILED", t);
        }

        log.get().add("");
        log.get().add("  HOW TO READ THIS:");
        log.get().add("    'contains ND Certification = true' in AndroidCAStore but false in");
        log.get().add("    the default TrustManager means the platform sees it but JSSE does");
        log.get().add("    not - which would explain the handshake failure.");
        log.get().add("    If AndroidCAStore does not list it either, the install did not");
        log.get().add("    land as a user CA (HarmonyOS may file it elsewhere).");
        log.get().add("    The SYSTEM CA LIST above is what the app's default TrustManager");
        log.get().add("    actually honours - check whether any entry could issue a");
        log.get().add("    certificate for api.trip-happy.com.");
    }
}
