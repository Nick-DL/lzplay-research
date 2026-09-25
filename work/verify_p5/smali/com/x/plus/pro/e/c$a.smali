.class final Lcom/x/plus/pro/e/c$a;
.super Landroid/content/BroadcastReceiver;
.source "InstallHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/plus/pro/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/x/plus/pro/e/c;


# direct methods
.method constructor <init>(Lcom/x/plus/pro/e/c;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/x/plus/pro/e/c$a;->a:Lcom/x/plus/pro/e/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_3

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, ""

    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 98
    :cond_1
    iget-object p2, p0, Lcom/x/plus/pro/e/c$a;->a:Lcom/x/plus/pro/e/c;

    invoke-static {p2}, Lcom/x/plus/pro/e/c;->e(Lcom/x/plus/pro/e/c;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 99
    iget-object p2, p0, Lcom/x/plus/pro/e/c$a;->a:Lcom/x/plus/pro/e/c;

    invoke-static {p2}, Lcom/x/plus/pro/e/c;->f(Lcom/x/plus/pro/e/c;)Ljava/lang/Runnable;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 100
    iget-object p2, p0, Lcom/x/plus/pro/e/c$a;->a:Lcom/x/plus/pro/e/c;

    invoke-static {p2}, Lcom/x/plus/pro/e/c;->c(Lcom/x/plus/pro/e/c;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/x/plus/pro/e/c$a;->a:Lcom/x/plus/pro/e/c;

    invoke-static {v0}, Lcom/x/plus/pro/e/c;->f(Lcom/x/plus/pro/e/c;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 102
    :cond_2
    iget-object p2, p0, Lcom/x/plus/pro/e/c$a;->a:Lcom/x/plus/pro/e/c;

    invoke-static {p2}, Lcom/x/plus/pro/e/c;->d(Lcom/x/plus/pro/e/c;)Lcom/x/plus/pro/e/a;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 103
    iget-object p0, p0, Lcom/x/plus/pro/e/c$a;->a:Lcom/x/plus/pro/e/c;

    invoke-static {p0}, Lcom/x/plus/pro/e/c;->d(Lcom/x/plus/pro/e/c;)Lcom/x/plus/pro/e/a;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/x/plus/pro/e/a;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string p1, ""

    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 80
    :cond_4
    iget-object p2, p0, Lcom/x/plus/pro/e/c$a;->a:Lcom/x/plus/pro/e/c;

    invoke-static {p2}, Lcom/x/plus/pro/e/c;->a(Lcom/x/plus/pro/e/c;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 81
    iget-object p2, p0, Lcom/x/plus/pro/e/c$a;->a:Lcom/x/plus/pro/e/c;

    invoke-static {p2}, Lcom/x/plus/pro/e/c;->b(Lcom/x/plus/pro/e/c;)Ljava/lang/Runnable;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 82
    iget-object p2, p0, Lcom/x/plus/pro/e/c$a;->a:Lcom/x/plus/pro/e/c;

    invoke-static {p2}, Lcom/x/plus/pro/e/c;->c(Lcom/x/plus/pro/e/c;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/x/plus/pro/e/c$a;->a:Lcom/x/plus/pro/e/c;

    invoke-static {v0}, Lcom/x/plus/pro/e/c;->b(Lcom/x/plus/pro/e/c;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 85
    :cond_5
    iget-object p2, p0, Lcom/x/plus/pro/e/c$a;->a:Lcom/x/plus/pro/e/c;

    invoke-static {p2}, Lcom/x/plus/pro/e/c;->d(Lcom/x/plus/pro/e/c;)Lcom/x/plus/pro/e/a;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 86
    iget-object p0, p0, Lcom/x/plus/pro/e/c$a;->a:Lcom/x/plus/pro/e/c;

    invoke-static {p0}, Lcom/x/plus/pro/e/c;->d(Lcom/x/plus/pro/e/c;)Lcom/x/plus/pro/e/a;

    move-result-object p0

    const/4 p2, 0x1

    invoke-interface {p0, p2, p1}, Lcom/x/plus/pro/e/a;->a(ZLjava/lang/String;)V

    :cond_6
    return-void

    :cond_7
    :goto_1
    return-void
.end method
