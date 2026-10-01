.class public final Lcom/x/plus/pro/update/e;
.super Ljava/lang/Object;
.source "UpdateInstance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/plus/pro/update/e$a;
    }
.end annotation


# static fields
.field private static a:Lcom/x/plus/pro/update/a;

.field private static b:Lcom/x/plus/pro/update/a;

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/x/plus/pro/beans/config/ApkInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/x/plus/pro/update/e;->c:Ljava/util/List;

    .line 32
    new-instance v0, Lcom/x/plus/pro/update/c;

    invoke-direct {v0}, Lcom/x/plus/pro/update/c;-><init>()V

    sput-object v0, Lcom/x/plus/pro/update/e;->a:Lcom/x/plus/pro/update/a;

    .line 33
    new-instance v0, Lcom/x/plus/pro/update/d;

    invoke-direct {v0}, Lcom/x/plus/pro/update/d;-><init>()V

    sput-object v0, Lcom/x/plus/pro/update/e;->b:Lcom/x/plus/pro/update/a;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4

    .line 50
    sget-object v0, Lcom/x/plus/pro/update/e;->b:Lcom/x/plus/pro/update/a;

    const-string v1, "https://api.trip-happy.com/index.php/upgrade/info/"

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/x/plus/pro/update/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/x/plus/pro/update/b;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/x/plus/pro/update/b;)V
    .registers 4

    .line 1100
    sget-object v0, Lcom/x/plus/pro/update/e;->a:Lcom/x/plus/pro/update/a;

    const-string v1, "https://api.trip-happy.com/index.php/upgrade/info/"

    invoke-interface {v0, p0, v1, p1}, Lcom/x/plus/pro/update/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/x/plus/pro/update/b;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/x/plus/pro/update/c$a;)V
    .registers 3

    .line 76
    sget-object v0, Lcom/x/plus/pro/update/e;->a:Lcom/x/plus/pro/update/a;

    invoke-interface {v0, p0, p1}, Lcom/x/plus/pro/update/a;->a(Landroid/content/Context;Lcom/x/plus/pro/update/c$a;)V

    return-void
.end method

.method public static a(Lcom/x/plus/pro/update/b;)V
    .registers 2

    .line 153
    sget-object v0, Lcom/x/plus/pro/update/e;->a:Lcom/x/plus/pro/update/a;

    invoke-interface {v0, p0}, Lcom/x/plus/pro/update/a;->a(Lcom/x/plus/pro/update/b;)V

    return-void
.end method

.method public static a()Z
    .registers 2

    .line 61
    sget-object v0, Lcom/x/plus/pro/update/e;->a:Lcom/x/plus/pro/update/a;

    invoke-interface {v0}, Lcom/x/plus/pro/update/a;->a()Lcom/x/plus/pro/beans/upgrade/d;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 64
    :cond_a
    sget-object v0, Lcom/x/plus/pro/update/e;->a:Lcom/x/plus/pro/update/a;

    invoke-interface {v0}, Lcom/x/plus/pro/update/a;->a()Lcom/x/plus/pro/beans/upgrade/d;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/x/plus/pro/update/a;->a(Lcom/x/plus/pro/beans/upgrade/d;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 3

    .line 54
    sget-object v0, Lcom/x/plus/pro/update/e;->a:Lcom/x/plus/pro/update/a;

    invoke-interface {v0}, Lcom/x/plus/pro/update/a;->a()Lcom/x/plus/pro/beans/upgrade/d;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 57
    :cond_a
    sget-object v0, Lcom/x/plus/pro/update/e;->a:Lcom/x/plus/pro/update/a;

    sget-object v1, Lcom/x/plus/pro/update/e;->a:Lcom/x/plus/pro/update/a;

    invoke-interface {v1}, Lcom/x/plus/pro/update/a;->a()Lcom/x/plus/pro/beans/upgrade/d;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/x/plus/pro/update/a;->a(Landroid/content/Context;Lcom/x/plus/pro/beans/upgrade/d;)Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;)Ljava/util/List;
    .registers 2
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

    .line 108
    sget-object v0, Lcom/x/plus/pro/update/e;->a:Lcom/x/plus/pro/update/a;

    invoke-interface {v0, p0}, Lcom/x/plus/pro/update/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 109
    sget-object v0, Lcom/x/plus/pro/update/e;->a:Lcom/x/plus/pro/update/a;

    invoke-interface {v0, p0}, Lcom/x/plus/pro/update/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 110
    sput-object p0, Lcom/x/plus/pro/update/e;->c:Ljava/util/List;

    new-instance v0, Lcom/x/plus/pro/update/e$a;

    invoke-direct {v0}, Lcom/x/plus/pro/update/e$a;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 112
    :cond_18
    sget-object p0, Lcom/x/plus/pro/update/e;->c:Ljava/util/List;

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Lcom/x/plus/pro/beans/upgrade/b;
    .registers 2

    .line 140
    sget-object v0, Lcom/x/plus/pro/update/e;->a:Lcom/x/plus/pro/update/a;

    invoke-interface {v0, p0}, Lcom/x/plus/pro/update/a;->c(Landroid/content/Context;)Lcom/x/plus/pro/beans/upgrade/b;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;)V
    .registers 3

    .line 144
    sget-object v0, Lcom/x/plus/pro/update/e;->a:Lcom/x/plus/pro/update/a;

    invoke-interface {v0, p0}, Lcom/x/plus/pro/update/a;->b(Landroid/content/Context;)Lcom/x/plus/pro/beans/upgrade/UpgradePackageModel;

    move-result-object v0

    if-eqz v0, :cond_3f

    sget-object v0, Lcom/x/plus/pro/update/e;->a:Lcom/x/plus/pro/update/a;

    .line 145
    invoke-interface {v0, p0}, Lcom/x/plus/pro/update/a;->b(Landroid/content/Context;)Lcom/x/plus/pro/beans/upgrade/UpgradePackageModel;

    move-result-object v0

    .line 2050
    iget-object v0, v0, Lcom/x/plus/pro/beans/ApkBaseInfo;->c:Ljava/lang/String;

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/x/plus/pro/f/i;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 145
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3f

    .line 147
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/liulishuo/filedownloader/h/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "updatefile.apk"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 148
    invoke-static {p0}, Lcom/x/plus/pro/f/c;->a(Ljava/lang/String;)Z

    :cond_3f
    return-void
.end method
