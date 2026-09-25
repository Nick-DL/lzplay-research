.class public final Landroidx/appcompat/view/menu/i;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroidx/core/a/a/b;


# instance fields
.field private A:I

.field private B:I

.field private C:Landroid/view/View;

.field private D:Landroid/view/MenuItem$OnActionExpandListener;

.field private E:Z

.field final a:I

.field b:I

.field c:I

.field d:Landroidx/appcompat/view/menu/g;

.field public e:Landroidx/core/e/b;

.field f:Landroid/view/ContextMenu$ContextMenuInfo;

.field private final g:I

.field private final h:I

.field private final i:I

.field private j:Ljava/lang/CharSequence;

.field private k:Ljava/lang/CharSequence;

.field private l:Landroid/content/Intent;

.field private m:C

.field private n:C

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:I

.field private q:Landroidx/appcompat/view/menu/r;

.field private r:Ljava/lang/Runnable;

.field private s:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private t:Ljava/lang/CharSequence;

.field private u:Ljava/lang/CharSequence;

.field private v:Landroid/content/res/ColorStateList;

.field private w:Landroid/graphics/PorterDuff$Mode;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method constructor <init>(Landroidx/appcompat/view/menu/g;IIIILjava/lang/CharSequence;I)V
    .locals 2

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    .line 68
    iput v0, p0, Landroidx/appcompat/view/menu/i;->b:I

    .line 70
    iput v0, p0, Landroidx/appcompat/view/menu/i;->c:I

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Landroidx/appcompat/view/menu/i;->p:I

    const/4 v1, 0x0

    .line 93
    iput-object v1, p0, Landroidx/appcompat/view/menu/i;->v:Landroid/content/res/ColorStateList;

    .line 94
    iput-object v1, p0, Landroidx/appcompat/view/menu/i;->w:Landroid/graphics/PorterDuff$Mode;

    .line 95
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/i;->x:Z

    .line 96
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/i;->y:Z

    .line 97
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/i;->z:Z

    const/16 v1, 0x10

    .line 99
    iput v1, p0, Landroidx/appcompat/view/menu/i;->A:I

    .line 107
    iput v0, p0, Landroidx/appcompat/view/menu/i;->B:I

    .line 112
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/i;->E:Z

    .line 139
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->d:Landroidx/appcompat/view/menu/g;

    .line 140
    iput p3, p0, Landroidx/appcompat/view/menu/i;->g:I

    .line 141
    iput p2, p0, Landroidx/appcompat/view/menu/i;->h:I

    .line 142
    iput p4, p0, Landroidx/appcompat/view/menu/i;->i:I

    .line 143
    iput p5, p0, Landroidx/appcompat/view/menu/i;->a:I

    .line 144
    iput-object p6, p0, Landroidx/appcompat/view/menu/i;->j:Ljava/lang/CharSequence;

    .line 145
    iput p7, p0, Landroidx/appcompat/view/menu/i;->B:I

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_3

    .line 570
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/i;->z:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/i;->x:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/i;->y:Z

    if-eqz v0, :cond_3

    .line 571
    :cond_0
    invoke-static {p1}, Landroidx/core/graphics/drawable/a;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 572
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 574
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/i;->x:Z

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->v:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 578
    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/i;->y:Z

    if-eqz v0, :cond_2

    .line 579
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->w:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    const/4 v0, 0x0

    .line 582
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/i;->z:Z

    :cond_3
    return-object p1
.end method

.method private a(Landroid/view/View;)Landroidx/core/a/a/b;
    .locals 2

    .line 751
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->C:Landroid/view/View;

    const/4 v0, 0x0

    .line 752
    iput-object v0, p0, Landroidx/appcompat/view/menu/i;->e:Landroidx/core/e/b;

    if-eqz p1, :cond_0

    .line 753
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/appcompat/view/menu/i;->g:I

    if-lez v0, :cond_0

    .line 754
    iget v0, p0, Landroidx/appcompat/view/menu/i;->g:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 756
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->h()V

    return-object p0
