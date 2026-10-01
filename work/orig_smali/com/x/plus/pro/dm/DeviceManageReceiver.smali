.class public Lcom/x/plus/pro/dm/DeviceManageReceiver;
.super Landroid/app/admin/DeviceAdminReceiver;
.source "DeviceManageReceiver.java"


# static fields
.field private static final a:Ljava/lang/String; = "DeviceManageReceiver"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Landroid/app/admin/DeviceAdminReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 4

    const-string v0, "device_policy"

    .line 42
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 43
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/x/plus/pro/dm/DeviceManageReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-wide/16 v0, 0x1388

    .line 25
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    .line 27
    sget-object v1, Lcom/x/plus/pro/dm/DeviceManageReceiver;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/x/plus/pro/f/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    :goto_e
    invoke-super {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onDisabled(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onEnabled(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 35
    invoke-super {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onEnabled(Landroid/content/Context;Landroid/content/Intent;)V

    .line 37
    invoke-static {}, Lcom/x/plus/pro/base/BaseApp;->a()Lcom/x/plus/pro/base/BaseApp;

    move-result-object p0

    invoke-virtual {p0}, Lcom/x/plus/pro/base/BaseApp;->b()V

    return-void
.end method
