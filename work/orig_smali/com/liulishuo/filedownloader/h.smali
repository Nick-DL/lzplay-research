.class public final Lcom/liulishuo/filedownloader/h;
.super Ljava/lang/Object;
.source "FileDownloadList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/h$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/liulishuo/filedownloader/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/h;->a:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .line 31
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/h;-><init>()V

    return-void
.end method


# virtual methods
.method final a(I)I
    .registers 5

    .line 61
    iget-object v0, p0, Lcom/liulishuo/filedownloader/h;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 62
    :try_start_3
    iget-object p0, p0, Lcom/liulishuo/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_a
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liulishuo/filedownloader/a$a;

    .line 63
    invoke-interface {v2, p1}, Lcom/liulishuo/filedownloader/a$a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_a

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 67
    :cond_1f
    monitor-exit v0

    return v1

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method final a(Lcom/liulishuo/filedownloader/a$a;)Z
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/liulishuo/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/liulishuo/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public final a(Lcom/liulishuo/filedownloader/a$a;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z
    .registers 11

    .line 176
    invoke-virtual {p2}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b()B

    move-result v0

    .line 178
    iget-object v1, p0, Lcom/liulishuo/filedownloader/h;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 179
    :try_start_7
    iget-object v2, p0, Lcom/liulishuo/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 180
    iget-object v3, p0, Lcom/liulishuo/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_27

    .line 1043
    invoke-static {}, Lcom/liulishuo/filedownloader/n$a;->a()Lcom/liulishuo/filedownloader/n;

    move-result-object v3

    .line 181
    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/n;->b()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 182
    invoke-static {}, Lcom/liulishuo/filedownloader/s;->a()Lcom/liulishuo/filedownloader/s;

    invoke-static {}, Lcom/liulishuo/filedownloader/s;->c()V

    .line 185
    :cond_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_85

    .line 186
    sget-boolean v1, Lcom/liulishuo/filedownloader/h/d;->a:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_53

    .line 187
    iget-object v1, p0, Lcom/liulishuo/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_53

    const-string v1, "remove %s left %d %d"

    const/4 v6, 0x3

    .line 188
    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v5

    .line 189
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v4

    iget-object v7, p0, Lcom/liulishuo/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    .line 188
    invoke-static {p0, v1, v6}, Lcom/liulishuo/filedownloader/h/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_53
    if-eqz v2, :cond_75

    .line 194
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/a$a;->I()Lcom/liulishuo/filedownloader/y$a;

    move-result-object p0

    .line 195
    invoke-interface {p0}, Lcom/liulishuo/filedownloader/y$a;->c()Lcom/liulishuo/filedownloader/u;

    move-result-object p0

    packed-switch v0, :pswitch_data_88

    goto :goto_84

    .line 202
    :pswitch_61
    invoke-interface {p0, p2}, Lcom/liulishuo/filedownloader/u;->h(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto :goto_84

    .line 205
    :pswitch_65
    invoke-interface {p0, p2}, Lcom/liulishuo/filedownloader/u;->i(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto :goto_84

    .line 209
    :pswitch_69
    invoke-static {p2}, Lcom/liulishuo/filedownloader/message/d;->a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/liulishuo/filedownloader/u;->e(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto :goto_84

    .line 199
    :pswitch_71
    invoke-interface {p0, p2}, Lcom/liulishuo/filedownloader/u;->g(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto :goto_84

    :cond_75
    const-string p2, "remove error, not exist: %s %d"

    .line 215
    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v5

    .line 216
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v1, v4

    .line 215
    invoke-static {p0, p2, v1}, Lcom/liulishuo/filedownloader/h/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_84
    return v2

    :catchall_85
    move-exception p0

    .line 185
    :try_start_86
    monitor-exit v1
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw p0

    :pswitch_data_88
    .packed-switch -0x4
        :pswitch_71
        :pswitch_69
        :pswitch_65
        :pswitch_61
    .end packed-switch
.end method

.method final b(I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/a$a;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    iget-object v1, p0, Lcom/liulishuo/filedownloader/h;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 86
    :try_start_8
    iget-object p0, p0, Lcom/liulishuo/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liulishuo/filedownloader/a$a;

    .line 87
    invoke-interface {v2, p1}, Lcom/liulishuo/filedownloader/a$a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Lcom/liulishuo/filedownloader/a$a;->J()Z

    move-result v3

    if-nez v3, :cond_e

    .line 89
    invoke-interface {v2}, Lcom/liulishuo/filedownloader/a$a;->H()Lcom/liulishuo/filedownloader/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/liulishuo/filedownloader/a;->y()B

    move-result v3

    if-eqz v3, :cond_e

    const/16 v4, 0xa

    if-eq v3, v4, :cond_e

    .line 92
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 96
    :cond_38
    monitor-exit v1

    return-object v0

    :catchall_3a
    move-exception p0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_8 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method final b(Lcom/liulishuo/filedownloader/a$a;)V
    .registers 3

    .line 223
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/a$a;->H()Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->i()Z

    move-result v0

    if-nez v0, :cond_d

    .line 227
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/a$a;->L()V

    .line 230
    :cond_d
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/a$a;->I()Lcom/liulishuo/filedownloader/y$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/y$a;->c()Lcom/liulishuo/filedownloader/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/u;->a()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 231
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/h;->c(Lcom/liulishuo/filedownloader/a$a;)V

    :cond_1e
    return-void
.end method

.method final c(Lcom/liulishuo/filedownloader/a$a;)V
    .registers 7

    .line 241
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/a$a;->M()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 245
    :cond_7
    iget-object v0, p0, Lcom/liulishuo/filedownloader/h;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 246
    :try_start_a
    iget-object v1, p0, Lcom/liulishuo/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    const-string v1, "already has %s"

    .line 247
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {p0, v1, v3}, Lcom/liulishuo/filedownloader/h/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4f

    .line 249
    :cond_1e
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/a$a;->N()V

    .line 250
    iget-object v1, p0, Lcom/liulishuo/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    sget-boolean v1, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v1, :cond_4f

    const-string v1, "add list in all %s %d %d"

    const/4 v4, 0x3

    .line 252
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    .line 253
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/a$a;->H()Lcom/liulishuo/filedownloader/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/a;->y()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v4, v3

    const/4 p1, 0x2

    iget-object v2, p0, Lcom/liulishuo/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, p1

    .line 252
    invoke-static {p0, v1, v4}, Lcom/liulishuo/filedownloader/h/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    :cond_4f
    :goto_4f
    monitor-exit v0

    return-void

    :catchall_51
    move-exception p0

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_a .. :try_end_53} :catchall_51

    throw p0
.end method
