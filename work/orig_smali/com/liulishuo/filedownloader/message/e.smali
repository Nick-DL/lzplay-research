.class public final Lcom/liulishuo/filedownloader/message/e;
.super Ljava/lang/Object;
.source "MessageSnapshotThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/message/e$a;
    }
.end annotation


# instance fields
.field final a:Lcom/liulishuo/filedownloader/message/c$b;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/message/e$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/liulishuo/filedownloader/message/c$b;)V
    .registers 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/liulishuo/filedownloader/message/e;->a:Lcom/liulishuo/filedownloader/message/c$b;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/liulishuo/filedownloader/message/e;->b:Ljava/util/List;

    const/4 p1, 0x0

    :goto_d
    const/4 v0, 0x5

    if-ge p1, v0, :cond_1d

    .line 39
    iget-object v0, p0, Lcom/liulishuo/filedownloader/message/e;->b:Ljava/util/List;

    new-instance v1, Lcom/liulishuo/filedownloader/message/e$a;

    invoke-direct {v1, p0, p1}, Lcom/liulishuo/filedownloader/message/e$a;-><init>(Lcom/liulishuo/filedownloader/message/e;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    :cond_1d
    return-void
.end method


# virtual methods
.method public final a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .registers 9

    const/4 v0, 0x0

    .line 46
    :try_start_1
    iget-object v1, p0, Lcom/liulishuo/filedownloader/message/e;->b:Ljava/util/List;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_61

    .line 1038
    :try_start_4
    iget v2, p1, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->a:I

    .line 50
    iget-object v3, p0, Lcom/liulishuo/filedownloader/message/e;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liulishuo/filedownloader/message/e$a;

    .line 1084
    iget-object v5, v4, Lcom/liulishuo/filedownloader/message/e$a;->a:Ljava/util/List;

    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    move-object v0, v4

    :cond_25
    if-nez v0, :cond_56

    const/4 v3, 0x0

    .line 61
    iget-object p0, p0, Lcom/liulishuo/filedownloader/message/e;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2e
    :goto_2e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liulishuo/filedownloader/message/e$a;

    .line 2084
    iget-object v5, v4, Lcom/liulishuo/filedownloader/message/e$a;->a:Ljava/util/List;

    .line 62
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_44

    move-object v0, v4

    goto :goto_56

    :cond_44
    if-eqz v3, :cond_4e

    .line 3084
    iget-object v5, v4, Lcom/liulishuo/filedownloader/message/e$a;->a:Ljava/util/List;

    .line 68
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v3, :cond_2e

    .line 4084
    :cond_4e
    iget-object v3, v4, Lcom/liulishuo/filedownloader/message/e$a;->a:Ljava/util/List;

    .line 69
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move-object v0, v4

    goto :goto_2e

    .line 76
    :cond_56
    :goto_56
    invoke-virtual {v0, v2}, Lcom/liulishuo/filedownloader/message/e$a;->a(I)V

    .line 77
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_4 .. :try_end_5a} :catchall_5e

    .line 80
    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/message/e$a;->a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    return-void

    :catchall_5e
    move-exception p0

    .line 77
    :try_start_5f
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    :try_start_60
    throw p0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_61

    :catchall_61
    move-exception p0

    .line 80
    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/message/e$a;->a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    throw p0
.end method
