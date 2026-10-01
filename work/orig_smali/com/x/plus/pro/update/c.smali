.class public Lcom/x/plus/pro/update/c;
.super Ljava/lang/Object;
.source "UpdateImp.java"

# interfaces
.implements Lcom/x/plus/pro/update/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/plus/pro/update/c$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String; = "c"

.field private static b:Ljava/lang/String; = "abksfsijifefe"

.field private static c:Ljava/lang/StringBuffer;

.field private static d:Lcom/a/a/e;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/x/plus/pro/update/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Landroid/content/SharedPreferences;

.field private f:Lcom/huawei/android/app/admin/DevicePackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 76
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/x/plus/pro/update/c;->c:Ljava/lang/StringBuffer;

    .line 77
    new-instance v0, Lcom/a/a/e;

    invoke-direct {v0}, Lcom/a/a/e;-><init>()V

    sput-object v0, Lcom/x/plus/pro/update/c;->d:Lcom/a/a/e;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/x/plus/pro/update/c;->h:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/huawei/android/app/admin/DevicePackageManager;

    invoke-direct {v0}, Lcom/huawei/android/app/admin/DevicePackageManager;-><init>()V

    iput-object v0, p0, Lcom/x/plus/pro/update/c;->f:Lcom/huawei/android/app/admin/DevicePackageManager;

    return-void
.end method

.method static synthetic a(Lcom/x/plus/pro/update/c;Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 2

    .line 64
    invoke-direct {p0, p1}, Lcom/x/plus/pro/update/c;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/HashMap;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 159
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 160
    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 163
    :cond_21
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 164
    sget-object v1, Lcom/x/plus/pro/update/c;->c:Ljava/lang/StringBuffer;

    sget-object v3, Lcom/x/plus/pro/update/c;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 165
    array-length v1, v0

    :goto_30
    if-ge v2, v1, :cond_4a

    aget-object v3, v0, v2

    .line 166
    sget-object v4, Lcom/x/plus/pro/update/c;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 168
    :cond_4a
    sget-object p0, Lcom/x/plus/pro/update/c;->c:Ljava/lang/StringBuffer;

    const-string v0, "XPP"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    sget-object p0, Lcom/x/plus/pro/update/c;->c:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/x/plus/pro/f/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/x/plus/pro/update/c;Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/x/plus/pro/update/c;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/x/plus/pro/update/c;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 30898
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/x/plus/pro/dm/DeviceManageReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30900
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 30902
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30904
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v2, "privPermission"

    const/4 v3, 0x1

    .line 30905
    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "undetachable"

    const/4 v4, 0x0

    .line 30906
    invoke-virtual {p3, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "addItem"

    .line 30907
    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 30910
    :try_start_29
    iget-object v2, p0, Lcom/x/plus/pro/update/c;->f:Lcom/huawei/android/app/admin/DevicePackageManager;

    invoke-virtual {v2, v0, v1, p3}, Lcom/huawei/android/app/admin/DevicePackageManager;->setSysAppList(Landroid/content/ComponentName;Ljava/util/Map;Landroid/os/Bundle;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2e} :catch_2e

    .line 30918
    :catch_2e
    :try_start_2e
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le p3, v1, :cond_4e

    .line 30919
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30920
    sget-object p2, Lcom/x/plus/pro/d/a;->a:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Landroidx/core/content/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    const-string p3, "android"

    .line 30921
    invoke-virtual {p1, p3, p2, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 30922
    iget-object p3, p0, Lcom/x/plus/pro/update/c;->f:Lcom/huawei/android/app/admin/DevicePackageManager;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v0, p2}, Lcom/huawei/android/app/admin/DevicePackageManager;->installPackage(Landroid/content/ComponentName;Ljava/lang/String;)V

    goto :goto_53

    .line 30924
    :cond_4e
    iget-object p3, p0, Lcom/x/plus/pro/update/c;->f:Lcom/huawei/android/app/admin/DevicePackageManager;

    invoke-virtual {p3, v0, p2}, Lcom/huawei/android/app/admin/DevicePackageManager;->installPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_53} :catch_53

    .line 30933
    :catch_53
    :goto_53
    :try_start_53
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 30934
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30935
    iget-object p3, p0, Lcom/x/plus/pro/update/c;->f:Lcom/huawei/android/app/admin/DevicePackageManager;

    invoke-virtual {p3, v0, p2}, Lcom/huawei/android/app/admin/DevicePackageManager;->getSysAppList(Landroid/content/ComponentName;Ljava/util/List;)Ljava/util/List;
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_64} :catch_64

    .line 30948
    :catch_64
    invoke-direct {p0, p1}, Lcom/x/plus/pro/update/c;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    if-eqz p2, :cond_7f

    .line 30949
    invoke-direct {p0, p1}, Lcom/x/plus/pro/update/c;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "com.x.plus.pro.update.installTimeStamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_7f
    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    .line 64
    sget-object v0, Lcom/x/plus/pro/update/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    if-eqz p2, :cond_20

    if-eqz p1, :cond_20

    .line 621
    :try_start_5
    invoke-direct {p0, p1}, Lcom/x/plus/pro/update/c;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 622
    invoke-direct {p0, p1}, Lcom/x/plus/pro/update/c;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "com.x.plus.pro.update.updateUpgrade"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    goto :goto_20

    :catchall_1d
    move-exception p1

    .line 619
    monitor-exit p0

    throw p1

    .line 625
    :cond_20
    :goto_20
    monitor-exit p0

    return-void
