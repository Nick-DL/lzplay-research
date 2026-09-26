package com.lzplay.gateprobe;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/**
 * Answers one question on each device:
 *
 *     does lzplay's device-support gate pass, and if not, WHEN does it fail?
 *
 * lzplay's gate (DeviceManage.java) is:
 *
 *     new com.huawei.android.app.admin.DevicePackageManager()
 *         .getSysAppList(new ComponentName(this, DeviceManageBC.class), [getPackageName()])
 *     catch (NoSuchMethodError | class name == com.huawei.android.util.NoExtAPIException)
 *         -> unsupported   (shows "device not supported at this time")
 *     catch (anything else)
 *         -> supported
 *
 * Note the asymmetry: it only *rejects* on NoSuchMethodError / NoExtAPIException.
 * A SecurityException means "supported".  So an unsupported verdict can ONLY come
 * from the Huawei class/method being genuinely missing - not from missing permissions.
 *
 * This probe therefore tests, in order:
 *   1. can the class be loaded, and from which classloader
 *   2. does the method getSysAppList(ComponentName, List) exist, with what return type
 *   3. what happens when we actually call it (list the exact Throwable class + message)
 *   4. what lzplay's own verdict logic would conclude
 *
 * Writes the report to /sdcard/lzgate.txt so it can be pulled with adb.
 */
public class MainActivity extends Activity {

    private static final String TAG = "LZGate";
    private static final String OUT = "/sdcard/lzgate.txt";

    private final StringBuilder sb = new StringBuilder();

    private void w(String s) {
        Log.i(TAG, s);
        sb.append(s).append('\n');
    }

    @Override
    protected void onCreate(Bundle b) {
        super.onCreate(b);
        w("==== LZPLAY GATE PROBE ====");
        w("time    : " + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).format(new Date()));
        w("model   : " + Build.MANUFACTURER + " " + Build.MODEL + " (" + Build.DEVICE + ")");
        w("android : " + Build.VERSION.RELEASE + " sdk=" + Build.VERSION.SDK_INT);
        w("display : " + Build.DISPLAY);
        w("emui    : " + prop("ro.build.version.emui")
                + "  platform=" + prop("hw_sc.build.platform.version"));
        w("package : " + getPackageName());
        w("");

        String harness = "com.huawei.android.app.admin.DevicePackageManager";
        String admClass = "com.huawei.android.app.admin.DeviceApplicationManager";
        String noExt = "com.huawei.android.util.NoExtAPIException";

        // ---------- 1. class presence ----------
        w("---- 1. class presence ----");
        Class<?> dpm = load(harness);
        Class<?> dam = load(admClass);
        Class<?> nex = load(noExt);

        // ---------- 2. method surface ----------
        w("");
        w("---- 2. DevicePackageManager methods (ALL) ----");
        if (dpm != null) {
            Method[] ms = dpm.getMethods();
            java.util.Arrays.sort(ms, new java.util.Comparator<Method>() {
                public int compare(Method a, Method b) {
                    return a.getName().compareTo(b.getName());
                }
            });
            w("   method count: " + ms.length);
            for (Method m : ms) {
                if (m.getDeclaringClass() == Object.class) continue;
                w("   * " + m.getReturnType().getSimpleName() + " " + m.getName() + paren(m));
            }
            boolean sawGetSysAppList = false;
            for (Method m : ms) if (m.getName().equals("getSysAppList")) sawGetSysAppList = true;
            w("   >>> getSysAppList present: " + sawGetSysAppList);
            // anything containing "App" or "List" that might be the equivalent
            w("   >>> candidates containing App/List/Sys:");
            for (Method m : ms) {
                String n = m.getName();
                if (n.contains("App") || n.contains("List") || n.contains("Sys")) {
                    w("       " + m.getReturnType().getSimpleName() + " " + n + paren(m));
                }
            }
        }

        Method target = null;
        if (dpm != null) {
            try {
                target = dpm.getMethod("getSysAppList", ComponentName.class, List.class);
                w("   getMethod(getSysAppList, ComponentName, List) OK -> "
                        + target.getReturnType().getName());
            } catch (NoSuchMethodException e) {
                w("   getMethod(getSysAppList, ComponentName, List) -> NoSuchMethodException");
            }
        }

