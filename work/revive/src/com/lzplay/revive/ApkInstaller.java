package com.lzplay.revive;

import android.app.PendingIntent;
import android.app.admin.DevicePolicyManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInstaller;
import android.net.Uri;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;

/**
 * APK installation helpers.
 *
 * Two paths are attempted, in order of privilege:
 *   1. Device Owner  -> PackageInstaller with no user interaction (a legitimate,
 *      documented Android capability; needs `adb shell dpm set-device-owner`)
 *   2. Ordinary app  -> PackageInstaller session; the system shows its own confirm UI
 *
 * The Huawei MDM silent-install path lives in LzCore and is tried separately.
 */
public final class ApkInstaller {

    private ApkInstaller() { }

    public static boolean isDeviceOwner(Context ctx) {
        try {
            DevicePolicyManager dpm =
                    (DevicePolicyManager) ctx.getSystemService(Context.DEVICE_POLICY_SERVICE);
            return dpm != null && dpm.isDeviceOwnerApp(ctx.getPackageName());
        } catch (Throwable t) {
            return false;
        }
    }

    /** Grant all runtime permissions a package declares, as Device Owner. */
    public static void grantAllAsDeviceOwner(Context ctx, String pkg) {
        if (!isDeviceOwner(ctx)) {
            LzLog.get().add("[dpm] not device owner, skip permission grant for " + pkg);
            return;
        }
        try {
            DevicePolicyManager dpm =
                    (DevicePolicyManager) ctx.getSystemService(Context.DEVICE_POLICY_SERVICE);
            android.content.pm.PackageInfo pi =
                    ctx.getPackageManager().getPackageInfo(pkg,
                            android.content.pm.PackageManager.GET_PERMISSIONS);
            if (pi.requestedPermissions == null) {
                LzLog.get().add("[dpm] " + pkg + " declares no permissions");
                return;
            }
            ComponentName admin = LzCore.adminComponent(ctx);
            for (String p : pi.requestedPermissions) {
                try {
                    dpm.setPermissionGrantState(admin, pkg, p,
                            DevicePolicyManager.PERMISSION_GRANT_STATE_GRANTED);
                } catch (Throwable t) {
                    LzLog.get().kv("[dpm] grant " + p, t);
                }
            }
            LzLog.get().add("[dpm] permission grant pass done for " + pkg);
        } catch (Throwable t) {
            LzLog.get().kv("[dpm] grantAll failed", t);
        }
    }

    /**
     * Install an APK file through PackageInstaller.
     * Returns true if the session was committed (the system may still show a dialog).
     */
    public static boolean install(Context ctx, File apk, String label) {
        LzLog.get().add("[install] " + label + " -> " + apk);
        if (apk == null || !apk.exists()) {
            LzLog.get().add("[install] file missing");
            return false;
        }
        InputStream in = null;
        OutputStream out = null;
        PackageInstaller.Session session = null;
        try {
            PackageInstaller pi = ctx.getPackageManager().getPackageInstaller();
            PackageInstaller.SessionParams params =
                    new PackageInstaller.SessionParams(
                            PackageInstaller.SessionParams.MODE_FULL_INSTALL);
            params.setAppPackageName(label);
            int id = pi.createSession(params);
            session = pi.openSession(id);
            out = session.openWrite("base.apk", 0, apk.length());
            in = new FileInputStream(apk);
            byte[] buf = new byte[65536];
            int n;
            long total = 0;
            while ((n = in.read(buf)) > 0) {
                out.write(buf, 0, n);
                total += n;
            }
            session.fsync(out);
            out.close(); out = null;
            in.close();   in = null;
            LzLog.get().kv("[install] bytes written", total);

            Intent cb = new Intent(ctx, InstallResultReceiver.class);
            cb.putExtra("label", label);
            int flags = PendingIntent.FLAG_UPDATE_CURRENT;
            if (android.os.Build.VERSION.SDK_INT >= 31) flags |= PendingIntent.FLAG_MUTABLE;
            PendingIntent pending = PendingIntent.getBroadcast(
                    ctx, id, cb, flags);
            session.commit(pending.getIntentSender());
            LzLog.get().add("[install] session committed for " + label);
            return true;
        } catch (Throwable t) {
            LzLog.get().kv("[install] failed for " + label, t);
            return false;
        } finally {
            try { if (out != null) out.close(); } catch (Throwable ignored) { }
            try { if (in != null) in.close(); } catch (Throwable ignored) { }
            try { if (session != null) session.close(); } catch (Throwable ignored) { }
        }
    }

    /** Open the system package installer UI for an APK path (fallback path). */
    public static void openInstallerUi(Context ctx, File apk) {
        try {
            Intent i = new Intent(Intent.ACTION_VIEW);
            i.setDataAndType(Uri.fromFile(apk),
                    "application/vnd.android.package-archive");
            i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_GRANT_READ_URI_PERMISSION);
            ctx.startActivity(i);
            LzLog.get().add("[install] opened system installer UI");
        } catch (Throwable t) {
            LzLog.get().kv("[install] could not open installer UI", t);
        }
    }
}
