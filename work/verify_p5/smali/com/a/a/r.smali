.class public abstract Lcom/a/a/r;
.super Ljava/lang/Object;
.source "TypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/a/a/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/a/a/i;"
        }
    .end annotation

    .line 233
    :try_start_0
    new-instance v0, Lcom/a/a/b/a/f;

    invoke-direct {v0}, Lcom/a/a/b/a/f;-><init>()V

    .line 234
    invoke-virtual {p0, v0, p1}, Lcom/a/a/r;->a(Lcom/a/a/d/c;Ljava/lang/Object;)V

    .line 1065
    iget-object p0, v0, Lcom/a/a/b/a/f;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1068
    iget-object p0, v0, Lcom/a/a/b/a/f;->b:Lcom/a/a/i;

    return-object p0

    .line 1066
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Expected one JSON element but was "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/a/a/b/a/f;->a:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 237
    new-instance p1, Lcom/a/a/j;

    invoke-direct {p1, p0}, Lcom/a/a/j;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final a()Lcom/a/a/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/r<",
            "TT;>;"
        }
    .end annotation

    .line 186
    new-instance v0, Lcom/a/a/r$1;

    invoke-direct {v0, p0}, Lcom/a/a/r$1;-><init>(Lcom/a/a/r;)V

    return-object v0
.end method

.method public abstract a(Lcom/a/a/d/a;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/a;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/a/a/d/c;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/c;",
            "TT;)V"
        }
    .end annotation
.end method
