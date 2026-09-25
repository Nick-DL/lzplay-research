package com.lzplay.revive;

import android.content.ComponentName;
import android.content.Context;

import java.lang.reflect.Method;

/**
 * Exhaustive, tap-free probe of the Huawei MDM admin-activation surface.
 *
 * Runs every candidate method with every plausible argument shape and records:
 *   - whether the method exists
 *   - whether the call threw (and with what message)
 *   - whether it changed the DevicePolicyManager's view of us afterwards
 *
 * This is the decisive experiment for "is the lzplay mechanism still usable":
 * a silent success makes us Device Admin with no user interaction; a silent
 * no-op means Huawei's service accepted the call and refused to act on it.
 */
public final class MdmAutoProbe {

    private static final String CLS = "com.huawei.android.app.admin.DeviceControlManager";

    private MdmAutoProbe() { }

    public static void runAll(Context ctx) {
        LzLog log = LzLog.get();
        log.section("MDM AUTO PROBE (tap-free)");
        log.kv("admin component", LzCore.adminComponent(ctx).flattenToString());
        log.kv("isAdminActive @start", LzCore.isDeviceAdmin(ctx));
        log.kv("isDeviceOwnerApp @start", LzCore.isDeviceOwner(ctx));

        Class<?> c = null;
        try {
            c = Class.forName(CLS);
            log.kv(CLS, "FOUND");
        } catch (Throwable t) {
            log.kv(CLS, "absent: " + t);
            return;
        }

        Object inst = null;
        try {
            java.lang.reflect.Constructor<?> ctor = c.getDeclaredConstructor();
            ctor.setAccessible(true);
            inst = ctor.newInstance();
            log.kv("instantiated", "yes (no-arg ctor)");
        } catch (Throwable t) {
            log.kv("instantiated", "FAILED: " + t);
            return;
        }

        ComponentName admin = LzCore.adminComponent(ctx);

        // ---------- read-only canaries: do the privileged getters answer? ----------
        log.section("READ-ONLY CANARIES (no side effects)");
        call(c, inst, "isRooted", new Class<?>[]{ComponentName.class}, new Object[]{admin});
        call(c, inst, "getDeviceName", new Class<?>[]{ComponentName.class}, new Object[]{admin});
        call(c, inst, "isGPSTurnOn", new Class<?>[]{ComponentName.class}, new Object[]{admin});
        call(c, inst, "isForcedActiveDeviceAdmin", new Class<?>[]{ComponentName.class}, new Object[]{admin});

        // ---------- the write path lzplay used ----------
        log.section("WRITE PATH: silent / forced activation");
        call(c, inst, "setSilentActiveAdmin", new Class<?>[]{ComponentName.class}, new Object[]{admin});
        log.kv("  isAdminActive now", LzCore.isDeviceAdmin(ctx));

        call(c, inst, "setForcedActiveDeviceAdmin",
                new Class<?>[]{ComponentName.class, Context.class}, new Object[]{admin, ctx});
        log.kv("  isAdminActive now", LzCore.isDeviceAdmin(ctx));

        call(c, inst, "setDelayDeactiveDeviceAdmin",
                new Class<?>[]{ComponentName.class, int.class, Context.class},
                new Object[]{admin, 0, ctx});

        // ---------- device owner ----------
        log.section("WRITE PATH: device owner");
        call(c, inst, "setDeviceOwnerApp",
                new Class<?>[]{ComponentName.class, String.class},
                new Object[]{admin, ctx.getPackageName()});
        log.kv("  isDeviceOwnerApp now", LzCore.isDeviceOwner(ctx));

        // ---------- install-ish methods, if any ----------
        log.section("INSTALL-RELATED METHODS PRESENT");
        for (Method m : c.getMethods()) {
            String n = m.getName().toLowerCase();
            if (n.contains("install") || n.contains("uninstall") || n.contains("addapp")
                    || n.contains("whitelist") || n.contains("trust")) {
                log.add("    " + m.toGenericString());
            }
        }

        log.section("MDM AUTO PROBE DONE");
        log.kv("isAdminActive @end", LzCore.isDeviceAdmin(ctx));
        log.kv("isDeviceOwnerApp @end", LzCore.isDeviceOwner(ctx));
    }

    private static void call(Class<?> c, Object inst, String name, Class<?>[] sig, Object[] args) {
        LzLog log = LzLog.get();
        Method m = null;
        try {
            m = c.getMethod(name, sig);
        } catch (Throwable t) {
            // try any method with the same name and arity
            for (Method cand : c.getMethods()) {
                if (cand.getName().equals(name) && cand.getParameterTypes().length == sig.length) {
                    m = cand;
                    break;
                }
            }
        }
        if (m == null) {
            log.kv("  " + name, "METHOD ABSENT");
            return;
        }
        try {
            m.setAccessible(true);
            long t0 = System.currentTimeMillis();
            Object r = m.invoke(inst, args);
            long dt = System.currentTimeMillis() - t0;
            log.kv("  " + name, "returned " + r + "  (" + dt + " ms)");
        } catch (java.lang.reflect.InvocationTargetException e) {
            Throwable cause = e.getCause() != null ? e.getCause() : e;
            log.kv("  " + name, "THREW " + cause.getClass().getName() + ": " + cause.getMessage());
        } catch (Throwable t) {
            log.kv("  " + name, "INVOKE FAILED " + t);
        }
    }
}
