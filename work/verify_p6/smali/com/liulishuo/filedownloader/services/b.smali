.class public final Lcom/liulishuo/filedownloader/services/b;
.super Ljava/lang/Object;
.source "DefaultIdGenerator.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/h/c$d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2, p3}, Lcom/liulishuo/filedownloader/services/b;->b(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 2

    const/4 p0, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eqz p3, :cond_0

    const-string p3, "%sp%s@dir"

    .line 38
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    aput-object p2, v1, p0

    invoke-static {p3, v1}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/liulishuo/filedownloader/h/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0

    :cond_0
    const-string p3, "%sp%s"

    .line 40
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    aput-object p2, v1, p0

    invoke-static {p3, v1}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/liulishuo/filedownloader/h/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method
