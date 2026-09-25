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
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

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
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/x/plus/pro/a/b;->b:Lcom/x/plus/pro/a/b$a;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic b(Lcom/x/plus/pro/a/b;)V
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcom/x/plus/pro/a/b;->a()V

    return-void
.end method

.method private b(Landroid/content/Context;)Z
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/x/plus/pro/a/b;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 124
    iget-object p0, p0, Lcom/x/plus/pro/a/b;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/plus/pro/beans/config/ApkInfo;

    .line 1058
    iget-object v0, v0, Lcom/x/plus/pro/beans/ApkBaseInfo;->d:Ljava/lang/String;

    .line 125
    invoke-static {p1, v0}, Lcom/x/plus/pro/e/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/x/plus/pro/a/b;->a:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/x/plus/pro/a/b;->b(Landroid/content/Context;)Z

    move-result v0

    const-wide/16 v1, 0xa

    if-eqz v0, :cond_0

    .line 159
    iget-object p0, p0, Lcom/x/plus/pro/a/b;->b:Lcom/x/plus/pro/a/b$a;

    const/16 v0, 0x66

    invoke-virtual {p0, v0, v1, v2}, Lcom/x/plus/pro/a/b$a;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 161
    :cond_0
    iget-object p0, p0, Lcom/x/plus/pro/a/b;->b:Lcom/x/plus/pro/a/b$a;

    const/16 v0, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/x/plus/pro/a/b$a;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
