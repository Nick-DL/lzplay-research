.class public Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$PausedSnapshot;
.super Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$PendingMessageSnapshot;
.source "LargeMessageSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PausedSnapshot"
.end annotation


# direct methods
.method constructor <init>(IJJ)V
    .locals 0

    .line 386
    invoke-direct/range {p0 .. p5}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$PendingMessageSnapshot;-><init>(IJJ)V

    return-void
.end method


# virtual methods
.method public final b()B
    .locals 0

    const/4 p0, -0x2

    return p0
.end method
