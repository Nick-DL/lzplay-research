package com.lzplay.revive;

import java.io.ByteArrayOutputStream;
import java.security.MessageDigest;
import java.util.Locale;

/**
 * The crypto used by 旅游必备 (com.qiyecomm) for its update endpoint.
 *
 * Everything here was read out of the original smali, and the asset round trip was
 * verified independently in Python:
 *
 *   cipher   RC4Factory.a("abksfsijifefe")   -> RC4, key bytes = key.getBytes()
 *   encoding Base64Util.a(byte[])            -> Base64.NO_PADDING | NO_WRAP (flags 0xa)
 *   md5hex   StringUtil.b(String)            -> MD5 over UTF-8, lowercase hex, 2 digits
 *                                               per byte
 *   asset    plaintext = RC4( base64_decode( assets/Xpp_Q.json ) )
 *            which decodes to {"name":"Xpp","timeStamp":...,"apk":[...]} with 5 entries
 *
 * The update response is:
 *
 *   { "data": { "upgradeConf":     base64( RC4( plainJson ) ),
 *               "upgradeConfSign": MD5( md5hex( base64_decode(upgradeConf) )
 *                                       + <the client's own request sign> ) } }
 *
 * The client's request sign is MD5( sorted "k=v" concatenation + "XPP" ).
 */
public final class TripHappyCrypto {

    /** update/c.b - the static key field in UpdateImp. */
    public static final String KEY = "abksfsijifefe";

    private static final char[] HEX = "0123456789abcdef".toCharArray();

    private TripHappyCrypto() { }

    // ------------------------------------------------------------------ RC4

    public static byte[] rc4(byte[] key, byte[] data) {
        int[] s = new int[256];
        for (int i = 0; i < 256; i++) s[i] = i;
        int j = 0;
        for (int i = 0; i < 256; i++) {
            j = (j + s[i] + (key[i % key.length] & 0xFF)) & 0xFF;
            int t = s[i]; s[i] = s[j]; s[j] = t;
        }
        byte[] out = new byte[data.length];
        int i = 0; j = 0;
        for (int k = 0; k < data.length; k++) {
            i = (i + 1) & 0xFF;
            j = (j + s[i]) & 0xFF;
            int t = s[i]; s[i] = s[j]; s[j] = t;
            out[k] = (byte) (data[k] ^ s[(s[i] + s[j]) & 0xFF]);
        }
        return out;
    }

    /** RC4 with the app's key, over a UTF-8 string. */
    public static byte[] rc4App(byte[] data) {
        return rc4(KEY.getBytes(), data);
    }

    // --------------------------------------------------------------- base64

    /**
     * Base64.NO_PADDING | NO_WRAP - which is what Base64Util.a(byte[]) uses.
     * Implemented here rather than via android.util.Base64 so this class also runs
     * on a desktop JVM for offline verification.
     */
    public static String b64NoPad(byte[] data) {
        final String T = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
        StringBuilder sb = new StringBuilder((data.length * 4 + 2) / 3);
        int i = 0;
        while (i + 2 < data.length) {
            int n = ((data[i] & 0xFF) << 16) | ((data[i + 1] & 0xFF) << 8) | (data[i + 2] & 0xFF);
            sb.append(T.charAt((n >>> 18) & 63)).append(T.charAt((n >>> 12) & 63))
              .append(T.charAt((n >>> 6) & 63)).append(T.charAt(n & 63));
            i += 3;
        }
        int rem = data.length - i;
        if (rem == 1) {
            int n = (data[i] & 0xFF) << 16;
            sb.append(T.charAt((n >>> 18) & 63)).append(T.charAt((n >>> 12) & 63));
        } else if (rem == 2) {
            int n = ((data[i] & 0xFF) << 16) | ((data[i + 1] & 0xFF) << 8);
            sb.append(T.charAt((n >>> 18) & 63)).append(T.charAt((n >>> 12) & 63))
              .append(T.charAt((n >>> 6) & 63));
        }
        return sb.toString();
    }

    /** Tolerant base64 decode: ignores whitespace, tolerates missing padding. */
    public static byte[] b64Decode(String s) {
        StringBuilder c = new StringBuilder(s.length());
        for (int i = 0; i < s.length(); i++) {
            char ch = s.charAt(i);
            if (ch == '=' || ch == '\r' || ch == '\n' || ch == ' ' || ch == '\t') continue;
            c.append(ch);
        }
        int len = c.length();
        ByteArrayOutputStream out = new ByteArrayOutputStream(len * 3 / 4 + 3);
        int buf = 0, bits = 0;
        for (int i = 0; i < len; i++) {
            int v = b64Val(c.charAt(i));
            if (v < 0) continue;
            buf = (buf << 6) | v;
            bits += 6;
            if (bits >= 8) {
                bits -= 8;
                out.write((buf >>> bits) & 0xFF);
            }
        }
        return out.toByteArray();
    }

    private static int b64Val(char ch) {
        if (ch >= 'A' && ch <= 'Z') return ch - 'A';
        if (ch >= 'a' && ch <= 'z') return ch - 'a' + 26;
        if (ch >= '0' && ch <= '9') return ch - '0' + 52;
        if (ch == '+') return 62;
        if (ch == '/') return 63;
        return -1;
    }

    // ------------------------------------------------------------------ md5

    /** StringUtil.b(String): MD5 over UTF-8, lowercase hex. */
    public static String md5hex(String s) {
        try {
            return md5hex(s.getBytes("UTF-8"));
        } catch (Exception e) {
            return "";
        }
    }

    /** Base64Util.a([B) is misnamed - it is really an MD5 hex digest. */
    public static String md5hex(byte[] data) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            md.update(data);
            byte[] d = md.digest();
            StringBuilder sb = new StringBuilder(d.length * 2);
            for (byte b : d) {
                sb.append(HEX[(b >> 4) & 0xF]).append(HEX[b & 0xF]);
            }
            return sb.toString();
        } catch (Exception e) {
            return "";
        }
    }

    // ----------------------------------------------------------- app helpers

    /**
     * update/c.a(HashMap): sort keys, concatenate k + "=" + v with no separator,
     * append "XPP", MD5.
     */
    public static String requestSign(java.util.Map<String, String> kv) {
        java.util.List<String> keys = new java.util.ArrayList<String>(kv.keySet());
        java.util.Collections.sort(keys);
        StringBuilder sb = new StringBuilder();
        for (String k : keys) {
            sb.append(k).append('=').append(kv.get(k));
        }
        sb.append("XPP");
        return md5hex(sb.toString());
    }

    /** The response signature: MD5( md5hex( base64_decode(conf) ) + requestSign ). */
    public static String responseSign(String upgradeConfB64, String requestSign) {
        byte[] raw = b64Decode(upgradeConfB64);
        return md5hex(md5hex(raw) + requestSign);
    }

    /** Encrypt a plaintext JSON model into the wire form the app expects. */
    public static String encodeConf(String plainJson) {
        try {
            return b64NoPad(rc4App(plainJson.getBytes("UTF-8")));
        } catch (Exception e) {
            return "";
        }
    }

    /** Inverse of encodeConf - used by the self test. */
    public static String decodeConf(String confB64) {
        try {
            return new String(rc4App(b64Decode(confB64)), "UTF-8");
        } catch (Exception e) {
            return "";
        }
    }

    public static String fmt(String k, Object v) {
        return String.format(Locale.US, "  %-30s = %s", k, String.valueOf(v));
    }
}
