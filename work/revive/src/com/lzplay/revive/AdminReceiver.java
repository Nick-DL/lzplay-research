package com.lzplay.revive;

import android.app.admin.DeviceAdminReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

/** Same role as lzplay's com.lzplay.helper.DeviceManageBC. */
public class AdminReceiver extends DeviceAdminReceiver {
    static final String TAG = "LZRevive";

    @Override
    public void onEnabled(Context c, Intent i) {
        Log.i(TAG, "[admin] onEnabled");
        LzLog.get().add("[admin] DeviceAdmin ENABLED");
    }

    @Override
    public void onDisabled(Context c, Intent i) {
        Log.i(TAG, "[admin] onDisabled");
        LzLog.get().add("[admin] DeviceAdmin DISABLED");
    }

    @Override
    public CharSequence onDisableRequested(Context c, Intent i) {
        return "停用后 LZRevive 将无法辅助安装 GMS。";
    }
}
