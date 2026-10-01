.class public final Lcom/liulishuo/filedownloader/c;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/a;
.implements Lcom/liulishuo/filedownloader/a$a;
.implements Lcom/liulishuo/filedownloader/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/c$a;
    }
.end annotation


# instance fields
.field volatile a:I

.field b:Z

.field private final c:Lcom/liulishuo/filedownloader/y;

.field private final d:Lcom/liulishuo/filedownloader/y$a;

.field private e:I

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

.field private l:Lcom/liulishuo/filedownloader/i;

.field private m:Ljava/lang/Object;

.field private n:I

.field private o:Z

.field private p:Z

.field private q:I

.field private r:I

.field private s:Z

.field private final t:Ljava/lang/Object;

.field private final u:Ljava/lang/Object;

.field private volatile v:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/liulishuo/filedownloader/c;->n:I

    .line 63
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/c;->o:Z

    .line 65
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/c;->p:Z

    const/16 v1, 0x64

    .line 68
    iput v1, p0, Lcom/liulishuo/filedownloader/c;->q:I

    const/16 v1, 0xa

    .line 69
    iput v1, p0, Lcom/liulishuo/filedownloader/c;->r:I

    .line 71
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/c;->s:Z

    .line 73
    iput v0, p0, Lcom/liulishuo/filedownloader/c;->a:I

    .line 74
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/c;->b:Z

    .line 534
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/c;->u:Ljava/lang/Object;

    .line 556
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/c;->v:Z

    .line 77
    iput-object p1, p0, Lcom/liulishuo/filedownloader/c;->g:Ljava/lang/String;

    .line 78
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liulishuo/filedownloader/c;->t:Ljava/lang/Object;

    .line 79
    new-instance p1, Lcom/liulishuo/filedownloader/d;

    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->t:Ljava/lang/Object;

    invoke-direct {p1, p0, v0}, Lcom/liulishuo/filedownloader/d;-><init>(Lcom/liulishuo/filedownloader/d$a;Ljava/lang/Object;)V

    .line 81
    iput-object p1, p0, Lcom/liulishuo/filedownloader/c;->c:Lcom/liulishuo/filedownloader/y;

    .line 82
    iput-object p1, p0, Lcom/liulishuo/filedownloader/c;->d:Lcom/liulishuo/filedownloader/y$a;

    return-void
.end method

.method private V()Z
    .registers 1

    .line 269
    iget-object p0, p0, Lcom/liulishuo/filedownloader/c;->c:Lcom/liulishuo/filedownloader/y;

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/y;->f()B

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private W()I
    .registers 4

    .line 312
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/c;->V()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 313
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/c;->h()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 314
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 317
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/c;->l()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "This task is running %d, if you want to start the same task, please create a new one by FileDownloader.create"

    .line 315
    invoke-static {p0, v1}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This task is dirty to restart, If you want to reuse this task, please invoke #reuse method manually and retry to restart again."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/liulishuo/filedownloader/c;->c:Lcom/liulishuo/filedownloader/y;

    .line 321
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_40
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/c;->i()Z

    move-result v0

    if-nez v0, :cond_49

    .line 326
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/c;->L()V

    .line 329
    :cond_49
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->c:Lcom/liulishuo/filedownloader/y;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/y;->d()V

    .line 331
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/c;->l()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final A()Ljava/lang/Throwable;
    .registers 1

    .line 472
    iget-object p0, p0, Lcom/liulishuo/filedownloader/c;->c:Lcom/liulishuo/filedownloader/y;

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/y;->i()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public final B()Ljava/lang/Object;
    .registers 1

    .line 482
    iget-object p0, p0, Lcom/liulishuo/filedownloader/c;->m:Ljava/lang/Object;

    return-object p0
.end method

.method public final C()I
    .registers 1

    .line 511
    iget p0, p0, Lcom/liulishuo/filedownloader/c;->n:I

    return p0
.end method

