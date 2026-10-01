.class final Lcom/liulishuo/filedownloader/k;
.super Ljava/lang/Object;
.source "FileDownloadMessenger.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/u;


# instance fields
.field private a:Lcom/liulishuo/filedownloader/a$a;

.field private b:Lcom/liulishuo/filedownloader/a$c;

.field private c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/liulishuo/filedownloader/message/MessageSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method constructor <init>(Lcom/liulishuo/filedownloader/a$a;Lcom/liulishuo/filedownloader/a$c;)V
    .registers 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/k;->d:Z

    .line 1049
    iput-object p1, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$a;

    .line 1050
    iput-object p2, p0, Lcom/liulishuo/filedownloader/k;->b:Lcom/liulishuo/filedownloader/a$c;

    .line 1051
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/liulishuo/filedownloader/k;->c:Ljava/util/Queue;

    return-void
.end method

.method private a(I)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p1, :cond_6

    move p1, v1

    goto :goto_7

    :cond_6
    move p1, v0

    :goto_7
    if-eqz p1, :cond_46

    .line 231
    iget-object p1, p0, Lcom/liulishuo/filedownloader/k;->c:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_43

    .line 232
    iget-object p1, p0, Lcom/liulishuo/filedownloader/k;->c:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    const-string v2, "the messenger[%s](with id[%d]) has already accomplished all his job, but there still are some messages in parcel queue[%d] queue-top-status[%d]"

    const/4 v3, 0x4

    .line 233
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    .line 3038
    iget v0, p1, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->a:I

    .line 237
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/liulishuo/filedownloader/k;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x3

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v3, v0

    .line 233
    invoke-static {p0, v2, v3}, Lcom/liulishuo/filedownloader/h/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_43
    const/4 p1, 0x0

    .line 239
    iput-object p1, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$a;

    :cond_46
    return-void
.end method

