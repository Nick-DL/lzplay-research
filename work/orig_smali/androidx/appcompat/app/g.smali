.class final Landroidx/appcompat/app/g;
.super Landroidx/appcompat/app/a;
.source "ToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/g$b;,
        Landroidx/appcompat/app/g$a;
    }
.end annotation


# instance fields
.field a:Landroidx/appcompat/widget/p;

.field b:Landroid/view/Window$Callback;

.field private c:Z

.field private d:Z

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/app/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Runnable;


# virtual methods
.method public final a()I
    .registers 1

    .line 323
    iget-object p0, p0, Landroidx/appcompat/app/g;->a:Landroidx/appcompat/widget/p;

    invoke-interface {p0}, Landroidx/appcompat/widget/p;->o()I

    move-result p0

    return p0
.end method

.method public final a(F)V
    .registers 2

    .line 136
    iget-object p0, p0, Landroidx/appcompat/app/g;->a:Landroidx/appcompat/widget/p;

    invoke-interface {p0}, Landroidx/appcompat/widget/p;->a()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/core/e/r;->a(Landroid/view/View;F)V

    return-void
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .registers 2

    .line 186
    invoke-super {p0, p1}, Landroidx/appcompat/app/a;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .registers 2

    .line 228
    iget-object p0, p0, Landroidx/appcompat/app/g;->a:Landroidx/appcompat/widget/p;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/p;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Z)V
    .registers 2

    return-void
.end method

.method public final a(ILandroid/view/KeyEvent;)Z
    .registers 7

    .line 1543
    iget-boolean v0, p0, Landroidx/appcompat/app/g;->c:Z

    const/4 v1, 0x1

    if-nez v0, :cond_16

    .line 1544
    iget-object v0, p0, Landroidx/appcompat/app/g;->a:Landroidx/appcompat/widget/p;

    new-instance v2, Landroidx/appcompat/app/g$a;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/g$a;-><init>(Landroidx/appcompat/app/g;)V

    new-instance v3, Landroidx/appcompat/app/g$b;

    invoke-direct {v3, p0}, Landroidx/appcompat/app/g$b;-><init>(Landroidx/appcompat/app/g;)V

    invoke-interface {v0, v2, v3}, Landroidx/appcompat/widget/p;->a(Landroidx/appcompat/view/menu/m$a;Landroidx/appcompat/view/menu/g$a;)V

    .line 1546
    iput-boolean v1, p0, Landroidx/appcompat/app/g;->c:Z

    .line 1548
    :cond_16
    iget-object p0, p0, Landroidx/appcompat/app/g;->a:Landroidx/appcompat/widget/p;

    invoke-interface {p0}, Landroidx/appcompat/widget/p;->q()Landroid/view/Menu;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3b

    if-eqz p2, :cond_26

    .line 479
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_27

    :cond_26
    const/4 v2, -0x1

    .line 478
    :goto_27
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 480
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    if-eq v2, v1, :cond_32

    goto :goto_33

    :cond_32
    move v1, v0

    :goto_33
    invoke-interface {p0, v1}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 481
    invoke-interface {p0, p1, p2, v0}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p0

    return p0

    :cond_3b
    return v0
.end method

.method public final a(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 468
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    .line 469
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->d()Z

    :cond_a
    return v0
.end method

.method public final addOnMenuVisibilityListener(Landroidx/appcompat/app/a$b;)V
    .registers 2

    .line 494
    iget-object p0, p0, Landroidx/appcompat/app/g;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Landroid/content/Context;
    .registers 1

    .line 146
    iget-object p0, p0, Landroidx/appcompat/app/g;->a:Landroidx/appcompat/widget/p;

    invoke-interface {p0}, Landroidx/appcompat/widget/p;->b()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final b(Z)V
    .registers 2

    return-void
.end method

.method public final c(Z)V
    .registers 4

    .line 504
    iget-boolean v0, p0, Landroidx/appcompat/app/g;->d:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 507
    :cond_5
    iput-boolean p1, p0, Landroidx/appcompat/app/g;->d:Z

    .line 509
    iget-object p1, p0, Landroidx/appcompat/app/g;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_e
    if-ge v0, p1, :cond_18

    .line 511
    iget-object v1, p0, Landroidx/appcompat/app/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_18
    return-void
.end method

.method public final d()Z
    .registers 1

    .line 423
    iget-object p0, p0, Landroidx/appcompat/app/g;->a:Landroidx/appcompat/widget/p;

    invoke-interface {p0}, Landroidx/appcompat/widget/p;->k()Z

    move-result p0

    return p0
.end method

.method public final e()Z
    .registers 1

    .line 428
    iget-object p0, p0, Landroidx/appcompat/app/g;->a:Landroidx/appcompat/widget/p;

    invoke-interface {p0}, Landroidx/appcompat/widget/p;->l()Z

    move-result p0

    return p0
.end method

.method public final f()Z
    .registers 3

    .line 433
    iget-object v0, p0, Landroidx/appcompat/app/g;->a:Landroidx/appcompat/widget/p;

    invoke-interface {v0}, Landroidx/appcompat/widget/p;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/g;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 434
    iget-object v0, p0, Landroidx/appcompat/app/g;->a:Landroidx/appcompat/widget/p;

    invoke-interface {v0}, Landroidx/appcompat/widget/p;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object p0, p0, Landroidx/appcompat/app/g;->f:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Landroidx/core/e/r;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final g()Z
    .registers 2

    .line 440
    iget-object v0, p0, Landroidx/appcompat/app/g;->a:Landroidx/appcompat/widget/p;

    invoke-interface {v0}, Landroidx/appcompat/widget/p;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 441
    iget-object p0, p0, Landroidx/appcompat/app/g;->a:Landroidx/appcompat/widget/p;

    invoke-interface {p0}, Landroidx/appcompat/widget/p;->d()V

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method final h()V
    .registers 2

    .line 489
    iget-object v0, p0, Landroidx/appcompat/app/g;->a:Landroidx/appcompat/widget/p;

    invoke-interface {v0}, Landroidx/appcompat/widget/p;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object p0, p0, Landroidx/appcompat/app/g;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final removeOnMenuVisibilityListener(Landroidx/appcompat/app/a$b;)V
    .registers 2

    .line 499
    iget-object p0, p0, Landroidx/appcompat/app/g;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
