.class final Lcom/x/plus/pro/register/c$b;
.super Landroid/content/BroadcastReceiver;
.source "RegisterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/plus/pro/register/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/x/plus/pro/register/c;


# direct methods
.method constructor <init>(Lcom/x/plus/pro/register/c;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/x/plus/pro/register/c$b;->a:Lcom/x/plus/pro/register/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.x.plus.pro.recev.sfid"

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 69
    iget-object p1, p0, Lcom/x/plus/pro/register/c$b;->a:Lcom/x/plus/pro/register/c;

    const-string v0, "gsfId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/x/plus/pro/register/c;->a(Lcom/x/plus/pro/register/c;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    iget-object p1, p0, Lcom/x/plus/pro/register/c$b;->a:Lcom/x/plus/pro/register/c;

    invoke-static {p1}, Lcom/x/plus/pro/register/c;->a(Lcom/x/plus/pro/register/c;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/x/plus/pro/register/c$b;->a:Lcom/x/plus/pro/register/c;

    invoke-static {p1}, Lcom/x/plus/pro/register/c;->b(Lcom/x/plus/pro/register/c;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "gsfId"

    iget-object v0, p0, Lcom/x/plus/pro/register/c$b;->a:Lcom/x/plus/pro/register/c;

    invoke-static {v0}, Lcom/x/plus/pro/register/c;->a(Lcom/x/plus/pro/register/c;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    iget-object p1, p0, Lcom/x/plus/pro/register/c$b;->a:Lcom/x/plus/pro/register/c;

    invoke-static {p1}, Lcom/x/plus/pro/register/c;->c(Lcom/x/plus/pro/register/c;)Lcom/x/plus/pro/e/c;

    move-result-object p1

    const-string p2, "com.x.idhelper"

    invoke-virtual {p1, p2}, Lcom/x/plus/pro/e/c;->b(Ljava/lang/String;)V

    .line 78
    :cond_0
    iget-object p0, p0, Lcom/x/plus/pro/register/c$b;->a:Lcom/x/plus/pro/register/c;

    invoke-static {p0}, Lcom/x/plus/pro/register/c;->d(Lcom/x/plus/pro/register/c;)V

    :cond_1
    return-void
.end method
