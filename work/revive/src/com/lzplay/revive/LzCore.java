package com.lzplay.revive;

import android.app.Activity;
import android.app.admin.DevicePolicyManager;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/**
 * The functional core of the lzplay revival.
 *
 * It reimplements, without the 360 Jiagu shell, the two things lzplay actually did:
 *   1. read the GSF ID (android_id from com.google.android.gsf.gservices)
 *   2. become a Device Administrator / Device Owner through the Huawei MDM surface,
 *      then use that to place and install the GMS packages
 *
 * Every Huawei-specific step is done reflectively and reported, so that on any given
 * device we learn exactly which parts of the original mechanism still exist.
 */
public final class LzCore {

    public static final String TAG = "LZRevive";

    /** Candidate Huawei MDM entry classes, newest first. */
    private static final String[] HW_DPM_CLASSES = {
            "com.huawei.android.app.admin.DevicePolicyManager",
            "com.huawei.android.app.admin.HwDevicePolicyManagerEx",
            "com.huawei.android.app.admin.DeviceControlManager",
            "com.huawei.android.app.admin.HwDevicePolicyManager",
    };

    /** Candidate method names for "silently activate this app as device admin". */
    private static final String[] HW_SET_ADMIN = {
            "setAdmin", "setDeviceAdmin", "activeAdmin", "activateAdmin",
            "setAdminActive", "setDeviceAdminActive",
    };

    /** GMS / Play packages lzplay used to install. */
    public static final String[] GMS_PACKAGES = {
            "com.google.android.gsf",
            "com.google.android.gsf.login",
            "com.google.android.gms",
            "com.android.vending",
            "com.google.android.syncadapters.contacts",
            "com.google.android.backuptransport",
            "com.google.android.onetimeinitializer",
            "com.google.android.partnersetup",
            "com.google.android.feedback",
            "com.google.android.syncadapters.calendar",
    };

    private LzCore() { }

    // ---------------------------------------------------------------- GSF ID

    /**
     * Exact reimplementation of com.lzplayer.insidehelper.GetIdService#a().
     * Returns "" when the provider is absent or access is denied.
     */
    public static String getGsfId(Context ctx) {
        Log.i(TAG, "[gsf] query content://com.google.android.gsf.gservices android_id");
        try {
            ContentResolver cr = ctx.getContentResolver();
            Uri u = Uri.parse("content://com.google.android.gsf.gservices");
            Cursor c = cr.query(u, null, null, new String[]{"android_id"}, null);
            if (c == null) {
                Log.i(TAG, "[gsf] null cursor (provider missing or denied)");
                return "";
            }
            String v = "";
            if (c.moveToFirst() && c.getColumnCount() >= 2) {
                v = c.getString(1);
            }
            c.close();
            if (TextUtils.isEmpty(v)) return "";
            return v.toUpperCase(Locale.US).trim();
        } catch (Throwable t) {
            Log.i(TAG, "[gsf] failed: " + t);
            return "";
        }
    }

    // ------------------------------------------------------- device admin

    public static ComponentName adminComponent(Context ctx) {
        return new ComponentName(ctx.getPackageName(), AdminReceiver.class.getName());
    }

    public static boolean isDeviceAdmin(Context ctx) {
        try {
            DevicePolicyManager dpm =
                    (DevicePolicyManager) ctx.getSystemService(Context.DEVICE_POLICY_SERVICE);
            return dpm != null && dpm.isAdminActive(adminComponent(ctx));
        } catch (Throwable t) {
            return false;
        }
    }

    public static boolean isDeviceOwner(Context ctx) {
        try {
            DevicePolicyManager dpm =
                    (DevicePolicyManager) ctx.getSystemService(Context.DEVICE_POLICY_SERVICE);
            return dpm != null && dpm.isDeviceOwnerApp(ctx.getPackageName());
        } catch (Throwable t) {
            return false;
        }
    }

