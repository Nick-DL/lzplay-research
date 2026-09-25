package com.lzplay.probe;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/**
 * LZProbe - determines whether the Huawei internal MDM / SystemManager surface that
 * lzplay (com.lzplay.helper) depended on still exists on this device.
 *
 * Read-only: it queries what is present and reports. It performs no privileged action.
 */
public class MainActivity extends Activity {

    private static final String TAG = "LZProbe";
    private final StringBuilder sb = new StringBuilder();
    private TextView tv;
    private ScrollView sv;

    private void line(String s) {
        Log.i(TAG, s);
        sb.append(s).append('\n');
        if (tv != null) {
            tv.setText(sb.toString());
            if (sv != null) sv.post(new Runnable() {
                @Override public void run() { sv.fullScroll(ScrollView.FOCUS_DOWN); }
            });
        }
    }

    private void section(String s) { line(""); line("==== " + s + " ===="); }

    private void field(String k, String v) { line(String.format(Locale.US, "  %-34s = %s", k, v)); }

    @Override
    protected void onCreate(Bundle st) {
        super.onCreate(st);
        setContentView(buildUi());
        probe();
        dumpToFile();
    }

    /** Build the UI in code so the build needs no R class. */
    private android.view.View buildUi() {
        sv = new ScrollView(this);
        tv = new TextView(this);
        tv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 10f);
        tv.setTypeface(android.graphics.Typeface.MONOSPACE);
        tv.setTextIsSelectable(true);
        sv.addView(tv, new android.widget.FrameLayout.LayoutParams(
                android.widget.FrameLayout.LayoutParams.MATCH_PARENT,
                android.widget.FrameLayout.LayoutParams.WRAP_CONTENT));
        return sv;
    }

    private void probe() {
        section("ENVIRONMENT");
        field("Build.MANUFACTURER", String.valueOf(Build.MANUFACTURER));
        field("Build.BRAND", String.valueOf(Build.BRAND));
        field("Build.MODEL", String.valueOf(Build.MODEL));
        field("Build.DEVICE", String.valueOf(Build.DEVICE));
        field("Build.PRODUCT", String.valueOf(Build.PRODUCT));
        field("Build.HARDWARE", String.valueOf(Build.HARDWARE));
        field("Build.VERSION.RELEASE", String.valueOf(Build.VERSION.RELEASE));
        field("Build.VERSION.SDK_INT", String.valueOf(Build.VERSION.SDK_INT));
        field("Build.DISPLAY", String.valueOf(Build.DISPLAY));
        field("Build.SUPPORTED_ABIS", join(Build.SUPPORTED_ABIS));
        String[] propsToRead = {
                "ro.build.version.emui",
                "ro.build.version.harmonyos",
                "ro.build.harmonyos.version",
                "hw_sc.build.platform.version",
                "ro.comp.hl.product_base_version",
                "ro.product.hwv",
                "ro.build.characteristics",
                "ro.product.cpu.abi",
                "ro.build.version.security_patch",
                "persist.sys.huawei.gms.support",
        };
        for (String p : propsToRead) prop(p);

        section("REQUESTED PERMISSIONS (is the permission even declared by the platform?)");
        String[] perms = {
                "com.google.android.providers.gsf.permission.READ_GSERVICES",
                "com.huawei.permission.sec.MDM",
                "com.huawei.permission.sec.MDM_APP_MANAGEMENT",
                "com.huawei.permission.sec.MDM_INSTALL_SYS_APP",
                "com.huawei.permission.sec.MDM_INSTALL_UNDETACHABLE_APP",
                "com.huawei.systemmanager.permission.ACCESS_INTERFACE",
        };
        PackageManager pm = getPackageManager();
        for (String p : perms) {
            int granted;
            try {
                granted = pm.checkPermission(p, getPackageName());
            } catch (Throwable t) {
                line("  " + p + " -> checkPermission threw " + t);
                continue;
            }
            // "DENIED" for a permission the platform does not define is the key signal.
            line(String.format(Locale.US, "  %-62s = %s", p, permStr(granted)));
        }

        section("PACKAGES PRESENT");
        String[] pkgs = {
                "com.huawei.systemmanager",
                "com.huawei.devicepolicy",
                "com.huawei.hwid",
                "com.huawei.android.hwouc",
                "com.google.android.gms",
                "com.google.android.gsf",
                "com.google.android.gsf.login",
                "com.android.vending",
        };
        for (String p : pkgs) line(String.format(Locale.US, "  %-38s installed=%s", p, isInstalled(pm, p)));

        section("getSystemService() reflection");
        String[] svcs = {
                "device_policy", "devicepolicy",
                "huawei.mdm", "mdm", "hwmdm",
                "systemmanager", "huawei.systemmanager",
                "security", "hwsecurity",
        };
        for (String s : svcs) {
            Object o;
            try {
                o = getSystemService(s);
            } catch (Throwable t) {
                line("  getSystemService(" + s + ") threw " + t);
                continue;
            }
            line(String.format(Locale.US, "  getSystemService(%-22s) -> %s", s,
                    o == null ? "null" : o.getClass().getName()));
        }

        section("ServiceManager reflection");
        try {
            Class<?> smCls = Class.forName("android.os.ServiceManager");
            Method getService = smCls.getMethod("getService", String.class);
            Method listServices = smCls.getMethod("listServices");
            String[] names = (String[]) listServices.invoke(null);
            if (names != null) {
                line("  total services: " + names.length);
                List<String> interesting = new ArrayList<String>();
                for (String n : names) {
                    if (n == null) continue;
                    String l = n.toLowerCase(Locale.US);
                    if (l.contains("huawei") || l.contains("mdm") || l.contains("hw")
                            || l.contains("devicepolicy") || l.contains("enterprise")) {
                        interesting.add(n);
                    }
                }
                line("  interesting services (" + interesting.size() + "):");
                for (String n : interesting) line("     " + n);
            }
            String[] probeNames = {
                    "device_policy", "huawei.mdm", "mdm", "systemmanager",
                    "huawei.systemmanager", "hwmdm", "huawei.devicepolicy",
                    "enterprise_policy", "device_policy_manager",
            };
            for (String n : probeNames) {
                Object b;
                try {
                    b = getService.invoke(null, n);
                } catch (Throwable t) {
                    line("     getService(" + n + ") threw " + t);
                    continue;
                }
                line(String.format(Locale.US, "     ServiceManager.getService(%-22s) -> %s",
                        n, b == null ? "null" : b.getClass().getName()));
            }
        } catch (Throwable t) {
            line("  ServiceManager unavailable: " + t);
        }

        section("MDM AIDL classes by name");
        String[] ifaces = {
                "com.huawei.android.app.admin.DevicePolicyManager",
                "com.huawei.android.app.admin.HwDevicePolicyManagerEx",
                "com.huawei.systemmanager.mdm.IHwSystemManager",
                "com.huawei.systemmanager.IHwSystemManager",
                "com.huawei.android.systemmanager.IHwSystemManager",
                "com.huawei.android.app.admin.DeviceControlManager",
        };
        for (String i : ifaces) {
            try {
                Class<?> c = Class.forName(i);
                line("  FOUND class " + c.getName());
                for (Method m : c.getMethods()) line("      " + m);
            } catch (Throwable t) {
                line("  absent  " + i + "  (" + t.getClass().getSimpleName() + ")");
            }
        }

        section("GSF ID via gservices provider");
        try {
            ContentResolver cr = getContentResolver();
            Uri u = Uri.parse("content://com.google.android.gsf.gservices");
            Cursor c = cr.query(u, null, null, new String[]{"android_id"}, null);
            if (c == null) {
                line("  query -> null cursor (provider missing or access denied)");
            } else {
                line("  cursor rows=" + c.getCount() + " cols=" + c.getColumnCount());
                if (c.moveToFirst() && c.getColumnCount() >= 2) {
                    String v = c.getString(1);
                    line("  android_id = " + (TextUtils.isEmpty(v) ? "<empty>" : v.toUpperCase(Locale.US)));
                } else {
                    line("  no android_id row");
                }
                c.close();
            }
        } catch (Throwable t) {
            line("  GSF query failed: " + t);
        }

        section("DEVICE ADMIN");
        try {
            Intent i = new Intent("android.app.action.ADD_DEVICE_ADMIN");
            line("  ADD_DEVICE_ADMIN resolvable: " + (pm.resolveActivity(i, 0) != null));
            line("  DevicePolicyManager present: "
                    + (getSystemService(DEVICE_POLICY_SERVICE) != null));
        } catch (Throwable t) {
            line("  " + t);
        }

        section("DONE");
        line("timestamp " + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).format(new Date()));
    }

    private void prop(String k) {
        String v = "<unset>";
        try {
            Class<?> c = Class.forName("android.os.SystemProperties");
            Method g = c.getMethod("get", String.class);
            String r = (String) g.invoke(null, k);
            if (r != null && !r.isEmpty()) v = r;
        } catch (Throwable t) {
            v = "<reflection failed>";
        }
        line(String.format(Locale.US, "  %-34s = %s", k, v));
    }

    private static String join(String[] a) {
        if (a == null) return "null";
        StringBuilder b = new StringBuilder();
        for (String s : a) b.append(s).append(' ');
        return b.toString().trim();
    }

    private static boolean isInstalled(PackageManager pm, String p) {
        try {
            pm.getPackageInfo(p, 0);
            return true;
        } catch (Throwable t) {
            return false;
        }
    }

    private static String permStr(int v) {
        if (v == PackageManager.PERMISSION_GRANTED) return "GRANTED";
        if (v == PackageManager.PERMISSION_DENIED) return "DENIED (not defined or not held)";
        return "UNKNOWN(" + v + ")";
    }

    private void dumpToFile() {
        File f = null;
        try {
            File dir = getExternalFilesDir(null);
            if (dir == null) dir = getFilesDir();
            f = new File(dir, "lzprobe.txt");
            FileOutputStream fos = new FileOutputStream(f);
            fos.write(sb.toString().getBytes("UTF-8"));
            fos.close();
        } catch (Throwable t) {
            line("could not write report: " + t);
            return;
        }
        line("");
        line("report file: " + (f == null ? "?" : f.getAbsolutePath()));
        Log.i(TAG, "wrote " + f.getAbsolutePath());
    }

    /** Report the exact path in logcat even if external storage is unavailable. */
    @SuppressWarnings("unused")
    private String apkPath() {
        try {
            ApplicationInfo ai = getPackageManager().getApplicationInfo(getPackageName(), 0);
            return ai.sourceDir;
        } catch (Throwable t) {
            return "?";
        }
    }
}
