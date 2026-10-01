.class public final Lcom/liulishuo/filedownloader/b/c;
.super Ljava/lang/Object;
.source "RemitDatabase.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/b/a;


# instance fields
.field private final a:Lcom/liulishuo/filedownloader/b/b;

.field private final b:Lcom/liulishuo/filedownloader/b/d;

.field private c:Landroid/os/Handler;

.field private final d:J

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile g:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->e:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 55
    new-instance v0, Lcom/liulishuo/filedownloader/b/b;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/b/b;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->a:Lcom/liulishuo/filedownloader/b/b;

    .line 56
    new-instance v0, Lcom/liulishuo/filedownloader/b/d;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/b/d;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    .line 57
    invoke-static {}, Lcom/liulishuo/filedownloader/h/e;->a()Lcom/liulishuo/filedownloader/h/e;

    move-result-object v0

    iget-wide v0, v0, Lcom/liulishuo/filedownloader/h/e;->b:J

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/b/c;->d:J

    .line 59
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RemitHandoverToDB"

    .line 60
    invoke-static {v1}, Lcom/liulishuo/filedownloader/h/f;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 62
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Lcom/liulishuo/filedownloader/b/c$1;

    invoke-direct {v2, p0}, Lcom/liulishuo/filedownloader/b/c$1;-><init>(Lcom/liulishuo/filedownloader/b/c;)V

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/b/c;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/liulishuo/filedownloader/b/c;)Ljava/lang/Thread;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/c;->g:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic a(Lcom/liulishuo/filedownloader/b/c;I)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/b/c;->h(I)V

    return-void
.end method

