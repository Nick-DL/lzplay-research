.class abstract Lcom/a/a/b/h$c;
.super Ljava/lang/Object;
.source "LinkedTreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field b:Lcom/a/a/b/h$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/h$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field c:Lcom/a/a/b/h$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/h$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field d:I

.field final synthetic e:Lcom/a/a/b/h;


# direct methods
.method constructor <init>(Lcom/a/a/b/h;)V
    .registers 2

    .line 531
    iput-object p1, p0, Lcom/a/a/b/h$c;->e:Lcom/a/a/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    iget-object p1, p0, Lcom/a/a/b/h$c;->e:Lcom/a/a/b/h;

    iget-object p1, p1, Lcom/a/a/b/h;->header:Lcom/a/a/b/h$d;

    iget-object p1, p1, Lcom/a/a/b/h$d;->d:Lcom/a/a/b/h$d;

    iput-object p1, p0, Lcom/a/a/b/h$c;->b:Lcom/a/a/b/h$d;

    const/4 p1, 0x0

    .line 528
    iput-object p1, p0, Lcom/a/a/b/h$c;->c:Lcom/a/a/b/h$d;

    .line 529
    iget-object p1, p0, Lcom/a/a/b/h$c;->e:Lcom/a/a/b/h;

    iget p1, p1, Lcom/a/a/b/h;->modCount:I

    iput p1, p0, Lcom/a/a/b/h$c;->d:I

    return-void
.end method


# virtual methods
.method final a()Lcom/a/a/b/h$d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/h$d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 539
    iget-object v0, p0, Lcom/a/a/b/h$c;->b:Lcom/a/a/b/h$d;

    .line 540
    iget-object v1, p0, Lcom/a/a/b/h$c;->e:Lcom/a/a/b/h;

    iget-object v1, v1, Lcom/a/a/b/h;->header:Lcom/a/a/b/h$d;

    if-eq v0, v1, :cond_1d

    .line 543
    iget-object v1, p0, Lcom/a/a/b/h$c;->e:Lcom/a/a/b/h;

    iget v1, v1, Lcom/a/a/b/h;->modCount:I

    iget v2, p0, Lcom/a/a/b/h$c;->d:I

    if-ne v1, v2, :cond_17

    .line 546
    iget-object v1, v0, Lcom/a/a/b/h$d;->d:Lcom/a/a/b/h$d;

    iput-object v1, p0, Lcom/a/a/b/h$c;->b:Lcom/a/a/b/h$d;

    .line 547
    iput-object v0, p0, Lcom/a/a/b/h$c;->c:Lcom/a/a/b/h$d;

    return-object v0

    .line 544
    :cond_17
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    .line 541
    :cond_1d
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final hasNext()Z
    .registers 2

    .line 535
    iget-object v0, p0, Lcom/a/a/b/h$c;->b:Lcom/a/a/b/h$d;

    iget-object p0, p0, Lcom/a/a/b/h$c;->e:Lcom/a/a/b/h;

    iget-object p0, p0, Lcom/a/a/b/h;->header:Lcom/a/a/b/h$d;

    if-eq v0, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final remove()V
    .registers 4

    .line 551
    iget-object v0, p0, Lcom/a/a/b/h$c;->c:Lcom/a/a/b/h$d;

    if-eqz v0, :cond_16

    .line 554
    iget-object v0, p0, Lcom/a/a/b/h$c;->e:Lcom/a/a/b/h;

    iget-object v1, p0, Lcom/a/a/b/h$c;->c:Lcom/a/a/b/h$d;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/a/a/b/h;->removeInternal(Lcom/a/a/b/h$d;Z)V

    const/4 v0, 0x0

    .line 555
    iput-object v0, p0, Lcom/a/a/b/h$c;->c:Lcom/a/a/b/h$d;

    .line 556
    iget-object v0, p0, Lcom/a/a/b/h$c;->e:Lcom/a/a/b/h;

    iget v0, v0, Lcom/a/a/b/h;->modCount:I

    iput v0, p0, Lcom/a/a/b/h$c;->d:I

    return-void

    .line 552
    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
