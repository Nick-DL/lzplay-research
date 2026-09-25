.class public Lcom/x/plus/pro/register/c;
.super Ljava/lang/Object;
.source "RegisterManager.java"

# interfaces
.implements Lcom/x/plus/pro/e/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/plus/pro/register/c$a;,
        Lcom/x/plus/pro/register/c$b;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "c"

.field private static final h:Landroid/net/Uri;


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/x/plus/pro/e/c;

.field c:Lcom/x/plus/pro/register/c$b;

.field private e:Landroid/content/SharedPreferences;

.field private f:Lcom/x/plus/pro/register/c$a;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.google.android.gsf.gservices"

    .line 162
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/x/plus/pro/register/c;->h:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/x/plus/pro/register/c$a;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/x/plus/pro/register/c;->a:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/x/plus/pro/register/c;->f:Lcom/x/plus/pro/register/c$a;

    const-string p2, "com.x.plus.pro"

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/x/plus/pro/register/c;->e:Landroid/content/SharedPreferences;

    .line 49
    new-instance p1, Lcom/x/plus/pro/e/c;

    iget-object p2, p0, Lcom/x/plus/pro/register/c;->a:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Lcom/x/plus/pro/e/c;-><init>(Landroid/content/Context;Lcom/x/plus/pro/e/a;)V

    iput-object p1, p0, Lcom/x/plus/pro/register/c;->b:Lcom/x/plus/pro/e/c;

    .line 50
    iget-object p1, p0, Lcom/x/plus/pro/register/c;->b:Lcom/x/plus/pro/e/c;

    invoke-virtual {p1}, Lcom/x/plus/pro/e/c;->a()V

    .line 1056
    new-instance p1, Lcom/x/plus/pro/register/c$b;

    invoke-direct {p1, p0}, Lcom/x/plus/pro/register/c$b;-><init>(Lcom/x/plus/pro/register/c;)V

    iput-object p1, p0, Lcom/x/plus/pro/register/c;->c:Lcom/x/plus/pro/register/c$b;

    .line 1057
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "com.x.plus.pro.recev.sfid"

    .line 1058
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1059
    iget-object p2, p0, Lcom/x/plus/pro/register/c;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/x/plus/pro/register/c;->c:Lcom/x/plus/pro/register/c$b;

    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const-string v0, ""

    const-string v1, ""

    .line 168
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/x/plus/pro/register/c;->h:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string p0, "android_id"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 173
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 178
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 180
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 181
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v1, v0

    goto :goto_1

    .line 174
    :cond_3
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    const-string p0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :goto_1
    return-object v1
.end method

.method static synthetic a(Lcom/x/plus/pro/register/c;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/x/plus/pro/register/c;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/x/plus/pro/register/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/x/plus/pro/register/c;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/x/plus/pro/register/c;)Landroid/content/SharedPreferences;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/x/plus/pro/register/c;->e:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private b()V
    .locals 4

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.x.idhelper"

    const-string v3, "com.x.idhelper.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 124
    iget-object p0, p0, Lcom/x/plus/pro/register/c;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic c(Lcom/x/plus/pro/register/c;)Lcom/x/plus/pro/e/c;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/x/plus/pro/register/c;->b:Lcom/x/plus/pro/e/c;

    return-object p0
.end method

