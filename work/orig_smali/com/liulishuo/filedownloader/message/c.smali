.class public final Lcom/liulishuo/filedownloader/message/c;
.super Ljava/lang/Object;
.source "MessageSnapshotFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/message/c$b;,
        Lcom/liulishuo/filedownloader/message/c$a;
    }
.end annotation


# instance fields
.field private volatile a:Lcom/liulishuo/filedownloader/message/e;

.field private volatile b:Lcom/liulishuo/filedownloader/message/c$b;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .registers 3

    .line 47
    instance-of v0, p1, Lcom/liulishuo/filedownloader/message/a;

    if-eqz v0, :cond_e

    .line 48
    iget-object v0, p0, Lcom/liulishuo/filedownloader/message/c;->b:Lcom/liulishuo/filedownloader/message/c$b;

    if-eqz v0, :cond_17

    .line 49
    iget-object p0, p0, Lcom/liulishuo/filedownloader/message/c;->b:Lcom/liulishuo/filedownloader/message/c$b;

    invoke-interface {p0, p1}, Lcom/liulishuo/filedownloader/message/c$b;->a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void

    .line 52
    :cond_e
    iget-object v0, p0, Lcom/liulishuo/filedownloader/message/c;->a:Lcom/liulishuo/filedownloader/message/e;

    if-eqz v0, :cond_17

    .line 53
    iget-object p0, p0, Lcom/liulishuo/filedownloader/message/c;->a:Lcom/liulishuo/filedownloader/message/e;

    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/message/e;->a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    :cond_17
    return-void
.end method

.method public final a(Lcom/liulishuo/filedownloader/message/c$b;)V
    .registers 3

    .line 38
    iput-object p1, p0, Lcom/liulishuo/filedownloader/message/c;->b:Lcom/liulishuo/filedownloader/message/c$b;

    .line 42
    new-instance v0, Lcom/liulishuo/filedownloader/message/e;

    invoke-direct {v0, p1}, Lcom/liulishuo/filedownloader/message/e;-><init>(Lcom/liulishuo/filedownloader/message/c$b;)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/message/c;->a:Lcom/liulishuo/filedownloader/message/e;

    return-void
.end method
