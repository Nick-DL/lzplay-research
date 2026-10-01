package com.lzplay.revive;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Base64;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import java.nio.charset.StandardCharsets;

/**
 * 设备注册（"此设备未获得 Play 保护机制认证" 的解法）。
 *
 * 原理来自对两个姊妹 App 的反编译：它们的注册流程**完全离线**。
 *
 *   c/s/a/g/i.smali 方法 c()  （Chat Partner）
 *   com/x/plus/pro/register/c.smali 方法 c()  （旅游必备）
 *
 * 二者做的是同一件事：
 *
 *     String tmpl = d();                                   // 硬编码的 base64 JS 模板
 *     String js   = String.format(new String(Base64.decode(tmpl)), gsfId);
 *     json.put("register_js", Base64.encode(js.getBytes()));
 *     c.s.a.g.j.INSTANCE.add("https://www.google.com/android/uncertified", json);
 *
 * 然后 RegisterActivity 从那个**内存缓存**里取出 register_js，base64 解码后
 * 交给 webView.loadUrl() 执行。
 *
 * 两份模板逐字节相同（sha256 bf57f30fa841d614…），本类直接内嵌同一份。
 * 脚本的作用是：打开 Google 的未认证设备注册页 → 把 GSF ID 填进第一个输入框
 * → 点击"注册"按钮 → 每 2 秒轮询确认页面新增了一个已注册条目 → 回调 registerResult(0)。
 *
 * 我们做的事和原版一致，只是不需要任何服务器。
 */
public class RegisterActivity extends Activity {

    private static final String TAG = "LZRegister";
    private static final String URL = "https://www.google.com/android/uncertified";

    /**
     * 与两个姊妹 App 完全相同的注册脚本模板，%s 处填入 GSF ID。
     * 原文来自 com/x/plus/pro/register/c.smali 的常量（base64 解码后）。
     */
    private static final String JS_TEMPLATE = "javascript:(function() {\n"
            + "\tvar spans = 0;\n"
            + "\tvar span = document.getElementsByTagName('span');\n"
            + "\tif (span) {\n"
            + "\t\tfor(var i = 0; i < span.length; i++) {\n"
            + "\t\t\tif (span[i].hasAttribute('role') && span[i].getAttribute('role') == 'option' && span[i].hasAttribute('tabindex')) {\n"
            + "\t\t\t\tspans++;\n"
            + "\t\t\t}\n"
            + "\t\t}\n"
            + "\t} else {\n"
            + "\t\twindow.android.registerResult(1001);\n"
            + "\t}\n"
            + "\n"
            + "\tvar input = document.getElementsByTagName('input');\n"
            + "\tif (input) {\n"
            + "\t\tinput[0].value='%s';\n"
            + "\t} else {\n"
            + "\t\twindow.android.registerResult(2001);\n"
            + "\t\treturn;\n"
            + "\t}\n"
            + "\t\n"
            + "\tvar vec = document.getElementsByTagName('div');\n"
            + "\tvar isClick = false;\n"
            + "\tif (vec) {\n"
            + "\t\tfor(var i =0; i < vec.length; i++) { \n"
            + "\t\t\tif (vec[i].hasAttribute('role') && vec[i].getAttribute('role')=='button' && vec[i].attributes[0].name=='role') {\n"
            + "\t\t\t\twindow.android.registerResult(1002);\n"
            + "\t\t\t\tvec[i].click();\n"
            + "\t\t\t\tisClick = true;\n"
            + "\t\t\t}\n"
            + "\t\t}\n"
            + "\t}\n"
            + "\tif(!isClick) {\n"
            + "\t\twindow.android.registerResult(2002);\n"
            + "\t\treturn;\n"
            + "\t}\n"
            + "\n"
            + "\tvar counts = 10;\n"
            + "\tvar registerFun = null;\n"
            + "\tregisterFun = setInterval(function(){\n"
            + "\t\tif (counts > 0) {\n"
            + "\t\t\tvar tspans = 0;\n"
            + "\t\t\tvar lSpan = document.getElementsByTagName('span');\n"
            + "\t\t\tif (lSpan) {\n"
            + "\t\t\t\tfor(var i = 0; i < lSpan.length; i++) {\n"
            + "\t\t\t\t\tif (lSpan[i].hasAttribute('role') && lSpan[i].getAttribute('role') == 'option' && lSpan[i].hasAttribute('tabindex')) {\n"
            + "\t\t\t\t\t\ttspans++;\n"
            + "\t\t\t\t\t}\n"
            + "\t\t\t\t}\n"
            + "\t\t\t} else {\n"
            + "\t\t\t\twindow.android.registerResult(1003);\n"
            + "\t\t\t}\n"
            + "\n"
            + "\t\t\tcounts--;\n"
            + "\n"
            + "\t\t\tif (tspans - spans >= 1) {\n"
            + "\t\t\t\tif(registerFun != null){\n"
            + "\t\t\t\t\tclearInterval(registerFun);\n"
            + "\t\t\t\t}\n"
            + "\t\t\t\twindow.android.registerResult(0);\n"
            + "\t\t\t} else {\n"
            + "\t\t\t\twindow.android.registerResult(1004);\n"
            + "\t\t\t}\n"
            + "\t\t} else {\n"
            + "\t\t\tif(registerFun != null){\n"
            + "\t\t\t\tclearInterval(registerFun);\n"
            + "\t\t\t}\n"
            + "\t\t\twindow.android.registerResult(-1);\n"
            + "\t\t}\n"
            + "\n"
            + "\t}, 2000);\n"
            + "\n"
            + "})()";

