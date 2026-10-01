.class public final Lcom/liulishuo/filedownloader/c/b;
.super Ljava/lang/Object;
.source "ConnectionProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/c/b$a;
    }
.end annotation


# instance fields
.field final a:J

.field final b:J

.field final c:J

.field final d:J

.field final e:Z

.field final f:Z


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lcom/liulishuo/filedownloader/c/b;->a:J

    .line 46
    iput-wide v0, p0, Lcom/liulishuo/filedownloader/c/b;->b:J

    .line 47
    iput-wide v0, p0, Lcom/liulishuo/filedownloader/c/b;->c:J

    .line 48
    iput-wide v0, p0, Lcom/liulishuo/filedownloader/c/b;->d:J

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/c/b;->e:Z

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/c/b;->f:Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .line 28
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/c/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(C)V
    .registers 12

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    .line 28
    invoke-direct/range {v0 .. v9}, Lcom/liulishuo/filedownloader/c/b;-><init>(JJJJZ)V

    return-void
.end method

.method private constructor <init>(JJJJ)V
    .registers 19

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    .line 56
    invoke-direct/range {v0 .. v9}, Lcom/liulishuo/filedownloader/c/b;-><init>(JJJJZ)V

    return-void
.end method

.method synthetic constructor <init>(JJJJB)V
    .registers 10

    .line 28
    invoke-direct/range {p0 .. p8}, Lcom/liulishuo/filedownloader/c/b;-><init>(JJJJ)V

    return-void
.end method

.method private constructor <init>(JJJJZ)V
    .registers 13

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_d

    cmp-long v0, p5, v0

    if-eqz v0, :cond_f

    :cond_d
    if-nez p9, :cond_1d

    .line 66
    :cond_f
    iput-wide p1, p0, Lcom/liulishuo/filedownloader/c/b;->a:J

    .line 67
    iput-wide p3, p0, Lcom/liulishuo/filedownloader/c/b;->b:J

    .line 68
    iput-wide p5, p0, Lcom/liulishuo/filedownloader/c/b;->c:J

    .line 69
    iput-wide p7, p0, Lcom/liulishuo/filedownloader/c/b;->d:J

    .line 70
    iput-boolean p9, p0, Lcom/liulishuo/filedownloader/c/b;->e:Z

    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lcom/liulishuo/filedownloader/c/b;->f:Z

    return-void

    .line 63
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 5

    const-string v0, "range[%d, %d) current offset[%d]"

    const/4 v1, 0x3

    .line 93
    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/liulishuo/filedownloader/c/b;->a:J

    .line 94
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/liulishuo/filedownloader/c/b;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/liulishuo/filedownloader/c/b;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    .line 93
    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
