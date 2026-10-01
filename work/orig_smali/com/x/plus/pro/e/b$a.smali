.class final Lcom/x/plus/pro/e/b$a;
.super Landroid/content/BroadcastReceiver;
.source "InitializeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/plus/pro/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/x/plus/pro/e/b;


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 613
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 617
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_41

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 618
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 619
    iget-object p1, p0, Lcom/x/plus/pro/e/b$a;->a:Lcom/x/plus/pro/e/b;

    .line 620
    invoke-static {p1}, Lcom/x/plus/pro/e/b;->a(Lcom/x/plus/pro/e/b;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-nez p1, :cond_23

    return-void

    .line 624
    :cond_23
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_3c

    .line 625
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p2

    if-eqz p2, :cond_3c

    .line 626
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3b

    .line 628
    iget-object p0, p0, Lcom/x/plus/pro/e/b$a;->a:Lcom/x/plus/pro/e/b;

    invoke-virtual {p0}, Lcom/x/plus/pro/e/b;->g()V

    :cond_3b
    return-void

    .line 631
    :cond_3c
    iget-object p0, p0, Lcom/x/plus/pro/e/b$a;->a:Lcom/x/plus/pro/e/b;

    invoke-virtual {p0}, Lcom/x/plus/pro/e/b;->g()V

    :cond_41
    return-void
.end method
