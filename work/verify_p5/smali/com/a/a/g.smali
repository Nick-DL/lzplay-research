.class public final Lcom/a/a/g;
.super Lcom/a/a/i;
.source "JsonArray.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/i;",
        "Ljava/lang/Iterable<",
        "Lcom/a/a/i;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/a/a/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/a/a/i;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/g;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Number;
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/a/a/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 208
    iget-object p0, p0, Lcom/a/a/g;->a:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/a/a/i;

    invoke-virtual {p0}, Lcom/a/a/i;->a()Ljava/lang/Number;

    move-result-object p0

    return-object p0

    .line 210
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final a(Lcom/a/a/i;)V
    .locals 0

    if-nez p1, :cond_0

    .line 106
    sget-object p1, Lcom/a/a/k;->a:Lcom/a/a/k;

    .line 108
    :cond_0
    iget-object p0, p0, Lcom/a/a/g;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/a/a/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 224
    iget-object p0, p0, Lcom/a/a/g;->a:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/a/a/i;

    invoke-virtual {p0}, Lcom/a/a/i;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 226
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final c()D
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/a/a/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 240
    iget-object p0, p0, Lcom/a/a/g;->a:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/a/a/i;

    invoke-virtual {p0}, Lcom/a/a/i;->c()D

    move-result-wide v0

    return-wide v0

    .line 242
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final d()J
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/a/a/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 306
    iget-object p0, p0, Lcom/a/a/g;->a:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/a/a/i;

    invoke-virtual {p0}, Lcom/a/a/i;->d()J

    move-result-wide v0

    return-wide v0

    .line 308
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final e()I
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/a/a/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 322
    iget-object p0, p0, Lcom/a/a/g;->a:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/a/a/i;

    invoke-virtual {p0}, Lcom/a/a/i;->e()I

    move-result p0

    return p0

    .line 324
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 377
    instance-of v0, p1, Lcom/a/a/g;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/a/a/g;

    iget-object p1, p1, Lcom/a/a/g;->a:Ljava/util/List;

    iget-object p0, p0, Lcom/a/a/g;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final f()Z
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/a/a/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 370
    iget-object p0, p0, Lcom/a/a/g;->a:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/a/a/i;

    invoke-virtual {p0}, Lcom/a/a/i;->f()Z

    move-result p0

    return p0

    .line 372
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final hashCode()I
    .locals 0

    .line 382
    iget-object p0, p0, Lcom/a/a/g;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/a/a/i;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object p0, p0, Lcom/a/a/g;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
