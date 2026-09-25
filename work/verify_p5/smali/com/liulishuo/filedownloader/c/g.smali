.class public final Lcom/liulishuo/filedownloader/c/g;
.super Ljava/lang/Object;
.source "FetchDataTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/c/g$a;
    }
.end annotation


# instance fields
.field a:J

.field volatile b:Z

.field private final c:Lcom/liulishuo/filedownloader/c/h;

.field private final d:I

.field private final e:I

.field private final f:Lcom/liulishuo/filedownloader/c/e;

.field private final g:Lcom/liulishuo/filedownloader/a/b;

.field private final h:Z

.field private final i:J

.field private final j:J

.field private final k:J

.field private final l:Ljava/lang/String;

.field private m:Lcom/liulishuo/filedownloader/g/a;

.field private final n:Lcom/liulishuo/filedownloader/b/a;

.field private volatile o:J

.field private volatile p:J


# direct methods
.method private constructor <init>(Lcom/liulishuo/filedownloader/a/b;Lcom/liulishuo/filedownloader/c/b;Lcom/liulishuo/filedownloader/c/e;IIZLcom/liulishuo/filedownloader/c/h;Ljava/lang/String;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 202
    iput-wide v0, p0, Lcom/liulishuo/filedownloader/c/g;->o:J

    .line 203
    iput-wide v0, p0, Lcom/liulishuo/filedownloader/c/g;->p:J

    .line 65
    iput-object p7, p0, Lcom/liulishuo/filedownloader/c/g;->c:Lcom/liulishuo/filedownloader/c/h;

    .line 66
    iput-object p8, p0, Lcom/liulishuo/filedownloader/c/g;->l:Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/liulishuo/filedownloader/c/g;->g:Lcom/liulishuo/filedownloader/a/b;

    .line 68
    iput-boolean p6, p0, Lcom/liulishuo/filedownloader/c/g;->h:Z

    .line 69
    iput-object p3, p0, Lcom/liulishuo/filedownloader/c/g;->f:Lcom/liulishuo/filedownloader/c/e;

    .line 70
    iput p5, p0, Lcom/liulishuo/filedownloader/c/g;->e:I

    .line 71
    iput p4, p0, Lcom/liulishuo/filedownloader/c/g;->d:I

    .line 1052
    invoke-static {}, Lcom/liulishuo/filedownloader/c/c$a;->a()Lcom/liulishuo/filedownloader/c/c;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/c/c;->b()Lcom/liulishuo/filedownloader/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/filedownloader/c/g;->n:Lcom/liulishuo/filedownloader/b/a;

    .line 74
    iget-wide p3, p2, Lcom/liulishuo/filedownloader/c/b;->a:J

    iput-wide p3, p0, Lcom/liulishuo/filedownloader/c/g;->i:J

    .line 75
    iget-wide p3, p2, Lcom/liulishuo/filedownloader/c/b;->c:J

    iput-wide p3, p0, Lcom/liulishuo/filedownloader/c/g;->j:J

    .line 76
    iget-wide p3, p2, Lcom/liulishuo/filedownloader/c/b;->b:J

    iput-wide p3, p0, Lcom/liulishuo/filedownloader/c/g;->a:J

    .line 77
    iget-wide p1, p2, Lcom/liulishuo/filedownloader/c/b;->d:J

    iput-wide p1, p0, Lcom/liulishuo/filedownloader/c/g;->k:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/liulishuo/filedownloader/a/b;Lcom/liulishuo/filedownloader/c/b;Lcom/liulishuo/filedownloader/c/e;IIZLcom/liulishuo/filedownloader/c/h;Ljava/lang/String;B)V
    .locals 0

    .line 37
    invoke-direct/range {p0 .. p8}, Lcom/liulishuo/filedownloader/c/g;-><init>(Lcom/liulishuo/filedownloader/a/b;Lcom/liulishuo/filedownloader/c/b;Lcom/liulishuo/filedownloader/c/e;IIZLcom/liulishuo/filedownloader/c/h;Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .locals 9

    .line 219
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 223
    :try_start_0
    iget-object v4, p0, Lcom/liulishuo/filedownloader/c/g;->m:Lcom/liulishuo/filedownloader/g/a;

    invoke-interface {v4}, Lcom/liulishuo/filedownloader/g/a;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v2

    goto :goto_0

    :catch_0
    move-exception v4

    .line 227
    sget-boolean v5, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v5, :cond_0

    const-string v5, "Because of the system cannot guarantee that all the buffers have been synchronized with physical media, or write to filefailed, we just not flushAndSync process to database too %s"

    .line 228
    new-array v6, v2, [Ljava/lang/Object;

    aput-object v4, v6, v3

    invoke-static {p0, v5, v6}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v4, :cond_3

    .line 235
    iget v4, p0, Lcom/liulishuo/filedownloader/c/g;->e:I

    if-ltz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    if-eqz v4, :cond_2

    .line 238
    iget-object v4, p0, Lcom/liulishuo/filedownloader/c/g;->n:Lcom/liulishuo/filedownloader/b/a;

    iget v5, p0, Lcom/liulishuo/filedownloader/c/g;->d:I

    iget v6, p0, Lcom/liulishuo/filedownloader/c/g;->e:I

    iget-wide v7, p0, Lcom/liulishuo/filedownloader/c/g;->a:J

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/liulishuo/filedownloader/b/a;->a(IIJ)V

    goto :goto_2

    .line 241
    :cond_2
    iget-object v4, p0, Lcom/liulishuo/filedownloader/c/g;->c:Lcom/liulishuo/filedownloader/c/h;

    invoke-interface {v4}, Lcom/liulishuo/filedownloader/c/h;->b()V

    .line 244
    :goto_2
    sget-boolean v4, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v4, :cond_3

    const-string v4, "require flushAndSync id[%d] index[%d] offset[%d], consume[%d]"

    const/4 v5, 0x4

    .line 245
    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/liulishuo/filedownloader/c/g;->d:I

    .line 247
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    iget v3, p0, Lcom/liulishuo/filedownloader/c/g;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x2

    iget-wide v6, p0, Lcom/liulishuo/filedownloader/c/g;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x3

    .line 248
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v2

    .line 246
    invoke-static {p0, v4, v5}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 16

    move-object/from16 v1, p0

    .line 83
    iget-boolean v0, v1, Lcom/liulishuo/filedownloader/c/g;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 85
    :cond_0
    iget v0, v1, Lcom/liulishuo/filedownloader/c/g;->e:I

    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/g;->g:Lcom/liulishuo/filedownloader/a/b;

    invoke-static {v0, v2}, Lcom/liulishuo/filedownloader/h/f;->c(ILcom/liulishuo/filedownloader/a/b;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 87
    iget-object v0, v1, Lcom/liulishuo/filedownloader/c/g;->g:Lcom/liulishuo/filedownloader/a/b;

    invoke-static {v0}, Lcom/liulishuo/filedownloader/h/f;->b(Lcom/liulishuo/filedownloader/a/b;)J

    move-result-wide v2

    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_1d

    .line 97
    iget-wide v11, v1, Lcom/liulishuo/filedownloader/c/g;->k:J

    cmp-long v0, v11, v6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v11, 0x3

    if-lez v0, :cond_3

    iget-wide v12, v1, Lcom/liulishuo/filedownloader/c/g;->k:J

    cmp-long v0, v2, v12

    if-eqz v0, :cond_3

    .line 99
    iget-wide v12, v1, Lcom/liulishuo/filedownloader/c/g;->j:J

    cmp-long v0, v12, v4

    if-nez v0, :cond_2

    .line 100
    new-array v0, v9, [Ljava/lang/Object;

    iget-wide v4, v1, Lcom/liulishuo/filedownloader/c/g;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v10

    const-string v4, "range[%d-)"

    invoke-static {v4, v0}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_2
    new-array v0, v8, [Ljava/lang/Object;

    iget-wide v4, v1, Lcom/liulishuo/filedownloader/c/g;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v10

    iget-wide v4, v1, Lcom/liulishuo/filedownloader/c/g;->j:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v9

    const-string v4, "range[%d-%d)"

    invoke-static {v4, v0}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_0
    new-instance v4, Lcom/liulishuo/filedownloader/e/a;

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v10

    iget-wide v12, v1, Lcom/liulishuo/filedownloader/c/g;->k:J

    .line 109
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v8

    iget v0, v1, Lcom/liulishuo/filedownloader/c/g;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v11

    iget v0, v1, Lcom/liulishuo/filedownloader/c/g;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    const-string v0, "require %s with contentLength(%d), but the backend response contentLength is %d on downloadId[%d]-connectionIndex[%d], please ask your backend dev to fix such problem."

    .line 105
    invoke-static {v0, v5}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/liulishuo/filedownloader/e/a;-><init>(Ljava/lang/String;)V

    throw v4

    .line 112
    :cond_3
    iget-wide v12, v1, Lcom/liulishuo/filedownloader/c/g;->a:J

    const/4 v14, 0x0

    .line 2052
    :try_start_0
    invoke-static {}, Lcom/liulishuo/filedownloader/c/c$a;->a()Lcom/liulishuo/filedownloader/c/c;

    move-result-object v0

    .line 2116
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/c/c;->e()Lcom/liulishuo/filedownloader/h/c$e;

    .line 124
    iget-object v0, v1, Lcom/liulishuo/filedownloader/c/g;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/liulishuo/filedownloader/h/f;->i(Ljava/lang/String;)Lcom/liulishuo/filedownloader/g/a;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    iput-object v15, v1, Lcom/liulishuo/filedownloader/c/g;->m:Lcom/liulishuo/filedownloader/g/a;

    .line 126
    iget-wide v4, v1, Lcom/liulishuo/filedownloader/c/g;->a:J

    invoke-interface {v15, v4, v5}, Lcom/liulishuo/filedownloader/g/a;->a(J)V

    .line 129
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v0, :cond_4

    const-string v0, "start fetch(%d): range [%d, %d), seek to[%d]"

    .line 130
    new-array v4, v7, [Ljava/lang/Object;

    iget v5, v1, Lcom/liulishuo/filedownloader/c/g;->e:I

    .line 131
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    iget-wide v6, v1, Lcom/liulishuo/filedownloader/c/g;->i:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v9

    iget-wide v5, v1, Lcom/liulishuo/filedownloader/c/g;->j:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    iget-wide v5, v1, Lcom/liulishuo/filedownloader/c/g;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v11

    .line 130
    invoke-static {v1, v0, v4}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    :cond_4
    iget-object v0, v1, Lcom/liulishuo/filedownloader/c/g;->g:Lcom/liulishuo/filedownloader/a/b;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a/b;->a()Ljava/io/InputStream;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/16 v0, 0x1000

    .line 136
    :try_start_2
    new-array v0, v0, [B

    .line 138
    iget-boolean v5, v1, Lcom/liulishuo/filedownloader/c/g;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v5, :cond_9

    if-eqz v4, :cond_5

    .line 168
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 170
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_1
    if-eqz v15, :cond_7

    .line 175
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/c/g;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v15, :cond_6

    .line 179
    :try_start_5
    invoke-interface {v15}, Lcom/liulishuo/filedownloader/g/a;->b()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 181
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 182
    :cond_6
    :goto_2
    throw v1

    :cond_7
    :goto_3
    if-eqz v15, :cond_8

    .line 179
    :try_start_6
    invoke-interface {v15}, Lcom/liulishuo/filedownloader/g/a;->b()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    return-void

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 181
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :cond_8
    return-void

    .line 141
    :cond_9
    :goto_4
    :try_start_7
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_12

    .line 146
    invoke-interface {v15, v0, v5}, Lcom/liulishuo/filedownloader/g/a;->a([BI)V

    .line 148
    iget-wide v6, v1, Lcom/liulishuo/filedownloader/c/g;->a:J

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, v1, Lcom/liulishuo/filedownloader/c/g;->a:J

    .line 151
    iget-object v5, v1, Lcom/liulishuo/filedownloader/c/g;->c:Lcom/liulishuo/filedownloader/c/h;

    invoke-interface {v5, v8, v9}, Lcom/liulishuo/filedownloader/c/h;->a(J)V

    .line 2206
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2207
    iget-wide v7, v1, Lcom/liulishuo/filedownloader/c/g;->a:J

    iget-wide v10, v1, Lcom/liulishuo/filedownloader/c/g;->o:J

    sub-long/2addr v7, v10

    .line 2208
    iget-wide v9, v1, Lcom/liulishuo/filedownloader/c/g;->p:J

    sub-long v9, v5, v9

    .line 2210
    invoke-static {v7, v8, v9, v10}, Lcom/liulishuo/filedownloader/h/f;->a(JJ)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2211
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/c/g;->b()V

    .line 2213
    iget-wide v7, v1, Lcom/liulishuo/filedownloader/c/g;->a:J

    iput-wide v7, v1, Lcom/liulishuo/filedownloader/c/g;->o:J

    .line 2214
    iput-wide v5, v1, Lcom/liulishuo/filedownloader/c/g;->p:J

    .line 156
    :cond_a
    iget-boolean v5, v1, Lcom/liulishuo/filedownloader/c/g;->b:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v5, :cond_f

    if-eqz v4, :cond_b

    .line 168
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 170
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    :goto_5
    if-eqz v15, :cond_d

    .line 175
    :try_start_9
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/c/g;->b()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v1, v0

    if-eqz v15, :cond_c

    .line 179
    :try_start_a
    invoke-interface {v15}, Lcom/liulishuo/filedownloader/g/a;->b()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 181
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 182
    :cond_c
    :goto_6
    throw v1

    :cond_d
    :goto_7
    if-eqz v15, :cond_e

    .line 179
    :try_start_b
    invoke-interface {v15}, Lcom/liulishuo/filedownloader/g/a;->b()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    return-void

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 181
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :cond_e
    return-void

    .line 158
    :cond_f
    :try_start_c
    iget-boolean v5, v1, Lcom/liulishuo/filedownloader/c/g;->h:Z

    if-eqz v5, :cond_11

    invoke-static {}, Lcom/liulishuo/filedownloader/h/f;->b()Z

    move-result v5

    if-nez v5, :cond_10

    goto :goto_8

    .line 159
    :cond_10
    new-instance v0, Lcom/liulishuo/filedownloader/e/c;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/e/c;-><init>()V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :cond_11
    :goto_8
    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x3

    goto :goto_4

    :cond_12
    if-eqz v4, :cond_13

    .line 168
    :try_start_d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_9

    :catch_6
    move-exception v0

    move-object v4, v0

    .line 170
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_13
    :goto_9
    if-eqz v15, :cond_15

    .line 175
    :try_start_e
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/c/g;->b()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v1, v0

    if-eqz v15, :cond_14

    .line 179
    :try_start_f
    invoke-interface {v15}, Lcom/liulishuo/filedownloader/g/a;->b()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    goto :goto_a

    :catch_7
    move-exception v0

    move-object v2, v0

    .line 181
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 182
    :cond_14
    :goto_a
    throw v1

    :cond_15
    :goto_b
    if-eqz v15, :cond_16

    .line 179
    :try_start_10
    invoke-interface {v15}, Lcom/liulishuo/filedownloader/g/a;->b()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    move-object v4, v0

    .line 181
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 188
    :cond_16
    :goto_c
    iget-wide v4, v1, Lcom/liulishuo/filedownloader/c/g;->a:J

    sub-long/2addr v4, v12

    const-wide/16 v6, -0x1

    cmp-long v0, v2, v6

    if-eqz v0, :cond_18

    cmp-long v0, v2, v4

    if-nez v0, :cond_17

    goto :goto_d

    .line 190
    :cond_17
    new-instance v0, Lcom/liulishuo/filedownloader/e/a;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    .line 193
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v6, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v6, v3

    iget-wide v2, v1, Lcom/liulishuo/filedownloader/c/g;->i:J

    .line 194
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v6, v3

    iget-wide v2, v1, Lcom/liulishuo/filedownloader/c/g;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v6, v3

    iget-wide v1, v1, Lcom/liulishuo/filedownloader/c/g;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v6, v2

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v6, v2

    const-string v1, "fetched length[%d] != content length[%d], range[%d, %d) offset[%d] fetch begin offset[%d]"

    .line 191
    invoke-static {v1, v6}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liulishuo/filedownloader/e/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_18
    :goto_d
    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/g;->c:Lcom/liulishuo/filedownloader/c/h;

    iget-object v3, v1, Lcom/liulishuo/filedownloader/c/g;->f:Lcom/liulishuo/filedownloader/c/e;

    iget-wide v4, v1, Lcom/liulishuo/filedownloader/c/g;->i:J

    iget-wide v6, v1, Lcom/liulishuo/filedownloader/c/g;->j:J

    invoke-interface/range {v2 .. v7}, Lcom/liulishuo/filedownloader/c/h;->a(Lcom/liulishuo/filedownloader/c/e;JJ)V

    return-void

    :catchall_3
    move-exception v0

    move-object v2, v0

    move-object v14, v4

    goto :goto_e

    :catchall_4
    move-exception v0

    move-object v2, v0

    goto :goto_e

    :catchall_5
    move-exception v0

    move-object v2, v0

    move-object v15, v14

    :goto_e
    if-eqz v14, :cond_19

    .line 168
    :try_start_11
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    goto :goto_f

    :catch_9
    move-exception v0

    move-object v3, v0

    .line 170
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_19
    :goto_f
    if-eqz v15, :cond_1b

    .line 175
    :try_start_12
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/c/g;->b()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    goto :goto_11

    :catchall_6
    move-exception v0

    move-object v1, v0

    if-eqz v15, :cond_1a

    .line 179
    :try_start_13
    invoke-interface {v15}, Lcom/liulishuo/filedownloader/g/a;->b()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    move-object v2, v0

    .line 181
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 182
    :cond_1a
    :goto_10
    throw v1

    :cond_1b
    :goto_11
    if-eqz v15, :cond_1c

    .line 179
    :try_start_14
    invoke-interface {v15}, Lcom/liulishuo/filedownloader/g/a;->b()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b

    goto :goto_12

    :catch_b
    move-exception v0

    move-object v1, v0

    .line 181
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 182
    :cond_1c
    :goto_12
    throw v2

    .line 90
    :cond_1d
    new-instance v0, Lcom/liulishuo/filedownloader/e/a;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, v1, Lcom/liulishuo/filedownloader/c/g;->d:I

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v1, v1, Lcom/liulishuo/filedownloader/c/g;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, "there isn\'t any content need to download on %d-%d with the content-length is 0"

    .line 91
    invoke-static {v1, v2}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liulishuo/filedownloader/e/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method
