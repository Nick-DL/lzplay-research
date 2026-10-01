package com.lzplay.revive;

import android.content.Context;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.Iterator;

/**
 * Builds a valid response for
 *     POST https://api.trip-happy.com/index.php/upgrade/info/
 *
 * Response shape (from update/c$1.a(Object)):
 *     { "data": { "upgradeConf": <b64(RC4(plainJson))>,
 *                 "upgradeConfSign": MD5(md5hex(b64decode(conf)) + requestSign) } }
 *
 * plainJson deserialises into beans/upgrade/d -> { "a": UpgradePackageModel }, which
 * carries the apk list plus backgroundUpdate/homeUpgrade.
 *
 * The apk list is taken from the vendor's own encrypted asset (assets/Xpp_Q.json),
 * decrypted at runtime with the same cipher, so the md5/size values we hand back are
 * exactly the ones the app already validates against.
 */
public final class TripHappyResponder {

    /** SDK 28 uses Xpp_P.json, everything else uses Xpp_Q.json (update/c.a(Context)). */
    private static final String ASSET_P = "Xpp_P.json";
    private static final String ASSET_Q = "Xpp_Q.json";

    private final Context ctx;

    public TripHappyResponder(Context ctx) {
        this.ctx = ctx.getApplicationContext();
    }

    // ------------------------------------------------------------ vendor list

    private String assetName() {
        return android.os.Build.VERSION.SDK_INT == 28 ? ASSET_P : ASSET_Q;
    }

    /** Read the asset and decrypt it: plaintext = RC4( base64_decode(asset) ). */
    public String vendorConfPlain() {
        try {
            InputStream in = ctx.getAssets().open(assetName());
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            byte[] buf = new byte[8192];
            int n;
            while ((n = in.read(buf)) > 0) bos.write(buf, 0, n);
            in.close();
            String b64 = new String(bos.toByteArray(), "UTF-8");
            return TripHappyCrypto.decodeConf(b64);
        } catch (Throwable t) {
            LzLog.get().kv("vendorConfPlain FAILED", t);
            return null;
        }
    }

    // --------------------------------------------------------------- response

    /**
     * Wrap the vendor apk list into the model the app deserialises.
     * backgroundUpdate.silent = true is what makes update/c$1 take the install branch:
     *     if (!c.d(ctx) && model.a().a) c.a(ctx, null);
     */
    public String buildPlainConf(String vendorPlain, boolean silent) {
        try {
            JSONObject vendor = new JSONObject(vendorPlain);
            JSONObject model = new JSONObject();
            model.put("name", vendor.optString("name", "Xpp"));
            model.put("timeStamp", vendor.optLong("timeStamp", 1569859200000L));
            JSONArray apk = vendor.optJSONArray("apk");
            model.put("apk", apk == null ? new JSONArray() : apk);

            JSONObject notification = new JSONObject();
            notification.put("enable", false);
            notification.put("message", "");
            notification.put("title", "");

            JSONObject background = new JSONObject();
            background.put("silent", silent);
            background.put("notification", notification);
            model.put("backgroundUpdate", background);

            JSONObject home = new JSONObject();
            home.put("popPrompt", false);
            home.put("message", "");
            home.put("button", "");
            model.put("homeUpgrade", home);

            JSONObject root = new JSONObject();
            root.put("a", model);
            return root.toString();
        } catch (Throwable t) {
            LzLog.get().kv("buildPlainConf FAILED", t);
            return null;
        }
    }

    /** Assemble the full response body for a given request sign. */
    public String buildResponse(String requestSign, boolean silent) {
        String vendor = vendorConfPlain();
        if (vendor == null) return null;
        String plain = buildPlainConf(vendor, silent);
        if (plain == null) return null;
        String conf = TripHappyCrypto.encodeConf(plain);
        String sign = TripHappyCrypto.responseSign(conf, requestSign == null ? "" : requestSign);
        try {
            JSONObject data = new JSONObject();
            data.put("upgradeConf", conf);
            data.put("upgradeConfSign", sign);
            JSONObject root = new JSONObject();
            root.put("data", data);
            return root.toString();
        } catch (Throwable t) {
            LzLog.get().kv("buildResponse FAILED", t);
            return null;
        }
    }

