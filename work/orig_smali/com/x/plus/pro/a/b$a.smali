.class public final Lcom/x/plus/pro/a/b$a;
.super Landroid/os/Handler;
.source "DeviceManage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/plus/pro/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/x/plus/pro/a/c;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lcom/x/plus/pro/a/c;)V
    .registers 4

    .line 70
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/x/plus/pro/a/b$a;->a:Ljava/lang/ref/WeakReference;

    .line 72
    iput-object p2, p0, Lcom/x/plus/pro/a/b$a;->b:Lcom/x/plus/pro/a/c;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Activity;Lcom/x/plus/pro/a/c;B)V
    .registers 4

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/x/plus/pro/a/b$a;-><init>(Landroid/app/Activity;Lcom/x/plus/pro/a/c;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 77
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 78
    iget-object v0, p0, Lcom/x/plus/pro/a/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    .line 81
    :cond_c
    iget-object v0, p0, Lcom/x/plus/pro/a/b$a;->b:Lcom/x/plus/pro/a/c;

    if-eqz v0, :cond_17

    .line 85
    iget-object p0, p0, Lcom/x/plus/pro/a/b$a;->b:Lcom/x/plus/pro/a/c;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-interface {p0, p1}, Lcom/x/plus/pro/a/c;->a(I)V

    :cond_17
    return-void
.end method
