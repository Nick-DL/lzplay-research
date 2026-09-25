.class final Lcom/a/a/b/a/n$2;
.super Lcom/a/a/r;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/b/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/r<",
        "Ljava/util/concurrent/atomic/AtomicIntegerArray;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 265
    invoke-direct {p0}, Lcom/a/a/r;-><init>()V

    return-void
.end method

.method private static b(Lcom/a/a/d/a;)Ljava/util/concurrent/atomic/AtomicIntegerArray;
    .locals 4

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    invoke-virtual {p0}, Lcom/a/a/d/a;->a()V

    .line 269
    :goto_0
    invoke-virtual {p0}, Lcom/a/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    :try_start_0
    invoke-virtual {p0}, Lcom/a/a/d/a;->n()I

    move-result v1

    .line 272
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 274
    new-instance v0, Lcom/a/a/p;

    invoke-direct {v0, p0}, Lcom/a/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/a/a/d/a;->b()V

    .line 278
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    .line 279
    new-instance v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-direct {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p0, :cond_1

    .line 281
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method


# virtual methods
.method public final synthetic a(Lcom/a/a/d/a;)Ljava/lang/Object;
    .locals 0

    .line 265
    invoke-static {p1}, Lcom/a/a/b/a/n$2;->b(Lcom/a/a/d/a;)Ljava/util/concurrent/atomic/AtomicIntegerArray;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic a(Lcom/a/a/d/c;Ljava/lang/Object;)V
    .locals 3

    .line 265
    check-cast p2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 1286
    invoke-virtual {p1}, Lcom/a/a/d/c;->a()Lcom/a/a/d/c;

    .line 1287
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->length()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 1288
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Lcom/a/a/d/c;->a(J)Lcom/a/a/d/c;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1290
    :cond_0
    invoke-virtual {p1}, Lcom/a/a/d/c;->b()Lcom/a/a/d/c;

    return-void
.end method
