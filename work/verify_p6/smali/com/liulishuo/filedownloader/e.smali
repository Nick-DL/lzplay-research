.class public abstract Lcom/liulishuo/filedownloader/e;
.super Lcom/liulishuo/filedownloader/d/d;
.source "FileDownloadConnectListener.java"


# instance fields
.field a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/d/d;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final a(Lcom/liulishuo/filedownloader/d/c;)Z
    .locals 1

    .line 37
    instance-of v0, p1, Lcom/liulishuo/filedownloader/d/b;

    if-eqz v0, :cond_1

    .line 38
    check-cast p1, Lcom/liulishuo/filedownloader/d/b;

    .line 1043
    iget p1, p1, Lcom/liulishuo/filedownloader/d/b;->a:I

    .line 40
    iput p1, p0, Lcom/liulishuo/filedownloader/e;->a:I

    .line 42
    iget p1, p0, Lcom/liulishuo/filedownloader/e;->a:I

    sget v0, Lcom/liulishuo/filedownloader/d/b$a;->connected$bef08b2:I

    if-ne p1, v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/e;->a()V

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/e;->b()V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract b()V
.end method
