.class final Lcom/x/plus/pro/update/c$1;
.super Lcom/x/plus/pro/f/d$g;
.source "UpdateImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/x/plus/pro/update/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/x/plus/pro/update/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/x/plus/pro/update/b;

.field final synthetic c:Lcom/x/plus/pro/update/c;


# direct methods
.method constructor <init>(Lcom/x/plus/pro/update/c;Landroid/content/Context;Lcom/x/plus/pro/update/b;)V
    .registers 4

    .line 177
    iput-object p1, p0, Lcom/x/plus/pro/update/c$1;->c:Lcom/x/plus/pro/update/c;

    iput-object p2, p0, Lcom/x/plus/pro/update/c$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/x/plus/pro/update/c$1;->b:Lcom/x/plus/pro/update/b;

    invoke-direct {p0}, Lcom/x/plus/pro/f/d$g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/x/plus/pro/f/d$e;)V
    .registers 3

    .line 263
    iget-object v0, p0, Lcom/x/plus/pro/update/c$1;->b:Lcom/x/plus/pro/update/b;

    if-eqz v0, :cond_e

    .line 264
    iget-object p0, p0, Lcom/x/plus/pro/update/c$1;->b:Lcom/x/plus/pro/update/b;

    .line 1251
    iget-object p1, p1, Lcom/x/plus/pro/f/d$e;->d:Ljava/lang/Throwable;

    .line 264
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-interface {p0}, Lcom/x/plus/pro/update/b;->a()V

    :cond_e
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .registers 6

    .line 177
    check-cast p1, Ljava/lang/String;

    .line 3080
    :try_start_2
    new-instance v0, Lcom/x/plus/pro/f/f$1;

    invoke-direct {v0, p1}, Lcom/x/plus/pro/f/f$1;-><init>(Ljava/lang/String;)V

    .line 4007
    invoke-static {v0}, Lcom/x/plus/pro/f/b;->a(Lcom/x/plus/pro/f/b$a;)Ljava/lang/Object;

    move-result-object p1

    .line 3080
    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "data"

    .line 2182
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "upgradeConf"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data"

    .line 2183
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "upgradeConfSign"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2188
    invoke-static {v0}, Lcom/x/plus/pro/f/k;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/x/plus/pro/f/a;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 2194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/x/plus/pro/update/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/x/plus/pro/f/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2200
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ca

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ca

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ca

    .line 2206
    invoke-static {}, Lcom/x/plus/pro/update/c;->c()Lcom/a/a/e;

    move-result-object p1

    const-class v1, Lcom/x/plus/pro/beans/upgrade/d;

    invoke-virtual {p1, v0, v1}, Lcom/a/a/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/x/plus/pro/beans/upgrade/d;

    .line 2212
    iget-object v1, p0, Lcom/x/plus/pro/update/c$1;->c:Lcom/x/plus/pro/update/c;

    iget-object v2, p0, Lcom/x/plus/pro/update/c$1;->a:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/x/plus/pro/update/c;->a(Lcom/x/plus/pro/update/c;Landroid/content/Context;Ljava/lang/String;)V

    .line 2214
    iget-object v0, p0, Lcom/x/plus/pro/update/c$1;->c:Lcom/x/plus/pro/update/c;

    iget-object v1, p0, Lcom/x/plus/pro/update/c$1;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/x/plus/pro/update/c;->a(Lcom/x/plus/pro/update/c;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_8c

    .line 2215
    iget-object v0, p0, Lcom/x/plus/pro/update/c$1;->c:Lcom/x/plus/pro/update/c;

    iget-object v1, p0, Lcom/x/plus/pro/update/c$1;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/x/plus/pro/update/c;->a(Lcom/x/plus/pro/update/c;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.x.plus.pro.update.checkTimeStamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2217
    :cond_8c
    iget-object v0, p0, Lcom/x/plus/pro/update/c$1;->b:Lcom/x/plus/pro/update/b;

    if-eqz v0, :cond_95

    .line 2218
    iget-object v0, p0, Lcom/x/plus/pro/update/c$1;->b:Lcom/x/plus/pro/update/b;

    invoke-interface {v0}, Lcom/x/plus/pro/update/b;->b()V

    .line 2221
    :cond_95
    iget-object v0, p0, Lcom/x/plus/pro/update/c$1;->c:Lcom/x/plus/pro/update/c;

    iget-object v1, p0, Lcom/x/plus/pro/update/c$1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/x/plus/pro/update/c;->a(Landroid/content/Context;Lcom/x/plus/pro/beans/upgrade/d;)Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 2226
    iget-object v0, p0, Lcom/x/plus/pro/update/c$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/x/plus/pro/update/c;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c9

    .line 2236
    iget-object v0, p0, Lcom/x/plus/pro/update/c$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/x/plus/pro/f/j;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c2

    .line 4012
    iget-object p1, p1, Lcom/x/plus/pro/beans/upgrade/d;->a:Lcom/x/plus/pro/beans/upgrade/UpgradePackageModel;

    .line 2236
    invoke-virtual {p1}, Lcom/x/plus/pro/beans/upgrade/UpgradePackageModel;->a()Lcom/x/plus/pro/beans/upgrade/a;

    move-result-object p1

    .line 5008
    iget-boolean p1, p1, Lcom/x/plus/pro/beans/upgrade/a;->a:Z

    if-eqz p1, :cond_c2

    .line 2237
    iget-object p1, p0, Lcom/x/plus/pro/update/c$1;->c:Lcom/x/plus/pro/update/c;

    iget-object v0, p0, Lcom/x/plus/pro/update/c$1;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/x/plus/pro/update/c;->a(Landroid/content/Context;Lcom/x/plus/pro/update/c$a;)V

    return-void

    .line 2239
    :cond_c2
    iget-object p1, p0, Lcom/x/plus/pro/update/c$1;->c:Lcom/x/plus/pro/update/c;

    iget-object v0, p0, Lcom/x/plus/pro/update/c$1;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/x/plus/pro/update/c;->b(Lcom/x/plus/pro/update/c;Landroid/content/Context;)V

    :cond_c9
    return-void

    .line 2249
    :cond_ca
    iget-object p1, p0, Lcom/x/plus/pro/update/c$1;->b:Lcom/x/plus/pro/update/b;

    if-eqz p1, :cond_df

    .line 2250
    iget-object p1, p0, Lcom/x/plus/pro/update/c$1;->b:Lcom/x/plus/pro/update/b;

    iget-object v0, p0, Lcom/x/plus/pro/update/c$1;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    invoke-interface {p1}, Lcom/x/plus/pro/update/b;->a()V
    :try_end_df
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_df} :catch_e0

    :cond_df
    return-void

    :catch_e0
    move-exception p1

    .line 2254
    iget-object v0, p0, Lcom/x/plus/pro/update/c$1;->b:Lcom/x/plus/pro/update/b;

    if-eqz v0, :cond_f6

    .line 2255
    iget-object v0, p0, Lcom/x/plus/pro/update/c$1;->b:Lcom/x/plus/pro/update/b;

    iget-object p0, p0, Lcom/x/plus/pro/update/c$1;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0c003e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    invoke-interface {v0}, Lcom/x/plus/pro/update/b;->a()V

    .line 2257
    :cond_f6
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method
