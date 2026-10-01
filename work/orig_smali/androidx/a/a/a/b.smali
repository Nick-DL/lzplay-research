.class public final Landroidx/a/a/a/b;
.super Landroidx/a/a/a/c;
.source "DefaultTaskExecutor.java"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private volatile c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 34
    invoke-direct {p0}, Landroidx/a/a/a/c;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/a/a/a/b;->a:Ljava/lang/Object;

    .line 38
    new-instance v0, Landroidx/a/a/a/b$1;

    invoke-direct {v0, p0}, Landroidx/a/a/a/b$1;-><init>(Landroidx/a/a/a/b;)V

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroidx/a/a/a/b;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .registers 2

    .line 56
    iget-object p0, p0, Landroidx/a/a/a/b;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Ljava/lang/Runnable;)V
    .registers 5

    .line 61
    iget-object v0, p0, Landroidx/a/a/a/b;->c:Landroid/os/Handler;

    if-nez v0, :cond_1b

    .line 62
    iget-object v0, p0, Landroidx/a/a/a/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_7
    iget-object v1, p0, Landroidx/a/a/a/b;->c:Landroid/os/Handler;

    if-nez v1, :cond_16

    .line 64
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroidx/a/a/a/b;->c:Landroid/os/Handler;

    .line 66
    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0

    .line 69
    :cond_1b
    :goto_1b
    iget-object p0, p0, Landroidx/a/a/a/b;->c:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()Z
    .registers 2

    .line 74
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p0, v0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method
