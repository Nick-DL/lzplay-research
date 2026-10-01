.class public Lcom/x/plus/pro/e/c;
.super Ljava/lang/Object;
.source "InstallHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/plus/pro/e/c$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "c"


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/Runnable;

.field c:Landroid/os/Handler;

.field d:Lcom/x/plus/pro/e/a;

.field e:Ljava/lang/String;

.field private g:Lcom/huawei/android/app/admin/DevicePackageManager;

.field private h:Lcom/huawei/android/app/admin/DeviceHwSystemManager;

.field private i:Landroid/content/ComponentName;

.field private j:Ljava/lang/Runnable;

.field private k:Lcom/x/plus/pro/e/c$a;

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/x/plus/pro/e/a;)V
    .registers 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 51
    iput-object v0, p0, Lcom/x/plus/pro/e/c;->l:Ljava/lang/String;

    const-string v0, ""

    .line 52
    iput-object v0, p0, Lcom/x/plus/pro/e/c;->e:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/x/plus/pro/e/c;->a:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/x/plus/pro/e/c;->d:Lcom/x/plus/pro/e/a;

    .line 57
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/x/plus/pro/e/c;->c:Landroid/os/Handler;

    .line 58
    new-instance p2, Lcom/huawei/android/app/admin/DevicePackageManager;

    invoke-direct {p2}, Lcom/huawei/android/app/admin/DevicePackageManager;-><init>()V

    iput-object p2, p0, Lcom/x/plus/pro/e/c;->g:Lcom/huawei/android/app/admin/DevicePackageManager;

    .line 59
    new-instance p2, Lcom/huawei/android/app/admin/DeviceHwSystemManager;

    invoke-direct {p2}, Lcom/huawei/android/app/admin/DeviceHwSystemManager;-><init>()V

    iput-object p2, p0, Lcom/x/plus/pro/e/c;->h:Lcom/huawei/android/app/admin/DeviceHwSystemManager;

    .line 60
    new-instance p2, Landroid/content/ComponentName;

    const-class v0, Lcom/x/plus/pro/dm/DeviceManageReceiver;

    invoke-direct {p2, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/x/plus/pro/e/c;->i:Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic a(Lcom/x/plus/pro/e/c;)Ljava/lang/String;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/x/plus/pro/e/c;->l:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    .line 255
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    const/4 v1, 0x0

    .line 257
    :try_start_7
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 258
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    .line 259
    array-length v0, p1

    move v2, v1

    :goto_15
    if-ge v2, v0, :cond_3b

    aget-object v3, p1, v2

    const-string v4, "hwFlags"

    .line 260
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const/4 v4, 0x1

    .line 261
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 263
    iget v5, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_38

    .line 264
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_32} :catch_3b
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_32} :catch_3b

    const/high16 v5, 0x2000000

    and-int/2addr v3, v5

    if-nez v3, :cond_38

    return v4

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :catch_3b
    :cond_3b
    return v1
.end method

.method static synthetic b(Lcom/x/plus/pro/e/c;)Ljava/lang/Runnable;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/x/plus/pro/e/c;->j:Ljava/lang/Runnable;

    return-object p0
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    const/4 v1, 0x0

    .line 280
    :try_start_7
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 281
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_d} :catch_13

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-eqz p0, :cond_12

    return p1

    :cond_12
    return v1

    :catch_13
    return v1
.end method

.method static synthetic c(Lcom/x/plus/pro/e/c;)Landroid/os/Handler;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/x/plus/pro/e/c;->c:Landroid/os/Handler;

    return-object p0
.end method

.method static c(Ljava/lang/String;)V
    .registers 2

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 291
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 292
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    .line 293
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 295
    :goto_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_22

    .line 296
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 297
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 300
    :cond_22
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/x/plus/pro/e/c;)Lcom/x/plus/pro/e/a;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/x/plus/pro/e/c;->d:Lcom/x/plus/pro/e/a;

    return-object p0
.end method

