package com.lzplay.revive;

import android.content.ComponentName;
import android.content.Context;

import java.lang.reflect.Method;

/**
 * Probe the sibling apps' startup gate.
 *
 * 旅游必备 (com.qiyecomm) gates on DeviceManage.a(Context):
 *     new com.huawei.android.app.admin.DevicePackageManager()
 *         .getSysAppList(ComponentName(DeviceManageReceiver), List(packageName))
 *   -> if that throws NoSuchMethodError or com.huawei.android.util.NoExtAPIException
 *      the app declares "incompatible"; any other throwable is treated as OK.
 *
 * The APK ships its own stub of that Huawei class whose every method unconditionally
 * throws NoExtAPIException("method not supported.").  On a real Huawei device the
 * framework is supposed to provide the real implementation instead.  This probe finds
 * out which one actually wins, and what the real call does.
 */
public final class GateProbe {

    private static final String[] CLASSES = {
            "com.huawei.android.app.admin.DevicePackageManager",
            "com.huawei.android.app.admin.DeviceControlManager",
            "com.huawei.android.app.admin.DeviceHwSystemManager",
            "com.huawei.android.app.admin.DeviceApplicationManager",
            "com.huawei.android.util.NoExtAPIException",
    };

    private GateProbe() { }

    public static void run(Context ctx) {
        LzLog log = LzLog.get();
        log.section("SIBLING-APP GATE PROBE (DevicePackageManager.getSysAppList)");

        for (String cn : CLASSES) {
            try {
                Class<?> c = Class.forName(cn);
                String from;
                try {
                    java.security.CodeSource cs =
                            c.getProtectionDomain() == null ? null
                                    : c.getProtectionDomain().getCodeSource();
                    from = (cs == null || cs.getLocation() == null)
                            ? "<bootstrap / framework>" : cs.getLocation().toString();
                } catch (Throwable t2) {
                    from = "<codesource unavailable: " + t2.getClass().getSimpleName() + ">";
                }
                // distinguish "loaded" from "declared here" by listing its methods
                Method[] ms = c.getDeclaredMethods();
                log.kv(cn, "FOUND  methods=" + ms.length + "  from=" + from);
            } catch (Throwable t) {
                log.kv(cn, "ABSENT (" + t.getClass().getName() + ")");
            }
        }

        // Which one wins for DevicePackageManager - the framework or the app stub?
        try {
            Class<?> c = Class.forName("com.huawei.android.app.admin.DevicePackageManager");
            log.kv("DevicePackageManager classloader", c.getClassLoader());
            log.get().add("  declared methods:");
            for (Method m : c.getDeclaredMethods()) {
                log.get().add("      " + m.toGenericString());
            }
        } catch (Throwable t) {
            log.kv("DevicePackageManager inspect", t);
        }

        // Now actually make the call the app makes.
        log.section("CALLING getSysAppList EXACTLY LIKE THE APP DOES");
        try {
            Class<?> pkgCls = Class.forName("com.huawei.android.app.admin.DevicePackageManager");
            Object mgr = pkgCls.getDeclaredConstructor().newInstance();
            ComponentName cn = LzCore.adminComponent(ctx);
            java.util.ArrayList<String> list = new java.util.ArrayList<String>();
            list.add(ctx.getPackageName());
            Method m = null;
            for (Method cand : pkgCls.getMethods()) {
                if (cand.getName().equals("getSysAppList")) {
                    m = cand;
                    break;
                }
            }
            if (m == null) {
                log.kv("getSysAppList", "METHOD ABSENT on the resolved class");
            } else {
                m.setAccessible(true);
                Object r = m.invoke(mgr, cn, list);
                log.kv("getSysAppList", "returned " + r);
            }
        } catch (java.lang.reflect.InvocationTargetException e) {
            Throwable cause = e.getCause() != null ? e.getCause() : e;
            log.kv("getSysAppList THREW", cause.getClass().getName() + ": " + cause.getMessage());
            // replicate the app's decision logic
            boolean isNoSuchMethod = cause instanceof NoSuchMethodError;
            boolean isNoExtApi = "com.huawei.android.util.NoExtAPIException"
                    .equals(cause.getClass().getName());
            boolean appWouldSaySupported = !(isNoSuchMethod || isNoExtApi);
            log.kv("  app's verdict", appWouldSaySupported
                    ? "SUPPORTED (falls through to const 1)"
                    : "INCOMPATIBLE (shows \"Your current device is not supported\")");
            log.kv("  reason", "isNoSuchMethodError=" + isNoSuchMethod
                    + " isNoExtAPIException=" + isNoExtApi);
        } catch (Throwable t) {
            log.kv("getSysAppList invoke failed", t);
        }

        // Also try the DeviceControlManager variant, which DOES exist on this device.
        log.section("DeviceControlManager: does IT have getSysAppList?");
        try {
            Class<?> c = Class.forName("com.huawei.android.app.admin.DeviceControlManager");
            boolean found = false;
            for (Method m : c.getMethods()) {
                if (m.getName().equals("getSysAppList")) {
                    log.get().add("      FOUND " + m.toGenericString());
                    found = true;
                }
            }
            if (!found) log.get().add("      no getSysAppList on DeviceControlManager");
        } catch (Throwable t) {
            log.kv("DeviceControlManager", t);
        }
    }
}
