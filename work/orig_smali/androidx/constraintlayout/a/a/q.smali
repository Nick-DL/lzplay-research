.class public Landroidx/constraintlayout/a/a/q;
.super Landroidx/constraintlayout/a/a/f;
.source "WidgetContainer.java"


# instance fields
.field protected aK:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/a/a/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroidx/constraintlayout/a/a/f;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/a/a/q;->aK:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public B()V
    .registers 5

    .line 277
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/q;->w()V

    .line 278
    iget-object v0, p0, Landroidx/constraintlayout/a/a/q;->aK:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    return-void

    .line 281
    :cond_8
    iget-object v0, p0, Landroidx/constraintlayout/a/a/q;->aK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_25

    .line 283
    iget-object v2, p0, Landroidx/constraintlayout/a/a/q;->aK:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/a/a/f;

    .line 284
    instance-of v3, v2, Landroidx/constraintlayout/a/a/q;

    if-eqz v3, :cond_22

    .line 285
    check-cast v2, Landroidx/constraintlayout/a/a/q;

    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/q;->B()V

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_25
    return-void
.end method

.method public final E()V
    .registers 1

    .line 301
    iget-object p0, p0, Landroidx/constraintlayout/a/a/q;->aK:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/a/f;)V
    .registers 3

    .line 72
    iget-object v0, p0, Landroidx/constraintlayout/a/a/q;->aK:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1555
    iget-object v0, p1, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    if-eqz v0, :cond_10

    .line 2555
    iget-object v0, p1, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    .line 74
    check-cast v0, Landroidx/constraintlayout/a/a/q;

    .line 75
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/a/a/q;->b(Landroidx/constraintlayout/a/a/f;)V

    .line 2564
    :cond_10
    iput-object p0, p1, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/c;)V
    .registers 5

    .line 292
    invoke-super {p0, p1}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/c;)V

    .line 293
    iget-object v0, p0, Landroidx/constraintlayout/a/a/q;->aK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    .line 295
    iget-object v2, p0, Landroidx/constraintlayout/a/a/q;->aK:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/a/a/f;

    .line 296
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public final b(II)V
    .registers 6

    .line 245
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/a/a/f;->b(II)V

    .line 246
    iget-object p1, p0, Landroidx/constraintlayout/a/a/q;->aK:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_a
    if-ge p2, p1, :cond_22

    .line 248
    iget-object v0, p0, Landroidx/constraintlayout/a/a/q;->aK:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/a/a/f;

    .line 249
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/q;->q()I

    move-result v1

    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/q;->r()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/a/a/f;->b(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_22
    return-void
.end method

.method public final b(Landroidx/constraintlayout/a/a/f;)V
    .registers 2

    .line 98
    iget-object p0, p0, Landroidx/constraintlayout/a/a/q;->aK:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 3564
    iput-object p0, p1, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    return-void
.end method

.method public f()V
    .registers 2

    .line 62
    iget-object v0, p0, Landroidx/constraintlayout/a/a/q;->aK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 63
    invoke-super {p0}, Landroidx/constraintlayout/a/a/f;->f()V

    return-void
.end method

.method public final w()V
    .registers 6

    .line 259
    invoke-super {p0}, Landroidx/constraintlayout/a/a/f;->w()V

    .line 260
    iget-object v0, p0, Landroidx/constraintlayout/a/a/q;->aK:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    return-void

    .line 263
    :cond_8
    iget-object v0, p0, Landroidx/constraintlayout/a/a/q;->aK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_2e

    .line 265
    iget-object v2, p0, Landroidx/constraintlayout/a/a/q;->aK:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/a/a/f;

    .line 266
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/q;->o()I

    move-result v3

    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/q;->p()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/a/a/f;->b(II)V

    .line 267
    instance-of v3, v2, Landroidx/constraintlayout/a/a/g;

    if-nez v3, :cond_2b

    .line 268
    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/f;->w()V

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_2e
    return-void
.end method