    private WebView web;
    private TextView status;
    private final Handler ui = new Handler(Looper.getMainLooper());
    private boolean injected = false;
    private String gsfId;

    @SuppressLint({"SetJavaScriptEnabled", "AddJavascriptInterface"})
    @Override
    protected void onCreate(Bundle b) {
        super.onCreate(b);

        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);

        // ---- 顶部状态条 ----
        LinearLayout bar = new LinearLayout(this);
        bar.setOrientation(LinearLayout.VERTICAL);
        bar.setPadding(24, 24, 24, 16);
        bar.setBackgroundColor(Color.parseColor("#101418"));

        status = new TextView(this);
        status.setTextColor(Color.parseColor("#7fe0a0"));
        status.setTextSize(13);
        status.setText("准备中…");
        bar.addView(status);

        TextView hint = new TextView(this);
        hint.setTextColor(Color.parseColor("#9aa4ae"));
        hint.setTextSize(11);
        hint.setText("使用与 lzplay / 旅游必备 / Chat Partner 完全相同的注册脚本\n"
                + "（脚本为 App 内置常量，不需要任何服务器）");
        bar.addView(hint);

        Button btn = new Button(this);
        btn.setText("重新填入并注册");
        btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                injectJs();
            }
        });
        bar.addView(btn);

        root.addView(bar, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT));

        // ---- WebView ----
        web = new WebView(this);
        WebSettings s = web.getSettings();
        s.setJavaScriptEnabled(true);
        s.setDomStorageEnabled(true);
        s.setUserAgentString("Mozilla/5.0 (Linux; Android " + android.os.Build.VERSION.RELEASE
                + "; " + android.os.Build.MODEL + ") AppleWebKit/537.36 (KHTML, like Gecko) "
                + "Chrome/71.0.3578.99 Mobile Safari/537.36");
        web.addJavascriptInterface(new Bridge(), "android");
        web.setWebChromeClient(new WebChromeClient());
        web.setWebViewClient(new WebViewClient() {
            @Override
            public void onPageFinished(WebView v, String url) {
                Log.i(TAG, "onPageFinished " + url);
                setStatus("页面已加载：" + url);
                // 与姊妹 App 的时机一致：页面加载完成后注入
                if (!injected) {
                    injected = true;
                    ui.postDelayed(new Runnable() {
                        @Override
                        public void run() {
                            injectJs();
                        }
                    }, 1500);
                }
            }
        });

        root.addView(web, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));

        setContentView(root);

        // ---- 取 GSF ID，然后打开注册页 ----
        new Thread(new Runnable() {
            @Override
            public void run() {
                gsfId = GsfProbe.readGservices(RegisterActivity.this, "android_id");                ui.post(new Runnable() {
                    @Override
                    public void run() {
                        if (gsfId == null || gsfId.length() == 0) {
                            setStatus("❌ 读不到 GSF ID（android_id）\n"
                                    + "请先在「应用启动管理」里允许 com.google.android.gsf "
                                    + "自启动与后台运行，然后重试。");
                            return;
                        }
                        setStatus("GSF ID = " + gsfId + "\n正在打开 Google 注册页…");
                        web.loadUrl(URL);
                    }
                });
            }
        }).start();
    }

    /** 与姊妹 App 的做法完全一致：把 GSF ID format 进模板，再 base64，再 loadUrl。 */
    private void injectJs() {
        if (gsfId == null || gsfId.length() == 0) {
            setStatus("❌ 还没有 GSF ID");
            return;
        }
        String js = String.format(JS_TEMPLATE, gsfId);
        String b64 = Base64.encodeToString(js.getBytes(StandardCharsets.UTF_8), Base64.NO_WRAP);
        Log.i(TAG, "injecting register js, gsfId=" + gsfId + " len=" + js.length());
        setStatus("已注入注册脚本，等待页面响应…\nGSF ID = " + gsfId);
        web.loadUrl("javascript:(function(){eval(atob('" + b64 + "'"
                + ".replace(/^javascript:/,''));})()");
    }

    private void setStatus(final String s) {
        Log.i(TAG, s.replace('\n', '|'));
        ui.post(new Runnable() {
            @Override
            public void run() {
                status.setText(s);
            }
        });
    }

    /** 对应原版脚本里的 window.android.registerResult(code)。 */
    private class Bridge {
        @JavascriptInterface
        public void registerResult(int code) {
            String msg;
            switch (code) {
                case 0:
                    msg = "✅ 注册成功！设备已提交给 Google。\n"
                            + "GSF ID = " + gsfId + "\n"
                            + "建议重启 GMS 或稍等几分钟让认证状态刷新。";
                    break;
                case 1001:
                    msg = "❌ 1001 页面结构异常（找不到 span）";
                    break;
                case 1002:
                    msg = "⚠️ 1002 已点击按钮，等待结果";
                    break;
                case 1003:
                    msg = "⚠️ 1003 轮询时页面结构异常";
                    break;
                case 1004:
                    msg = "… 1004 尚未确认（轮询中）";
                    break;
                case 2001:
                    msg = "❌ 2001 页面里没有输入框";
                    break;
                case 2002:
                    msg = "❌ 2002 页面里没有注册按钮";
                    break;
                case -1:
                    msg = "❌ -1 轮询超时（20 秒内未确认）\n"
                            + "可能该 GSF ID 已经注册过，或页面需要登录 Google 账号。";
                    break;
                default:
                    msg = "code = " + code;
                    break;
            }
            setStatus(msg);
            Log.i(TAG, "registerResult(" + code + ")");
        }
    }

    @Override
    public void onBackPressed() {
        setResult(RESULT_OK, new Intent());
        finish();
    }
}
