.class public final Lcom/liulishuo/filedownloader/c/d;
.super Ljava/lang/Object;
.source "DownloadLaunchRunnable.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/c/h;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/c/d$a;,
        Lcom/liulishuo/filedownloader/c/d$b;,
        Lcom/liulishuo/filedownloader/c/d$c;
    }
.end annotation


# static fields
.field private static final p:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private A:J

.field private B:J

.field public final a:Lcom/liulishuo/filedownloader/c/f;

.field public final b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

.field public final c:Lcom/liulishuo/filedownloader/b/a;

.field d:I

.field private final e:I

.field private final f:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

.field private final g:Z

.field private final h:Z

.field private final i:Lcom/liulishuo/filedownloader/z;

.field private j:Z

.field private k:Z

.field private final l:Z

.field private final m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/liulishuo/filedownloader/c/e;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/liulishuo/filedownloader/c/e;

.field private o:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private final t:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile u:Z

.field private volatile v:Z

.field private volatile w:Ljava/lang/Exception;

.field private x:Ljava/lang/String;

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const-string v0, "ConnectionBlock"

    .line 50210
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v8, Lcom/liulishuo/filedownloader/h/b$a;

    invoke-direct {v8, v0}, Lcom/liulishuo/filedownloader/h/b$a;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0xf

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 109
    sput-object v9, Lcom/liulishuo/filedownloader/c/d;->p:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method private constructor <init>(Lcom/liulishuo/filedownloader/model/FileDownloadModel;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;Lcom/liulishuo/filedownloader/z;IIZZI)V
    .registers 13

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 78
    iput v0, p0, Lcom/liulishuo/filedownloader/c/d;->e:I

    const/4 v1, 0x0

    .line 99
    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/c/d;->k:Z

    .line 103
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/liulishuo/filedownloader/c/d;->m:Ljava/util/ArrayList;

    const-wide/16 v2, 0x0

    .line 787
    iput-wide v2, p0, Lcom/liulishuo/filedownloader/c/d;->y:J

    .line 788
    iput-wide v2, p0, Lcom/liulishuo/filedownloader/c/d;->z:J

    .line 790
    iput-wide v2, p0, Lcom/liulishuo/filedownloader/c/d;->A:J

    .line 791
    iput-wide v2, p0, Lcom/liulishuo/filedownloader/c/d;->B:J

    .line 127
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/c/d;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 128
    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/c/d;->u:Z

    .line 129
    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/c/d;->j:Z

    .line 131
    iput-object p1, p0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 132
    iput-object p2, p0, Lcom/liulishuo/filedownloader/c/d;->f:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    .line 133
    iput-boolean p6, p0, Lcom/liulishuo/filedownloader/c/d;->g:Z

    .line 134
    iput-boolean p7, p0, Lcom/liulishuo/filedownloader/c/d;->h:Z

    .line 1052
    invoke-static {}, Lcom/liulishuo/filedownloader/c/c$a;->a()Lcom/liulishuo/filedownloader/c/c;

    move-result-object p2

    .line 135
    invoke-virtual {p2}, Lcom/liulishuo/filedownloader/c/c;->b()Lcom/liulishuo/filedownloader/b/a;

    move-result-object p2

    iput-object p2, p0, Lcom/liulishuo/filedownloader/c/d;->c:Lcom/liulishuo/filedownloader/b/a;

    .line 2052
    invoke-static {}, Lcom/liulishuo/filedownloader/c/c$a;->a()Lcom/liulishuo/filedownloader/c/c;

    move-result-object p2

    .line 2116
    invoke-virtual {p2}, Lcom/liulishuo/filedownloader/c/c;->e()Lcom/liulishuo/filedownloader/h/c$e;

    .line 136
    iput-boolean v2, p0, Lcom/liulishuo/filedownloader/c/d;->l:Z

    .line 137
    iput-object p3, p0, Lcom/liulishuo/filedownloader/c/d;->i:Lcom/liulishuo/filedownloader/z;

    .line 138
    iput p8, p0, Lcom/liulishuo/filedownloader/c/d;->d:I

    .line 140
    new-instance p2, Lcom/liulishuo/filedownloader/c/f;

    invoke-direct {p2, p1, p8, p4, p5}, Lcom/liulishuo/filedownloader/c/f;-><init>(Lcom/liulishuo/filedownloader/model/FileDownloadModel;III)V

    iput-object p2, p0, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/liulishuo/filedownloader/model/FileDownloadModel;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;Lcom/liulishuo/filedownloader/z;IIZZIB)V
    .registers 10

    .line 75
    invoke-direct/range {p0 .. p8}, Lcom/liulishuo/filedownloader/c/d;-><init>(Lcom/liulishuo/filedownloader/model/FileDownloadModel;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;Lcom/liulishuo/filedownloader/z;IIZZI)V

    return-void
.end method

.method private a(JI)V
    .registers 15

    int-to-long v0, p3

    .line 627
    div-long v0, p1, v0

    .line 628
    iget-object v2, p0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 50114
    iget v2, v2, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 630
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    :goto_f
    if-ge v6, p3, :cond_38

    add-int/lit8 v7, p3, -0x1

    if-ne v6, v7, :cond_18

    const-wide/16 v7, -0x1

    goto :goto_1d

    :cond_18
    add-long v7, v4, v0

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    .line 643
    :goto_1d
    new-instance v9, Lcom/liulishuo/filedownloader/model/a;

    invoke-direct {v9}, Lcom/liulishuo/filedownloader/model/a;-><init>()V

    .line 50115
    iput v2, v9, Lcom/liulishuo/filedownloader/model/a;->a:I

    .line 50117
    iput v6, v9, Lcom/liulishuo/filedownloader/model/a;->b:I

    .line 50119
    iput-wide v4, v9, Lcom/liulishuo/filedownloader/model/a;->c:J

    .line 50121
    iput-wide v4, v9, Lcom/liulishuo/filedownloader/model/a;->d:J

    .line 50123
    iput-wide v7, v9, Lcom/liulishuo/filedownloader/model/a;->e:J

    .line 649
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    iget-object v7, p0, Lcom/liulishuo/filedownloader/c/d;->c:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v7, v9}, Lcom/liulishuo/filedownloader/b/a;->a(Lcom/liulishuo/filedownloader/model/a;)V

    add-long/2addr v4, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 655
    :cond_38
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 50125
    iput p3, v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j:I

    .line 656
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/d;->c:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v0, v2, p3}, Lcom/liulishuo/filedownloader/b/a;->a(II)V

    .line 658
    invoke-direct {p0, v3, p1, p2}, Lcom/liulishuo/filedownloader/c/d;->a(Ljava/util/List;J)V

    return-void
.end method

