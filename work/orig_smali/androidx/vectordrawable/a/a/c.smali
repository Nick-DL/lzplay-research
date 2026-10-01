.class public final Landroidx/vectordrawable/a/a/c;
.super Landroidx/vectordrawable/a/a/h;
.source "AnimatedVectorDrawableCompat.java"

# interfaces
.implements Landroidx/vectordrawable/a/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/vectordrawable/a/a/c$a;,
        Landroidx/vectordrawable/a/a/c$b;
    }
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final b:Landroid/graphics/drawable/Drawable$Callback;

.field private d:Landroidx/vectordrawable/a/a/c$a;

.field private e:Landroid/content/Context;

.field private f:Landroid/animation/ArgbEvaluator;

.field private g:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 168
    invoke-direct {p0, v0, v1}, Landroidx/vectordrawable/a/a/c;-><init>(Landroid/content/Context;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 172
    invoke-direct {p0, p1, v0}, Landroidx/vectordrawable/a/a/c;-><init>(Landroid/content/Context;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .registers 3

    .line 177
    invoke-direct {p0}, Landroidx/vectordrawable/a/a/h;-><init>()V

    const/4 p2, 0x0

    .line 156
    iput-object p2, p0, Landroidx/vectordrawable/a/a/c;->f:Landroid/animation/ArgbEvaluator;

    .line 161
    iput-object p2, p0, Landroidx/vectordrawable/a/a/c;->g:Landroid/animation/Animator$AnimatorListener;

    .line 164
    iput-object p2, p0, Landroidx/vectordrawable/a/a/c;->a:Ljava/util/ArrayList;

    .line 733
    new-instance p2, Landroidx/vectordrawable/a/a/c$1;

    invoke-direct {p2, p0}, Landroidx/vectordrawable/a/a/c$1;-><init>(Landroidx/vectordrawable/a/a/c;)V

    iput-object p2, p0, Landroidx/vectordrawable/a/a/c;->b:Landroid/graphics/drawable/Drawable$Callback;

    .line 178
    iput-object p1, p0, Landroidx/vectordrawable/a/a/c;->e:Landroid/content/Context;

    .line 182
    new-instance p1, Landroidx/vectordrawable/a/a/c$a;

    invoke-direct {p1}, Landroidx/vectordrawable/a/a/c$a;-><init>()V

    iput-object p1, p0, Landroidx/vectordrawable/a/a/c;->d:Landroidx/vectordrawable/a/a/c$a;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/vectordrawable/a/a/c;
    .registers 6

    .line 253
    new-instance v0, Landroidx/vectordrawable/a/a/c;

    invoke-direct {v0, p0}, Landroidx/vectordrawable/a/a/c;-><init>(Landroid/content/Context;)V

    .line 254
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/vectordrawable/a/a/c;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method

.method private a(Landroid/animation/Animator;)V
    .registers 5

    .line 661
    instance-of v0, p1, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_20

    .line 662
    move-object v0, p1

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_20

    const/4 v1, 0x0

    .line 664
    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 665
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-direct {p0, v2}, Landroidx/vectordrawable/a/a/c;->a(Landroid/animation/Animator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 669
    :cond_20
    instance-of v0, p1, Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_4a

    .line 670
    check-cast p1, Landroid/animation/ObjectAnimator;

    .line 671
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fillColor"

    .line 672
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    const-string v1, "strokeColor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 673
    :cond_3a
    iget-object v0, p0, Landroidx/vectordrawable/a/a/c;->f:Landroid/animation/ArgbEvaluator;

    if-nez v0, :cond_45

    .line 674
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/a/a/c;->f:Landroid/animation/ArgbEvaluator;

    .line 676
    :cond_45
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->f:Landroid/animation/ArgbEvaluator;

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    :cond_4a
    return-void
.end method


# virtual methods
.method public final applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 3

    .line 522
    iget-object v0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 523
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    return-void

    :cond_a
    return-void
.end method

.method public final canApplyTheme()Z
    .registers 2

    .line 532
    iget-object v0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 533
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->c(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic clearColorFilter()V
    .registers 1

    .line 143
    invoke-super {p0}, Landroidx/vectordrawable/a/a/h;->clearColorFilter()V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 284
    iget-object v0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 285
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 288
    :cond_a
    iget-object v0, p0, Landroidx/vectordrawable/a/a/c;->d:Landroidx/vectordrawable/a/a/c$a;

    iget-object v0, v0, Landroidx/vectordrawable/a/a/c$a;->b:Landroidx/vectordrawable/a/a/i;

    invoke-virtual {v0, p1}, Landroidx/vectordrawable/a/a/i;->draw(Landroid/graphics/Canvas;)V

    .line 289
    iget-object p1, p0, Landroidx/vectordrawable/a/a/c;->d:Landroidx/vectordrawable/a/a/c$a;

    iget-object p1, p1, Landroidx/vectordrawable/a/a/c$a;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 290
    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/c;->invalidateSelf()V

    :cond_1e
    return-void
.end method

.method public final getAlpha()I
    .registers 2

    .line 321
    iget-object v0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 322
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    return p0

    .line 324
    :cond_b
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->d:Landroidx/vectordrawable/a/a/c$a;

    iget-object p0, p0, Landroidx/vectordrawable/a/a/c$a;->b:Landroidx/vectordrawable/a/a/i;

    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/i;->getAlpha()I

    move-result p0

    return p0
.end method

.method public final getChangingConfigurations()I
    .registers 2

    .line 276
    iget-object v0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 277
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p0

    return p0

    .line 279
    :cond_b
    invoke-super {p0}, Landroidx/vectordrawable/a/a/h;->getChangingConfigurations()I

    move-result v0

    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->d:Landroidx/vectordrawable/a/a/c$a;

    iget p0, p0, Landroidx/vectordrawable/a/a/c$a;->a:I

    or-int/2addr p0, v0

    return p0
.end method

.method public final getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .line 347
    iget-object v0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 348
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0

    .line 350
    :cond_b
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->d:Landroidx/vectordrawable/a/a/c$a;

    iget-object p0, p0, Landroidx/vectordrawable/a/a/c$a;->b:Landroidx/vectordrawable/a/a/i;

    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/i;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    .line 265
    iget-object v0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_16

    .line 266
    new-instance v0, Landroidx/vectordrawable/a/a/c$b;

    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/vectordrawable/a/a/c$b;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public final bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 143
    invoke-super {p0}, Landroidx/vectordrawable/a/a/h;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final getIntrinsicHeight()I
    .registers 2

    .line 420
    iget-object v0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 421
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    return p0

    .line 423
    :cond_b
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->d:Landroidx/vectordrawable/a/a/c$a;

    iget-object p0, p0, Landroidx/vectordrawable/a/a/c$a;->b:Landroidx/vectordrawable/a/a/i;

    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/i;->getIntrinsicHeight()I

    move-result p0

    return p0
.end method

.method public final getIntrinsicWidth()I
    .registers 2

    .line 412
    iget-object v0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 413
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    return p0

    .line 415
    :cond_b
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->d:Landroidx/vectordrawable/a/a/c$a;

    iget-object p0, p0, Landroidx/vectordrawable/a/a/c$a;->b:Landroidx/vectordrawable/a/a/i;

    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/i;->getIntrinsicWidth()I

    move-result p0

    return p0
.end method

.method public final bridge synthetic getMinimumHeight()I
    .registers 1

    .line 143
    invoke-super {p0}, Landroidx/vectordrawable/a/a/h;->getMinimumHeight()I

    move-result p0

    return p0
.end method

.method public final bridge synthetic getMinimumWidth()I
    .registers 1

    .line 143
    invoke-super {p0}, Landroidx/vectordrawable/a/a/h;->getMinimumWidth()I

    move-result p0

    return p0
.end method

.method public final getOpacity()I
    .registers 2

    .line 404
    iget-object v0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 405
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

    return p0

    .line 407
    :cond_b
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->d:Landroidx/vectordrawable/a/a/c$a;

    iget-object p0, p0, Landroidx/vectordrawable/a/a/c$a;->b:Landroidx/vectordrawable/a/a/i;

    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/i;->getOpacity()I

    move-result p0

    return p0
.end method

.method public final bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .registers 2

    .line 143
    invoke-super {p0, p1}, Landroidx/vectordrawable/a/a/h;->getPadding(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic getState()[I
    .registers 1

    .line 143
    invoke-super {p0}, Landroidx/vectordrawable/a/a/h;->getState()[I

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic getTransparentRegion()Landroid/graphics/Region;
    .registers 1

    .line 143
    invoke-super {p0}, Landroidx/vectordrawable/a/a/h;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object p0

    return-object p0
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v0, 0x0

    .line 517
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/vectordrawable/a/a/c;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 13

    .line 446
    iget-object v0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 447
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    .line 450
    :cond_a
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 451
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    :goto_14
    if-eq v0, v2, :cond_e7

    .line 455
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ge v3, v1, :cond_1f

    const/4 v3, 0x3

    if-eq v0, v3, :cond_e7

    :cond_1f
    const/4 v3, 0x2

    if-ne v0, v3, :cond_e1

    .line 457
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "animated-vector"

    .line 461
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5d

    .line 462
    sget-object v0, Landroidx/vectordrawable/a/a/a;->e:[I

    .line 463
    invoke-static {p1, p4, p3, v0}, Landroidx/core/content/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 466
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_58

    .line 472
    invoke-static {p1, v3, p4}, Landroidx/vectordrawable/a/a/i;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/vectordrawable/a/a/i;

    move-result-object v3

    .line 1902
    iput-boolean v4, v3, Landroidx/vectordrawable/a/a/i;->d:Z

    .line 475
    iget-object v4, p0, Landroidx/vectordrawable/a/a/c;->b:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v3, v4}, Landroidx/vectordrawable/a/a/i;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 476
    iget-object v4, p0, Landroidx/vectordrawable/a/a/c;->d:Landroidx/vectordrawable/a/a/c$a;

    iget-object v4, v4, Landroidx/vectordrawable/a/a/c$a;->b:Landroidx/vectordrawable/a/a/i;

    if-eqz v4, :cond_54

    .line 477
    iget-object v4, p0, Landroidx/vectordrawable/a/a/c;->d:Landroidx/vectordrawable/a/a/c$a;

    iget-object v4, v4, Landroidx/vectordrawable/a/a/c$a;->b:Landroidx/vectordrawable/a/a/i;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/vectordrawable/a/a/i;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 479
    :cond_54
    iget-object v4, p0, Landroidx/vectordrawable/a/a/c;->d:Landroidx/vectordrawable/a/a/c$a;

    iput-object v3, v4, Landroidx/vectordrawable/a/a/c$a;->b:Landroidx/vectordrawable/a/a/i;

    .line 481
    :cond_58
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_e1

    :cond_5d
    const-string v3, "target"

    .line 482
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 483
    sget-object v0, Landroidx/vectordrawable/a/a/a;->f:[I

    .line 484
    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 486
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 489
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_de

    .line 493
    iget-object v5, p0, Landroidx/vectordrawable/a/a/c;->e:Landroid/content/Context;

    if-eqz v5, :cond_d3

    .line 496
    iget-object v5, p0, Landroidx/vectordrawable/a/a/c;->e:Landroid/content/Context;

    .line 2100
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_86

    .line 2101
    invoke-static {v5, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    goto :goto_92

    .line 2103
    :cond_86
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    .line 2119
    invoke-static {v5, v6, v7, v4}, Landroidx/vectordrawable/a/a/e;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;

    move-result-object v4

    .line 2682
    :goto_92
    iget-object v5, p0, Landroidx/vectordrawable/a/a/c;->d:Landroidx/vectordrawable/a/a/c$a;

    iget-object v5, v5, Landroidx/vectordrawable/a/a/c$a;->b:Landroidx/vectordrawable/a/a/i;

    .line 3345
    iget-object v5, v5, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    iget-object v5, v5, Landroidx/vectordrawable/a/a/i$g;->b:Landroidx/vectordrawable/a/a/i$f;

    iget-object v5, v5, Landroidx/vectordrawable/a/a/i$f;->k:Landroidx/b/a;

    invoke-virtual {v5, v3}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2683
    invoke-virtual {v4, v5}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 2684
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_ac

    .line 2685
    invoke-direct {p0, v4}, Landroidx/vectordrawable/a/a/c;->a(Landroid/animation/Animator;)V

    .line 2687
    :cond_ac
    iget-object v5, p0, Landroidx/vectordrawable/a/a/c;->d:Landroidx/vectordrawable/a/a/c$a;

    iget-object v5, v5, Landroidx/vectordrawable/a/a/c$a;->d:Ljava/util/ArrayList;

    if-nez v5, :cond_c4

    .line 2688
    iget-object v5, p0, Landroidx/vectordrawable/a/a/c;->d:Landroidx/vectordrawable/a/a/c$a;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Landroidx/vectordrawable/a/a/c$a;->d:Ljava/util/ArrayList;

    .line 2689
    iget-object v5, p0, Landroidx/vectordrawable/a/a/c;->d:Landroidx/vectordrawable/a/a/c$a;

    new-instance v6, Landroidx/b/a;

    invoke-direct {v6}, Landroidx/b/a;-><init>()V

    iput-object v6, v5, Landroidx/vectordrawable/a/a/c$a;->e:Landroidx/b/a;

    .line 2691
    :cond_c4
    iget-object v5, p0, Landroidx/vectordrawable/a/a/c;->d:Landroidx/vectordrawable/a/a/c$a;

    iget-object v5, v5, Landroidx/vectordrawable/a/a/c$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2692
    iget-object v5, p0, Landroidx/vectordrawable/a/a/c;->d:Landroidx/vectordrawable/a/a/c$a;

    iget-object v5, v5, Landroidx/vectordrawable/a/a/c$a;->e:Landroidx/b/a;

    invoke-virtual {v5, v4, v3}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_de

    .line 500
    :cond_d3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 501
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Context can\'t be null when inflating animators"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 505
    :cond_de
    :goto_de
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 508
    :cond_e1
    :goto_e1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto/16 :goto_14

    .line 511
    :cond_e7
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->d:Landroidx/vectordrawable/a/a/c$a;

    .line 3648
    iget-object p1, p0, Landroidx/vectordrawable/a/a/c$a;->c:Landroid/animation/AnimatorSet;

    if-nez p1, :cond_f4

    .line 3649
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Landroidx/vectordrawable/a/a/c$a;->c:Landroid/animation/AnimatorSet;

    .line 3651
    :cond_f4
    iget-object p1, p0, Landroidx/vectordrawable/a/a/c$a;->c:Landroid/animation/AnimatorSet;

    iget-object p0, p0, Landroidx/vectordrawable/a/a/c$a;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-void
.end method

.method public final isAutoMirrored()Z
    .registers 2

    .line 428
    iget-object v0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 429
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    return p0

    .line 431
    :cond_b
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->d:Landroidx/vectordrawable/a/a/c$a;

    iget-object p0, p0, Landroidx/vectordrawable/a/a/c$a;->b:Landroidx/vectordrawable/a/a/i;

    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/i;->isAutoMirrored()Z

    move-result p0

    return p0
.end method

.method public final isRunning()Z
    .registers 2

    .line 700
    iget-object v0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    .line 702
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    check-cast p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result p0

    return p0

    .line 704
    :cond_d
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->d:Landroidx/vectordrawable/a/a/c$a;

    iget-object p0, p0, Landroidx/vectordrawable/a/a/c$a;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    return p0
.end method

.method public final isStateful()Z
    .registers 2

    .line 394
    iget-object v0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 395
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    return p0

    .line 397
    :cond_b
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->d:Landroidx/vectordrawable/a/a/c$a;

    iget-object p0, p0, Landroidx/vectordrawable/a/a/c$a;->b:Landroidx/vectordrawable/a/a/i;

    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/i;->isStateful()Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic jumpToCurrentState()V
    .registers 1

    .line 143
    invoke-super {p0}, Landroidx/vectordrawable/a/a/h;->jumpToCurrentState()V

    return-void
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 193
    iget-object v0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 194
    iget-object v0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_9
    return-object p0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    .line 296
    iget-object v0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 297
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void

    .line 300
    :cond_a
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->d:Landroidx/vectordrawable/a/a/c$a;

    iget-object p0, p0, Landroidx/vectordrawable/a/a/c$a;->b:Landroidx/vectordrawable/a/a/i;

    invoke-virtual {p0, p1}, Landroidx/vectordrawable/a/a/i;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected final onLevelChange(I)Z
    .registers 3

    .line 313
    iget-object v0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 314
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p0

    return p0

    .line 316
    :cond_b
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->d:Landroidx/vectordrawable/a/a/c$a;

    iget-object p0, p0, Landroidx/vectordrawable/a/a/c$a;->b:Landroidx/vectordrawable/a/a/i;

    invoke-virtual {p0, p1}, Landroidx/vectordrawable/a/a/i;->setLevel(I)Z

    move-result p0

    return p0
.end method

.method protected final onStateChange([I)Z
    .registers 3

    .line 305
    iget-object v0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 306
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p0

    return p0

    .line 308
    :cond_b
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->d:Landroidx/vectordrawable/a/a/c$a;

    iget-object p0, p0, Landroidx/vectordrawable/a/a/c$a;->b:Landroidx/vectordrawable/a/a/i;

    invoke-virtual {p0, p1}, Landroidx/vectordrawable/a/a/i;->setState([I)Z

    move-result p0

    return p0
.end method

.method public final setAlpha(I)V
    .registers 3

    .line 329
    iget-object v0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 330
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    .line 333
    :cond_a
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->d:Landroidx/vectordrawable/a/a/c$a;

    iget-object p0, p0, Landroidx/vectordrawable/a/a/c$a;->b:Landroidx/vectordrawable/a/a/i;

    invoke-virtual {p0, p1}, Landroidx/vectordrawable/a/a/i;->setAlpha(I)V

    return-void
.end method

.method public final setAutoMirrored(Z)V
    .registers 3

    .line 436
    iget-object v0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 437
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Z)V

    return-void

    .line 440
    :cond_a
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->d:Landroidx/vectordrawable/a/a/c$a;

    iget-object p0, p0, Landroidx/vectordrawable/a/a/c$a;->b:Landroidx/vectordrawable/a/a/i;

    invoke-virtual {p0, p1}, Landroidx/vectordrawable/a/a/i;->setAutoMirrored(Z)V

    return-void
.end method

.method public final bridge synthetic setChangingConfigurations(I)V
    .registers 2

    .line 143
    invoke-super {p0, p1}, Landroidx/vectordrawable/a/a/h;->setChangingConfigurations(I)V

    return-void
.end method

.method public final bridge synthetic setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 143
    invoke-super {p0, p1, p2}, Landroidx/vectordrawable/a/a/h;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 338
    iget-object v0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 339
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    .line 342
    :cond_a
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->d:Landroidx/vectordrawable/a/a/c$a;

    iget-object p0, p0, Landroidx/vectordrawable/a/a/c$a;->b:Landroidx/vectordrawable/a/a/i;

    invoke-virtual {p0, p1}, Landroidx/vectordrawable/a/a/i;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public final bridge synthetic setFilterBitmap(Z)V
    .registers 2

    .line 143
    invoke-super {p0, p1}, Landroidx/vectordrawable/a/a/h;->setFilterBitmap(Z)V

    return-void
.end method

.method public final bridge synthetic setHotspot(FF)V
    .registers 3

    .line 143
    invoke-super {p0, p1, p2}, Landroidx/vectordrawable/a/a/h;->setHotspot(FF)V

    return-void
.end method

.method public final bridge synthetic setHotspotBounds(IIII)V
    .registers 5

    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/vectordrawable/a/a/h;->setHotspotBounds(IIII)V

    return-void
.end method

.method public final bridge synthetic setState([I)Z
    .registers 2

    .line 143
    invoke-super {p0, p1}, Landroidx/vectordrawable/a/a/h;->setState([I)Z

    move-result p0

    return p0
.end method

.method public final setTint(I)V
    .registers 3

    .line 355
    iget-object v0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 356
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;I)V

    return-void

    .line 360
    :cond_a
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->d:Landroidx/vectordrawable/a/a/c$a;

    iget-object p0, p0, Landroidx/vectordrawable/a/a/c$a;->b:Landroidx/vectordrawable/a/a/i;

    invoke-virtual {p0, p1}, Landroidx/vectordrawable/a/a/i;->setTint(I)V

    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 365
    iget-object v0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 366
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    .line 370
    :cond_a
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->d:Landroidx/vectordrawable/a/a/c$a;

    iget-object p0, p0, Landroidx/vectordrawable/a/a/c$a;->b:Landroidx/vectordrawable/a/a/i;

    invoke-virtual {p0, p1}, Landroidx/vectordrawable/a/a/i;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 375
    iget-object v0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 376
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void

    .line 380
    :cond_a
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->d:Landroidx/vectordrawable/a/a/c$a;

    iget-object p0, p0, Landroidx/vectordrawable/a/a/c$a;->b:Landroidx/vectordrawable/a/a/i;

    invoke-virtual {p0, p1}, Landroidx/vectordrawable/a/a/i;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final setVisible(ZZ)Z
    .registers 4

    .line 385
    iget-object v0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 386
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p0

    return p0

    .line 388
    :cond_b
    iget-object v0, p0, Landroidx/vectordrawable/a/a/c;->d:Landroidx/vectordrawable/a/a/c$a;

    iget-object v0, v0, Landroidx/vectordrawable/a/a/c$a;->b:Landroidx/vectordrawable/a/a/i;

    invoke-virtual {v0, p1, p2}, Landroidx/vectordrawable/a/a/i;->setVisible(ZZ)Z

    .line 389
    invoke-super {p0, p1, p2}, Landroidx/vectordrawable/a/a/h;->setVisible(ZZ)Z

    move-result p0

    return p0
.end method

.method public final start()V
    .registers 2

    .line 709
    iget-object v0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 711
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    check-cast p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void

    .line 715
    :cond_c
    iget-object v0, p0, Landroidx/vectordrawable/a/a/c;->d:Landroidx/vectordrawable/a/a/c$a;

    iget-object v0, v0, Landroidx/vectordrawable/a/a/c$a;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    .line 719
    :cond_17
    iget-object v0, p0, Landroidx/vectordrawable/a/a/c;->d:Landroidx/vectordrawable/a/a/c$a;

    iget-object v0, v0, Landroidx/vectordrawable/a/a/c$a;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 720
    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/c;->invalidateSelf()V

    return-void
.end method

.method public final stop()V
    .registers 2

    .line 725
    iget-object v0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 727
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    check-cast p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    return-void

    .line 730
    :cond_c
    iget-object p0, p0, Landroidx/vectordrawable/a/a/c;->d:Landroidx/vectordrawable/a/a/c$a;

    iget-object p0, p0, Landroidx/vectordrawable/a/a/c$a;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    return-void
.end method
