package com.lzplay.revive;

import android.app.admin.DevicePolicyManager;
import android.content.ComponentName;
import android.content.Context;
import android.os.Handler;
import android.util.Log;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * The Huawei MDM surface, with the exact class/method names confirmed on
 * DCO-AL00 (Mate 50 Pro) / HarmonyOS 4.2.0.218 / API 31:
 *
 *   com.huawei.permission.sec.MDM                       -> GRANTED (normal-level, auto-granted)
 *   com.huawei.android.app.admin.DeviceControlManager   -> FOUND, no-arg constructor
 *       public void    setSilentActiveAdmin(ComponentName)
 *       public boolean setForcedActiveDeviceAdmin(ComponentName, Context)
 *       public void    setDeviceOwnerApp(ComponentName, String)
 *       public boolean isForcedActiveDeviceAdmin(ComponentName)
 *       public boolean removeActiveDeviceAdmin(ComponentName)
 *       public boolean setDelayDeactiveDeviceAdmin(ComponentName, int, Context)
 *
 * We deliberately do NOT hide anything: every call, its result and any exception
 * (with the SecurityException message the service returns) is reported.
 */
public final class HuaweiMdm {

    public static final String TAG = "LZRevive";
    private static final String CLS_CONTROL = "com.huawei.android.app.admin.DeviceControlManager";

    private HuaweiMdm() { }

    /** Instantiated lazily; null when the class is absent. */
    private static Object newControlManager(Context ctx) {
        try {
            Class<?> c = Class.forName(CLS_CONTROL);
            // The device confirmed a no-arg constructor works.
            Constructor<?> ctor = c.getDeclaredConstructor();
            ctor.setAccessible(true);
            return ctor.newInstance();
        } catch (Throwable t) {
            LzLog log = LzLog.get();
            log.kv("[mdm] cannot instantiate " + CLS_CONTROL, t);
            return null;
        }
    }

    /** Invoke a named method on the control manager, reporting everything. */
    private static Object invoke(Context ctx, String name, Class<?>[] sig, Object[] args) {
        Class<?> c;
        try {
            c = Class.forName(CLS_CONTROL);
        } catch (Throwable t) {
            LzLog.get().kv("[mdm] " + CLS_CONTROL + " absent", t.toString());
            return null;
        }
        Object inst = newControlManager(ctx);
        if (inst == null) return null;
        Method m;
        try {
            m = c.getMethod(name, sig);
        } catch (Throwable t) {
            LzLog.get().kv("[mdm] no method " + name + Arrays.toString(sig), "absent");
            // fall back: search by name only
            for (Method cand : c.getMethods()) {
                if (cand.getName().equals(name) && cand.getParameterTypes().length == sig.length) {
                    m = cand;
                    LzLog.get().kv("[mdm] using fallback signature", Arrays.toString(m.getParameterTypes()));
                    return call(ctx, inst, m, args);
                }
            }
            return null;
        }
        return call(ctx, inst, m, args);
    }

    private static Object call(Context ctx, Object inst, Method m, Object[] args) {
        try {
            m.setAccessible(true);
            Object r = m.invoke(inst, args);
            LzLog.get().kv("[mdm] " + m.getName() + " OK", "returned " + r
                    + " | isAdminActive=" + LzCore.isDeviceAdmin(ctx));
            return r;
        } catch (InvocationTargetException e) {
            Throwable cause = e.getCause() != null ? e.getCause() : e;
            LzLog.get().kv("[mdm] " + m.getName() + " threw", cause.getClass().getName()
                    + ": " + cause.getMessage());
            Log.i(TAG, "[mdm] " + m.getName() + " exception", cause);
            return null;
        } catch (Throwable t) {
            LzLog.get().kv("[mdm] " + m.getName() + " invoke failed", t);
            return null;
        }
    }

