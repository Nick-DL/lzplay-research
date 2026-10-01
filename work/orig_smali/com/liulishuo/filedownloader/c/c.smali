.class public final Lcom/liulishuo/filedownloader/c/c;
.super Ljava/lang/Object;
.source "CustomComponentHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/c/c$a;
    }
.end annotation


# instance fields
.field public a:Lcom/liulishuo/filedownloader/services/c;

.field public b:Lcom/liulishuo/filedownloader/h/c$b;

.field public c:Lcom/liulishuo/filedownloader/h/c$e;

.field public d:Lcom/liulishuo/filedownloader/b/a;

.field public e:Lcom/liulishuo/filedownloader/h/c$d;

.field private f:Lcom/liulishuo/filedownloader/h/c$a;

.field private g:Lcom/liulishuo/filedownloader/services/i;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private g()Lcom/liulishuo/filedownloader/h/c$b;
    .registers 6

    .line 138
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/c;->b:Lcom/liulishuo/filedownloader/h/c$b;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/liulishuo/filedownloader/c/c;->b:Lcom/liulishuo/filedownloader/h/c$b;

    return-object p0

    .line 140
    :cond_7
    monitor-enter p0

    .line 141
    :try_start_8
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/c;->b:Lcom/liulishuo/filedownloader/h/c$b;

    if-nez v0, :cond_38

    .line 142
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/c/c;->f()Lcom/liulishuo/filedownloader/services/c;

    move-result-object v0

    .line 18105
    iget-object v1, v0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    if-nez v1, :cond_1a

    .line 18195
    new-instance v0, Lcom/liulishuo/filedownloader/a/c$b;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/a/c$b;-><init>()V

    goto :goto_36

    .line 18109
    :cond_1a
    iget-object v1, v0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    iget-object v1, v1, Lcom/liulishuo/filedownloader/services/c$a;->d:Lcom/liulishuo/filedownloader/h/c$b;

    if-eqz v1, :cond_31

    .line 18112
    sget-boolean v2, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v2, :cond_2f

    const-string v2, "initial FileDownloader manager with the customize connection creator: %s"

    const/4 v3, 0x1

    .line 18113
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2f
    move-object v0, v1

    goto :goto_36

    .line 19195
    :cond_31
    new-instance v0, Lcom/liulishuo/filedownloader/a/c$b;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/a/c$b;-><init>()V

    .line 142
    :goto_36
    iput-object v0, p0, Lcom/liulishuo/filedownloader/c/c;->b:Lcom/liulishuo/filedownloader/h/c$b;

    .line 144
    :cond_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_3c

    .line 146
    iget-object p0, p0, Lcom/liulishuo/filedownloader/c/c;->b:Lcom/liulishuo/filedownloader/h/c$b;

    return-object p0

    :catchall_3c
    move-exception v0

    .line 144
    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/liulishuo/filedownloader/a/b;
    .registers 2

    .line 66
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/c/c;->g()Lcom/liulishuo/filedownloader/h/c$b;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/liulishuo/filedownloader/h/c$b;->a(Ljava/lang/String;)Lcom/liulishuo/filedownloader/a/b;

    move-result-object p0

    return-object p0
.end method

