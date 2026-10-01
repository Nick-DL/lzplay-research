.class public final Landroidx/appcompat/app/b;
.super Landroidx/appcompat/app/e;
.source "AlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/b$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/app/AlertController;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 98
    invoke-static {p1, p2}, Landroidx/appcompat/app/b;->a(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/e;-><init>(Landroid/content/Context;I)V

    .line 99
    new-instance p1, Landroidx/appcompat/app/AlertController;

    invoke-virtual {p0}, Landroidx/appcompat/app/b;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/appcompat/app/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p1, p2, p0, v0}, Landroidx/appcompat/app/AlertController;-><init>(Landroid/content/Context;Landroidx/appcompat/app/e;Landroid/view/Window;)V

    iput-object p1, p0, Landroidx/appcompat/app/b;->a:Landroidx/appcompat/app/AlertController;

    return-void
.end method

.method static a(Landroid/content/Context;I)I
    .registers 4

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    if-lez v0, :cond_7

    return p1

    .line 114
    :cond_7
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v0, Landroidx/appcompat/R$attr;->alertDialogTheme:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 116
    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 15

    .line 278
    invoke-super {p0, p1}, Landroidx/appcompat/app/e;->onCreate(Landroid/os/Bundle;)V

    .line 279
    iget-object p0, p0, Landroidx/appcompat/app/b;->a:Landroidx/appcompat/app/AlertController;

    .line 1237
    iget p1, p0, Landroidx/appcompat/app/AlertController;->K:I

    const/4 v0, 0x1

    if-eqz p1, :cond_11

    .line 1240
    iget p1, p0, Landroidx/appcompat/app/AlertController;->Q:I

    if-ne p1, v0, :cond_11

    .line 1241
    iget p1, p0, Landroidx/appcompat/app/AlertController;->K:I

    goto :goto_13

    .line 1243
    :cond_11
    iget p1, p0, Landroidx/appcompat/app/AlertController;->J:I

    .line 1232
    :goto_13
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->b:Landroidx/appcompat/app/e;

    invoke-virtual {v1, p1}, Landroidx/appcompat/app/e;->setContentView(I)V

    .line 1467
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    sget v1, Landroidx/appcompat/R$id;->parentPanel:I

    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1468
    sget v1, Landroidx/appcompat/R$id;->topPanel:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1469
    sget v2, Landroidx/appcompat/R$id;->contentPanel:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1470
    sget v3, Landroidx/appcompat/R$id;->buttonPanel:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1474
    sget v4, Landroidx/appcompat/R$id;->customPanel:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 1640
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_43

    .line 1641
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;

    goto :goto_55

    .line 1642
    :cond_43
    iget v4, p0, Landroidx/appcompat/app/AlertController;->i:I

    if-eqz v4, :cond_54

    .line 1643
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 1644
    iget v7, p0, Landroidx/appcompat/app/AlertController;->i:I

    invoke-virtual {v4, v7, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    goto :goto_55

    :cond_54
    move-object v4, v5

    :goto_55
    if-eqz v4, :cond_59

    move v7, v0

    goto :goto_5a

    :cond_59
    move v7, v6

    :goto_5a
    if-eqz v7, :cond_62

    .line 1650
    invoke-static {v4}, Landroidx/appcompat/app/AlertController;->a(Landroid/view/View;)Z

    move-result v8

    if-nez v8, :cond_69

    .line 1651
    :cond_62
    iget-object v8, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    const/high16 v9, 0x20000

    invoke-virtual {v8, v9, v9}, Landroid/view/Window;->setFlags(II)V

    :cond_69
    const/4 v8, -0x1

    const/16 v9, 0x8

    if-eqz v7, :cond_9d

    .line 1656
    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    sget v10, Landroidx/appcompat/R$id;->custom:I

    invoke-virtual {v7, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 1657
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v10, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v4, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1659
    iget-boolean v4, p0, Landroidx/appcompat/app/AlertController;->n:Z

    if-eqz v4, :cond_8f

    .line 1660
    iget v4, p0, Landroidx/appcompat/app/AlertController;->j:I

    iget v10, p0, Landroidx/appcompat/app/AlertController;->k:I

    iget v11, p0, Landroidx/appcompat/app/AlertController;->l:I

    iget v12, p0, Landroidx/appcompat/app/AlertController;->m:I

    invoke-virtual {v7, v4, v10, v11, v12}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1664
    :cond_8f
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    if-eqz v4, :cond_a0

    .line 1665
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    const/4 v7, 0x0

    iput v7, v4, Landroidx/appcompat/widget/LinearLayoutCompat$a;->g:F

    goto :goto_a0

    .line 1668
    :cond_9d
    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1477
    :cond_a0
    :goto_a0
    sget v4, Landroidx/appcompat/R$id;->topPanel:I

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1478
    sget v7, Landroidx/appcompat/R$id;->contentPanel:I

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1479
    sget v10, Landroidx/appcompat/R$id;->buttonPanel:I

    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 1482
    invoke-static {v4, v1}, Landroidx/appcompat/app/AlertController;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 1483
    invoke-static {v7, v2}, Landroidx/appcompat/app/AlertController;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 1484
    invoke-static {v10, v3}, Landroidx/appcompat/app/AlertController;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 1719
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    sget v7, Landroidx/appcompat/R$id;->scrollView:I

    invoke-virtual {v4, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    iput-object v4, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    .line 1720
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v4, v6}, Landroidx/core/widget/NestedScrollView;->setFocusable(Z)V

    .line 1721
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v4, v6}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    const v4, 0x102000b

    .line 1724
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Landroidx/appcompat/app/AlertController;->F:Landroid/widget/TextView;

    .line 1725
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->F:Landroid/widget/TextView;

    if-eqz v4, :cond_11e

    .line 1729
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->f:Ljava/lang/CharSequence;

    if-eqz v4, :cond_ef

    .line 1730
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->F:Landroid/widget/TextView;

    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->f:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11e

    .line 1732
    :cond_ef
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->F:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1733
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->F:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroidx/core/widget/NestedScrollView;->removeView(Landroid/view/View;)V

    .line 1735
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    if-eqz v4, :cond_11b

    .line 1736
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v4}, Landroidx/core/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 1737
    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v7

    .line 1738
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1739
    iget-object v10, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v11, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v10, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_11e

    .line 1742
    :cond_11b
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_11e
    :goto_11e
    const v4, 0x1020019

    .line 1763
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    .line 1764
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->S:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1766
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->p:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_143

    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->r:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_143

    .line 1767
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setVisibility(I)V

    move v4, v6

    goto :goto_164

    .line 1769
    :cond_143
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->p:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1770
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_15e

    .line 1771
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->r:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Landroidx/appcompat/app/AlertController;->d:I

    iget v10, p0, Landroidx/appcompat/app/AlertController;->d:I

    invoke-virtual {v4, v6, v6, v7, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1772
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v7, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1774
    :cond_15e
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    move v4, v0

    :goto_164
    const v7, 0x102001a

    .line 1778
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    .line 1779
    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    iget-object v10, p0, Landroidx/appcompat/app/AlertController;->S:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1781
    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->t:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_188

    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->v:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_188

    .line 1782
    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1aa

    .line 1784
    :cond_188
    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    iget-object v10, p0, Landroidx/appcompat/app/AlertController;->t:Ljava/lang/CharSequence;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1785
    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->v:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_1a3

    .line 1786
    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->v:Landroid/graphics/drawable/Drawable;

    iget v10, p0, Landroidx/appcompat/app/AlertController;->d:I

    iget v11, p0, Landroidx/appcompat/app/AlertController;->d:I

    invoke-virtual {v7, v6, v6, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1787
    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    iget-object v10, p0, Landroidx/appcompat/app/AlertController;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v10, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1789
    :cond_1a3
    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v4, v4, 0x2

    :goto_1aa
    const v7, 0x102001b

    .line 1793
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    .line 1794
    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    iget-object v10, p0, Landroidx/appcompat/app/AlertController;->S:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1796
    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->x:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1ce

    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->z:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_1ce

    .line 1797
    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1f0

    .line 1799
    :cond_1ce
    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    iget-object v10, p0, Landroidx/appcompat/app/AlertController;->x:Ljava/lang/CharSequence;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1800
    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_1e9

    .line 1801
    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->r:Landroid/graphics/drawable/Drawable;

    iget v10, p0, Landroidx/appcompat/app/AlertController;->d:I

    iget v11, p0, Landroidx/appcompat/app/AlertController;->d:I

    invoke-virtual {v7, v6, v6, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1802
    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    iget-object v10, p0, Landroidx/appcompat/app/AlertController;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v10, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1804
    :cond_1e9
    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v4, v4, 0x4

    .line 1808
    :goto_1f0
    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;

    .line 2177
    new-instance v10, Landroid/util/TypedValue;

    invoke-direct {v10}, Landroid/util/TypedValue;-><init>()V

    .line 2178
    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    sget v11, Landroidx/appcompat/R$attr;->alertDialogCenterButtons:I

    invoke-virtual {v7, v11, v10, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2179
    iget v7, v10, Landroid/util/TypedValue;->data:I

    if-eqz v7, :cond_206

    move v7, v0

    goto :goto_207

    :cond_206
    move v7, v6

    :goto_207
    const/4 v10, 0x2

    if-eqz v7, :cond_222

    if-ne v4, v0, :cond_212

    .line 1814
    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    invoke-static {v7}, Landroidx/appcompat/app/AlertController;->a(Landroid/widget/Button;)V

    goto :goto_222

    :cond_212
    if-ne v4, v10, :cond_21a

    .line 1816
    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    invoke-static {v7}, Landroidx/appcompat/app/AlertController;->a(Landroid/widget/Button;)V

    goto :goto_222

    :cond_21a
    const/4 v7, 0x4

    if-ne v4, v7, :cond_222

    .line 1818
    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    invoke-static {v7}, Landroidx/appcompat/app/AlertController;->a(Landroid/widget/Button;)V

    :cond_222
    :goto_222
    if-eqz v4, :cond_226

    move v4, v0

    goto :goto_227

    :cond_226
    move v4, v6

    :goto_227
    if-nez v4, :cond_22c

    .line 1824
    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2673
    :cond_22c
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->G:Landroid/view/View;

    if-eqz v4, :cond_248

    .line 2675
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v4, v8, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2678
    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->G:Landroid/view/View;

    invoke-virtual {v1, v7, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2681
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    sget v7, Landroidx/appcompat/R$id;->title_template:I

    invoke-virtual {v4, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2682
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2c3

    .line 2684
    :cond_248
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    const v7, 0x1020006

    invoke-virtual {v4, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    .line 2686
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->e:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v0

    if-eqz v4, :cond_2b0

    .line 2687
    iget-boolean v4, p0, Landroidx/appcompat/app/AlertController;->P:Z

    if-eqz v4, :cond_2b0

    .line 2689
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    sget v7, Landroidx/appcompat/R$id;->alertTitle:I

    invoke-virtual {v4, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Landroidx/appcompat/app/AlertController;->E:Landroid/widget/TextView;

    .line 2690
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->E:Landroid/widget/TextView;

    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->e:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2695
    iget v4, p0, Landroidx/appcompat/app/AlertController;->B:I

    if-eqz v4, :cond_281

    .line 2696
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    iget v7, p0, Landroidx/appcompat/app/AlertController;->B:I

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2c3

    .line 2697
    :cond_281
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->C:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_28d

    .line 2698
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2c3

    .line 2702
    :cond_28d
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->E:Landroid/widget/TextView;

    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v7

    iget-object v8, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    .line 2703
    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v8

    iget-object v11, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    .line 2704
    invoke-virtual {v11}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v11

    iget-object v12, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    .line 2705
    invoke-virtual {v12}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v12

    .line 2702
    invoke-virtual {v4, v7, v8, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2706
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2c3

    .line 2710
    :cond_2b0
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    sget v7, Landroidx/appcompat/R$id;->title_template:I

    invoke-virtual {v4, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2711
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2712
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2713
    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_2c3
    if-eqz p1, :cond_2cd

    .line 1491
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eq p1, v9, :cond_2cd

    move p1, v0

    goto :goto_2ce

    :cond_2cd
    move p1, v6

    :goto_2ce
    if-eqz v1, :cond_2d8

    .line 1493
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-eq v4, v9, :cond_2d8

    move v4, v0

    goto :goto_2d9

    :cond_2d8
    move v4, v6

    :goto_2d9
    if-eqz v3, :cond_2e3

    .line 1495
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v9, :cond_2e3

    move v3, v0

    goto :goto_2e4

    :cond_2e3
    move v3, v6

    :goto_2e4
    if-nez v3, :cond_2f3

    if-eqz v2, :cond_2f3

    .line 1500
    sget v7, Landroidx/appcompat/R$id;->textSpacerNoButtons:I

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_2f3

    .line 1502
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_2f3
    if-eqz v4, :cond_315

    .line 1509
    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    if-eqz v7, :cond_2fe

    .line 1510
    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v7, v0}, Landroidx/core/widget/NestedScrollView;->setClipToPadding(Z)V

    .line 1515
    :cond_2fe
    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->f:Ljava/lang/CharSequence;

    if-nez v7, :cond_309

    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    if-eqz v7, :cond_307

    goto :goto_309

    :cond_307
    move-object v1, v5

    goto :goto_30f

    .line 1516
    :cond_309
    :goto_309
    sget v7, Landroidx/appcompat/R$id;->titleDividerNoCustom:I

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :goto_30f
    if-eqz v1, :cond_322

    .line 1520
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_322

    :cond_315
    if-eqz v2, :cond_322

    .line 1524
    sget v1, Landroidx/appcompat/R$id;->textSpacerNoTitle:I

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_322

    .line 1526
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1531
    :cond_322
    :goto_322
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    instance-of v1, v1, Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v1, :cond_34d

    .line 1532
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    check-cast v1, Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v3, :cond_330

    if-nez v4, :cond_34d

    .line 2856
    :cond_330
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertController$RecycleListView;->getPaddingLeft()I

    move-result v7

    if-eqz v4, :cond_33b

    .line 2857
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertController$RecycleListView;->getPaddingTop()I

    move-result v8

    goto :goto_33d

    :cond_33b
    iget v8, v1, Landroidx/appcompat/app/AlertController$RecycleListView;->a:I

    .line 2858
    :goto_33d
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertController$RecycleListView;->getPaddingRight()I

    move-result v9

    if-eqz v3, :cond_348

    .line 2859
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertController$RecycleListView;->getPaddingBottom()I

    move-result v11

    goto :goto_34a

    :cond_348
    iget v11, v1, Landroidx/appcompat/app/AlertController$RecycleListView;->b:I

    .line 2860
    :goto_34a
    invoke-virtual {v1, v7, v8, v9, v11}, Landroidx/appcompat/app/AlertController$RecycleListView;->setPadding(IIII)V

    :cond_34d
    if-nez p1, :cond_3d7

    .line 1537
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    if-eqz p1, :cond_356

    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    goto :goto_358

    :cond_356
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    :goto_358
    if-eqz p1, :cond_3d7

    if-eqz v3, :cond_35d

    move v6, v10

    :cond_35d
    or-int v1, v4, v6

    .line 3560
    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    sget v4, Landroidx/appcompat/R$id;->scrollIndicatorUp:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3561
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    sget v6, Landroidx/appcompat/R$id;->scrollIndicatorDown:I

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 3563
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_383

    .line 3565
    invoke-static {p1, v1}, Landroidx/core/e/r;->d(Landroid/view/View;I)V

    if-eqz v3, :cond_37d

    .line 3568
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_37d
    if-eqz v4, :cond_3d7

    .line 3571
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_3d7

    :cond_383
    if-eqz v3, :cond_38d

    and-int/lit8 p1, v1, 0x1

    if-nez p1, :cond_38d

    .line 3576
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v3, v5

    :cond_38d
    if-eqz v4, :cond_397

    and-int/lit8 p1, v1, 0x2

    if-nez p1, :cond_397

    .line 3580
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v4, v5

    :cond_397
    if-nez v3, :cond_39b

    if-eqz v4, :cond_3d7

    .line 3588
    :cond_39b
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->f:Ljava/lang/CharSequence;

    if-eqz p1, :cond_3b4

    .line 3590
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    new-instance v1, Landroidx/appcompat/app/AlertController$2;

    invoke-direct {v1, p0, v3, v4}, Landroidx/appcompat/app/AlertController$2;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$b;)V

    .line 3600
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    new-instance v1, Landroidx/appcompat/app/AlertController$3;

    invoke-direct {v1, p0, v3, v4}, Landroidx/appcompat/app/AlertController$3;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroidx/core/widget/NestedScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_3d7

    .line 3606
    :cond_3b4
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    if-eqz p1, :cond_3cd

    .line 3608
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    new-instance v1, Landroidx/appcompat/app/AlertController$4;

    invoke-direct {v1, p0, v3, v4}, Landroidx/appcompat/app/AlertController$4;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 3619
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    new-instance v1, Landroidx/appcompat/app/AlertController$5;

    invoke-direct {v1, p0, v3, v4}, Landroidx/appcompat/app/AlertController$5;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_3d7

    :cond_3cd
    if-eqz v3, :cond_3d2

    .line 3628
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3d2
    if-eqz v4, :cond_3d7

    .line 3631
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1546
    :cond_3d7
    :goto_3d7
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    if-eqz p1, :cond_3ee

    .line 1547
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->H:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_3ee

    .line 1548
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->H:Landroid/widget/ListAdapter;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1549
    iget p0, p0, Landroidx/appcompat/app/AlertController;->I:I

    if-ltz p0, :cond_3ee

    .line 1551
    invoke-virtual {p1, p0, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1552
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setSelection(I)V

    :cond_3ee
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 284
    iget-object v0, p0, Landroidx/appcompat/app/b;->a:Landroidx/appcompat/app/AlertController;

    .line 4422
    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    const/4 v2, 0x1

    if-eqz v1, :cond_11

    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_15

    return v2

    .line 287
    :cond_15
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/e;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 292
    iget-object v0, p0, Landroidx/appcompat/app/b;->a:Landroidx/appcompat/app/AlertController;

    .line 4427
    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    const/4 v2, 0x1

    if-eqz v1, :cond_11

    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_15

    return v2

    .line 295
    :cond_15
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/e;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 145
    invoke-super {p0, p1}, Landroidx/appcompat/app/e;->setTitle(Ljava/lang/CharSequence;)V

    .line 146
    iget-object p0, p0, Landroidx/appcompat/app/b;->a:Landroidx/appcompat/app/AlertController;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertController;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
