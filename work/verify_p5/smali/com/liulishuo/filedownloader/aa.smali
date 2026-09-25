.class public final Lcom/liulishuo/filedownloader/aa;
.super Lcom/liulishuo/filedownloader/e;
.source "LostServiceConnectedHandler.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/w;


# instance fields
.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/liulishuo/filedownloader/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/e;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/aa;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 38
    invoke-static {}, Lcom/liulishuo/filedownloader/s;->a()Lcom/liulishuo/filedownloader/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/s;->d()Lcom/liulishuo/filedownloader/x;

    move-result-object v0

    .line 41
    sget-boolean v1, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "The downloader service is connected."

    const/4 v2, 0x0

    .line 42
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/aa;->b:Ljava/util/ArrayList;

    monitor-enter v1

    .line 47
    :try_start_0
    iget-object v2, p0, Lcom/liulishuo/filedownloader/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 48
    iget-object p0, p0, Lcom/liulishuo/filedownloader/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 50
    new-instance p0, Ljava/util/ArrayList;

    .line 51
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/x;->b()I

    move-result v3

    invoke-direct {p0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liulishuo/filedownloader/a$a;

    .line 54
    invoke-interface {v3}, Lcom/liulishuo/filedownloader/a$a;->K()I

    move-result v4

    .line 55
    invoke-interface {v0, v4}, Lcom/liulishuo/filedownloader/x;->a(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 56
    invoke-interface {v3}, Lcom/liulishuo/filedownloader/a$a;->H()Lcom/liulishuo/filedownloader/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/liulishuo/filedownloader/a;->g()Lcom/liulishuo/filedownloader/a$b;

    move-result-object v3

    invoke-interface {v3}, Lcom/liulishuo/filedownloader/a$b;->a()I

    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 59
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    :cond_2
    invoke-interface {v3}, Lcom/liulishuo/filedownloader/a$a;->P()V

    goto :goto_0

    .line 68
    :cond_3
    invoke-interface {v0, p0}, Lcom/liulishuo/filedownloader/x;->a(Ljava/util/List;)V

    .line 69
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final a(Lcom/liulishuo/filedownloader/a$a;)Z
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/liulishuo/filedownloader/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/liulishuo/filedownloader/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b()V
    .locals 9

    .line 1062
    iget v0, p0, Lcom/liulishuo/filedownloader/e;->a:I

    .line 75
    sget v1, Lcom/liulishuo/filedownloader/d/b$a;->lost$bef08b2:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_6

    .line 77
    invoke-static {}, Lcom/liulishuo/filedownloader/s;->a()Lcom/liulishuo/filedownloader/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/s;->d()Lcom/liulishuo/filedownloader/x;

    move-result-object v0

    .line 79
    sget-boolean v1, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "lost the connection to the file download service, and current active task size is %d"

    .line 80
    new-array v2, v2, [Ljava/lang/Object;

    .line 2038
    invoke-static {}, Lcom/liulishuo/filedownloader/h$a;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object v4

    .line 2052
    iget-object v4, v4, Lcom/liulishuo/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 82
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 80
    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3038
    :cond_0
    invoke-static {}, Lcom/liulishuo/filedownloader/h$a;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object v1

    .line 3052
    iget-object v1, v1, Lcom/liulishuo/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 86
    iget-object v1, p0, Lcom/liulishuo/filedownloader/aa;->b:Ljava/util/ArrayList;

    monitor-enter v1

    .line 4038
    :try_start_0
    invoke-static {}, Lcom/liulishuo/filedownloader/h$a;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object v2

    .line 87
    iget-object v4, p0, Lcom/liulishuo/filedownloader/aa;->b:Ljava/util/ArrayList;

    .line 4161
    iget-object v5, v2, Lcom/liulishuo/filedownloader/h;->a:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4162
    :try_start_1
    iget-object v6, v2, Lcom/liulishuo/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/liulishuo/filedownloader/a$a;

    .line 4163
    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 4164
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4167
    :cond_2
    iget-object v2, v2, Lcom/liulishuo/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4168
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :try_start_2
    iget-object v2, p0, Lcom/liulishuo/filedownloader/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liulishuo/filedownloader/a$a;

    .line 89
    invoke-interface {v4}, Lcom/liulishuo/filedownloader/a$a;->O()V

    goto :goto_1

    .line 92
    :cond_3
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/x;->a()V

    .line 93
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 98
    :try_start_3
    invoke-static {}, Lcom/liulishuo/filedownloader/s;->a()Lcom/liulishuo/filedownloader/s;

    .line 4481
    invoke-static {}, Lcom/liulishuo/filedownloader/s;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5043
    invoke-static {}, Lcom/liulishuo/filedownloader/n$a;->a()Lcom/liulishuo/filedownloader/n;

    move-result-object v0

    .line 5051
    sget-object v1, Lcom/liulishuo/filedownloader/h/c;->a:Landroid/content/Context;

    .line 4483
    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/n;->a(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_4
    return-void

    :catch_0
    const-string v0, "restart service failed, you may need to restart downloading manually when the app comes back to foreground"

    .line 100
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/h/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 4168
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0

    :catchall_1
    move-exception p0

    .line 93
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :cond_5
    :goto_2
    return-void

    .line 6038
    :cond_6
    invoke-static {}, Lcom/liulishuo/filedownloader/h$a;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object v0

    .line 6052
    iget-object v0, v0, Lcom/liulishuo/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    const-string v0, "file download service has be unbound but the size of active tasks are not empty %d "

    .line 107
    new-array v1, v2, [Ljava/lang/Object;

    .line 7038
    invoke-static {}, Lcom/liulishuo/filedownloader/h$a;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object v2

    .line 7052
    iget-object v2, v2, Lcom/liulishuo/filedownloader/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 109
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 107
    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/h/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public final b(Lcom/liulishuo/filedownloader/a$a;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/liulishuo/filedownloader/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/liulishuo/filedownloader/aa;->b:Ljava/util/ArrayList;

    monitor-enter v0

    .line 123
    :try_start_0
    iget-object p0, p0, Lcom/liulishuo/filedownloader/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 124
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method public final c(Lcom/liulishuo/filedownloader/a$a;)Z
    .locals 6

    .line 130
    invoke-static {}, Lcom/liulishuo/filedownloader/s;->a()Lcom/liulishuo/filedownloader/s;

    invoke-static {}, Lcom/liulishuo/filedownloader/s;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 131
    iget-object v0, p0, Lcom/liulishuo/filedownloader/aa;->b:Ljava/util/ArrayList;

    monitor-enter v0

    .line 132
    :try_start_0
    invoke-static {}, Lcom/liulishuo/filedownloader/s;->a()Lcom/liulishuo/filedownloader/s;

    invoke-static {}, Lcom/liulishuo/filedownloader/s;->b()Z

    move-result v2

    if-nez v2, :cond_2

    .line 133
    sget-boolean v2, Lcom/liulishuo/filedownloader/h/d;->a:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const-string v2, "Waiting for connecting with the downloader service... %d"

    .line 134
    new-array v4, v3, [Ljava/lang/Object;

    .line 135
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/a$a;->H()Lcom/liulishuo/filedownloader/a;

    move-result-object v5

    invoke-interface {v5}, Lcom/liulishuo/filedownloader/a;->l()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    .line 134
    invoke-static {p0, v2, v4}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8043
    :cond_0
    invoke-static {}, Lcom/liulishuo/filedownloader/n$a;->a()Lcom/liulishuo/filedownloader/n;

    move-result-object v1

    .line 8051
    sget-object v2, Lcom/liulishuo/filedownloader/h/c;->a:Landroid/content/Context;

    .line 138
    invoke-virtual {v1, v2}, Lcom/liulishuo/filedownloader/n;->a(Landroid/content/Context;)V

    .line 139
    iget-object v1, p0, Lcom/liulishuo/filedownloader/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/a$a;->O()V

    .line 141
    iget-object p0, p0, Lcom/liulishuo/filedownloader/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_1
    monitor-exit v0

    return v3

    .line 145
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 148
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/aa;->b(Lcom/liulishuo/filedownloader/a$a;)V

    return v1
.end method
