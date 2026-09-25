.class public Landroidx/appcompat/widget/ActionBarOverlayLayout;
.super Landroid/view/ViewGroup;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Landroidx/appcompat/widget/o;
.implements Landroidx/core/e/k;
.implements Landroidx/core/e/l;
.implements Landroidx/core/e/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionBarOverlayLayout$a;,
        Landroidx/appcompat/widget/ActionBarOverlayLayout$b;
    }
.end annotation


# static fields
.field static final f:[I


# instance fields
.field private final A:Ljava/lang/Runnable;

.field private final B:Landroidx/core/e/n;

.field a:Landroidx/appcompat/widget/ActionBarContainer;

.field public b:Z

.field c:Z

.field d:Landroid/view/ViewPropertyAnimator;

.field final e:Landroid/animation/AnimatorListenerAdapter;

.field private g:I

.field private h:I

.field private i:Landroidx/appcompat/widget/ContentFrameLayout;

.field private j:Landroidx/appcompat/widget/p;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private final q:Landroid/graphics/Rect;

.field private final r:Landroid/graphics/Rect;

.field private final s:Landroid/graphics/Rect;

.field private final t:Landroid/graphics/Rect;

.field private final u:Landroid/graphics/Rect;

.field private final v:Landroid/graphics/Rect;

.field private final w:Landroid/graphics/Rect;

.field private x:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

.field private y:Landroid/widget/OverScroller;

.field private final z:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 131
    new-array v0, v0, [I

    sget v1, Landroidx/appcompat/R$attr;->actionBarSize:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const v2, 0x1010059

    aput v2, v0, v1

    sput-object v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 143
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 63
    iput p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:I

    .line 82
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Landroid/graphics/Rect;

    .line 83
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Landroid/graphics/Rect;

    .line 84
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s:Landroid/graphics/Rect;

    .line 85
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->t:Landroid/graphics/Rect;

    .line 86
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->u:Landroid/graphics/Rect;

    .line 87
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->v:Landroid/graphics/Rect;

    .line 88
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->w:Landroid/graphics/Rect;

    .line 98
    new-instance p2, Landroidx/appcompat/widget/ActionBarOverlayLayout$1;

    invoke-direct {p2, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout$1;-><init>(Landroidx/appcompat/widget/ActionBarOverlayLayout;)V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroid/animation/AnimatorListenerAdapter;

    .line 112
    new-instance p2, Landroidx/appcompat/widget/ActionBarOverlayLayout$2;

    invoke-direct {p2, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout$2;-><init>(Landroidx/appcompat/widget/ActionBarOverlayLayout;)V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Ljava/lang/Runnable;

    .line 121
    new-instance p2, Landroidx/appcompat/widget/ActionBarOverlayLayout$3;

    invoke-direct {p2, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout$3;-><init>(Landroidx/appcompat/widget/ActionBarOverlayLayout;)V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->A:Ljava/lang/Runnable;

    .line 144
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a(Landroid/content/Context;)V

    .line 146
    new-instance p1, Landroidx/core/e/n;

    invoke-direct {p1}, Landroidx/core/e/n;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->B:Landroidx/core/e/n;

    return-void
.end method

.method private static a(Landroid/view/View;)Landroidx/appcompat/widget/p;
    .locals 3

    .line 592
    instance-of v0, p0, Landroidx/appcompat/widget/p;

    if-eqz v0, :cond_0

    .line 593
    check-cast p0, Landroidx/appcompat/widget/p;

    return-object p0

    .line 594
    :cond_0
    instance-of v0, p0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 595
    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Landroidx/appcompat/widget/p;

    move-result-object p0

    return-object p0

    .line 597
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .line 150
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 151
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:I

    const/4 v2, 0x1

    .line 152
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Landroid/graphics/drawable/Drawable;

    .line 153
    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setWillNotDraw(Z)V

    .line 154
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x13

    if-ge v0, v3, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Z

    .line 159
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->y:Landroid/widget/OverScroller;

    return-void
.end method

.method private static a(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 4

    .line 267
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;

    .line 268
    iget v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->leftMargin:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 270
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->leftMargin:I

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 272
    :goto_0
    iget v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->topMargin:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-eq v1, v3, :cond_1

    .line 274
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->topMargin:I

    move v0, v2

    .line 276
    :cond_1
    iget v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->rightMargin:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-eq v1, v3, :cond_2

    .line 278
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->rightMargin:I

    move v0, v2

    :cond_2
    if-eqz p2, :cond_3

    .line 280
    iget p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->bottomMargin:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-eq p2, v1, :cond_3

    .line 282
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->bottomMargin:I

    move v0, v2

    :cond_3
    return v0
.end method

.method private i()V
    .locals 1

    .line 584
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/ContentFrameLayout;

    if-nez v0, :cond_0

    .line 585
    sget v0, Landroidx/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ContentFrameLayout;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/ContentFrameLayout;

    .line 586
    sget v0, Landroidx/appcompat/R$id;->action_bar_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    .line 587
    sget v0, Landroidx/appcompat/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a(Landroid/view/View;)Landroidx/appcompat/widget/p;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Landroidx/appcompat/widget/p;

    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .line 628
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 629
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->A:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 630
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 631
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    .line 681
    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i()V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 690
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    :goto_0
    return-void

    .line 687
    :cond_1
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Landroidx/appcompat/widget/p;

    invoke-interface {p0}, Landroidx/appcompat/widget/p;->g()V

    return-void

    .line 684
    :cond_2
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Landroidx/appcompat/widget/p;

    invoke-interface {p0}, Landroidx/appcompat/widget/p;->f()V

    return-void
.end method

.method public final a(Landroid/view/Menu;Landroidx/appcompat/view/menu/m$a;)V
    .locals 0

    .line 768
    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i()V

    .line 769
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Landroidx/appcompat/widget/p;

    invoke-interface {p0, p1, p2}, Landroidx/appcompat/widget/p;->a(Landroid/view/Menu;Landroidx/appcompat/view/menu/m$a;)V

    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 494
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onStopNestedScroll(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;IIIII)V
    .locals 0

    if-nez p6, :cond_0

    .line 502
    invoke-virtual/range {p0 .. p5}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onNestedScroll(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;IIIII[I)V
    .locals 0

    .line 474
    invoke-virtual/range {p0 .. p6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a(Landroid/view/View;IIIII)V

    return-void
.end method

.method public final a(Landroid/view/View;II[II)V
    .locals 0

    if-nez p5, :cond_0

    .line 509
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onNestedPreScroll(Landroid/view/View;II[I)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    if-nez p4, :cond_0

    .line 481
    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    if-nez p4, :cond_0

    .line 487
    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 0

    .line 732
    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i()V

    .line 733
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Landroidx/appcompat/widget/p;

    invoke-interface {p0}, Landroidx/appcompat/widget/p;->h()Z

    move-result p0

    return p0
.end method

.method public final c()Z
    .locals 0

    .line 738
    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i()V

    .line 739
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Landroidx/appcompat/widget/p;

    invoke-interface {p0}, Landroidx/appcompat/widget/p;->i()Z

    move-result p0

    return p0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 337
    instance-of p0, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;

    return p0
.end method

.method public final d()Z
    .locals 0

    .line 744
    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i()V

    .line 745
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Landroidx/appcompat/widget/p;

    invoke-interface {p0}, Landroidx/appcompat/widget/p;->j()Z

    move-result p0

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 453
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 454
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Z

    if-nez v0, :cond_1

    .line 455
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    .line 456
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContainer;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContainer;->getTranslationY()F

    move-result v2

    add-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 458
    :goto_0
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Landroid/graphics/drawable/Drawable;

    .line 459
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v0

    .line 458
    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 460
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public final e()Z
    .locals 0

    .line 750
    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i()V

    .line 751
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Landroidx/appcompat/widget/p;

    invoke-interface {p0}, Landroidx/appcompat/widget/p;->k()Z

    move-result p0

    return p0
.end method

.method public final f()Z
    .locals 0

    .line 756
    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i()V

    .line 757
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Landroidx/appcompat/widget/p;

    invoke-interface {p0}, Landroidx/appcompat/widget/p;->l()Z

    move-result p0

    return p0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 3

    .line 289
    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i()V

    .line 291
    invoke-static {p0}, Landroidx/core/e/r;->i(Landroid/view/View;)I

    .line 296
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    .line 298
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->t:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 299
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->t:Landroid/graphics/Rect;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Landroid/graphics/Rect;

    invoke-static {p0, p1, v1}, Landroidx/appcompat/widget/ak;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 300
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->u:Landroid/graphics/Rect;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->t:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 302
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->u:Landroid/graphics/Rect;

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->t:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move v0, v1

    .line 304
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Landroid/graphics/Rect;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 306
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Landroid/graphics/Rect;

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move v0, v1

    :cond_1
    if-eqz v0, :cond_2

    .line 310
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->requestLayout()V

    :cond_2
    return v1
.end method

.method public final g()V
    .locals 0

    .line 762
    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i()V

    .line 763
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Landroidx/appcompat/widget/p;

    invoke-interface {p0}, Landroidx/appcompat/widget/p;->m()V

    return-void
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 4322
    new-instance p0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;

    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;-><init>()V

    return-object p0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 4327
    new-instance v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 332
    new-instance p0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getActionBarHideOffset()I
    .locals 1

    .line 617
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->getTranslationY()F

    move-result p0

    float-to-int p0, p0

    neg-int p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getNestedScrollAxes()I
    .locals 0

    .line 580
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->B:Landroidx/core/e/n;

    invoke-virtual {p0}, Landroidx/core/e/n;->a()I

    move-result p0

    return p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 675
    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i()V

    .line 676
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Landroidx/appcompat/widget/p;

    invoke-interface {p0}, Landroidx/appcompat/widget/p;->e()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final h()V
    .locals 0

    .line 786
    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i()V

    .line 787
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Landroidx/appcompat/widget/p;

    invoke-interface {p0}, Landroidx/appcompat/widget/p;->n()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 225
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 226
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a(Landroid/content/Context;)V

    .line 227
    invoke-static {p0}, Landroidx/core/e/r;->j(Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 164
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 165
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 427
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getChildCount()I

    move-result p1

    .line 429
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result p2

    .line 430
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getPaddingRight()I

    .line 432
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result p3

    .line 433
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_1

    .line 436
    invoke-virtual {p0, p4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 437
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 438
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;

    .line 440
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 441
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 443
    iget v3, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->leftMargin:I

    add-int/2addr v3, p2

    .line 444
    iget v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->topMargin:I

    add-int/2addr v0, p3

    add-int/2addr v1, v3

    add-int/2addr v2, v0

    .line 446
    invoke-virtual {p5, v3, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 342
    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i()V

    .line 351
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 352
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;

    .line 353
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    .line 354
    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->rightMargin:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    .line 353
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 355
    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    .line 356
    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v3

    iget v4, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->topMargin:I

    add-int/2addr v3, v4

    iget v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->bottomMargin:I

    add-int/2addr v3, v0

    .line 355
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 357
    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredState()I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v3

    .line 359
    invoke-static {p0}, Landroidx/core/e/r;->i(Landroid/view/View;)I

    move-result v4

    and-int/lit16 v4, v4, 0x100

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eqz v4, :cond_1

    .line 365
    iget v6, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:I

    .line 366
    iget-boolean v7, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m:Z

    if-eqz v7, :cond_3

    .line 367
    iget-object v7, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v7}, Landroidx/appcompat/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 370
    iget v7, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:I

    add-int/2addr v6, v7

    goto :goto_1

    .line 373
    :cond_1
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v6}, Landroidx/appcompat/widget/ActionBarContainer;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_2

    .line 376
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v6}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v6

    goto :goto_1

    :cond_2
    move v6, v2

    .line 383
    :cond_3
    :goto_1
    iget-object v7, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s:Landroid/graphics/Rect;

    iget-object v8, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 384
    iget-object v7, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->v:Landroid/graphics/Rect;

    iget-object v8, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->t:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 385
    iget-boolean v7, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->b:Z

    if-nez v7, :cond_4

    if-nez v4, :cond_4

    .line 386
    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s:Landroid/graphics/Rect;

    iget v7, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v6

    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 387
    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 389
    :cond_4
    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->v:Landroid/graphics/Rect;

    iget v7, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v6

    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 390
    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->v:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 392
    :goto_2
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s:Landroid/graphics/Rect;

    invoke-static {v2, v4, v5}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 394
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->w:Landroid/graphics/Rect;

    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->v:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 398
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->w:Landroid/graphics/Rect;

    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->v:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 400
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->v:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/ContentFrameLayout;->a(Landroid/graphics/Rect;)V

    .line 403
    :cond_5
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/ContentFrameLayout;

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move v7, p1

    move v9, p2

    invoke-virtual/range {v5 .. v10}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 404
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/ContentFrameLayout;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;

    .line 405
    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/ContentFrameLayout;

    .line 406
    invoke-virtual {v4}, Landroidx/appcompat/widget/ContentFrameLayout;->getMeasuredWidth()I

    move-result v4

    iget v5, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->rightMargin:I

    add-int/2addr v4, v5

    .line 405
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 407
    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/ContentFrameLayout;

    .line 408
    invoke-virtual {v4}, Landroidx/appcompat/widget/ContentFrameLayout;->getMeasuredHeight()I

    move-result v4

    iget v5, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->topMargin:I

    add-int/2addr v4, v5

    iget v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->bottomMargin:I

    add-int/2addr v4, v2

    .line 407
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 409
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/ContentFrameLayout;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getMeasuredState()I

    move-result v2

    invoke-static {v3, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    .line 412
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 413
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 416
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 417
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 420
    invoke-static {v1, p1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    shl-int/lit8 v1, v2, 0x10

    .line 421
    invoke-static {v0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 419
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 9

    .line 556
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    if-nez p4, :cond_0

    goto :goto_1

    .line 1656
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->y:Landroid/widget/OverScroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    float-to-int v4, p3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 1657
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->y:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->getFinalY()I

    move-result p1

    .line 1658
    iget-object p3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p3}, Landroidx/appcompat/widget/ActionBarContainer;->getHeight()I

    move-result p3

    const/4 p4, 0x1

    if-le p1, p3, :cond_1

    move p2, p4

    :cond_1
    if-eqz p2, :cond_2

    .line 2651
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a()V

    .line 2652
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->A:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3646
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a()V

    .line 3647
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 564
    :goto_0
    iput-boolean p4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c:Z

    return p4

    :cond_3
    :goto_1
    return p2
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 0

    .line 536
    iget p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->o:I

    add-int/2addr p1, p3

    iput p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->o:I

    .line 537
    iget p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->o:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 525
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->B:Landroidx/core/e/n;

    const/4 p2, 0x0

    .line 1063
    invoke-virtual {p1, p3, p2}, Landroidx/core/e/n;->a(II)V

    .line 526
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->o:I

    .line 527
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a()V

    .line 528
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

    if-eqz p1, :cond_0

    .line 529
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

    invoke-interface {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout$a;->k()V

    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_1

    .line 517
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContainer;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 520
    :cond_0
    iget-boolean p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n:Z

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 3

    .line 542
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c:Z

    if-nez p1, :cond_1

    .line 543
    iget p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->o:I

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContainer;->getHeight()I

    move-result v0

    const-wide/16 v1, 0x258

    if-gt p1, v0, :cond_0

    .line 1636
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a()V

    .line 1637
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v1, v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1641
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a()V

    .line 1642
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->A:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v1, v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 4

    .line 232
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 233
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowSystemUiVisibilityChanged(I)V

    .line 235
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i()V

    .line 236
    iget v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->p:I

    xor-int/2addr v0, p1

    .line 237
    iput p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->p:I

    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_2

    move v2, v3

    .line 240
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

    if-eqz p1, :cond_5

    .line 244
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

    xor-int/lit8 v3, v2, 0x1

    invoke-interface {p1, v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout$a;->d(Z)V

    if-nez v1, :cond_4

    if-nez v2, :cond_3

    goto :goto_1

    .line 246
    :cond_3
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

    invoke-interface {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout$a;->j()V

    goto :goto_2

    .line 245
    :cond_4
    :goto_1
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

    invoke-interface {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout$a;->i()V

    :cond_5
    :goto_2
    and-int/lit16 p1, v0, 0x100

    if-eqz p1, :cond_6

    .line 249
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

    if-eqz p1, :cond_6

    .line 250
    invoke-static {p0}, Landroidx/core/e/r;->j(Landroid/view/View;)V

    :cond_6
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .line 257
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 258
    iput p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:I

    .line 259
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

    if-eqz v0, :cond_0

    .line 260
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout$a;->a(I)V

    :cond_0
    return-void
.end method

.method public setActionBarHideOffset(I)V
    .locals 1

    .line 621
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a()V

    .line 622
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContainer;->getHeight()I

    move-result v0

    .line 623
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 624
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContainer;->setTranslationY(F)V

    return-void
.end method

.method public setActionBarVisibilityCallback(Landroidx/appcompat/widget/ActionBarOverlayLayout$a;)V
    .locals 1

    .line 169
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

    .line 170
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 173
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

    iget v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:I

    invoke-interface {p1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout$a;->a(I)V

    .line 174
    iget p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->p:I

    if-eqz p1, :cond_0

    .line 175
    iget p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->p:I

    .line 176
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onWindowSystemUiVisibilityChanged(I)V

    .line 177
    invoke-static {p0}, Landroidx/core/e/r;->j(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setHasNonEmbeddedTabs(Z)V
    .locals 0

    .line 199
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m:Z

    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 1

    .line 603
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n:Z

    if-eq p1, v0, :cond_0

    .line 604
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n:Z

    if-nez p1, :cond_0

    .line 606
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a()V

    const/4 p1, 0x0

    .line 607
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    :cond_0
    return-void
.end method

.method public setIcon(I)V
    .locals 0

    .line 714
    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i()V

    .line 715
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Landroidx/appcompat/widget/p;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/p;->a(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 720
    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i()V

    .line 721
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Landroidx/appcompat/widget/p;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/p;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogo(I)V
    .locals 0

    .line 726
    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i()V

    .line 727
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Landroidx/appcompat/widget/p;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/p;->b(I)V

    return-void
.end method

.method public setOverlayMode(Z)V
    .locals 1

    .line 183
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->b:Z

    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x13

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Z

    return-void
.end method

.method public setShowingForActionMode(Z)V
    .locals 0

    return-void
.end method

.method public setUiOptions(I)V
    .locals 0

    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0

    .line 663
    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i()V

    .line 664
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Landroidx/appcompat/widget/p;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/p;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 669
    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i()V

    .line 670
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Landroidx/appcompat/widget/p;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/p;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
