.class public Lcom/liulishuo/filedownloader/message/BlockCompleteMessage$BlockCompleteMessageImpl;
.super Lcom/liulishuo/filedownloader/message/MessageSnapshot;
.source "BlockCompleteMessage.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/message/BlockCompleteMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/message/BlockCompleteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockCompleteMessageImpl"
.end annotation


# instance fields
.field private final c:Lcom/liulishuo/filedownloader/message/MessageSnapshot;


# direct methods
.method public constructor <init>(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 3

    .line 1038
    iget v0, p1, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->a:I

    .line 37
    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;-><init>(I)V

    .line 38
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b()B

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    .line 43
    iput-object p1, p0, Lcom/liulishuo/filedownloader/message/BlockCompleteMessage$BlockCompleteMessageImpl;->c:Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    return-void

    .line 39
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2038
    iget v2, p1, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->a:I

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "can\'t create the block complete message for id[%d], status[%d]"

    .line 39
    invoke-static {p1, v0}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b()B
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public final d_()Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/liulishuo/filedownloader/message/BlockCompleteMessage$BlockCompleteMessageImpl;->c:Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    return-object p0
.end method