    /** Standard AOSP path: shows the system "activate device admin" dialog. */
    public static void requestAdmin(Activity a, int reqCode) {
        LzLog.get().add("[admin] starting ADD_DEVICE_ADMIN intent (AOSP dialog)");
        Intent i = new Intent(DevicePolicyManager.ACTION_ADD_DEVICE_ADMIN);
        i.putExtra(DevicePolicyManager.EXTRA_DEVICE_ADMIN, adminComponent(a));
        i.putExtra(DevicePolicyManager.EXTRA_ADD_EXPLANATION,
                "授予设备管理器权限后，LZRevive 才能辅助安装 GMS。");
        try {
            a.startActivityForResult(i, reqCode);
        } catch (Throwable t) {
            LzLog.get().kv("ADD_DEVICE_ADMIN failed", t);
        }
    }

    /**
     * Huawei path: ask the Huawei MDM service to activate us without user interaction.
     * This is the piece lzplay relied on. Everything here is reflective + reported.
     */
    public static void tryHuaweiSilentAdmin(Context ctx) {
        LzLog.get().section("HUAWEI SILENT DEVICE-ADMIN ACTIVATION");

        boolean anyClass = false;
        for (String cn : HW_DPM_CLASSES) {
            Class<?> c;
            try {
                c = Class.forName(cn);
            } catch (Throwable t) {
                LzLog.get().kv(cn, "absent");
                continue;
            }
            anyClass = true;
            LzLog.get().kv(cn, "FOUND");

            // Instantiate if possible: (Context) or (Context, Handler) styles exist.
            Object inst = null;
            for (Class<?>[] sig : new Class<?>[][]{{Context.class}, {Context.class, android.os.Handler.class}, {}}) {
                try {
                    if (sig.length == 0) {
                        java.lang.reflect.Constructor<?> ctor = c.getDeclaredConstructor();
                        ctor.setAccessible(true);
                        inst = ctor.newInstance();
                    } else {
                        java.lang.reflect.Constructor<?> ctor = c.getDeclaredConstructor(sig);
                        ctor.setAccessible(true);
                        inst = ctor.newInstance(sig.length == 2 ? new Object[]{ctx, null} : new Object[]{ctx});
                    }
                    LzLog.get().kv("  instantiated via", java.util.Arrays.toString(sig));
                    break;
                } catch (Throwable t) {
                    // try next signature
                }
            }
            if (inst == null) {
                LzLog.get().kv("  instantiation", "all constructor signatures failed");
            }

            for (Method m : c.getMethods()) {
                LzLog.get().kv("  method", m.toString());
            }
            if (inst == null) continue;

            for (String mn : HW_SET_ADMIN) {
                Method m = findMethod(c, mn, 2);
                if (m == null) continue;
                boolean ok = invokeAdmin(ctx, inst, m);
                if (ok) return;
            }
        }

        if (!anyClass) {
            LzLog.get().add("[admin] no Huawei MDM class present -> silent activation unavailable");
        }
    }

    private static Method findMethod(Class<?> c, String name, int argCount) {
        for (Method m : c.getMethods()) {
            if (m.getName().equals(name) && m.getParameterTypes().length == argCount) return m;
        }
        return null;
    }

    private static boolean invokeAdmin(Context ctx, Object inst, Method m) {
        Class<?>[] pt = m.getParameterTypes();
        Object[] args = new Object[pt.length];
        args[0] = adminComponent(ctx);
        if (pt.length > 1) {
            if (pt[1] == boolean.class || pt[1] == Boolean.class) args[1] = Boolean.TRUE;
            else if (pt[1] == int.class || pt[1] == Integer.class) args[1] = Integer.valueOf(1);
            else if (pt[1] == String.class) args[1] = ctx.getPackageName();
            else args[1] = null;
        }
        try {
            m.setAccessible(true);
            Object r = m.invoke(inst, args);
            LzLog.get().kv("[admin] " + m.getName() + " ->", "returned " + r
                    + "  (isAdminActive now = " + isDeviceAdmin(ctx) + ")");
            return isDeviceAdmin(ctx);
        } catch (Throwable t) {
            Throwable cause = (t.getCause() != null) ? t.getCause() : t;
            LzLog.get().kv("[admin] " + m.getName() + " threw", cause);
            return false;
        }
    }

    // ---------------------------------------------------------- GMS install

