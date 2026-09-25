.class public Lcom/liulishuo/filedownloader/h/e;
.super Ljava/lang/Object;
.source "FileDownloadProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/h/e$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Z

.field public final d:Z

.field public final e:I

.field public final f:Z

.field public final g:Z

.field public final h:Z


# direct methods
.method private constructor <init>()V
    .locals 18

    move-object/from16 v1, p0

    .line 160
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1051
    sget-object v0, Lcom/liulishuo/filedownloader/h/c;->a:Landroid/content/Context;

    if-eqz v0, :cond_19

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 178
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2051
    :try_start_0
    sget-object v6, Lcom/liulishuo/filedownloader/h/c;->a:Landroid/content/Context;

    .line 182
    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "filedownloader.properties"

    .line 183
    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    .line 185
    :try_start_1
    invoke-virtual {v0, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v7, "http.lenient"

    .line 186
    invoke-virtual {v0, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v8, "process.non-separate"

    .line 187
    invoke-virtual {v0, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v9, "download.min-progress-step"

    .line 188
    invoke-virtual {v0, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    const-string v10, "download.min-progress-time"

    .line 189
    invoke-virtual {v0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    const-string v11, "download.max-network-thread-count"

    .line 191
    invoke-virtual {v0, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    const-string v12, "file.non-pre-allocation"

    .line 192
    invoke-virtual {v0, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    const-string v13, "broadcast.completed"

    .line 193
    invoke-virtual {v0, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    const-string v14, "download.trial-connection-head-method"

    .line 194
    invoke-virtual {v0, v14}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v4, v7

    move-object v7, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v13, v4

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v12, v4

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v11, v4

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v10, v4

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v9, v4

    goto :goto_3

    :catch_6
    move-exception v0

    move-object v8, v4

    goto :goto_2

    :catch_7
    move-exception v0

    move-object v7, v4

    goto :goto_1

    :cond_0
    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    :goto_0
    if-eqz v6, :cond_4

    .line 208
    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_a

    :catch_8
    move-exception v0

    move-object v6, v0

    .line 210
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v6, v4

    goto/16 :goto_18

    :catch_9
    move-exception v0

    move-object v6, v4

    move-object v7, v6

    :goto_1
    move-object v8, v7

    :goto_2
    move-object v9, v8

    :goto_3
    move-object v10, v9

    :goto_4
    move-object v11, v10

    :goto_5
    move-object v12, v11

    :goto_6
    move-object v13, v12

    .line 197
    :goto_7
    :try_start_a
    instance-of v14, v0, Ljava/io/FileNotFoundException;

    if-eqz v14, :cond_1

    .line 198
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v0, :cond_2

    .line 199
    const-class v0, Lcom/liulishuo/filedownloader/h/e;

    const-string v14, "not found filedownloader.properties"

    new-array v15, v5, [Ljava/lang/Object;

    invoke-static {v0, v14, v15}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 203
    :cond_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_2
    :goto_8
    if-eqz v6, :cond_3

    .line 208
    :try_start_b
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_9

    :catch_a
    move-exception v0

    move-object v6, v0

    .line 210
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_9
    move-object/from16 v17, v7

    move-object v7, v4

    move-object/from16 v4, v17

    :cond_4
    :goto_a
    const/4 v0, 0x2

    const/4 v6, 0x1

    const/4 v14, 0x3

    if-eqz v4, :cond_7

    const-string v15, "true"

    .line 218
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    const-string v15, "false"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    goto :goto_b

    .line 219
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-array v2, v14, [Ljava/lang/Object;

    const-string v3, "http.lenient"

    aput-object v3, v2, v5

    const-string v3, "true"

    aput-object v3, v2, v6

    const-string v3, "false"

    aput-object v3, v2, v0

    const-string v0, "the value of \'%s\' must be \'%s\' or \'%s\'"

    .line 220
    invoke-static {v0, v2}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    :goto_b
    const-string v15, "true"

    .line 223
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/liulishuo/filedownloader/h/e;->c:Z

    goto :goto_c

    .line 225
    :cond_7
    iput-boolean v5, v1, Lcom/liulishuo/filedownloader/h/e;->c:Z

    :goto_c
    if-eqz v8, :cond_a

    const-string v4, "true"

    .line 230
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "false"

    .line 231
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_d

    .line 232
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    new-array v2, v14, [Ljava/lang/Object;

    const-string v3, "process.non-separate"

    aput-object v3, v2, v5

    const-string v3, "true"

    aput-object v3, v2, v6

    const-string v3, "false"

    aput-object v3, v2, v0

    const-string v0, "the value of \'%s\' must be \'%s\' or \'%s\'"

    .line 233
    invoke-static {v0, v2}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_d
    const-string v4, "true"

    .line 236
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/liulishuo/filedownloader/h/e;->d:Z

    goto :goto_e

    .line 238
    :cond_a
    iput-boolean v5, v1, Lcom/liulishuo/filedownloader/h/e;->d:Z

    :goto_e
    if-eqz v9, :cond_b

    .line 243
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 244
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 245
    iput v4, v1, Lcom/liulishuo/filedownloader/h/e;->a:I

    goto :goto_f

    :cond_b
    const/high16 v4, 0x10000

    .line 247
    iput v4, v1, Lcom/liulishuo/filedownloader/h/e;->a:I

    :goto_f
    if-eqz v10, :cond_c

    .line 252
    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v16, v7

    const-wide/16 v6, 0x0

    .line 253
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 254
    iput-wide v6, v1, Lcom/liulishuo/filedownloader/h/e;->b:J

    goto :goto_10

    :cond_c
    move-object/from16 v16, v7

    const-wide/16 v6, 0x7d0

    .line 256
    iput-wide v6, v1, Lcom/liulishuo/filedownloader/h/e;->b:J

    :goto_10
    if-eqz v11, :cond_d

    .line 262
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 261
    invoke-static {v4}, Lcom/liulishuo/filedownloader/h/e;->a(I)I

    move-result v4

    iput v4, v1, Lcom/liulishuo/filedownloader/h/e;->e:I

    goto :goto_11

    .line 264
    :cond_d
    iput v14, v1, Lcom/liulishuo/filedownloader/h/e;->e:I

    :goto_11
    if-eqz v12, :cond_10

    const-string v4, "true"

    .line 269
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "false"

    .line 270
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_12

    .line 271
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    new-array v2, v14, [Ljava/lang/Object;

    const-string v3, "file.non-pre-allocation"

    aput-object v3, v2, v5

    const-string v3, "true"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "false"

    aput-object v3, v2, v0

    const-string v0, "the value of \'%s\' must be \'%s\' or \'%s\'"

    .line 272
    invoke-static {v0, v2}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    :goto_12
    const-string v4, "true"

    .line 275
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/liulishuo/filedownloader/h/e;->f:Z

    goto :goto_13

    .line 277
    :cond_10
    iput-boolean v5, v1, Lcom/liulishuo/filedownloader/h/e;->f:Z

    :goto_13
    if-eqz v13, :cond_13

    const-string v4, "true"

    .line 282
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    const-string v4, "false"

    .line 283
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_14

    .line 284
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    new-array v2, v14, [Ljava/lang/Object;

    const-string v3, "broadcast.completed"

    aput-object v3, v2, v5

    const-string v3, "true"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "false"

    aput-object v3, v2, v0

    const-string v0, "the value of \'%s\' must be \'%s\' or \'%s\'"

    .line 285
    invoke-static {v0, v2}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    :goto_14
    const-string v4, "true"

    .line 288
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/liulishuo/filedownloader/h/e;->g:Z

    goto :goto_15

    .line 291
    :cond_13
    iput-boolean v5, v1, Lcom/liulishuo/filedownloader/h/e;->g:Z

    :goto_15
    if-eqz v16, :cond_16

    const-string v4, "true"

    move-object/from16 v7, v16

    .line 296
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "false"

    .line 297
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    goto :goto_16

    .line 298
    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    new-array v2, v14, [Ljava/lang/Object;

    const-string v3, "download.trial-connection-head-method"

    aput-object v3, v2, v5

    const-string v3, "true"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "false"

    aput-object v3, v2, v0

    const-string v0, "the value of \'%s\' must be \'%s\' or \'%s\'"

    .line 299
    invoke-static {v0, v2}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    :goto_16
    const-string v4, "true"

    .line 302
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/liulishuo/filedownloader/h/e;->h:Z

    goto :goto_17

    .line 304
    :cond_16
    iput-boolean v5, v1, Lcom/liulishuo/filedownloader/h/e;->h:Z

    .line 307
    :goto_17
    sget-boolean v4, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v4, :cond_17

    .line 308
    const-class v4, Lcom/liulishuo/filedownloader/h/e;

    const-string v6, "init properties %d\n load properties: %s=%B; %s=%B; %s=%d; %s=%d; %s=%d; %s=%B; %s=%B; %s=%B"

    const/16 v7, 0x11

    new-array v7, v7, [Ljava/lang/Object;

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v5

    const-string v2, "http.lenient"

    const/4 v3, 0x1

    aput-object v2, v7, v3

    iget-boolean v2, v1, Lcom/liulishuo/filedownloader/h/e;->c:Z

    .line 311
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v7, v0

    const-string v0, "process.non-separate"

    aput-object v0, v7, v14

    const/4 v0, 0x4

    iget-boolean v2, v1, Lcom/liulishuo/filedownloader/h/e;->d:Z

    .line 312
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v7, v0

    const/4 v0, 0x5

    const-string v2, "download.min-progress-step"

    aput-object v2, v7, v0

    const/4 v0, 0x6

    iget v2, v1, Lcom/liulishuo/filedownloader/h/e;->a:I

    .line 313
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v0

    const/4 v0, 0x7

    const-string v2, "download.min-progress-time"

    aput-object v2, v7, v0

    const/16 v0, 0x8

    iget-wide v2, v1, Lcom/liulishuo/filedownloader/h/e;->b:J

    .line 314
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v0

    const/16 v0, 0x9

    const-string v2, "download.max-network-thread-count"

    aput-object v2, v7, v0

    const/16 v0, 0xa

    iget v2, v1, Lcom/liulishuo/filedownloader/h/e;->e:I

    .line 315
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v0

    const/16 v0, 0xb

    const-string v2, "file.non-pre-allocation"

    aput-object v2, v7, v0

    const/16 v0, 0xc

    iget-boolean v2, v1, Lcom/liulishuo/filedownloader/h/e;->f:Z

    .line 316
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v7, v0

    const/16 v0, 0xd

    const-string v2, "broadcast.completed"

    aput-object v2, v7, v0

    const/16 v0, 0xe

    iget-boolean v2, v1, Lcom/liulishuo/filedownloader/h/e;->g:Z

    .line 317
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v7, v0

    const/16 v0, 0xf

    const-string v2, "download.trial-connection-head-method"

    aput-object v2, v7, v0

    const/16 v0, 0x10

    iget-boolean v1, v1, Lcom/liulishuo/filedownloader/h/e;->h:Z

    .line 318
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v7, v0

    .line 308
    invoke-static {v4, v6, v7}, Lcom/liulishuo/filedownloader/h/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_17
    return-void

    :catchall_1
    move-exception v0

    move-object v1, v0

    :goto_18
    if-eqz v6, :cond_18

    .line 208
    :try_start_c
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_19

    :catch_b
    move-exception v0

    move-object v2, v0

    .line 210
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 211
    :cond_18
    :goto_19
    throw v1

    .line 162
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please invoke the \'FileDownloader#setup\' before using FileDownloader. If you want to register some components on FileDownloader please invoke the \'FileDownloader#setupOnApplicationOnCreate\' on the \'Application#onCreate\' first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/h/e;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/16 v3, 0xc

    const/4 v4, 0x1

    if-le p0, v3, :cond_0

    .line 327
    const-class v5, Lcom/liulishuo/filedownloader/h/e;

    const-string v6, "require the count of network thread  is %d, what is more than the max valid count(%d), so adjust to %d auto"

    new-array v2, v2, [Ljava/lang/Object;

    .line 330
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v0

    .line 327
    invoke-static {v5, v6, v2}, Lcom/liulishuo/filedownloader/h/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_0
    if-gtz p0, :cond_1

    .line 333
    const-class v3, Lcom/liulishuo/filedownloader/h/e;

    const-string v5, "require the count of network thread  is %d, what is less than the min valid count(%d), so adjust to %d auto"

    new-array v2, v2, [Ljava/lang/Object;

    .line 336
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v0

    .line 333
    invoke-static {v3, v5, v2}, Lcom/liulishuo/filedownloader/h/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_1
    return p0
.end method

.method public static a()Lcom/liulishuo/filedownloader/h/e;
    .locals 1

    .line 153
    invoke-static {}, Lcom/liulishuo/filedownloader/h/e$a;->a()Lcom/liulishuo/filedownloader/h/e;

    move-result-object v0

    return-object v0
.end method
