.class final Landroidx/appcompat/widget/ActionMenuPresenter;
.super Landroidx/appcompat/view/menu/b;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroidx/core/e/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionMenuPresenter$b;,
        Landroidx/appcompat/widget/ActionMenuPresenter$c;,
        Landroidx/appcompat/widget/ActionMenuPresenter$f;,
        Landroidx/appcompat/widget/ActionMenuPresenter$a;,
        Landroidx/appcompat/widget/ActionMenuPresenter$e;,
        Landroidx/appcompat/widget/ActionMenuPresenter$d;,
        Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;
    }
.end annotation


# instance fields
.field private final A:Landroid/util/SparseBooleanArray;

.field private B:Landroidx/appcompat/widget/ActionMenuPresenter$b;

.field i:Landroidx/appcompat/widget/ActionMenuPresenter$d;

.field j:Landroid/graphics/drawable/Drawable;

.field k:Z

.field l:Z

.field m:Landroidx/appcompat/widget/ActionMenuPresenter$e;

.field n:Landroidx/appcompat/widget/ActionMenuPresenter$a;

.field o:Landroidx/appcompat/widget/ActionMenuPresenter$c;

.field final p:Landroidx/appcompat/widget/ActionMenuPresenter$f;

.field q:I

.field private r:Z

.field private s:Z

.field private t:I