    public static List<String> installedGms(Context ctx) {
        List<String> out = new ArrayList<String>();
        PackageManager pm = ctx.getPackageManager();
        for (String p : GMS_PACKAGES) {
            try {
                PackageInfo pi = pm.getPackageInfo(p, 0);
                ApplicationInfo ai = pi.applicationInfo;
                boolean system = ai != null && (ai.flags & ApplicationInfo.FLAG_SYSTEM) != 0;
                out.add(String.format(Locale.US, "%-42s v%-14s %s",
                        p, pi.versionName, system ? "SYSTEM" : "user"));
            } catch (Throwable t) {
                out.add(String.format(Locale.US, "%-42s %s", p, "NOT INSTALLED"));
            }
        }
        return out;
    }

    /**
     * Try to install an APK through the Huawei MDM "install system app" path.
     * Returns a human readable result; never throws.
     */
    public static String installAsSystemApp(Context ctx, String apkPath) {
        LzLog.get().section("HUAWEI MDM SYSTEM-APP INSTALL");
        LzLog.get().kv("apk", apkPath);

        String[] methodNames = {"installSystemApp", "installApp", "installPackage",
                "installSysApp", "silentInstall", "installReplaceApp"};
        boolean anyClass = false;
        for (String cn : HW_DPM_CLASSES) {
            Class<?> c;
            try {
                c = Class.forName(cn);
            } catch (Throwable t) {
                continue;
            }
            anyClass = true;
            for (String mn : methodNames) {
                for (Method m : c.getMethods()) {
                    if (!m.getName().equals(mn)) continue;
                    Class<?>[] pt = m.getParameterTypes();
                    Object[] args = new Object[pt.length];
                    boolean usable = true;
                    for (int k = 0; k < pt.length; k++) {
                        if (pt[k] == String.class) args[k] = apkPath;
                        else if (pt[k] == Context.class) args[k] = ctx;
                        else if (pt[k] == boolean.class || pt[k] == Boolean.class) args[k] = Boolean.TRUE;
                        else if (pt[k] == int.class || pt[k] == Integer.class) args[k] = Integer.valueOf(0);
                        else { usable = false; break; }
                    }
                    if (!usable) {
                        LzLog.get().kv("  skip " + m.getName(), java.util.Arrays.toString(pt));
                        continue;
                    }
                    try {
                        java.lang.reflect.Constructor<?> ctor = c.getDeclaredConstructor(Context.class);
                        ctor.setAccessible(true);
                        Object inst = ctor.newInstance(ctx);
                        m.setAccessible(true);
                        Object r = m.invoke(inst, args);
                        String msg = m.getName() + " -> " + r;
                        LzLog.get().kv("  " + msg, "OK");
                        return msg;
                    } catch (Throwable t) {
                        Throwable cause = (t.getCause() != null) ? t.getCause() : t;
                        LzLog.get().kv("  " + m.getName() + " threw", cause);
                    }
                }
            }
        }
        if (!anyClass) return "no Huawei MDM class present";
        return "no usable install method found";
    }

    // ------------------------------------------------------------- devices

    public static String deviceSummary() {
        return String.format(Locale.US, "%s %s / %s / SDK %d / EMUI=%s HMOS=%s",
                Build.MANUFACTURER, Build.MODEL, Build.VERSION.RELEASE, Build.VERSION.SDK_INT,
                prop("ro.build.version.emui"), prop("ro.build.harmonyos.version"));
    }

    public static String prop(String k) {
        try {
            Class<?> c = Class.forName("android.os.SystemProperties");
            Method g = c.getMethod("get", String.class);
            String v = (String) g.invoke(null, k);
            return (v == null || v.isEmpty()) ? "<unset>" : v;
        } catch (Throwable t) {
            return "<?>";
        }
    }

    public static String permState(Context ctx, String p) {
        try {
            int r = ctx.getPackageManager().checkPermission(p, ctx.getPackageName());
            if (r == PackageManager.PERMISSION_GRANTED) return "GRANTED";
            return "DENIED (permission not defined by platform, or not held)";
        } catch (Throwable t) {
            return "check threw " + t;
        }
    }
}
