.class public final Lcom/x/plus/pro/update/d;
.super Lcom/x/plus/pro/update/c;
.source "UpdateImpl2.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lcom/x/plus/pro/update/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 3

    .line 12
    invoke-super {p0, p1, p2}, Lcom/x/plus/pro/update/c;->a(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    :try_start_4
    const-string p1, "ui"

    const-string p2, "0"

    .line 14
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_10
    return-object p0
.end method