    /** The exact call lzplay relied on: activate us as device admin with no user tap. */
    public static void setSilentActiveAdmin(Context ctx) {
        LzLog.get().section("HUAWEI setSilentActiveAdmin (lzplay's silent activation)");
        ComponentName admin = LzCore.adminComponent(ctx);
        LzLog.get().kv("target admin", admin.flattenToString());
        LzLog.get().kv("isAdminActive before", LzCore.isDeviceAdmin(ctx));
        invoke(ctx, "setSilentActiveAdmin", new Class<?>[]{ComponentName.class},
                new Object[]{admin});
        LzLog.get().kv("isAdminActive after", LzCore.isDeviceAdmin(ctx));
    }

    /** Alternative: forced activation, which also takes a Context. */
    public static void setForcedActiveDeviceAdmin(Context ctx) {
        LzLog.get().section("HUAWEI setForcedActiveDeviceAdmin");
        ComponentName admin = LzCore.adminComponent(ctx);
        LzLog.get().kv("isAdminActive before", LzCore.isDeviceAdmin(ctx));
        invoke(ctx, "setForcedActiveDeviceAdmin",
                new Class<?>[]{ComponentName.class, Context.class},
                new Object[]{admin, ctx});
        LzLog.get().kv("isAdminActive after", LzCore.isDeviceAdmin(ctx));
    }

    /** Query whether the framework considers us a forced-active admin. */
    public static void queryForcedActive(Context ctx) {
        LzLog.get().section("HUAWEI isForcedActiveDeviceAdmin");
        invoke(ctx, "isForcedActiveDeviceAdmin", new Class<?>[]{ComponentName.class},
                new Object[]{LzCore.adminComponent(ctx)});
    }

    /**
     * Try to become Device Owner through Huawei's own entry point
     * (setDeviceOwnerApp). This is the strongest privilege and would allow
     * fully silent package installs plus blanket permission grants.
     */
    public static void trySetDeviceOwner(Context ctx) {
        LzLog.get().section("HUAWEI setDeviceOwnerApp");
        ComponentName admin = LzCore.adminComponent(ctx);
        LzLog.get().kv("isDeviceOwnerApp before", LzCore.isDeviceOwner(ctx));
        invoke(ctx, "setDeviceOwnerApp",
                new Class<?>[]{ComponentName.class, String.class},
                new Object[]{admin, ctx.getPackageName()});
        LzLog.get().kv("isDeviceOwnerApp after", LzCore.isDeviceOwner(ctx));
    }

    /** Memberwise: try the delayed-deactivation call so we can see if the service answers at all. */
    public static void probeServiceResponsiveness(Context ctx) {
        LzLog.get().section("HUAWEI DeviceControlManager RESPONSIVENESS PROBE");
        // isRooted is a harmless read-only query - a good canary for "does the
        // service answer us, or does it reject us as an unauthorised caller".
        invoke(ctx, "isRooted", new Class<?>[]{ComponentName.class},
                new Object[]{LzCore.adminComponent(ctx)});
        invoke(ctx, "getDeviceName", new Class<?>[]{ComponentName.class},
                new Object[]{LzCore.adminComponent(ctx)});
        invoke(ctx, "isGPSTurnOn", new Class<?>[]{ComponentName.class},
                new Object[]{LzCore.adminComponent(ctx)});
    }

    /** Full enumeration of the class, so the report carries the whole API surface. */
    public static void dumpApi() {
        LzLog.get().section("HUAWEI DeviceControlManager API SURFACE");
        try {
            Class<?> c = Class.forName(CLS_CONTROL);
            List<String> names = new ArrayList<String>();
            for (Method m : c.getMethods()) {
                String s = m.toGenericString();
                names.add(s);
                LzLog.get().add("    " + s);
            }
            LzLog.get().kv("method count", names.size());
            // highlight the interesting ones
            LzLog.get().section("INTERESTING MDM METHODS");
            String[] keys = {"Silent", "Forced", "Owner", "ActiveAdmin", "Admin",
                    "install", "Install", "uninstall", "Uninstall", "setAdmin"};
            for (Method m : c.getMethods()) {
                for (String k : keys) {
                    if (m.getName().contains(k)) {
                        LzLog.get().add("    ** " + m.toGenericString());
                        break;
                    }
                }
            }
        } catch (Throwable t) {
            LzLog.get().kv("[mdm] dump failed", t);
        }
    }
}