        // ---------- 3. the actual call ----------
        w("");
        w("---- 3. live call to getSysAppList ----");
        String verdict;
        if (dpm == null) {
            w("   class NOT loadable -> lzplay would report UNSUPPORTED (NoClassDefFoundError"
                    + " is not NoSuchMethodError though; see verdict)");
            verdict = "class missing";
        } else if (target == null) {
            w("   method missing -> this is exactly lzplay's NoSuchMethodError case");
            verdict = "UNSUPPORTED (method missing)";
        } else {
            try {
                Object inst = dpm.getDeclaredConstructor().newInstance();
                List<String> pkgs = new ArrayList<String>();
                pkgs.add(getPackageName());
                ComponentName cn = new ComponentName(this, MainActivity.class);
                Object res = target.invoke(inst, cn, pkgs);
                w("   RETURNED: " + (res == null ? "null" : res.getClass().getName()
                        + " size=" + ((List<?>) res).size() + " " + res));
                verdict = "SUPPORTED (returned normally)";
            } catch (Throwable t) {
                Throwable c = t;
                while (c.getCause() != null && c != c.getCause()) c = c.getCause();
                w("   THREW: " + c.getClass().getName());
                w("   message: " + c.getMessage());
                w("   top-level: " + t.getClass().getName());
                String cn2 = c.getClass().getName();
                if (c instanceof NoSuchMethodError
                        || cn2.equals("com.huawei.android.util.NoExtAPIException")
                        || cn2.endsWith("NoExtAPIException")) {
                    verdict = "UNSUPPORTED (lzplay's exact failure mode)";
                } else {
                    verdict = "SUPPORTED (threw " + cn2 + ", which lzplay treats as supported)";
                }
                w("   stack:");
                for (StackTraceElement e : c.getStackTrace()) {
                    w("      at " + e);
                    if (e.toString().contains("huawei")) break;
                }
            }
        }

        // ---------- 4. what lzplay would conclude ----------
        w("");
        w("---- 4. lzplay's verdict ----");
        w("   " + verdict);

        // ---------- 5. extra context ----------
        w("");
        w("---- 5. context ----");
        w("   NoExtAPIException loadable : " + (nex != null));
        if (dam != null) {
            try {
                Method m = dam.getMethod("getPersistentApp", ComponentName.class);
                w("   DeviceApplicationManager.getPersistentApp OK -> "
                        + m.getReturnType().getName());
                Method a = dam.getMethod("addPersistentApp", ComponentName.class, List.class);
                w("   DeviceApplicationManager.addPersistentApp OK -> "
                        + a.getReturnType().getName());
            } catch (Throwable t) {
                w("   DeviceApplicationManager probe: " + t);
            }
        } else {
            w("   DeviceApplicationManager NOT loadable");
        }

        flush();
        finish();
    }

    private String paren(Method m) {
        StringBuilder s = new StringBuilder("(");
        Class<?>[] ps = m.getParameterTypes();
        for (int i = 0; i < ps.length; i++) {
            if (i > 0) s.append(", ");
            s.append(ps[i].getSimpleName());
        }
        return s.append(")").toString();
    }

    private Class<?> load(String name) {
        try {
            Class<?> c = Class.forName(name);
            w("   FOUND  " + name);
            w("          loader=" + describe(c.getClassLoader()));
            w("          location=" + location(c));
            return c;
        } catch (Throwable t) {
            w("   ABSENT " + name + "  (" + t.getClass().getSimpleName() + ")");
            return null;
        }
    }

    private String describe(ClassLoader cl) {
        if (cl == null) return "<bootstrap / framework>";
        return cl.getClass().getName();
    }

    private String location(Class<?> c) {
        try {
            java.security.CodeSource cs = c.getProtectionDomain().getCodeSource();
            if (cs == null || cs.getLocation() == null) return "<none>";
            return cs.getLocation().toString();
        } catch (Throwable t) {
            return "<unavailable: " + t.getClass().getSimpleName() + ">";
        }
    }

    private String prop(String key) {
        try {
            Class<?> sc = Class.forName("android.os.SystemProperties");
            Method g = sc.getMethod("get", String.class);
            Object v = g.invoke(null, key);
            return v == null ? "?" : v.toString();
        } catch (Throwable t) {
            return "?";
        }
    }

    private void flush() {
        // Android 11+ scoped storage blocks writes to /sdcard, so target the app's
        // own external files dir (world-readable path under /sdcard/Android/data/...)
        // and fall back to the internal files dir.  Everything is also in logcat.
        String[] targets = new String[] {
                null,           // resolved from getExternalFilesDir
                "/sdcard/lzgate.txt",
                "/data/local/tmp/lzgate.txt",
        };
        File ext = null;
        try {
            ext = getExternalFilesDir(null);
        } catch (Throwable ignore) {
        }
        for (String t : targets) {
            File f;
            if (t == null) {
                if (ext == null) continue;
                f = new File(ext, "lzgate.txt");
            } else {
                f = new File(t);
            }
            try {
                FileOutputStream fos = new FileOutputStream(f, false);
                OutputStreamWriter osw = new OutputStreamWriter(fos, "UTF-8");
                osw.write(sb.toString());
                osw.close();
                fos.close();
                Log.i(TAG, "WROTE " + f.getAbsolutePath());
            } catch (Throwable e) {
                Log.w(TAG, "could not write " + f.getAbsolutePath() + ": " + e);
            }
        }
        // also the private files dir, readable via run-as on debuggable builds
        try {
            File f = new File(getFilesDir(), "lzgate.txt");
            FileOutputStream fos = new FileOutputStream(f, false);
            OutputStreamWriter osw = new OutputStreamWriter(fos, "UTF-8");
            osw.write(sb.toString());
            osw.close();
            fos.close();
            Log.i(TAG, "WROTE " + f.getAbsolutePath());
        } catch (Throwable e) {
            Log.w(TAG, "private write failed: " + e);
        }
    }
}
