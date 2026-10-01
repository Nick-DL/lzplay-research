.class public final Lcom/liulishuo/filedownloader/e/d;
.super Ljava/io/IOException;
.source "FileDownloadOutOfSpaceException.java"


# instance fields
.field private breakpointBytes:J

.field private freeSpaceBytes:J

.field private requiredSpaceBytes:J


# direct methods
.method public constructor <init>(JJJ)V
    .registers 11

    const-string v0, "The file is too large to store, breakpoint in bytes:  %d, required space in bytes: %d, but free space in bytes: %d"

    const/4 v1, 0x3

    .line 54
    new-array v1, v1, [Ljava/lang/Object;

    .line 56
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 54
    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-direct/range {p0 .. p6}, Lcom/liulishuo/filedownloader/e/d;->a(JJJ)V

    return-void
.end method

.method public constructor <init>(JJJLjava/lang/Throwable;)V
    .registers 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    const-string v0, "The file is too large to store, breakpoint in bytes:  %d, required space in bytes: %d, but free space in bytes: %d"

    const/4 v1, 0x3

    .line 45
    new-array v1, v1, [Ljava/lang/Object;

    .line 47
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 45
    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p7}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    invoke-direct/range {p0 .. p6}, Lcom/liulishuo/filedownloader/e/d;->a(JJJ)V

    return-void
.end method

.method private a(JJJ)V
    .registers 7

    .line 63
    iput-wide p1, p0, Lcom/liulishuo/filedownloader/e/d;->freeSpaceBytes:J

    .line 64
    iput-wide p3, p0, Lcom/liulishuo/filedownloader/e/d;->requiredSpaceBytes:J

    .line 65
    iput-wide p5, p0, Lcom/liulishuo/filedownloader/e/d;->breakpointBytes:J

    return-void
.end method


# virtual methods
.method public final getBreakpointBytes()J
    .registers 3

    .line 89
    iget-wide v0, p0, Lcom/liulishuo/filedownloader/e/d;->breakpointBytes:J

    return-wide v0
.end method

.method public final getFreeSpaceBytes()J
    .registers 3

    .line 72
    iget-wide v0, p0, Lcom/liulishuo/filedownloader/e/d;->freeSpaceBytes:J

    return-wide v0
.end method

.method public final getRequiredSpaceBytes()J
    .registers 3

    .line 79
    iget-wide v0, p0, Lcom/liulishuo/filedownloader/e/d;->requiredSpaceBytes:J

    return-wide v0
.end method
