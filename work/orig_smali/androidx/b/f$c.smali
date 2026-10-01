.class final Landroidx/b/f$c;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/b/f;


# direct methods
.method constructor <init>(Landroidx/b/f;)V
    .registers 2

    .line 269
    iput-object p1, p0, Landroidx/b/f$c;->a:Landroidx/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 273
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TK;>;)Z"
        }
    .end annotation

    .line 278
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final clear()V
    .registers 1

    .line 283
    iget-object p0, p0, Landroidx/b/f$c;->a:Landroidx/b/f;

    invoke-virtual {p0}, Landroidx/b/f;->c()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 2

    .line 288
    iget-object p0, p0, Landroidx/b/f$c;->a:Landroidx/b/f;

    invoke-virtual {p0, p1}, Landroidx/b/f;->a(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 293
    iget-object p0, p0, Landroidx/b/f$c;->a:Landroidx/b/f;

    invoke-virtual {p0}, Landroidx/b/f;->b()Ljava/util/Map;

    move-result-object p0

    .line 1459
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1460
    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1461
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_1c
    const/4 p0, 0x1

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 343
    invoke-static {p0, p1}, Landroidx/b/f;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 5

    .line 349
    iget-object v0, p0, Landroidx/b/f$c;->a:Landroidx/b/f;

    invoke-virtual {v0}, Landroidx/b/f;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ltz v0, :cond_1e

    .line 350
    iget-object v3, p0, Landroidx/b/f$c;->a:Landroidx/b/f;

    invoke-virtual {v3, v0, v1}, Landroidx/b/f;->a(II)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_16

    move v3, v1

    goto :goto_1a

    .line 351
    :cond_16
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1a
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_1e
    return v2
.end method

.method public final isEmpty()Z
    .registers 1

    .line 298
    iget-object p0, p0, Landroidx/b/f$c;->a:Landroidx/b/f;

    invoke-virtual {p0}, Landroidx/b/f;->a()I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 303
    new-instance v0, Landroidx/b/f$a;

    iget-object p0, p0, Landroidx/b/f$c;->a:Landroidx/b/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/b/f$a;-><init>(Landroidx/b/f;I)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 3

    .line 308
    iget-object v0, p0, Landroidx/b/f$c;->a:Landroidx/b/f;

    invoke-virtual {v0, p1}, Landroidx/b/f;->a(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_f

    .line 310
    iget-object p0, p0, Landroidx/b/f$c;->a:Landroidx/b/f;

    invoke-virtual {p0, p1}, Landroidx/b/f;->a(I)V

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 318
    iget-object p0, p0, Landroidx/b/f$c;->a:Landroidx/b/f;

    invoke-virtual {p0}, Landroidx/b/f;->b()Ljava/util/Map;

    move-result-object p0

    .line 1469
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    .line 1470
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1471
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1472
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 1474
    :cond_1c
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-eq v0, p0, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 323
    iget-object p0, p0, Landroidx/b/f$c;->a:Landroidx/b/f;

    invoke-virtual {p0}, Landroidx/b/f;->b()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/b/f;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final size()I
    .registers 1

    .line 328
    iget-object p0, p0, Landroidx/b/f$c;->a:Landroidx/b/f;

    invoke-virtual {p0}, Landroidx/b/f;->a()I

    move-result p0

    return p0
.end method

.method public final toArray()[Ljava/lang/Object;
    .registers 2

    .line 333
    iget-object p0, p0, Landroidx/b/f$c;->a:Landroidx/b/f;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/b/f;->b(I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 338
    iget-object p0, p0, Landroidx/b/f$c;->a:Landroidx/b/f;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/b/f;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