.end method

.method static a(Ljava/lang/StringBuilder;IILjava/lang/String;)V
    .locals 0

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_0

    .line 403
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private e(Z)V
    .locals 3

    .line 631
    iget v0, p0, Landroidx/appcompat/view/menu/i;->A:I

    .line 632
    iget v1, p0, Landroidx/appcompat/view/menu/i;->A:I

    and-int/lit8 v1, v1, -0x3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    or-int/2addr p1, v1

    iput p1, p0, Landroidx/appcompat/view/menu/i;->A:I

    .line 633
    iget p1, p0, Landroidx/appcompat/view/menu/i;->A:I

    if-eq v0, p1, :cond_1

    .line 634
    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/g;->b(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Landroidx/core/e/b;)Landroidx/core/a/a/b;
    .locals 2

    .line 799
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->e:Landroidx/core/e/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->e:Landroidx/core/e/b;

    .line 5312
    iput-object v1, v0, Landroidx/core/e/b;->e:Landroidx/core/e/b$b;

    .line 5313
    iput-object v1, v0, Landroidx/core/e/b;->d:Landroidx/core/e/b$a;

    .line 802
    :cond_0
    iput-object v1, p0, Landroidx/appcompat/view/menu/i;->C:Landroid/view/View;

    .line 803
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->e:Landroidx/core/e/b;

    .line 804
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->d:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->b(Z)V

    .line 805
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->e:Landroidx/core/e/b;

    if-eqz p1, :cond_1

    .line 806
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->e:Landroidx/core/e/b;

    new-instance v0, Landroidx/appcompat/view/menu/i$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/i$1;-><init>(Landroidx/appcompat/view/menu/i;)V

    invoke-virtual {p1, v0}, Landroidx/core/e/b;->a(Landroidx/core/e/b$b;)V

    :cond_1
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Landroidx/core/a/a/b;
    .locals 1

    .line 882
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->t:Ljava/lang/CharSequence;

    .line 884
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->d:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->b(Z)V

    return-object p0
.end method

.method public final a()Landroidx/core/e/b;
    .locals 0

    .line 794
    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->e:Landroidx/core/e/b;

    return-object p0
.end method

.method final a(Landroidx/appcompat/view/menu/n$a;)Ljava/lang/CharSequence;
    .locals 0

    .line 446
    invoke-interface {p1}, Landroidx/appcompat/view/menu/n$a;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 447
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/i;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 448
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/i;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final a(Landroidx/appcompat/view/menu/r;)V
    .locals 0

    .line 428
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->q:Landroidx/appcompat/view/menu/r;

    .line 430
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/i;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/r;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 605
    iget v0, p0, Landroidx/appcompat/view/menu/i;->A:I

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    iput p1, p0, Landroidx/appcompat/view/menu/i;->A:I

    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)Landroidx/core/a/a/b;
    .locals 1

    .line 896
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->u:Ljava/lang/CharSequence;

    .line 898
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->d:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->b(Z)V

    return-object p0
.end method

.method public final b()Z
    .locals 4

    .line 154
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->s:Landroid/view/MenuItem$OnMenuItemClickListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->s:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 158
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->d:Landroidx/appcompat/view/menu/g;

    iget-object v2, p0, Landroidx/appcompat/view/menu/i;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, v2, p0}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 162
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->r:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 163
    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->r:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return v1

    .line 167
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->l:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 169
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->d:Landroidx/appcompat/view/menu/g;

    .line 1836
    iget-object v0, v0, Landroidx/appcompat/view/menu/g;->a:Landroid/content/Context;

    .line 169
    iget-object v2, p0, Landroidx/appcompat/view/menu/i;->l:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    .line 172
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->e:Landroidx/core/e/b;

    if-eqz v0, :cond_4

    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->e:Landroidx/core/e/b;

    invoke-virtual {p0}, Landroidx/core/e/b;->b()Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method final b(Z)Z
    .locals 3

    .line 655
    iget v0, p0, Landroidx/appcompat/view/menu/i;->A:I

    .line 656
    iget v1, p0, Landroidx/appcompat/view/menu/i;->A:I

    and-int/lit8 v1, v1, -0x9

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    or-int/2addr p1, v1

    iput p1, p0, Landroidx/appcompat/view/menu/i;->A:I

    .line 657
    iget p0, p0, Landroidx/appcompat/view/menu/i;->A:I

    if-eq v0, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method final c()C
    .locals 1

    .line 342
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char p0, p0, Landroidx/appcompat/view/menu/i;->n:C

    return p0

    :cond_0
    iget-char p0, p0, Landroidx/appcompat/view/menu/i;->m:C

    return p0
