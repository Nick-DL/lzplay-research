.class final Landroidx/appcompat/widget/r$a;
.super Landroidx/appcompat/b/a/c;
.source "DropDownListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field b:Z


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 382
    invoke-direct {p0, p1}, Landroidx/appcompat/b/a/c;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 383
    iput-boolean p1, p0, Landroidx/appcompat/widget/r$a;->b:Z

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 400
    iget-boolean v0, p0, Landroidx/appcompat/widget/r$a;->b:Z

    if-eqz v0, :cond_7

    .line 401
    invoke-super {p0, p1}, Landroidx/appcompat/b/a/c;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    return-void
.end method

.method public final setHotspot(FF)V
    .registers 4

    .line 407
    iget-boolean v0, p0, Landroidx/appcompat/widget/r$a;->b:Z

    if-eqz v0, :cond_7

    .line 408
    invoke-super {p0, p1, p2}, Landroidx/appcompat/b/a/c;->setHotspot(FF)V

    :cond_7
    return-void
.end method

.method public final setHotspotBounds(IIII)V
    .registers 6

    .line 414
    iget-boolean v0, p0, Landroidx/appcompat/widget/r$a;->b:Z

    if-eqz v0, :cond_7

    .line 415
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/b/a/c;->setHotspotBounds(IIII)V

    :cond_7
    return-void
.end method

.method public final setState([I)Z
    .registers 3

    .line 392
    iget-boolean v0, p0, Landroidx/appcompat/widget/r$a;->b:Z

    if-eqz v0, :cond_9

    .line 393
    invoke-super {p0, p1}, Landroidx/appcompat/b/a/c;->setState([I)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final setVisible(ZZ)Z
    .registers 4

    .line 421
    iget-boolean v0, p0, Landroidx/appcompat/widget/r$a;->b:Z

    if-eqz v0, :cond_9

    .line 422
    invoke-super {p0, p1, p2}, Landroidx/appcompat/b/a/c;->setVisible(ZZ)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method
