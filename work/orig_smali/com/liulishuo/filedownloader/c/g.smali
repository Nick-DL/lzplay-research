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
    .registers 11

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
    .registers 10

    .line 37
    invoke-direct/range {p0 .. p8}, Lcom/liulishuo/filedownloader/c/g;-><init>(Lcom/liulishuo/filedownloader/a/b;Lcom/liulishuo/filedownloader/c/b;Lcom/liulishuo/filedownloader/c/e;IIZLcom/liulishuo/filedownloader/c/h;Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .registers 10

    .line 219
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 223
    :try_start_6
    iget-object v4, p0, Lcom/liulishuo/filedownloader/c/g;->m:Lcom/liulishuo/filedownloader/g/a;

    invoke-interface {v4}, Lcom/liulishuo/filedownloader/g/a;->a()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_d

    move v4, v2

    goto :goto_1c

    :catch_d
    move-exception v4

    .line 227
    sget-boolean v5, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v5, :cond_1b

    const-string v5, "Because of the system cannot guarantee that all the buffers have been synchronized with physical media, or write to filefailed, we just not flushAndSync process to database too %s"

    .line 228
    new-array v6, v2, [Ljava/lang/Object;

    aput-object v4, v6, v3

    invoke-static {p0, v5, v6}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    move v4, v3

    :goto_1c
    if-eqz v4, :cond_69

    .line 235
    iget v4, p0, Lcom/liulishuo/filedownloader/c/g;->e:I

    if-ltz v4, :cond_24

    move v4, v2

    goto :goto_25

    :cond_24
    move v4, v3

    :goto_25
    if-eqz v4, :cond_33

    .line 238
    iget-object v4, p0, Lcom/liulishuo/filedownloader/c/g;->n:Lcom/liulishuo/filedownloader/b/a;

    iget v5, p0, Lcom/liulishuo/filedownloader/c/g;->d:I

    iget v6, p0, Lcom/liulishuo/filedownloader/c/g;->e:I

    iget-wide v7, p0, Lcom/liulishuo/filedownloader/c/g;->a:J

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/liulishuo/filedownloader/b/a;->a(IIJ)V

    goto :goto_38

    .line 241
    :cond_33
    iget-object v4, p0, Lcom/liulishuo/filedownloader/c/g;->c:Lcom/liulishuo/filedownloader/c/h;

    invoke-interface {v4}, Lcom/liulishuo/filedownloader/c/h;->b()V

    .line 244
    :goto_38
    sget-boolean v4, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v4, :cond_69

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

    :cond_69
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 17

    move-object/from16 v1, p0

    .line 83
    iget-boolean v0, v1, Lcom/liulishuo/filedownloader/c/g;->b:Z

    if-eqz v0, :cond_7

    return-void

    .line 85
    :cond_7
    iget v0, v1, Lcom/liulishuo/filedownloader/c/g;->e:I

    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/g;->g:Lcom/liulishuo/filedownloader/a/b;

    invoke-static {v0, v2}, Lcom/liulishuo/filedownloader/h/f;->c(ILcom/liulishuo/filedownloader/a/b;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1b

    .line 87
    iget-object v0, v1, Lcom/liulishuo/filedownloader/c/g;->g:Lcom/liulishuo/filedownloader/a/b;

    invoke-static {v0}, Lcom/liulishuo/filedownloader/h/f;->b(Lcom/liulishuo/filedownloader/a/b;)J

    move-result-wide v2

    :cond_1b
    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_23b

    .line 97
    iget-wide v11, v1, Lcom/liulishuo/filedownloader/c/g;->k:J

    cmp-long v0, v11, v6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v11, 0x3

    if-lez v0, :cond_90

    iget-wide v12, v1, Lcom/liulishuo/filedownloader/c/g;->k:J

    cmp-long v0, v2, v12

    if-eqz v0, :cond_90

    .line 99
    iget-wide v12, v1, Lcom/liulishuo/filedownloader/c/g;->j:J

    cmp-long v0, v12, v4

    if-nez v0, :cond_4a

    .line 100
    new-array v0, v9, [Ljava/lang/Object;

    iget-wide v4, v1, Lcom/liulishuo/filedownloader/c/g;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v10

    const-string v4, "range[%d-)"

    invoke-static {v4, v0}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_62

    .line 102
    :cond_4a
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
    :goto_62
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
    :cond_90
    iget-wide v12, v1, Lcom/liulishuo/filedownloader/c/g;->a:J

    const/4 v14, 0x0

    .line 2052
    :try_start_93
    invoke-static {}, Lcom/liulishuo/filedownloader/c/c$a;->a()Lcom/liulishuo/filedownloader/c/c;

    move-result-object v0

    .line 2116
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/c/c;->e()Lcom/liulishuo/filedownloader/h/c$e;

    .line 124
    iget-object v0, v1, Lcom/liulishuo/filedownloader/c/g;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/liulishuo/filedownloader/h/f;->i(Ljava/lang/String;)Lcom/liulishuo/filedownloader/g/a;

    move-result-object v15
    :try_end_a0
    .catchall {:try_start_93 .. :try_end_a0} :catchall_20d

    :try_start_a0
    iput-object v15, v1, Lcom/liulishuo/filedownloader/c/g;->m:Lcom/liulishuo/filedownloader/g/a;

    .line 126
    iget-wide v4, v1, Lcom/liulishuo/filedownloader/c/g;->a:J

    invoke-interface {v15, v4, v5}, Lcom/liulishuo/filedownloader/g/a;->a(J)V

    .line 129
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v0, :cond_d2

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
    :cond_d2
    iget-object v0, v1, Lcom/liulishuo/filedownloader/c/g;->g:Lcom/liulishuo/filedownloader/a/b;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a/b;->a()Ljava/io/InputStream;

    move-result-object v4
    :try_end_d8
    .catchall {:try_start_a0 .. :try_end_d8} :catchall_20a

    const/16 v0, 0x1000

    .line 136
    :try_start_da
    new-array v0, v0, [B

    .line 138
    iget-boolean v5, v1, Lcom/liulishuo/filedownloader/c/g;->b:Z
    :try_end_de
    .catchall {:try_start_da .. :try_end_de} :catchall_206

    if-eqz v5, :cond_10c

    if-eqz v4, :cond_eb

    .line 168
    :try_start_e2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e5} :catch_e6

    goto :goto_eb

    :catch_e6
    move-exception v0

    move-object v2, v0

    .line 170
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_eb
    :goto_eb
    if-eqz v15, :cond_ff

    .line 175
    :try_start_ed
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/c/g;->b()V
    :try_end_f0
    .catchall {:try_start_ed .. :try_end_f0} :catchall_f1

    goto :goto_ff

    :catchall_f1
    move-exception v0

    move-object v1, v0

    if-eqz v15, :cond_fe

    .line 179
    :try_start_f5
    invoke-interface {v15}, Lcom/liulishuo/filedownloader/g/a;->b()V
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_f8} :catch_f9

    goto :goto_fe

    :catch_f9
    move-exception v0

    move-object v2, v0

    .line 181
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 182
    :cond_fe
    :goto_fe
    throw v1

    :cond_ff
    :goto_ff
    if-eqz v15, :cond_10b

    .line 179
    :try_start_101
    invoke-interface {v15}, Lcom/liulishuo/filedownloader/g/a;->b()V
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_104} :catch_105

    return-void

    :catch_105
    move-exception v0

    move-object v1, v0

    .line 181
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :cond_10b
    return-void

    .line 141
    :cond_10c
    :goto_10c
    :try_start_10c
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_183

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

    if-eqz v7, :cond_13d

    .line 2211
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/c/g;->b()V

    .line 2213
    iget-wide v7, v1, Lcom/liulishuo/filedownloader/c/g;->a:J

    iput-wide v7, v1, Lcom/liulishuo/filedownloader/c/g;->o:J

    .line 2214
    iput-wide v5, v1, Lcom/liulishuo/filedownloader/c/g;->p:J

    .line 156
    :cond_13d
    iget-boolean v5, v1, Lcom/liulishuo/filedownloader/c/g;->b:Z
    :try_end_13f
    .catchall {:try_start_10c .. :try_end_13f} :catchall_206

    if-eqz v5, :cond_16d

    if-eqz v4, :cond_14c

    .line 168
    :try_start_143
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_146
    .catch Ljava/io/IOException; {:try_start_143 .. :try_end_146} :catch_147

    goto :goto_14c

    :catch_147
    move-exception v0

    move-object v2, v0

    .line 170
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_14c
    :goto_14c
    if-eqz v15, :cond_160

    .line 175
    :try_start_14e
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/c/g;->b()V
    :try_end_151
    .catchall {:try_start_14e .. :try_end_151} :catchall_152

    goto :goto_160

    :catchall_152
    move-exception v0

    move-object v1, v0

    if-eqz v15, :cond_15f

    .line 179
    :try_start_156
    invoke-interface {v15}, Lcom/liulishuo/filedownloader/g/a;->b()V
    :try_end_159
    .catch Ljava/io/IOException; {:try_start_156 .. :try_end_159} :catch_15a

    goto :goto_15f

    :catch_15a
    move-exception v0

    move-object v2, v0

    .line 181
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 182
    :cond_15f
    :goto_15f
    throw v1

    :cond_160
    :goto_160
    if-eqz v15, :cond_16c

    .line 179
    :try_start_162
    invoke-interface {v15}, Lcom/liulishuo/filedownloader/g/a;->b()V
    :try_end_165
    .catch Ljava/io/IOException; {:try_start_162 .. :try_end_165} :catch_166

    return-void

    :catch_166
    move-exception v0

    move-object v1, v0

    .line 181
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :cond_16c
    return-void

    .line 158
    :cond_16d
    :try_start_16d
    iget-boolean v5, v1, Lcom/liulishuo/filedownloader/c/g;->h:Z

    if-eqz v5, :cond_17e

    invoke-static {}, Lcom/liulishuo/filedownloader/h/f;->b()Z

    move-result v5

    if-nez v5, :cond_178

    goto :goto_17e

    .line 159
    :cond_178
    new-instance v0, Lcom/liulishuo/filedownloader/e/c;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/e/c;-><init>()V

    throw v0
    :try_end_17e
    .catchall {:try_start_16d .. :try_end_17e} :catchall_206

    :cond_17e
    :goto_17e
    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x3

    goto :goto_10c

    :cond_183
    if-eqz v4, :cond_18e

    .line 168
    :try_start_185
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_188
    .catch Ljava/io/IOException; {:try_start_185 .. :try_end_188} :catch_189

    goto :goto_18e

    :catch_189
    move-exception v0

    move-object v4, v0

    .line 170
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_18e
    :goto_18e
    if-eqz v15, :cond_1a2

    .line 175
    :try_start_190
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/c/g;->b()V
    :try_end_193
    .catchall {:try_start_190 .. :try_end_193} :catchall_194

    goto :goto_1a2

    :catchall_194
    move-exception v0

    move-object v1, v0

    if-eqz v15, :cond_1a1

    .line 179
    :try_start_198
    invoke-interface {v15}, Lcom/liulishuo/filedownloader/g/a;->b()V
    :try_end_19b
    .catch Ljava/io/IOException; {:try_start_198 .. :try_end_19b} :catch_19c

    goto :goto_1a1

    :catch_19c
    move-exception v0

    move-object v2, v0

    .line 181
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 182
    :cond_1a1
    :goto_1a1
    throw v1

    :cond_1a2
    :goto_1a2
    if-eqz v15, :cond_1ad

    .line 179
    :try_start_1a4
    invoke-interface {v15}, Lcom/liulishuo/filedownloader/g/a;->b()V
    :try_end_1a7
    .catch Ljava/io/IOException; {:try_start_1a4 .. :try_end_1a7} :catch_1a8

    goto :goto_1ad

    :catch_1a8
    move-exception v0

    move-object v4, v0

    .line 181
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 188
    :cond_1ad
    :goto_1ad
    iget-wide v4, v1, Lcom/liulishuo/filedownloader/c/g;->a:J

    sub-long/2addr v4, v12

    const-wide/16 v6, -0x1

    cmp-long v0, v2, v6

    if-eqz v0, :cond_1fa

    cmp-long v0, v2, v4

    if-nez v0, :cond_1bb

    goto :goto_1fa

    .line 190
    :cond_1bb
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
    :cond_1fa
    :goto_1fa
    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/g;->c:Lcom/liulishuo/filedownloader/c/h;

    iget-object v3, v1, Lcom/liulishuo/filedownloader/c/g;->f:Lcom/liulishuo/filedownloader/c/e;

    iget-wide v4, v1, Lcom/liulishuo/filedownloader/c/g;->i:J

    iget-wide v6, v1, Lcom/liulishuo/filedownloader/c/g;->j:J

    invoke-interface/range {v2 .. v7}, Lcom/liulishuo/filedownloader/c/h;->a(Lcom/liulishuo/filedownloader/c/e;JJ)V

    return-void

    :catchall_206
    move-exception v0

    move-object v2, v0

    move-object v14, v4

    goto :goto_210

    :catchall_20a
    move-exception v0

    move-object v2, v0

    goto :goto_210

    :catchall_20d
    move-exception v0

    move-object v2, v0

    move-object v15, v14

    :goto_210
    if-eqz v14, :cond_21b

    .line 168
    :try_start_212
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_215
    .catch Ljava/io/IOException; {:try_start_212 .. :try_end_215} :catch_216

    goto :goto_21b

    :catch_216
    move-exception v0

    move-object v3, v0

    .line 170
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_21b
    :goto_21b
    if-eqz v15, :cond_22f

    .line 175
    :try_start_21d
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/c/g;->b()V
    :try_end_220
    .catchall {:try_start_21d .. :try_end_220} :catchall_221

    goto :goto_22f

    :catchall_221
    move-exception v0

    move-object v1, v0

    if-eqz v15, :cond_22e

    .line 179
    :try_start_225
    invoke-interface {v15}, Lcom/liulishuo/filedownloader/g/a;->b()V
    :try_end_228
    .catch Ljava/io/IOException; {:try_start_225 .. :try_end_228} :catch_229

    goto :goto_22e

    :catch_229
    move-exception v0

    move-object v2, v0

    .line 181
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 182
    :cond_22e
    :goto_22e
    throw v1

    :cond_22f
    :goto_22f
    if-eqz v15, :cond_23a

    .line 179
    :try_start_231
    invoke-interface {v15}, Lcom/liulishuo/filedownloader/g/a;->b()V
    :try_end_234
    .catch Ljava/io/IOException; {:try_start_231 .. :try_end_234} :catch_235

    goto :goto_23a

    :catch_235
    move-exception v0

    move-object v1, v0

    .line 181
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 182
    :cond_23a
    :goto_23a
    throw v2

    .line 90
    :cond_23b
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