.end method

.method public final c(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 721
    iget p1, p0, Landroidx/appcompat/view/menu/i;->A:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroidx/appcompat/view/menu/i;->A:I

    return-void

    .line 723
    :cond_0
    iget p1, p0, Landroidx/appcompat/view/menu/i;->A:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Landroidx/appcompat/view/menu/i;->A:I

    return-void
.end method

.method public final collapseActionView()Z
    .locals 2

    .line 838
    iget v0, p0, Landroidx/appcompat/view/menu/i;->B:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 841
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->C:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 846
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->D:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->D:Landroid/view/MenuItem$OnActionExpandListener;

    .line 847
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    .line 848
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/g;->b(Landroidx/appcompat/view/menu/i;)Z

    move-result p0

    return p0
.end method

.method public final d(Z)V
    .locals 0

    .line 865
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/i;->E:Z

    .line 866
    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->d:Landroidx/appcompat/view/menu/g;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g;->b(Z)V

    return-void
.end method

.method final d()Z
    .locals 1

    .line 414
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/i;->c()C

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final e()Z
    .locals 0

    .line 609
    iget p0, p0, Landroidx/appcompat/view/menu/i;->A:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final expandActionView()Z
    .locals 2

    .line 824
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/i;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 828
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->D:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->D:Landroid/view/MenuItem$OnActionExpandListener;

    .line 829
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 830
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/i;)Z

    move-result p0

    return p0
.end method

.method public final f()Z
    .locals 1

    .line 702
    iget p0, p0, Landroidx/appcompat/view/menu/i;->A:I

    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final g()Z
    .locals 1

    .line 706
    iget p0, p0, Landroidx/appcompat/view/menu/i;->B:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .line 788
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This is not supported, use MenuItemCompat.getActionProvider()"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getActionView()Landroid/view/View;
    .locals 1

    .line 770
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->C:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 771
    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->C:Landroid/view/View;

    return-object p0

    .line 772
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->e:Landroidx/core/e/b;

    if-eqz v0, :cond_1

    .line 773
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->e:Landroidx/core/e/b;

    invoke-virtual {v0, p0}, Landroidx/core/e/b;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/i;->C:Landroid/view/View;

    .line 774
    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->C:Landroid/view/View;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getAlphabeticModifiers()I
    .locals 0

    .line 275
    iget p0, p0, Landroidx/appcompat/view/menu/i;->c:I

    return p0
.end method

.method public final getAlphabeticShortcut()C
    .locals 0

    .line 243
    iget-char p0, p0, Landroidx/appcompat/view/menu/i;->n:C

    return p0
.end method

