.class public final Landroidx/b/a;
.super Landroidx/b/g;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/b/g<",
        "TK;TV;>;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field a:Landroidx/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/f<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Landroidx/b/g;-><init>()V

    return-void
.end method

.method private a()Landroidx/b/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/b/f<",
            "TK;TV;>;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Landroidx/b/a;->a:Landroidx/b/f;

    if-nez v0, :cond_b

    .line 76
    new-instance v0, Landroidx/b/a$1;

    invoke-direct {v0, p0}, Landroidx/b/a$1;-><init>(Landroidx/b/a;)V

    iput-object v0, p0, Landroidx/b/a;->a:Landroidx/b/f;

    .line 123
    :cond_b
    iget-object p0, p0, Landroidx/b/a;->a:Landroidx/b/f;

    return-object p0
.end method


# virtual methods
.method public final entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 182
    invoke-direct {p0}, Landroidx/b/a;->a()Landroidx/b/f;

    move-result-object p0

    .line 1533
    iget-object v0, p0, Landroidx/b/f;->b:Landroidx/b/f$b;

    if-nez v0, :cond_f

    .line 1534
    new-instance v0, Landroidx/b/f$b;

    invoke-direct {v0, p0}, Landroidx/b/f$b;-><init>(Landroidx/b/f;)V

    iput-object v0, p0, Landroidx/b/f;->b:Landroidx/b/f$b;

    .line 1536
    :cond_f
    iget-object p0, p0, Landroidx/b/f;->b:Landroidx/b/f$b;

    return-object p0
.end method

.method public final keySet()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 194
    invoke-direct {p0}, Landroidx/b/a;->a()Landroidx/b/f;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/b/f;->d()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final putAll(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 142
    iget v0, p0, Landroidx/b/a;->h:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 1289
    iget v1, p0, Landroidx/b/g;->h:I

    .line 1290
    iget-object v2, p0, Landroidx/b/g;->f:[I

    array-length v2, v2

    if-ge v2, v0, :cond_29

    .line 1291
    iget-object v2, p0, Landroidx/b/g;->f:[I

    .line 1292
    iget-object v3, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    .line 1293
    invoke-super {p0, v0}, Landroidx/b/g;->a(I)V

    .line 1294
    iget v0, p0, Landroidx/b/g;->h:I

    if-lez v0, :cond_26

    .line 1295
    iget-object v0, p0, Landroidx/b/g;->f:[I

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1296
    iget-object v0, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    shl-int/lit8 v5, v1, 0x1

    invoke-static {v3, v4, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1298
    :cond_26
    invoke-static {v2, v3, v1}, Landroidx/b/g;->a([I[Ljava/lang/Object;I)V

    .line 1300
    :cond_29
    iget v0, p0, Landroidx/b/g;->h:I

    if-ne v0, v1, :cond_4e

    .line 143
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_35
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 144
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    :cond_4d
    return-void

    .line 1301
    :cond_4e
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public final values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 206
    invoke-direct {p0}, Landroidx/b/a;->a()Landroidx/b/f;

    move-result-object p0

    .line 1547
    iget-object v0, p0, Landroidx/b/f;->d:Landroidx/b/f$e;

    if-nez v0, :cond_f

    .line 1548
    new-instance v0, Landroidx/b/f$e;

    invoke-direct {v0, p0}, Landroidx/b/f$e;-><init>(Landroidx/b/f;)V

    iput-object v0, p0, Landroidx/b/f;->d:Landroidx/b/f$e;

    .line 1550
    :cond_f
    iget-object p0, p0, Landroidx/b/f;->d:Landroidx/b/f$e;

    return-object p0
.end method
