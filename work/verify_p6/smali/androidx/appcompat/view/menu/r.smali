.class public final Landroidx/appcompat/view/menu/r;
.super Landroidx/appcompat/view/menu/g;
.source "SubMenuBuilder.java"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field public l:Landroidx/appcompat/view/menu/g;

.field private m:Landroidx/appcompat/view/menu/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/i;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/g;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p2, p0, Landroidx/appcompat/view/menu/r;->l:Landroidx/appcompat/view/menu/g;

    .line 45
    iput-object p3, p0, Landroidx/appcompat/view/menu/r;->m:Landroidx/appcompat/view/menu/i;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 142
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->m:Landroidx/appcompat/view/menu/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->m:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->getItemId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 146
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroidx/appcompat/view/menu/g;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a(Landroidx/appcompat/view/menu/g$a;)V
    .locals 0

    .line 79
    iget-object p0, p0, Landroidx/appcompat/view/menu/r;->l:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/g$a;)V

    return-void
.end method

.method final a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z
    .locals 1

    .line 89
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/appcompat/view/menu/r;->l:Landroidx/appcompat/view/menu/g;

    .line 90
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final a(Landroidx/appcompat/view/menu/i;)Z
    .locals 0

    .line 132
    iget-object p0, p0, Landroidx/appcompat/view/menu/r;->l:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/i;)Z

    move-result p0

    return p0
.end method

.method public final b()Z
    .locals 0

    .line 156
    iget-object p0, p0, Landroidx/appcompat/view/menu/r;->l:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->b()Z

    move-result p0

    return p0
.end method

.method public final b(Landroidx/appcompat/view/menu/i;)Z
    .locals 0

    .line 137
    iget-object p0, p0, Landroidx/appcompat/view/menu/r;->l:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g;->b(Landroidx/appcompat/view/menu/i;)Z

    move-result p0

    return p0
.end method

.method public final c()Z
    .locals 0

    .line 55
    iget-object p0, p0, Landroidx/appcompat/view/menu/r;->l:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->c()Z

    move-result p0

    return p0
.end method

.method public final d()Z
    .locals 0

    .line 65
    iget-object p0, p0, Landroidx/appcompat/view/menu/r;->l:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->d()Z

    move-result p0

    return p0
.end method

.method public final getItem()Landroid/view/MenuItem;
    .locals 0

    .line 74
    iget-object p0, p0, Landroidx/appcompat/view/menu/r;->m:Landroidx/appcompat/view/menu/i;

    return-object p0
.end method

.method public final l()Landroidx/appcompat/view/menu/g;
    .locals 0

    .line 84
    iget-object p0, p0, Landroidx/appcompat/view/menu/r;->l:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->l()Landroidx/appcompat/view/menu/g;

    move-result-object p0

    return-object p0
.end method

.method public final setGroupDividerEnabled(Z)V
    .locals 0

    .line 151
    iget-object p0, p0, Landroidx/appcompat/view/menu/r;->l:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g;->setGroupDividerEnabled(Z)V

    return-void
.end method

.method public final setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    .line 2301
    invoke-super/range {v0 .. v5}, Landroidx/appcompat/view/menu/g;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 112
    check-cast p0, Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 2289
    invoke-super/range {v0 .. v5}, Landroidx/appcompat/view/menu/g;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 107
    check-cast p0, Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .line 3277
    invoke-super/range {v0 .. v5}, Landroidx/appcompat/view/menu/g;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 122
    check-cast p0, Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 3265
    invoke-super/range {v0 .. v5}, Landroidx/appcompat/view/menu/g;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 117
    check-cast p0, Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    .line 3313
    invoke-super/range {v0 .. v5}, Landroidx/appcompat/view/menu/g;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 127
    check-cast p0, Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setIcon(I)Landroid/view/SubMenu;
    .locals 1

    .line 101
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->m:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/i;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .line 95
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->m:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/i;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setQwertyMode(Z)V
    .locals 0

    .line 50
    iget-object p0, p0, Landroidx/appcompat/view/menu/r;->l:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g;->setQwertyMode(Z)V

    return-void
.end method
