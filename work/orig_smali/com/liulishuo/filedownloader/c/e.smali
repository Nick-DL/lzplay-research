.class public final Lcom/liulishuo/filedownloader/c/e;
.super Ljava/lang/Object;
.source "DownloadRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/c/e$a;
    }
.end annotation


# instance fields
.field final a:I

.field private final b:Lcom/liulishuo/filedownloader/c/a;

.field private final c:Lcom/liulishuo/filedownloader/c/h;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private f:Lcom/liulishuo/filedownloader/c/g;

.field private volatile g:Z

.field private final h:I


# direct methods
.method private constructor <init>(IILcom/liulishuo/filedownloader/c/a;Lcom/liulishuo/filedownloader/c/h;ZLjava/lang/String;)V
    .registers 7

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/liulishuo/filedownloader/c/e;->h:I

    .line 54
    iput p2, p0, Lcom/liulishuo/filedownloader/c/e;->a:I

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/liulishuo/filedownloader/c/e;->g:Z

    .line 56
    iput-object p4, p0, Lcom/liulishuo/filedownloader/c/e;->c:Lcom/liulishuo/filedownloader/c/h;

    .line 57
    iput-object p6, p0, Lcom/liulishuo/filedownloader/c/e;->d:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/liulishuo/filedownloader/c/e;->b:Lcom/liulishuo/filedownloader/c/a;

    .line 59
    iput-boolean p5, p0, Lcom/liulishuo/filedownloader/c/e;->e:Z

    return-void
.end method

.method synthetic constructor <init>(IILcom/liulishuo/filedownloader/c/a;Lcom/liulishuo/filedownloader/c/h;ZLjava/lang/String;B)V
    .registers 8

    .line 38
    invoke-direct/range {p0 .. p6}, Lcom/liulishuo/filedownloader/c/e;-><init>(IILcom/liulishuo/filedownloader/c/a;Lcom/liulishuo/filedownloader/c/h;ZLjava/lang/String;)V

    return-void
.end method

