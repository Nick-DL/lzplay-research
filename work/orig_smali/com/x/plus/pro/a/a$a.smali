.class public final Lcom/x/plus/pro/a/a$a;
.super Landroid/os/Handler;
.source "DeviceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/plus/pro/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/x/plus/pro/SplashActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/x/plus/pro/SplashActivity;)V
    .registers 3

    .line 71
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/x/plus/pro/a/a$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/x/plus/pro/SplashActivity;B)V
    .registers 3

    .line 68
    invoke-direct {p0, p1}, Lcom/x/plus/pro/a/a$a;-><init>(Lcom/x/plus/pro/SplashActivity;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 2

    .line 78
    iget-object p0, p0, Lcom/x/plus/pro/a/a$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/x/plus/pro/SplashActivity;

    if-nez p0, :cond_b

    return-void

    .line 1056
    :cond_b
    iget-object p1, p0, Lcom/x/plus/pro/SplashActivity;->k:Lcom/x/plus/pro/a/a;

    .line 91
    iget-object p1, p1, Lcom/x/plus/pro/a/a;->d:Lcom/x/plus/pro/update/b;

    invoke-static {p0, p1}, Lcom/x/plus/pro/update/e;->a(Landroid/content/Context;Lcom/x/plus/pro/update/b;)V

    return-void
.end method