.method private j(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .registers 6

    .line 200
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$a;

    if-nez v0, :cond_25

    .line 201
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v0, :cond_24

    const-string v0, "occur this case, it would be the host task of this messenger has been over(paused/warn/completed/error) on the other thread before receiving the snapshot(id[%d], status[%d])"

    const/4 v1, 0x2

    .line 204
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2038
    iget v3, p1, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->a:I

    .line 207
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v1, v2

    .line 204
    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_24
    return-void

    .line 212
    :cond_25
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/k;->d:Z

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$a;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$a;->H()Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->t()Lcom/liulishuo/filedownloader/i;

    move-result-object v0

    if-nez v0, :cond_36

    goto :goto_43

    .line 222
    :cond_36
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 224
    invoke-static {}, Lcom/liulishuo/filedownloader/j;->a()Lcom/liulishuo/filedownloader/j;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/liulishuo/filedownloader/j;->a(Lcom/liulishuo/filedownloader/u;)V

    return-void

    .line 213
    :cond_43
    :goto_43
    invoke-static {}, Lcom/liulishuo/filedownloader/l;->a()Z

    move-result v0

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$a;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$a;->R()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 214
    :cond_51
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b()B

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5d

    .line 217
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->b:Lcom/liulishuo/filedownloader/a$c;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$c;->b()V

    .line 220
    :cond_5d
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b()B

    move-result p1

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/k;->a(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .registers 6

    .line 73
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v0, :cond_11

    const-string v0, "notify pending %s"

    const/4 v1, 0x1

    .line 74
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$a;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    :cond_11
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/k;->j(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public final a()Z
    .registers 6

    .line 56
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    const-string v0, "notify begin %s"

    .line 57
    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$a;

    aput-object v4, v3, v1

    invoke-static {p0, v0, v3}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    :cond_11
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$a;

    if-nez v0, :cond_29

    const-string v0, "can\'t begin the task, the holder fo the messenger is nil, %d"

    .line 61
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/liulishuo/filedownloader/k;->c:Ljava/util/Queue;

    .line 62
    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    .line 61
    invoke-static {p0, v0, v2}, Lcom/liulishuo/filedownloader/h/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 66
    :cond_29
    iget-object p0, p0, Lcom/liulishuo/filedownloader/k;->b:Lcom/liulishuo/filedownloader/a$c;

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/a$c;->a()V

    return v2
.end method

.method public final b()V
    .registers 9

    .line 245
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/k;->d:Z

    if-eqz v0, :cond_5

    return-void

    .line 249
    :cond_5
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    .line 250
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b()B

    move-result v1

    .line 251
    iget-object v2, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$a;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_d0

    .line 260
    invoke-interface {v2}, Lcom/liulishuo/filedownloader/a$a;->H()Lcom/liulishuo/filedownloader/a;

    move-result-object v5

    .line 262
    invoke-interface {v5}, Lcom/liulishuo/filedownloader/a;->t()Lcom/liulishuo/filedownloader/i;

    move-result-object v6

    .line 263
    invoke-interface {v2}, Lcom/liulishuo/filedownloader/a$a;->I()Lcom/liulishuo/filedownloader/y$a;

    move-result-object v2

    .line 265
    invoke-direct {p0, v1}, Lcom/liulishuo/filedownloader/k;->a(I)V

    if-nez v6, :cond_29

    return-void

    :cond_29
    const/4 v7, 0x4

    if-ne v1, v7, :cond_53

    .line 274
    :try_start_2c
    check-cast v0, Lcom/liulishuo/filedownloader/message/BlockCompleteMessage;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/message/BlockCompleteMessage;->d_()Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v0

    .line 3190
    sget-boolean v1, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v1, :cond_41

    const-string v1, "notify completed %s"

    .line 3191
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$a;

    aput-object v5, v3, v4

    invoke-static {p0, v1, v3}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3194
    :cond_41
    iget-object v1, p0, Lcom/liulishuo/filedownloader/k;->b:Lcom/liulishuo/filedownloader/a$c;

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a$c;->b()V

    .line 3196
    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/k;->j(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_49} :catch_4a

    return-void

    :catch_4a
    move-exception v0

    .line 276
    invoke-interface {v2, v0}, Lcom/liulishuo/filedownloader/y$a;->a(Ljava/lang/Throwable;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/k;->h(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void

    :cond_53
    const/4 p0, 0x0

    .line 280
    instance-of v2, v6, Lcom/liulishuo/filedownloader/g;

    if-eqz v2, :cond_5b

    .line 281
    move-object p0, v6

    check-cast p0, Lcom/liulishuo/filedownloader/g;

    :cond_5b
    packed-switch v1, :pswitch_data_f2

    :pswitch_5e
    goto :goto_cf

    :pswitch_5f
    return-void

    :pswitch_60
    if-eqz p0, :cond_6c

    .line 332
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->j()Ljava/lang/Throwable;

    .line 333
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->k()I

    .line 334
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->i()J

    return-void

    .line 337
    :cond_6c
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->j()Ljava/lang/Throwable;

    .line 338
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->k()I

    .line 339
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->a()I

    return-void

    :pswitch_76
    if-eqz p0, :cond_7c

    .line 320
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->i()J

    return-void

    .line 325
    :cond_7c
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->a()I

    move-result p0

    .line 326
    invoke-interface {v5}, Lcom/liulishuo/filedownloader/a;->w()I

    move-result v0

    .line 324
    invoke-virtual {v6, v5, p0, v0}, Lcom/liulishuo/filedownloader/i;->a(Lcom/liulishuo/filedownloader/a;II)V

    return-void

    :pswitch_88
    if-eqz p0, :cond_94

    .line 303
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->h()Ljava/lang/String;

    .line 304
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->g()Z

    .line 306
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->d()J

    return-void

    .line 310
    :cond_94
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->h()Ljava/lang/String;

    .line 311
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->g()Z

    .line 313
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->c()I

    return-void

    :pswitch_9e
    if-eqz p0, :cond_a7

    .line 288
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->i()J

    .line 289
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->d()J

    return-void

    .line 292
    :cond_a7
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->a()I

    .line 293
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->c()I

    return-void

    .line 348
    :pswitch_ae
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->j()Ljava/lang/Throwable;

    move-result-object p0

    .line 347
    invoke-virtual {v6, v5, p0}, Lcom/liulishuo/filedownloader/i;->a(Lcom/liulishuo/filedownloader/a;Ljava/lang/Throwable;)V

    return-void

    :pswitch_b6
    if-eqz p0, :cond_bf

    .line 353
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->i()J

    .line 354
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->d()J

    return-void

    .line 357
    :cond_bf
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->a()I

    move-result p0

    .line 358
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->c()I

    move-result v0

    .line 356
    invoke-virtual {v6, v5, p0, v0}, Lcom/liulishuo/filedownloader/i;->b(Lcom/liulishuo/filedownloader/a;II)V

    goto :goto_cf

    .line 344
    :pswitch_cb
    invoke-virtual {v6, v5}, Lcom/liulishuo/filedownloader/i;->a(Lcom/liulishuo/filedownloader/a;)V

    return-void

    :goto_cf
    return-void

    .line 254
    :cond_d0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 257
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    iget-object p0, p0, Lcom/liulishuo/filedownloader/k;->c:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    const-string p0, "can\'t handover the message, no master to receive this message(status[%d]) size[%d]"

    .line 254
    invoke-static {p0, v2}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_f2
    .packed-switch -0x3
        :pswitch_cb
        :pswitch_b6
        :pswitch_ae
        :pswitch_5e
        :pswitch_9e
        :pswitch_88
        :pswitch_76
        :pswitch_5e
        :pswitch_60
        :pswitch_5f
    .end packed-switch
.end method

.method public final b(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .registers 6

    .line 84
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v0, :cond_11

    const-string v0, "notify started %s"

    const/4 v1, 0x1

    .line 85
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$a;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    :cond_11
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/k;->j(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public final c(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .registers 6

    .line 95
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v0, :cond_11

    const-string v0, "notify connected %s"

    const/4 v1, 0x1

    .line 96
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$a;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    :cond_11
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/k;->j(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public final c()Z
    .registers 1

    .line 373
    iget-object p0, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$a;

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/a$a;->H()Lcom/liulishuo/filedownloader/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/a;->E()Z

    move-result p0

    return p0
.end method

.method public final d(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .registers 10

    .line 106
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$a;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$a;->H()Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    .line 107
    sget-boolean v1, Lcom/liulishuo/filedownloader/h/d;->a:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2b

    const-string v1, "notify progress %s %d %d"

    const/4 v4, 0x3

    .line 108
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    .line 109
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->v()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x2

    .line 110
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->x()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 108
    invoke-static {p0, v1, v4}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    :cond_2b
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->n()I

    move-result v0

    if-gtz v0, :cond_41

    .line 113
    sget-boolean p1, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz p1, :cond_40

    const-string p1, "notify progress but client not request notify %s"

    .line 114
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$a;

    aput-object v1, v0, v3

    invoke-static {p0, p1, v0}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_40
    return-void

    .line 121
    :cond_41
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/k;->j(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public final d()Z
    .registers 2

    .line 390
    iget-object p0, p0, Lcom/liulishuo/filedownloader/k;->c:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b()B

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public final e(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .registers 6

    .line 130
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v0, :cond_1c

    const-string v0, "notify block completed %s %s"

    const/4 v1, 0x2

    .line 131
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$a;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 132
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 131
    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    :cond_1c
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/k;->j(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public final f(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .registers 7

    .line 142
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v0, :cond_34

    .line 143
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$a;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$a;->H()Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    const-string v1, "notify retry %s %d %d %s"

    const/4 v2, 0x4

    .line 144
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$a;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 145
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->C()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->D()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 146
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->A()Ljava/lang/Throwable;

    move-result-object v0

    aput-object v0, v2, v3

    .line 144
    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    :cond_34
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/k;->j(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public final g(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .registers 6

    .line 157
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v0, :cond_11

    const-string v0, "notify warn %s"

    const/4 v1, 0x1

    .line 158
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$a;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    :cond_11
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->b:Lcom/liulishuo/filedownloader/a$c;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$c;->b()V

    .line 163
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/k;->j(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public final h(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .registers 6

    .line 168
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v0, :cond_1e

    const-string v0, "notify error %s %s"

    const/4 v1, 0x2

    .line 169
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$a;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$a;

    invoke-interface {v3}, Lcom/liulishuo/filedownloader/a$a;->H()Lcom/liulishuo/filedownloader/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/liulishuo/filedownloader/a;->A()Ljava/lang/Throwable;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    :cond_1e
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->b:Lcom/liulishuo/filedownloader/a$c;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$c;->b()V

    .line 174
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/k;->j(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public final i(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .registers 6

    .line 179
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v0, :cond_11

    const-string v0, "notify paused %s"

    const/4 v1, 0x1

    .line 180
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$a;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    :cond_11
    iget-object v0, p0, Lcom/liulishuo/filedownloader/k;->b:Lcom/liulishuo/filedownloader/a$c;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$c;->b()V

    .line 185
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/k;->j(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    const-string v0, "%d:%s"

    const/4 v1, 0x2

    .line 400
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$a;

    if-nez v2, :cond_b

    const/4 v2, -0x1

    goto :goto_15

    :cond_b
    iget-object v2, p0, Lcom/liulishuo/filedownloader/k;->a:Lcom/liulishuo/filedownloader/a$a;

    .line 401
    invoke-interface {v2}, Lcom/liulishuo/filedownloader/a$a;->H()Lcom/liulishuo/filedownloader/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/liulishuo/filedownloader/a;->l()I

    move-result v2

    :goto_15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    .line 400
    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
