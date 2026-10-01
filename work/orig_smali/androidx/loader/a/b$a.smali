.class public final Landroidx/loader/a/b$a;
.super Landroidx/lifecycle/m;
.source "LoaderManagerImpl.java"

# interfaces
.implements Landroidx/loader/b/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/m<",
        "TD;>;",
        "Landroidx/loader/b/a$b<",
        "TD;>;"
    }
.end annotation


# instance fields
.field final g:I

.field final h:Landroid/os/Bundle;

.field final i:Landroidx/loader/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/b/a<",
            "TD;>;"
        }
    .end annotation
.end field

.field j:Landroidx/loader/a/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/a/b$b<",
            "TD;>;"
        }
    .end annotation
.end field

.field private k:Landroidx/lifecycle/h;

.field private l:Landroidx/loader/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/b/a<",
            "TD;>;"
        }
    .end annotation
.end field


# virtual methods
.method public final a()V
    .registers 4

    .line 76
    sget-boolean v0, Landroidx/loader/a/b;->a:Z

    if-eqz v0, :cond_13

    const-string v0, "LoaderManager"

    const-string v1, "  Starting: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_13
    iget-object p0, p0, Landroidx/loader/a/b$a;->i:Landroidx/loader/b/a;

    const/4 v0, 0x1

    .line 1282
    iput-boolean v0, p0, Landroidx/loader/b/a;->d:Z

    const/4 v0, 0x0

    .line 1283
    iput-boolean v0, p0, Landroidx/loader/b/a;->f:Z

    .line 1284
    iput-boolean v0, p0, Landroidx/loader/b/a;->e:Z

    return-void
.end method

.method public final a(Landroidx/lifecycle/n;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/n<",
            "-TD;>;)V"
        }
    .end annotation

    .line 134
    invoke-super {p0, p1}, Landroidx/lifecycle/m;->a(Landroidx/lifecycle/n;)V

    const/4 p1, 0x0

    .line 136
    iput-object p1, p0, Landroidx/loader/a/b$a;->k:Landroidx/lifecycle/h;

    .line 137
    iput-object p1, p0, Landroidx/loader/a/b$a;->j:Landroidx/loader/a/b$b;

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 189
    invoke-super {p0, p1}, Landroidx/lifecycle/m;->a(Ljava/lang/Object;)V

    .line 191
    iget-object p1, p0, Landroidx/loader/a/b$a;->l:Landroidx/loader/b/a;

    if-eqz p1, :cond_f

    .line 192
    iget-object p1, p0, Landroidx/loader/a/b$a;->l:Landroidx/loader/b/a;

    invoke-virtual {p1}, Landroidx/loader/b/a;->a()V

    const/4 p1, 0x0

    .line 193
    iput-object p1, p0, Landroidx/loader/a/b$a;->l:Landroidx/loader/b/a;

    :cond_f
    return-void
.end method

.method public final b()V
    .registers 4

    .line 82
    sget-boolean v0, Landroidx/loader/a/b;->a:Z

    if-eqz v0, :cond_13

    const-string v0, "LoaderManager"

    const-string v1, "  Stopping: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_13
    iget-object p0, p0, Landroidx/loader/a/b$a;->i:Landroidx/loader/b/a;

    const/4 v0, 0x0

    .line 1380
    iput-boolean v0, p0, Landroidx/loader/b/a;->d:Z

    return-void
.end method

.method final c()V
    .registers 5

    .line 111
    iget-object v0, p0, Landroidx/loader/a/b$a;->k:Landroidx/lifecycle/h;

    .line 112
    iget-object v1, p0, Landroidx/loader/a/b$a;->j:Landroidx/loader/a/b$b;

    if-eqz v0, :cond_43

    if-eqz v1, :cond_43

    .line 118
    invoke-super {p0, v1}, Landroidx/lifecycle/m;->a(Landroidx/lifecycle/n;)V

    const-string v2, "observe"

    .line 2171
    invoke-static {v2}, Landroidx/lifecycle/LiveData;->a(Ljava/lang/String;)V

    .line 2172
    invoke-interface {v0}, Landroidx/lifecycle/h;->a()Landroidx/lifecycle/e;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/e;->a()Landroidx/lifecycle/e$b;

    move-result-object v2

    sget-object v3, Landroidx/lifecycle/e$b;->DESTROYED:Landroidx/lifecycle/e$b;

    if-eq v2, v3, :cond_43

    .line 2176
    new-instance v2, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    invoke-direct {v2, p0, v0, v1}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/h;Landroidx/lifecycle/n;)V

    .line 2177
    iget-object p0, p0, Landroidx/lifecycle/LiveData;->c:Landroidx/a/a/b/b;

    invoke-virtual {p0, v1, v2}, Landroidx/a/a/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LiveData$a;

    if-eqz p0, :cond_3a

    .line 2178
    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData$a;->a(Landroidx/lifecycle/h;)Z

    move-result v1

    if-eqz v1, :cond_32

    goto :goto_3a

    .line 2179
    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot add the same observer with different lifecycles"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3a
    :goto_3a
    if-nez p0, :cond_43

    .line 2185
    invoke-interface {v0}, Landroidx/lifecycle/h;->a()Landroidx/lifecycle/e;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/g;)V

    :cond_43
    return-void
.end method

.method final d()Landroidx/loader/b/a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/loader/b/a<",
            "TD;>;"
        }
    .end annotation

    .line 149
    sget-boolean v0, Landroidx/loader/a/b;->a:Z

    if-eqz v0, :cond_13

    const-string v0, "LoaderManager"

    const-string v1, "  Destroying: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_13
    iget-object v0, p0, Landroidx/loader/a/b$a;->i:Landroidx/loader/b/a;

    const/4 v1, 0x1

    .line 2409
    iput-boolean v1, v0, Landroidx/loader/b/a;->e:Z

    .line 154
    iget-object v0, p0, Landroidx/loader/a/b$a;->j:Landroidx/loader/a/b$b;

    if-eqz v0, :cond_3c

    .line 156
    invoke-virtual {p0, v0}, Landroidx/loader/a/b$a;->a(Landroidx/lifecycle/n;)V

    .line 3260
    iget-boolean v1, v0, Landroidx/loader/a/b$b;->b:Z

    if-eqz v1, :cond_3c

    .line 3261
    sget-boolean v1, Landroidx/loader/a/b;->a:Z

    if-eqz v1, :cond_3c

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Resetting: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/loader/a/b$b;->a:Landroidx/loader/b/a;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_3c
    iget-object v0, p0, Landroidx/loader/a/b$a;->i:Landroidx/loader/b/a;

    invoke-virtual {v0, p0}, Landroidx/loader/b/a;->unregisterListener(Landroidx/loader/b/a$b;)V

    .line 164
    iget-object v0, p0, Landroidx/loader/a/b$a;->i:Landroidx/loader/b/a;

    invoke-virtual {v0}, Landroidx/loader/b/a;->a()V

    .line 165
    iget-object p0, p0, Landroidx/loader/a/b$a;->l:Landroidx/loader/b/a;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderInfo{"

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget v1, p0, Landroidx/loader/a/b$a;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-object p0, p0, Landroidx/loader/a/b$a;->i:Landroidx/loader/b/a;

    invoke-static {p0, v0}, Landroidx/core/d/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string p0, "}}"

    .line 206
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
