.class public Landroidx/appcompat/widget/ActionMenuView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "ActionMenuView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/g$b;
.implements Landroidx/appcompat/view/menu/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionMenuView$c;,
        Landroidx/appcompat/widget/ActionMenuView$a;,
        Landroidx/appcompat/widget/ActionMenuView$b;,
        Landroidx/appcompat/widget/ActionMenuView$d;,
        Landroidx/appcompat/widget/ActionMenuView$e;
    }
.end annotation


# instance fields
.field a:Landroidx/appcompat/view/menu/g;

.field b:Z

.field c:Landroidx/appcompat/widget/ActionMenuPresenter;

.field d:Landroidx/appcompat/view/menu/g$a;

.field e:Landroidx/appcompat/widget/ActionMenuView$e;

.field private f:Landroid/content/Context;

.field private g:I

.field private h:Landroidx/appcompat/view/menu/m$a;

.field private i:Z

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 80
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 81
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ActionMenuView;->setBaselineAligned(Z)V

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 83
    iput v1, p0, Landroidx/appcompat/widget/ActionMenuView;->k:I

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 84
    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->l:I

    .line 85
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->f:Landroid/content/Context;

    .line 86
    iput p2, p0, Landroidx/appcompat/widget/ActionMenuView;->g:I

    return-void
.end method

