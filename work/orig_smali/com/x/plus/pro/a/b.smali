.class public Lcom/x/plus/pro/a/b;
.super Ljava/lang/Object;
.source "DeviceManage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/plus/pro/a/b$a;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String; = "b"


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Lcom/x/plus/pro/a/b$a;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/x/plus/pro/beans/config/ApkInfo;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/x/plus/pro/update/b;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Lcom/x/plus/pro/a/b$1;

    invoke-direct {v0, p0}, Lcom/x/plus/pro/a/b$1;-><init>(Lcom/x/plus/pro/a/b;)V

    iput-object v0, p0, Lcom/x/plus/pro/a/b;->d:Lcom/x/plus/pro/update/b;

    .line 42
    iput-object p1, p0, Lcom/x/plus/pro/a/b;->a:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/x/plus/pro/a/b;)Lcom/x/plus/pro/a/b$a;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/x/plus/pro/a/b;->b:Lcom/x/plus/pro/a/b$a;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 5

    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-ge v0, v2, :cond_8

    return v1

    .line 97
    :cond_8
    new-instance v0, Lcom/huawei/android/app/admin/DevicePackageManager;

    invoke-direct {v0}, Lcom/huawei/android/app/admin/DevicePackageManager;-><init>()V

    .line 98
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/x/plus/pro/dm/DeviceManageReceiver;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    :try_start_14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {v0, v2, v3}, Lcom/huawei/android/app/admin/DevicePackageManager;->getSysAppList(Landroid/content/ComponentName;Ljava/util/List;)Ljava/util/List;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_23} :catch_24

    goto :goto_3a

    :catch_24
    move-exception p0

    .line 107
    instance-of v0, p0, Ljava/lang/NoSuchMethodError;

    if-nez v0, :cond_3c

    const-string v0, "com.huawei.android.util.NoExtAPIException"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3a

    goto :goto_3c

    :cond_3a
    :goto_3a
    const/4 p0, 0x1

    return p0

    :cond_3c
    :goto_3c
    return v1
.end method

.method static synthetic b(Lcom/x/plus/pro/a/b;)V
    .registers 1

    .line 27
    invoke-virtual {p0}, Lcom/x/plus/pro/a/b;->a()V

    return-void
.end method

.method private b(Landroid/content/Context;)Z
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/x/plus/pro/a/b;->c:Ljava/util/List;

    if-eqz v0, :cond_20

    .line 124
    iget-object p0, p0, Lcom/x/plus/pro/a/b;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/plus/pro/beans/config/ApkInfo;

    .line 1058
    iget-object v0, v0, Lcom/x/plus/pro/beans/ApkBaseInfo;->d:Ljava/lang/String;

    .line 125
    invoke-static {p1, v0}, Lcom/x/plus/pro/e/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 158
    iget-object v0, p0, Lcom/x/plus/pro/a/b;->a:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/x/plus/pro/a/b;->b(Landroid/content/Context;)Z

    move-result v0

    const-wide/16 v1, 0xa

    if-eqz v0, :cond_12

    .line 159
    iget-object p0, p0, Lcom/x/plus/pro/a/b;->b:Lcom/x/plus/pro/a/b$a;

    const/16 v0, 0x66

    invoke-virtual {p0, v0, v1, v2}, Lcom/x/plus/pro/a/b$a;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 161
    :cond_12
    iget-object p0, p0, Lcom/x/plus/pro/a/b;->b:Lcom/x/plus/pro/a/b$a;

    const/16 v0, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/x/plus/pro/a/b$a;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
