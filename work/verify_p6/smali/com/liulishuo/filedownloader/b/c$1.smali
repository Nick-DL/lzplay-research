.class final Lcom/liulishuo/filedownloader/b/c$1;
.super Ljava/lang/Object;
.source "RemitDatabase.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liulishuo/filedownloader/b/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/liulishuo/filedownloader/b/c;


# direct methods
.method constructor <init>(Lcom/liulishuo/filedownloader/b/c;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/liulishuo/filedownloader/b/c$1;->a:Lcom/liulishuo/filedownloader/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 64
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 66
    iget-object p1, p0, Lcom/liulishuo/filedownloader/b/c$1;->a:Lcom/liulishuo/filedownloader/b/c;

    invoke-static {p1}, Lcom/liulishuo/filedownloader/b/c;->a(Lcom/liulishuo/filedownloader/b/c;)Ljava/lang/Thread;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/liulishuo/filedownloader/b/c$1;->a:Lcom/liulishuo/filedownloader/b/c;

    invoke-static {p1}, Lcom/liulishuo/filedownloader/b/c;->a(Lcom/liulishuo/filedownloader/b/c;)Ljava/lang/Thread;

    move-result-object p1

    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 68
    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/c$1;->a:Lcom/liulishuo/filedownloader/b/c;

    invoke-static {p0}, Lcom/liulishuo/filedownloader/b/c;->b(Lcom/liulishuo/filedownloader/b/c;)Ljava/lang/Thread;

    :cond_0
    return v0

    .line 74
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/b/c$1;->a:Lcom/liulishuo/filedownloader/b/c;

    invoke-static {v1}, Lcom/liulishuo/filedownloader/b/c;->c(Lcom/liulishuo/filedownloader/b/c;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 76
    iget-object v1, p0, Lcom/liulishuo/filedownloader/b/c$1;->a:Lcom/liulishuo/filedownloader/b/c;

    invoke-static {v1, p1}, Lcom/liulishuo/filedownloader/b/c;->a(Lcom/liulishuo/filedownloader/b/c;I)V

    .line 77
    iget-object v1, p0, Lcom/liulishuo/filedownloader/b/c$1;->a:Lcom/liulishuo/filedownloader/b/c;

    invoke-static {v1}, Lcom/liulishuo/filedownloader/b/c;->d(Lcom/liulishuo/filedownloader/b/c;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object p1, p0, Lcom/liulishuo/filedownloader/b/c$1;->a:Lcom/liulishuo/filedownloader/b/c;

    invoke-static {p1}, Lcom/liulishuo/filedownloader/b/c;->c(Lcom/liulishuo/filedownloader/b/c;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 80
    iget-object p1, p0, Lcom/liulishuo/filedownloader/b/c$1;->a:Lcom/liulishuo/filedownloader/b/c;

    invoke-static {p1}, Lcom/liulishuo/filedownloader/b/c;->a(Lcom/liulishuo/filedownloader/b/c;)Ljava/lang/Thread;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 81
    iget-object p1, p0, Lcom/liulishuo/filedownloader/b/c$1;->a:Lcom/liulishuo/filedownloader/b/c;

    invoke-static {p1}, Lcom/liulishuo/filedownloader/b/c;->a(Lcom/liulishuo/filedownloader/b/c;)Ljava/lang/Thread;

    move-result-object p1

    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 82
    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/c$1;->a:Lcom/liulishuo/filedownloader/b/c;

    invoke-static {p0}, Lcom/liulishuo/filedownloader/b/c;->b(Lcom/liulishuo/filedownloader/b/c;)Ljava/lang/Thread;

    :cond_2
    return v0

    :catchall_0
    move-exception p1

    .line 79
    iget-object v1, p0, Lcom/liulishuo/filedownloader/b/c$1;->a:Lcom/liulishuo/filedownloader/b/c;

    invoke-static {v1}, Lcom/liulishuo/filedownloader/b/c;->c(Lcom/liulishuo/filedownloader/b/c;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 80
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c$1;->a:Lcom/liulishuo/filedownloader/b/c;

    invoke-static {v0}, Lcom/liulishuo/filedownloader/b/c;->a(Lcom/liulishuo/filedownloader/b/c;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 81
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c$1;->a:Lcom/liulishuo/filedownloader/b/c;

    invoke-static {v0}, Lcom/liulishuo/filedownloader/b/c;->a(Lcom/liulishuo/filedownloader/b/c;)Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 82
    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/c$1;->a:Lcom/liulishuo/filedownloader/b/c;

    invoke-static {p0}, Lcom/liulishuo/filedownloader/b/c;->b(Lcom/liulishuo/filedownloader/b/c;)Ljava/lang/Thread;

    :cond_3
    throw p1
.end method
