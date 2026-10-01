.class public Lcom/liulishuo/filedownloader/d/a;
.super Ljava/lang/Object;
.source "DownloadEventPoolImpl.java"


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Lcom/liulishuo/filedownloader/d/d;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EventPool"

    const/16 v1, 0xa

    .line 31
    invoke-static {v1, v0}, Lcom/liulishuo/filedownloader/h/b;->a(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/d/a;->a:Ljava/util/concurrent/Executor;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/d/a;->b:Ljava/util/HashMap;

    return-void
.end method

.method private static a(Ljava/util/LinkedList;Lcom/liulishuo/filedownloader/d/c;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/liulishuo/filedownloader/d/d;",
            ">;",
            "Lcom/liulishuo/filedownloader/d/c;",
            ")V"
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Ljava/util/LinkedList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 128
    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_14

    aget-object v2, p0, v1

    if-eqz v2, :cond_11

    .line 131
    check-cast v2, Lcom/liulishuo/filedownloader/d/d;

    invoke-virtual {v2, p1}, Lcom/liulishuo/filedownloader/d/d;->a(Lcom/liulishuo/filedownloader/d/c;)Z

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 136
    :cond_14
    iget-object p0, p1, Lcom/liulishuo/filedownloader/d/c;->b:Ljava/lang/Runnable;

    if-eqz p0, :cond_1d

    .line 137
    iget-object p0, p1, Lcom/liulishuo/filedownloader/d/c;->b:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1d
    return-void
.end method


# virtual methods
.method public final a(Lcom/liulishuo/filedownloader/d/c;)Z
    .registers 7

    .line 87
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    const-string v0, "publish %s"

    .line 88
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/d/c;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p0, v0, v3}, Lcom/liulishuo/filedownloader/h/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    if-eqz p1, :cond_4a

    .line 91
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/d/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 92
    iget-object v3, p0, Lcom/liulishuo/filedownloader/d/a;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    if-nez v3, :cond_46

    .line 94
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    monitor-enter v4

    .line 95
    :try_start_28
    iget-object v3, p0, Lcom/liulishuo/filedownloader/d/a;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    if-nez v3, :cond_41

    .line 97
    sget-boolean p1, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz p1, :cond_3f

    const-string p1, "No listener for this event %s"

    .line 98
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {p0, p1, v2}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    :cond_3f
    monitor-exit v4

    return v1

    .line 102
    :cond_41
    monitor-exit v4

    goto :goto_46

    :catchall_43
    move-exception p0

    monitor-exit v4
    :try_end_45
    .catchall {:try_start_28 .. :try_end_45} :catchall_43

    throw p0

    .line 105
    :cond_46
    :goto_46
    invoke-static {v3, p1}, Lcom/liulishuo/filedownloader/d/a;->a(Ljava/util/LinkedList;Lcom/liulishuo/filedownloader/d/c;)V

    return v2

    .line 90
    :cond_4a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "event must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a(Ljava/lang/String;Lcom/liulishuo/filedownloader/d/d;)Z
    .registers 6

    .line 37
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v0, :cond_f

    const-string v0, "setListener %s"

    const/4 v1, 0x1

    .line 38
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/h/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    if-eqz p2, :cond_47

    .line 42
    iget-object v0, p0, Lcom/liulishuo/filedownloader/d/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-nez v0, :cond_39

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    monitor-enter v1

    .line 46
    :try_start_20
    iget-object v0, p0, Lcom/liulishuo/filedownloader/d/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-nez v0, :cond_34

    .line 48
    iget-object p0, p0, Lcom/liulishuo/filedownloader/d/a;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_34
    monitor-exit v1

    goto :goto_39

    :catchall_36
    move-exception p0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_20 .. :try_end_38} :catchall_36

    throw p0

    .line 54
    :cond_39
    :goto_39
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    monitor-enter p0

    .line 55
    :try_start_3e
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_44
    move-exception p1

    .line 56
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_44

    throw p1

    .line 40
    :cond_47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Lcom/liulishuo/filedownloader/d/c;)V
    .registers 6

    .line 111
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v0, :cond_13

    const-string v0, "asyncPublishInNewThread %s"

    const/4 v1, 0x1

    .line 112
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/d/c;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/h/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    :cond_13
    iget-object v0, p0, Lcom/liulishuo/filedownloader/d/a;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/liulishuo/filedownloader/d/a$1;

    invoke-direct {v1, p0, p1}, Lcom/liulishuo/filedownloader/d/a$1;-><init>(Lcom/liulishuo/filedownloader/d/a;Lcom/liulishuo/filedownloader/d/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