.method private a(Ljava/util/List;J)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/model/a;",
            ">;J)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 664
    iget-object v1, v0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 50127
    iget v1, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 665
    iget-object v2, v0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 50128
    iget-object v2, v2, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->i:Ljava/lang/String;

    .line 666
    iget-object v3, v0, Lcom/liulishuo/filedownloader/c/d;->x:Ljava/lang/String;

    if-eqz v3, :cond_11

    iget-object v3, v0, Lcom/liulishuo/filedownloader/c/d;->x:Ljava/lang/String;

    goto :goto_15

    :cond_11
    iget-object v3, v0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 50129
    iget-object v3, v3, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b:Ljava/lang/String;

    .line 667
    :goto_15
    iget-object v4, v0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()Ljava/lang/String;

    move-result-object v4

    .line 669
    sget-boolean v5, Lcom/liulishuo/filedownloader/h/d;->a:Z

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_40

    const-string v5, "fetch data with multiple connection(count: [%d]) for task[%d] totalLength[%d]"

    .line 670
    new-array v10, v6, [Ljava/lang/Object;

    .line 672
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v7

    .line 670
    invoke-static {v0, v5, v10}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 679
    :cond_40
    iget-boolean v5, v0, Lcom/liulishuo/filedownloader/c/d;->q:Z

    .line 680
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const-wide/16 v11, 0x0

    move-wide v13, v11

    :goto_49
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_fe

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/liulishuo/filedownloader/model/a;

    .line 50130
    iget-wide v8, v15, Lcom/liulishuo/filedownloader/model/a;->e:J

    const-wide/16 v16, -0x1

    cmp-long v8, v8, v16

    if-nez v8, :cond_64

    .line 50131
    iget-wide v8, v15, Lcom/liulishuo/filedownloader/model/a;->d:J

    sub-long v8, p2, v8

    :goto_61
    move-wide/from16 v24, v8

    goto :goto_6d

    .line 50132
    :cond_64
    iget-wide v8, v15, Lcom/liulishuo/filedownloader/model/a;->e:J

    .line 50133
    iget-wide v6, v15, Lcom/liulishuo/filedownloader/model/a;->d:J

    sub-long/2addr v8, v6

    const-wide/16 v6, 0x1

    add-long/2addr v8, v6

    goto :goto_61

    .line 50134
    :goto_6d
    iget-wide v6, v15, Lcom/liulishuo/filedownloader/model/a;->d:J

    .line 50135
    iget-wide v8, v15, Lcom/liulishuo/filedownloader/model/a;->c:J

    sub-long/2addr v6, v8

    add-long/2addr v13, v6

    cmp-long v6, v24, v11

    if-nez v6, :cond_98

    .line 695
    sget-boolean v6, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v6, :cond_95

    const-string v6, "pass connection[%d-%d], because it has been completed"

    const/4 v7, 0x2

    .line 696
    new-array v8, v7, [Ljava/lang/Object;

    .line 50136
    iget v7, v15, Lcom/liulishuo/filedownloader/model/a;->a:I

    .line 697
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v8, v9

    .line 50137
    iget v7, v15, Lcom/liulishuo/filedownloader/model/a;->b:I

    .line 697
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v8, v9

    .line 696
    invoke-static {v0, v6, v8}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_95
    move-object/from16 v26, v10

    goto :goto_f4

    .line 702
    :cond_98
    new-instance v6, Lcom/liulishuo/filedownloader/c/e$a;

    invoke-direct {v6}, Lcom/liulishuo/filedownloader/c/e$a;-><init>()V

    .line 50138
    iget-wide v7, v15, Lcom/liulishuo/filedownloader/model/a;->c:J

    .line 50139
    iget-wide v11, v15, Lcom/liulishuo/filedownloader/model/a;->d:J

    move-object/from16 v26, v10

    .line 50140
    iget-wide v9, v15, Lcom/liulishuo/filedownloader/model/a;->e:J

    move-wide/from16 v18, v7

    move-wide/from16 v20, v11

    move-wide/from16 v22, v9

    .line 705
    invoke-static/range {v18 .. v25}, Lcom/liulishuo/filedownloader/c/b$a;->a(JJJJ)Lcom/liulishuo/filedownloader/c/b;

    move-result-object v7

    .line 710
    invoke-virtual {v6, v1}, Lcom/liulishuo/filedownloader/c/e$a;->a(I)Lcom/liulishuo/filedownloader/c/e$a;

    move-result-object v6

    .line 50141
    iget v8, v15, Lcom/liulishuo/filedownloader/model/a;->b:I

    .line 711
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 50142
    iput-object v8, v6, Lcom/liulishuo/filedownloader/c/e$a;->c:Ljava/lang/Integer;

    .line 50144
    iput-object v0, v6, Lcom/liulishuo/filedownloader/c/e$a;->a:Lcom/liulishuo/filedownloader/c/h;

    .line 713
    invoke-virtual {v6, v3}, Lcom/liulishuo/filedownloader/c/e$a;->a(Ljava/lang/String;)Lcom/liulishuo/filedownloader/c/e$a;

    move-result-object v6

    if-eqz v5, :cond_c5

    move-object v8, v2

    goto :goto_c6

    :cond_c5
    const/4 v8, 0x0

    .line 714
    :goto_c6
    invoke-virtual {v6, v8}, Lcom/liulishuo/filedownloader/c/e$a;->b(Ljava/lang/String;)Lcom/liulishuo/filedownloader/c/e$a;

    move-result-object v6

    iget-object v8, v0, Lcom/liulishuo/filedownloader/c/d;->f:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    .line 715
    invoke-virtual {v6, v8}, Lcom/liulishuo/filedownloader/c/e$a;->a(Lcom/liulishuo/filedownloader/model/FileDownloadHeader;)Lcom/liulishuo/filedownloader/c/e$a;

    move-result-object v6

    iget-boolean v8, v0, Lcom/liulishuo/filedownloader/c/d;->h:Z

    .line 716
    invoke-virtual {v6, v8}, Lcom/liulishuo/filedownloader/c/e$a;->a(Z)Lcom/liulishuo/filedownloader/c/e$a;

    move-result-object v6

    .line 717
    invoke-virtual {v6, v7}, Lcom/liulishuo/filedownloader/c/e$a;->a(Lcom/liulishuo/filedownloader/c/b;)Lcom/liulishuo/filedownloader/c/e$a;

    move-result-object v6

    .line 50146
    iput-object v4, v6, Lcom/liulishuo/filedownloader/c/e$a;->b:Ljava/lang/String;

    .line 719
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/c/e$a;->a()Lcom/liulishuo/filedownloader/c/e;

    move-result-object v6

    .line 721
    sget-boolean v7, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v7, :cond_ef

    const-string v7, "enable multiple connection: %s"

    const/4 v8, 0x1

    .line 722
    new-array v9, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v15, v9, v8

    invoke-static {v0, v7, v9}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 729
    :cond_ef
    iget-object v7, v0, Lcom/liulishuo/filedownloader/c/d;->m:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_f4
    move-object/from16 v10, v26

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v11, 0x0

    goto/16 :goto_49

    .line 732
    :cond_fe
    iget-object v2, v0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 50148
    iget-object v2, v2, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v2, v13, v2

    if-eqz v2, :cond_12d

    const-string v2, "correct the sofar[%d] from connection table[%d]"

    const/4 v3, 0x2

    .line 733
    new-array v4, v3, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 50149
    iget-object v3, v3, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    .line 734
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v4, v5

    .line 733
    invoke-static {v0, v2, v4}, Lcom/liulishuo/filedownloader/h/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 735
    iget-object v2, v0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2, v13, v14}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(J)V

    .line 738
    :cond_12d
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/liulishuo/filedownloader/c/d;->m:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 739
    iget-object v3, v0, Lcom/liulishuo/filedownloader/c/d;->m:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liulishuo/filedownloader/c/e;

    .line 740
    iget-boolean v5, v0, Lcom/liulishuo/filedownloader/c/d;->u:Z

    if-eqz v5, :cond_152

    .line 741
    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/c/e;->a()V

    goto :goto_13e

    .line 744
    :cond_152
    invoke-static {v4}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;)Ljava/util/concurrent/Callable;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13e

    .line 746
    :cond_15a
    iget-boolean v3, v0, Lcom/liulishuo/filedownloader/c/d;->u:Z

    if-eqz v3, :cond_165

    .line 747
    iget-object v0, v0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(B)V

    return-void

    .line 751
    :cond_165
    sget-object v3, Lcom/liulishuo/filedownloader/c/d;->p:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 752
    sget-boolean v3, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v3, :cond_1a5

    .line 753
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_173
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    const-string v4, "finish sub-task for [%d] %B %B"

    const/4 v5, 0x3

    .line 754
    new-array v6, v5, [Ljava/lang/Object;

    .line 755
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-interface {v3}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v6, v9

    invoke-interface {v3}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v7, 0x2

    aput-object v3, v6, v7

    .line 754
    invoke-static {v0, v4, v6}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_173

    :cond_1a5
    return-void
.end method

.method private d()V
    .registers 8

    .line 916
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 50195
    iget v0, v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 918
    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 50196
    iget-boolean v1, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->d:Z

    if-eqz v1, :cond_dd

    .line 922
    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()Ljava/lang/String;

    move-result-object v5

    .line 925
    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 50197
    iget-object v1, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b:Ljava/lang/String;

    .line 925
    invoke-static {v1, v5}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 929
    iget-boolean v2, p0, Lcom/liulishuo/filedownloader/c/d;->g:Z

    const/4 v3, 0x0

    invoke-static {v0, v5, v2, v3}, Lcom/liulishuo/filedownloader/h/c;->a(ILjava/lang/String;ZZ)Z

    move-result v2

    if-nez v2, :cond_cd

    .line 936
    iget-object v2, p0, Lcom/liulishuo/filedownloader/c/d;->c:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v2, v1}, Lcom/liulishuo/filedownloader/b/a;->b(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v2

    if-eqz v2, :cond_a5

    .line 942
    iget-object v4, p0, Lcom/liulishuo/filedownloader/c/d;->i:Lcom/liulishuo/filedownloader/z;

    invoke-static {v0, v2, v4, v3}, Lcom/liulishuo/filedownloader/h/c;->a(ILcom/liulishuo/filedownloader/model/FileDownloadModel;Lcom/liulishuo/filedownloader/z;Z)Z

    move-result v3

    if-nez v3, :cond_95

    .line 951
    iget-object v3, p0, Lcom/liulishuo/filedownloader/c/d;->c:Lcom/liulishuo/filedownloader/b/a;

    .line 952
    invoke-interface {v3, v1}, Lcom/liulishuo/filedownloader/b/a;->c(I)Ljava/util/List;

    move-result-object v3

    .line 955
    iget-object v4, p0, Lcom/liulishuo/filedownloader/c/d;->c:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v4, v1}, Lcom/liulishuo/filedownloader/b/a;->e(I)Z

    .line 956
    iget-object v4, p0, Lcom/liulishuo/filedownloader/c/d;->c:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v4, v1}, Lcom/liulishuo/filedownloader/b/a;->d(I)V

    .line 957
    iget-object v4, p0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/liulishuo/filedownloader/h/f;->j(Ljava/lang/String;)V

    .line 959
    invoke-static {v1, v2}, Lcom/liulishuo/filedownloader/h/f;->a(ILcom/liulishuo/filedownloader/model/FileDownloadModel;)Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 960
    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 50198
    iget-object v4, v2, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 960
    invoke-virtual {v1, v4, v5}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(J)V

    .line 961
    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 50199
    iget-wide v4, v2, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g:J

    .line 961
    invoke-virtual {v1, v4, v5}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b(J)V

    .line 962
    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 50200
    iget-object v4, v2, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->i:Ljava/lang/String;

    .line 50201
    iput-object v4, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->i:Ljava/lang/String;

    .line 963
    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 50203
    iget v2, v2, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j:I

    .line 50204
    iput v2, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j:I

    .line 964
    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/d;->c:Lcom/liulishuo/filedownloader/b/a;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-interface {v1, v2}, Lcom/liulishuo/filedownloader/b/a;->a(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    if-eqz v3, :cond_8f

    .line 968
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liulishuo/filedownloader/model/a;

    .line 50206
    iput v0, v2, Lcom/liulishuo/filedownloader/model/a;->a:I

    .line 970
    iget-object v3, p0, Lcom/liulishuo/filedownloader/c/d;->c:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v3, v2}, Lcom/liulishuo/filedownloader/b/a;->a(Lcom/liulishuo/filedownloader/model/a;)V

    goto :goto_7b

    .line 975
    :cond_8f
    new-instance v0, Lcom/liulishuo/filedownloader/c/d$c;

    invoke-direct {v0, p0}, Lcom/liulishuo/filedownloader/c/d$c;-><init>(Lcom/liulishuo/filedownloader/c/d;)V

    throw v0

    .line 946
    :cond_95
    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/d;->c:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v1, v0}, Lcom/liulishuo/filedownloader/b/a;->e(I)Z

    .line 947
    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/d;->c:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v1, v0}, Lcom/liulishuo/filedownloader/b/a;->d(I)V

    .line 948
    new-instance v0, Lcom/liulishuo/filedownloader/c/d$b;

    invoke-direct {v0, p0}, Lcom/liulishuo/filedownloader/c/d$b;-><init>(Lcom/liulishuo/filedownloader/c/d;)V

    throw v0

    .line 980
    :cond_a5
    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 50208
    iget-object v1, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 980
    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 981
    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/liulishuo/filedownloader/c/d;->i:Lcom/liulishuo/filedownloader/z;

    move v1, v0

    .line 980
    invoke-static/range {v1 .. v6}, Lcom/liulishuo/filedownloader/h/c;->a(IJLjava/lang/String;Ljava/lang/String;Lcom/liulishuo/filedownloader/z;)Z

    move-result v1

    if-nez v1, :cond_bd

    goto :goto_dd

    .line 984
    :cond_bd
    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/d;->c:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v1, v0}, Lcom/liulishuo/filedownloader/b/a;->e(I)Z

    .line 985
    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/d;->c:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v1, v0}, Lcom/liulishuo/filedownloader/b/a;->d(I)V

    .line 987
    new-instance v0, Lcom/liulishuo/filedownloader/c/d$b;

    invoke-direct {v0, p0}, Lcom/liulishuo/filedownloader/c/d$b;-><init>(Lcom/liulishuo/filedownloader/c/d;)V

    throw v0

    .line 931
    :cond_cd
    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/d;->c:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v1, v0}, Lcom/liulishuo/filedownloader/b/a;->e(I)Z

    .line 932
    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/d;->c:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v1, v0}, Lcom/liulishuo/filedownloader/b/a;->d(I)V

    .line 933
    new-instance v0, Lcom/liulishuo/filedownloader/c/d$b;

    invoke-direct {v0, p0}, Lcom/liulishuo/filedownloader/c/d$b;-><init>(Lcom/liulishuo/filedownloader/c/d;)V

    throw v0

    :cond_dd
    :goto_dd
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/c/d;->u:Z

    .line 181
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/d;->n:Lcom/liulishuo/filedownloader/c/e;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/d;->n:Lcom/liulishuo/filedownloader/c/e;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/c/e;->a()V

    .line 182
    :cond_c
    iget-object p0, p0, Lcom/liulishuo/filedownloader/c/d;->m:Ljava/util/ArrayList;

    .line 183
    invoke-virtual {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    .line 184
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_18
    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/c/e;

    if-eqz v0, :cond_18

    .line 186
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/c/e;->a()V

    goto :goto_18

    :cond_2a
    return-void
.end method

.method public final a(J)V
    .registers 12

    .line 795
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/c/d;->u:Z

    if-eqz v0, :cond_5

    return-void

    .line 797
    :cond_5
    iget-object p0, p0, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    .line 50150
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/f;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 50151
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 50165
    iget-object v0, v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 50153
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 50167
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/f;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_23

    :goto_21
    move v0, v2

    goto :goto_44

    .line 50170
    :cond_23
    iget-wide v3, p0, Lcom/liulishuo/filedownloader/c/f;->i:J

    sub-long v3, p1, v3

    .line 50171
    iget-wide v5, p0, Lcom/liulishuo/filedownloader/c/f;->f:J

    const-wide/16 v7, -0x1

    cmp-long v0, v5, v7

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/f;->j:Ljava/util/concurrent/atomic/AtomicLong;

    .line 50172
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/liulishuo/filedownloader/c/f;->f:J

    cmp-long v0, v5, v7

    if-ltz v0, :cond_43

    iget v0, p0, Lcom/liulishuo/filedownloader/c/f;->d:I

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_43

    goto :goto_21

    :cond_43
    move v0, v1

    :goto_44
    if-eqz v0, :cond_62

    .line 50175
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/f;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 50176
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v0, :cond_59

    const-string v0, "inspectNeedCallbackToUser need callback to user"

    .line 50177
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/h/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50179
    :cond_59
    iput-wide p1, p0, Lcom/liulishuo/filedownloader/c/f;->i:J

    .line 50180
    iget-object p1, p0, Lcom/liulishuo/filedownloader/c/f;->j:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 50157
    :cond_62
    iget-object p1, p0, Lcom/liulishuo/filedownloader/c/f;->g:Landroid/os/Handler;

    if-nez p1, :cond_6a

    .line 50159
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/c/f;->c()V

    return-void

    .line 50160
    :cond_6a
    iget-object p1, p0, Lcom/liulishuo/filedownloader/c/f;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 50162
    iget-object p1, p0, Lcom/liulishuo/filedownloader/c/f;->g:Landroid/os/Handler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/c/f;->a(Landroid/os/Message;)V

    :cond_7c
    return-void
.end method

.method public final a(Lcom/liulishuo/filedownloader/c/e;JJ)V
    .registers 16

    .line 802
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/c/d;->u:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1c

    .line 803
    sget-boolean p1, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz p1, :cond_1b

    const-string p1, "the task[%d] has already been paused, so pass the completed callback"

    .line 804
    new-array p2, v2, [Ljava/lang/Object;

    iget-object p3, p0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 50183
    iget p3, p3, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 805
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v1

    .line 804
    invoke-static {p0, p1, p2}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    return-void

    .line 810
    :cond_1c
    iget v0, p1, Lcom/liulishuo/filedownloader/c/e;->a:I

    .line 811
    sget-boolean v3, Lcom/liulishuo/filedownloader/h/d;->a:Z

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eqz v3, :cond_48

    const-string v3, "the connection has been completed(%d): [%d, %d)  %d"

    .line 812
    new-array v7, v6, [Ljava/lang/Object;

    .line 813
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v5

    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 50184
    iget-wide v8, v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g:J

    .line 813
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v4

    .line 812
    invoke-static {p0, v3, v7}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 816
    :cond_48
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/c/d;->o:Z

    if-eqz v0, :cond_83

    const-wide/16 v7, 0x0

    cmp-long p1, p2, v7

    if-eqz p1, :cond_82

    .line 817
    iget-object p1, p0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 50185
    iget-wide v7, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g:J

    cmp-long p1, p4, v7

    if-eqz p1, :cond_82

    const-string p1, "the single task not completed corrected(%d, %d != %d) for task(%d)"

    .line 818
    new-array v0, v6, [Ljava/lang/Object;

    .line 819
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v2

    iget-object p2, p0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 50186
    iget-wide p2, p2, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g:J

    .line 819
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v5

    iget-object p2, p0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 50187
    iget p2, p2, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 819
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v4

    .line 818
    invoke-static {p0, p1, v0}, Lcom/liulishuo/filedownloader/h/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_82
    return-void

    .line 822
    :cond_83
    iget-object p2, p0, Lcom/liulishuo/filedownloader/c/d;->m:Ljava/util/ArrayList;

    monitor-enter p2

    .line 823
    :try_start_86
    iget-object p0, p0, Lcom/liulishuo/filedownloader/c/d;->m:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 824
    monitor-exit p2

    return-void

    :catchall_8d
    move-exception p0

    monitor-exit p2
    :try_end_8f
    .catchall {:try_start_86 .. :try_end_8f} :catchall_8d

    throw p0
.end method

.method public final a(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/model/a;",
            ">;)V"
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 49199
    iget v0, v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j:I

    .line 406
    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()Ljava/lang/String;

    move-result-object v1

    .line 407
    iget-object v2, p0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v0, v4, :cond_16

    move v5, v4

    goto :goto_17

    :cond_16
    move v5, v3

    .line 409
    :goto_17
    iget-boolean v6, p0, Lcom/liulishuo/filedownloader/c/d;->k:Z

    const-wide/16 v7, 0x0

    if-nez v6, :cond_53

    if-eqz v5, :cond_23

    .line 411
    iget-boolean v6, p0, Lcom/liulishuo/filedownloader/c/d;->l:Z

    if-eqz v6, :cond_53

    .line 415
    :cond_23
    iget-object v6, p0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 50111
    iget v6, v6, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 416
    iget-object v9, p0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-static {v6, v9}, Lcom/liulishuo/filedownloader/h/f;->a(ILcom/liulishuo/filedownloader/model/FileDownloadModel;)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 418
    iget-boolean v6, p0, Lcom/liulishuo/filedownloader/c/d;->l:Z

    if-nez v6, :cond_3d

    .line 419
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    goto :goto_54

    :cond_3d
    if-eqz v5, :cond_4a

    .line 424
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v0, v5, :cond_53

    .line 428
    invoke-static {p1}, Lcom/liulishuo/filedownloader/model/a;->a(Ljava/util/List;)J

    move-result-wide v5

    goto :goto_54

    .line 431
    :cond_4a
    iget-object p1, p0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 50112
    iget-object p1, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    goto :goto_54

    :cond_53
    move-wide v5, v7

    .line 439
    :goto_54
    iget-object p1, p0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {p1, v5, v6}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(J)V

    cmp-long p1, v5, v7

    if-lez p1, :cond_5e

    move v3, v4

    .line 440
    :cond_5e
    iput-boolean v3, p0, Lcom/liulishuo/filedownloader/c/d;->q:Z

    .line 441
    iget-boolean p1, p0, Lcom/liulishuo/filedownloader/c/d;->q:Z

    if-nez p1, :cond_70

    .line 442
    iget-object p1, p0, Lcom/liulishuo/filedownloader/c/d;->c:Lcom/liulishuo/filedownloader/b/a;

    iget-object p0, p0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 50113
    iget p0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 442
    invoke-interface {p1, p0}, Lcom/liulishuo/filedownloader/b/a;->d(I)V

    .line 443
    invoke-static {v2, v1}, Lcom/liulishuo/filedownloader/h/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_70
    return-void
.end method

.method public final a(Ljava/lang/Exception;)Z
    .registers 5

    .line 830
    instance-of v0, p1, Lcom/liulishuo/filedownloader/e/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_2a

    .line 831
    move-object v0, p1

    check-cast v0, Lcom/liulishuo/filedownloader/e/b;

    .line 833
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/e/b;->getCode()I

    move-result v0

    .line 835
    iget-boolean v2, p0, Lcom/liulishuo/filedownloader/c/d;->o:Z

    if-eqz v2, :cond_2a

    const/16 v2, 0x1a0

    if-ne v0, v2, :cond_2a

    .line 836
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/c/d;->j:Z

    if-nez v0, :cond_2a

    .line 837
    iget-object p1, p0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 838
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/liulishuo/filedownloader/h/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/c/d;->j:Z

    return v1

    .line 845
    :cond_2a
    iget p0, p0, Lcom/liulishuo/filedownloader/c/d;->d:I

    if-lez p0, :cond_33

    instance-of p0, p1, Lcom/liulishuo/filedownloader/e/a;

    if-nez p0, :cond_33

    return v1

    :cond_33
    const/4 p0, 0x0

    return p0
.end method

.method public final b()V
    .registers 5

    .line 892
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/d;->c:Lcom/liulishuo/filedownloader/b/a;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 50193
    iget v1, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 892
    iget-object p0, p0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 50194
    iget-object p0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 892
    invoke-interface {v0, v1, v2, v3}, Lcom/liulishuo/filedownloader/b/a;->a(IJ)V

    return-void
.end method

.method public final b(Ljava/lang/Exception;)V
    .registers 5

    const/4 v0, 0x1

    .line 850
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/c/d;->v:Z

    .line 851
    iput-object p1, p0, Lcom/liulishuo/filedownloader/c/d;->w:Ljava/lang/Exception;

    .line 853
    iget-boolean p1, p0, Lcom/liulishuo/filedownloader/c/d;->u:Z

    if-eqz p1, :cond_20

    .line 854
    sget-boolean p1, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz p1, :cond_1f

    const-string p1, "the task[%d] has already been paused, so pass the error callback"

    .line 855
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 50188
    iget v2, v2, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 856
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 855
    invoke-static {p0, p1, v0}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1f
    return-void

    .line 862
    :cond_20
    iget-object p0, p0, Lcom/liulishuo/filedownloader/c/d;->m:Ljava/util/ArrayList;

    .line 863
    invoke-virtual {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    .line 864
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2c
    :goto_2c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/liulishuo/filedownloader/c/e;

    if-eqz p1, :cond_2c

    .line 50189
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/c/e;->a()V

    goto :goto_2c

    :cond_3e
    return-void
.end method

.method public final c(Ljava/lang/Exception;)V
    .registers 7

    .line 874
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/c/d;->u:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1c

    .line 875
    sget-boolean p1, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz p1, :cond_1b

    const-string p1, "the task[%d] has already been paused, so pass the retry callback"

    .line 876
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 50191
    iget v2, v2, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 877
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 876
    invoke-static {p0, p1, v0}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    return-void

    .line 882
    :cond_1c
    iget v0, p0, Lcom/liulishuo/filedownloader/c/d;->d:I

    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcom/liulishuo/filedownloader/c/d;->d:I

    if-gez v0, :cond_3e

    const-string v0, "valid retry times is less than 0(%d) for download task(%d)"

    const/4 v3, 0x2

    .line 883
    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/liulishuo/filedownloader/c/d;->d:I

    .line 884
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v1, p0, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 50192
    iget v1, v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 884
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    .line 883
    invoke-static {p0, v0, v3}, Lcom/liulishuo/filedownloader/h/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 887
    :cond_3e
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    iget p0, p0, Lcom/liulishuo/filedownloader/c/d;->d:I

    invoke-virtual {v0, p1, p0}, Lcom/liulishuo/filedownloader/c/f;->a(Ljava/lang/Exception;I)V

    return-void
.end method

.method public final c()Z
    .registers 4

    .line 997
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/d;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1f

    iget-object p0, p0, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    .line 50209
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c/f;->h:Landroid/os/HandlerThread;

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/liulishuo/filedownloader/c/f;->h:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_1a

    move p0, v1

    goto :goto_1b

    :cond_1a
    move p0, v2

    :goto_1b
    if-eqz p0, :cond_1e

    goto :goto_1f

    :cond_1e
    return v2

    :cond_1f
    :goto_1f
    return v1
.end method

.method public final run()V
    .registers 35

    move-object/from16 v1, p0

    const/16 v2, 0xa

    const/4 v3, 0x0

    .line 203
    :try_start_5
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 206
    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c()B

    move-result v2

    const/4 v4, 0x3

    const/4 v5, -0x2

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v2, v7, :cond_8c

    .line 207
    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c()B

    move-result v2

    if-ne v2, v5, :cond_32

    .line 208
    sget-boolean v2, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v2, :cond_5e

    const-string v2, "High concurrent cause, start runnable but already paused %d"

    .line 216
    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 3111
    iget v5, v5, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 217
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    .line 216
    invoke-static {v1, v2, v4}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5e

    .line 221
    :cond_32
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v5, "Task[%d] can\'t start the download runnable, because its status is %d not %d"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 4111
    iget v8, v8, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 224
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v3

    iget-object v8, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v8}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c()B

    move-result v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v4, v6

    .line 222
    invoke-static {v5, v4}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v1, v2}, Lcom/liulishuo/filedownloader/c/d;->b(Ljava/lang/Exception;)V
    :try_end_5e
    .catchall {:try_start_5 .. :try_end_5e} :catchall_642

    .line 328
    :cond_5e
    :goto_5e
    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/c/f;->a()V

    .line 330
    iget-boolean v2, v1, Lcom/liulishuo/filedownloader/c/d;->u:Z

    if-eqz v2, :cond_6d

    .line 331
    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    .line 4185
    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/c/f;->d()V

    goto :goto_86

    .line 332
    :cond_6d
    iget-boolean v2, v1, Lcom/liulishuo/filedownloader/c/d;->v:Z

    if-eqz v2, :cond_79

    .line 333
    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    iget-object v4, v1, Lcom/liulishuo/filedownloader/c/d;->w:Ljava/lang/Exception;

    .line 4189
    invoke-virtual {v2, v4}, Lcom/liulishuo/filedownloader/c/f;->a(Ljava/lang/Exception;)V

    goto :goto_86

    .line 336
    :cond_79
    :try_start_79
    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/c/f;->b()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7e} :catch_7f

    goto :goto_86

    :catch_7f
    move-exception v0

    move-object v2, v0

    .line 338
    iget-object v4, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    .line 5189
    invoke-virtual {v4, v2}, Lcom/liulishuo/filedownloader/c/f;->a(Ljava/lang/Exception;)V

    .line 342
    :goto_86
    iget-object v1, v1, Lcom/liulishuo/filedownloader/c/d;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 229
    :cond_8c
    :try_start_8c
    iget-boolean v2, v1, Lcom/liulishuo/filedownloader/c/d;->u:Z

    if-nez v2, :cond_a4

    .line 230
    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    .line 6112
    iget-object v8, v2, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(B)V

    .line 6113
    invoke-virtual {v2, v9}, Lcom/liulishuo/filedownloader/c/f;->a(B)V

    .line 6114
    iget-object v8, v2, Lcom/liulishuo/filedownloader/c/f;->b:Lcom/liulishuo/filedownloader/b/a;

    iget-object v2, v2, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 7111
    iget v2, v2, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 6114
    invoke-interface {v8, v2}, Lcom/liulishuo/filedownloader/b/a;->a(I)V

    .line 234
    :cond_a4
    :goto_a4
    iget-boolean v2, v1, Lcom/liulishuo/filedownloader/c/d;->u:Z

    if-eqz v2, :cond_eb

    .line 235
    sget-boolean v2, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v2, :cond_bd

    const-string v2, "High concurrent cause, start runnable but already paused %d"

    .line 243
    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 8111
    iget v5, v5, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 244
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    .line 243
    invoke-static {v1, v2, v4}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_bd
    .catchall {:try_start_8c .. :try_end_bd} :catchall_642

    .line 328
    :cond_bd
    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/c/f;->a()V

    .line 330
    iget-boolean v2, v1, Lcom/liulishuo/filedownloader/c/d;->u:Z

    if-eqz v2, :cond_cc

    .line 331
    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    .line 8185
    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/c/f;->d()V

    goto :goto_e5

    .line 332
    :cond_cc
    iget-boolean v2, v1, Lcom/liulishuo/filedownloader/c/d;->v:Z

    if-eqz v2, :cond_d8

    .line 333
    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    iget-object v4, v1, Lcom/liulishuo/filedownloader/c/d;->w:Ljava/lang/Exception;

    .line 8189
    invoke-virtual {v2, v4}, Lcom/liulishuo/filedownloader/c/f;->a(Ljava/lang/Exception;)V

    goto :goto_e5

    .line 336
    :cond_d8
    :try_start_d8
    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/c/f;->b()V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_dd} :catch_de

    goto :goto_e5

    :catch_de
    move-exception v0

    move-object v2, v0

    .line 338
    iget-object v4, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    .line 9189
    invoke-virtual {v4, v2}, Lcom/liulishuo/filedownloader/c/f;->a(Ljava/lang/Exception;)V

    .line 342
    :goto_e5
    iget-object v1, v1, Lcom/liulishuo/filedownloader/c/d;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 9899
    :cond_eb
    :try_start_eb
    iget-boolean v2, v1, Lcom/liulishuo/filedownloader/c/d;->h:Z
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_ed} :catch_602
    .catch Ljava/lang/IllegalAccessException; {:try_start_eb .. :try_end_ed} :catch_602
    .catch Ljava/lang/InterruptedException; {:try_start_eb .. :try_end_ed} :catch_602
    .catch Ljava/lang/IllegalArgumentException; {:try_start_eb .. :try_end_ed} :catch_602
    .catch Lcom/liulishuo/filedownloader/e/e; {:try_start_eb .. :try_end_ed} :catch_602
    .catch Lcom/liulishuo/filedownloader/e/a; {:try_start_eb .. :try_end_ed} :catch_602
    .catch Lcom/liulishuo/filedownloader/c/d$b; {:try_start_eb .. :try_end_ed} :catch_5d3
    .catch Lcom/liulishuo/filedownloader/c/d$c; {:try_start_eb .. :try_end_ed} :catch_5c5
    .catchall {:try_start_eb .. :try_end_ed} :catchall_642

    if-eqz v2, :cond_11a

    :try_start_ef
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    .line 9900
    invoke-static {v2}, Lcom/liulishuo/filedownloader/h/f;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f8

    goto :goto_11a

    .line 9901
    :cond_f8
    new-instance v2, Lcom/liulishuo/filedownloader/e/a;

    const-string v8, "Task[%d] can\'t start the download runnable, because this task require wifi, but user application nor current process has %s, so we can\'t check whether the network type connection."

    new-array v9, v6, [Ljava/lang/Object;

    iget-object v10, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 10111
    iget v10, v10, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 9905
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    const-string v10, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v10, v9, v7

    .line 9902
    invoke-static {v8, v9}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/liulishuo/filedownloader/e/a;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_114} :catch_114
    .catch Ljava/lang/IllegalAccessException; {:try_start_ef .. :try_end_114} :catch_114
    .catch Ljava/lang/InterruptedException; {:try_start_ef .. :try_end_114} :catch_114
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ef .. :try_end_114} :catch_114
    .catch Lcom/liulishuo/filedownloader/e/e; {:try_start_ef .. :try_end_114} :catch_114
    .catch Lcom/liulishuo/filedownloader/e/a; {:try_start_ef .. :try_end_114} :catch_114
    .catch Lcom/liulishuo/filedownloader/c/d$b; {:try_start_ef .. :try_end_114} :catch_5d3
    .catch Lcom/liulishuo/filedownloader/c/d$c; {:try_start_ef .. :try_end_114} :catch_5c5
    .catchall {:try_start_ef .. :try_end_114} :catchall_642

    :catch_114
    move-exception v0

    move-object v3, v0

    move v4, v5

    move v2, v6

    goto/16 :goto_606

    .line 9910
    :cond_11a
    :goto_11a
    :try_start_11a
    iget-boolean v2, v1, Lcom/liulishuo/filedownloader/c/d;->h:Z
    :try_end_11c
    .catch Ljava/io/IOException; {:try_start_11a .. :try_end_11c} :catch_602
    .catch Ljava/lang/IllegalAccessException; {:try_start_11a .. :try_end_11c} :catch_602
    .catch Ljava/lang/InterruptedException; {:try_start_11a .. :try_end_11c} :catch_602
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11a .. :try_end_11c} :catch_602
    .catch Lcom/liulishuo/filedownloader/e/e; {:try_start_11a .. :try_end_11c} :catch_602
    .catch Lcom/liulishuo/filedownloader/e/a; {:try_start_11a .. :try_end_11c} :catch_602
    .catch Lcom/liulishuo/filedownloader/c/d$b; {:try_start_11a .. :try_end_11c} :catch_5d3
    .catch Lcom/liulishuo/filedownloader/c/d$c; {:try_start_11a .. :try_end_11c} :catch_5c5
    .catchall {:try_start_11a .. :try_end_11c} :catchall_642

    if-eqz v2, :cond_12b

    :try_start_11e
    invoke-static {}, Lcom/liulishuo/filedownloader/h/f;->b()Z

    move-result v2

    if-nez v2, :cond_125

    goto :goto_12b

    .line 9911
    :cond_125
    new-instance v2, Lcom/liulishuo/filedownloader/e/c;

    invoke-direct {v2}, Lcom/liulishuo/filedownloader/e/c;-><init>()V

    throw v2
    :try_end_12b
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_12b} :catch_114
    .catch Ljava/lang/IllegalAccessException; {:try_start_11e .. :try_end_12b} :catch_114
    .catch Ljava/lang/InterruptedException; {:try_start_11e .. :try_end_12b} :catch_114
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11e .. :try_end_12b} :catch_114
    .catch Lcom/liulishuo/filedownloader/e/e; {:try_start_11e .. :try_end_12b} :catch_114
    .catch Lcom/liulishuo/filedownloader/e/a; {:try_start_11e .. :try_end_12b} :catch_114
    .catch Lcom/liulishuo/filedownloader/c/d$b; {:try_start_11e .. :try_end_12b} :catch_5d3
    .catch Lcom/liulishuo/filedownloader/c/d$c; {:try_start_11e .. :try_end_12b} :catch_5c5
    .catchall {:try_start_11e .. :try_end_12b} :catchall_642

    .line 10366
    :cond_12b
    :goto_12b
    :try_start_12b
    iget-boolean v8, v1, Lcom/liulishuo/filedownloader/c/d;->k:Z
    :try_end_12d
    .catchall {:try_start_12b .. :try_end_12d} :catchall_5b7

    if-eqz v8, :cond_13b

    .line 11103
    :try_start_12f
    new-instance v8, Lcom/liulishuo/filedownloader/c/b;

    invoke-direct {v8, v3}, Lcom/liulishuo/filedownloader/c/b;-><init>(C)V
    :try_end_134
    .catchall {:try_start_12f .. :try_end_134} :catchall_135

    goto :goto_140

    :catchall_135
    move-exception v0

    move-object v3, v0

    move v4, v5

    move v2, v6

    goto/16 :goto_5bb

    .line 12099
    :cond_13b
    :try_start_13b
    new-instance v8, Lcom/liulishuo/filedownloader/c/b;

    invoke-direct {v8, v3}, Lcom/liulishuo/filedownloader/c/b;-><init>(B)V

    .line 10373
    :goto_140
    new-instance v9, Lcom/liulishuo/filedownloader/c/a$a;

    invoke-direct {v9}, Lcom/liulishuo/filedownloader/c/a$a;-><init>()V

    iget-object v10, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 12111
    iget v10, v10, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 10374
    invoke-virtual {v9, v10}, Lcom/liulishuo/filedownloader/c/a$a;->a(I)Lcom/liulishuo/filedownloader/c/a$a;

    move-result-object v9

    iget-object v10, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 12115
    iget-object v10, v10, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b:Ljava/lang/String;

    .line 12199
    iput-object v10, v9, Lcom/liulishuo/filedownloader/c/a$a;->a:Ljava/lang/String;

    .line 10375
    iget-object v10, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 13167
    iget-object v10, v10, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->i:Ljava/lang/String;

    .line 13204
    iput-object v10, v9, Lcom/liulishuo/filedownloader/c/a$a;->b:Ljava/lang/String;

    .line 10376
    iget-object v10, v1, Lcom/liulishuo/filedownloader/c/d;->f:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    .line 13209
    iput-object v10, v9, Lcom/liulishuo/filedownloader/c/a$a;->c:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    .line 13214
    iput-object v8, v9, Lcom/liulishuo/filedownloader/c/a$a;->d:Lcom/liulishuo/filedownloader/c/b;

    .line 10379
    invoke-virtual {v9}, Lcom/liulishuo/filedownloader/c/a$a;->a()Lcom/liulishuo/filedownloader/c/a;

    move-result-object v8

    .line 10380
    invoke-virtual {v8}, Lcom/liulishuo/filedownloader/c/a;->a()Lcom/liulishuo/filedownloader/a/b;

    move-result-object v9
    :try_end_167
    .catchall {:try_start_13b .. :try_end_167} :catchall_5b7

    .line 14165
    :try_start_167
    iget-object v10, v8, Lcom/liulishuo/filedownloader/c/a;->e:Ljava/util/Map;

    .line 14452
    iget-object v11, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 15111
    iget v13, v11, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 14453
    invoke-interface {v9}, Lcom/liulishuo/filedownloader/a/b;->e()I

    move-result v11

    .line 14455
    invoke-static {v11, v9}, Lcom/liulishuo/filedownloader/h/f;->b(ILcom/liulishuo/filedownloader/a/b;)Z

    move-result v12

    iput-boolean v12, v1, Lcom/liulishuo/filedownloader/c/d;->r:Z
    :try_end_177
    .catchall {:try_start_167 .. :try_end_177} :catchall_5b2

    const/16 v12, 0xc8

    const/16 v14, 0xc9

    if-eq v11, v12, :cond_184

    if-eq v11, v14, :cond_184

    if-nez v11, :cond_182

    goto :goto_184

    :cond_182
    move v12, v3

    goto :goto_185

    :cond_184
    :goto_184
    move v12, v7

    .line 14459
    :goto_185
    :try_start_185
    invoke-static {v9}, Lcom/liulishuo/filedownloader/h/f;->a(Lcom/liulishuo/filedownloader/a/b;)J

    move-result-wide v4

    .line 14461
    iget-object v15, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 15167
    iget-object v15, v15, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->i:Ljava/lang/String;

    .line 14462
    invoke-static {v13, v9}, Lcom/liulishuo/filedownloader/h/f;->a(ILcom/liulishuo/filedownloader/a/b;)Ljava/lang/String;

    move-result-object v2
    :try_end_191
    .catchall {:try_start_185 .. :try_end_191} :catchall_5ae

    const/16 v6, 0x19c

    move-wide/from16 v22, v4

    const-wide/16 v3, 0x0

    if-ne v11, v6, :cond_19b

    :cond_199
    :goto_199
    move v5, v7

    goto :goto_1fa

    :cond_19b
    if-eqz v15, :cond_1b0

    .line 14472
    :try_start_19d
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b0

    if-nez v12, :cond_199

    .line 14474
    iget-boolean v5, v1, Lcom/liulishuo/filedownloader/c/d;->r:Z

    if-eqz v5, :cond_1b0

    goto :goto_199

    :catchall_1aa
    move-exception v0

    move-object v3, v0

    const/4 v2, 0x2

    :goto_1ad
    const/4 v4, -0x2

    goto/16 :goto_5bc

    :cond_1b0
    if-ne v11, v14, :cond_1c0

    .line 16153
    iget-object v5, v8, Lcom/liulishuo/filedownloader/c/a;->d:Lcom/liulishuo/filedownloader/c/b;

    iget-wide v5, v5, Lcom/liulishuo/filedownloader/c/b;->b:J

    cmp-long v5, v5, v3

    if-lez v5, :cond_1bc

    move v5, v7

    goto :goto_1bd

    :cond_1bc
    const/4 v5, 0x0

    :goto_1bd
    if-eqz v5, :cond_1c0

    goto :goto_199

    :cond_1c0
    const/16 v5, 0x1a0

    if-ne v11, v5, :cond_1f9

    .line 14492
    iget-boolean v5, v1, Lcom/liulishuo/filedownloader/c/d;->r:Z

    if-eqz v5, :cond_1d5

    cmp-long v5, v22, v3

    if-ltz v5, :cond_1d5

    const-string v5, "get 416 but the Content-Range is returned, no need to retry"

    const/4 v6, 0x0

    .line 14496
    new-array v14, v6, [Ljava/lang/Object;

    invoke-static {v1, v5, v14}, Lcom/liulishuo/filedownloader/h/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1f9

    .line 14500
    :cond_1d5
    iget-object v5, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 16155
    iget-object v5, v5, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-lez v5, :cond_1ea

    const-string v5, "get 416, precondition failed and just retry"

    const/4 v6, 0x0

    .line 14504
    new-array v14, v6, [Ljava/lang/Object;

    invoke-static {v1, v5, v14}, Lcom/liulishuo/filedownloader/h/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_199

    .line 14508
    :cond_1ea
    iget-boolean v5, v1, Lcom/liulishuo/filedownloader/c/d;->k:Z

    if-nez v5, :cond_1f9

    .line 14511
    iput-boolean v7, v1, Lcom/liulishuo/filedownloader/c/d;->k:Z

    const-string v5, "get 416, precondition failed and need to retry with discarding range"

    const/4 v6, 0x0

    .line 14513
    new-array v14, v6, [Ljava/lang/Object;

    invoke-static {v1, v5, v14}, Lcom/liulishuo/filedownloader/h/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_199

    :cond_1f9
    :goto_1f9
    const/4 v5, 0x0

    :goto_1fa
    if-eqz v5, :cond_294

    .line 14524
    iget-boolean v5, v1, Lcom/liulishuo/filedownloader/c/d;->q:Z

    const/4 v6, 0x4

    if-eqz v5, :cond_220

    const-string v5, "there is precondition failed on this request[%d] with old etag[%s]\u3001new etag[%s]\u3001response code is %d"

    .line 14525
    new-array v8, v6, [Ljava/lang/Object;

    .line 14527
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x0

    aput-object v10, v8, v12

    aput-object v15, v8, v7
    :try_end_20e
    .catchall {:try_start_19d .. :try_end_20e} :catchall_1aa

    const/4 v10, 0x2

    :try_start_20f
    aput-object v2, v8, v10
    :try_end_211
    .catchall {:try_start_20f .. :try_end_211} :catchall_21c

    :try_start_211
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x3

    aput-object v10, v8, v12

    .line 14525
    invoke-static {v1, v5, v8}, Lcom/liulishuo/filedownloader/h/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_220

    :catchall_21c
    move-exception v0

    move-object v3, v0

    move v2, v10

    goto :goto_1ad

    .line 14530
    :cond_220
    :goto_220
    iget-object v5, v1, Lcom/liulishuo/filedownloader/c/d;->c:Lcom/liulishuo/filedownloader/b/a;

    iget-object v8, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 17111
    iget v8, v8, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 14530
    invoke-interface {v5, v8}, Lcom/liulishuo/filedownloader/b/a;->d(I)V

    .line 14531
    iget-object v5, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v5}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v8, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v8}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/liulishuo/filedownloader/h/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 14532
    iput-boolean v5, v1, Lcom/liulishuo/filedownloader/c/d;->q:Z

    if-eqz v15, :cond_25e

    .line 14534
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_25e

    const-string v8, "the old etag[%s] is the same to the new etag[%s], but the response status code is %d not Partial(206), so wo have to start this task from very beginning for task[%d]!"

    .line 14535
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v15, v6, v5

    aput-object v2, v6, v7

    .line 14538
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v6, v5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v6, v5

    .line 14535
    invoke-static {v1, v8, v6}, Lcom/liulishuo/filedownloader/h/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    goto :goto_25f

    :cond_25e
    const/4 v5, 0x3

    .line 14542
    :goto_25f
    iget-object v6, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v6, v3, v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(J)V

    .line 14543
    iget-object v6, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v6, v3, v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b(J)V

    .line 14544
    iget-object v3, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 17171
    iput-object v2, v3, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->i:Ljava/lang/String;

    .line 14545
    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 17206
    iput v7, v2, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j:I

    .line 14547
    iget-object v12, v1, Lcom/liulishuo/filedownloader/c/d;->c:Lcom/liulishuo/filedownloader/b/a;

    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 18167
    iget-object v14, v2, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->i:Ljava/lang/String;

    .line 14547
    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 19155
    iget-object v2, v2, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v15

    .line 14547
    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 19159
    iget-wide v2, v2, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g:J

    .line 14547
    iget-object v4, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 19199
    iget v4, v4, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j:I

    move-wide/from16 v17, v2

    move/from16 v19, v4

    .line 14547
    invoke-interface/range {v12 .. v19}, Lcom/liulishuo/filedownloader/b/a;->a(ILjava/lang/String;JJI)V

    .line 14551
    new-instance v2, Lcom/liulishuo/filedownloader/c/d$c;

    invoke-direct {v2, v1}, Lcom/liulishuo/filedownloader/c/d$c;-><init>(Lcom/liulishuo/filedownloader/c/d;)V

    throw v2
    :try_end_294
    .catchall {:try_start_211 .. :try_end_294} :catchall_1aa

    :cond_294
    const/4 v5, 0x3

    .line 20157
    :try_start_295
    iget-object v6, v8, Lcom/liulishuo/filedownloader/c/a;->f:Ljava/util/List;
    :try_end_297
    .catchall {:try_start_295 .. :try_end_297} :catchall_5ab

    if-eqz v6, :cond_2b1

    :try_start_299
    iget-object v6, v8, Lcom/liulishuo/filedownloader/c/a;->f:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2b1

    .line 20158
    iget-object v6, v8, Lcom/liulishuo/filedownloader/c/a;->f:Ljava/util/List;

    iget-object v8, v8, Lcom/liulishuo/filedownloader/c/a;->f:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v7

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_2b0
    .catchall {:try_start_299 .. :try_end_2b0} :catchall_1aa

    goto :goto_2b2

    :cond_2b1
    const/4 v6, 0x0

    .line 14554
    :goto_2b2
    :try_start_2b2
    iput-object v6, v1, Lcom/liulishuo/filedownloader/c/d;->x:Ljava/lang/String;

    .line 14555
    iget-boolean v6, v1, Lcom/liulishuo/filedownloader/c/d;->r:Z
    :try_end_2b6
    .catchall {:try_start_2b2 .. :try_end_2b6} :catchall_5ab

    if-nez v6, :cond_2c5

    if-eqz v12, :cond_2bb

    goto :goto_2c5

    .line 14571
    :cond_2bb
    :try_start_2bb
    new-instance v2, Lcom/liulishuo/filedownloader/e/b;

    .line 14572
    invoke-interface {v9}, Lcom/liulishuo/filedownloader/a/b;->c()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v11, v10, v3}, Lcom/liulishuo/filedownloader/e/b;-><init>(ILjava/util/Map;Ljava/util/Map;)V

    throw v2
    :try_end_2c5
    .catchall {:try_start_2bb .. :try_end_2c5} :catchall_1aa

    .line 14560
    :cond_2c5
    :goto_2c5
    :try_start_2c5
    iget-object v6, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 20187
    iget-boolean v6, v6, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->d:Z
    :try_end_2c9
    .catchall {:try_start_2c5 .. :try_end_2c9} :catchall_5ab

    if-eqz v6, :cond_2d4

    .line 14562
    :try_start_2cb
    iget-object v6, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 21115
    iget-object v6, v6, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b:Ljava/lang/String;

    .line 14562
    invoke-static {v9, v6}, Lcom/liulishuo/filedownloader/h/f;->a(Lcom/liulishuo/filedownloader/a/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_2d3
    .catchall {:try_start_2cb .. :try_end_2d3} :catchall_1aa

    goto :goto_2d5

    :cond_2d4
    const/4 v6, 0x0

    :goto_2d5
    const-wide/16 v10, -0x1

    cmp-long v8, v22, v10

    if-nez v8, :cond_2dd

    move v8, v7

    goto :goto_2de

    :cond_2dd
    const/4 v8, 0x0

    .line 14564
    :goto_2de
    :try_start_2de
    iput-boolean v8, v1, Lcom/liulishuo/filedownloader/c/d;->s:Z

    .line 14567
    iget-object v8, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    iget-boolean v12, v1, Lcom/liulishuo/filedownloader/c/d;->q:Z
    :try_end_2e4
    .catchall {:try_start_2de .. :try_end_2e4} :catchall_5ab

    if-eqz v12, :cond_2ec

    :try_start_2e6
    iget-boolean v12, v1, Lcom/liulishuo/filedownloader/c/d;->r:Z
    :try_end_2e8
    .catchall {:try_start_2e6 .. :try_end_2e8} :catchall_1aa

    if-eqz v12, :cond_2ec

    move v12, v7

    goto :goto_2ed

    :cond_2ec
    const/4 v12, 0x0

    .line 21119
    :goto_2ed
    :try_start_2ed
    iget-object v13, v8, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 21167
    iget-object v13, v13, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->i:Ljava/lang/String;
    :try_end_2f1
    .catchall {:try_start_2ed .. :try_end_2f1} :catchall_5ab

    if-eqz v13, :cond_313

    .line 21120
    :try_start_2f3
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2fa

    goto :goto_313

    :cond_2fa
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "callback onConnected must with precondition succeed, but the etag is changes(%s != %s)"
    :try_end_2fe
    .catchall {:try_start_2f3 .. :try_end_2fe} :catchall_1aa

    const/4 v6, 0x2

    :try_start_2ff
    new-array v8, v6, [Ljava/lang/Object;
    :try_end_301
    .catchall {:try_start_2ff .. :try_end_301} :catchall_30e

    const/4 v6, 0x0

    :try_start_302
    aput-object v2, v8, v6

    aput-object v13, v8, v7

    .line 21121
    invoke-static {v4, v8}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_30e
    .catchall {:try_start_302 .. :try_end_30e} :catchall_1aa

    :catchall_30e
    move-exception v0

    move-object v3, v0

    move v2, v6

    goto/16 :goto_1ad

    .line 21127
    :cond_313
    :goto_313
    :try_start_313
    iget-object v13, v8, Lcom/liulishuo/filedownloader/c/f;->c:Lcom/liulishuo/filedownloader/c/f$a;

    .line 21505
    iput-boolean v12, v13, Lcom/liulishuo/filedownloader/c/f$a;->a:Z

    .line 21129
    iget-object v12, v8, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    :try_end_319
    .catchall {:try_start_313 .. :try_end_319} :catchall_5ab

    const/4 v13, 0x2

    :try_start_31a
    invoke-virtual {v12, v13}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(B)V
    :try_end_31d
    .catchall {:try_start_31a .. :try_end_31d} :catchall_5a8

    .line 21130
    :try_start_31d
    iget-object v12, v8, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-wide/from16 v13, v22

    invoke-virtual {v12, v13, v14}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b(J)V

    .line 21131
    iget-object v12, v8, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 22171
    iput-object v2, v12, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->i:Ljava/lang/String;

    .line 21132
    iget-object v12, v8, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 22183
    iput-object v6, v12, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e:Ljava/lang/String;

    .line 21134
    iget-object v15, v8, Lcom/liulishuo/filedownloader/c/f;->b:Lcom/liulishuo/filedownloader/b/a;

    iget-object v12, v8, Lcom/liulishuo/filedownloader/c/f;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 23111
    iget v12, v12, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    move/from16 v16, v12

    move-wide/from16 v17, v13

    move-object/from16 v19, v2

    move-object/from16 v20, v6

    .line 21134
    invoke-interface/range {v15 .. v20}, Lcom/liulishuo/filedownloader/b/a;->a(IJLjava/lang/String;Ljava/lang/String;)V
    :try_end_33d
    .catchall {:try_start_31d .. :try_end_33d} :catchall_5ab

    const/4 v2, 0x2

    .line 21135
    :try_start_33e
    invoke-virtual {v8, v2}, Lcom/liulishuo/filedownloader/c/f;->a(B)V

    .line 21137
    iget v6, v8, Lcom/liulishuo/filedownloader/c/f;->e:I

    int-to-long v5, v6

    invoke-static {v13, v14, v5, v6}, Lcom/liulishuo/filedownloader/c/f;->a(JJ)J

    move-result-wide v5

    iput-wide v5, v8, Lcom/liulishuo/filedownloader/c/f;->f:J

    .line 21139
    iget-object v5, v8, Lcom/liulishuo/filedownloader/c/f;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    :try_end_350
    .catchall {:try_start_33e .. :try_end_350} :catchall_5a6

    if-eqz v9, :cond_35e

    .line 10385
    :try_start_352
    invoke-interface {v9}, Lcom/liulishuo/filedownloader/a/b;->f()V
    :try_end_355
    .catch Ljava/io/IOException; {:try_start_352 .. :try_end_355} :catch_359
    .catch Ljava/lang/IllegalAccessException; {:try_start_352 .. :try_end_355} :catch_359
    .catch Ljava/lang/InterruptedException; {:try_start_352 .. :try_end_355} :catch_359
    .catch Ljava/lang/IllegalArgumentException; {:try_start_352 .. :try_end_355} :catch_359
    .catch Lcom/liulishuo/filedownloader/e/e; {:try_start_352 .. :try_end_355} :catch_359
    .catch Lcom/liulishuo/filedownloader/e/a; {:try_start_352 .. :try_end_355} :catch_359
    .catch Lcom/liulishuo/filedownloader/c/d$b; {:try_start_352 .. :try_end_355} :catch_5d3
    .catch Lcom/liulishuo/filedownloader/c/d$c; {:try_start_352 .. :try_end_355} :catch_356
    .catchall {:try_start_352 .. :try_end_355} :catchall_642

    goto :goto_35e

    :catch_356
    const/4 v4, -0x2

    goto/16 :goto_5c7

    :catch_359
    move-exception v0

    move-object v3, v0

    const/4 v4, -0x2

    goto/16 :goto_606

    .line 257
    :cond_35e
    :goto_35e
    :try_start_35e
    invoke-direct/range {p0 .. p0}, Lcom/liulishuo/filedownloader/c/d;->d()V

    .line 260
    iget-object v5, v1, Lcom/liulishuo/filedownloader/c/d;->c:Lcom/liulishuo/filedownloader/b/a;

    iget-object v6, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 24111
    iget v6, v6, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 261
    invoke-interface {v5, v6}, Lcom/liulishuo/filedownloader/b/a;->c(I)Ljava/util/List;

    move-result-object v5

    .line 262
    invoke-virtual {v1, v5}, Lcom/liulishuo/filedownloader/c/d;->a(Ljava/util/List;)V

    .line 264
    iget-boolean v6, v1, Lcom/liulishuo/filedownloader/c/d;->u:Z
    :try_end_370
    .catch Ljava/io/IOException; {:try_start_35e .. :try_end_370} :catch_5a2
    .catch Ljava/lang/IllegalAccessException; {:try_start_35e .. :try_end_370} :catch_5a2
    .catch Ljava/lang/InterruptedException; {:try_start_35e .. :try_end_370} :catch_5a2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35e .. :try_end_370} :catch_5a2
    .catch Lcom/liulishuo/filedownloader/e/e; {:try_start_35e .. :try_end_370} :catch_5a2
    .catch Lcom/liulishuo/filedownloader/e/a; {:try_start_35e .. :try_end_370} :catch_5a2
    .catch Lcom/liulishuo/filedownloader/c/d$b; {:try_start_35e .. :try_end_370} :catch_5d3
    .catch Lcom/liulishuo/filedownloader/c/d$c; {:try_start_35e .. :try_end_370} :catch_356
    .catchall {:try_start_35e .. :try_end_370} :catchall_642

    if-eqz v6, :cond_3a7

    .line 265
    :try_start_372
    iget-object v3, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    :try_end_374
    .catch Ljava/io/IOException; {:try_start_372 .. :try_end_374} :catch_359
    .catch Ljava/lang/IllegalAccessException; {:try_start_372 .. :try_end_374} :catch_359
    .catch Ljava/lang/InterruptedException; {:try_start_372 .. :try_end_374} :catch_359
    .catch Ljava/lang/IllegalArgumentException; {:try_start_372 .. :try_end_374} :catch_359
    .catch Lcom/liulishuo/filedownloader/e/e; {:try_start_372 .. :try_end_374} :catch_359
    .catch Lcom/liulishuo/filedownloader/e/a; {:try_start_372 .. :try_end_374} :catch_359
    .catch Lcom/liulishuo/filedownloader/c/d$b; {:try_start_372 .. :try_end_374} :catch_5d3
    .catch Lcom/liulishuo/filedownloader/c/d$c; {:try_start_372 .. :try_end_374} :catch_356
    .catchall {:try_start_372 .. :try_end_374} :catchall_642

    const/4 v4, -0x2

    :try_start_375
    invoke-virtual {v3, v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(B)V
    :try_end_378
    .catch Ljava/io/IOException; {:try_start_375 .. :try_end_378} :catch_5c2
    .catch Ljava/lang/IllegalAccessException; {:try_start_375 .. :try_end_378} :catch_5c2
    .catch Ljava/lang/InterruptedException; {:try_start_375 .. :try_end_378} :catch_5c2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_375 .. :try_end_378} :catch_5c2
    .catch Lcom/liulishuo/filedownloader/e/e; {:try_start_375 .. :try_end_378} :catch_5c2
    .catch Lcom/liulishuo/filedownloader/e/a; {:try_start_375 .. :try_end_378} :catch_5c2
    .catch Lcom/liulishuo/filedownloader/c/d$b; {:try_start_375 .. :try_end_378} :catch_5d3
    .catch Lcom/liulishuo/filedownloader/c/d$c; {:try_start_375 .. :try_end_378} :catch_5c7
    .catchall {:try_start_375 .. :try_end_378} :catchall_642

    .line 328
    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/c/f;->a()V

    .line 330
    iget-boolean v2, v1, Lcom/liulishuo/filedownloader/c/d;->u:Z

    if-eqz v2, :cond_387

    .line 331
    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    .line 24185
    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/c/f;->d()V

    goto :goto_3a0

    .line 332
    :cond_387
    iget-boolean v2, v1, Lcom/liulishuo/filedownloader/c/d;->v:Z

    if-eqz v2, :cond_393

    .line 333
    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    iget-object v3, v1, Lcom/liulishuo/filedownloader/c/d;->w:Ljava/lang/Exception;

    .line 24189
    invoke-virtual {v2, v3}, Lcom/liulishuo/filedownloader/c/f;->a(Ljava/lang/Exception;)V

    goto :goto_3a0

    .line 336
    :cond_393
    :try_start_393
    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/c/f;->b()V
    :try_end_398
    .catch Ljava/io/IOException; {:try_start_393 .. :try_end_398} :catch_399

    goto :goto_3a0

    :catch_399
    move-exception v0

    move-object v2, v0

    .line 338
    iget-object v3, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    .line 25189
    invoke-virtual {v3, v2}, Lcom/liulishuo/filedownloader/c/f;->a(Ljava/lang/Exception;)V

    .line 342
    :goto_3a0
    iget-object v1, v1, Lcom/liulishuo/filedownloader/c/d;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 269
    :cond_3a7
    :try_start_3a7
    iget-object v6, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 26159
    iget-wide v8, v6, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g:J

    .line 272
    iget-object v6, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()Ljava/lang/String;

    move-result-object v6
    :try_end_3b1
    .catch Ljava/io/IOException; {:try_start_3a7 .. :try_end_3b1} :catch_5a2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3a7 .. :try_end_3b1} :catch_5a2
    .catch Ljava/lang/InterruptedException; {:try_start_3a7 .. :try_end_3b1} :catch_5a2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3a7 .. :try_end_3b1} :catch_5a2
    .catch Lcom/liulishuo/filedownloader/e/e; {:try_start_3a7 .. :try_end_3b1} :catch_5a2
    .catch Lcom/liulishuo/filedownloader/e/a; {:try_start_3a7 .. :try_end_3b1} :catch_5a2
    .catch Lcom/liulishuo/filedownloader/c/d$b; {:try_start_3a7 .. :try_end_3b1} :catch_5d3
    .catch Lcom/liulishuo/filedownloader/c/d$c; {:try_start_3a7 .. :try_end_3b1} :catch_356
    .catchall {:try_start_3a7 .. :try_end_3b1} :catchall_642

    cmp-long v10, v8, v10

    if-eqz v10, :cond_3f3

    .line 26767
    :try_start_3b5
    iget-object v10, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v10}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/liulishuo/filedownloader/h/f;->i(Ljava/lang/String;)Lcom/liulishuo/filedownloader/g/a;

    move-result-object v10
    :try_end_3bf
    .catchall {:try_start_3b5 .. :try_end_3bf} :catchall_3ea

    .line 26768
    :try_start_3bf
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v17

    sub-long v15, v8, v17

    .line 26771
    invoke-static {v6}, Lcom/liulishuo/filedownloader/h/f;->e(Ljava/lang/String;)J

    move-result-wide v13

    cmp-long v6, v13, v15

    if-ltz v6, :cond_3e0

    .line 26777
    invoke-static {}, Lcom/liulishuo/filedownloader/h/e;->a()Lcom/liulishuo/filedownloader/h/e;

    move-result-object v6

    iget-boolean v6, v6, Lcom/liulishuo/filedownloader/h/e;->f:Z

    if-nez v6, :cond_3dd

    .line 26779
    invoke-interface {v10, v8, v9}, Lcom/liulishuo/filedownloader/g/a;->b(J)V

    :cond_3dd
    move-object/from16 v21, v10

    goto :goto_3f5

    .line 26775
    :cond_3e0
    new-instance v3, Lcom/liulishuo/filedownloader/e/d;

    move-object v12, v3

    invoke-direct/range {v12 .. v18}, Lcom/liulishuo/filedownloader/e/d;-><init>(JJJ)V

    throw v3
    :try_end_3e7
    .catchall {:try_start_3bf .. :try_end_3e7} :catchall_3e7

    :catchall_3e7
    move-exception v0

    move-object v3, v0

    goto :goto_3ed

    :catchall_3ea
    move-exception v0

    move-object v3, v0

    const/4 v10, 0x0

    :goto_3ed
    if-eqz v10, :cond_3f2

    .line 26783
    :try_start_3ef
    invoke-interface {v10}, Lcom/liulishuo/filedownloader/g/a;->b()V

    :cond_3f2
    throw v3

    :cond_3f3
    const/16 v21, 0x0

    :goto_3f5
    if-eqz v21, :cond_3fa

    invoke-interface/range {v21 .. v21}, Lcom/liulishuo/filedownloader/g/a;->b()V
    :try_end_3fa
    .catch Ljava/io/IOException; {:try_start_3ef .. :try_end_3fa} :catch_359
    .catch Ljava/lang/IllegalAccessException; {:try_start_3ef .. :try_end_3fa} :catch_359
    .catch Ljava/lang/InterruptedException; {:try_start_3ef .. :try_end_3fa} :catch_359
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3ef .. :try_end_3fa} :catch_359
    .catch Lcom/liulishuo/filedownloader/e/e; {:try_start_3ef .. :try_end_3fa} :catch_359
    .catch Lcom/liulishuo/filedownloader/e/a; {:try_start_3ef .. :try_end_3fa} :catch_359
    .catch Lcom/liulishuo/filedownloader/c/d$b; {:try_start_3ef .. :try_end_3fa} :catch_5d3
    .catch Lcom/liulishuo/filedownloader/c/d$c; {:try_start_3ef .. :try_end_3fa} :catch_356
    .catchall {:try_start_3ef .. :try_end_3fa} :catchall_642

    .line 27391
    :cond_3fa
    :try_start_3fa
    iget-boolean v6, v1, Lcom/liulishuo/filedownloader/c/d;->q:Z
    :try_end_3fc
    .catch Ljava/io/IOException; {:try_start_3fa .. :try_end_3fc} :catch_5a2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3fa .. :try_end_3fc} :catch_5a2
    .catch Ljava/lang/InterruptedException; {:try_start_3fa .. :try_end_3fc} :catch_5a2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3fa .. :try_end_3fc} :catch_5a2
    .catch Lcom/liulishuo/filedownloader/e/e; {:try_start_3fa .. :try_end_3fc} :catch_5a2
    .catch Lcom/liulishuo/filedownloader/e/a; {:try_start_3fa .. :try_end_3fc} :catch_5a2
    .catch Lcom/liulishuo/filedownloader/c/d$b; {:try_start_3fa .. :try_end_3fc} :catch_5d3
    .catch Lcom/liulishuo/filedownloader/c/d$c; {:try_start_3fa .. :try_end_3fc} :catch_356
    .catchall {:try_start_3fa .. :try_end_3fc} :catchall_642

    if-eqz v6, :cond_404

    :try_start_3fe
    iget-object v6, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 28199
    iget v6, v6, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j:I
    :try_end_402
    .catch Ljava/io/IOException; {:try_start_3fe .. :try_end_402} :catch_359
    .catch Ljava/lang/IllegalAccessException; {:try_start_3fe .. :try_end_402} :catch_359
    .catch Ljava/lang/InterruptedException; {:try_start_3fe .. :try_end_402} :catch_359
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3fe .. :try_end_402} :catch_359
    .catch Lcom/liulishuo/filedownloader/e/e; {:try_start_3fe .. :try_end_402} :catch_359
    .catch Lcom/liulishuo/filedownloader/e/a; {:try_start_3fe .. :try_end_402} :catch_359
    .catch Lcom/liulishuo/filedownloader/c/d$b; {:try_start_3fe .. :try_end_402} :catch_5d3
    .catch Lcom/liulishuo/filedownloader/c/d$c; {:try_start_3fe .. :try_end_402} :catch_356
    .catchall {:try_start_3fe .. :try_end_402} :catchall_642

    if-le v6, v7, :cond_412

    .line 27395
    :cond_404
    :try_start_404
    iget-boolean v6, v1, Lcom/liulishuo/filedownloader/c/d;->r:Z
    :try_end_406
    .catch Ljava/io/IOException; {:try_start_404 .. :try_end_406} :catch_5a2
    .catch Ljava/lang/IllegalAccessException; {:try_start_404 .. :try_end_406} :catch_5a2
    .catch Ljava/lang/InterruptedException; {:try_start_404 .. :try_end_406} :catch_5a2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_404 .. :try_end_406} :catch_5a2
    .catch Lcom/liulishuo/filedownloader/e/e; {:try_start_404 .. :try_end_406} :catch_5a2
    .catch Lcom/liulishuo/filedownloader/e/a; {:try_start_404 .. :try_end_406} :catch_5a2
    .catch Lcom/liulishuo/filedownloader/c/d$b; {:try_start_404 .. :try_end_406} :catch_5d3
    .catch Lcom/liulishuo/filedownloader/c/d$c; {:try_start_404 .. :try_end_406} :catch_356
    .catchall {:try_start_404 .. :try_end_406} :catchall_642

    if-eqz v6, :cond_412

    :try_start_408
    iget-boolean v6, v1, Lcom/liulishuo/filedownloader/c/d;->l:Z

    if-eqz v6, :cond_412

    iget-boolean v6, v1, Lcom/liulishuo/filedownloader/c/d;->s:Z

    if-nez v6, :cond_412

    move v6, v7

    goto :goto_413

    :cond_412
    const/4 v6, 0x0

    :goto_413
    if-eqz v6, :cond_42b

    .line 27348
    iget-boolean v6, v1, Lcom/liulishuo/filedownloader/c/d;->q:Z

    if-eqz v6, :cond_41e

    .line 27349
    iget-object v6, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 29199
    iget v6, v6, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j:I

    goto :goto_42c

    .line 30052
    :cond_41e
    invoke-static {}, Lcom/liulishuo/filedownloader/c/c$a;->a()Lcom/liulishuo/filedownloader/c/c;

    move-result-object v6

    .line 31120
    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/c/c;->d()Lcom/liulishuo/filedownloader/h/c$a;

    move-result-object v6

    .line 31121
    invoke-interface {v6, v8, v9}, Lcom/liulishuo/filedownloader/h/c$a;->a(J)I

    move-result v6
    :try_end_42a
    .catch Ljava/io/IOException; {:try_start_408 .. :try_end_42a} :catch_359
    .catch Ljava/lang/IllegalAccessException; {:try_start_408 .. :try_end_42a} :catch_359
    .catch Ljava/lang/InterruptedException; {:try_start_408 .. :try_end_42a} :catch_359
    .catch Ljava/lang/IllegalArgumentException; {:try_start_408 .. :try_end_42a} :catch_359
    .catch Lcom/liulishuo/filedownloader/e/e; {:try_start_408 .. :try_end_42a} :catch_359
    .catch Lcom/liulishuo/filedownloader/e/a; {:try_start_408 .. :try_end_42a} :catch_359
    .catch Lcom/liulishuo/filedownloader/c/d$b; {:try_start_408 .. :try_end_42a} :catch_5d3
    .catch Lcom/liulishuo/filedownloader/c/d$c; {:try_start_408 .. :try_end_42a} :catch_356
    .catchall {:try_start_408 .. :try_end_42a} :catchall_642

    goto :goto_42c

    :cond_42b
    move v6, v7

    :goto_42c
    if-lez v6, :cond_58c

    cmp-long v10, v8, v3

    if-nez v10, :cond_461

    .line 328
    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/c/f;->a()V

    .line 330
    iget-boolean v2, v1, Lcom/liulishuo/filedownloader/c/d;->u:Z

    if-eqz v2, :cond_441

    .line 331
    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    .line 31185
    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/c/f;->d()V

    goto :goto_45a

    .line 332
    :cond_441
    iget-boolean v2, v1, Lcom/liulishuo/filedownloader/c/d;->v:Z

    if-eqz v2, :cond_44d

    .line 333
    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    iget-object v3, v1, Lcom/liulishuo/filedownloader/c/d;->w:Ljava/lang/Exception;

    .line 31189
    invoke-virtual {v2, v3}, Lcom/liulishuo/filedownloader/c/f;->a(Ljava/lang/Exception;)V

    goto :goto_45a

    .line 336
    :cond_44d
    :try_start_44d
    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/c/f;->b()V
    :try_end_452
    .catch Ljava/io/IOException; {:try_start_44d .. :try_end_452} :catch_453

    goto :goto_45a

    :catch_453
    move-exception v0

    move-object v2, v0

    .line 338
    iget-object v3, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    .line 32189
    invoke-virtual {v3, v2}, Lcom/liulishuo/filedownloader/c/f;->a(Ljava/lang/Exception;)V

    .line 342
    :goto_45a
    iget-object v1, v1, Lcom/liulishuo/filedownloader/c/d;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 286
    :cond_461
    :try_start_461
    iget-boolean v10, v1, Lcom/liulishuo/filedownloader/c/d;->u:Z
    :try_end_463
    .catch Ljava/io/IOException; {:try_start_461 .. :try_end_463} :catch_5a2
    .catch Ljava/lang/IllegalAccessException; {:try_start_461 .. :try_end_463} :catch_5a2
    .catch Ljava/lang/InterruptedException; {:try_start_461 .. :try_end_463} :catch_5a2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_461 .. :try_end_463} :catch_5a2
    .catch Lcom/liulishuo/filedownloader/e/e; {:try_start_461 .. :try_end_463} :catch_5a2
    .catch Lcom/liulishuo/filedownloader/e/a; {:try_start_461 .. :try_end_463} :catch_5a2
    .catch Lcom/liulishuo/filedownloader/c/d$b; {:try_start_461 .. :try_end_463} :catch_5d3
    .catch Lcom/liulishuo/filedownloader/c/d$c; {:try_start_461 .. :try_end_463} :catch_356
    .catchall {:try_start_461 .. :try_end_463} :catchall_642

    if-eqz v10, :cond_49a

    .line 287
    :try_start_465
    iget-object v3, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    :try_end_467
    .catch Ljava/io/IOException; {:try_start_465 .. :try_end_467} :catch_359
    .catch Ljava/lang/IllegalAccessException; {:try_start_465 .. :try_end_467} :catch_359
    .catch Ljava/lang/InterruptedException; {:try_start_465 .. :try_end_467} :catch_359
    .catch Ljava/lang/IllegalArgumentException; {:try_start_465 .. :try_end_467} :catch_359
    .catch Lcom/liulishuo/filedownloader/e/e; {:try_start_465 .. :try_end_467} :catch_359
    .catch Lcom/liulishuo/filedownloader/e/a; {:try_start_465 .. :try_end_467} :catch_359
    .catch Lcom/liulishuo/filedownloader/c/d$b; {:try_start_465 .. :try_end_467} :catch_5d3
    .catch Lcom/liulishuo/filedownloader/c/d$c; {:try_start_465 .. :try_end_467} :catch_356
    .catchall {:try_start_465 .. :try_end_467} :catchall_642

    const/4 v4, -0x2

    :try_start_468
    invoke-virtual {v3, v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(B)V
    :try_end_46b
    .catch Ljava/io/IOException; {:try_start_468 .. :try_end_46b} :catch_5c2
    .catch Ljava/lang/IllegalAccessException; {:try_start_468 .. :try_end_46b} :catch_5c2
    .catch Ljava/lang/InterruptedException; {:try_start_468 .. :try_end_46b} :catch_5c2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_468 .. :try_end_46b} :catch_5c2
    .catch Lcom/liulishuo/filedownloader/e/e; {:try_start_468 .. :try_end_46b} :catch_5c2
    .catch Lcom/liulishuo/filedownloader/e/a; {:try_start_468 .. :try_end_46b} :catch_5c2
    .catch Lcom/liulishuo/filedownloader/c/d$b; {:try_start_468 .. :try_end_46b} :catch_5d3
    .catch Lcom/liulishuo/filedownloader/c/d$c; {:try_start_468 .. :try_end_46b} :catch_5c7
    .catchall {:try_start_468 .. :try_end_46b} :catchall_642

    .line 328
    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/c/f;->a()V

    .line 330
    iget-boolean v2, v1, Lcom/liulishuo/filedownloader/c/d;->u:Z

    if-eqz v2, :cond_47a

    .line 331
    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    .line 33185
    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/c/f;->d()V

    goto :goto_493

    .line 332
    :cond_47a
    iget-boolean v2, v1, Lcom/liulishuo/filedownloader/c/d;->v:Z

    if-eqz v2, :cond_486

    .line 333
    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    iget-object v3, v1, Lcom/liulishuo/filedownloader/c/d;->w:Ljava/lang/Exception;

    .line 33189
    invoke-virtual {v2, v3}, Lcom/liulishuo/filedownloader/c/f;->a(Ljava/lang/Exception;)V

    goto :goto_493

    .line 336
    :cond_486
    :try_start_486
    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/c/f;->b()V
    :try_end_48b
    .catch Ljava/io/IOException; {:try_start_486 .. :try_end_48b} :catch_48c

    goto :goto_493

    :catch_48c
    move-exception v0

    move-object v2, v0

    .line 338
    iget-object v3, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    .line 34189
    invoke-virtual {v3, v2}, Lcom/liulishuo/filedownloader/c/f;->a(Ljava/lang/Exception;)V

    .line 342
    :goto_493
    iget-object v1, v1, Lcom/liulishuo/filedownloader/c/d;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_49a
    if-ne v6, v7, :cond_49e

    move v10, v7

    goto :goto_49f

    :cond_49e
    const/4 v10, 0x0

    .line 292
    :goto_49f
    :try_start_49f
    iput-boolean v10, v1, Lcom/liulishuo/filedownloader/c/d;->o:Z

    .line 293
    iget-boolean v10, v1, Lcom/liulishuo/filedownloader/c/d;->o:Z

    if-eqz v10, :cond_54e

    .line 34581
    iget-boolean v5, v1, Lcom/liulishuo/filedownloader/c/d;->r:Z
    :try_end_4a7
    .catch Ljava/io/IOException; {:try_start_49f .. :try_end_4a7} :catch_5a2
    .catch Ljava/lang/IllegalAccessException; {:try_start_49f .. :try_end_4a7} :catch_5a2
    .catch Ljava/lang/InterruptedException; {:try_start_49f .. :try_end_4a7} :catch_5a2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_49f .. :try_end_4a7} :catch_5a2
    .catch Lcom/liulishuo/filedownloader/e/e; {:try_start_49f .. :try_end_4a7} :catch_5a2
    .catch Lcom/liulishuo/filedownloader/e/a; {:try_start_49f .. :try_end_4a7} :catch_5a2
    .catch Lcom/liulishuo/filedownloader/c/d$b; {:try_start_49f .. :try_end_4a7} :catch_5d3
    .catch Lcom/liulishuo/filedownloader/c/d$c; {:try_start_49f .. :try_end_4a7} :catch_356
    .catchall {:try_start_49f .. :try_end_4a7} :catchall_642

    if-nez v5, :cond_4c0

    .line 34582
    :try_start_4a9
    iget-object v5, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v5, v3, v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(J)V

    .line 35107
    new-instance v3, Lcom/liulishuo/filedownloader/c/b;

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, -0x1

    const/16 v33, 0x0

    move-object/from16 v24, v3

    move-wide/from16 v31, v8

    invoke-direct/range {v24 .. v33}, Lcom/liulishuo/filedownloader/c/b;-><init>(JJJJB)V
    :try_end_4bf
    .catch Ljava/io/IOException; {:try_start_4a9 .. :try_end_4bf} :catch_359
    .catch Ljava/lang/IllegalAccessException; {:try_start_4a9 .. :try_end_4bf} :catch_359
    .catch Ljava/lang/InterruptedException; {:try_start_4a9 .. :try_end_4bf} :catch_359
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4a9 .. :try_end_4bf} :catch_359
    .catch Lcom/liulishuo/filedownloader/e/e; {:try_start_4a9 .. :try_end_4bf} :catch_359
    .catch Lcom/liulishuo/filedownloader/e/a; {:try_start_4a9 .. :try_end_4bf} :catch_359
    .catch Lcom/liulishuo/filedownloader/c/d$b; {:try_start_4a9 .. :try_end_4bf} :catch_5d3
    .catch Lcom/liulishuo/filedownloader/c/d$c; {:try_start_4a9 .. :try_end_4bf} :catch_356
    .catchall {:try_start_4a9 .. :try_end_4bf} :catchall_642

    goto :goto_4e4

    .line 34586
    :cond_4c0
    :try_start_4c0
    iget-object v3, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 35155
    iget-object v3, v3, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v11

    .line 34587
    iget-object v3, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 36155
    iget-object v3, v3, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v13

    .line 34587
    iget-object v3, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 37155
    iget-object v3, v3, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    sub-long v17, v8, v3

    .line 38113
    new-instance v3, Lcom/liulishuo/filedownloader/c/b;

    const-wide/16 v15, -0x1

    const/16 v19, 0x0

    move-object v10, v3

    invoke-direct/range {v10 .. v19}, Lcom/liulishuo/filedownloader/c/b;-><init>(JJJJB)V

    .line 34591
    :goto_4e4
    new-instance v4, Lcom/liulishuo/filedownloader/c/e$a;

    invoke-direct {v4}, Lcom/liulishuo/filedownloader/c/e$a;-><init>()V

    iget-object v5, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 39111
    iget v5, v5, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 34592
    invoke-virtual {v4, v5}, Lcom/liulishuo/filedownloader/c/e$a;->a(I)Lcom/liulishuo/filedownloader/c/e$a;

    move-result-object v4

    const/4 v5, -0x1

    .line 34593
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 39224
    iput-object v5, v4, Lcom/liulishuo/filedownloader/c/e$a;->c:Ljava/lang/Integer;

    .line 40184
    iput-object v1, v4, Lcom/liulishuo/filedownloader/c/e$a;->a:Lcom/liulishuo/filedownloader/c/h;

    .line 34594
    iget-object v5, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 41115
    iget-object v5, v5, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b:Ljava/lang/String;

    .line 34595
    invoke-virtual {v4, v5}, Lcom/liulishuo/filedownloader/c/e$a;->a(Ljava/lang/String;)Lcom/liulishuo/filedownloader/c/e$a;

    move-result-object v4

    iget-object v5, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 41167
    iget-object v5, v5, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->i:Ljava/lang/String;

    .line 34596
    invoke-virtual {v4, v5}, Lcom/liulishuo/filedownloader/c/e$a;->b(Ljava/lang/String;)Lcom/liulishuo/filedownloader/c/e$a;

    move-result-object v4

    iget-object v5, v1, Lcom/liulishuo/filedownloader/c/d;->f:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    .line 34597
    invoke-virtual {v4, v5}, Lcom/liulishuo/filedownloader/c/e$a;->a(Lcom/liulishuo/filedownloader/model/FileDownloadHeader;)Lcom/liulishuo/filedownloader/c/e$a;

    move-result-object v4

    iget-boolean v5, v1, Lcom/liulishuo/filedownloader/c/d;->h:Z

    .line 34598
    invoke-virtual {v4, v5}, Lcom/liulishuo/filedownloader/c/e$a;->a(Z)Lcom/liulishuo/filedownloader/c/e$a;

    move-result-object v4

    .line 34599
    invoke-virtual {v4, v3}, Lcom/liulishuo/filedownloader/c/e$a;->a(Lcom/liulishuo/filedownloader/c/b;)Lcom/liulishuo/filedownloader/c/e$a;

    move-result-object v3

    iget-object v4, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 34600
    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()Ljava/lang/String;

    move-result-object v4

    .line 41214
    iput-object v4, v3, Lcom/liulishuo/filedownloader/c/e$a;->b:Ljava/lang/String;

    .line 34601
    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/c/e$a;->a()Lcom/liulishuo/filedownloader/c/e;

    move-result-object v3

    iput-object v3, v1, Lcom/liulishuo/filedownloader/c/d;->n:Lcom/liulishuo/filedownloader/c/e;

    .line 34603
    iget-object v3, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 42195
    iput v7, v3, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j:I

    .line 34604
    iget-object v3, v1, Lcom/liulishuo/filedownloader/c/d;->c:Lcom/liulishuo/filedownloader/b/a;

    iget-object v4, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 43111
    iget v4, v4, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 34604
    invoke-interface {v3, v4, v7}, Lcom/liulishuo/filedownloader/b/a;->a(II)V

    .line 34605
    iget-boolean v3, v1, Lcom/liulishuo/filedownloader/c/d;->u:Z

    if-eqz v3, :cond_546

    .line 34606
    iget-object v3, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    :try_end_53b
    .catch Ljava/io/IOException; {:try_start_4c0 .. :try_end_53b} :catch_5a2
    .catch Ljava/lang/IllegalAccessException; {:try_start_4c0 .. :try_end_53b} :catch_5a2
    .catch Ljava/lang/InterruptedException; {:try_start_4c0 .. :try_end_53b} :catch_5a2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4c0 .. :try_end_53b} :catch_5a2
    .catch Lcom/liulishuo/filedownloader/e/e; {:try_start_4c0 .. :try_end_53b} :catch_5a2
    .catch Lcom/liulishuo/filedownloader/e/a; {:try_start_4c0 .. :try_end_53b} :catch_5a2
    .catch Lcom/liulishuo/filedownloader/c/d$b; {:try_start_4c0 .. :try_end_53b} :catch_5d3
    .catch Lcom/liulishuo/filedownloader/c/d$c; {:try_start_4c0 .. :try_end_53b} :catch_356
    .catchall {:try_start_4c0 .. :try_end_53b} :catchall_642

    const/4 v4, -0x2

    :try_start_53c
    invoke-virtual {v3, v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(B)V

    .line 34607
    iget-object v3, v1, Lcom/liulishuo/filedownloader/c/d;->n:Lcom/liulishuo/filedownloader/c/e;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/c/e;->a()V

    goto/16 :goto_613

    :cond_546
    const/4 v4, -0x2

    .line 34609
    iget-object v3, v1, Lcom/liulishuo/filedownloader/c/d;->n:Lcom/liulishuo/filedownloader/c/e;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/c/e;->run()V

    goto/16 :goto_613

    :cond_54e
    const/4 v4, -0x2

    .line 298
    iget-object v3, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    .line 43143
    new-instance v10, Landroid/os/HandlerThread;

    const-string v11, "source-status-callback"

    invoke-direct {v10, v11}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v10, v3, Lcom/liulishuo/filedownloader/c/f;->h:Landroid/os/HandlerThread;

    .line 43144
    iget-object v10, v3, Lcom/liulishuo/filedownloader/c/f;->h:Landroid/os/HandlerThread;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->start()V

    .line 43145
    new-instance v10, Landroid/os/Handler;

    iget-object v11, v3, Lcom/liulishuo/filedownloader/c/f;->h:Landroid/os/HandlerThread;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v10, v11, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v10, v3, Lcom/liulishuo/filedownloader/c/f;->g:Landroid/os/Handler;

    .line 299
    iget-boolean v3, v1, Lcom/liulishuo/filedownloader/c/d;->q:Z

    if-eqz v3, :cond_587

    if-le v6, v7, :cond_581

    .line 43616
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v6, :cond_581

    .line 43620
    iget-object v3, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    .line 44159
    iget-wide v8, v3, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g:J

    .line 43620
    invoke-direct {v1, v5, v8, v9}, Lcom/liulishuo/filedownloader/c/d;->a(Ljava/util/List;J)V

    goto/16 :goto_613

    .line 43617
    :cond_581
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 303
    :cond_587
    invoke-direct {v1, v8, v9, v6}, Lcom/liulishuo/filedownloader/c/d;->a(JI)V

    goto/16 :goto_613

    :cond_58c
    const/4 v4, -0x2

    .line 277
    new-instance v3, Ljava/lang/IllegalAccessException;

    const-string v5, "invalid connection count %d, the connection count must be larger than 0"

    new-array v8, v7, [Ljava/lang/Object;

    .line 279
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v9, 0x0

    aput-object v6, v8, v9

    .line 278
    invoke-static {v5, v8}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_5a2
    move-exception v0

    const/4 v4, -0x2

    goto/16 :goto_605

    :catchall_5a6
    move-exception v0

    goto :goto_5b0

    :catchall_5a8
    move-exception v0

    move v2, v13

    goto :goto_5b0

    :catchall_5ab
    move-exception v0

    const/4 v2, 0x2

    goto :goto_5b0

    :catchall_5ae
    move-exception v0

    move v2, v6

    :goto_5b0
    const/4 v4, -0x2

    goto :goto_5b5

    :catchall_5b2
    move-exception v0

    move v4, v5

    move v2, v6

    :goto_5b5
    move-object v3, v0

    goto :goto_5bc

    :catchall_5b7
    move-exception v0

    move v4, v5

    move v2, v6

    move-object v3, v0

    :goto_5bb
    const/4 v9, 0x0

    :goto_5bc
    if-eqz v9, :cond_5c4

    .line 10385
    invoke-interface {v9}, Lcom/liulishuo/filedownloader/a/b;->f()V

    goto :goto_5c4

    :catch_5c2
    move-exception v0

    goto :goto_605

    :cond_5c4
    :goto_5c4
    throw v3
    :try_end_5c5
    .catch Ljava/io/IOException; {:try_start_53c .. :try_end_5c5} :catch_5c2
    .catch Ljava/lang/IllegalAccessException; {:try_start_53c .. :try_end_5c5} :catch_5c2
    .catch Ljava/lang/InterruptedException; {:try_start_53c .. :try_end_5c5} :catch_5c2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_53c .. :try_end_5c5} :catch_5c2
    .catch Lcom/liulishuo/filedownloader/e/e; {:try_start_53c .. :try_end_5c5} :catch_5c2
    .catch Lcom/liulishuo/filedownloader/e/a; {:try_start_53c .. :try_end_5c5} :catch_5c2
    .catch Lcom/liulishuo/filedownloader/c/d$b; {:try_start_53c .. :try_end_5c5} :catch_5d3
    .catch Lcom/liulishuo/filedownloader/c/d$c; {:try_start_53c .. :try_end_5c5} :catch_5c7
    .catchall {:try_start_53c .. :try_end_5c5} :catchall_642

    :catch_5c5
    move v4, v5

    move v2, v6

    .line 321
    :catch_5c7
    :goto_5c7
    :try_start_5c7
    iget-object v3, v1, Lcom/liulishuo/filedownloader/c/d;->b:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(B)V
    :try_end_5cd
    .catchall {:try_start_5c7 .. :try_end_5cd} :catchall_642

    :goto_5cd
    move v6, v2

    move v5, v4

    const/4 v3, 0x0

    const/4 v4, 0x3

    goto/16 :goto_a4

    .line 328
    :catch_5d3
    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/c/f;->a()V

    .line 330
    iget-boolean v2, v1, Lcom/liulishuo/filedownloader/c/d;->u:Z

    if-eqz v2, :cond_5e2

    .line 331
    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    .line 44185
    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/c/f;->d()V

    goto :goto_5fb

    .line 332
    :cond_5e2
    iget-boolean v2, v1, Lcom/liulishuo/filedownloader/c/d;->v:Z

    if-eqz v2, :cond_5ee

    .line 333
    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    iget-object v3, v1, Lcom/liulishuo/filedownloader/c/d;->w:Ljava/lang/Exception;

    .line 44189
    invoke-virtual {v2, v3}, Lcom/liulishuo/filedownloader/c/f;->a(Ljava/lang/Exception;)V

    goto :goto_5fb

    .line 336
    :cond_5ee
    :try_start_5ee
    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/c/f;->b()V
    :try_end_5f3
    .catch Ljava/io/IOException; {:try_start_5ee .. :try_end_5f3} :catch_5f4

    goto :goto_5fb

    :catch_5f4
    move-exception v0

    move-object v2, v0

    .line 338
    iget-object v3, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    .line 45189
    invoke-virtual {v3, v2}, Lcom/liulishuo/filedownloader/c/f;->a(Ljava/lang/Exception;)V

    .line 342
    :goto_5fb
    iget-object v1, v1, Lcom/liulishuo/filedownloader/c/d;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catch_602
    move-exception v0

    move v4, v5

    move v2, v6

    :goto_605
    move-object v3, v0

    .line 312
    :goto_606
    :try_start_606
    invoke-virtual {v1, v3}, Lcom/liulishuo/filedownloader/c/d;->a(Ljava/lang/Exception;)Z

    move-result v5

    if-eqz v5, :cond_610

    .line 313
    invoke-virtual {v1, v3}, Lcom/liulishuo/filedownloader/c/d;->c(Ljava/lang/Exception;)V

    goto :goto_5cd

    .line 316
    :cond_610
    invoke-virtual {v1, v3}, Lcom/liulishuo/filedownloader/c/d;->b(Ljava/lang/Exception;)V
    :try_end_613
    .catchall {:try_start_606 .. :try_end_613} :catchall_642

    .line 328
    :goto_613
    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/c/f;->a()V

    .line 330
    iget-boolean v2, v1, Lcom/liulishuo/filedownloader/c/d;->u:Z

    if-eqz v2, :cond_622

    .line 331
    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    .line 46185
    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/c/f;->d()V

    goto :goto_63b

    .line 332
    :cond_622
    iget-boolean v2, v1, Lcom/liulishuo/filedownloader/c/d;->v:Z

    if-eqz v2, :cond_62e

    .line 333
    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    iget-object v3, v1, Lcom/liulishuo/filedownloader/c/d;->w:Ljava/lang/Exception;

    .line 46189
    invoke-virtual {v2, v3}, Lcom/liulishuo/filedownloader/c/f;->a(Ljava/lang/Exception;)V

    goto :goto_63b

    .line 336
    :cond_62e
    :try_start_62e
    iget-object v2, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/c/f;->b()V
    :try_end_633
    .catch Ljava/io/IOException; {:try_start_62e .. :try_end_633} :catch_634

    goto :goto_63b

    :catch_634
    move-exception v0

    move-object v2, v0

    .line 338
    iget-object v3, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    .line 47189
    invoke-virtual {v3, v2}, Lcom/liulishuo/filedownloader/c/f;->a(Ljava/lang/Exception;)V

    .line 342
    :goto_63b
    iget-object v1, v1, Lcom/liulishuo/filedownloader/c/d;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_642
    move-exception v0

    move-object v2, v0

    .line 328
    iget-object v3, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/c/f;->a()V

    .line 330
    iget-boolean v3, v1, Lcom/liulishuo/filedownloader/c/d;->u:Z

    if-nez v3, :cond_667

    .line 332
    iget-boolean v3, v1, Lcom/liulishuo/filedownloader/c/d;->v:Z

    if-eqz v3, :cond_659

    .line 333
    iget-object v3, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    iget-object v4, v1, Lcom/liulishuo/filedownloader/c/d;->w:Ljava/lang/Exception;

    .line 48189
    invoke-virtual {v3, v4}, Lcom/liulishuo/filedownloader/c/f;->a(Ljava/lang/Exception;)V

    goto :goto_66c

    .line 336
    :cond_659
    :try_start_659
    iget-object v3, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/c/f;->b()V
    :try_end_65e
    .catch Ljava/io/IOException; {:try_start_659 .. :try_end_65e} :catch_65f

    goto :goto_66c

    :catch_65f
    move-exception v0

    move-object v3, v0

    .line 338
    iget-object v4, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    .line 49189
    invoke-virtual {v4, v3}, Lcom/liulishuo/filedownloader/c/f;->a(Ljava/lang/Exception;)V

    goto :goto_66c

    .line 331
    :cond_667
    iget-object v3, v1, Lcom/liulishuo/filedownloader/c/d;->a:Lcom/liulishuo/filedownloader/c/f;

    .line 48185
    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/c/f;->d()V

    .line 342
    :goto_66c
    iget-object v1, v1, Lcom/liulishuo/filedownloader/c/d;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v2
.end method