.method public final D()I
    .registers 1

    .line 516
    iget-object p0, p0, Lcom/liulishuo/filedownloader/c;->c:Lcom/liulishuo/filedownloader/y;

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/y;->j()I

    move-result p0

    return p0
.end method

.method public final E()Z
    .registers 1

    .line 521
    iget-boolean p0, p0, Lcom/liulishuo/filedownloader/c;->o:Z

    return p0
.end method

.method public final F()Z
    .registers 1

    .line 526
    iget-object p0, p0, Lcom/liulishuo/filedownloader/c;->c:Lcom/liulishuo/filedownloader/y;

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/y;->k()Z

    move-result p0

    return p0
.end method

.method public final G()Z
    .registers 1

    .line 531
    iget-boolean p0, p0, Lcom/liulishuo/filedownloader/c;->p:Z

    return p0
.end method

.method public final H()Lcom/liulishuo/filedownloader/a;
    .registers 1

    return-object p0
.end method

.method public final I()Lcom/liulishuo/filedownloader/y$a;
    .registers 1

    .line 622
    iget-object p0, p0, Lcom/liulishuo/filedownloader/c;->d:Lcom/liulishuo/filedownloader/y$a;

    return-object p0
.end method

.method public final J()Z
    .registers 1

    .line 637
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/c;->y()B

    move-result p0

    if-gez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final K()I
    .registers 1

    .line 642
    iget p0, p0, Lcom/liulishuo/filedownloader/c;->a:I

    return p0
.end method

.method public final L()V
    .registers 2

    .line 2410
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->l:Lcom/liulishuo/filedownloader/i;

    if-eqz v0, :cond_b

    .line 3410
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->l:Lcom/liulishuo/filedownloader/i;

    .line 654
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_f

    .line 656
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 658
    :goto_f
    iput v0, p0, Lcom/liulishuo/filedownloader/c;->a:I

    return-void
.end method

.method public final M()Z
    .registers 1

    .line 597
    iget-boolean p0, p0, Lcom/liulishuo/filedownloader/c;->v:Z

    return p0
.end method

.method public final N()V
    .registers 2

    const/4 v0, 0x1

    .line 560
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/c;->v:Z

    return-void
.end method