.end method

.method static synthetic b(Lcom/x/plus/pro/update/c;Landroid/content/Context;)V
    .registers 9

    .line 19573
    invoke-virtual {p0}, Lcom/x/plus/pro/update/c;->a()Lcom/x/plus/pro/beans/upgrade/d;

    move-result-object v0

    .line 20012
    iget-object v0, v0, Lcom/x/plus/pro/beans/upgrade/d;->a:Lcom/x/plus/pro/beans/upgrade/UpgradePackageModel;

    if-eqz v0, :cond_cc

    .line 19574
    invoke-virtual {p0}, Lcom/x/plus/pro/update/c;->a()Lcom/x/plus/pro/beans/upgrade/d;

    move-result-object v0

    .line 21012
    iget-object v0, v0, Lcom/x/plus/pro/beans/upgrade/d;->a:Lcom/x/plus/pro/beans/upgrade/UpgradePackageModel;

    .line 19574
    invoke-virtual {v0}, Lcom/x/plus/pro/beans/upgrade/UpgradePackageModel;->a()Lcom/x/plus/pro/beans/upgrade/a;

    move-result-object v0

    if-eqz v0, :cond_cc

    .line 19575
    invoke-virtual {p0}, Lcom/x/plus/pro/update/c;->a()Lcom/x/plus/pro/beans/upgrade/d;

    move-result-object v0

    .line 22012
    iget-object v0, v0, Lcom/x/plus/pro/beans/upgrade/d;->a:Lcom/x/plus/pro/beans/upgrade/UpgradePackageModel;

    .line 19575
    invoke-virtual {v0}, Lcom/x/plus/pro/beans/upgrade/UpgradePackageModel;->a()Lcom/x/plus/pro/beans/upgrade/a;

    move-result-object v0

    .line 22016
    iget-object v0, v0, Lcom/x/plus/pro/beans/upgrade/a;->b:Lcom/x/plus/pro/beans/upgrade/c;

    if-eqz v0, :cond_cc

    .line 19577
    invoke-virtual {p0}, Lcom/x/plus/pro/update/c;->a()Lcom/x/plus/pro/beans/upgrade/d;

    move-result-object v0

    .line 23012
    iget-object v0, v0, Lcom/x/plus/pro/beans/upgrade/d;->a:Lcom/x/plus/pro/beans/upgrade/UpgradePackageModel;

    .line 19577
    invoke-virtual {v0}, Lcom/x/plus/pro/beans/upgrade/UpgradePackageModel;->a()Lcom/x/plus/pro/beans/upgrade/a;

    move-result-object v0

    .line 23016
    iget-object v0, v0, Lcom/x/plus/pro/beans/upgrade/a;->b:Lcom/x/plus/pro/beans/upgrade/c;

    .line 23040
    iget-boolean v0, v0, Lcom/x/plus/pro/beans/upgrade/c;->a:Z

    if-nez v0, :cond_34

    goto/16 :goto_cc

    .line 19581
    :cond_34
    invoke-virtual {p0}, Lcom/x/plus/pro/update/c;->a()Lcom/x/plus/pro/beans/upgrade/d;

    move-result-object v0

    .line 24012
    iget-object v0, v0, Lcom/x/plus/pro/beans/upgrade/d;->a:Lcom/x/plus/pro/beans/upgrade/UpgradePackageModel;

    .line 19581
    invoke-virtual {v0}, Lcom/x/plus/pro/beans/upgrade/UpgradePackageModel;->a()Lcom/x/plus/pro/beans/upgrade/a;

    move-result-object v0

    .line 24016
    iget-object v0, v0, Lcom/x/plus/pro/beans/upgrade/a;->b:Lcom/x/plus/pro/beans/upgrade/c;

    .line 24024
    iget-object v0, v0, Lcom/x/plus/pro/beans/upgrade/c;->c:Ljava/lang/String;

    .line 19583
    invoke-virtual {p0}, Lcom/x/plus/pro/update/c;->a()Lcom/x/plus/pro/beans/upgrade/d;

    move-result-object p0

    .line 25012
    iget-object p0, p0, Lcom/x/plus/pro/beans/upgrade/d;->a:Lcom/x/plus/pro/beans/upgrade/UpgradePackageModel;

    .line 19583
    invoke-virtual {p0}, Lcom/x/plus/pro/beans/upgrade/UpgradePackageModel;->a()Lcom/x/plus/pro/beans/upgrade/a;

    move-result-object p0

    .line 25016
    iget-object p0, p0, Lcom/x/plus/pro/beans/upgrade/a;->b:Lcom/x/plus/pro/beans/upgrade/c;

    .line 26016
    iget-object p0, p0, Lcom/x/plus/pro/beans/upgrade/c;->b:Ljava/lang/String;

    const-string v1, "notification"

    .line 19585
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const-string v2, "xpp_channel"

    const-string v3, "upgrade notification"

    .line 19589
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_6b

    .line 19590
    new-instance v4, Landroid/app/NotificationChannel;

    const/4 v5, 0x4

    invoke-direct {v4, v2, v3, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 19592
    :cond_6b
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.x.plus.pro.UpdateNotifyClick"

    const/4 v5, 0x0

    const-class v6, Lcom/x/plus/pro/update/UpdateNotificationReceiver;

    invoke-direct {v3, v4, v5, p1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x0

    .line 19593
    invoke-static {p1, v4, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 19594
    new-instance v4, Landroidx/core/app/d$b;

    invoke-direct {v4, p1, v2}, Landroidx/core/app/d$b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 26191
    iget-object v2, v4, Landroidx/core/app/d$b;->N:Landroid/app/Notification;

    iget v5, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 26916
    iput-object v3, v4, Landroidx/core/app/d$b;->f:Landroid/app/PendingIntent;

    .line 27801
    iget-object v2, v4, Landroidx/core/app/d$b;->N:Landroid/app/Notification;

    const v3, 0x7f0b0013

    iput v3, v2, Landroid/app/Notification;->icon:I

    .line 19601
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0035

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 27825
    :cond_a1
    invoke-static {v0}, Landroidx/core/app/d$b;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v4, Landroidx/core/app/d$b;->d:Ljava/lang/CharSequence;

    .line 19603
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0c004a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 27833
    :cond_b8
    invoke-static {p0}, Landroidx/core/app/d$b;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v4, Landroidx/core/app/d$b;->e:Ljava/lang/CharSequence;

    const/4 p0, 0x1

    .line 28590
    new-instance p1, Landroidx/core/app/e;

    invoke-direct {p1, v4}, Landroidx/core/app/e;-><init>(Landroidx/core/app/d$b;)V

    invoke-virtual {p1}, Landroidx/core/app/e;->a()Landroid/app/Notification;

    move-result-object p1

    .line 19604
    invoke-virtual {v1, p0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_cc
    :goto_cc
    return-void
.end method

.method static synthetic b(Lcom/x/plus/pro/update/c;Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 28955
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/update/c;->b(Landroid/content/Context;)Lcom/x/plus/pro/beans/upgrade/UpgradePackageModel;

    move-result-object p0

    if-eqz p0, :cond_36

    .line 29042
    iget-object v0, p0, Lcom/x/plus/pro/beans/ApkBaseInfo;->b:Ljava/lang/String;

    .line 28956
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 28957
    invoke-static {p2}, Lcom/x/plus/pro/f/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 28958
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 30042
    iget-object v0, p0, Lcom/x/plus/pro/beans/ApkBaseInfo;->b:Ljava/lang/String;

    .line 28959
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_36

    .line 30058
    iget-object p2, p0, Lcom/x/plus/pro/beans/ApkBaseInfo;->d:Ljava/lang/String;

    .line 28960
    invoke-static {p1, p2}, Lcom/x/plus/pro/f/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 28961
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_36

    .line 30098
    iget-object p0, p0, Lcom/x/plus/pro/beans/ApkBaseInfo;->g:Ljava/lang/String;

    .line 28961
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_36

    const/4 p0, 0x1

    goto :goto_37

    :cond_36
    const/4 p0, 0x0

    :goto_37
    return p0
.end method

.method static synthetic c()Lcom/a/a/e;
    .registers 1

    .line 64
    sget-object v0, Lcom/x/plus/pro/update/c;->d:Lcom/a/a/e;

    return-object v0
.end method

.method static synthetic d(Landroid/content/Context;)Z
    .registers 2

    .line 19547
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/x/plus/pro/f/i;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    sget-boolean p0, Lcom/x/plus/pro/base/BaseApp;->a:Z

    if-nez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method private e(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .line 131
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 133
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "name"

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "version_name"

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/x/plus/pro/f/i;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "version_code"

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/x/plus/pro/f/i;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 138
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 139
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/update/c;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_85

    .line 140
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_85

    .line 141
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_40
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_85

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/x/plus/pro/beans/config/ApkInfo;

    .line 142
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "name"

    .line 2058
    iget-object v4, v1, Lcom/x/plus/pro/beans/ApkBaseInfo;->d:Ljava/lang/String;

    .line 143
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "version_name"

    .line 3058
    iget-object v4, v1, Lcom/x/plus/pro/beans/ApkBaseInfo;->d:Ljava/lang/String;

    .line 144
    invoke-static {p1, v4}, Lcom/x/plus/pro/f/i;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "version_code"

    .line 4058
    iget-object v4, v1, Lcom/x/plus/pro/beans/ApkBaseInfo;->d:Ljava/lang/String;

    .line 145
    invoke-static {p1, v4}, Lcom/x/plus/pro/f/i;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "md5"

    .line 5058
    iget-object v1, v1, Lcom/x/plus/pro/beans/ApkBaseInfo;->d:Ljava/lang/String;

    .line 146
    invoke-static {p1, v1}, Lcom/x/plus/pro/f/i;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/x/plus/pro/f/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_80
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_80} :catch_81

    goto :goto_40

    :catch_81
    move-exception p0

    .line 151
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 153
    :cond_85
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private f(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4

    .line 1005
    iget-object v0, p0, Lcom/x/plus/pro/update/c;->e:Landroid/content/SharedPreferences;

    if-nez v0, :cond_f

    if-eqz p1, :cond_f

    const-string v0, "com.x.plus.pro.update"

    const/4 v1, 0x0

    .line 1007
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/x/plus/pro/update/c;->e:Landroid/content/SharedPreferences;

    .line 1010
    :cond_f
    iget-object p0, p0, Lcom/x/plus/pro/update/c;->e:Landroid/content/SharedPreferences;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/x/plus/pro/beans/upgrade/d;
    .registers 4

    .line 533
    iget-object v0, p0, Lcom/x/plus/pro/update/c;->e:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 536
    :cond_6
    iget-object p0, p0, Lcom/x/plus/pro/update/c;->e:Landroid/content/SharedPreferences;

    const-string v0, "com.x.plus.pro.update.updateUpgrade"

    const-string v2, ""

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 537
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 538
    sget-object v0, Lcom/x/plus/pro/update/c;->d:Lcom/a/a/e;

    const-class v1, Lcom/x/plus/pro/beans/upgrade/d;

    invoke-virtual {v0, p0, v1}, Lcom/a/a/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/x/plus/pro/beans/upgrade/d;

    return-object p0

    :cond_21
    return-object v1
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/x/plus/pro/beans/config/ApkInfo;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_30

    .line 673
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-ne p0, v0, :cond_b

    const-string p0, "Xpp_P.json"

    goto :goto_d

    :cond_b
    const-string p0, "Xpp_Q.json"

    .line 674
    :goto_d
    sget-object v0, Lcom/x/plus/pro/update/c;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/x/plus/pro/b/b;->a(Ljava/lang/String;)Lcom/x/plus/pro/b/a;

    move-result-object v0

    .line 677
    invoke-static {p1, p0}, Lcom/x/plus/pro/f/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 678
    invoke-interface {v0, p0}, Lcom/x/plus/pro/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 680
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_30

    .line 681
    sget-object p1, Lcom/x/plus/pro/update/c;->d:Lcom/a/a/e;

    const-class v0, Lcom/x/plus/pro/beans/config/a;

    invoke-virtual {p1, p0, v0}, Lcom/a/a/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/x/plus/pro/beans/config/a;

    if-eqz p0, :cond_30

    .line 16014
    iget-object p0, p0, Lcom/x/plus/pro/beans/config/a;->a:Ljava/util/List;

    return-object p0

    :cond_30
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 9

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "uuid"

    .line 84
    invoke-static {p1}, Lcom/x/plus/pro/f/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "brand"

    .line 85
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "model"

    .line 86
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "product"

    const-string v2, "Trip"

    .line 87
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "time"

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {v0}, Lcom/x/plus/pro/update/c;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/x/plus/pro/update/c;->g:Ljava/lang/String;

    .line 91
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 94
    :try_start_43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_60

    const-string v2, "en"

    .line 98
    :cond_60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7c

    const-string v3, "GB"

    :cond_7c
    const-string v4, "uuid"

    .line 102
    invoke-static {p1}, Lcom/x/plus/pro/f/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "brand"

    .line 103
    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "model"

    .line 104
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "product"

    const-string v5, "Trip"

    .line 105
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "time"

    const-string v5, "time"

    .line 106
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sign"

    .line 107
    sget-object v4, Lcom/x/plus/pro/update/c;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "os"

    const-string v4, "Android"

    .line 108
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "os_version"

    .line 109
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "language"

    .line 110
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "region"

    .line 111
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "wifi"

    .line 112
    invoke-static {p1}, Lcom/x/plus/pro/f/h;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_cf

    const-string v2, "1"

    goto :goto_d1

    :cond_cf
    const-string v2, "0"

    :goto_d1
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "version_code"

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/x/plus/pro/f/i;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "version_name"

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/x/plus/pro/f/i;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "upg_params"

    .line 115
    invoke-direct {p0, p1}, Lcom/x/plus/pro/update/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "sections"

    .line 116
    invoke-virtual {v1, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "ui"

    const-string p1, "1"

    .line 117
    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_10f
    .catch Lorg/json/JSONException; {:try_start_43 .. :try_end_10f} :catch_110

    goto :goto_114

    :catch_110
    move-exception p0

    .line 119
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_114
    return-object v1
.end method

.method public final a(Landroid/content/Context;Lcom/x/plus/pro/update/c$a;)V
    .registers 11

    .line 795
    invoke-virtual {p0}, Lcom/x/plus/pro/update/c;->a()Lcom/x/plus/pro/beans/upgrade/d;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 18012
    iget-object v1, v0, Lcom/x/plus/pro/beans/upgrade/d;->a:Lcom/x/plus/pro/beans/upgrade/UpgradePackageModel;

    if-nez v1, :cond_b

    goto :goto_5b

    .line 19012
    :cond_b
    iget-object v0, v0, Lcom/x/plus/pro/beans/upgrade/d;->a:Lcom/x/plus/pro/beans/upgrade/UpgradePackageModel;

    .line 19034
    iget-object v1, v0, Lcom/x/plus/pro/beans/ApkBaseInfo;->a:Ljava/lang/String;

    .line 19106
    iget-object v7, v0, Lcom/x/plus/pro/beans/ApkBaseInfo;->h:Ljava/lang/String;

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/liulishuo/filedownloader/h/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "updatefile.apk"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 810
    invoke-static {}, Lcom/liulishuo/filedownloader/s;->a()Lcom/liulishuo/filedownloader/s;

    invoke-static {v1}, Lcom/liulishuo/filedownloader/s;->a(Ljava/lang/String;)Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    .line 811
    invoke-interface {v0, v6}, Lcom/liulishuo/filedownloader/a;->b(Ljava/lang/String;)Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    .line 812
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->b()Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    .line 813
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->a()Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    .line 814
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->d()Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    .line 815
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->c()Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    .line 816
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->f()Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    new-instance v1, Lcom/x/plus/pro/update/c$2;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/x/plus/pro/update/c$2;-><init>(Lcom/x/plus/pro/update/c;Lcom/x/plus/pro/update/c$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/a;->a(Lcom/liulishuo/filedownloader/i;)Lcom/liulishuo/filedownloader/a;

    move-result-object p0

    .line 890
    invoke-interface {p0}, Lcom/liulishuo/filedownloader/a;->j()I

    return-void

    :cond_5b
    :goto_5b
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/x/plus/pro/update/b;)V
    .registers 6

    const-string v0, "package"

    .line 177
    new-instance v1, Lcom/x/plus/pro/update/c$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/x/plus/pro/update/c$1;-><init>(Lcom/x/plus/pro/update/c;Landroid/content/Context;Lcom/x/plus/pro/update/b;)V

    .line 6126
    invoke-virtual {p0, p1, v0}, Lcom/x/plus/pro/update/c;->a(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 6127
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7026
    new-instance p1, Lcom/x/plus/pro/f/d$a;

    sget-object p3, Lcom/x/plus/pro/f/d$c;->POST:Lcom/x/plus/pro/f/d$c;

    invoke-direct {p1, p3, p2}, Lcom/x/plus/pro/f/d$a;-><init>(Lcom/x/plus/pro/f/d$c;Ljava/lang/String;)V

    .line 5487
    invoke-static {p0}, Lcom/x/plus/pro/f/k;->a(Ljava/lang/String;)[B

    move-result-object p0

    .line 7082
    iget-object p2, p1, Lcom/x/plus/pro/f/d$a;->a:Lcom/x/plus/pro/f/d$d;

    .line 7177
    iput-object p0, p2, Lcom/x/plus/pro/f/d$d;->d:[B

    .line 8106
    iget-object p0, p1, Lcom/x/plus/pro/f/d$a;->a:Lcom/x/plus/pro/f/d$d;

    const/16 p2, 0x1388

    .line 8185
    iput p2, p0, Lcom/x/plus/pro/f/d$d;->f:I

    .line 9112
    iget-object p0, p1, Lcom/x/plus/pro/f/d$a;->a:Lcom/x/plus/pro/f/d$d;

    .line 9193
    iput p2, p0, Lcom/x/plus/pro/f/d$d;->g:I

    .line 10122
    iget-object p0, p1, Lcom/x/plus/pro/f/d$a;->a:Lcom/x/plus/pro/f/d$d;

    .line 10201
    iput-object v1, p0, Lcom/x/plus/pro/f/d$d;->h:Lcom/x/plus/pro/f/d$b;

    .line 10123
    iget-object p0, p1, Lcom/x/plus/pro/f/d$a;->a:Lcom/x/plus/pro/f/d$d;

    invoke-static {p0}, Lcom/x/plus/pro/f/d$f;->a(Lcom/x/plus/pro/f/d$d;)V

    return-void
.end method

.method public final a(Lcom/x/plus/pro/update/b;)V
    .registers 2

    .line 1015
    sget-object p0, Lcom/x/plus/pro/update/c;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/x/plus/pro/beans/upgrade/d;)Z
    .registers 5

    .line 11012
    iget-object p0, p2, Lcom/x/plus/pro/beans/upgrade/d;->a:Lcom/x/plus/pro/beans/upgrade/UpgradePackageModel;

    .line 11050
    iget-object p2, p0, Lcom/x/plus/pro/beans/ApkBaseInfo;->c:Ljava/lang/String;

    .line 501
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_12

    .line 12050
    iget-object p2, p0, Lcom/x/plus/pro/beans/ApkBaseInfo;->c:Ljava/lang/String;

    .line 502
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_13

    :cond_12
    move p2, v0

    .line 508
    :goto_13
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/x/plus/pro/f/i;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-le p2, v1, :cond_2f

    .line 12098
    iget-object p0, p0, Lcom/x/plus/pro/beans/ApkBaseInfo;->g:Ljava/lang/String;

    .line 509
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/x/plus/pro/f/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2f

    const/4 p0, 0x1

    return p0

    :cond_2f
    return v0
.end method

.method public final a(Lcom/x/plus/pro/beans/upgrade/d;)Z
    .registers 2

    .line 13012
    iget-object p1, p1, Lcom/x/plus/pro/beans/upgrade/d;->a:Lcom/x/plus/pro/beans/upgrade/UpgradePackageModel;

    if-eqz p1, :cond_1e

    .line 515
    invoke-virtual {p0}, Lcom/x/plus/pro/update/c;->a()Lcom/x/plus/pro/beans/upgrade/d;

    move-result-object p1

    .line 14012
    iget-object p1, p1, Lcom/x/plus/pro/beans/upgrade/d;->a:Lcom/x/plus/pro/beans/upgrade/UpgradePackageModel;

    .line 515
    invoke-virtual {p1}, Lcom/x/plus/pro/beans/upgrade/UpgradePackageModel;->b()Lcom/x/plus/pro/beans/upgrade/b;

    move-result-object p1

    if-nez p1, :cond_11

    goto :goto_1e

    .line 519
    :cond_11
    invoke-virtual {p0}, Lcom/x/plus/pro/update/c;->a()Lcom/x/plus/pro/beans/upgrade/d;

    move-result-object p0

    .line 15012
    iget-object p0, p0, Lcom/x/plus/pro/beans/upgrade/d;->a:Lcom/x/plus/pro/beans/upgrade/UpgradePackageModel;

    .line 519
    invoke-virtual {p0}, Lcom/x/plus/pro/beans/upgrade/UpgradePackageModel;->b()Lcom/x/plus/pro/beans/upgrade/b;

    move-result-object p0

    .line 15040
    iget-boolean p0, p0, Lcom/x/plus/pro/beans/upgrade/b;->a:Z

    return p0

    :cond_1e
    :goto_1e
    const/4 p0, 0x0

    return p0
.end method

.method public final b(Landroid/content/Context;)Lcom/x/plus/pro/beans/upgrade/UpgradePackageModel;
    .registers 3

    if-eqz p1, :cond_29

    .line 696
    invoke-direct {p0, p1}, Lcom/x/plus/pro/update/c;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 697
    invoke-direct {p0, p1}, Lcom/x/plus/pro/update/c;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "com.x.plus.pro.update.updateUpgrade"

    const-string v0, ""

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 698
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_29

    .line 699
    sget-object p1, Lcom/x/plus/pro/update/c;->d:Lcom/a/a/e;

    const-class v0, Lcom/x/plus/pro/beans/upgrade/d;

    invoke-virtual {p1, p0, v0}, Lcom/a/a/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/x/plus/pro/beans/upgrade/d;

    if-eqz p0, :cond_29

    .line 17012
    iget-object p0, p0, Lcom/x/plus/pro/beans/upgrade/d;->a:Lcom/x/plus/pro/beans/upgrade/UpgradePackageModel;

    return-object p0

    :cond_29
    const/4 p0, 0x0

    return-object p0
.end method

.method public final c(Landroid/content/Context;)Lcom/x/plus/pro/beans/upgrade/b;
    .registers 2

    .line 728
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/update/c;->b(Landroid/content/Context;)Lcom/x/plus/pro/beans/upgrade/UpgradePackageModel;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 729
    invoke-virtual {p0}, Lcom/x/plus/pro/beans/upgrade/UpgradePackageModel;->b()Lcom/x/plus/pro/beans/upgrade/b;

    move-result-object p0

    return-object p0

    :cond_b
    new-instance p0, Lcom/x/plus/pro/beans/upgrade/b;

    invoke-direct {p0}, Lcom/x/plus/pro/beans/upgrade/b;-><init>()V

    return-object p0
.end method
