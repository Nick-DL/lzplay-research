.class public final Lcom/airbnb/lottie/k;
.super Ljava/lang/Object;
.source "LottieTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static a:Ljava/util/concurrent/Executor;


# instance fields
.field private b:Ljava/lang/Thread;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/airbnb/lottie/h<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/airbnb/lottie/h<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/Handler;

.field private final f:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "Lcom/airbnb/lottie/j<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private volatile g:Lcom/airbnb/lottie/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/j<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/k;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/airbnb/lottie/j<",
            "TT;>;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/k;-><init>(Ljava/util/concurrent/Callable;B)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Callable;B)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/airbnb/lottie/j<",
            "TT;>;>;B)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance p2, Ljava/util/LinkedHashSet;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object p2, p0, Lcom/airbnb/lottie/k;->c:Ljava/util/Set;

    .line 41
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2, v0}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object p2, p0, Lcom/airbnb/lottie/k;->d:Ljava/util/Set;

    .line 42
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/airbnb/lottie/k;->e:Landroid/os/Handler;

    const/4 p2, 0x0

    .line 45
    iput-object p2, p0, Lcom/airbnb/lottie/k;->g:Lcom/airbnb/lottie/j;

    .line 57
    new-instance p2, Ljava/util/concurrent/FutureTask;

    invoke-direct {p2, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p2, p0, Lcom/airbnb/lottie/k;->f:Ljava/util/concurrent/FutureTask;

    .line 66
    sget-object p1, Lcom/airbnb/lottie/k;->a:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Lcom/airbnb/lottie/k;->f:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 67
    invoke-direct {p0}, Lcom/airbnb/lottie/k;->a()V

    return-void
.end method

.method static synthetic a(Lcom/airbnb/lottie/k;)Lcom/airbnb/lottie/j;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/airbnb/lottie/k;->g:Lcom/airbnb/lottie/j;

    return-object p0
.end method

.method private declared-synchronized a()V
    .registers 3

    monitor-enter p0

    .line 176
    :try_start_1
    invoke-direct {p0}, Lcom/airbnb/lottie/k;->c()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/airbnb/lottie/k;->g:Lcom/airbnb/lottie/j;

    if-eqz v0, :cond_c

    goto :goto_21

    .line 179
    :cond_c
    new-instance v0, Lcom/airbnb/lottie/k$2;

    const-string v1, "LottieTaskObserver"

    invoke-direct {v0, p0, v1}, Lcom/airbnb/lottie/k$2;-><init>(Lcom/airbnb/lottie/k;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/airbnb/lottie/k;->b:Ljava/lang/Thread;

    .line 199
    iget-object v0, p0, Lcom/airbnb/lottie/k;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string v0, "Starting TaskObserver thread"

    .line 200
    invoke-static {v0}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_23

    .line 201
    monitor-exit p0

    return-void

    .line 177
    :cond_21
    :goto_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception v0

    .line 175
    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/airbnb/lottie/k;Lcom/airbnb/lottie/j;)V
    .registers 3

    .line 4072
    iget-object v0, p0, Lcom/airbnb/lottie/k;->g:Lcom/airbnb/lottie/j;

    if-nez v0, :cond_11

    .line 4075
    iput-object p1, p0, Lcom/airbnb/lottie/k;->g:Lcom/airbnb/lottie/j;

    .line 4132
    iget-object p1, p0, Lcom/airbnb/lottie/k;->e:Landroid/os/Handler;

    new-instance v0, Lcom/airbnb/lottie/k$1;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/k$1;-><init>(Lcom/airbnb/lottie/k;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 4073
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "A task may only be set once."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/airbnb/lottie/k;Ljava/lang/Object;)V
    .registers 3

    .line 3151
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/airbnb/lottie/k;->c:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3152
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/h;

    .line 3153
    invoke-interface {v0, p1}, Lcom/airbnb/lottie/h;->a(Ljava/lang/Object;)V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method static synthetic a(Lcom/airbnb/lottie/k;Ljava/lang/Throwable;)V
    .registers 3

    .line 3160
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/airbnb/lottie/k;->d:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3161
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_15

    const-string p0, "LOTTIE"

    const-string v0, "Lottie encountered an error but no failure listener was added."

    .line 3162
    invoke-static {p0, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 3166
    :cond_15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/h;

    .line 3167
    invoke-interface {v0, p1}, Lcom/airbnb/lottie/h;->a(Ljava/lang/Object;)V

    goto :goto_19

    :cond_29
    return-void
.end method

.method static synthetic b(Lcom/airbnb/lottie/k;)Ljava/util/concurrent/FutureTask;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/airbnb/lottie/k;->f:Ljava/util/concurrent/FutureTask;

    return-object p0
.end method

.method private declared-synchronized b()V
    .registers 2

    monitor-enter p0

    .line 207
    :try_start_1
    invoke-direct {p0}, Lcom/airbnb/lottie/k;->c()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_24

    if-nez v0, :cond_9

    .line 208
    monitor-exit p0

    return-void

    .line 210
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/airbnb/lottie/k;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/airbnb/lottie/k;->g:Lcom/airbnb/lottie/j;

    if-eqz v0, :cond_22

    .line 211
    :cond_15
    iget-object v0, p0, Lcom/airbnb/lottie/k;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 212
    iput-object v0, p0, Lcom/airbnb/lottie/k;->b:Ljava/lang/Thread;

    const-string v0, "Stopping TaskObserver thread"

    .line 213
    invoke-static {v0}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_24

    .line 215
    :cond_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    .line 206
    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/airbnb/lottie/k;)V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/airbnb/lottie/k;->b()V

    return-void
.end method

.method private c()Z
    .registers 2

    .line 218
    iget-object v0, p0, Lcom/airbnb/lottie/k;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/airbnb/lottie/k;->b:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/airbnb/lottie/h;)Lcom/airbnb/lottie/k;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/h<",
            "TT;>;)",
            "Lcom/airbnb/lottie/k<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 84
    :try_start_1
    iget-object v0, p0, Lcom/airbnb/lottie/k;->g:Lcom/airbnb/lottie/j;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/airbnb/lottie/k;->g:Lcom/airbnb/lottie/j;

    .line 1029
    iget-object v0, v0, Lcom/airbnb/lottie/j;->a:Ljava/lang/Object;

    if-eqz v0, :cond_12

    .line 85
    iget-object v0, p0, Lcom/airbnb/lottie/k;->g:Lcom/airbnb/lottie/j;

    .line 2029
    iget-object v0, v0, Lcom/airbnb/lottie/j;->a:Ljava/lang/Object;

    .line 85
    invoke-interface {p1, v0}, Lcom/airbnb/lottie/h;->a(Ljava/lang/Object;)V

    .line 88
    :cond_12
    iget-object v0, p0, Lcom/airbnb/lottie/k;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-direct {p0}, Lcom/airbnb/lottie/k;->a()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 90
    monitor-exit p0

    return-object p0

    :catchall_1c
    move-exception p1

    .line 83
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lcom/airbnb/lottie/h;)Lcom/airbnb/lottie/k;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/h<",
            "TT;>;)",
            "Lcom/airbnb/lottie/k<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 99
    :try_start_1
    iget-object v0, p0, Lcom/airbnb/lottie/k;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 100
    invoke-direct {p0}, Lcom/airbnb/lottie/k;->b()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 101
    monitor-exit p0

    return-object p0

    :catchall_b
    move-exception p1

    .line 98
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Lcom/airbnb/lottie/h;)Lcom/airbnb/lottie/k;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/h<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/airbnb/lottie/k<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 110
    :try_start_1
    iget-object v0, p0, Lcom/airbnb/lottie/k;->g:Lcom/airbnb/lottie/j;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/airbnb/lottie/k;->g:Lcom/airbnb/lottie/j;

    .line 2033
    iget-object v0, v0, Lcom/airbnb/lottie/j;->b:Ljava/lang/Throwable;

    if-eqz v0, :cond_12

    .line 111
    iget-object v0, p0, Lcom/airbnb/lottie/k;->g:Lcom/airbnb/lottie/j;

    .line 3033
    iget-object v0, v0, Lcom/airbnb/lottie/j;->b:Ljava/lang/Throwable;

    .line 111
    invoke-interface {p1, v0}, Lcom/airbnb/lottie/h;->a(Ljava/lang/Object;)V

    .line 114
    :cond_12
    iget-object v0, p0, Lcom/airbnb/lottie/k;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-direct {p0}, Lcom/airbnb/lottie/k;->a()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 116
    monitor-exit p0

    return-object p0

    :catchall_1c
    move-exception p1

    .line 109
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(Lcom/airbnb/lottie/h;)Lcom/airbnb/lottie/k;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/h<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/airbnb/lottie/k<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 125
    :try_start_1
    iget-object v0, p0, Lcom/airbnb/lottie/k;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 126
    invoke-direct {p0}, Lcom/airbnb/lottie/k;->b()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 127
    monitor-exit p0

    return-object p0

    :catchall_b
    move-exception p1

    .line 124
    monitor-exit p0

    throw p1
.end method
