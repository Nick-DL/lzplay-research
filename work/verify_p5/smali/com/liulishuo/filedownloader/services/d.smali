.class public final Lcom/liulishuo/filedownloader/services/d;
.super Lcom/liulishuo/filedownloader/f/b$a;
.source "FDServiceSeparateHandler.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/message/c$b;
.implements Lcom/liulishuo/filedownloader/services/j;


# instance fields
.field private final a:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/liulishuo/filedownloader/f/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/liulishuo/filedownloader/services/g;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/liulishuo/filedownloader/services/FileDownloadService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Lcom/liulishuo/filedownloader/services/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/liulishuo/filedownloader/services/FileDownloadService;",
            ">;",
            "Lcom/liulishuo/filedownloader/services/g;",
            ")V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/f/b$a;-><init>()V

    .line 39
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->a:Landroid/os/RemoteCallbackList;

    .line 62
    iput-object p1, p0, Lcom/liulishuo/filedownloader/services/d;->c:Ljava/lang/ref/WeakReference;

    .line 63
    iput-object p2, p0, Lcom/liulishuo/filedownloader/services/d;->b:Lcom/liulishuo/filedownloader/services/g;

    .line 1034
    invoke-static {}, Lcom/liulishuo/filedownloader/message/c$a;->a()Lcom/liulishuo/filedownloader/message/c;

    move-result-object p1

    .line 65
    invoke-virtual {p1, p0}, Lcom/liulishuo/filedownloader/message/c;->a(Lcom/liulishuo/filedownloader/message/c$b;)V

    return-void
.end method

.method private declared-synchronized b(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)I
    .locals 4

    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 49
    :try_start_1
    iget-object v3, p0, Lcom/liulishuo/filedownloader/services/d;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/liulishuo/filedownloader/f/a;

    invoke-interface {v3, p1}, Lcom/liulishuo/filedownloader/f/a;->a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    const-string v2, "callback error"

    .line 52
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v2, v1}, Lcom/liulishuo/filedownloader/h/d;->a(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    :try_start_3
    iget-object p1, p0, Lcom/liulishuo/filedownloader/services/d;->a:Landroid/os/RemoteCallbackList;

    :goto_1
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_3

    :goto_2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw p1

    :cond_0
    iget-object p1, p0, Lcom/liulishuo/filedownloader/services/d;->a:Landroid/os/RemoteCallbackList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 57
    :goto_3
    monitor-exit p0

    return v0

    :catchall_1
    move-exception p1

    .line 45
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/d;->b:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/services/g;->a()V

    return-void
.end method

.method public final a(ILandroid/app/Notification;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/d;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;

    invoke-virtual {p0, p1, p2}, Lcom/liulishuo/filedownloader/services/FileDownloadService;->startForeground(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/liulishuo/filedownloader/f/a;)V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/d;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/services/d;->b(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)I

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)V
    .locals 10

    move-object v0, p0

    .line 88
    iget-object v0, v0, Lcom/liulishuo/filedownloader/services/d;->b:Lcom/liulishuo/filedownloader/services/g;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/liulishuo/filedownloader/services/g;->a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/d;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/d;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;

    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/services/FileDownloadService;->stopForeground(Z)V

    :cond_0
    return-void
.end method

.method public final a(I)Z
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/d;->b:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/services/g;->a(I)Z

    move-result p0

    return p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/d;->b:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {p0, p1, p2}, Lcom/liulishuo/filedownloader/services/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final b(Lcom/liulishuo/filedownloader/f/a;)V
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/d;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final b()Z
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/d;->b:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/services/g;->b()Z

    move-result p0

    return p0
.end method

.method public final b(I)Z
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/d;->b:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/services/g;->e(I)Z

    move-result p0

    return p0
.end method

.method public final c(I)J
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/d;->b:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/services/g;->b(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final c()V
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/d;->b:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/services/g;->c()V

    return-void
.end method

.method public final d(I)J
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/d;->b:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/services/g;->c(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e(I)B
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/d;->b:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/services/g;->d(I)B

    move-result p0

    return p0
.end method

.method public final e()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final f(I)Z
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/d;->b:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/services/g;->f(I)Z

    move-result p0

    return p0
.end method
