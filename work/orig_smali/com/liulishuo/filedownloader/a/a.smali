.class public final Lcom/liulishuo/filedownloader/a/a;
.super Ljava/lang/Object;
.source "DefaultConnectionCountAdapter.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/h/c$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)I
    .registers 5

    const-wide/32 v0, 0x100000

    cmp-long p0, p1, v0

    if-gez p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const-wide/32 v0, 0x500000

    cmp-long p0, p1, v0

    if-gez p0, :cond_12

    const/4 p0, 0x2

    return p0

    :cond_12
    const-wide/32 v0, 0x3200000

    cmp-long p0, p1, v0

    if-gez p0, :cond_1b

    const/4 p0, 0x3

    return p0

    :cond_1b
    const-wide/32 v0, 0x6400000

    cmp-long p0, p1, v0

    if-gez p0, :cond_24

    const/4 p0, 0x4

    return p0

    :cond_24
    const/4 p0, 0x5

    return p0
.end method
