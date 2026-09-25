.class public final Lcom/liulishuo/filedownloader/b;
.super Ljava/lang/Object;
.source "DownloadSpeedMonitor.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/t$a;
.implements Lcom/liulishuo/filedownloader/t$b;


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:J

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 37
    iput v0, p0, Lcom/liulishuo/filedownloader/b;->f:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    .line 92
    iput v0, p0, Lcom/liulishuo/filedownloader/b;->e:I

    const-wide/16 v0, 0x0

    .line 93
    iput-wide v0, p0, Lcom/liulishuo/filedownloader/b;->a:J

    return-void
.end method

.method public final a(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/liulishuo/filedownloader/b;->f:I

    return-void
.end method

.method public final a(J)V
    .locals 2

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/b;->d:J

    .line 42
    iput-wide p1, p0, Lcom/liulishuo/filedownloader/b;->c:J

    return-void
.end method

.method public final b(J)V
    .locals 6

    .line 47
    iget-wide v0, p0, Lcom/liulishuo/filedownloader/b;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    .line 51
    :cond_0
    iget-wide v0, p0, Lcom/liulishuo/filedownloader/b;->c:J

    sub-long/2addr p1, v0

    .line 52
    iput-wide v2, p0, Lcom/liulishuo/filedownloader/b;->a:J

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/liulishuo/filedownloader/b;->d:J

    sub-long/2addr v0, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    long-to-int p1, p1

    .line 55
    iput p1, p0, Lcom/liulishuo/filedownloader/b;->e:I

    return-void

    .line 57
    :cond_1
    div-long/2addr p1, v0

    long-to-int p1, p1

    iput p1, p0, Lcom/liulishuo/filedownloader/b;->e:I

    return-void
.end method

.method public final c(J)V
    .locals 9

    .line 63
    iget v0, p0, Lcom/liulishuo/filedownloader/b;->f:I

    if-gtz v0, :cond_0

    return-void

    .line 69
    :cond_0
    iget-wide v0, p0, Lcom/liulishuo/filedownloader/b;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    .line 74
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/liulishuo/filedownloader/b;->a:J

    sub-long/2addr v5, v7

    .line 75
    iget v0, p0, Lcom/liulishuo/filedownloader/b;->f:I

    int-to-long v7, v0

    cmp-long v0, v5, v7

    if-gez v0, :cond_3

    iget v0, p0, Lcom/liulishuo/filedownloader/b;->e:I

    if-nez v0, :cond_2

    cmp-long v0, v5, v2

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_1

    .line 76
    :cond_3
    :goto_0
    iget-wide v2, p0, Lcom/liulishuo/filedownloader/b;->b:J

    sub-long v2, p1, v2

    div-long/2addr v2, v5

    long-to-int v0, v2

    iput v0, p0, Lcom/liulishuo/filedownloader/b;->e:I

    .line 77
    iget v0, p0, Lcom/liulishuo/filedownloader/b;->e:I

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/liulishuo/filedownloader/b;->e:I

    :goto_1
    if-eqz v1, :cond_4

    .line 84
    iput-wide p1, p0, Lcom/liulishuo/filedownloader/b;->b:J

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/liulishuo/filedownloader/b;->a:J

    :cond_4
    return-void
.end method
