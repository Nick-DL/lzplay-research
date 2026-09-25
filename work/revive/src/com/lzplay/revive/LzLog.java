package com.lzplay.revive;

import android.util.Log;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/** Shared in-memory log so the UI and the log file stay in sync. */
public final class LzLog {

    private static final LzLog INSTANCE = new LzLog();
    private static final String TAG = "LZRevive";

    private final List<String> lines = new ArrayList<String>();
    private Runnable onChanged;

    public static LzLog get() { return INSTANCE; }

    public void setListener(Runnable r) { this.onChanged = r; }

    public void add(String s) {
        Log.i(TAG, s);
        synchronized (lines) {
            lines.add(s);
        }
        if (onChanged != null) onChanged.run();
    }

    public void section(String s) {
        add("");
        add("==== " + s + " ====");
    }

    public void kv(String k, Object v) {
        add(String.format(Locale.US, "  %-36s = %s", k, String.valueOf(v)));
    }

    public String text() {
        synchronized (lines) {
            StringBuilder b = new StringBuilder();
            for (String l : lines) b.append(l).append('\n');
            return b.toString();
        }
    }

    public String stamped() {
        return text() + "\n--- generated "
                + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).format(new Date()) + " ---\n";
    }
}