.method static synthetic e(Lcom/x/plus/pro/e/c;)Ljava/lang/String;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/x/plus/pro/e/c;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/x/plus/pro/e/c;)Ljava/lang/Runnable;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/x/plus/pro/e/c;->b:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 214
    iget-object v0, p0, Lcom/x/plus/pro/e/c;->k:Lcom/x/plus/pro/e/c$a;

    if-nez v0, :cond_2b

    .line 215
    new-instance v0, Lcom/x/plus/pro/e/c$a;

    invoke-direct {v0, p0}, Lcom/x/plus/pro/e/c$a;-><init>(Lcom/x/plus/pro/e/c;)V

    iput-object v0, p0, Lcom/x/plus/pro/e/c;->k:Lcom/x/plus/pro/e/c$a;

    .line 216
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 217
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 218
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 219
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 220
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/x/plus/pro/e/c;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/x/plus/pro/e/c;->k:Lcom/x/plus/pro/e/c$a;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2b
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 6

    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_27

    .line 117
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/x/plus/pro/e/c;->a:Landroid/content/Context;

    sget-object v2, Lcom/x/plus/pro/d/a;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroidx/core/content/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/x/plus/pro/e/c;->a:Landroid/content/Context;

    const-string v2, "android"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 120
    iget-object v1, p0, Lcom/x/plus/pro/e/c;->g:Lcom/huawei/android/app/admin/DevicePackageManager;

    iget-object v2, p0, Lcom/x/plus/pro/e/c;->i:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/huawei/android/app/admin/DevicePackageManager;->installPackage(Landroid/content/ComponentName;Ljava/lang/String;)V

    goto :goto_2e

    .line 122
    :cond_27
    iget-object v0, p0, Lcom/x/plus/pro/e/c;->g:Lcom/huawei/android/app/admin/DevicePackageManager;

    iget-object v1, p0, Lcom/x/plus/pro/e/c;->i:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/android/app/admin/DevicePackageManager;->installPackage(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 124
    :goto_2e
    iget-object v0, p0, Lcom/x/plus/pro/e/c;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/x/plus/pro/f/i;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/x/plus/pro/e/c;->l:Ljava/lang/String;

    .line 126
    new-instance v0, Lcom/x/plus/pro/e/c$1;

    invoke-direct {v0, p0, p1}, Lcom/x/plus/pro/e/c$1;-><init>(Lcom/x/plus/pro/e/c;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/x/plus/pro/e/c;->j:Ljava/lang/Runnable;

    .line 137
    iget-object p1, p0, Lcom/x/plus/pro/e/c;->c:Landroid/os/Handler;

    iget-object p0, p0, Lcom/x/plus/pro/e/c;->j:Ljava/lang/Runnable;

    const-wide/32 v0, 0x1d4c0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method final a(Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 199
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "privPermission"

    const/4 v2, 0x1

    .line 200
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "undetachable"

    const/4 v3, 0x0

    .line 201
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "addItem"

    .line 202
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 205
    :try_start_16
    iget-object v1, p0, Lcom/x/plus/pro/e/c;->g:Lcom/huawei/android/app/admin/DevicePackageManager;

    iget-object p0, p0, Lcom/x/plus/pro/e/c;->i:Landroid/content/ComponentName;

    invoke-virtual {v1, p0, p1, v0}, Lcom/huawei/android/app/admin/DevicePackageManager;->setSysAppList(Landroid/content/ComponentName;Ljava/util/Map;Landroid/os/Bundle;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    return-void
.end method

.method final b()V
    .registers 3

    .line 226
    iget-object v0, p0, Lcom/x/plus/pro/e/c;->k:Lcom/x/plus/pro/e/c$a;

    if-eqz v0, :cond_e

    .line 227
    iget-object v0, p0, Lcom/x/plus/pro/e/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/x/plus/pro/e/c;->k:Lcom/x/plus/pro/e/c$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 228
    iput-object v0, p0, Lcom/x/plus/pro/e/c;->k:Lcom/x/plus/pro/e/c$a;

    :cond_e
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 5

    .line 145
    iget-object v0, p0, Lcom/x/plus/pro/e/c;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/x/plus/pro/e/c;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 146
    iget-object v0, p0, Lcom/x/plus/pro/e/c;->g:Lcom/huawei/android/app/admin/DevicePackageManager;

    iget-object v1, p0, Lcom/x/plus/pro/e/c;->i:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/huawei/android/app/admin/DevicePackageManager;->uninstallPackage(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 147
    iput-object p1, p0, Lcom/x/plus/pro/e/c;->e:Ljava/lang/String;

    .line 149
    new-instance v0, Lcom/x/plus/pro/e/c$2;

    invoke-direct {v0, p0, p1}, Lcom/x/plus/pro/e/c$2;-><init>(Lcom/x/plus/pro/e/c;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/x/plus/pro/e/c;->b:Ljava/lang/Runnable;

    .line 160
    iget-object p1, p0, Lcom/x/plus/pro/e/c;->c:Landroid/os/Handler;

    iget-object p0, p0, Lcom/x/plus/pro/e/c;->b:Ljava/lang/Runnable;

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 162
    :cond_24
    iget-object v0, p0, Lcom/x/plus/pro/e/c;->d:Lcom/x/plus/pro/e/a;

    if-eqz v0, :cond_2d

    .line 163
    iget-object p0, p0, Lcom/x/plus/pro/e/c;->d:Lcom/x/plus/pro/e/a;

    invoke-interface {p0, p1}, Lcom/x/plus/pro/e/a;->a(Ljava/lang/String;)V

    :cond_2d
    return-void
.end method

.method public final c()V
    .registers 3

    .line 233
    invoke-virtual {p0}, Lcom/x/plus/pro/e/c;->b()V

    .line 234
    iget-object v0, p0, Lcom/x/plus/pro/e/c;->j:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/x/plus/pro/e/c;->c:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 235
    iget-object v0, p0, Lcom/x/plus/pro/e/c;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/x/plus/pro/e/c;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 237
    :cond_12
    iget-object v0, p0, Lcom/x/plus/pro/e/c;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/x/plus/pro/e/c;->c:Landroid/os/Handler;

    if-eqz v0, :cond_21

    .line 238
    iget-object v0, p0, Lcom/x/plus/pro/e/c;->c:Landroid/os/Handler;

    iget-object p0, p0, Lcom/x/plus/pro/e/c;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_21
    return-void
.end method
