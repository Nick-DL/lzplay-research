.class final Lcom/liulishuo/filedownloader/services/h;
.super Ljava/lang/Object;
.source "FileDownloadThreadPool.java"


# instance fields
.field a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/liulishuo/filedownloader/c/d;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/concurrent/ThreadPoolExecutor;

.field c:I

.field private final d:Ljava/lang/String;

.field private e:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->a:Landroid/util/SparseArray;

    const-string v0, "Network"

    .line 39
    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lcom/liulishuo/filedownloader/services/h;->c:I

    const-string v0, "Network"

    .line 43
    invoke-static {p1, v0}, Lcom/liulishuo/filedownloader/h/b;->a(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 45
    iput p1, p0, Lcom/liulishuo/filedownloader/services/h;->e:I

    return-void
.end method


# virtual methods
.method final declared-synchronized a()V
    .locals 6

    monitor-enter p0

    .line 112
    :try_start_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 113
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 115
    iget-object v3, p0, Lcom/liulishuo/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 116
    iget-object v4, p0, Lcom/liulishuo/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liulishuo/filedownloader/c/d;

    if-eqz v4, :cond_0

    .line 117
    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/c/d;->c()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 118
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    :cond_1
    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->a:Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 111
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)Z
    .locals 5

    monitor-enter p0

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/services/h;->b()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const-string p1, "Can\'t change the max network thread count, because the  network thread pool isn\'t in IDLE, please try again after all running tasks are completed or invoking FileDownloader#pauseAll directly."

    .line 50
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/liulishuo/filedownloader/h/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return v1

    .line 56
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/liulishuo/filedownloader/h/e;->a(I)I

    move-result p1

    .line 58
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v0, "change the max network thread count, from %d to %d"

    const/4 v3, 0x2

    .line 59
    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/liulishuo/filedownloader/services/h;->e:I

    .line 60
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    .line 59
    invoke-static {p0, v0, v3}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    move-result-object v0

    const-string v3, "Network"

    .line 64
    invoke-static {p1, v3}, Lcom/liulishuo/filedownloader/h/b;->a(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    iput-object v3, p0, Lcom/liulishuo/filedownloader/services/h;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 66
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "recreate the network thread pool and discard %d tasks"

    .line 67
    new-array v4, v2, [Ljava/lang/Object;

    .line 68
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    .line 67
    invoke-static {p0, v3, v4}, Lcom/liulishuo/filedownloader/h/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :cond_2
    iput p1, p0, Lcom/liulishuo/filedownloader/services/h;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    .line 48
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()I
    .locals 1

    monitor-enter p0

    .line 157
    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/services/h;->a()V

    .line 158
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 156
    monitor-exit p0

    throw v0
.end method

.method public final b(I)V
    .locals 5

    .line 92
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/services/h;->a()V

    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/c/d;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/c/d;->a()V

    .line 97
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/h;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v0

    .line 98
    sget-boolean v1, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "successful cancel %d %B"

    const/4 v2, 0x2

    .line 101
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 105
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final declared-synchronized c()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 162
    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/services/h;->a()V

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 165
    :goto_0
    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/h;->a:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/liulishuo/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liulishuo/filedownloader/c/d;

    .line 1993
    iget-object v2, v2, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 2111
    iget v2, v2, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 166
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 161
    monitor-exit p0

    throw v0
.end method

.method public final c(I)Z
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/liulishuo/filedownloader/c/d;

    if-eqz p0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/c/d;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
