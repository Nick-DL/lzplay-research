.class final Lcom/liulishuo/filedownloader/services/g;
.super Ljava/lang/Object;
.source "FileDownloadManager.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/z;


# instance fields
.field private final a:Lcom/liulishuo/filedownloader/b/a;

.field private final b:Lcom/liulishuo/filedownloader/services/h;


# direct methods
.method constructor <init>()V
    .locals 6

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2052
    invoke-static {}, Lcom/liulishuo/filedownloader/c/c$a;->a()Lcom/liulishuo/filedownloader/c/c;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/c/c;->b()Lcom/liulishuo/filedownloader/b/a;

    move-result-object v1

    iput-object v1, p0, Lcom/liulishuo/filedownloader/services/g;->a:Lcom/liulishuo/filedownloader/b/a;

    .line 55
    new-instance v1, Lcom/liulishuo/filedownloader/services/h;

    .line 2112
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/c/c;->f()Lcom/liulishuo/filedownloader/services/c;

    move-result-object v0

    .line 3048
    iget-object v2, v0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    if-eqz v2, :cond_1

    .line 3052
    iget-object v2, v0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    iget-object v2, v2, Lcom/liulishuo/filedownloader/services/c$a;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 3055
    sget-boolean v3, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v3, :cond_0

    const-string v3, "initial FileDownloader manager with the customize maxNetworkThreadCount: %d"

    const/4 v4, 0x1

    .line 3056
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v0, v3, v4}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3061
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/h/e;->a(I)I

    move-result v0

    goto :goto_0

    .line 4183
    :cond_1
    invoke-static {}, Lcom/liulishuo/filedownloader/h/e;->a()Lcom/liulishuo/filedownloader/h/e;

    move-result-object v0

    iget v0, v0, Lcom/liulishuo/filedownloader/h/e;->e:I

    .line 55
    :goto_0
    invoke-direct {v1, v0}, Lcom/liulishuo/filedownloader/services/h;-><init>(I)V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/services/g;->b:Lcom/liulishuo/filedownloader/services/h;

    return-void
.end method

