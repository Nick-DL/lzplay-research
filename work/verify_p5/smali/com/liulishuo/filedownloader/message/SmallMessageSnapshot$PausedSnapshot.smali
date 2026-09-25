.class public Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$PausedSnapshot;
.super Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$PendingMessageSnapshot;
.source "SmallMessageSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PausedSnapshot"
.end annotation


# direct methods
.method constructor <init>(III)V
    .locals 0

    .line 374
    invoke-direct {p0, p1, p2, p3}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$PendingMessageSnapshot;-><init>(III)V

    return-void
.end method


# virtual methods
.method public final b()B
    .locals 0

    const/4 p0, -0x2

    return p0
.end method
