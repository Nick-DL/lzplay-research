.class public final Lcom/liulishuo/filedownloader/c/f;
.super Ljava/lang/Object;
.source "DownloadStatusCallback.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/c/f$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

.field public final b:Lcom/liulishuo/filedownloader/b/a;

.field final c:Lcom/liulishuo/filedownloader/c/f$a;

.field final d:I

.field final e:I

.field f:J

.field g:Landroid/os/Handler;

.field h:Landroid/os/HandlerThread;

.field volatile i:J

.field final j:Ljava/util/concurrent/atomic/AtomicLong;

.field final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final n:I

.field private volatile o:Z

.field private volatile p:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/liulishuo/filedownloader/model/FileDownloadModel;III)V
    .locals 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/c/f;->o:Z

    const-wide/16 v1, 0x0

    .line 148
    iput-wide v1, p0, Lcom/liulishuo/filedownloader/c/f;->i:J

    .line 150
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/c/f;->j:Ljava/util/concurrent/atomic/AtomicLong;

    .line 151
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/c/f;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 357
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/c/f;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 452
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/c/f;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    iput-object p1, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 1052
    invoke-static {}, Lcom/liulishuo/filedownloader/c/c$a;->a()Lcom/liulishuo/filedownloader/c/c;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/c/c;->b()Lcom/liulishuo/filedownloader/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/filedownloader/c/f;->b:Lcom/liulishuo/filedownloader/b/a;

    const/4 p1, 0x5

    if-ge p3, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p3

    .line 75
    :goto_0
    iput p1, p0, Lcom/liulishuo/filedownloader/c/f;->d:I

    .line 77
    iput p4, p0, Lcom/liulishuo/filedownloader/c/f;->e:I

    .line 78
    new-instance p1, Lcom/liulishuo/filedownloader/c/f$a;

    invoke-direct {p1}, Lcom/liulishuo/filedownloader/c/f$a;-><init>()V

    iput-object p1, p0, Lcom/liulishuo/filedownloader/c/f;->c:Lcom/liulishuo/filedownloader/c/f$a;

    .line 79
    iput p2, p0, Lcom/liulishuo/filedownloader/c/f;->n:I

    return-void
.end method

.method static a(JJ)J
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const-wide/16 v3, -0x1

    if-gtz v2, :cond_0

    return-wide v3

    :cond_0
    cmp-long v2, p0, v3

    const-wide/16 v3, 0x1

    if-nez v2, :cond_1

    return-wide v3

    .line 234
    :cond_1
    div-long/2addr p0, p2

    cmp-long p2, p0, v0

    if-gtz p2, :cond_2

    return-wide v3

    :cond_2
    return-wide p0
.end method

.method private a(Landroid/database/sqlite/SQLiteFullException;)V
    .locals 5

    .line 276
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 1111
    iget v0, v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 277
    sget-boolean v1, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "the data of the task[%d] is dirty, because the SQLite full exception[%s], so remove it from the database directly."

    const/4 v2, 0x2

    .line 278
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 280
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 278
    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1179
    iput-object p1, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->h:Ljava/lang/String;

    .line 284
    iget-object p1, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(B)V

    .line 286
    iget-object p1, p0, Lcom/liulishuo/filedownloader/c/f;->b:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {p1, v0}, Lcom/liulishuo/filedownloader/b/a;->e(I)Z

    .line 287
    iget-object p0, p0, Lcom/liulishuo/filedownloader/c/f;->b:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {p0, v0}, Lcom/liulishuo/filedownloader/b/a;->d(I)V

    return-void
.end method

