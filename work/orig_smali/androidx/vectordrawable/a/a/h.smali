.class abstract Landroidx/vectordrawable/a/a/h;
.super Landroid/graphics/drawable/Drawable;
.source "VectorDrawableCommon.java"

# interfaces
.implements Landroidx/core/graphics/drawable/b;


# instance fields
.field c:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 3

    .line 95
    iget-object v0, p0, Landroidx/vectordrawable/a/a/h;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 96
    iget-object p0, p0, Landroidx/vectordrawable/a/a/h;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    return-void

    :cond_a
    return-void
.end method

.method public clearColorFilter()V
    .registers 2

    .line 103
    iget-object v0, p0, Landroidx/vectordrawable/a/a/h;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 104
    iget-object p0, p0, Landroidx/vectordrawable/a/a/h;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    return-void

    .line 107
    :cond_a
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    return-void
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 112
    iget-object v0, p0, Landroidx/vectordrawable/a/a/h;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 113
    iget-object p0, p0, Landroidx/vectordrawable/a/a/h;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 115
    :cond_b
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getMinimumHeight()I
    .registers 2

    .line 128
    iget-object v0, p0, Landroidx/vectordrawable/a/a/h;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 129
    iget-object p0, p0, Landroidx/vectordrawable/a/a/h;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p0

    return p0

    .line 131
    :cond_b
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p0

    return p0
.end method

.method public getMinimumWidth()I
    .registers 2

    .line 120
    iget-object v0, p0, Landroidx/vectordrawable/a/a/h;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 121
    iget-object p0, p0, Landroidx/vectordrawable/a/a/h;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p0

    return p0

    .line 123
    :cond_b
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p0

    return p0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 3

    .line 136
    iget-object v0, p0, Landroidx/vectordrawable/a/a/h;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 137
    iget-object p0, p0, Landroidx/vectordrawable/a/a/h;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p0

    return p0

    .line 139
    :cond_b
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public getState()[I
    .registers 2

    .line 144
    iget-object v0, p0, Landroidx/vectordrawable/a/a/h;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 145
    iget-object p0, p0, Landroidx/vectordrawable/a/a/h;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p0

    return-object p0

    .line 147
    :cond_b
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p0

    return-object p0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .registers 2

    .line 153
    iget-object v0, p0, Landroidx/vectordrawable/a/a/h;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 154
    iget-object p0, p0, Landroidx/vectordrawable/a/a/h;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object p0

    return-object p0

    .line 156
    :cond_b
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object p0

    return-object p0
.end method

.method public jumpToCurrentState()V
    .registers 2

    .line 86
    iget-object v0, p0, Landroidx/vectordrawable/a/a/h;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 87
    iget-object p0, p0, Landroidx/vectordrawable/a/a/h;->c:Landroid/graphics/drawable/Drawable;

    .line 1062
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    return-void

    :cond_a
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    .line 53
    iget-object v0, p0, Landroidx/vectordrawable/a/a/h;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 54
    iget-object p0, p0, Landroidx/vectordrawable/a/a/h;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void

    .line 57
    :cond_a
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onLevelChange(I)Z
    .registers 3

    .line 45
    iget-object v0, p0, Landroidx/vectordrawable/a/a/h;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 46
    iget-object p0, p0, Landroidx/vectordrawable/a/a/h;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p0

    return p0

    .line 48
    :cond_b
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    move-result p0

    return p0
.end method

.method public setChangingConfigurations(I)V
    .registers 3

    .line 161
    iget-object v0, p0, Landroidx/vectordrawable/a/a/h;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 162
    iget-object p0, p0, Landroidx/vectordrawable/a/a/h;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    return-void

    .line 165
    :cond_a
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .registers 4

    .line 36
    iget-object v0, p0, Landroidx/vectordrawable/a/a/h;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 37
    iget-object p0, p0, Landroidx/vectordrawable/a/a/h;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void

    .line 40
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .registers 3

    .line 78
    iget-object v0, p0, Landroidx/vectordrawable/a/a/h;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 79
    iget-object p0, p0, Landroidx/vectordrawable/a/a/h;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    return-void

    :cond_a
    return-void
.end method

.method public setHotspot(FF)V
    .registers 4

    .line 62
    iget-object v0, p0, Landroidx/vectordrawable/a/a/h;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 63
    iget-object p0, p0, Landroidx/vectordrawable/a/a/h;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1, p2}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;FF)V

    :cond_9
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .registers 6

    .line 70
    iget-object v0, p0, Landroidx/vectordrawable/a/a/h;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 71
    iget-object p0, p0, Landroidx/vectordrawable/a/a/h;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;IIII)V

    return-void

    :cond_a
    return-void
.end method

.method public setState([I)Z
    .registers 3

    .line 170
    iget-object v0, p0, Landroidx/vectordrawable/a/a/h;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 171
    iget-object p0, p0, Landroidx/vectordrawable/a/a/h;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p0

    return p0

    .line 173
    :cond_b
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p0

    return p0
.end method