    /** Pull "sign" out of a captured request body; "" if it is not JSON. */
    public static String signFromRequest(String body) {
        try {
            JSONObject o = new JSONObject(body);
            return o.optString("sign", "");
        } catch (Throwable t) {
            return "";
        }
    }

    // --------------------------------------------------------------- self test

    /**
     * Reproduce exactly what the app does with our response, so a failure is caught
     * here rather than on the device.  Mirrors update/c$1.a(Object).
     */
    public void selfTest() {
        LzLog log = LzLog.get();
        log.section("TRIP-HAPPY RESPONDER SELF TEST");
        log.kv("asset used", assetName());

        String vendor = vendorConfPlain();
        if (vendor == null) {
            log.kv("RESULT", "FAIL - could not decrypt the vendor asset");
            return;
        }
        log.kv("vendor plaintext bytes", vendor.length());
        int apkCount = -1;
        try {
            JSONObject v = new JSONObject(vendor);
            apkCount = v.optJSONArray("apk") == null ? 0 : v.optJSONArray("apk").length();
            log.kv("vendor apk entries", apkCount);
            JSONArray arr = v.optJSONArray("apk");
            if (arr != null) {
                for (int i = 0; i < arr.length(); i++) {
                    JSONObject a = arr.getJSONObject(i);
                    log.get().add("      " + a.optString("pkgName")
                            + "  verCode=" + a.optString("verCode")
                            + "  size=" + a.optString("fileSize"));
                }
            }
        } catch (Throwable t) {
            log.kv("parse vendor FAILED", t);
        }

        // a stand-in request sign with the same shape the app produces
        String reqSign = TripHappyCrypto.md5hex("brand=HUAWEIproduct=TripXPP");
        log.kv("synthetic request sign", reqSign);

        String resp = buildResponse(reqSign, true);
        if (resp == null) {
            log.kv("RESULT", "FAIL - buildResponse returned null");
            return;
        }
        log.kv("response bytes", resp.length());

        // --- now behave like the app ---
        boolean ok = true;
        try {
            JSONObject root = new JSONObject(resp);
            JSONObject data = root.getJSONObject("data");
            String conf = data.getString("upgradeConf");
            String gotSign = data.getString("upgradeConfSign");

            byte[] raw = TripHappyCrypto.b64Decode(conf);
            String decoded = new String(TripHappyCrypto.rc4App(raw), "UTF-8");
            String md5 = TripHappyCrypto.md5hex(raw);
            String expect = TripHappyCrypto.md5hex(md5 + reqSign);

            log.get().add("");
            log.kv("b64 decode ok", decoded.startsWith("{"));
            log.kv("rc4 round trip ok", decoded.equals(buildPlainConf(vendor, true)));
            JSONObject parsed = new JSONObject(decoded);
            log.kv("json parses", parsed.has("a"));
            log.kv("sign matches", expect.equals(gotSign));
            JSONObject m = parsed.getJSONObject("a");
            log.kv("contains apk list", m.has("apk"));
            log.kv("backgroundUpdate.silent",
                    m.optJSONObject("backgroundUpdate") == null
                            ? "MISSING"
                            : String.valueOf(m.optJSONObject("backgroundUpdate").optBoolean("silent")));
            log.kv("plaintext bytes", decoded.length());

            ok = decoded.startsWith("{") && expect.equals(gotSign)
                    && parsed.has("a") && m.has("apk");
        } catch (Throwable t) {
            log.kv("verification THREW", t);
            ok = false;
        }
        log.get().add("");
        log.kv("RESULT", ok
                ? "PASS - the app would accept this response"
                : "FAIL");
    }
}
