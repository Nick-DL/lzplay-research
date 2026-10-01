.class final Lcom/a/a/b/h$b;
.super Ljava/util/AbstractSet;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/b/h;


# direct methods
.method constructor <init>(Lcom/a/a/b/h;)V
    .registers 2

    .line 595
    iput-object p1, p0, Lcom/a/a/b/h$b;->a:Lcom/a/a/b/h;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 1

    .line 617
    iget-object p0, p0, Lcom/a/a/b/h$b;->a:Lcom/a/a/b/h;

    invoke-virtual {p0}, Lcom/a/a/b/h;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 2

    .line 609
    iget-object p0, p0, Lcom/a/a/b/h$b;->a:Lcom/a/a/b/h;

    invoke-virtual {p0, p1}, Lcom/a/a/b/h;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 601
    new-instance v0, Lcom/a/a/b/h$b$1;

    invoke-direct {v0, p0}, Lcom/a/a/b/h$b$1;-><init>(Lcom/a/a/b/h$b;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 2

    .line 613
    iget-object p0, p0, Lcom/a/a/b/h$b;->a:Lcom/a/a/b/h;

    invoke-virtual {p0, p1}, Lcom/a/a/b/h;->removeInternalByKey(Ljava/lang/Object;)Lcom/a/a/b/h$d;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final size()I
    .registers 1

    .line 597
    iget-object p0, p0, Lcom/a/a/b/h$b;->a:Lcom/a/a/b/h;

    iget p0, p0, Lcom/a/a/b/h;->size:I

    return p0
.end method