.method private b()J
    .registers 5

    .line 9052
    invoke-static {}, Lcom/liulishuo/filedownloader/c/c$a;->a()Lcom/liulishuo/filedownloader/c/c;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/c/c;->b()Lcom/liulishuo/filedownloader/b/a;

    move-result-object v0

    .line 159
    iget v1, p0, Lcom/liulishuo/filedownloader/c/e;->a:I

    if-ltz v1, :cond_2b

    .line 161
    iget v1, p0, Lcom/liulishuo/filedownloader/c/e;->h:I

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/b/a;->c(I)Ljava/util/List;

    move-result-object v0

    .line 162
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liulishuo/filedownloader/model/a;

    .line 9054
    iget v2, v1, Lcom/liulishuo/filedownloader/model/a;->b:I

    .line 163
    iget v3, p0, Lcom/liulishuo/filedownloader/c/e;->a:I

    if-ne v2, v3, :cond_16

    .line 9070
    iget-wide v0, v1, Lcom/liulishuo/filedownloader/model/a;->d:J

    return-wide v0

    .line 169
    :cond_2b
    iget p0, p0, Lcom/liulishuo/filedownloader/c/e;->h:I

    invoke-interface {v0, p0}, Lcom/liulishuo/filedownloader/b/a;->b(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object p0

    if-eqz p0, :cond_3a

    .line 9155
    iget-object p0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0

    :cond_3a
    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/c/e;->g:Z

    .line 64
    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/e;->f:Lcom/liulishuo/filedownloader/c/g;

    if-eqz v1, :cond_b

    iget-object p0, p0, Lcom/liulishuo/filedownloader/c/e;->f:Lcom/liulishuo/filedownloader/c/g;

    .line 1059
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/c/g;->b:Z

    :cond_b
    return-void
.end method

.method public final run()V
    .registers 17

    move-object/from16 v1, p0

    const/16 v0, 0xa

    .line 73
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v2, 0x0

    const/4 v0, 0x0

    move-object v3, v0

    move v4, v2

    :cond_b
    :goto_b
    const/4 v5, 0x1

    .line 81
    :try_start_c
    iget-boolean v0, v1, Lcom/liulishuo/filedownloader/c/e;->g:Z
    :try_end_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_e} :catch_128
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_e} :catch_128
    .catch Lcom/liulishuo/filedownloader/e/a; {:try_start_c .. :try_end_e} :catch_128
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_e} :catch_128
    .catchall {:try_start_c .. :try_end_e} :catchall_124

    if-eqz v0, :cond_16

    if-eqz v3, :cond_15

    .line 151
    invoke-interface {v3}, Lcom/liulishuo/filedownloader/a/b;->f()V

    :cond_15
    return-void

    .line 86
    :cond_16
    :try_start_16
    iget-object v0, v1, Lcom/liulishuo/filedownloader/c/e;->b:Lcom/liulishuo/filedownloader/c/a;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/c/a;->a()Lcom/liulishuo/filedownloader/a/b;

    move-result-object v4
    :try_end_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_1c} :catch_121
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1c} :catch_121
    .catch Lcom/liulishuo/filedownloader/e/a; {:try_start_16 .. :try_end_1c} :catch_121
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_1c} :catch_121
    .catchall {:try_start_16 .. :try_end_1c} :catchall_124

    .line 87
    :try_start_1c
    invoke-interface {v4}, Lcom/liulishuo/filedownloader/a/b;->e()I

    move-result v0

    .line 89
    sget-boolean v3, Lcom/liulishuo/filedownloader/h/d;->a:Z

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x4

    if-eqz v3, :cond_4a

    const-string v3, "the connection[%d] for %d, is connected %s with code[%d]"

    .line 90
    new-array v9, v8, [Ljava/lang/Object;

    iget v10, v1, Lcom/liulishuo/filedownloader/c/e;->a:I

    .line 92
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    iget v10, v1, Lcom/liulishuo/filedownloader/c/e;->h:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    iget-object v10, v1, Lcom/liulishuo/filedownloader/c/e;->b:Lcom/liulishuo/filedownloader/c/a;

    .line 1169
    iget-object v10, v10, Lcom/liulishuo/filedownloader/c/a;->d:Lcom/liulishuo/filedownloader/c/b;

    aput-object v10, v9, v7

    .line 92
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    .line 91
    invoke-static {v1, v3, v9}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4a
    const/16 v3, 0xce

    if-eq v0, v3, :cond_84

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_53

    goto :goto_84

    .line 96
    :cond_53
    new-instance v3, Ljava/net/SocketException;

    const-string v9, "Connection failed with request[%s] response[%s] http-state[%d] on task[%d-%d], which is changed after verify connection, so please try again."

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, v1, Lcom/liulishuo/filedownloader/c/e;->b:Lcom/liulishuo/filedownloader/c/a;

    .line 2165
    iget-object v11, v11, Lcom/liulishuo/filedownloader/c/a;->e:Ljava/util/Map;

    aput-object v11, v10, v2

    .line 102
    invoke-interface {v4}, Lcom/liulishuo/filedownloader/a/b;->c()Ljava/util/Map;

    move-result-object v11

    aput-object v11, v10, v5

    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v10, v7

    iget v0, v1, Lcom/liulishuo/filedownloader/c/e;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v10, v6

    iget v0, v1, Lcom/liulishuo/filedownloader/c/e;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v10, v8

    .line 97
    invoke-static {v9, v10}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_84
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_84} :catch_11e
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_84} :catch_11e
    .catch Lcom/liulishuo/filedownloader/e/a; {:try_start_1c .. :try_end_84} :catch_11e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_84} :catch_11e
    .catchall {:try_start_1c .. :try_end_84} :catchall_11b

    .line 107
    :cond_84
    :goto_84
    :try_start_84
    new-instance v0, Lcom/liulishuo/filedownloader/c/g$a;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/c/g$a;-><init>()V

    .line 109
    iget-boolean v3, v1, Lcom/liulishuo/filedownloader/c/e;->g:Z
    :try_end_8b
    .catch Ljava/lang/IllegalAccessException; {:try_start_84 .. :try_end_8b} :catch_117
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_8b} :catch_117
    .catch Lcom/liulishuo/filedownloader/e/a; {:try_start_84 .. :try_end_8b} :catch_117
    .catch Ljava/lang/IllegalArgumentException; {:try_start_84 .. :try_end_8b} :catch_117
    .catchall {:try_start_84 .. :try_end_8b} :catchall_11b

    if-eqz v3, :cond_93

    if-eqz v4, :cond_92

    .line 151
    invoke-interface {v4}, Lcom/liulishuo/filedownloader/a/b;->f()V

    :cond_92
    return-void

    .line 110
    :cond_93
    :try_start_93
    iget v3, v1, Lcom/liulishuo/filedownloader/c/e;->h:I

    .line 2299
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/liulishuo/filedownloader/c/g$a;->h:Ljava/lang/Integer;

    .line 111
    iget v3, v1, Lcom/liulishuo/filedownloader/c/e;->a:I

    .line 3294
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/liulishuo/filedownloader/c/g$a;->g:Ljava/lang/Integer;

    .line 112
    iget-object v3, v1, Lcom/liulishuo/filedownloader/c/e;->c:Lcom/liulishuo/filedownloader/c/h;

    .line 4274
    iput-object v3, v0, Lcom/liulishuo/filedownloader/c/g$a;->d:Lcom/liulishuo/filedownloader/c/h;

    .line 4289
    iput-object v1, v0, Lcom/liulishuo/filedownloader/c/g$a;->a:Lcom/liulishuo/filedownloader/c/e;

    .line 114
    iget-boolean v3, v1, Lcom/liulishuo/filedownloader/c/e;->e:Z

    .line 5284
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v0, Lcom/liulishuo/filedownloader/c/g$a;->f:Ljava/lang/Boolean;

    .line 6264
    iput-object v4, v0, Lcom/liulishuo/filedownloader/c/g$a;->b:Lcom/liulishuo/filedownloader/a/b;

    .line 116
    iget-object v3, v1, Lcom/liulishuo/filedownloader/c/e;->b:Lcom/liulishuo/filedownloader/c/a;

    .line 7169
    iget-object v3, v3, Lcom/liulishuo/filedownloader/c/a;->d:Lcom/liulishuo/filedownloader/c/b;

    .line 7269
    iput-object v3, v0, Lcom/liulishuo/filedownloader/c/g$a;->c:Lcom/liulishuo/filedownloader/c/b;

    .line 117
    iget-object v3, v1, Lcom/liulishuo/filedownloader/c/e;->d:Ljava/lang/String;

    .line 7279
    iput-object v3, v0, Lcom/liulishuo/filedownloader/c/g$a;->e:Ljava/lang/String;

    .line 7304
    iget-object v3, v0, Lcom/liulishuo/filedownloader/c/g$a;->f:Ljava/lang/Boolean;

    if-eqz v3, :cond_111

    iget-object v3, v0, Lcom/liulishuo/filedownloader/c/g$a;->b:Lcom/liulishuo/filedownloader/a/b;

    if-eqz v3, :cond_111

    iget-object v3, v0, Lcom/liulishuo/filedownloader/c/g$a;->c:Lcom/liulishuo/filedownloader/c/b;

    if-eqz v3, :cond_111

    iget-object v3, v0, Lcom/liulishuo/filedownloader/c/g$a;->d:Lcom/liulishuo/filedownloader/c/h;

    if-eqz v3, :cond_111

    iget-object v3, v0, Lcom/liulishuo/filedownloader/c/g$a;->e:Ljava/lang/String;

    if-eqz v3, :cond_111

    iget-object v3, v0, Lcom/liulishuo/filedownloader/c/g$a;->h:Ljava/lang/Integer;

    if-eqz v3, :cond_111

    iget-object v3, v0, Lcom/liulishuo/filedownloader/c/g$a;->g:Ljava/lang/Integer;

    if-eqz v3, :cond_111

    .line 7310
    new-instance v3, Lcom/liulishuo/filedownloader/c/g;

    iget-object v7, v0, Lcom/liulishuo/filedownloader/c/g$a;->b:Lcom/liulishuo/filedownloader/a/b;

    iget-object v8, v0, Lcom/liulishuo/filedownloader/c/g$a;->c:Lcom/liulishuo/filedownloader/c/b;

    iget-object v9, v0, Lcom/liulishuo/filedownloader/c/g$a;->a:Lcom/liulishuo/filedownloader/c/e;

    iget-object v6, v0, Lcom/liulishuo/filedownloader/c/g$a;->h:Ljava/lang/Integer;

    .line 7311
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v6, v0, Lcom/liulishuo/filedownloader/c/g$a;->g:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v6, v0, Lcom/liulishuo/filedownloader/c/g$a;->f:Ljava/lang/Boolean;

    .line 7312
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    iget-object v13, v0, Lcom/liulishuo/filedownloader/c/g$a;->d:Lcom/liulishuo/filedownloader/c/h;

    iget-object v14, v0, Lcom/liulishuo/filedownloader/c/g$a;->e:Ljava/lang/String;

    const/4 v15, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v15}, Lcom/liulishuo/filedownloader/c/g;-><init>(Lcom/liulishuo/filedownloader/a/b;Lcom/liulishuo/filedownloader/c/b;Lcom/liulishuo/filedownloader/c/e;IIZLcom/liulishuo/filedownloader/c/h;Ljava/lang/String;B)V

    .line 119
    iput-object v3, v1, Lcom/liulishuo/filedownloader/c/e;->f:Lcom/liulishuo/filedownloader/c/g;

    .line 121
    iget-object v0, v1, Lcom/liulishuo/filedownloader/c/e;->f:Lcom/liulishuo/filedownloader/c/g;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/c/g;->a()V

    .line 123
    iget-boolean v0, v1, Lcom/liulishuo/filedownloader/c/e;->g:Z

    if-eqz v0, :cond_10b

    iget-object v0, v1, Lcom/liulishuo/filedownloader/c/e;->f:Lcom/liulishuo/filedownloader/c/g;

    .line 8059
    iput-boolean v5, v0, Lcom/liulishuo/filedownloader/c/g;->b:Z
    :try_end_10b
    .catch Ljava/lang/IllegalAccessException; {:try_start_93 .. :try_end_10b} :catch_117
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_10b} :catch_117
    .catch Lcom/liulishuo/filedownloader/e/a; {:try_start_93 .. :try_end_10b} :catch_117
    .catch Ljava/lang/IllegalArgumentException; {:try_start_93 .. :try_end_10b} :catch_117
    .catchall {:try_start_93 .. :try_end_10b} :catchall_11b

    :cond_10b
    if-eqz v4, :cond_1ab

    .line 151
    invoke-interface {v4}, Lcom/liulishuo/filedownloader/a/b;->f()V

    return-void

    .line 7307
    :cond_111
    :try_start_111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_117
    .catch Ljava/lang/IllegalAccessException; {:try_start_111 .. :try_end_117} :catch_117
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_117} :catch_117
    .catch Lcom/liulishuo/filedownloader/e/a; {:try_start_111 .. :try_end_117} :catch_117
    .catch Ljava/lang/IllegalArgumentException; {:try_start_111 .. :try_end_117} :catch_117
    .catchall {:try_start_111 .. :try_end_117} :catchall_11b

    :catch_117
    move-exception v0

    move-object v3, v4

    move v4, v5

    goto :goto_129

    :catchall_11b
    move-exception v0

    goto/16 :goto_1ac

    :catch_11e
    move-exception v0

    move-object v3, v4

    goto :goto_122

    :catch_121
    move-exception v0

    :goto_122
    move v4, v2

    goto :goto_129

    :catchall_124
    move-exception v0

    move-object v4, v3

    goto/16 :goto_1ac

    :catch_128
    move-exception v0

    .line 128
    :goto_129
    :try_start_129
    iget-object v6, v1, Lcom/liulishuo/filedownloader/c/e;->c:Lcom/liulishuo/filedownloader/c/h;

    invoke-interface {v6, v0}, Lcom/liulishuo/filedownloader/c/h;->a(Ljava/lang/Exception;)Z

    move-result v6

    if-eqz v6, :cond_1a0

    if-eqz v4, :cond_14b

    .line 129
    iget-object v6, v1, Lcom/liulishuo/filedownloader/c/e;->f:Lcom/liulishuo/filedownloader/c/g;

    if-nez v6, :cond_14b

    const-string v4, "it is valid to retry and connection is valid but create fetch-data-task failed, so give up directly with %s"

    .line 131
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v1, v4, v5}, Lcom/liulishuo/filedownloader/h/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    iget-object v1, v1, Lcom/liulishuo/filedownloader/c/e;->c:Lcom/liulishuo/filedownloader/c/h;

    invoke-interface {v1, v0}, Lcom/liulishuo/filedownloader/c/h;->b(Ljava/lang/Exception;)V
    :try_end_145
    .catchall {:try_start_129 .. :try_end_145} :catchall_124

    if-eqz v3, :cond_1ab

    .line 151
    invoke-interface {v3}, Lcom/liulishuo/filedownloader/a/b;->f()V

    return-void

    .line 136
    :cond_14b
    :try_start_14b
    iget-object v6, v1, Lcom/liulishuo/filedownloader/c/e;->f:Lcom/liulishuo/filedownloader/c/g;

    if-eqz v6, :cond_194

    .line 138
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/c/e;->b()J

    move-result-wide v9

    const-wide/16 v6, 0x0

    cmp-long v6, v9, v6

    if-lez v6, :cond_194

    .line 140
    iget-object v6, v1, Lcom/liulishuo/filedownloader/c/e;->b:Lcom/liulishuo/filedownloader/c/a;

    .line 8061
    iget-object v7, v6, Lcom/liulishuo/filedownloader/c/a;->d:Lcom/liulishuo/filedownloader/c/b;

    iget-wide v7, v7, Lcom/liulishuo/filedownloader/c/b;->b:J

    cmp-long v7, v9, v7

    if-nez v7, :cond_16b

    const-string v5, "no data download, no need to update"

    .line 8062
    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v6, v5, v7}, Lcom/liulishuo/filedownloader/h/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_194

    .line 8065
    :cond_16b
    iget-object v7, v6, Lcom/liulishuo/filedownloader/c/a;->d:Lcom/liulishuo/filedownloader/c/b;

    iget-wide v7, v7, Lcom/liulishuo/filedownloader/c/b;->d:J

    iget-object v11, v6, Lcom/liulishuo/filedownloader/c/a;->d:Lcom/liulishuo/filedownloader/c/b;

    iget-wide v11, v11, Lcom/liulishuo/filedownloader/c/b;->b:J

    sub-long v11, v9, v11

    sub-long v13, v7, v11

    .line 8067
    iget-object v7, v6, Lcom/liulishuo/filedownloader/c/a;->d:Lcom/liulishuo/filedownloader/c/b;

    iget-wide v7, v7, Lcom/liulishuo/filedownloader/c/b;->a:J

    iget-object v11, v6, Lcom/liulishuo/filedownloader/c/a;->d:Lcom/liulishuo/filedownloader/c/b;

    iget-wide v11, v11, Lcom/liulishuo/filedownloader/c/b;->c:J

    invoke-static/range {v7 .. v14}, Lcom/liulishuo/filedownloader/c/b$a;->a(JJJJ)Lcom/liulishuo/filedownloader/c/b;

    move-result-object v7

    iput-object v7, v6, Lcom/liulishuo/filedownloader/c/a;->d:Lcom/liulishuo/filedownloader/c/b;

    .line 8072
    sget-boolean v7, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v7, :cond_194

    const-string v7, "after update profile:%s"

    .line 8073
    new-array v5, v5, [Ljava/lang/Object;

    iget-object v8, v6, Lcom/liulishuo/filedownloader/c/a;->d:Lcom/liulishuo/filedownloader/c/b;

    aput-object v8, v5, v2

    invoke-static {v6, v7, v5}, Lcom/liulishuo/filedownloader/h/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    :cond_194
    :goto_194
    iget-object v5, v1, Lcom/liulishuo/filedownloader/c/e;->c:Lcom/liulishuo/filedownloader/c/h;

    invoke-interface {v5, v0}, Lcom/liulishuo/filedownloader/c/h;->c(Ljava/lang/Exception;)V
    :try_end_199
    .catchall {:try_start_14b .. :try_end_199} :catchall_124

    if-eqz v3, :cond_b

    .line 151
    invoke-interface {v3}, Lcom/liulishuo/filedownloader/a/b;->f()V

    goto/16 :goto_b

    .line 146
    :cond_1a0
    :try_start_1a0
    iget-object v1, v1, Lcom/liulishuo/filedownloader/c/e;->c:Lcom/liulishuo/filedownloader/c/h;

    invoke-interface {v1, v0}, Lcom/liulishuo/filedownloader/c/h;->b(Ljava/lang/Exception;)V
    :try_end_1a5
    .catchall {:try_start_1a0 .. :try_end_1a5} :catchall_124

    if-eqz v3, :cond_1ab

    .line 151
    invoke-interface {v3}, Lcom/liulishuo/filedownloader/a/b;->f()V

    return-void

    :cond_1ab
    return-void

    :goto_1ac
    if-eqz v4, :cond_1b1

    invoke-interface {v4}, Lcom/liulishuo/filedownloader/a/b;->f()V

    :cond_1b1
    throw v0
.end method