.method private g(I)Z
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/g;->a:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/b/a;->b(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/services/g;->a(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)I
    .locals 5

    .line 332
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/g;->b:Lcom/liulishuo/filedownloader/services/h;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 20134
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 20136
    iget-object v3, p0, Lcom/liulishuo/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liulishuo/filedownloader/c/d;

    if-eqz v3, :cond_0

    .line 20147
    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/c/d;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 20993
    iget-object v4, v3, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 21111
    iget v4, v4, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    if-eq v4, p2, :cond_0

    .line 22001
    iget-object v4, v3, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()Ljava/lang/String;

    move-result-object v4

    .line 20148
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 22993
    iget-object p0, v3, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 23111
    iget p0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final a()V
    .locals 5

    .line 231
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/g;->b:Lcom/liulishuo/filedownloader/services/h;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/h;->c()Ljava/util/List;

    move-result-object v0

    .line 233
    sget-boolean v1, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "pause all tasks %d"

    const/4 v2, 0x1

    .line 234
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 238
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/liulishuo/filedownloader/services/g;->a(I)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)V
    .locals 23

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    monitor-enter p0

    .line 65
    :try_start_0
    sget-boolean v1, Lcom/liulishuo/filedownloader/h/d;->a:Z

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v1, :cond_0

    const-string v1, "request start the task with url(%s) path(%s) isDirectory(%B)"

    const/4 v2, 0x3

    .line 66
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v11

    aput-object v8, v2, v12

    .line 67
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v10

    .line 66
    invoke-static {v7, v1, v2}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    :cond_0
    invoke-static {}, Lcom/liulishuo/filedownloader/ac;->a()V

    .line 74
    invoke-static/range {p1 .. p3}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v13

    .line 75
    iget-object v1, v7, Lcom/liulishuo/filedownloader/services/g;->a:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v1, v13}, Lcom/liulishuo/filedownloader/b/a;->b(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v9, :cond_3

    if-nez v1, :cond_3

    .line 82
    invoke-static/range {p2 .. p2}, Lcom/liulishuo/filedownloader/h/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v12}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v1

    .line 84
    iget-object v3, v7, Lcom/liulishuo/filedownloader/services/g;->a:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v3, v1}, Lcom/liulishuo/filedownloader/b/a;->b(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 85
    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 86
    sget-boolean v4, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v4, :cond_1

    const-string v4, "task[%d] find model by dirCaseId[%d]"

    .line 87
    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-static {v7, v4, v5}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    :cond_1
    iget-object v4, v7, Lcom/liulishuo/filedownloader/services/g;->a:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v4, v1}, Lcom/liulishuo/filedownloader/b/a;->c(I)Ljava/util/List;

    move-result-object v1

    move-object v15, v1

    goto :goto_0

    :cond_2
    move-object v15, v2

    :goto_0
    move-object v14, v3

    goto :goto_1

    :cond_3
    move-object v14, v1

    move-object v15, v2

    .line 94
    :goto_1
    invoke-static {v13, v14, v7, v12}, Lcom/liulishuo/filedownloader/h/c;->a(ILcom/liulishuo/filedownloader/model/FileDownloadModel;Lcom/liulishuo/filedownloader/z;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 95
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v0, :cond_4

    const-string v0, "has already started download %d"

    .line 96
    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-static {v7, v0, v1}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 98
    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    if-eqz v14, :cond_6

    .line 101
    :try_start_1
    invoke-virtual {v14}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 102
    :cond_6
    invoke-static {v8, v9, v2}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    move/from16 v6, p7

    move-object v5, v1

    .line 103
    invoke-static {v13, v5, v6, v12}, Lcom/liulishuo/filedownloader/h/c;->a(ILjava/lang/String;ZZ)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 105
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v0, :cond_7

    const-string v0, "has already completed downloading %d"

    .line 106
    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-static {v7, v0, v1}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 108
    :cond_7
    monitor-exit p0

    return-void

    :cond_8
    const-wide/16 v2, 0x0

    if-eqz v14, :cond_9

    .line 5155
    :try_start_2
    iget-object v1, v14, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v16

    goto :goto_3

    :cond_9
    move-wide/from16 v16, v2

    :goto_3
    if-eqz v14, :cond_a

    .line 112
    invoke-virtual {v14}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 113
    :cond_a
    invoke-static {v5}, Lcom/liulishuo/filedownloader/h/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    move-object v4, v1

    move v1, v13

    move-wide/from16 v2, v16

    move-object/from16 v16, v5

    move-object/from16 v6, p0

    .line 114
    invoke-static/range {v1 .. v6}, Lcom/liulishuo/filedownloader/h/c;->a(IJLjava/lang/String;Ljava/lang/String;Lcom/liulishuo/filedownloader/z;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 116
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v0, :cond_b

    const-string v0, "there is an another task with the same target-file-path %d %s"

    .line 117
    new-array v1, v10, [Ljava/lang/Object;

    .line 119
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    aput-object v16, v1, v12

    .line 118
    invoke-static {v7, v0, v1}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    if-eqz v14, :cond_c

    .line 124
    iget-object v0, v7, Lcom/liulishuo/filedownloader/services/g;->a:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v0, v13}, Lcom/liulishuo/filedownloader/b/a;->e(I)Z

    .line 125
    iget-object v0, v7, Lcom/liulishuo/filedownloader/services/g;->a:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v0, v13}, Lcom/liulishuo/filedownloader/b/a;->d(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 127
    :cond_c
    monitor-exit p0

    return-void

    :cond_d
    if-eqz v14, :cond_12

    .line 134
    :try_start_3
    invoke-virtual {v14}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c()B

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_e

    .line 135
    invoke-virtual {v14}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c()B

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    .line 136
    invoke-virtual {v14}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c()B

    move-result v1

    if-eq v1, v12, :cond_e

    .line 137
    invoke-virtual {v14}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c()B

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_e

    .line 138
    invoke-virtual {v14}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c()B

    move-result v1

    if-ne v1, v10, :cond_12

    .line 6111
    :cond_e
    iget v1, v14, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    if-eq v1, v13, :cond_f

    .line 143
    iget-object v0, v7, Lcom/liulishuo/filedownloader/services/g;->a:Lcom/liulishuo/filedownloader/b/a;

    .line 7111
    iget v1, v14, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 143
    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/b/a;->e(I)Z

    .line 144
    iget-object v0, v7, Lcom/liulishuo/filedownloader/services/g;->a:Lcom/liulishuo/filedownloader/b/a;

    .line 8111
    iget v1, v14, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 144
    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/b/a;->d(I)V

    .line 9081
    iput v13, v14, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 147
    invoke-virtual {v14, v8, v9}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(Ljava/lang/String;Z)V

    if-eqz v15, :cond_10

    .line 149
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liulishuo/filedownloader/model/a;

    .line 10050
    iput v13, v1, Lcom/liulishuo/filedownloader/model/a;->a:I

    .line 151
    iget-object v2, v7, Lcom/liulishuo/filedownloader/services/g;->a:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v2, v1}, Lcom/liulishuo/filedownloader/b/a;->a(Lcom/liulishuo/filedownloader/model/a;)V

    goto :goto_5

    .line 10115
    :cond_f
    iget-object v1, v14, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b:Ljava/lang/String;

    .line 157
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 11085
    iput-object v0, v14, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b:Ljava/lang/String;

    :cond_10
    :goto_6
    move v0, v12

    goto :goto_7

    :cond_11
    move v0, v11

    goto :goto_7

    :cond_12
    if-nez v14, :cond_13

    .line 168
    new-instance v14, Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-direct {v14}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;-><init>()V

    .line 12085
    :cond_13
    iput-object v0, v14, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b:Ljava/lang/String;

    .line 171
    invoke-virtual {v14, v8, v9}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(Ljava/lang/String;Z)V

    .line 13081
    iput v13, v14, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    const-wide/16 v0, 0x0

    .line 174
    invoke-virtual {v14, v0, v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(J)V

    .line 175
    invoke-virtual {v14, v0, v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b(J)V

    .line 176
    invoke-virtual {v14, v12}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(B)V

    .line 13195
    iput v12, v14, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j:I

    goto :goto_6

    :goto_7
    if-eqz v0, :cond_14

    .line 183
    iget-object v0, v7, Lcom/liulishuo/filedownloader/services/g;->a:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v0, v14}, Lcom/liulishuo/filedownloader/b/a;->a(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    .line 186
    :cond_14
    new-instance v0, Lcom/liulishuo/filedownloader/c/d$a;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/c/d$a;-><init>()V

    .line 14021
    iput-object v14, v0, Lcom/liulishuo/filedownloader/c/d$a;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-object/from16 v1, p8

    .line 14026
    iput-object v1, v0, Lcom/liulishuo/filedownloader/c/d$a;->b:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    .line 14031
    iput-object v7, v0, Lcom/liulishuo/filedownloader/c/d$a;->c:Lcom/liulishuo/filedownloader/z;

    .line 192
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 14036
    iput-object v1, v0, Lcom/liulishuo/filedownloader/c/d$a;->d:Ljava/lang/Integer;

    .line 193
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 14041
    iput-object v1, v0, Lcom/liulishuo/filedownloader/c/d$a;->e:Ljava/lang/Integer;

    .line 194
    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 14046
    iput-object v1, v0, Lcom/liulishuo/filedownloader/c/d$a;->f:Ljava/lang/Boolean;

    .line 195
    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 14051
    iput-object v1, v0, Lcom/liulishuo/filedownloader/c/d$a;->g:Ljava/lang/Boolean;

    .line 196
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 14056
    iput-object v1, v0, Lcom/liulishuo/filedownloader/c/d$a;->h:Ljava/lang/Integer;

    .line 14061
    iget-object v1, v0, Lcom/liulishuo/filedownloader/c/d$a;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/liulishuo/filedownloader/c/d$a;->c:Lcom/liulishuo/filedownloader/z;

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/liulishuo/filedownloader/c/d$a;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/liulishuo/filedownloader/c/d$a;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/liulishuo/filedownloader/c/d$a;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/liulishuo/filedownloader/c/d$a;->g:Ljava/lang/Boolean;

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/liulishuo/filedownloader/c/d$a;->h:Ljava/lang/Integer;

    if-eqz v1, :cond_16

    .line 14068
    new-instance v1, Lcom/liulishuo/filedownloader/c/d;

    iget-object v14, v0, Lcom/liulishuo/filedownloader/c/d$a;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    iget-object v15, v0, Lcom/liulishuo/filedownloader/c/d$a;->b:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    iget-object v2, v0, Lcom/liulishuo/filedownloader/c/d$a;->c:Lcom/liulishuo/filedownloader/z;

    iget-object v3, v0, Lcom/liulishuo/filedownloader/c/d$a;->d:Ljava/lang/Integer;

    .line 14069
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    iget-object v3, v0, Lcom/liulishuo/filedownloader/c/d$a;->e:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v18

    iget-object v3, v0, Lcom/liulishuo/filedownloader/c/d$a;->f:Ljava/lang/Boolean;

    .line 14070
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    iget-object v3, v0, Lcom/liulishuo/filedownloader/c/d$a;->g:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    iget-object v0, v0, Lcom/liulishuo/filedownloader/c/d$a;->h:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v21

    const/16 v22, 0x0

    move-object v13, v1

    move-object/from16 v16, v2

    invoke-direct/range {v13 .. v22}, Lcom/liulishuo/filedownloader/c/d;-><init>(Lcom/liulishuo/filedownloader/model/FileDownloadModel;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;Lcom/liulishuo/filedownloader/z;IIZZIB)V

    .line 200
    iget-object v2, v7, Lcom/liulishuo/filedownloader/services/g;->b:Lcom/liulishuo/filedownloader/services/h;

    .line 14193
    iget-object v0, v1, Lcom/liulishuo/filedownloader/c/d;->c:Lcom/liulishuo/filedownloader/b/a;

    iget-object v3, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 15111
    iget v3, v3, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 14194
    invoke-interface {v0, v3}, Lcom/liulishuo/filedownloader/b/a;->c(I)Ljava/util/List;

    move-result-object v0

    .line 14196
    invoke-virtual {v1, v0}, Lcom/liulishuo/filedownloader/c/d;->a(Ljava/util/List;)V

    .line 14197
    iget-object v0, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    .line 16103
    iget-object v3, v0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v3, v12}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(B)V

    .line 16106
    iget-object v3, v0, Lcom/liulishuo/filedownloader/c/f;->b:Lcom/liulishuo/filedownloader/b/a;

    iget-object v4, v0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 16111
    iget v4, v4, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 16106
    invoke-interface {v3, v4}, Lcom/liulishuo/filedownloader/b/a;->g(I)V

    .line 16107
    invoke-virtual {v0, v12}, Lcom/liulishuo/filedownloader/c/f;->a(B)V

    .line 14077
    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 14078
    :try_start_4
    iget-object v0, v2, Lcom/liulishuo/filedownloader/services/h;->a:Landroid/util/SparseArray;

    .line 16993
    iget-object v3, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 17111
    iget v3, v3, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 14078
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14079
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 14080
    :try_start_5
    iget-object v0, v2, Lcom/liulishuo/filedownloader/services/h;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 14083
    iget v0, v2, Lcom/liulishuo/filedownloader/services/h;->c:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_15

    .line 14084
    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/services/h;->a()V

    .line 14085
    iput v11, v2, Lcom/liulishuo/filedownloader/services/h;->c:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return-void

    .line 14087
    :cond_15
    :try_start_6
    iget v0, v2, Lcom/liulishuo/filedownloader/services/h;->c:I

    add-int/2addr v0, v12

    iput v0, v2, Lcom/liulishuo/filedownloader/services/h;->c:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 202
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 14079
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0

    .line 14065
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    .line 64
    monitor-exit p0

    throw v0
.end method

.method public final a(I)Z
    .locals 5

    .line 213
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, "request pause the task %d"

    .line 214
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p0, v0, v3}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/g;->a:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/b/a;->b(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v1, -0x2

    .line 222
    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(B)V

    .line 223
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/g;->b:Lcom/liulishuo/filedownloader/services/h;

    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/services/h;->b(I)V

    return v2
.end method

.method public final a(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/g;->b:Lcom/liulishuo/filedownloader/services/h;

    .line 19111
    iget v2, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 293
    invoke-virtual {v1, v2}, Lcom/liulishuo/filedownloader/services/h;->c(I)Z

    move-result v1

    .line 297
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c()B

    move-result v2

    const/4 v3, 0x1

    if-gez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    if-eqz v1, :cond_4

    :goto_1
    move v0, v3

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "%d status is[%s](not finish) & but not in the pool"

    const/4 v2, 0x2

    .line 318
    new-array v2, v2, [Ljava/lang/Object;

    .line 20111
    iget v4, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 319
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v2, v3

    .line 318
    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/h/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 205
    invoke-static {p1, p2}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/services/g;->g(I)Z

    move-result p0

    return p0
.end method

.method public final b(I)J
    .locals 5

    .line 243
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/g;->a:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/b/a;->b(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 17199
    :cond_0
    iget v3, v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j:I

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    .line 18155
    iget-object p0, v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p0

    return-wide p0

    .line 252
    :cond_1
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/g;->a:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {p0, p1}, Lcom/liulishuo/filedownloader/b/a;->c(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 253
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-eq p1, v3, :cond_2

    goto :goto_0

    .line 256
    :cond_2
    invoke-static {p0}, Lcom/liulishuo/filedownloader/model/a;->a(Ljava/util/List;)J

    move-result-wide p0

    return-wide p0

    :cond_3
    :goto_0
    return-wide v1
.end method

.method public final b()Z
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/g;->b:Lcom/liulishuo/filedownloader/services/h;

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/services/h;->b()I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c(I)J
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/g;->a:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {p0, p1}, Lcom/liulishuo/filedownloader/b/a;->b(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 18159
    :cond_0
    iget-wide p0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g:J

    return-wide p0
.end method

.method public final c()V
    .locals 0

    .line 352
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/g;->a:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/b/a;->a()V

    return-void
.end method

.method public final d(I)B
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/g;->a:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {p0, p1}, Lcom/liulishuo/filedownloader/b/a;->b(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c()B

    move-result p0

    return p0
.end method

.method public final declared-synchronized e(I)Z
    .locals 1

    monitor-enter p0

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/g;->b:Lcom/liulishuo/filedownloader/services/h;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/h;->a(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string v2, "The task[%d] id is invalid, can\'t clear it."

    .line 337
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p0, v2, v0}, Lcom/liulishuo/filedownloader/h/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 341
    :cond_0
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/services/g;->g(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "The task[%d] is downloading, can\'t clear it."

    .line 342
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p0, v2, v0}, Lcom/liulishuo/filedownloader/h/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 346
    :cond_1
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/g;->a:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v1, p1}, Lcom/liulishuo/filedownloader/b/a;->e(I)Z

    .line 347
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/g;->a:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {p0, p1}, Lcom/liulishuo/filedownloader/b/a;->d(I)V

    return v0
.end method
