.class public abstract Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot;
.super Lcom/liulishuo/filedownloader/message/MessageSnapshot;
.source "SmallMessageSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$PausedSnapshot;,
        Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$WarnMessageSnapshot;,
        Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$WarnFlowDirectlySnapshot;,
        Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$RetryMessageSnapshot;,
        Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot;,
        Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedSnapshot;,
        Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedFlowDirectlySnapshot;,
        Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ProgressMessageSnapshot;,
        Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$ConnectedMessageSnapshot;,
        Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$PendingMessageSnapshot;
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;-><init>(I)V

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot;->b:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final d()J
    .locals 2

    .line 42
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot;->c()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public final i()J
    .locals 2

    .line 47
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot;->a()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method
