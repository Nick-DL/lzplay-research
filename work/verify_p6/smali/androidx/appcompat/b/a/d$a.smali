.class Landroidx/appcompat/b/a/d$a;
.super Landroidx/appcompat/b/a/b$b;
.source "StateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/b/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field L:[[I


# direct methods
.method constructor <init>(Landroidx/appcompat/b/a/d$a;Landroidx/appcompat/b/a/d;Landroid/content/res/Resources;)V
    .locals 0

    .line 332
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/b/a/b$b;-><init>(Landroidx/appcompat/b/a/b$b;Landroidx/appcompat/b/a/b;Landroid/content/res/Resources;)V

    if-eqz p1, :cond_0

    .line 335
    iget-object p1, p1, Landroidx/appcompat/b/a/d$a;->L:[[I

    iput-object p1, p0, Landroidx/appcompat/b/a/d$a;->L:[[I

    return-void

    .line 1798
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    array-length p1, p1

    .line 337
    new-array p1, p1, [[I

    iput-object p1, p0, Landroidx/appcompat/b/a/d$a;->L:[[I

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .line 343
    iget-object v0, p0, Landroidx/appcompat/b/a/d$a;->L:[[I

    array-length v0, v0

    new-array v0, v0, [[I

    .line 344
    iget-object v1, p0, Landroidx/appcompat/b/a/d$a;->L:[[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 345
    iget-object v2, p0, Landroidx/appcompat/b/a/d$a;->L:[[I

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/appcompat/b/a/d$a;->L:[[I

    aget-object v2, v2, v1

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 347
    :cond_1
    iput-object v0, p0, Landroidx/appcompat/b/a/d$a;->L:[[I

    return-void
.end method

.method final b([I)I
    .locals 3

    .line 357
    iget-object v0, p0, Landroidx/appcompat/b/a/d$a;->L:[[I

    .line 1823
    iget p0, p0, Landroidx/appcompat/b/a/b$b;->j:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 360
    aget-object v2, v0, v1

    invoke-static {v2, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final b(II)V
    .locals 2

    .line 381
    invoke-super {p0, p1, p2}, Landroidx/appcompat/b/a/b$b;->b(II)V

    .line 382
    new-array p2, p2, [[I

    .line 383
    iget-object v0, p0, Landroidx/appcompat/b/a/d$a;->L:[[I

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    iput-object p2, p0, Landroidx/appcompat/b/a/d$a;->L:[[I

    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 370
    new-instance v0, Landroidx/appcompat/b/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/b/a/d;-><init>(Landroidx/appcompat/b/a/d$a;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 376
    new-instance v0, Landroidx/appcompat/b/a/d;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/b/a/d;-><init>(Landroidx/appcompat/b/a/d$a;Landroid/content/res/Resources;)V

    return-object v0
.end method
