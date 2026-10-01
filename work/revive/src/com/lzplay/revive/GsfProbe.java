package com.lzplay.revive;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;

import java.util.Locale;

/**
 * Raw, unfiltered probe of content://com.google.android.gsf.gservices.
 *
 * The sibling apps and lzplay both gate on android_id.  LZRevive's normal path
 * collapses every failure into "empty", which hides whether
 *   (a) the provider could not be opened at all (Huawei trustspace blocking it), or
 *   (b) the provider opened fine but has not generated an id yet (GMS has not checked in).
 *
 * This probe reports the difference, plus a few other gservices keys that reveal
 * whether GSF has talked to Google.
 */
public final class GsfProbe {

    private GsfProbe() { }

    private static final String[] KEYS = {
            "android_id",
            "checkin_interval",
            "digest",
            "device_country",
            "google_login",
    };

    /** The gservices provider both lzplay and the two sibling apps gate on. */
    public static final Uri GSERVICES = Uri.parse("content://com.google.android.gsf.gservices");

    /**
     * Read a single gservices key and return its value, or null.
     *
     * The sibling apps do exactly this to obtain the GSF id they submit to Google's
     * /android/uncertified page.  The provider is queried with a one-element
     * selection array: the key goes in the "selectionArgs" slot, not the projection,
     * and the value comes back in column 1.
     */
    public static String readGservices(Context ctx, String key) {
        try {
            Cursor c = ctx.getContentResolver().query(GSERVICES, null, null,
                    new String[]{key}, null);
            if (c == null) return null;
            String v = null;
            if (c.moveToFirst() && c.getColumnCount() >= 2) {
                v = c.getString(1);
            }
            c.close();
            if (v != null) v = v.trim();
            return (v == null || v.isEmpty()) ? null : v;
        } catch (Throwable t) {
            return null;
        }
    }

    public static void run(Context ctx) {
        LzLog log = LzLog.get();
        log.section("GSF PROVIDER RAW PROBE");
        Uri base = Uri.parse("content://com.google.android.gsf.gservices");
        ContentResolver cr = ctx.getContentResolver();

        // 1. can we open it at all?
        try {
            Cursor c = cr.query(base, null, null, null, null);
            if (c == null) {
                log.kv("open provider (null projection)", "NULL cursor");
            } else {
                log.kv("open provider (null projection)",
                        "OK rows=" + c.getCount() + " cols=" + c.getColumnCount());
                if (c.getColumnCount() > 0 && c.moveToFirst()) {
                    StringBuilder sb = new StringBuilder();
                    for (int i = 0; i < c.getColumnCount(); i++) {
                        sb.append(c.getColumnName(i)).append('=').append(c.getString(i)).append(' ');
                    }
                    log.get().add("    first row: " + sb);
                }
                c.close();
            }
        } catch (Throwable t) {
            log.kv("open provider (null projection)", "THREW " + t.getClass().getName()
                    + ": " + t.getMessage());
            log.get().add("  -> this means Huawei trustspace refused to start"
                    + " GservicesProvider (see logcat: 'provider is prevented for iaware')");
        }

        // 2. per-key lookup, exactly the shape the sibling apps use
        for (String key : KEYS) {
            try {
                Cursor c = cr.query(base, null, null, new String[]{key}, null);
                if (c == null) {
                    log.kv("key " + key, "null cursor");
                    continue;
                }
                String val = null;
                int rows = 0;
                if (c.moveToFirst()) {
                    rows = c.getCount();
                    if (c.getColumnCount() >= 2) val = c.getString(1);
                }
                c.close();
                if (val == null) {
                    log.kv("key " + key, "no row (rows=" + rows + ")");
                } else if (val.isEmpty()) {
                    log.kv("key " + key, "EMPTY STRING (provider opened, value not set)");
                } else {
                    log.kv("key " + key, val);
                }
            } catch (Throwable t) {
                log.kv("key " + key, "THREW " + t.getClass().getName() + ": " + t.getMessage());
            }
        }

        // 3. is GSF itself alive? (process + package state)
        log.section("GSF / GMS HEALTH");
        try {
            android.app.ActivityManager am =
                    (android.app.ActivityManager) ctx.getSystemService(Context.ACTIVITY_SERVICE);
            java.util.List<android.app.ActivityManager.RunningAppProcessInfo> ps = am.getRunningAppProcesses();
            String[] want = {"com.google.android.gsf", "com.google.android.gms",
                    "com.google.process.gapps", "com.android.vending"};
            for (String w : want) {
                boolean found = false;
                if (ps != null) {
                    for (android.app.ActivityManager.RunningAppProcessInfo p : ps) {
                        if (w.equals(p.processName)) { found = true; break; }
                    }
                }
                log.kv("process " + w, found ? "RUNNING" : "not running");
            }
        } catch (Throwable t) {
            log.kv("process scan", t);
        }

        try {
            android.content.pm.PackageManager pm = ctx.getPackageManager();
            String[] pkgs = {"com.google.android.gsf", "com.google.android.gms",
                    "com.android.vending", "com.google.android.syncadapters.contacts"};
            for (String p : pkgs) {
                android.content.pm.PackageInfo pi = pm.getPackageInfo(p, 0);
                android.content.pm.ApplicationInfo ai = pi.applicationInfo;
                boolean sys = ai != null
                        && (ai.flags & android.content.pm.ApplicationInfo.FLAG_SYSTEM) != 0;
                String src = (ai == null) ? "?"
                        : (ai.sourceDir != null && ai.sourceDir.contains("/system") ? "SYSTEM-PARTITION"
                        : "user-installed");
                log.kv(p, "v" + pi.versionName + " " + (sys ? "FLAG_SYSTEM" : "not-system")
                        + " " + src);
            }
        } catch (Throwable t) {
            log.kv("package scan", t);
        }
    }
}
