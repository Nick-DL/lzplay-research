package com.lzplay.revive;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

/**
 * LZRevive - a clean-room reimplementation of lzplay's mechanism.
 *
 * No 360 Jiagu shell, no time bomb, no device whitelist. It keeps only the parts of
 * lzplay that were technically meaningful:
 *   - read the GSF ID
 *   - become Device Administrator (AOSP path + Huawei silent path)
 *   - install / verify the GMS packages
 * and it reports, on the actual device, which of the Huawei private interfaces
 * still exist.
 */
public class MainActivity extends Activity {

    private static final int REQ_ADMIN = 1001;

    private ScrollView sv;
    private TextView tv;

    @Override
    protected void onCreate(Bundle st) {
        super.onCreate(st);
        setContentView(buildUi());

        LzLog.get().setListener(new Runnable() {
            @Override public void run() { refresh(); }
        });

        LzLog.get().add("LZRevive 1.0  -  clean-room lzplay replacement");
        LzLog.get().kv("device", LzCore.deviceSummary());
        runEnvironmentProbe();
        runGsfProbe();
        saveReport();
        refresh();
    }

    // ------------------------------------------------------------------ UI

    private View buildUi() {
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);

        sv = new ScrollView(this);
        tv = new TextView(this);
        tv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 10f);
        tv.setTypeface(Typeface.MONOSPACE);
        tv.setTextIsSelectable(true);
        int pad = (int) (8 * getResources().getDisplayMetrics().density);
        tv.setPadding(pad, pad, pad, pad);
        sv.addView(tv, new ViewGroup.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        root.addView(sv, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));

        root.addView(buttonRow());
        return root;
    }

    private View buttonRow() {
        LinearLayout row1 = new LinearLayout(this);
        LinearLayout row2 = new LinearLayout(this);
        LinearLayout row3 = new LinearLayout(this);
        row1.setOrientation(LinearLayout.HORIZONTAL);
        row2.setOrientation(LinearLayout.HORIZONTAL);
        row3.setOrientation(LinearLayout.HORIZONTAL);

        row1.addView(btn("读取 GSF ID", new Runnable() {
            @Override public void run() { runGsfProbe(); }
        }));
        row1.addView(btn("激活设备管理器", new Runnable() {
            @Override public void run() { LzCore.requestAdmin(MainActivity.this, REQ_ADMIN); }
        }));
        row1.addView(btn("华为静默激活", new Runnable() {
            @Override public void run() { HuaweiMdm.setSilentActiveAdmin(MainActivity.this); }
        }));

        row2.addView(btn("华为强制激活", new Runnable() {
            @Override public void run() { HuaweiMdm.setForcedActiveDeviceAdmin(MainActivity.this); }
        }));
        row2.addView(btn("尝试 DeviceOwner", new Runnable() {
            @Override public void run() { HuaweiMdm.trySetDeviceOwner(MainActivity.this); }
        }));
        row2.addView(btn("MDM 响应探针", new Runnable() {
            @Override public void run() { HuaweiMdm.probeServiceResponsiveness(MainActivity.this); }
        }));

        row3.addView(btn("扫描 GMS", new Runnable() {
            @Override public void run() { runGmsScan(); }
        }));
        row3.addView(btn("华为接口探测", new Runnable() {
            @Override public void run() { runEnvironmentProbe(); }
        }));
        row3.addView(btn("安装 GMS 包", new Runnable() {
            @Override public void run() { installFromFolder(); }
        }));
        row3.addView(btn("保存报告", new Runnable() {
            @Override public void run() { saveReport(); }
        }));

        LinearLayout col = new LinearLayout(this);
        col.setOrientation(LinearLayout.VERTICAL);
        col.addView(row1);
        col.addView(row2);
        col.addView(row3);
        return col;
    }

    /**
     * Install every .apk found in the app's external files dir /gms.
     * Put the GMS packages there via:
     *   adb push *.apk /sdcard/Android/data/com.lzplay.revive/files/gms/
     */
    private void installFromFolder() {
        LzLog.get().section("INSTALL GMS PACKAGES FROM FOLDER");
        File dir = getExternalFilesDir(null);
        if (dir == null) {
            LzLog.get().add("  external files dir unavailable");
            return;
        }
        File gms = new File(dir, "gms");
        LzLog.get().kv("folder", gms.getAbsolutePath());
        if (!gms.isDirectory()) {
            boolean made = gms.mkdirs();
            LzLog.get().add("  folder missing, mkdirs=" + made);
            LzLog.get().add("  用法: adb push *.apk " + gms.getAbsolutePath() + "/");
            return;
        }
        File[] apks = gms.listFiles();
        if (apks == null || apks.length == 0) {
            LzLog.get().add("  no .apk in folder");
            LzLog.get().add("  用法: adb push *.apk " + gms.getAbsolutePath() + "/");
            return;
        }
        LzLog.get().kv("device owner", ApkInstaller.isDeviceOwner(this));
        for (File f : apks) {
            if (!f.getName().toLowerCase().endsWith(".apk")) continue;
            ApkInstaller.install(this, f, f.getName());
        }
        LzLog.get().add("  提示: 若非 Device Owner，系统会弹出安装确认框，需手动点确认。");
    }

    private Button btn(String label, final Runnable action) {
        Button b = new Button(this);
        b.setText(label);
        b.setTextSize(TypedValue.COMPLEX_UNIT_SP, 11f);
        b.setAllCaps(false);
        b.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) {
                try {
                    action.run();
                } catch (Throwable t) {
                    LzLog.get().add("[error] " + t);
                }
                saveReport();
                refresh();
            }
        });
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        b.setLayoutParams(lp);
        return b;
    }

    private void refresh() {
        if (tv != null) {
            tv.setText(LzLog.get().text());
            if (sv != null) sv.post(new Runnable() {
                @Override public void run() { sv.fullScroll(ScrollView.FOCUS_DOWN); }
            });
        }
    }

    @Override
    protected void onActivityResult(int req, int res, Intent data) {
        super.onActivityResult(req, res, data);
        if (req == REQ_ADMIN) {
            LzLog.get().kv("[admin] ADD_DEVICE_ADMIN result",
                    (res == RESULT_OK ? "OK" : "cancelled(" + res + ")")
                            + "  isAdminActive=" + LzCore.isDeviceAdmin(this));
            saveReport();
            refresh();
        }
    }

    // -------------------------------------------------------------- probes

    private void runEnvironmentProbe() {
        LzLog.get().section("HUAWEI PERMISSION DECLARATIONS");
        String[] perms = {
                "com.huawei.permission.sec.MDM",
                "com.huawei.permission.sec.MDM_APP_MANAGEMENT",
                "com.huawei.permission.sec.MDM_INSTALL_SYS_APP",
                "com.huawei.permission.sec.MDM_INSTALL_UNDETACHABLE_APP",
                "com.huawei.systemmanager.permission.ACCESS_INTERFACE",
                "com.google.android.providers.gsf.permission.READ_GSERVICES",
        };
        for (String p : perms) LzLog.get().kv(p, LzCore.permState(this, p));

        LzLog.get().section("DEVICE ADMIN / OWNER STATE");
        LzLog.get().kv("isAdminActive", LzCore.isDeviceAdmin(this));
        LzLog.get().kv("isDeviceOwnerApp", LzCore.isDeviceOwner(this));

        LzLog.get().section("SYSTEM PROPERTIES");
        String[] props = {
                "ro.build.version.emui", "ro.build.harmonyos.version",
                "hw_sc.build.platform.version", "ro.comp.hl.product_base_version",
                "ro.product.hwv", "ro.build.characteristics", "ro.product.cpu.abi",
                "ro.build.version.security_patch",
        };
        for (String p : props) LzLog.get().kv(p, LzCore.prop(p));

        LzCore.tryHuaweiSilentAdmin(this);
        HuaweiMdm.dumpApi();
        // Tap-free exhaustive probe: this is the decisive experiment, and it runs
        // automatically so the result does not depend on hitting a button.
        MdmAutoProbe.runAll(this);
    }

    private void runGsfProbe() {
        LzLog.get().section("GSF ID");
        String id = LzCore.getGsfId(this);
        if (id.isEmpty()) {
            LzLog.get().add("  <empty>  — com.google.android.gsf 未安装，或 READ_GSERVICES 未授予");
            LzLog.get().add("  说明：必须先把 GSF 装进来，才拿得到 GSF ID。");
        } else {
            LzLog.get().kv("android_id", id);
        }
    }

    private void runGmsScan() {
        LzLog.get().section("GMS PACKAGE STATUS");
        List<String> rows = LzCore.installedGms(this);
        for (String r : rows) LzLog.get().add("  " + r);
    }

    private void saveReport() {
        try {
            File dir = getExternalFilesDir(null);
            if (dir == null) dir = getFilesDir();
            File f = new File(dir, "lzrevive.txt");
            FileOutputStream fos = new FileOutputStream(f);
            fos.write(LzLog.get().stamped().getBytes("UTF-8"));
            fos.close();
            Toast.makeText(this, "报告已保存:\n" + f.getAbsolutePath(), Toast.LENGTH_LONG).show();
        } catch (Throwable t) {
            Toast.makeText(this, "保存失败: " + t, Toast.LENGTH_LONG).show();
        }
    }
}