.method static synthetic d(Lcom/x/plus/pro/register/c;)V
    .locals 7

    const/4 v0, 0x2

    :try_start_0
    const-string v1, "amF2YXNjcmlwdDooZnVuY3Rpb24oKSB7Cgl2YXIgc3BhbnMgPSAwOwoJdmFyIHNwYW4gPSBkb2N1bWVudC5nZXRFbGVtZW50c0J5VGFnTmFtZSgnc3BhbicpOwoJaWYgKHNwYW4pIHsKCQlmb3IodmFyIGkgPSAwOyBpIDwgc3Bhbi5sZW5ndGg7IGkrKykgewoJCQlpZiAoc3BhbltpXS5oYXNBdHRyaWJ1dGUoJ3JvbGUnKSAmJiBzcGFuW2ldLmdldEF0dHJpYnV0ZSgncm9sZScpID09ICdvcHRpb24nICYmIHNwYW5baV0uaGFzQXR0cmlidXRlKCd0YWJpbmRleCcpKSB7CgkJCQlzcGFucysrOwoJCQl9CgkJfQoJfSBlbHNlIHsKCQl3aW5kb3cuYW5kcm9pZC5yZWdpc3RlclJlc3VsdCgxMDAxKTsKCX0KCgl2YXIgaW5wdXQgPSBkb2N1bWVudC5nZXRFbGVtZW50c0J5VGFnTmFtZSgnaW5wdXQnKTsKCWlmIChpbnB1dCkgewoJCWlucHV0WzBdLnZhbHVlPSclcyc7Cgl9IGVsc2UgewoJCXdpbmRvdy5hbmRyb2lkLnJlZ2lzdGVyUmVzdWx0KDIwMDEpOwoJCXJldHVybjsKCX0KCQoJdmFyIHZlYyA9IGRvY3VtZW50LmdldEVsZW1lbnRzQnlUYWdOYW1lKCdkaXYnKTsKCXZhciBpc0NsaWNrID0gZmFsc2U7CglpZiAodmVjKSB7CgkJZm9yKHZhciBpID0wOyBpIDwgdmVjLmxlbmd0aDsgaSsrKSB7IAoJCQlpZiAodmVjW2ldLmhhc0F0dHJpYnV0ZSgncm9sZScpICYmIHZlY1tpXS5nZXRBdHRyaWJ1dGUoJ3JvbGUnKT09J2J1dHRvbicgJiYgdmVjW2ldLmF0dHJpYnV0ZXNbMF0ubmFtZT09J3JvbGUnKSB7CgkJCQl3aW5kb3cuYW5kcm9pZC5yZWdpc3RlclJlc3VsdCgxMDAyKTsKCQkJCXZlY1tpXS5jbGljaygpOwoJCQkJaXNDbGljayA9IHRydWU7CgkJCX0KCQl9Cgl9CglpZighaXNDbGljaykgewoJCXdpbmRvdy5hbmRyb2lkLnJlZ2lzdGVyUmVzdWx0KDIwMDIpOwoJCXJldHVybjsKCX0KCgl2YXIgY291bnRzID0gMTA7Cgl2YXIgcmVnaXN0ZXJGdW4gPSBudWxsOwoJcmVnaXN0ZXJGdW4gPSBzZXRJbnRlcnZhbChmdW5jdGlvbigpewoJCWlmIChjb3VudHMgPiAwKSB7CgkJCXZhciB0c3BhbnMgPSAwOwoJCQl2YXIgbFNwYW4gPSBkb2N1bWVudC5nZXRFbGVtZW50c0J5VGFnTmFtZSgnc3BhbicpOwoJCQlpZiAobFNwYW4pIHsKCQkJCWZvcih2YXIgaSA9IDA7IGkgPCBsU3Bhbi5sZW5ndGg7IGkrKykgewoJCQkJCWlmIChsU3BhbltpXS5oYXNBdHRyaWJ1dGUoJ3JvbGUnKSAmJiBsU3BhbltpXS5nZXRBdHRyaWJ1dGUoJ3JvbGUnKSA9PSAnb3B0aW9uJyAmJiBsU3BhbltpXS5oYXNBdHRyaWJ1dGUoJ3RhYmluZGV4JykpIHsKCQkJCQkJdHNwYW5zKys7CgkJCQkJfQoJCQkJfQoJCQl9IGVsc2UgewoJCQkJd2luZG93LmFuZHJvaWQucmVnaXN0ZXJSZXN1bHQoMTAwMyk7CgkJCX0KCgkJCWNvdW50cy0tOwoKCQkJaWYgKHRzcGFucyAtIHNwYW5zID49IDEpIHsKCQkJCWlmKHJlZ2lzdGVyRnVuICE9IG51bGwpewoJCQkJCWNsZWFySW50ZXJ2YWwocmVnaXN0ZXJGdW4pOwoJCQkJfQoJCQkJd2luZG93LmFuZHJvaWQucmVnaXN0ZXJSZXN1bHQoMCk7CgkJCX0gZWxzZSB7CgkJCQl3aW5kb3cuYW5kcm9pZC5yZWdpc3RlclJlc3VsdCgxMDA0KTsKCQkJfQoJCX0gZWxzZSB7CgkJCWlmKHJlZ2lzdGVyRnVuICE9IG51bGwpewoJCQkJY2xlYXJJbnRlcnZhbChyZWdpc3RlckZ1bik7CgkJCX0KCQkJd2luZG93LmFuZHJvaWQucmVnaXN0ZXJSZXN1bHQoLTEpOwoJCX0KCgl9LCAyMDAwKTsKCn0pKCk="

    .line 1130
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1136
    iget-object v3, p0, Lcom/x/plus/pro/register/c;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1138
    iget-object v1, p0, Lcom/x/plus/pro/register/c;->f:Lcom/x/plus/pro/register/c$a;

    invoke-interface {v1, v0}, Lcom/x/plus/pro/register/c$a;->a(I)V

    return-void

    :cond_0
    const-string v3, "register_js"

    .line 1143
    new-instance v4, Ljava/lang/String;

    const/16 v5, 0xa

    .line 2012
    invoke-static {v1, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 1143
    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/x/plus/pro/register/c;->g:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v1, v6

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/x/plus/pro/f/a;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1144
    sget-object v1, Lcom/x/plus/pro/register/d;->INSTANCE:Lcom/x/plus/pro/register/d;

    const-string v3, "https://www.google.com/android/uncertified"

    invoke-virtual {v1, v3, v2}, Lcom/x/plus/pro/register/d;->add(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1145
    sput-boolean v6, Lcom/x/plus/pro/register/b;->a:Z

    .line 1147
    iget-object v1, p0, Lcom/x/plus/pro/register/c;->f:Lcom/x/plus/pro/register/c$a;

    const-string v2, "https://www.google.com/android/uncertified"

    invoke-interface {v1, v2}, Lcom/x/plus/pro/register/c$a;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1154
    :catch_0
    iget-object p0, p0, Lcom/x/plus/pro/register/c;->f:Lcom/x/plus/pro/register/c$a;

    invoke-interface {p0, v0}, Lcom/x/plus/pro/register/c$a;->a(I)V

    return-void
.end method

.method static synthetic e(Lcom/x/plus/pro/register/c;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/x/plus/pro/register/c;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic f(Lcom/x/plus/pro/register/c;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/x/plus/pro/register/c;->b()V

    return-void
.end method

.method static synthetic g(Lcom/x/plus/pro/register/c;)Lcom/x/plus/pro/register/c$a;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/x/plus/pro/register/c;->f:Lcom/x/plus/pro/register/c$a;

    return-object p0
.end method


# virtual methods
.method final a()V
    .locals 1

    .line 85
    new-instance v0, Lcom/x/plus/pro/register/c$1;

    invoke-direct {v0, p0}, Lcom/x/plus/pro/register/c$1;-><init>(Lcom/x/plus/pro/register/c;)V

    .line 114
    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/x/plus/pro/register/c;->b()V

    return-void

    .line 198
    :cond_0
    iget-object p0, p0, Lcom/x/plus/pro/register/c;->f:Lcom/x/plus/pro/register/c$a;

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lcom/x/plus/pro/register/c$a;->a(I)V

    return-void
.end method
