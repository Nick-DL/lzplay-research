.class public final Lcom/liulishuo/filedownloader/j;
.super Ljava/lang/Object;
.source "FileDownloadMessageStation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/j$b;,
        Lcom/liulishuo/filedownloader/j$a;
    }
.end annotation


# static fields
.field static a:I = 0xa

.field static b:I = 0x5


# instance fields
.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Landroid/os/Handler;

.field private final e:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/liulishuo/filedownloader/u;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Object;

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/liulishuo/filedownloader/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BlockCompleted"

    const/4 v1, 0x5

    .line 36
    invoke-static {v1, v0}, Lcom/liulishuo/filedownloader/h/b;->a(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/j;->c:Ljava/util/concurrent/Executor;

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/j;->f:Ljava/lang/Object;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/j;->g:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/liulishuo/filedownloader/j$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/liulishuo/filedownloader/j$b;-><init>(B)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/j;->d:Landroid/os/Handler;

    .line 51
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .line 33
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/j;-><init>()V

    return-void
.end method

.method public static a()Lcom/liulishuo/filedownloader/j;
    .registers 1

    .line 46
    invoke-static {}, Lcom/liulishuo/filedownloader/j$a;->a()Lcom/liulishuo/filedownloader/j;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/liulishuo/filedownloader/j;)V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/j;->b()V

    return-void
.end method

.method private b()V
    .registers 7

    .line 118
    iget-object v0, p0, Lcom/liulishuo/filedownloader/j;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_3
    iget-object v1, p0, Lcom/liulishuo/filedownloader/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 121
    monitor-exit v0

    return-void

    .line 124
    :cond_d
    iget-object v1, p0, Lcom/liulishuo/filedownloader/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 126
    monitor-exit v0

    return-void

    .line 129
    :cond_17
    invoke-static {}, Lcom/liulishuo/filedownloader/j;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_27

    .line 130
    iget-object v1, p0, Lcom/liulishuo/filedownloader/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v3, p0, Lcom/liulishuo/filedownloader/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;)I

    move v1, v2

    goto :goto_45

    .line 133
    :cond_27
    sget v1, Lcom/liulishuo/filedownloader/j;->a:I

    .line 134
    iget-object v3, p0, Lcom/liulishuo/filedownloader/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v3

    sget v4, Lcom/liulishuo/filedownloader/j;->b:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_35
    if-ge v2, v3, :cond_45

    .line 136
    iget-object v4, p0, Lcom/liulishuo/filedownloader/j;->g:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/liulishuo/filedownloader/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 141
    :cond_45
    :goto_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_56

    .line 143
    iget-object v0, p0, Lcom/liulishuo/filedownloader/j;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/j;->d:Landroid/os/Handler;

    const/4 v3, 0x2

    iget-object p0, p0, Lcom/liulishuo/filedownloader/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :catchall_56
    move-exception p0

    .line 141
    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw p0
.end method

.method private b(Lcom/liulishuo/filedownloader/u;)V
    .registers 4

    .line 102
    iget-object v0, p0, Lcom/liulishuo/filedownloader/j;->d:Landroid/os/Handler;

    iget-object p0, p0, Lcom/liulishuo/filedownloader/j;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private static c()Z
    .registers 1

    .line 194
    sget v0, Lcom/liulishuo/filedownloader/j;->a:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method final a(Lcom/liulishuo/filedownloader/u;)V
    .registers 5

    .line 1061
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/u;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1062
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/u;->b()V

    return-void

    .line 1066
    :cond_a
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/u;->d()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1067
    iget-object v0, p0, Lcom/liulishuo/filedownloader/j;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/liulishuo/filedownloader/j$1;

    invoke-direct {v1, p0, p1}, Lcom/liulishuo/filedownloader/j$1;-><init>(Lcom/liulishuo/filedownloader/j;Lcom/liulishuo/filedownloader/u;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 1076
    :cond_1b
    invoke-static {}, Lcom/liulishuo/filedownloader/j;->c()Z

    move-result v0

    if-nez v0, :cond_54

    .line 1079
    iget-object v0, p0, Lcom/liulishuo/filedownloader/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_54

    .line 1080
    iget-object v0, p0, Lcom/liulishuo/filedownloader/j;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 1081
    :try_start_2c
    iget-object v1, p0, Lcom/liulishuo/filedownloader/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 1082
    iget-object v1, p0, Lcom/liulishuo/filedownloader/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liulishuo/filedownloader/u;

    .line 1083
    invoke-direct {p0, v2}, Lcom/liulishuo/filedownloader/j;->b(Lcom/liulishuo/filedownloader/u;)V

    goto :goto_3a

    .line 1086
    :cond_4a
    iget-object v1, p0, Lcom/liulishuo/filedownloader/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 1087
    monitor-exit v0

    goto :goto_54

    :catchall_51
    move-exception p0

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_2c .. :try_end_53} :catchall_51

    throw p0

    .line 1091
    :cond_54
    :goto_54
    invoke-static {}, Lcom/liulishuo/filedownloader/j;->c()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 1093
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/j;->b(Lcom/liulishuo/filedownloader/u;)V

    return-void

    .line 1108
    :cond_5e
    iget-object v0, p0, Lcom/liulishuo/filedownloader/j;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 1109
    :try_start_61
    iget-object v1, p0, Lcom/liulishuo/filedownloader/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 1110
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_61 .. :try_end_67} :catchall_6b

    .line 1112
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/j;->b()V

    return-void

    :catchall_6b
    move-exception p0

    .line 1110
    :try_start_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw p0
.end method