.field private u:I

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 87
    sget v0, Landroidx/appcompat/R$layout;->abc_action_menu_layout:I

    sget v1, Landroidx/appcompat/R$layout;->abc_action_menu_item_layout:I

    invoke-direct {p0, p1, v0, v1}, Landroidx/appcompat/view/menu/b;-><init>(Landroid/content/Context;II)V

    .line 75
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->A:Landroid/util/SparseBooleanArray;

    .line 83
    new-instance p1, Landroidx/appcompat/widget/ActionMenuPresenter$f;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/ActionMenuPresenter$f;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->p:Landroidx/appcompat/widget/ActionMenuPresenter$f;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 191
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/b;->a(Landroidx/appcompat/view/menu/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 195
    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isActionViewExpanded()Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x8

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 197
    check-cast p3, Landroidx/appcompat/widget/ActionMenuView;

    .line 198
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 199
    invoke-virtual {p3, p0}, Landroidx/appcompat/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 200
    invoke-static {p0}, Landroidx/appcompat/widget/ActionMenuView;->a(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/n;
    .locals 1

    .line 181
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->g:Landroidx/appcompat/view/menu/n;

    .line 182
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/b;->a(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/n;

    move-result-object p1

    if-eq v0, p1, :cond_0

    .line 184
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    :cond_0
    return-object p1
.end method

.method public final a(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V
    .locals 4

    .line 92
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/b;->a(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 96
    invoke-static {p1}, Landroidx/appcompat/view/a;->a(Landroid/content/Context;)Landroidx/appcompat/view/a;

    move-result-object p1

    .line 97
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->s:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 2078
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    const/4 v3, 0x1

    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 2081
    :cond_0
    iget-object v0, p1, Landroidx/appcompat/view/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    .line 98
    :goto_0
    iput-boolean v3, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->r:Z

    .line 101
    :cond_2
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->y:Z

    if-nez v0, :cond_3

    .line 2086
    iget-object v0, p1, Landroidx/appcompat/view/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    .line 102
    iput v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->t:I

    .line 106
    :cond_3
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->w:Z

    if-nez v0, :cond_4

    .line 107
    invoke-virtual {p1}, Landroidx/appcompat/view/a;->a()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->v:I

    .line 110
    :cond_4
    iget p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->t:I

    .line 111
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->r:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 112
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->i:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    if-nez v0, :cond_6

    .line 113
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$d;

    iget-object v3, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Landroidx/appcompat/widget/ActionMenuPresenter$d;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->i:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    .line 114
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Z

    if-eqz v0, :cond_5

    .line 115
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->i:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    iget-object v3, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionMenuPresenter$d;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iput-object v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroid/graphics/drawable/Drawable;

    .line 117
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Z

    .line 119
    :cond_5
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 120
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->i:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    invoke-virtual {v1, v0, v0}, Landroidx/appcompat/widget/ActionMenuPresenter$d;->measure(II)V

    .line 122
    :cond_6
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->i:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter$d;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_1

    .line 124
    :cond_7
    iput-object v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->i:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    .line 127
    :goto_1
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->u:I

    const/high16 p1, 0x42600000    # 56.0f

    .line 129
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->z:I

    return-void
.end method

.method public final a(Landroidx/appcompat/view/menu/g;Z)V
    .locals 0

    .line 552
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->f()Z

    .line 553
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/b;->a(Landroidx/appcompat/view/menu/g;Z)V

    return-void
.end method

.method public final a(Landroidx/appcompat/view/menu/i;Landroidx/appcompat/view/menu/n$a;)V
    .locals 0

    .line 207
    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/n$a;->a(Landroidx/appcompat/view/menu/i;)V

    .line 209
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->g:Landroidx/appcompat/view/menu/n;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    .line 210
    check-cast p2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 211
    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setItemInvoker(Landroidx/appcompat/view/menu/g$b;)V

    .line 213
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->B:Landroidx/appcompat/widget/ActionMenuPresenter$b;

    if-nez p1, :cond_0

    .line 214
    new-instance p1, Landroidx/appcompat/widget/ActionMenuPresenter$b;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/ActionMenuPresenter$b;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->B:Landroidx/appcompat/widget/ActionMenuPresenter$b;

    .line 216
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->B:Landroidx/appcompat/widget/ActionMenuPresenter$b;

    invoke-virtual {p2, p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setPopupCallback(Landroidx/appcompat/view/menu/ActionMenuItemView$b;)V

    return-void
.end method

.method public final a(Landroidx/appcompat/widget/ActionMenuView;)V
    .locals 0

    .line 590
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->g:Landroidx/appcompat/view/menu/n;

    .line 591
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->c:Landroidx/appcompat/view/menu/g;

    .line 6639
    iput-object p0, p1, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/g;

    return-void
.end method

.method public final a(Z)V
    .locals 4

    .line 226
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/b;->a(Z)V

    .line 228
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->g:Landroidx/appcompat/view/menu/n;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 230
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->c:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 231
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->c:Landroidx/appcompat/view/menu/g;

    .line 2209
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->j()V

    .line 2210
    iget-object p1, p1, Landroidx/appcompat/view/menu/g;->d:Ljava/util/ArrayList;

    .line 232
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 234
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/i;

    .line 2794
    iget-object v3, v3, Landroidx/appcompat/view/menu/i;->e:Landroidx/core/e/b;

    if-eqz v3, :cond_0

    .line 3289
    iput-object p0, v3, Landroidx/core/e/b;->d:Landroidx/core/e/b$a;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->c:Landroidx/appcompat/view/menu/g;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->c:Landroidx/appcompat/view/menu/g;

    .line 242
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->k()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 245
    :goto_1
    iget-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->r:Z

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 246
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 248
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/i;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isActionViewExpanded()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    goto :goto_2

    :cond_3
    if-lez v1, :cond_4

    move v0, v2

    :cond_4
    :goto_2
    if-eqz v0, :cond_7

    .line 255
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->i:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    if-nez p1, :cond_5

    .line 256
    new-instance p1, Landroidx/appcompat/widget/ActionMenuPresenter$d;

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->a:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Landroidx/appcompat/widget/ActionMenuPresenter$d;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->i:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    .line 258
    :cond_5
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->i:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter$d;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 259
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->g:Landroidx/appcompat/view/menu/n;

    if-eq p1, v0, :cond_8

    if-eqz p1, :cond_6

    .line 261
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->i:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 263
    :cond_6
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->g:Landroidx/appcompat/view/menu/n;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    .line 264
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->i:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    invoke-static {}, Landroidx/appcompat/widget/ActionMenuView;->a()Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 266
    :cond_7
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->i:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    if-eqz p1, :cond_8

    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->i:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter$d;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->g:Landroidx/appcompat/view/menu/n;

    if-ne p1, v0, :cond_8

    .line 267
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->g:Landroidx/appcompat/view/menu/n;

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->i:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 270
    :cond_8
    :goto_3
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->g:Landroidx/appcompat/view/menu/n;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    iget-boolean p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->r:Z

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowReserved(Z)V

    return-void
.end method

.method public final a()Z
    .locals 19

    move-object/from16 v0, p0

    .line 417
    iget-object v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->c:Landroidx/appcompat/view/menu/g;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 418
    iget-object v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->c:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/g;->i()Ljava/util/ArrayList;

    move-result-object v1

    .line 419
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_0

    :cond_0
    move-object v1, v2

    move v4, v3

    .line 425
    :goto_0
    iget v5, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->v:I

    .line 426
    iget v6, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->u:I

    .line 427
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 428
    iget-object v8, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->g:Landroidx/appcompat/view/menu/n;

    check-cast v8, Landroid/view/ViewGroup;

    move v9, v3

    move v10, v9

    move v11, v10

    move v12, v5

    move v5, v11

    :goto_1
    if-ge v5, v4, :cond_4

    .line 435
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/view/menu/i;

    .line 436
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/i;->h()Z

    move-result v15

    if-eqz v15, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 438
    :cond_1
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/i;->g()Z

    move-result v15

    if-eqz v15, :cond_2

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x1

    .line 443
    :goto_2
    iget-boolean v13, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->l:Z

    if-eqz v13, :cond_3

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/i;->isActionViewExpanded()Z

    move-result v13

    if-eqz v13, :cond_3

    move v12, v3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 451
    :cond_4
    iget-boolean v5, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->r:Z

    if-eqz v5, :cond_6

    if-nez v10, :cond_5

    add-int/2addr v11, v9

    if-le v11, v12, :cond_6

    :cond_5
    add-int/lit8 v12, v12, -0x1

    :cond_6
    sub-int/2addr v12, v9

    .line 457
    iget-object v5, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->A:Landroid/util/SparseBooleanArray;

    .line 458
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V

    .line 462
    iget-boolean v9, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->x:Z

    if-eqz v9, :cond_7

    .line 463
    iget v9, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->z:I

    div-int v9, v6, v9

    .line 464
    iget v10, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->z:I

    rem-int v10, v6, v10

    .line 465
    iget v11, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->z:I

    div-int/2addr v10, v9

    add-int/2addr v10, v11

    goto :goto_3

    :cond_7
    move v9, v3

    move v10, v9

    :goto_3
    move v14, v3

    move v11, v6

    move v6, v14

    :goto_4
    if-ge v6, v4, :cond_1c

    .line 470
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/appcompat/view/menu/i;

    .line 472
    invoke-virtual {v15}, Landroidx/appcompat/view/menu/i;->h()Z

    move-result v16

    if-eqz v16, :cond_b

    .line 473
    invoke-virtual {v0, v15, v2, v8}, Landroidx/appcompat/widget/ActionMenuPresenter;->a(Landroidx/appcompat/view/menu/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 474
    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->x:Z

    if-eqz v2, :cond_8

    .line 475
    invoke-static {v13, v10, v9, v7, v3}, Landroidx/appcompat/widget/ActionMenuView;->a(Landroid/view/View;IIII)I

    move-result v2

    sub-int/2addr v9, v2

    goto :goto_5

    .line 478
    :cond_8
    invoke-virtual {v13, v7, v7}, Landroid/view/View;->measure(II)V

    .line 480
    :goto_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v11, v2

    if-nez v14, :cond_9

    goto :goto_6

    :cond_9
    move v2, v14

    .line 485
    :goto_6
    invoke-virtual {v15}, Landroidx/appcompat/view/menu/i;->getGroupId()I

    move-result v13

    if-eqz v13, :cond_a

    const/4 v14, 0x1

    .line 487
    invoke-virtual {v5, v13, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_7

    :cond_a
    const/4 v14, 0x1

    .line 489
    :goto_7
    invoke-virtual {v15, v14}, Landroidx/appcompat/view/menu/i;->c(Z)V

    move v14, v2

    move v0, v3

    move/from16 v18, v4

    goto/16 :goto_f

    .line 490
    :cond_b
    invoke-virtual {v15}, Landroidx/appcompat/view/menu/i;->g()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 493
    invoke-virtual {v15}, Landroidx/appcompat/view/menu/i;->getGroupId()I

    move-result v2

    .line 494
    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v13

    if-gtz v12, :cond_c

    if-eqz v13, :cond_e

    :cond_c
    if-lez v11, :cond_e

    .line 495
    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->x:Z

    if-eqz v3, :cond_d

    if-lez v9, :cond_e

    :cond_d
    const/4 v3, 0x1

    goto :goto_8

    :cond_e
    const/4 v3, 0x0

    :goto_8
    if-eqz v3, :cond_15

    move/from16 v17, v3

    move/from16 v18, v4

    const/4 v3, 0x0

    .line 499
    invoke-virtual {v0, v15, v3, v8}, Landroidx/appcompat/widget/ActionMenuPresenter;->a(Landroidx/appcompat/view/menu/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 500
    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->x:Z

    if-eqz v3, :cond_f

    const/4 v3, 0x0

    .line 501
    invoke-static {v4, v10, v9, v7, v3}, Landroidx/appcompat/widget/ActionMenuView;->a(Landroid/view/View;IIII)I

    move-result v16

    sub-int v9, v9, v16

    if-nez v16, :cond_10

    const/4 v3, 0x0

    goto :goto_9

    .line 508
    :cond_f
    invoke-virtual {v4, v7, v7}, Landroid/view/View;->measure(II)V

    :cond_10
    move/from16 v3, v17

    .line 510
    :goto_9
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v11, v4

    if-nez v14, :cond_11

    move v14, v4

    .line 516
    :cond_11
    iget-boolean v4, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->x:Z

    if-eqz v4, :cond_13

    if-ltz v11, :cond_12

    const/4 v4, 0x1

    goto :goto_a

    :cond_12
    const/4 v4, 0x0

    :goto_a
    and-int/2addr v3, v4

    goto :goto_c

    :cond_13
    add-int v4, v11, v14

    if-lez v4, :cond_14

    const/4 v4, 0x1

    goto :goto_b

    :cond_14
    const/4 v4, 0x0

    :goto_b
    and-int/2addr v3, v4

    goto :goto_c

    :cond_15
    move/from16 v17, v3

    move/from16 v18, v4

    :goto_c
    if-eqz v3, :cond_16

    if-eqz v2, :cond_16

    const/4 v4, 0x1

    .line 525
    invoke-virtual {v5, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_e

    :cond_16
    if-eqz v13, :cond_19

    const/4 v4, 0x0

    .line 528
    invoke-virtual {v5, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v6, :cond_19

    .line 530
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/appcompat/view/menu/i;

    .line 531
    invoke-virtual {v13}, Landroidx/appcompat/view/menu/i;->getGroupId()I

    move-result v0

    if-ne v0, v2, :cond_18

    .line 533
    invoke-virtual {v13}, Landroidx/appcompat/view/menu/i;->f()Z

    move-result v0

    if-eqz v0, :cond_17

    add-int/lit8 v12, v12, 0x1

    :cond_17
    const/4 v0, 0x0

    .line 534
    invoke-virtual {v13, v0}, Landroidx/appcompat/view/menu/i;->c(Z)V

    :cond_18
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_d

    :cond_19
    :goto_e
    if-eqz v3, :cond_1a

    add-int/lit8 v12, v12, -0x1

    .line 541
    :cond_1a
    invoke-virtual {v15, v3}, Landroidx/appcompat/view/menu/i;->c(Z)V

    const/4 v0, 0x0

    goto :goto_f

    :cond_1b
    move v0, v3

    move/from16 v18, v4

    .line 544
    invoke-virtual {v15, v0}, Landroidx/appcompat/view/menu/i;->c(Z)V

    :goto_f
    add-int/lit8 v6, v6, 0x1

    move v3, v0

    move/from16 v4, v18

    move-object/from16 v0, p0

    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_1c
    const/4 v2, 0x1

    return v2
.end method

.method public final a(Landroid/view/ViewGroup;I)Z
    .locals 2

    .line 275
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->i:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 276
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/b;->a(Landroid/view/ViewGroup;I)Z

    move-result p0

    return p0
.end method

.method public final a(Landroidx/appcompat/view/menu/i;)Z
    .locals 0

    .line 221
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->f()Z

    move-result p0

    return p0
.end method

.method public final a(Landroidx/appcompat/view/menu/r;)Z
    .locals 7

    .line 281
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/r;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    .line 4069
    :goto_0
    iget-object v2, v0, Landroidx/appcompat/view/menu/r;->l:Landroidx/appcompat/view/menu/g;

    .line 284
    iget-object v3, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->c:Landroidx/appcompat/view/menu/g;

    if-eq v2, v3, :cond_1

    .line 5069
    iget-object v0, v0, Landroidx/appcompat/view/menu/r;->l:Landroidx/appcompat/view/menu/g;

    .line 285
    check-cast v0, Landroidx/appcompat/view/menu/r;

    goto :goto_0

    .line 287
    :cond_1
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/r;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    .line 5317
    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->g:Landroidx/appcompat/view/menu/n;

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 5320
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_3

    .line 5322
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 5323
    instance-of v6, v5, Landroidx/appcompat/view/menu/n$a;

    if-eqz v6, :cond_2

    move-object v6, v5

    check-cast v6, Landroidx/appcompat/view/menu/n$a;

    .line 5324
    invoke-interface {v6}, Landroidx/appcompat/view/menu/n$a;->getItemData()Landroidx/appcompat/view/menu/i;

    move-result-object v6

    if-ne v6, v0, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_4

    return v1

    .line 296
    :cond_4
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/r;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->q:I

    .line 299
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/r;->size()I

    move-result v0

    move v2, v1

    :goto_3
    const/4 v3, 0x1

    if-ge v2, v0, :cond_6

    .line 301
    invoke-virtual {p1, v2}, Landroidx/appcompat/view/menu/r;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 302
    invoke-interface {v4}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_5

    move v1, v3

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 308
    :cond_6
    :goto_4
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$a;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v2, p1, v5}, Landroidx/appcompat/widget/ActionMenuPresenter$a;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;Landroidx/appcompat/view/menu/r;Landroid/view/View;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Landroidx/appcompat/widget/ActionMenuPresenter$a;

    .line 309
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Landroidx/appcompat/widget/ActionMenuPresenter$a;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuPresenter$a;->a(Z)V

    .line 310
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Landroidx/appcompat/widget/ActionMenuPresenter$a;

    .line 6143
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/l;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 312
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/b;->a(Landroidx/appcompat/view/menu/r;)Z

    return v3

    .line 6144
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()V
    .locals 1

    .line 133
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->w:Z

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->b:Landroid/content/Context;

    invoke-static {v0}, Landroidx/appcompat/view/a;->a(Landroid/content/Context;)Landroidx/appcompat/view/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/a;->a()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->v:I

    .line 136
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->c:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_1

    .line 137
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->c:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/g;->b(Z)V

    :cond_1
    return-void
.end method

.method public final b(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 583
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/b;->a(Landroidx/appcompat/view/menu/r;)Z

    return-void

    .line 584
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->c:Landroidx/appcompat/view/menu/g;

    if-eqz p1, :cond_1

    .line 585
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->c:Landroidx/appcompat/view/menu/g;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g;->a(Z)V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->r:Z

    .line 149
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->s:Z

    return-void
.end method

.method public final d()Z
    .locals 4

    .line 336
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->r:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->c:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->g:Landroidx/appcompat/view/menu/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->o:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->c:Landroidx/appcompat/view/menu/g;

    .line 337
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->k()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$e;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->b:Landroid/content/Context;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->c:Landroidx/appcompat/view/menu/g;

    iget-object v3, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->i:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    invoke-direct {v0, p0, v1, v2, v3}, Landroidx/appcompat/widget/ActionMenuPresenter$e;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroid/view/View;)V

    .line 339
    new-instance v1, Landroidx/appcompat/widget/ActionMenuPresenter$c;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/widget/ActionMenuPresenter$c;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroidx/appcompat/widget/ActionMenuPresenter$e;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->o:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    .line 341
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->g:Landroidx/appcompat/view/menu/n;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->o:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 345
    invoke-super {p0, v0}, Landroidx/appcompat/view/menu/b;->a(Landroidx/appcompat/view/menu/r;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final e()Z
    .locals 3

    .line 358
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->o:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->g:Landroidx/appcompat/view/menu/n;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->g:Landroidx/appcompat/view/menu/n;

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->o:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 360
    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->o:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    return v1

    .line 364
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    if-eqz p0, :cond_1

    .line 366
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l;->c()V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final f()Z
    .locals 1

    .line 377
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->e()Z

    move-result v0

    .line 378
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->g()Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final g()Z
    .locals 1

    .line 388
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Landroidx/appcompat/widget/ActionMenuPresenter$a;

    if-eqz v0, :cond_0

    .line 389
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Landroidx/appcompat/widget/ActionMenuPresenter$a;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter$a;->c()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final h()Z
    .locals 1

    .line 399
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter$e;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
