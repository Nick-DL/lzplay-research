.class final Lcom/liulishuo/filedownloader/q;
.super Ljava/lang/Object;
.source "FileDownloadTaskLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/q$c;,
        Lcom/liulishuo/filedownloader/q$b;,
        Lcom/liulishuo/filedownloader/q$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/liulishuo/filedownloader/q$b;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/liulishuo/filedownloader/q$b;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/q$b;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/q;->a:Lcom/liulishuo/filedownloader/q$b;

    return-void
.end method


# virtual methods
.method final declared-synchronized a(Lcom/liulishuo/filedownloader/y$b;)V
    .registers 4

    monitor-enter p0

    .line 50
    :try_start_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/q;->a:Lcom/liulishuo/filedownloader/q$b;

    .line 1082
    iget-object v0, v0, Lcom/liulishuo/filedownloader/q$b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/liulishuo/filedownloader/q$c;

    invoke-direct {v1, p1}, Lcom/liulishuo/filedownloader/q$c;-><init>(Lcom/liulishuo/filedownloader/y$b;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 51
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    .line 49
    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized b(Lcom/liulishuo/filedownloader/y$b;)V
    .registers 3

    monitor-enter p0

    .line 58
    :try_start_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/q;->a:Lcom/liulishuo/filedownloader/q$b;

    .line 1090
    iget-object v0, v0, Lcom/liulishuo/filedownloader/q$b;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 59
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    .line 57
    monitor-exit p0

    throw p1
.end method