.method public final getContentDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 891
    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->t:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getGroupId()I
    .locals 0

    .line 203
    iget p0, p0, Landroidx/appcompat/view/menu/i;->h:I

    return p0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 500
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->o:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/i;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 504
    :cond_0
    iget v0, p0, Landroidx/appcompat/view/menu/i;->p:I

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->d:Landroidx/appcompat/view/menu/g;

    .line 3836
    iget-object v0, v0, Landroidx/appcompat/view/menu/g;->a:Landroid/content/Context;

    .line 505
    iget v1, p0, Landroidx/appcompat/view/menu/i;->p:I

    invoke-static {v0, v1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 506
    iput v1, p0, Landroidx/appcompat/view/menu/i;->p:I

    .line 507
    iput-object v0, p0, Landroidx/appcompat/view/menu/i;->o:Landroid/graphics/drawable/Drawable;

    .line 508
    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/i;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getIconTintList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 550
    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->v:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public final getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 566
    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->w:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 0

    .line 223
    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->l:Landroid/content/Intent;

    return-object p0
.end method

.method public final getItemId()I
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 209
    iget p0, p0, Landroidx/appcompat/view/menu/i;->g:I

    return p0
.end method

.method public final getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 0

    .line 687
    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->f:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object p0
.end method

.method public final getNumericModifiers()I
    .locals 0

    .line 285
    iget p0, p0, Landroidx/appcompat/view/menu/i;->b:I

    return p0
.end method

.method public final getNumericShortcut()C
    .locals 0

    .line 280
    iget-char p0, p0, Landroidx/appcompat/view/menu/i;->m:C

    return p0
.end method

.method public final getOrder()I
    .locals 0

    .line 214
    iget p0, p0, Landroidx/appcompat/view/menu/i;->i:I

    return p0
.end method

.method public final getSubMenu()Landroid/view/SubMenu;
    .locals 0

    .line 419
    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->q:Landroidx/appcompat/view/menu/r;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 436
    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->j:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getTitleCondensed()Ljava/lang/CharSequence;
    .locals 2

    .line 471
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->k:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->k:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->j:Ljava/lang/CharSequence;

    .line 473
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_1

    if-eqz p0, :cond_1

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 477
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p0
.end method

.method public final getTooltipText()Ljava/lang/CharSequence;
    .locals 0

    .line 905
    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->u:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final h()Z
    .locals 1

    .line 711
    iget p0, p0, Landroidx/appcompat/view/menu/i;->B:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasSubMenu()Z
    .locals 0

    .line 424
    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->q:Landroidx/appcompat/view/menu/r;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final i()Z
    .locals 1

    .line 728
    iget p0, p0, Landroidx/appcompat/view/menu/i;->B:I

    const/4 v0, 0x4

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isActionViewExpanded()Z
    .locals 0

    .line 871
    iget-boolean p0, p0, Landroidx/appcompat/view/menu/i;->E:Z

    return p0
.end method

.method public final isCheckable()Z
    .locals 1

    .line 590
    iget p0, p0, Landroidx/appcompat/view/menu/i;->A:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isChecked()Z
    .locals 1

    .line 614
    iget p0, p0, Landroidx/appcompat/view/menu/i;->A:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isEnabled()Z
    .locals 0

    .line 185
    iget p0, p0, Landroidx/appcompat/view/menu/i;->A:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isVisible()Z
    .locals 3

    .line 640
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->e:Landroidx/core/e/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->e:Landroidx/core/e/b;

    invoke-virtual {v0}, Landroidx/core/e/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 641
    iget v0, p0, Landroidx/appcompat/view/menu/i;->A:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->e:Landroidx/core/e/b;

    invoke-virtual {p0}, Landroidx/core/e/b;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    :cond_0
    return v1

    .line 643
    :cond_1
    iget p0, p0, Landroidx/appcompat/view/menu/i;->A:I

    and-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public final j()Z
    .locals 2

    .line 855
    iget v0, p0, Landroidx/appcompat/view/menu/i;->B:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 856
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->C:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->e:Landroidx/core/e/b;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->e:Landroidx/core/e/b;

    invoke-virtual {v0, p0}, Landroidx/core/e/b;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/i;->C:Landroid/view/View;

    .line 859
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->C:Landroid/view/View;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public final setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 0

    .line 782
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This is not supported, use MenuItemCompat.setActionProvider()"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final synthetic setActionView(I)Landroid/view/MenuItem;
    .locals 3

    .line 5762
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->d:Landroidx/appcompat/view/menu/g;

    .line 5836
    iget-object v0, v0, Landroidx/appcompat/view/menu/g;->a:Landroid/content/Context;

    .line 5763
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 5764
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/i;->a(Landroid/view/View;)Landroidx/core/a/a/b;

    return-object p0
.end method

.method public final synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/i;->a(Landroid/view/View;)Landroidx/core/a/a/b;

    move-result-object p0

    return-object p0
.end method

.method public final setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .line 248
    iget-char v0, p0, Landroidx/appcompat/view/menu/i;->n:C

    if-ne v0, p1, :cond_0

    return-object p0

    .line 252
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroidx/appcompat/view/menu/i;->n:C

    .line 254
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->d:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->b(Z)V

    return-object p0
.end method

.method public final setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    .line 261
    iget-char v0, p0, Landroidx/appcompat/view/menu/i;->n:C

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroidx/appcompat/view/menu/i;->c:I

    if-ne v0, p2, :cond_0

    return-object p0

    .line 266
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroidx/appcompat/view/menu/i;->n:C

    .line 267
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/i;->c:I

    .line 269
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->d:Landroidx/appcompat/view/menu/g;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/g;->b(Z)V

    return-object p0
.end method

.method public final setCheckable(Z)Landroid/view/MenuItem;
    .locals 2

    .line 595
    iget v0, p0, Landroidx/appcompat/view/menu/i;->A:I

    .line 596
    iget v1, p0, Landroidx/appcompat/view/menu/i;->A:I

    and-int/lit8 v1, v1, -0x2

    or-int/2addr p1, v1

    iput p1, p0, Landroidx/appcompat/view/menu/i;->A:I

    .line 597
    iget p1, p0, Landroidx/appcompat/view/menu/i;->A:I

    if-eq v0, p1, :cond_0

    .line 598
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->d:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->b(Z)V

    :cond_0
    return-object p0
.end method

.method public final setChecked(Z)Landroid/view/MenuItem;
    .locals 6

    .line 619
    iget v0, p0, Landroidx/appcompat/view/menu/i;->A:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 622
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->d:Landroidx/appcompat/view/menu/g;

    .line 4619
    invoke-interface {p0}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    .line 4621
    iget-object v1, p1, Landroidx/appcompat/view/menu/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4622
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->e()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 4624
    iget-object v4, p1, Landroidx/appcompat/view/menu/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/i;

    .line 4625
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/i;->getGroupId()I

    move-result v5

    if-ne v5, v0, :cond_1

    .line 4626
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/i;->e()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4627
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/i;->isCheckable()Z

    move-result v5

    if-eqz v5, :cond_1

    if-ne v4, p0, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v2

    .line 4630
    :goto_1
    invoke-direct {v4, v5}, Landroidx/appcompat/view/menu/i;->e(Z)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4633
    :cond_2
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->f()V

    goto :goto_2

    .line 624
    :cond_3
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/i;->e(Z)V

    :goto_2
    return-object p0
.end method

.method public final synthetic setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/i;->a(Ljava/lang/CharSequence;)Landroidx/core/a/a/b;

    move-result-object p0

    return-object p0
.end method

.method public final setEnabled(Z)Landroid/view/MenuItem;
    .locals 1

    if-eqz p1, :cond_0

    .line 191
    iget p1, p0, Landroidx/appcompat/view/menu/i;->A:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroidx/appcompat/view/menu/i;->A:I

    goto :goto_0

    .line 193
    :cond_0
    iget p1, p0, Landroidx/appcompat/view/menu/i;->A:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Landroidx/appcompat/view/menu/i;->A:I

    .line 196
    :goto_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->d:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->b(Z)V

    return-object p0
.end method

.method public final setIcon(I)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 526
    iput-object v0, p0, Landroidx/appcompat/view/menu/i;->o:Landroid/graphics/drawable/Drawable;

    .line 527
    iput p1, p0, Landroidx/appcompat/view/menu/i;->p:I

    const/4 p1, 0x1

    .line 528
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/i;->z:Z

    .line 531
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->d:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->b(Z)V

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 516
    iput v0, p0, Landroidx/appcompat/view/menu/i;->p:I

    .line 517
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->o:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 518
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/i;->z:Z

    .line 519
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->b(Z)V

    return-object p0
.end method

.method public final setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 1

    .line 539
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->v:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 540
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/i;->x:Z

    .line 541
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/i;->z:Z

    .line 543
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->d:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->b(Z)V

    return-object p0
.end method

.method public final setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 1

    .line 555
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->w:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 556
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/i;->y:Z

    .line 557
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/i;->z:Z

    .line 559
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->d:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->b(Z)V

    return-object p0
.end method

.method public final setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    .line 228
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->l:Landroid/content/Intent;

    return-object p0
.end method

.method public final setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .line 290
    iget-char v0, p0, Landroidx/appcompat/view/menu/i;->m:C

    if-ne v0, p1, :cond_0

    return-object p0

    .line 294
    :cond_0
    iput-char p1, p0, Landroidx/appcompat/view/menu/i;->m:C

    .line 296
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->d:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->b(Z)V

    return-object p0
.end method

.method public final setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    .line 303
    iget-char v0, p0, Landroidx/appcompat/view/menu/i;->m:C

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroidx/appcompat/view/menu/i;->b:I

    if-ne v0, p2, :cond_0

    return-object p0

    .line 307
    :cond_0
    iput-char p1, p0, Landroidx/appcompat/view/menu/i;->m:C

    .line 308
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/i;->b:I

    .line 310
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->d:Landroidx/appcompat/view/menu/g;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/g;->b(Z)V

    return-object p0
.end method

.method public final setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0

    .line 876
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->D:Landroid/view/MenuItem$OnActionExpandListener;

    return-object p0
.end method

.method public final setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    .line 672
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->s:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method public final setShortcut(CC)Landroid/view/MenuItem;
    .locals 0

    .line 317
    iput-char p1, p0, Landroidx/appcompat/view/menu/i;->m:C

    .line 318
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroidx/appcompat/view/menu/i;->n:C

    .line 320
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->d:Landroidx/appcompat/view/menu/g;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/g;->b(Z)V

    return-object p0
.end method

.method public final setShortcut(CCII)Landroid/view/MenuItem;
    .locals 0

    .line 328
    iput-char p1, p0, Landroidx/appcompat/view/menu/i;->m:C

    .line 329
    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/i;->b:I

    .line 330
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroidx/appcompat/view/menu/i;->n:C

    .line 331
    invoke-static {p4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/i;->c:I

    .line 333
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->d:Landroidx/appcompat/view/menu/g;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/g;->b(Z)V

    return-object p0
.end method

.method public final setShowAsAction(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_0

    .line 742
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 745
    :pswitch_0
    iput p1, p0, Landroidx/appcompat/view/menu/i;->B:I

    .line 746
    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->h()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0

    .line 6818
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/i;->setShowAsAction(I)V

    return-object p0
.end method

.method public final setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .line 466
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->d:Landroidx/appcompat/view/menu/g;

    .line 2836
    iget-object v0, v0, Landroidx/appcompat/view/menu/g;->a:Landroid/content/Context;

    .line 466
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/i;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    .line 453
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->j:Ljava/lang/CharSequence;

    .line 455
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->d:Landroidx/appcompat/view/menu/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->b(Z)V

    .line 457
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->q:Landroidx/appcompat/view/menu/r;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->q:Landroidx/appcompat/view/menu/r;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/r;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    :cond_0
    return-object p0
.end method

.method public final setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 486
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->k:Ljava/lang/CharSequence;

    .line 493
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->d:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->b(Z)V

    return-object p0
.end method

.method public final synthetic setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/i;->b(Ljava/lang/CharSequence;)Landroidx/core/a/a/b;

    move-result-object p0

    return-object p0
.end method

.method public final setVisible(Z)Landroid/view/MenuItem;
    .locals 0

    .line 665
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/i;->b(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->g()V

    :cond_0
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 678
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->j:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->j:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
