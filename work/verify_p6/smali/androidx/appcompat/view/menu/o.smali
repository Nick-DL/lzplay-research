.class public Landroidx/appcompat/view/menu/o;
.super Landroidx/appcompat/view/menu/c;
.source "MenuWrapperICS.java"

# interfaces
.implements Landroid/view/Menu;


# instance fields
.field private final d:Landroidx/core/a/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/core/a/a/a;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/c;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 45
    iput-object p2, p0, Landroidx/appcompat/view/menu/o;->d:Landroidx/core/a/a/a;

    return-void

    .line 43
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrapped Object can not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 1

    .line 55
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->d:Landroidx/core/a/a/a;

    invoke-interface {v0, p1}, Landroidx/core/a/a/a;->add(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/o;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1

    .line 65
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->d:Landroidx/core/a/a/a;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/core/a/a/a;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/o;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 60
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->d:Landroidx/core/a/a/a;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/core/a/a/a;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/o;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 50
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->d:Landroidx/core/a/a/a;

    invoke-interface {v0, p1}, Landroidx/core/a/a/a;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/o;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 12

    move-object v0, p0

    move-object/from16 v1, p8

    if-eqz v1, :cond_0

    .line 94
    array-length v2, v1

    new-array v2, v2, [Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 97
    :goto_0
    iget-object v3, v0, Landroidx/appcompat/view/menu/o;->d:Landroidx/core/a/a/a;

    move v4, p1

    move v5, p2

    move v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object v11, v2

    .line 98
    invoke-interface/range {v3 .. v11}, Landroidx/core/a/a/a;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    move-result v3

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    .line 101
    array-length v5, v2

    :goto_1
    if-ge v4, v5, :cond_1

    .line 102
    aget-object v6, v2, v4

    invoke-virtual {p0, v6}, Landroidx/appcompat/view/menu/o;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v6

    aput-object v6, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return v3
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 1

    .line 75
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->d:Landroidx/core/a/a/a;

    invoke-interface {v0, p1}, Landroidx/core/a/a/a;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/o;->a(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p0

    return-object p0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1

    .line 85
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->d:Landroidx/core/a/a/a;

    .line 86
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/core/a/a/a;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object p1

    .line 85
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/o;->a(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p0

    return-object p0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    .line 80
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->d:Landroidx/core/a/a/a;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/core/a/a/a;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/o;->a(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p0

    return-object p0
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    .line 70
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->d:Landroidx/core/a/a/a;

    invoke-interface {v0, p1}, Landroidx/core/a/a/a;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/o;->a(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p0

    return-object p0
.end method

.method public clear()V
    .locals 1

    .line 3086
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 3087
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3089
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->c:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3090
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 124
    :cond_1
    iget-object p0, p0, Landroidx/appcompat/view/menu/o;->d:Landroidx/core/a/a/a;

    invoke-interface {p0}, Landroidx/core/a/a/a;->clear()V

    return-void
.end method

.method public close()V
    .locals 0

    .line 164
    iget-object p0, p0, Landroidx/appcompat/view/menu/o;->d:Landroidx/core/a/a/a;

    invoke-interface {p0}, Landroidx/core/a/a/a;->close()V

    return-void
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 1

    .line 149
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->d:Landroidx/core/a/a/a;

    invoke-interface {v0, p1}, Landroidx/core/a/a/a;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/o;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1

    .line 159
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->d:Landroidx/core/a/a/a;

    invoke-interface {v0, p1}, Landroidx/core/a/a/a;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/o;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public hasVisibleItems()Z
    .locals 0

    .line 144
    iget-object p0, p0, Landroidx/appcompat/view/menu/o;->d:Landroidx/core/a/a/a;

    invoke-interface {p0}, Landroidx/core/a/a/a;->hasVisibleItems()Z

    move-result p0

    return p0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 174
    iget-object p0, p0, Landroidx/appcompat/view/menu/o;->d:Landroidx/core/a/a/a;

    invoke-interface {p0, p1, p2}, Landroidx/core/a/a/a;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public performIdentifierAction(II)Z
    .locals 0

    .line 179
    iget-object p0, p0, Landroidx/appcompat/view/menu/o;->d:Landroidx/core/a/a/a;

    invoke-interface {p0, p1, p2}, Landroidx/core/a/a/a;->performIdentifierAction(II)Z

    move-result p0

    return p0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 0

    .line 169
    iget-object p0, p0, Landroidx/appcompat/view/menu/o;->d:Landroidx/core/a/a/a;

    invoke-interface {p0, p1, p2, p3}, Landroidx/core/a/a/a;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p0

    return p0
.end method

.method public removeGroup(I)V
    .locals 2

    .line 2095
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->b:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 2099
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2102
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 2104
    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 2105
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 118
    :cond_1
    iget-object p0, p0, Landroidx/appcompat/view/menu/o;->d:Landroidx/core/a/a/a;

    invoke-interface {p0, p1}, Landroidx/core/a/a/a;->removeGroup(I)V

    return-void
.end method

.method public removeItem(I)V
    .locals 2

    .line 1111
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->b:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 1115
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1118
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1119
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 1120
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 1121
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 112
    :cond_1
    iget-object p0, p0, Landroidx/appcompat/view/menu/o;->d:Landroidx/core/a/a/a;

    invoke-interface {p0, p1}, Landroidx/core/a/a/a;->removeItem(I)V

    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 0

    .line 129
    iget-object p0, p0, Landroidx/appcompat/view/menu/o;->d:Landroidx/core/a/a/a;

    invoke-interface {p0, p1, p2, p3}, Landroidx/core/a/a/a;->setGroupCheckable(IZZ)V

    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 0

    .line 139
    iget-object p0, p0, Landroidx/appcompat/view/menu/o;->d:Landroidx/core/a/a/a;

    invoke-interface {p0, p1, p2}, Landroidx/core/a/a/a;->setGroupEnabled(IZ)V

    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 0

    .line 134
    iget-object p0, p0, Landroidx/appcompat/view/menu/o;->d:Landroidx/core/a/a/a;

    invoke-interface {p0, p1, p2}, Landroidx/core/a/a/a;->setGroupVisible(IZ)V

    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 0

    .line 184
    iget-object p0, p0, Landroidx/appcompat/view/menu/o;->d:Landroidx/core/a/a/a;

    invoke-interface {p0, p1}, Landroidx/core/a/a/a;->setQwertyMode(Z)V

    return-void
.end method

.method public size()I
    .locals 0

    .line 154
    iget-object p0, p0, Landroidx/appcompat/view/menu/o;->d:Landroidx/core/a/a/a;

    invoke-interface {p0}, Landroidx/core/a/a/a;->size()I

    move-result p0

    return p0
.end method