.method static synthetic b(Lcom/liulishuo/filedownloader/b/c;)Ljava/lang/Thread;
    .registers 2

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->g:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic c(Lcom/liulishuo/filedownloader/b/c;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic d(Lcom/liulishuo/filedownloader/b/c;)Ljava/util/List;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/c;->e:Ljava/util/List;

    return-object p0
.end method

.method private h(I)V
    .registers 6

    .line 92
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v0, :cond_13

    const-string v0, "sync cache to db %d"

    const/4 v1, 0x1

    .line 93
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    :cond_13
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/b/c;->a:Lcom/liulishuo/filedownloader/b/b;

    invoke-virtual {v1, p1}, Lcom/liulishuo/filedownloader/b/b;->b(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/b/d;->a(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    .line 101
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->a:Lcom/liulishuo/filedownloader/b/b;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/b/b;->c(I)Ljava/util/List;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    invoke-virtual {v1, p1}, Lcom/liulishuo/filedownloader/b/d;->d(I)V

    .line 103
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/model/a;

    .line 104
    iget-object v1, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    invoke-virtual {v1, v0}, Lcom/liulishuo/filedownloader/b/d;->a(Lcom/liulishuo/filedownloader/model/a;)V

    goto :goto_2d

    :cond_3f
    return-void
.end method

.method private i(I)Z
    .registers 2

    .line 109
    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/c;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private j(I)V
    .registers 3

    .line 206
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 207
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_1d

    .line 208
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/filedownloader/b/c;->g:Ljava/lang/Thread;

    .line 209
    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/c;->c:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 210
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->park()V

    return-void

    .line 212
    :cond_1d
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/b/c;->h(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->a:Lcom/liulishuo/filedownloader/b/b;

    .line 3149
    iget-object v0, v0, Lcom/liulishuo/filedownloader/b/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 177
    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/b/d;->a()V

    return-void
.end method

.method public final a(I)V
    .registers 5

    .line 113
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->c:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/liulishuo/filedownloader/b/c;->d:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final a(II)V
    .registers 4

    .line 153
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/b/c;->i(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 154
    :cond_7
    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    invoke-virtual {p0, p1, p2}, Lcom/liulishuo/filedownloader/b/d;->a(II)V

    return-void
.end method

.method public final a(IIJ)V
    .registers 6

    .line 139
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->a:Lcom/liulishuo/filedownloader/b/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/liulishuo/filedownloader/b/b;->a(IIJ)V

    .line 141
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/b/c;->i(I)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 142
    :cond_c
    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/liulishuo/filedownloader/b/d;->a(IIJ)V

    return-void
.end method

.method public final a(IJ)V
    .registers 5

    .line 147
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/b/c;->i(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 148
    :cond_7
    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    invoke-virtual {p0, p1, p2, p3}, Lcom/liulishuo/filedownloader/b/d;->a(IJ)V

    return-void
.end method

.method public final a(IJLjava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 189
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/b/c;->i(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 190
    :cond_7
    iget-object v1, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/liulishuo/filedownloader/b/d;->a(IJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(ILjava/lang/String;JJI)V
    .registers 16

    .line 183
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/b/c;->i(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 184
    :cond_7
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/liulishuo/filedownloader/b/d;->a(ILjava/lang/String;JJI)V

    return-void
.end method

.method public final a(ILjava/lang/Throwable;)V
    .registers 4

    .line 201
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/b/c;->i(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 202
    :cond_7
    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    invoke-virtual {p0, p1, p2}, Lcom/liulishuo/filedownloader/b/d;->a(ILjava/lang/Throwable;)V

    return-void
.end method

.method public final a(ILjava/lang/Throwable;J)V
    .registers 6

    .line 218
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/b/c;->i(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 219
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/b/c;->j(I)V

    .line 221
    :cond_9
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/liulishuo/filedownloader/b/d;->a(ILjava/lang/Throwable;J)V

    .line 222
    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/c;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .registers 3

    .line 165
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->a:Lcom/liulishuo/filedownloader/b/b;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/b/b;->a(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    .line 3111
    iget v0, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 166
    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/b/c;->i(I)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 167
    :cond_e
    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/b/d;->a(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    return-void
.end method

.method public final a(Lcom/liulishuo/filedownloader/model/a;)V
    .registers 3

    .line 132
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->a:Lcom/liulishuo/filedownloader/b/b;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/b/b;->a(Lcom/liulishuo/filedownloader/model/a;)V

    .line 1046
    iget v0, p1, Lcom/liulishuo/filedownloader/model/a;->a:I

    .line 134
    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/b/c;->i(I)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 135
    :cond_e
    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/b/d;->a(Lcom/liulishuo/filedownloader/model/a;)V

    return-void
.end method

.method public final b()Lcom/liulishuo/filedownloader/b/a$a;
    .registers 4

    .line 252
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/b/c;->a:Lcom/liulishuo/filedownloader/b/b;

    iget-object v1, v1, Lcom/liulishuo/filedownloader/b/b;->a:Landroid/util/SparseArray;

    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/c;->a:Lcom/liulishuo/filedownloader/b/b;

    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/b;->b:Landroid/util/SparseArray;

    .line 7260
    new-instance v2, Lcom/liulishuo/filedownloader/b/d$a;

    invoke-direct {v2, v0, v1, p0}, Lcom/liulishuo/filedownloader/b/d$a;-><init>(Lcom/liulishuo/filedownloader/b/d;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    return-object v2
.end method

.method public final b(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .registers 2

    .line 117
    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/c;->a:Lcom/liulishuo/filedownloader/b/b;

    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/b/b;->b(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object p0

    return-object p0
.end method

.method public final b(IJ)V
    .registers 5

    .line 243
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/b/c;->i(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 244
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/b/c;->j(I)V

    .line 246
    :cond_9
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/liulishuo/filedownloader/b/d;->b(IJ)V

    .line 247
    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/c;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/model/a;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/c;->a:Lcom/liulishuo/filedownloader/b/b;

    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/b/b;->c(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final d(I)V
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->a:Lcom/liulishuo/filedownloader/b/b;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/b/b;->d(I)V

    .line 126
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/b/c;->i(I)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 127
    :cond_c
    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/b/d;->d(I)V

    return-void
.end method

.method public final e(I)Z
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/b/d;->e(I)Z

    .line 172
    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/c;->a:Lcom/liulishuo/filedownloader/b/b;

    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/b/b;->e(I)Z

    move-result p0

    return p0
.end method

.method public final f(I)V
    .registers 4

    .line 226
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->a:Lcom/liulishuo/filedownloader/b/b;

    .line 5175
    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/b/b;->e(I)Z

    .line 227
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/b/c;->i(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 228
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 229
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_32

    .line 230
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->g:Ljava/lang/Thread;

    .line 231
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 232
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->park()V

    .line 233
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    .line 5235
    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/b/d;->e(I)Z

    goto :goto_32

    .line 236
    :cond_2d
    iget-object v0, p0, Lcom/liulishuo/filedownloader/b/c;->b:Lcom/liulishuo/filedownloader/b/d;

    .line 6235
    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/b/d;->e(I)Z

    .line 238
    :cond_32
    :goto_32
    iget-object p0, p0, Lcom/liulishuo/filedownloader/b/c;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final g(I)V
    .registers 2

    .line 195
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/b/c;->i(I)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    :cond_7
    return-void
.end method
