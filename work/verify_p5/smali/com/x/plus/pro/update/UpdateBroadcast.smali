.class public Lcom/x/plus/pro/update/UpdateBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "UpdateBroadcast.java"


# static fields
.field private static final a:Ljava/lang/String; = "UpdateBroadcast"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p0, "com.x.plus.pro.UpdateBroadcast"

    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 22
    invoke-static {p1}, Lcom/x/plus/pro/update/e;->a(Landroid/content/Context;)V

    .line 24
    :cond_0
    invoke-static {}, Lcom/x/plus/pro/base/BaseApp;->a()Lcom/x/plus/pro/base/BaseApp;

    move-result-object p0

    invoke-virtual {p0}, Lcom/x/plus/pro/base/BaseApp;->b()V

    return-void
.end method