.method public final a()Lcom/liulishuo/filedownloader/h/c$d;
    .registers 6

    .line 74
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/c;->e:Lcom/liulishuo/filedownloader/h/c$d;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/liulishuo/filedownloader/c/c;->e:Lcom/liulishuo/filedownloader/h/c$d;

    return-object p0

    .line 76
    :cond_7
    monitor-enter p0

    .line 77
    :try_start_8
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/c;->e:Lcom/liulishuo/filedownloader/h/c$d;

    if-nez v0, :cond_38

    .line 78
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/c/c;->f()Lcom/liulishuo/filedownloader/services/c;

    move-result-object v0

    .line 1140
    iget-object v1, v0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    if-nez v1, :cond_1a

    .line 1179
    new-instance v0, Lcom/liulishuo/filedownloader/services/b;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/services/b;-><init>()V

    goto :goto_36

    .line 1144
    :cond_1a
    iget-object v1, v0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    iget-object v1, v1, Lcom/liulishuo/filedownloader/services/c$a;->f:Lcom/liulishuo/filedownloader/h/c$d;

    if-eqz v1, :cond_31

    .line 1146
    sget-boolean v2, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v2, :cond_2f

    const-string v2, "initial FileDownloader manager with the customize id generator: %s"

    const/4 v3, 0x1

    .line 1147
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2f
    move-object v0, v1

    goto :goto_36

    .line 2179
    :cond_31
    new-instance v0, Lcom/liulishuo/filedownloader/services/b;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/services/b;-><init>()V

    .line 78
    :goto_36
    iput-object v0, p0, Lcom/liulishuo/filedownloader/c/c;->e:Lcom/liulishuo/filedownloader/h/c$d;

    .line 80
    :cond_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_3c

    .line 82
    iget-object p0, p0, Lcom/liulishuo/filedownloader/c/c;->e:Lcom/liulishuo/filedownloader/h/c$d;

    return-object p0

    :catchall_3c
    move-exception v0

    .line 80
    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method public final b()Lcom/liulishuo/filedownloader/b/a;
    .registers 24

    move-object/from16 v1, p0

    .line 86
    iget-object v0, v1, Lcom/liulishuo/filedownloader/c/c;->d:Lcom/liulishuo/filedownloader/b/a;

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/liulishuo/filedownloader/c/c;->d:Lcom/liulishuo/filedownloader/b/a;

    return-object v0

    .line 88
    :cond_9
    monitor-enter p0

    .line 89
    :try_start_a
    iget-object v0, v1, Lcom/liulishuo/filedownloader/c/c;->d:Lcom/liulishuo/filedownloader/b/a;

    if-nez v0, :cond_1f5

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/liulishuo/filedownloader/c/c;->f()Lcom/liulishuo/filedownloader/services/c;

    move-result-object v0

    .line 3069
    iget-object v2, v0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3d

    iget-object v2, v0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    iget-object v2, v2, Lcom/liulishuo/filedownloader/services/c$a;->a:Lcom/liulishuo/filedownloader/h/c$c;

    if-nez v2, :cond_1f

    goto :goto_3d

    .line 3072
    :cond_1f
    iget-object v2, v0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    iget-object v2, v2, Lcom/liulishuo/filedownloader/services/c$a;->a:Lcom/liulishuo/filedownloader/h/c$c;

    invoke-interface {v2}, Lcom/liulishuo/filedownloader/h/c$c;->a()Lcom/liulishuo/filedownloader/b/a;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 3075
    sget-boolean v5, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v5, :cond_42

    const-string v5, "initial FileDownloader manager with the customize database: %s"

    .line 3076
    new-array v6, v4, [Ljava/lang/Object;

    aput-object v2, v6, v3

    invoke-static {v0, v5, v6}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_42

    .line 4187
    :cond_37
    new-instance v2, Lcom/liulishuo/filedownloader/b/c;

    invoke-direct {v2}, Lcom/liulishuo/filedownloader/b/c;-><init>()V

    goto :goto_42

    .line 3187
    :cond_3d
    :goto_3d
    new-instance v2, Lcom/liulishuo/filedownloader/b/c;

    invoke-direct {v2}, Lcom/liulishuo/filedownloader/b/c;-><init>()V

    .line 90
    :cond_42
    :goto_42
    iput-object v2, v1, Lcom/liulishuo/filedownloader/c/c;->d:Lcom/liulishuo/filedownloader/b/a;

    .line 91
    iget-object v0, v1, Lcom/liulishuo/filedownloader/c/c;->d:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/b/a;->b()Lcom/liulishuo/filedownloader/b/a$a;

    move-result-object v2

    .line 5172
    invoke-interface {v2}, Lcom/liulishuo/filedownloader/b/a$a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 6052
    invoke-static {}, Lcom/liulishuo/filedownloader/c/c$a;->a()Lcom/liulishuo/filedownloader/c/c;

    move-result-object v5

    .line 5176
    invoke-virtual {v5}, Lcom/liulishuo/filedownloader/c/c;->a()Lcom/liulishuo/filedownloader/h/c$d;

    move-result-object v5

    .line 5178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6
    :try_end_5a
    .catchall {:try_start_a .. :try_end_5a} :catchall_1f9

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    :goto_60
    const/4 v3, 0x3

    .line 5180
    :try_start_61
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17a

    .line 5182
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 5184
    invoke-virtual {v9}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c()B

    move-result v4

    const/4 v8, -0x2

    if-eq v4, v3, :cond_95

    .line 5185
    invoke-virtual {v9}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c()B

    move-result v4

    const/4 v3, 0x2

    if-eq v4, v3, :cond_95

    .line 5186
    invoke-virtual {v9}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c()B

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_95

    .line 5187
    invoke-virtual {v9}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c()B

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_98

    .line 6155
    iget-object v3, v9, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    const-wide/16 v16, 0x0

    cmp-long v3, v3, v16

    if-lez v3, :cond_98

    .line 5191
    :cond_95
    invoke-virtual {v9, v8}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(B)V

    .line 5193
    :cond_98
    invoke-virtual {v9}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a7

    move-wide/from16 v19, v6

    move-wide/from16 v21, v10

    const/4 v3, 0x1

    const-wide/16 v10, 0x0

    goto/16 :goto_12c

    .line 5200
    :cond_a7
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5203
    invoke-virtual {v9}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c()B

    move-result v3

    if-ne v3, v8, :cond_100

    .line 7111
    iget v3, v9, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 7125
    iget-object v8, v9, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c:Ljava/lang/String;

    .line 5204
    invoke-static {v3, v9, v8}, Lcom/liulishuo/filedownloader/h/f;->a(ILcom/liulishuo/filedownloader/model/FileDownloadModel;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_100

    .line 5208
    new-instance v3, Ljava/io/File;

    invoke-virtual {v9}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5210
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_100

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_100

    .line 5211
    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    .line 5212
    sget-boolean v18, Lcom/liulishuo/filedownloader/h/d;->a:Z
    :try_end_d7
    .catchall {:try_start_61 .. :try_end_d7} :catchall_1b7

    if-eqz v18, :cond_100

    move-wide/from16 v19, v6

    .line 5213
    :try_start_db
    const-class v6, Lcom/liulishuo/filedownloader/b/a;

    const-string v7, "resume from the old no-temp-file architecture [%B], [%s]->[%s]"
    :try_end_df
    .catchall {:try_start_db .. :try_end_df} :catchall_fd

    move-wide/from16 v21, v10

    const/4 v10, 0x3

    :try_start_e2
    new-array v11, v10, [Ljava/lang/Object;

    .line 5216
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v11, v10

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v11, v10

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x2

    aput-object v3, v11, v8

    .line 5213
    invoke-static {v6, v7, v11}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_104

    :catchall_fd
    move-exception v0

    goto/16 :goto_1ba

    :cond_100
    move-wide/from16 v19, v6

    move-wide/from16 v21, v10

    .line 5228
    :goto_104
    invoke-virtual {v9}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c()B

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_119

    .line 7155
    iget-object v3, v9, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v3, v6, v10

    if-gtz v3, :cond_11b

    :goto_117
    const/4 v3, 0x1

    goto :goto_12c

    :cond_119
    const-wide/16 v10, 0x0

    .line 8111
    :cond_11b
    iget v3, v9, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 5234
    invoke-static {v3, v9}, Lcom/liulishuo/filedownloader/h/f;->a(ILcom/liulishuo/filedownloader/model/FileDownloadModel;)Z

    move-result v3

    if-nez v3, :cond_124

    goto :goto_117

    .line 5240
    :cond_124
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_12b

    goto :goto_117

    :cond_12b
    const/4 v3, 0x0

    :goto_12c
    const-wide/16 v6, 0x1

    if-eqz v3, :cond_13e

    .line 5250
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    add-long/2addr v12, v6

    move-wide/from16 v6, v19

    move-wide/from16 v10, v21

    :goto_138
    const/4 v4, 0x1

    goto/16 :goto_60

    :catchall_13b
    move-exception v0

    goto/16 :goto_1bc

    .line 9111
    :cond_13e
    iget v3, v9, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 9115
    iget-object v4, v9, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b:Ljava/lang/String;

    .line 9125
    iget-object v8, v9, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c:Ljava/lang/String;

    .line 9187
    iget-boolean v10, v9, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->d:Z

    .line 5255
    invoke-interface {v5, v4, v8, v10}, Lcom/liulishuo/filedownloader/h/c$d;->a(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v4

    if-eq v4, v3, :cond_171

    .line 5258
    sget-boolean v8, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v8, :cond_168

    .line 5259
    const-class v8, Lcom/liulishuo/filedownloader/b/a;

    const-string v10, "the id is changed on restoring from db: old[%d] -> new[%d]"

    const/4 v11, 0x2

    new-array v6, v11, [Ljava/lang/Object;

    .line 5262
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v11, 0x0

    aput-object v7, v6, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v11, 0x1

    aput-object v7, v6, v11

    .line 5259
    invoke-static {v8, v10, v6}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10081
    :cond_168
    iput v4, v9, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 5265
    invoke-interface {v2, v3, v9}, Lcom/liulishuo/filedownloader/b/a$a;->a(ILcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    const-wide/16 v3, 0x1

    add-long/2addr v14, v3

    goto :goto_172

    :cond_171
    move-wide v3, v6

    .line 5269
    :goto_172
    invoke-interface {v2, v9}, Lcom/liulishuo/filedownloader/b/a$a;->a(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    :try_end_175
    .catchall {:try_start_e2 .. :try_end_175} :catchall_13b

    add-long v10, v21, v3

    move-wide/from16 v6, v19

    goto :goto_138

    :cond_17a
    move-wide/from16 v19, v6

    move-wide/from16 v21, v10

    .line 11051
    :try_start_17e
    sget-object v0, Lcom/liulishuo/filedownloader/h/c;->a:Landroid/content/Context;

    .line 5275
    invoke-static {v0}, Lcom/liulishuo/filedownloader/h/f;->b(Landroid/content/Context;)V

    .line 5276
    invoke-interface {v2}, Lcom/liulishuo/filedownloader/b/a$a;->a()V

    .line 5278
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v0, :cond_1f5

    .line 5279
    const-class v0, Lcom/liulishuo/filedownloader/b/a;

    const-string v2, "refreshed data count: %d , delete data count: %d, reset id count: %d. consume %d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 5282
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 5283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v19

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 5279
    invoke-static {v0, v2, v3}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1f5

    :catchall_1b7
    move-exception v0

    move-wide/from16 v19, v6

    :goto_1ba
    move-wide/from16 v21, v10

    .line 12051
    :goto_1bc
    sget-object v3, Lcom/liulishuo/filedownloader/h/c;->a:Landroid/content/Context;

    .line 5275
    invoke-static {v3}, Lcom/liulishuo/filedownloader/h/f;->b(Landroid/content/Context;)V

    .line 5276
    invoke-interface {v2}, Lcom/liulishuo/filedownloader/b/a$a;->a()V

    .line 5278
    sget-boolean v2, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v2, :cond_1f4

    .line 5279
    const-class v2, Lcom/liulishuo/filedownloader/b/a;

    const-string v3, "refreshed data count: %d , delete data count: %d, reset id count: %d. consume %d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 5282
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 5283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v19

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 5279
    invoke-static {v2, v3, v4}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1f4
    throw v0

    .line 93
    :cond_1f5
    :goto_1f5
    monitor-exit p0
    :try_end_1f6
    .catchall {:try_start_17e .. :try_end_1f6} :catchall_1f9

    .line 95
    iget-object v0, v1, Lcom/liulishuo/filedownloader/c/c;->d:Lcom/liulishuo/filedownloader/b/a;

    return-object v0

    :catchall_1f9
    move-exception v0

    .line 93
    :try_start_1fa
    monitor-exit p0
    :try_end_1fb
    .catchall {:try_start_1fa .. :try_end_1fb} :catchall_1f9

    throw v0
.end method

.method public final c()Lcom/liulishuo/filedownloader/services/i;
    .registers 6

    .line 99
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/c;->g:Lcom/liulishuo/filedownloader/services/i;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/liulishuo/filedownloader/c/c;->g:Lcom/liulishuo/filedownloader/services/i;

    return-object p0

    .line 101
    :cond_7
    monitor-enter p0

    .line 102
    :try_start_8
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/c;->g:Lcom/liulishuo/filedownloader/services/i;

    if-nez v0, :cond_62

    .line 103
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/c/c;->f()Lcom/liulishuo/filedownloader/services/c;

    move-result-object v0

    .line 12158
    iget-object v1, v0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2a

    .line 12162
    iget-object v1, v0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    iget-object v1, v1, Lcom/liulishuo/filedownloader/services/c$a;->g:Lcom/liulishuo/filedownloader/services/i;

    if-eqz v1, :cond_2a

    .line 12164
    sget-boolean v4, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v4, :cond_60

    const-string v4, "initial FileDownloader manager with the customize foreground service config: %s"

    .line 12165
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-static {v0, v4, v3}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_60

    .line 12175
    :cond_2a
    new-instance v0, Lcom/liulishuo/filedownloader/services/i$a;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/services/i$a;-><init>()V

    .line 13138
    iput-boolean v3, v0, Lcom/liulishuo/filedownloader/services/i$a;->e:Z

    .line 13143
    new-instance v1, Lcom/liulishuo/filedownloader/services/i;

    invoke-direct {v1, v2}, Lcom/liulishuo/filedownloader/services/i;-><init>(B)V

    .line 13144
    iget-object v2, v0, Lcom/liulishuo/filedownloader/services/i$a;->b:Ljava/lang/String;

    if-nez v2, :cond_3d

    const-string v2, "filedownloader_channel"

    goto :goto_3f

    :cond_3d
    iget-object v2, v0, Lcom/liulishuo/filedownloader/services/i$a;->b:Ljava/lang/String;

    .line 14072
    :goto_3f
    iput-object v2, v1, Lcom/liulishuo/filedownloader/services/i;->b:Ljava/lang/String;

    .line 13146
    iget-object v2, v0, Lcom/liulishuo/filedownloader/services/i$a;->c:Ljava/lang/String;

    if-nez v2, :cond_48

    const-string v2, "Filedownloader"

    goto :goto_4a

    :cond_48
    iget-object v2, v0, Lcom/liulishuo/filedownloader/services/i$a;->c:Ljava/lang/String;

    .line 14076
    :goto_4a
    iput-object v2, v1, Lcom/liulishuo/filedownloader/services/i;->c:Ljava/lang/String;

    .line 13148
    iget v2, v0, Lcom/liulishuo/filedownloader/services/i$a;->a:I

    if-nez v2, :cond_54

    const v2, 0x1080002

    goto :goto_56

    :cond_54
    iget v2, v0, Lcom/liulishuo/filedownloader/services/i$a;->a:I

    .line 15068
    :goto_56
    iput v2, v1, Lcom/liulishuo/filedownloader/services/i;->a:I

    .line 13150
    iget-boolean v2, v0, Lcom/liulishuo/filedownloader/services/i$a;->e:Z

    .line 15084
    iput-boolean v2, v1, Lcom/liulishuo/filedownloader/services/i;->e:Z

    .line 13151
    iget-object v0, v0, Lcom/liulishuo/filedownloader/services/i$a;->d:Landroid/app/Notification;

    .line 16080
    iput-object v0, v1, Lcom/liulishuo/filedownloader/services/i;->d:Landroid/app/Notification;

    .line 104
    :cond_60
    :goto_60
    iput-object v1, p0, Lcom/liulishuo/filedownloader/c/c;->g:Lcom/liulishuo/filedownloader/services/i;

    .line 106
    :cond_62
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_8 .. :try_end_63} :catchall_66

    .line 108
    iget-object p0, p0, Lcom/liulishuo/filedownloader/c/c;->g:Lcom/liulishuo/filedownloader/services/i;

    return-object p0

    :catchall_66
    move-exception v0

    .line 106
    :try_start_67
    monitor-exit p0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v0
.end method

.method final d()Lcom/liulishuo/filedownloader/h/c$a;
    .registers 6

    .line 125
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/c;->f:Lcom/liulishuo/filedownloader/h/c$a;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/liulishuo/filedownloader/c/c;->f:Lcom/liulishuo/filedownloader/h/c$a;

    return-object p0

    .line 127
    :cond_7
    monitor-enter p0

    .line 128
    :try_start_8
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/c;->f:Lcom/liulishuo/filedownloader/h/c$a;

    if-nez v0, :cond_38

    .line 129
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/c/c;->f()Lcom/liulishuo/filedownloader/services/c;

    move-result-object v0

    .line 16123
    iget-object v1, v0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    if-nez v1, :cond_1a

    .line 16199
    new-instance v0, Lcom/liulishuo/filedownloader/a/a;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/a/a;-><init>()V

    goto :goto_36

    .line 16127
    :cond_1a
    iget-object v1, v0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    iget-object v1, v1, Lcom/liulishuo/filedownloader/services/c$a;->e:Lcom/liulishuo/filedownloader/h/c$a;

    if-eqz v1, :cond_31

    .line 16129
    sget-boolean v2, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v2, :cond_2f

    const-string v2, "initial FileDownloader manager with the customize connection count adapter: %s"

    const/4 v3, 0x1

    .line 16130
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2f
    move-object v0, v1

    goto :goto_36

    .line 17199
    :cond_31
    new-instance v0, Lcom/liulishuo/filedownloader/a/a;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/a/a;-><init>()V

    .line 130
    :goto_36
    iput-object v0, p0, Lcom/liulishuo/filedownloader/c/c;->f:Lcom/liulishuo/filedownloader/h/c$a;

    .line 132
    :cond_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_3c

    .line 134
    iget-object p0, p0, Lcom/liulishuo/filedownloader/c/c;->f:Lcom/liulishuo/filedownloader/h/c$a;

    return-object p0

    :catchall_3c
    move-exception v0

    .line 132
    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method public final e()Lcom/liulishuo/filedownloader/h/c$e;
    .registers 6

    .line 150
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/c;->c:Lcom/liulishuo/filedownloader/h/c$e;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/liulishuo/filedownloader/c/c;->c:Lcom/liulishuo/filedownloader/h/c$e;

    return-object p0

    .line 152
    :cond_7
    monitor-enter p0

    .line 153
    :try_start_8
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/c;->c:Lcom/liulishuo/filedownloader/h/c$e;

    if-nez v0, :cond_38

    .line 154
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/c/c;->f()Lcom/liulishuo/filedownloader/services/c;

    move-result-object v0

    .line 20087
    iget-object v1, v0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    if-nez v1, :cond_1a

    .line 20191
    new-instance v0, Lcom/liulishuo/filedownloader/g/b$a;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/g/b$a;-><init>()V

    goto :goto_36

    .line 20091
    :cond_1a
    iget-object v1, v0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    iget-object v1, v1, Lcom/liulishuo/filedownloader/services/c$a;->c:Lcom/liulishuo/filedownloader/h/c$e;

    if-eqz v1, :cond_31

    .line 20094
    sget-boolean v2, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v2, :cond_2f

    const-string v2, "initial FileDownloader manager with the customize output stream: %s"

    const/4 v3, 0x1

    .line 20095
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2f
    move-object v0, v1

    goto :goto_36

    .line 21191
    :cond_31
    new-instance v0, Lcom/liulishuo/filedownloader/g/b$a;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/g/b$a;-><init>()V

    .line 154
    :goto_36
    iput-object v0, p0, Lcom/liulishuo/filedownloader/c/c;->c:Lcom/liulishuo/filedownloader/h/c$e;

    .line 156
    :cond_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_3c

    .line 158
    iget-object p0, p0, Lcom/liulishuo/filedownloader/c/c;->c:Lcom/liulishuo/filedownloader/h/c$e;

    return-object p0

    :catchall_3c
    move-exception v0

    .line 156
    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method public final f()Lcom/liulishuo/filedownloader/services/c;
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/c;->a:Lcom/liulishuo/filedownloader/services/c;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/liulishuo/filedownloader/c/c;->a:Lcom/liulishuo/filedownloader/services/c;

    return-object p0

    .line 164
    :cond_7
    monitor-enter p0

    .line 165
    :try_start_8
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/c;->a:Lcom/liulishuo/filedownloader/services/c;

    if-nez v0, :cond_13

    new-instance v0, Lcom/liulishuo/filedownloader/services/c;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/services/c;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/c/c;->a:Lcom/liulishuo/filedownloader/services/c;

    .line 166
    :cond_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_17

    .line 168
    iget-object p0, p0, Lcom/liulishuo/filedownloader/c/c;->a:Lcom/liulishuo/filedownloader/services/c;

    return-object p0

    :catchall_17
    move-exception v0

    .line 166
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method