.method public final O()V
    .registers 2

    .line 565
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->c:Lcom/liulishuo/filedownloader/y;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/y;->l()V

    .line 2038
    invoke-static {}, Lcom/liulishuo/filedownloader/h$a;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object v0

    .line 566
    invoke-virtual {v0, p0}, Lcom/liulishuo/filedownloader/h;->a(Lcom/liulishuo/filedownloader/a$a;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    .line 567
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/c;->v:Z

    :cond_12
    return-void
.end method

.method public final P()V
    .registers 1

    .line 581
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/c;->W()I

    return-void
.end method

.method public final Q()Ljava/lang/Object;
    .registers 1

    .line 586
    iget-object p0, p0, Lcom/liulishuo/filedownloader/c;->t:Ljava/lang/Object;

    return-object p0
.end method

.method public final R()Z
    .registers 2

    .line 591
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/liulishuo/filedownloader/c;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final S()Lcom/liulishuo/filedownloader/model/FileDownloadHeader;
    .registers 1

    .line 548
    iget-object p0, p0, Lcom/liulishuo/filedownloader/c;->k:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    return-object p0
.end method

.method public final T()Lcom/liulishuo/filedownloader/a$a;
    .registers 1

    return-object p0
.end method

.method public final U()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 612
    iget-object p0, p0, Lcom/liulishuo/filedownloader/c;->f:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final a()Lcom/liulishuo/filedownloader/a;
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->c:Lcom/liulishuo/filedownloader/y;

    const/16 v1, 0x190

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/y;->a(I)V

    return-object p0
.end method

.method public final a(Lcom/liulishuo/filedownloader/i;)Lcom/liulishuo/filedownloader/a;
    .registers 5

    .line 119
    iput-object p1, p0, Lcom/liulishuo/filedownloader/c;->l:Lcom/liulishuo/filedownloader/i;

    .line 121
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v0, :cond_11

    const-string v0, "setListener %s"

    const/4 v1, 0x1

    .line 122
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/liulishuo/filedownloader/a;
    .registers 2

    .line 93
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/c;->b(Ljava/lang/String;)Lcom/liulishuo/filedownloader/a;

    move-result-object p0

    return-object p0
.end method

.method public final a(I)Z
    .registers 2

    .line 627
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/c;->l()I

    move-result p0

    if-ne p0, p1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final b()Lcom/liulishuo/filedownloader/a;
    .registers 2

    const/16 v0, 0x12c

    .line 129
    iput v0, p0, Lcom/liulishuo/filedownloader/c;->q:I

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/liulishuo/filedownloader/a;
    .registers 5

    .line 98
    iput-object p1, p0, Lcom/liulishuo/filedownloader/c;->h:Ljava/lang/String;

    .line 99
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const-string v0, "setPath %s"

    const/4 v2, 0x1

    .line 100
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {p0, v0, v2}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    :cond_11
    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/c;->j:Z

    .line 111
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/filedownloader/c;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Lcom/liulishuo/filedownloader/a;
    .registers 2

    const/16 v0, 0x64

    .line 135
    iput v0, p0, Lcom/liulishuo/filedownloader/c;->r:I

    return-object p0
.end method

.method public final c(Ljava/lang/String;)V
    .registers 2

    .line 607
    iput-object p1, p0, Lcom/liulishuo/filedownloader/c;->i:Ljava/lang/String;

    return-void
.end method

.method public final d()Lcom/liulishuo/filedownloader/a;
    .registers 2

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/c;->s:Z

    return-object p0
.end method

.method public final e()Lcom/liulishuo/filedownloader/a;
    .registers 2

    const/4 v0, 0x3

    .line 195
    iput v0, p0, Lcom/liulishuo/filedownloader/c;->n:I

    return-object p0
.end method

.method public final f()Lcom/liulishuo/filedownloader/a;
    .registers 2

    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/c;->p:Z

    return-object p0
.end method

.method public final g()Lcom/liulishuo/filedownloader/a$b;
    .registers 3

    .line 248
    new-instance v0, Lcom/liulishuo/filedownloader/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/liulishuo/filedownloader/c$a;-><init>(Lcom/liulishuo/filedownloader/c;B)V

    return-object v0
.end method

.method public final h()Z
    .registers 3

    .line 276
    invoke-static {}, Lcom/liulishuo/filedownloader/s;->a()Lcom/liulishuo/filedownloader/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/s;->e()Lcom/liulishuo/filedownloader/w;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/liulishuo/filedownloader/w;->a(Lcom/liulishuo/filedownloader/a$a;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    return v1

    .line 280
    :cond_10
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/c;->y()B

    move-result p0

    if-lez p0, :cond_17

    return v1

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public final i()Z
    .registers 1

    .line 285
    iget p0, p0, Lcom/liulishuo/filedownloader/c;->a:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final j()I
    .registers 2

    .line 290
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/c;->b:Z

    if-nez v0, :cond_9

    .line 308
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/c;->W()I

    move-result p0

    return p0

    .line 291
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "If you start the task manually, it means this task doesn\'t belong to a queue, so you must not invoke BaseDownloadTask#ready() or InQueueTask#enqueue() before you start() this method. For detail: If this task doesn\'t belong to a queue, what is just an isolated task, you just need to invoke BaseDownloadTask#start() to start this task, that\'s all. In other words, If this task doesn\'t belong to a queue, you must not invoke BaseDownloadTask#ready() method or InQueueTask#enqueue() method before invoke BaseDownloadTask#start(), If you do that and if there is the same listener object to start a queue in another thread, this task may be assembled by the queue, in that case, when you invoke BaseDownloadTask#start() manually to start this task or this task is started by the queue, there is an exception buried in there, because this task object is started two times without declare BaseDownloadTask#reuse() : 1. you invoke BaseDownloadTask#start() manually;  2. the queue start this task automatically."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final k()Z
    .registers 2

    .line 340
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->t:Ljava/lang/Object;

    monitor-enter v0

    .line 341
    :try_start_3
    iget-object p0, p0, Lcom/liulishuo/filedownloader/c;->c:Lcom/liulishuo/filedownloader/y;

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/y;->e()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 342
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final l()I
    .registers 4

    .line 354
    iget v0, p0, Lcom/liulishuo/filedownloader/c;->e:I

    if-eqz v0, :cond_7

    .line 355
    iget p0, p0, Lcom/liulishuo/filedownloader/c;->e:I

    return p0

    .line 358
    :cond_7
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 359
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/c;->h:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/liulishuo/filedownloader/c;->j:Z

    invoke-static {v0, v1, v2}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    iput v0, p0, Lcom/liulishuo/filedownloader/c;->e:I

    return v0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method public final m()Ljava/lang/String;
    .registers 1

    .line 375
    iget-object p0, p0, Lcom/liulishuo/filedownloader/c;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final n()I
    .registers 1

    .line 380
    iget p0, p0, Lcom/liulishuo/filedownloader/c;->q:I

    return p0
.end method

.method public final o()I
    .registers 1

    .line 385
    iget p0, p0, Lcom/liulishuo/filedownloader/c;->r:I

    return p0
.end method

.method public final p()Ljava/lang/String;
    .registers 1

    .line 390
    iget-object p0, p0, Lcom/liulishuo/filedownloader/c;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final q()Z
    .registers 1

    .line 395
    iget-boolean p0, p0, Lcom/liulishuo/filedownloader/c;->j:Z

    return p0
.end method

.method public final r()Ljava/lang/String;
    .registers 1

    .line 400
    iget-object p0, p0, Lcom/liulishuo/filedownloader/c;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final s()Ljava/lang/String;
    .registers 3

    .line 1390
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->h:Ljava/lang/String;

    .line 1395
    iget-boolean v1, p0, Lcom/liulishuo/filedownloader/c;->j:Z

    .line 1400
    iget-object p0, p0, Lcom/liulishuo/filedownloader/c;->i:Ljava/lang/String;

    .line 405
    invoke-static {v0, v1, p0}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final t()Lcom/liulishuo/filedownloader/i;
    .registers 1

    .line 410
    iget-object p0, p0, Lcom/liulishuo/filedownloader/c;->l:Lcom/liulishuo/filedownloader/i;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    const-string v0, "%d@%s"

    const/4 v1, 0x2

    .line 663
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/c;->l()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()I
    .registers 5

    .line 420
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->c:Lcom/liulishuo/filedownloader/y;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/y;->g()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_11

    const p0, 0x7fffffff

    return p0

    .line 423
    :cond_11
    iget-object p0, p0, Lcom/liulishuo/filedownloader/c;->c:Lcom/liulishuo/filedownloader/y;

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/y;->g()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public final v()J
    .registers 3

    .line 428
    iget-object p0, p0, Lcom/liulishuo/filedownloader/c;->c:Lcom/liulishuo/filedownloader/y;

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/y;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public final w()I
    .registers 5

    .line 438
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c;->c:Lcom/liulishuo/filedownloader/y;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/y;->h()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_11

    const p0, 0x7fffffff

    return p0

    .line 442
    :cond_11
    iget-object p0, p0, Lcom/liulishuo/filedownloader/c;->c:Lcom/liulishuo/filedownloader/y;

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/y;->h()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public final x()J
    .registers 3

    .line 447
    iget-object p0, p0, Lcom/liulishuo/filedownloader/c;->c:Lcom/liulishuo/filedownloader/y;

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/y;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public final y()B
    .registers 1

    .line 457
    iget-object p0, p0, Lcom/liulishuo/filedownloader/c;->c:Lcom/liulishuo/filedownloader/y;

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/y;->f()B

    move-result p0

    return p0
.end method

.method public final z()Z
    .registers 1

    .line 462
    iget-boolean p0, p0, Lcom/liulishuo/filedownloader/c;->s:Z

    return p0
.end method
