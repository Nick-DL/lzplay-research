package com.lzplay.revive;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInstaller;

/** Receives the result of a PackageInstaller session commit. */
public class InstallResultReceiver extends BroadcastReceiver {

    @Override
    public void onReceive(Context ctx, Intent i) {
        int status = i.getIntExtra(PackageInstaller.EXTRA_STATUS, Integer.MIN_VALUE);
        String msg = i.getStringExtra(PackageInstaller.EXTRA_STATUS_MESSAGE);
        String label = i.getStringExtra("label");
        String verdict;
        switch (status) {
            case PackageInstaller.STATUS_SUCCESS:                 verdict = "SUCCESS"; break;
            case PackageInstaller.STATUS_FAILURE:                 verdict = "FAILURE"; break;
            case PackageInstaller.STATUS_FAILURE_ABORTED:         verdict = "ABORTED"; break;
            case PackageInstaller.STATUS_FAILURE_BLOCKED:         verdict = "BLOCKED"; break;
            case PackageInstaller.STATUS_FAILURE_CONFLICT:        verdict = "CONFLICT"; break;
            case PackageInstaller.STATUS_FAILURE_INCOMPATIBLE:    verdict = "INCOMPATIBLE"; break;
            case PackageInstaller.STATUS_FAILURE_INVALID:         verdict = "INVALID"; break;
            case PackageInstaller.STATUS_FAILURE_STORAGE:         verdict = "STORAGE"; break;
            default:                                             verdict = "status=" + status; break;
        }
        LzLog.get().kv("[install] result " + label, verdict + "  msg=" + msg);
    }
}
