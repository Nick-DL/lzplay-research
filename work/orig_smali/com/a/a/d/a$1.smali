.class final Lcom/a/a/d/a$1;
.super Lcom/a/a/b/f;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1594
    invoke-direct {p0}, Lcom/a/a/b/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/a/a/d/a;)V
    .registers 4

    .line 1596
    instance-of p0, p1, Lcom/a/a/b/a/e;

    if-eqz p0, :cond_2d

    .line 1597
    check-cast p1, Lcom/a/a/b/a/e;

    .line 2276
    sget-object p0, Lcom/a/a/d/b;->NAME:Lcom/a/a/d/b;

    invoke-virtual {p1, p0}, Lcom/a/a/b/a/e;->a(Lcom/a/a/d/b;)V

    .line 2277
    invoke-virtual {p1}, Lcom/a/a/b/a/e;->g()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Iterator;

    .line 2278
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 2279
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/a/a/b/a/e;->a(Ljava/lang/Object;)V

    .line 2280
    new-instance v0, Lcom/a/a/n;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/a/a/n;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/a/a/b/a/e;->a(Ljava/lang/Object;)V

    return-void

    .line 1600
    :cond_2d
    iget p0, p1, Lcom/a/a/d/a;->b:I

    if-nez p0, :cond_35

    .line 1602
    invoke-virtual {p1}, Lcom/a/a/d/a;->q()I

    move-result p0

    :cond_35
    const/16 v0, 0xd

    if-ne p0, v0, :cond_3e

    const/16 p0, 0x9

    .line 1605
    iput p0, p1, Lcom/a/a/d/a;->b:I

    return-void

    :cond_3e
    const/16 v0, 0xc

    if-ne p0, v0, :cond_47

    const/16 p0, 0x8

    .line 1607
    iput p0, p1, Lcom/a/a/d/a;->b:I

    return-void

    :cond_47
    const/16 v0, 0xe

    if-ne p0, v0, :cond_50

    const/16 p0, 0xa

    .line 1609
    iput p0, p1, Lcom/a/a/d/a;->b:I

    return-void

    .line 1611
    :cond_50
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected a name but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1612
    invoke-virtual {p1}, Lcom/a/a/d/a;->f()Lcom/a/a/d/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/a/a/d/a;->r()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
