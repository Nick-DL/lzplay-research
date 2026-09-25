.class public final Lcom/liulishuo/filedownloader/h/c;
.super Ljava/lang/Object;
.source "FileDownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/h/c$b;,
        Lcom/liulishuo/filedownloader/h/c$e;,
        Lcom/liulishuo/filedownloader/h/c$c;,
        Lcom/liulishuo/filedownloader/h/c$a;,
        Lcom/liulishuo/filedownloader/h/c$d;
    }
.end annotation


# static fields
.field public static a:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public static a(IJLjava/lang/String;Ljava/lang/String;Lcom/liulishuo/filedownloader/z;)Z
    .locals 2

    if-eqz p4, :cond_0

    if-eqz p3, :cond_0

    .line 256
    invoke-interface {p5, p3, p0}, Lcom/liulishuo/filedownloader/z;->a(Ljava/lang/String;I)I

    move-result p5

    if-eqz p5, :cond_0

    .line 3034
    invoke-static {}, Lcom/liulishuo/filedownloader/message/c$a;->a()Lcom/liulishuo/filedownloader/message/c;

    move-result-object v0

    .line 258
    new-instance v1, Lcom/liulishuo/filedownloader/e/f;

    invoke-direct {v1, p5, p3, p4}, Lcom/liulishuo/filedownloader/e/f;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-static {p0, p1, p2, v1}, Lcom/liulishuo/filedownloader/message/d;->a(IJLjava/lang/Throwable;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/liulishuo/filedownloader/message/c;->a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(ILcom/liulishuo/filedownloader/model/FileDownloadModel;Lcom/liulishuo/filedownloader/z;Z)Z
    .locals 7

    .line 230
    invoke-interface {p2, p1}, Lcom/liulishuo/filedownloader/z;->a(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2034
    invoke-static {}, Lcom/liulishuo/filedownloader/message/c$a;->a()Lcom/liulishuo/filedownloader/message/c;

    move-result-object p2

    .line 2155
    iget-object v0, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 2159
    iget-wide v4, p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g:J

    move v1, p0

    move v6, p3

    .line 232
    invoke-static/range {v1 .. v6}, Lcom/liulishuo/filedownloader/message/d;->a(IJJZ)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/liulishuo/filedownloader/message/c;->a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(ILjava/lang/String;ZZ)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    .line 207
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1034
    invoke-static {}, Lcom/liulishuo/filedownloader/message/c$a;->a()Lcom/liulishuo/filedownloader/message/c;

    move-result-object p1

    .line 210
    invoke-static {p0, p2, p3}, Lcom/liulishuo/filedownloader/message/d;->a(ILjava/io/File;Z)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object p0

    .line 209
    invoke-virtual {p1, p0}, Lcom/liulishuo/filedownloader/message/c;->a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method