.method static a(Landroid/view/View;IIII)I
    .registers 10

    .line 404
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 406
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p4

    .line 408
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    .line 409
    invoke-static {v1, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 411
    instance-of p4, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz p4, :cond_1b

    move-object p4, p0

    check-cast p4, Landroidx/appcompat/view/menu/ActionMenuItemView;

    goto :goto_1c

    :cond_1b
    const/4 p4, 0x0

    :goto_1c
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_28

    .line 413
    invoke-virtual {p4}, Landroidx/appcompat/view/menu/ActionMenuItemView;->b()Z

    move-result p4

    if-eqz p4, :cond_28

    move p4, v1

    goto :goto_29

    :cond_28
    move p4, v2

    :goto_29
    const/4 v3, 0x2

    if-lez p2, :cond_4c

    if-eqz p4, :cond_30

    if-lt p2, v3, :cond_4c

    :cond_30
    mul-int/2addr p2, p1

    const/high16 v4, -0x80000000

    .line 417
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 419
    invoke-virtual {p0, p2, p3}, Landroid/view/View;->measure(II)V

    .line 421
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 422
    div-int v4, p2, p1

    .line 423
    rem-int/2addr p2, p1

    if-eqz p2, :cond_45

    add-int/lit8 v4, v4, 0x1

    :cond_45
    if-eqz p4, :cond_4a

    if-ge v4, v3, :cond_4a

    goto :goto_4d

    :cond_4a
    move v3, v4

    goto :goto_4d

    :cond_4c
    move v3, v2

    .line 427
    :goto_4d
    iget-boolean p2, v0, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    if-nez p2, :cond_54

    if-eqz p4, :cond_54

    goto :goto_55

    :cond_54
    move v1, v2

    .line 428
    :goto_55
    iput-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView$c;->d:Z

    .line 430
    iput v3, v0, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    mul-int/2addr p1, v3

    const/high16 p2, 0x40000000    # 2.0f

    .line 432
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Landroid/view/View;->measure(II)V

    return v3
.end method

.method public static a()Landroidx/appcompat/widget/ActionMenuView$c;
    .registers 2

    .line 616
    invoke-static {}, Landroidx/appcompat/widget/ActionMenuView;->d()Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object v0

    const/4 v1, 0x1

    .line 617
    iput-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    return-object v0
.end method

.method protected static a(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$c;
    .registers 2

    if-eqz p0, :cond_1c

    .line 597
    instance-of v0, p0, Landroidx/appcompat/widget/ActionMenuView$c;

    if-eqz v0, :cond_e

    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$c;

    check-cast p0, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>(Landroidx/appcompat/widget/ActionMenuView$c;)V

    goto :goto_13

    :cond_e
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 600
    :goto_13
    iget p0, v0, Landroidx/appcompat/widget/ActionMenuView$c;->h:I

    if-gtz p0, :cond_1b

    const/16 p0, 0x10

    .line 601
    iput p0, v0, Landroidx/appcompat/widget/ActionMenuView$c;->h:I

    :cond_1b
    return-object v0

    .line 605
    :cond_1c
    invoke-static {}, Landroidx/appcompat/widget/ActionMenuView;->d()Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object p0

    return-object p0
.end method

.method private b(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$c;
    .registers 3

    .line 591
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method private b(I)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, p1, -0x1

    .line 736
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 737
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 739
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result p0

    if-ge p1, p0, :cond_1f

    instance-of p0, v1, Landroidx/appcompat/widget/ActionMenuView$a;

    if-eqz p0, :cond_1f

    .line 740
    check-cast v1, Landroidx/appcompat/widget/ActionMenuView$a;

    invoke-interface {v1}, Landroidx/appcompat/widget/ActionMenuView$a;->d()Z

    move-result p0

    or-int/2addr v0, p0

    :cond_1f
    if-lez p1, :cond_2c

    .line 742
    instance-of p0, v2, Landroidx/appcompat/widget/ActionMenuView$a;

    if-eqz p0, :cond_2c

    .line 743
    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$a;

    invoke-interface {v2}, Landroidx/appcompat/widget/ActionMenuView$a;->c()Z

    move-result p0

    or-int/2addr v0, p0

    :cond_2c
    return v0
.end method

.method private static d()Landroidx/appcompat/widget/ActionMenuView$c;
    .registers 2

    .line 583
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-direct {v0}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>()V

    const/16 v1, 0x10

    .line 585
    iput v1, v0, Landroidx/appcompat/widget/ActionMenuView$c;->h:I

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$a;
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->b(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object p0

    return-object p0
.end method

.method public final a(Landroidx/appcompat/view/menu/g;)V
    .registers 2

    .line 639
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/g;

    return-void
.end method

.method public final a(Landroidx/appcompat/view/menu/m$a;Landroidx/appcompat/view/menu/g$a;)V
    .registers 3

    .line 672
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->h:Landroidx/appcompat/view/menu/m$a;

    .line 673
    iput-object p2, p0, Landroidx/appcompat/widget/ActionMenuView;->d:Landroidx/appcompat/view/menu/g$a;

    return-void
.end method

.method public final a(Landroidx/appcompat/view/menu/i;)Z
    .registers 4

    .line 625
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2981
    invoke-virtual {p0, p1, v0, v1}, Landroidx/appcompat/view/menu/g;->a(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/m;I)Z

    move-result p0

    return p0
.end method

.method protected final synthetic b(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$a;
    .registers 2

    .line 48
    invoke-static {p1}, Landroidx/appcompat/widget/ActionMenuView;->a(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object p0

    return-object p0
.end method

.method public final b()V
    .registers 2

    .line 723
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_9

    .line 724
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->f()Z

    :cond_9
    return-void
.end method

.method protected final synthetic c()Landroidx/appcompat/widget/LinearLayoutCompat$a;
    .registers 1

    .line 48
    invoke-static {}, Landroidx/appcompat/widget/ActionMenuView;->d()Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object p0

    return-object p0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 610
    instance-of p0, p1, Landroidx/appcompat/widget/ActionMenuView$c;

    return p0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 1

    .line 48
    invoke-static {}, Landroidx/appcompat/widget/ActionMenuView;->d()Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object p0

    return-object p0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->b(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object p0

    return-object p0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 48
    invoke-static {p1}, Landroidx/appcompat/widget/ActionMenuView;->a(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object p0

    return-object p0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 4

    .line 651
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/g;

    if-nez v0, :cond_43

    .line 652
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 653
    new-instance v1, Landroidx/appcompat/view/menu/g;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/g;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/g;

    .line 654
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/g;

    new-instance v2, Landroidx/appcompat/widget/ActionMenuView$d;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/ActionMenuView$d;-><init>(Landroidx/appcompat/widget/ActionMenuView;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/g$a;)V

    .line 655
    new-instance v1, Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 656
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->c()V

    .line 657
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->h:Landroidx/appcompat/view/menu/m$a;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->h:Landroidx/appcompat/view/menu/m$a;

    goto :goto_33

    :cond_2e
    new-instance v1, Landroidx/appcompat/widget/ActionMenuView$b;

    invoke-direct {v1}, Landroidx/appcompat/widget/ActionMenuView$b;-><init>()V

    .line 3154
    :goto_33
    iput-object v1, v0, Landroidx/appcompat/view/menu/b;->f:Landroidx/appcompat/view/menu/m$a;

    .line 659
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/g;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuView;->f:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/m;Landroid/content/Context;)V

    .line 660
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->a(Landroidx/appcompat/widget/ActionMenuView;)V

    .line 663
    :cond_43
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/g;

    return-object p0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 565
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 566
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 2171
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->i:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    if-eqz v0, :cond_10

    .line 2172
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->i:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter$d;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 2173
    :cond_10
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Z

    if-eqz v0, :cond_17

    .line 2174
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPopupTheme()I
    .registers 1

    .line 113
    iget p0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:I

    return p0
.end method

.method public getWindowAnimations()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 128
    invoke-super {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 130
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz p1, :cond_1f

    .line 131
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->a(Z)V

    .line 133
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->h()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 134
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->e()Z

    .line 135
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->d()Z

    :cond_1f
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .line 544
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 545
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->b()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 23

    move-object/from16 v0, p0

    .line 439
    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView;->i:Z

    if-nez v1, :cond_a

    .line 440
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    return-void

    .line 444
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v1

    sub-int v2, p5, p3

    .line 445
    div-int/lit8 v2, v2, 0x2

    .line 446
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getDividerWidth()I

    move-result v3

    sub-int v4, p4, p2

    .line 450
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v5

    sub-int v5, v4, v5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    .line 452
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ak;->a(Landroid/view/View;)Z

    move-result v6

    move v10, v5

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2b
    const/16 v11, 0x8

    const/4 v12, 0x1

    if-ge v5, v1, :cond_8d

    .line 454
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 455
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v11, :cond_8a

    .line 459
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 460
    iget-boolean v14, v11, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    if-eqz v14, :cond_7a

    .line 461
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 462
    invoke-direct {v0, v5}, Landroidx/appcompat/widget/ActionMenuView;->b(I)Z

    move-result v14

    if-eqz v14, :cond_4f

    add-int/2addr v8, v3

    .line 465
    :cond_4f
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    if-eqz v6, :cond_5f

    .line 469
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v15

    iget v11, v11, Landroidx/appcompat/widget/ActionMenuView$c;->leftMargin:I

    add-int/2addr v15, v11

    add-int v11, v15, v8

    goto :goto_6f

    .line 472
    :cond_5f
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    iget v11, v11, Landroidx/appcompat/widget/ActionMenuView$c;->rightMargin:I

    sub-int v11, v15, v11

    sub-int v15, v11, v8

    .line 475
    :goto_6f
    div-int/lit8 v16, v14, 0x2

    sub-int v7, v2, v16

    add-int/2addr v14, v7

    .line 477
    invoke-virtual {v13, v15, v7, v11, v14}, Landroid/view/View;->layout(IIII)V

    sub-int/2addr v10, v8

    move v8, v12

    goto :goto_8a

    .line 482
    :cond_7a
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v12, v11, Landroidx/appcompat/widget/ActionMenuView$c;->leftMargin:I

    add-int/2addr v7, v12

    iget v11, v11, Landroidx/appcompat/widget/ActionMenuView$c;->rightMargin:I

    add-int/2addr v7, v11

    sub-int/2addr v10, v7

    .line 485
    invoke-direct {v0, v5}, Landroidx/appcompat/widget/ActionMenuView;->b(I)Z

    add-int/lit8 v9, v9, 0x1

    :cond_8a
    :goto_8a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :cond_8d
    if-ne v1, v12, :cond_ac

    if-nez v8, :cond_ac

    const/4 v3, 0x0

    .line 494
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 495
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 496
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 497
    div-int/lit8 v4, v4, 0x2

    .line 498
    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    .line 499
    div-int/lit8 v5, v3, 0x2

    sub-int/2addr v2, v5

    add-int/2addr v1, v4

    add-int/2addr v3, v2

    .line 500
    invoke-virtual {v0, v4, v2, v1, v3}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_ac
    xor-int/lit8 v3, v8, 0x1

    sub-int/2addr v9, v3

    if-lez v9, :cond_b5

    .line 505
    div-int v7, v10, v9

    const/4 v3, 0x0

    goto :goto_b7

    :cond_b5
    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_b7
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eqz v6, :cond_fa

    .line 508
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    :goto_c6
    if-ge v3, v1, :cond_f9

    .line 510
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 511
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 512
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_f6

    iget-boolean v8, v7, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    if-nez v8, :cond_f6

    .line 516
    iget v8, v7, Landroidx/appcompat/widget/ActionMenuView$c;->rightMargin:I

    sub-int/2addr v5, v8

    .line 517
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 518
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 519
    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    sub-int v12, v5, v8

    add-int/2addr v9, v10

    .line 520
    invoke-virtual {v6, v12, v10, v5, v9}, Landroid/view/View;->layout(IIII)V

    .line 521
    iget v6, v7, Landroidx/appcompat/widget/ActionMenuView$c;->leftMargin:I

    add-int/2addr v8, v6

    add-int/2addr v8, v4

    sub-int/2addr v5, v8

    :cond_f6
    add-int/lit8 v3, v3, 0x1

    goto :goto_c6

    :cond_f9
    return-void

    .line 524
    :cond_fa
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v5

    :goto_fe
    if-ge v3, v1, :cond_131

    .line 526
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 527
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 528
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_12e

    iget-boolean v8, v7, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    if-nez v8, :cond_12e

    .line 532
    iget v8, v7, Landroidx/appcompat/widget/ActionMenuView$c;->leftMargin:I

    add-int/2addr v5, v8

    .line 533
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 534
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 535
    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    add-int v12, v5, v8

    add-int/2addr v9, v10

    .line 536
    invoke-virtual {v6, v5, v10, v12, v9}, Landroid/view/View;->layout(IIII)V

    .line 537
    iget v6, v7, Landroidx/appcompat/widget/ActionMenuView$c;->rightMargin:I

    add-int/2addr v8, v6

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    :cond_12e
    add-int/lit8 v3, v3, 0x1

    goto :goto_fe

    :cond_131
    return-void
.end method

.method protected onMeasure(II)V
    .registers 36

    move-object/from16 v0, p0

    .line 147
    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView;->i:Z

    .line 148
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_10

    move v2, v5

    goto :goto_11

    :cond_10
    move v2, v4

    :goto_11
    iput-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView;->i:Z

    .line 150
    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView;->i:Z

    if-eq v1, v2, :cond_19

    .line 151
    iput v4, v0, Landroidx/appcompat/widget/ActionMenuView;->j:I

    .line 156
    :cond_19
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 157
    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView;->i:Z

    if-eqz v2, :cond_30

    iget-object v2, v0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/g;

    if-eqz v2, :cond_30

    iget v2, v0, Landroidx/appcompat/widget/ActionMenuView;->j:I

    if-eq v1, v2, :cond_30

    .line 158
    iput v1, v0, Landroidx/appcompat/widget/ActionMenuView;->j:I

    .line 159
    iget-object v1, v0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v1, v5}, Landroidx/appcompat/view/menu/g;->b(Z)V

    .line 162
    :cond_30
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v1

    .line 163
    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView;->i:Z

    if-eqz v2, :cond_2b2

    if-lez v1, :cond_2b2

    .line 1178
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1179
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1180
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 1182
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    .line 1183
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingTop()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    const/4 v9, -0x2

    move/from16 v10, p2

    .line 1185
    invoke-static {v10, v8, v9}, Landroidx/appcompat/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v9

    sub-int/2addr v2, v7

    .line 1191
    iget v7, v0, Landroidx/appcompat/widget/ActionMenuView;->k:I

    div-int v7, v2, v7

    .line 1192
    iget v10, v0, Landroidx/appcompat/widget/ActionMenuView;->k:I

    rem-int v10, v2, v10

    if-nez v7, :cond_6e

    .line 1196
    invoke-virtual {v0, v2, v4}, Landroidx/appcompat/widget/ActionMenuView;->setMeasuredDimension(II)V

    return-void

    .line 1200
    :cond_6e
    iget v11, v0, Landroidx/appcompat/widget/ActionMenuView;->k:I

    div-int/2addr v10, v7

    add-int/2addr v11, v10

    .line 1212
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v10

    move v3, v4

    move v12, v3

    move v14, v12

    move v15, v14

    move/from16 v17, v15

    move/from16 v16, v7

    const-wide/16 v20, 0x0

    move/from16 v7, v17

    :goto_82
    if-ge v7, v10, :cond_10b

    .line 1214
    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1215
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v4, 0x8

    if-eq v5, v4, :cond_101

    .line 1217
    instance-of v4, v13, Landroidx/appcompat/view/menu/ActionMenuItemView;

    add-int/lit8 v15, v15, 0x1

    if-eqz v4, :cond_a3

    .line 1223
    iget v5, v0, Landroidx/appcompat/widget/ActionMenuView;->l:I

    move/from16 v22, v6

    iget v6, v0, Landroidx/appcompat/widget/ActionMenuView;->l:I

    move/from16 v23, v15

    const/4 v15, 0x0

    invoke-virtual {v13, v5, v15, v6, v15}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_a8

    :cond_a3
    move/from16 v22, v6

    move/from16 v23, v15

    const/4 v15, 0x0

    .line 1226
    :goto_a8
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 1227
    iput-boolean v15, v5, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z

    .line 1228
    iput v15, v5, Landroidx/appcompat/widget/ActionMenuView$c;->c:I

    .line 1229
    iput v15, v5, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    .line 1230
    iput-boolean v15, v5, Landroidx/appcompat/widget/ActionMenuView$c;->d:Z

    .line 1231
    iput v15, v5, Landroidx/appcompat/widget/ActionMenuView$c;->leftMargin:I

    .line 1232
    iput v15, v5, Landroidx/appcompat/widget/ActionMenuView$c;->rightMargin:I

    if-eqz v4, :cond_c7

    .line 1233
    move-object v4, v13

    check-cast v4, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ActionMenuItemView;->b()Z

    move-result v4

    if-eqz v4, :cond_c7

    const/4 v4, 0x1

    goto :goto_c8

    :cond_c7
    const/4 v4, 0x0

    :goto_c8
    iput-boolean v4, v5, Landroidx/appcompat/widget/ActionMenuView$c;->e:Z

    .line 1236
    iget-boolean v4, v5, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    if-eqz v4, :cond_d0

    const/4 v4, 0x1

    goto :goto_d2

    :cond_d0
    move/from16 v4, v16

    .line 1238
    :goto_d2
    invoke-static {v13, v11, v4, v9, v8}, Landroidx/appcompat/widget/ActionMenuView;->a(Landroid/view/View;IIII)I

    move-result v4

    .line 1241
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1242
    iget-boolean v6, v5, Landroidx/appcompat/widget/ActionMenuView$c;->d:Z

    if-eqz v6, :cond_e0

    add-int/lit8 v17, v17, 0x1

    .line 1243
    :cond_e0
    iget-boolean v5, v5, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    if-eqz v5, :cond_e5

    const/4 v14, 0x1

    :cond_e5
    sub-int v16, v16, v4

    .line 1246
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v6, 0x1

    if-ne v4, v6, :cond_fd

    shl-int v4, v6, v7

    int-to-long v12, v4

    or-long v12, v20, v12

    move-wide/from16 v20, v12

    move/from16 v15, v23

    move v12, v5

    goto :goto_103

    :cond_fd
    move v12, v5

    move/from16 v15, v23

    goto :goto_103

    :cond_101
    move/from16 v22, v6

    :goto_103
    add-int/lit8 v7, v7, 0x1

    move/from16 v6, v22

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_82

    :cond_10b
    move/from16 v22, v6

    const/4 v4, 0x2

    if-eqz v14, :cond_114

    if-ne v15, v4, :cond_114

    const/4 v5, 0x1

    goto :goto_115

    :cond_114
    const/4 v5, 0x0

    :goto_115
    move/from16 v6, v16

    const/4 v7, 0x0

    :goto_118
    const-wide/16 v23, 0x1

    if-lez v17, :cond_1b7

    if-lez v6, :cond_1b7

    const v8, 0x7fffffff

    move v4, v8

    const/4 v8, 0x0

    const/4 v13, 0x0

    const-wide/16 v25, 0x0

    :goto_126
    if-ge v8, v10, :cond_159

    .line 1263
    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1264
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move/from16 v27, v7

    move-object/from16 v7, v16

    check-cast v7, Landroidx/appcompat/widget/ActionMenuView$c;

    move/from16 v28, v12

    .line 1267
    iget-boolean v12, v7, Landroidx/appcompat/widget/ActionMenuView$c;->d:Z

    if-eqz v12, :cond_152

    .line 1270
    iget v12, v7, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    if-ge v12, v4, :cond_148

    .line 1271
    iget v4, v7, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    shl-long v12, v23, v8

    move-wide/from16 v25, v12

    const/4 v13, 0x1

    goto :goto_152

    .line 1274
    :cond_148
    iget v7, v7, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    if-ne v7, v4, :cond_152

    shl-long v29, v23, v8

    or-long v25, v25, v29

    add-int/lit8 v13, v13, 0x1

    :cond_152
    :goto_152
    add-int/lit8 v8, v8, 0x1

    move/from16 v7, v27

    move/from16 v12, v28

    goto :goto_126

    :cond_159
    move/from16 v27, v7

    move/from16 v28, v12

    or-long v20, v20, v25

    if-gt v13, v6, :cond_1b2

    add-int/lit8 v4, v4, 0x1

    move v7, v6

    const/4 v6, 0x0

    :goto_165
    if-ge v6, v10, :cond_1ab

    .line 1289
    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1290
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroidx/appcompat/widget/ActionMenuView$c;

    move/from16 v31, v2

    const/4 v13, 0x1

    shl-int v2, v13, v6

    move/from16 v32, v1

    int-to-long v1, v2

    and-long v23, v25, v1

    const-wide/16 v18, 0x0

    cmp-long v13, v23, v18

    if-nez v13, :cond_188

    .line 1293
    iget v8, v12, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    if-ne v8, v4, :cond_1a4

    or-long v20, v20, v1

    goto :goto_1a4

    :cond_188
    if-eqz v5, :cond_19a

    .line 1297
    iget-boolean v1, v12, Landroidx/appcompat/widget/ActionMenuView$c;->e:Z

    if-eqz v1, :cond_19a

    const/4 v1, 0x1

    if-ne v7, v1, :cond_19a

    .line 1299
    iget v2, v0, Landroidx/appcompat/widget/ActionMenuView;->l:I

    add-int/2addr v2, v11

    iget v13, v0, Landroidx/appcompat/widget/ActionMenuView;->l:I

    const/4 v1, 0x0

    invoke-virtual {v8, v2, v1, v13, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 1301
    :cond_19a
    iget v1, v12, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v12, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    .line 1302
    iput-boolean v2, v12, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z

    add-int/lit8 v7, v7, -0x1

    :cond_1a4
    :goto_1a4
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v31

    move/from16 v1, v32

    goto :goto_165

    :cond_1ab
    move v6, v7

    move/from16 v12, v28

    const/4 v4, 0x2

    const/4 v7, 0x1

    goto/16 :goto_118

    :cond_1b2
    move/from16 v32, v1

    move/from16 v31, v2

    goto :goto_1bf

    :cond_1b7
    move/from16 v32, v1

    move/from16 v31, v2

    move/from16 v27, v7

    move/from16 v28, v12

    :goto_1bf
    if-nez v14, :cond_1c6

    const/4 v1, 0x1

    if-ne v15, v1, :cond_1c7

    move v2, v1

    goto :goto_1c8

    :cond_1c6
    const/4 v1, 0x1

    :cond_1c7
    const/4 v2, 0x0

    :goto_1c8
    if-lez v6, :cond_279

    const-wide/16 v4, 0x0

    cmp-long v7, v20, v4

    if-eqz v7, :cond_279

    sub-int/2addr v15, v1

    if-lt v6, v15, :cond_1d7

    if-nez v2, :cond_1d7

    if-le v3, v1, :cond_279

    .line 1315
    :cond_1d7
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    int-to-float v1, v1

    if-nez v2, :cond_215

    and-long v2, v20, v23

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz v2, :cond_1f8

    const/4 v2, 0x0

    .line 1320
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 1321
    iget-boolean v2, v2, Landroidx/appcompat/widget/ActionMenuView$c;->e:Z

    if-nez v2, :cond_1f8

    sub-float/2addr v1, v3

    :cond_1f8
    add-int/lit8 v2, v10, -0x1

    const/4 v4, 0x1

    shl-int v5, v4, v2

    int-to-long v4, v5

    and-long v4, v20, v4

    const-wide/16 v7, 0x0

    cmp-long v4, v4, v7

    if-eqz v4, :cond_215

    .line 1324
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 1325
    iget-boolean v2, v2, Landroidx/appcompat/widget/ActionMenuView$c;->e:Z

    if-nez v2, :cond_215

    sub-float/2addr v1, v3

    :cond_215
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_21f

    mul-int/2addr v6, v11

    int-to-float v2, v6

    div-float/2addr v2, v1

    float-to-int v4, v2

    goto :goto_220

    :cond_21f
    const/4 v4, 0x0

    :goto_220
    move/from16 v5, v27

    const/4 v1, 0x0

    :goto_223
    if-ge v1, v10, :cond_277

    const/4 v2, 0x1

    shl-int v3, v2, v1

    int-to-long v6, v3

    and-long v6, v20, v6

    const-wide/16 v12, 0x0

    cmp-long v3, v6, v12

    if-eqz v3, :cond_273

    .line 1335
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1336
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 1337
    instance-of v3, v3, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v3, :cond_253

    .line 1339
    iput v4, v6, Landroidx/appcompat/widget/ActionMenuView$c;->c:I

    .line 1340
    iput-boolean v2, v6, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z

    if-nez v1, :cond_24f

    .line 1341
    iget-boolean v2, v6, Landroidx/appcompat/widget/ActionMenuView$c;->e:Z

    if-nez v2, :cond_24f

    neg-int v2, v4

    const/4 v3, 0x2

    .line 1344
    div-int/2addr v2, v3

    iput v2, v6, Landroidx/appcompat/widget/ActionMenuView$c;->leftMargin:I

    goto :goto_250

    :cond_24f
    const/4 v3, 0x2

    :goto_250
    const/4 v2, 0x1

    const/4 v5, 0x1

    goto :goto_274

    :cond_253
    const/4 v3, 0x2

    .line 1347
    iget-boolean v2, v6, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    if-eqz v2, :cond_263

    .line 1348
    iput v4, v6, Landroidx/appcompat/widget/ActionMenuView$c;->c:I

    const/4 v2, 0x1

    .line 1349
    iput-boolean v2, v6, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z

    neg-int v5, v4

    .line 1350
    div-int/2addr v5, v3

    iput v5, v6, Landroidx/appcompat/widget/ActionMenuView$c;->rightMargin:I

    move v5, v2

    goto :goto_274

    :cond_263
    const/4 v2, 0x1

    if-eqz v1, :cond_26a

    .line 1357
    div-int/lit8 v7, v4, 0x2

    iput v7, v6, Landroidx/appcompat/widget/ActionMenuView$c;->leftMargin:I

    :cond_26a
    add-int/lit8 v7, v10, -0x1

    if-eq v1, v7, :cond_274

    .line 1360
    div-int/lit8 v7, v4, 0x2

    iput v7, v6, Landroidx/appcompat/widget/ActionMenuView$c;->rightMargin:I

    goto :goto_274

    :cond_273
    const/4 v3, 0x2

    :cond_274
    :goto_274
    add-int/lit8 v1, v1, 0x1

    goto :goto_223

    :cond_277
    move/from16 v27, v5

    :cond_279
    if-eqz v27, :cond_2a1

    const/4 v1, 0x0

    :goto_27c
    if-ge v1, v10, :cond_2a1

    .line 1371
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1372
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 1374
    iget-boolean v4, v3, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z

    if-eqz v4, :cond_29c

    .line 1376
    iget v4, v3, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    mul-int/2addr v4, v11

    iget v3, v3, Landroidx/appcompat/widget/ActionMenuView$c;->c:I

    add-int/2addr v4, v3

    const/high16 v3, 0x40000000    # 2.0f

    .line 1377
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v4, v9}, Landroid/view/View;->measure(II)V

    goto :goto_29e

    :cond_29c
    const/high16 v3, 0x40000000    # 2.0f

    :goto_29e
    add-int/lit8 v1, v1, 0x1

    goto :goto_27c

    :cond_2a1
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v1, v32

    if-eq v1, v3, :cond_2aa

    move/from16 v1, v28

    goto :goto_2ac

    :cond_2aa
    move/from16 v1, v22

    :goto_2ac
    move/from16 v2, v31

    .line 1386
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/ActionMenuView;->setMeasuredDimension(II)V

    return-void

    :cond_2b2
    move/from16 v10, p2

    const/4 v2, 0x0

    :goto_2b5
    if-ge v2, v1, :cond_2c9

    .line 168
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 169
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$c;

    const/4 v4, 0x0

    .line 170
    iput v4, v3, Landroidx/appcompat/widget/ActionMenuView$c;->rightMargin:I

    iput v4, v3, Landroidx/appcompat/widget/ActionMenuView$c;->leftMargin:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b5

    .line 172
    :cond_2c9
    invoke-super/range {p0 .. p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    return-void
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .registers 2

    .line 756
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 3158
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->l:Z

    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$e;)V
    .registers 2

    .line 141
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->e:Landroidx/appcompat/widget/ActionMenuView$e;

    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 554
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 555
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 2162
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->i:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    if-eqz v0, :cond_f

    .line 2163
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->i:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter$d;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_f
    const/4 v0, 0x1

    .line 2165
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Z

    .line 2166
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setOverflowReserved(Z)V
    .registers 2

    .line 578
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuView;->b:Z

    return-void
.end method

.method public setPopupTheme(I)V
    .registers 4

    .line 97
    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:I

    if-eq v0, p1, :cond_1a

    .line 98
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->g:I

    if-nez p1, :cond_f

    .line 100
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->f:Landroid/content/Context;

    return-void

    .line 102
    :cond_f
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->f:Landroid/content/Context;

    :cond_1a
    return-void
.end method

.method public setPresenter(Landroidx/appcompat/widget/ActionMenuPresenter;)V
    .registers 2

    .line 122
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 123
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->a(Landroidx/appcompat/widget/ActionMenuView;)V

    return-void
.end method
