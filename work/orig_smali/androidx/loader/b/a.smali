.class public final Landroidx/loader/b/a;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/loader/b/a$a;,
        Landroidx/loader/b/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Landroidx/loader/b/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/b/a$b<",
            "TD;>;"
        }
    .end annotation
.end field

.field c:Landroidx/loader/b/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/b/a$a<",
            "TD;>;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z


# direct methods
.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 528
    invoke-static {p0, v0}, Landroidx/core/d/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string p0, "}"

    .line 529
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x1

    .line 448
    iput-boolean v0, p0, Landroidx/loader/b/a;->f:Z

    const/4 v0, 0x0

    .line 449
    iput-boolean v0, p0, Landroidx/loader/b/a;->d:Z

    .line 450
    iput-boolean v0, p0, Landroidx/loader/b/a;->e:Z

    .line 451
    iput-boolean v0, p0, Landroidx/loader/b/a;->g:Z

    .line 452
    iput-boolean v0, p0, Landroidx/loader/b/a;->h:Z

    return-void
.end method

.method public final registerOnLoadCanceledListener(Landroidx/loader/b/a$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/b/a$a<",
            "TD;>;)V"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Landroidx/loader/b/a;->c:Landroidx/loader/b/a$a;

    if-nez v0, :cond_7

    .line 210
    iput-object p1, p0, Landroidx/loader/b/a;->c:Landroidx/loader/b/a$a;

    return-void

    .line 208
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "There is already a listener registered"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 536
    invoke-static {p0, v0}, Landroidx/core/d/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, " id="

    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    iget p0, p0, Landroidx/loader/b/a;->a:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 539
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unregisterListener(Landroidx/loader/b/a$b;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/b/a$b<",
            "TD;>;)V"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Landroidx/loader/b/a;->b:Landroidx/loader/b/a$b;

    if-eqz v0, :cond_14

    .line 190
    iget-object v0, p0, Landroidx/loader/b/a;->b:Landroidx/loader/b/a$b;

    if-ne v0, p1, :cond_c

    const/4 p1, 0x0

    .line 193
    iput-object p1, p0, Landroidx/loader/b/a;->b:Landroidx/loader/b/a$b;

    return-void

    .line 191
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Attempting to unregister the wrong listener"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 188
    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No listener register"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final unregisterOnLoadCanceledListener(Landroidx/loader/b/a$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/b/a$a<",
            "TD;>;)V"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Landroidx/loader/b/a;->c:Landroidx/loader/b/a$a;

    if-eqz v0, :cond_14

    .line 226
    iget-object v0, p0, Landroidx/loader/b/a;->c:Landroidx/loader/b/a$a;

    if-ne v0, p1, :cond_c

    const/4 p1, 0x0

    .line 229
    iput-object p1, p0, Landroidx/loader/b/a;->c:Landroidx/loader/b/a$a;

    return-void

    .line 227
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Attempting to unregister the wrong listener"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 224
    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No listener register"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