.method private b(Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 10

    .line 240
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()Ljava/lang/String;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->d()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/liulishuo/filedownloader/h/e;->a()Lcom/liulishuo/filedownloader/h/e;

    move-result-object v1

    iget-boolean v1, v1, Lcom/liulishuo/filedownloader/h/e;->f:Z

    if-eqz v1, :cond_3

    :cond_0
    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 249
    invoke-static {v0}, Lcom/liulishuo/filedownloader/h/f;->e(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v1, 0x1000

    cmp-long v1, v3, v1

    if-gtz v1, :cond_3

    const-wide/16 v1, 0x0

    .line 253
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Exception with: free space isn\'t enough, and the target file not exist."

    const/4 v5, 0x0

    .line 255
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0, p1, v0, v5}, Lcom/liulishuo/filedownloader/h/d;->a(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide v7, v1

    goto :goto_0

    .line 258
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v0

    move-wide v7, v0

    .line 261
    :goto_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x9

    if-lt p0, v0, :cond_2

    .line 262
    new-instance p0, Lcom/liulishuo/filedownloader/e/d;

    const-wide/16 v5, 0x1000

    move-object v2, p0

    move-object v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/liulishuo/filedownloader/e/d;-><init>(JJJLjava/lang/Throwable;)V

    goto :goto_1

    .line 265
    :cond_2
    new-instance p0, Lcom/liulishuo/filedownloader/e/d;

    const-wide/16 v5, 0x1000

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/liulishuo/filedownloader/e/d;-><init>(JJJ)V

    goto :goto_1

    :cond_3
    move-object p0, p1

    :goto_1
    return-object p0
.end method

.method private b(Ljava/lang/Exception;I)V
    .locals 2

    .line 409
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/c/f;->b(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p1

    .line 410
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/f;->c:Lcom/liulishuo/filedownloader/c/f$a;

    .line 7513
    iput-object p1, v0, Lcom/liulishuo/filedownloader/c/f$a;->b:Ljava/lang/Exception;

    .line 411
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/f;->c:Lcom/liulishuo/filedownloader/c/f$a;

    iget v1, p0, Lcom/liulishuo/filedownloader/c/f;->n:I

    sub-int/2addr v1, p2

    .line 7517
    iput v1, v0, Lcom/liulishuo/filedownloader/c/f$a;->c:I

    .line 413
    iget-object p2, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(B)V

    .line 414
    iget-object p2, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8179
    iput-object v1, p2, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->h:Ljava/lang/String;

    .line 416
    iget-object p2, p0, Lcom/liulishuo/filedownloader/c/f;->b:Lcom/liulishuo/filedownloader/b/a;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 9111
    iget v1, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 416
    invoke-interface {p2, v1, p1}, Lcom/liulishuo/filedownloader/b/a;->a(ILjava/lang/Throwable;)V

    .line 417
    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/c/f;->a(B)V

    return-void
.end method

.method private e()V
    .locals 11

    .line 291
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()Ljava/lang/String;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()Ljava/lang/String;

    move-result-object v1

    .line 294
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 297
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_1

    .line 300
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 301
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "The target file([%s], [%d]) will be replaced with the new downloaded file[%d]"

    const/4 v10, 0x3

    .line 308
    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v3

    .line 310
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v10, v4

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v10, v7

    .line 308
    invoke-static {p0, v6, v10}, Lcom/liulishuo/filedownloader/h/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 302
    :cond_0
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Can\'t delete the old file([%s], [%d]), so can\'t replace it with the new downloaded one."

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v3

    .line 305
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v4

    .line 302
    invoke-static {v6, v7}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 314
    :cond_1
    :goto_0
    invoke-virtual {v2, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    xor-int/2addr v5, v4

    if-nez v5, :cond_2

    return-void

    .line 316
    :cond_2
    :try_start_1
    new-instance v6, Ljava/io/IOException;

    const-string v8, "Can\'t rename the  temp downloaded file(%s) to the target file(%s)"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v3

    aput-object v1, v7, v4

    invoke-static {v8, v7}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v1

    move v5, v4

    :goto_1
    if-eqz v5, :cond_3

    .line 322
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 323
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_3

    .line 324
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v0, "delete the temp file(%s) failed, on completed downloading."

    invoke-static {p0, v0, v2}, Lcom/liulishuo/filedownloader/h/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method private f()V
    .locals 3

    .line 381
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/c/f;->e()V

    .line 383
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(B)V

    .line 385
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/f;->b:Lcom/liulishuo/filedownloader/b/a;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 4111
    iget v2, v2, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 385
    invoke-interface {v0, v2}, Lcom/liulishuo/filedownloader/b/a;->f(I)V

    .line 386
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/f;->b:Lcom/liulishuo/filedownloader/b/a;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 5111
    iget v2, v2, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 386
    invoke-interface {v0, v2}, Lcom/liulishuo/filedownloader/b/a;->d(I)V

    .line 388
    invoke-virtual {p0, v1}, Lcom/liulishuo/filedownloader/c/f;->a(B)V

    .line 390
    invoke-static {}, Lcom/liulishuo/filedownloader/h/e;->a()Lcom/liulishuo/filedownloader/h/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/liulishuo/filedownloader/h/e;->g:Z

    if-eqz v0, :cond_0

    .line 391
    iget-object p0, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-static {p0}, Lcom/liulishuo/filedownloader/services/f;->a(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    :cond_0
    return-void
.end method

.method private g()Z
    .locals 6

    .line 396
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    iget-object p0, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 5155
    iget-object p0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 397
    invoke-virtual {v0, v2, v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b(J)V

    goto :goto_0

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 6155
    iget-object v0, v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 398
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 6159
    iget-wide v4, v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 399
    new-instance v0, Lcom/liulishuo/filedownloader/e/a;

    const-string v2, "sofar[%d] not equal total[%d]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 7155
    iget-object v4, v4, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 401
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 7159
    iget-wide v4, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g:J

    .line 401
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 400
    invoke-static {v2, v3}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liulishuo/filedownloader/e/a;-><init>(Ljava/lang/String;)V

    .line 7189
    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/c/f;->a(Ljava/lang/Exception;)V

    return v4

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method final a()V
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/f;->g:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/f;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/f;->h:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 94
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/c/f;->p:Ljava/lang/Thread;

    .line 95
    :goto_0
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/c/f;->o:Z

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    goto :goto_0

    .line 98
    :cond_0
    iput-object v1, p0, Lcom/liulishuo/filedownloader/c/f;->p:Ljava/lang/Thread;

    :cond_1
    return-void
.end method

.method public final a(B)V
    .locals 3

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 477
    sget-boolean p1, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "High concurrent cause, Already paused and we don\'t need to call-back to Task in here, %d"

    const/4 v0, 0x1

    .line 489
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 12111
    iget v2, v2, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 490
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 489
    invoke-static {p0, p1, v0}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 13034
    :cond_1
    invoke-static {}, Lcom/liulishuo/filedownloader/message/c$a;->a()Lcom/liulishuo/filedownloader/message/c;

    move-result-object v0

    .line 495
    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    iget-object p0, p0, Lcom/liulishuo/filedownloader/c/f;->c:Lcom/liulishuo/filedownloader/c/f$a;

    .line 496
    invoke-static {p1, v1, p0}, Lcom/liulishuo/filedownloader/message/d;->a(BLcom/liulishuo/filedownloader/model/FileDownloadModel;Lcom/liulishuo/filedownloader/c/f$a;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object p0

    .line 495
    invoke-virtual {v0, p0}, Lcom/liulishuo/filedownloader/message/c;->a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method final declared-synchronized a(Landroid/os/Message;)V
    .locals 4

    monitor-enter p0

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/f;->h:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 207
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "require callback %d but the host thread of the flow has already dead, what is occurred because of there are several reason can final this flow on different thread."

    .line 208
    new-array v2, v2, [Ljava/lang/Object;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p0, v0, v2}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :cond_0
    monitor-exit p0

    return-void

    .line 214
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/f;->g:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 216
    :try_start_2
    iget-object v3, p0, Lcom/liulishuo/filedownloader/c/f;->h:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_3

    .line 217
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "require callback %d but the host thread of the flow has already dead, what is occurred because of there are several reason can final this flow on different thread."

    .line 218
    new-array v2, v2, [Ljava/lang/Object;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p0, v0, v2}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 225
    :cond_2
    monitor-exit p0

    return-void

    .line 222
    :cond_3
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 205
    monitor-exit p0

    throw p1
.end method

.method final a(Ljava/lang/Exception;)V
    .locals 5

    .line 428
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/c/f;->b(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v0

    .line 430
    instance-of v1, v0, Landroid/database/sqlite/SQLiteFullException;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 433
    move-object p1, v0

    check-cast p1, Landroid/database/sqlite/SQLiteFullException;

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/c/f;->a(Landroid/database/sqlite/SQLiteFullException;)V

    goto :goto_0

    .line 438
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1, v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(B)V

    .line 439
    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10179
    iput-object p1, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->h:Ljava/lang/String;

    .line 441
    iget-object p1, p0, Lcom/liulishuo/filedownloader/c/f;->b:Lcom/liulishuo/filedownloader/b/a;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 11111
    iget v1, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 441
    iget-object v3, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 11155
    iget-object v3, v3, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    .line 441
    invoke-interface {p1, v1, v0, v3, v4}, Lcom/liulishuo/filedownloader/b/a;->a(ILjava/lang/Throwable;J)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v0, p1

    .line 444
    move-object p1, v0

    check-cast p1, Landroid/database/sqlite/SQLiteFullException;

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/c/f;->a(Landroid/database/sqlite/SQLiteFullException;)V

    .line 448
    :goto_0
    iget-object p1, p0, Lcom/liulishuo/filedownloader/c/f;->c:Lcom/liulishuo/filedownloader/c/f$a;

    .line 11513
    iput-object v0, p1, Lcom/liulishuo/filedownloader/c/f$a;->b:Ljava/lang/Exception;

    .line 449
    invoke-virtual {p0, v2}, Lcom/liulishuo/filedownloader/c/f;->a(B)V

    return-void
.end method

.method final a(Ljava/lang/Exception;I)V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/f;->j:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 173
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/f;->g:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 175
    invoke-direct {p0, p1, p2}, Lcom/liulishuo/filedownloader/c/f;->b(Ljava/lang/Exception;I)V

    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/f;->g:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/c/f;->a(Landroid/os/Message;)V

    return-void
.end method

.method final b()V
    .locals 1

    .line 193
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/c/f;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/c/f;->f()V

    return-void
.end method

.method final c()V
    .locals 5

    .line 360
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 2155
    iget-object v0, v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 360
    iget-object v2, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 2159
    iget-wide v2, v2, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/f;->b:Lcom/liulishuo/filedownloader/b/a;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 3111
    iget v1, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 361
    iget-object p0, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 3155
    iget-object p0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 361
    invoke-interface {v0, v1, v2, v3}, Lcom/liulishuo/filedownloader/b/a;->a(IJ)V

    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/f;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const/4 v3, 0x3

    if-eqz v0, :cond_2

    .line 366
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "handleProgress update model\'s status with progress"

    .line 367
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v4}, Lcom/liulishuo/filedownloader/h/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0, v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(B)V

    .line 372
    :cond_2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/f;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 373
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "handleProgress notify user progress status"

    .line 374
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/h/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    :cond_3
    invoke-virtual {p0, v3}, Lcom/liulishuo/filedownloader/c/f;->a(B)V

    :cond_4
    return-void
.end method

.method final d()V
    .locals 5

    .line 421
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(B)V

    .line 423
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/f;->b:Lcom/liulishuo/filedownloader/b/a;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 10111
    iget v2, v2, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 423
    iget-object v3, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 10155
    iget-object v3, v3, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    .line 423
    invoke-interface {v0, v2, v3, v4}, Lcom/liulishuo/filedownloader/b/a;->b(IJ)V

    .line 424
    invoke-virtual {p0, v1}, Lcom/liulishuo/filedownloader/c/f;->a(B)V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 v0, 0x1

    .line 334
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/c/f;->o:Z

    .line 335
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 343
    :cond_0
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Exception;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1, p1}, Lcom/liulishuo/filedownloader/c/f;->b(Ljava/lang/Exception;I)V

    goto :goto_0

    .line 340
    :cond_1
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/c/f;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    :goto_0
    iput-boolean v3, p0, Lcom/liulishuo/filedownloader/c/f;->o:Z

    .line 350
    iget-object p1, p0, Lcom/liulishuo/filedownloader/c/f;->p:Ljava/lang/Thread;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/liulishuo/filedownloader/c/f;->p:Ljava/lang/Thread;

    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_2
    return v0

    :catchall_0
    move-exception p1

    .line 349
    iput-boolean v3, p0, Lcom/liulishuo/filedownloader/c/f;->o:Z

    .line 350
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/f;->p:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/liulishuo/filedownloader/c/f;->p:Ljava/lang/Thread;

    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_3
    throw p1
.end method
