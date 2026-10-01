.class public final Landroidx/customview/a/a;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/customview/a/a$a;
    }
.end annotation


# static fields
.field private static final v:Landroid/view/animation/Interpolator;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:[F

.field public e:[F

.field public f:[F

.field public g:[F

.field public h:Landroid/view/VelocityTracker;

.field public i:F

.field public j:I

.field public k:I

.field public l:Landroid/view/View;

.field public m:Z

.field private n:[I

.field private o:[I

.field private p:[I

.field private q:I

.field private r:F

.field private s:Landroid/widget/OverScroller;

.field private final t:Landroidx/customview/a/a$a;

.field private final u:Landroid/view/ViewGroup;

.field private final w:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 332
    new-instance v0, Landroidx/customview/a/a$1;

    invoke-direct {v0}, Landroidx/customview/a/a$1;-><init>()V

    sput-object v0, Landroidx/customview/a/a;->v:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroidx/customview/a/a$a;)V
    .registers 5

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 119
    iput v0, p0, Landroidx/customview/a/a;->c:I

    .line 340
    new-instance v0, Landroidx/customview/a/a$2;

    invoke-direct {v0, p0}, Landroidx/customview/a/a$2;-><init>(Landroidx/customview/a/a;)V

    iput-object v0, p0, Landroidx/customview/a/a;->w:Ljava/lang/Runnable;

    if-eqz p2, :cond_52

    if-eqz p3, :cond_4a

    .line 391
    iput-object p2, p0, Landroidx/customview/a/a;->u:Landroid/view/ViewGroup;

    .line 392
    iput-object p3, p0, Landroidx/customview/a/a;->t:Landroidx/customview/a/a$a;

    .line 394
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 395
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr p3, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p3, v0

    float-to-int p3, p3

    .line 396
    iput p3, p0, Landroidx/customview/a/a;->j:I

    .line 398
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Landroidx/customview/a/a;->b:I

    .line 399
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Landroidx/customview/a/a;->r:F

    .line 400
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Landroidx/customview/a/a;->i:F

    .line 401
    new-instance p2, Landroid/widget/OverScroller;

    sget-object p3, Landroidx/customview/a/a;->v:Landroid/view/animation/Interpolator;

    invoke-direct {p2, p1, p3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Landroidx/customview/a/a;->s:Landroid/widget/OverScroller;

    return-void

    .line 388
    :cond_4a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 385
    :cond_52
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parent view may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(F)F
    .registers 3

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p0, v0

    const v0, 0x3ef1463b

    mul-float/2addr p0, v0

    float-to-double v0, p0

    .line 696
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method private static a(FFF)F
    .registers 5

    .line 687
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float p1, v0, p1

    const/4 v1, 0x0

    if-gez p1, :cond_a

    return v1

    :cond_a
    cmpl-float p1, v0, p2

    if-lez p1, :cond_15

    cmpl-float p0, p0, v1

    if-lez p0, :cond_13

    return p2

    :cond_13
    neg-float p0, p2

    return p0

    :cond_15
    return p0
.end method

.method private a(III)I
    .registers 6

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 642
    :cond_4
    iget-object p0, p0, Landroidx/customview/a/a;->u:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    .line 643
    div-int/lit8 v0, p0, 0x2

    .line 644
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    int-to-float p0, p0

    div-float/2addr v1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    int-to-float v0, v0

    .line 646
    invoke-static {v1}, Landroidx/customview/a/a;->a(F)F

    move-result v1

    mul-float/2addr v1, v0

    add-float/2addr v0, v1

    .line 649
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_36

    const/high16 p0, 0x447a0000    # 1000.0f

    int-to-float p1, p2

    div-float/2addr v0, p1

    .line 651
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    goto :goto_42

    .line 653
    :cond_36
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p3

    div-float/2addr p1, p2

    add-float/2addr p1, p0

    const/high16 p0, 0x43800000    # 256.0f

    mul-float/2addr p1, p0

    float-to-int p0, p1

    :goto_42
    const/16 p1, 0x258

    .line 656
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private a(Landroid/view/View;IIII)I
    .registers 12

    .line 617
    iget v0, p0, Landroidx/customview/a/a;->i:F

    float-to-int v0, v0

    iget v1, p0, Landroidx/customview/a/a;->r:F

    float-to-int v1, v1

    invoke-static {p4, v0, v1}, Landroidx/customview/a/a;->b(III)I

    move-result p4

    .line 618
    iget v0, p0, Landroidx/customview/a/a;->i:F

    float-to-int v0, v0

    iget v1, p0, Landroidx/customview/a/a;->r:F

    float-to-int v1, v1

    invoke-static {p5, v0, v1}, Landroidx/customview/a/a;->b(III)I

    move-result p5

    .line 619
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 620
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 621
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 622
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v4, v2, v3

    add-int v5, v0, v1

    if-eqz p4, :cond_2e

    int-to-float v0, v2

    int-to-float v2, v4

    :goto_2c
    div-float/2addr v0, v2

    goto :goto_31

    :cond_2e
    int-to-float v0, v0

    int-to-float v2, v5

    goto :goto_2c

    :goto_31
    if-eqz p5, :cond_37

    int-to-float v1, v3

    int-to-float v2, v4

    :goto_35
    div-float/2addr v1, v2

    goto :goto_3a

    :cond_37
    int-to-float v1, v1

    int-to-float v2, v5

    goto :goto_35

    .line 631
    :goto_3a
    iget-object v2, p0, Landroidx/customview/a/a;->t:Landroidx/customview/a/a$a;

    invoke-virtual {v2, p1}, Landroidx/customview/a/a$a;->b(Landroid/view/View;)I

    move-result p1

    invoke-direct {p0, p2, p4, p1}, Landroidx/customview/a/a;->a(III)I

    move-result p1

    const/4 p2, 0x0

    .line 632
    invoke-direct {p0, p3, p5, p2}, Landroidx/customview/a/a;->a(III)I

    move-result p0

    int-to-float p1, p1

    mul-float/2addr p1, v0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static a(Landroid/view/ViewGroup;Landroidx/customview/a/a$a;)Landroidx/customview/a/a;
    .registers 4

    .line 2355
    new-instance v0, Landroidx/customview/a/a;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Landroidx/customview/a/a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroidx/customview/a/a$a;)V

    .line 370
    iget p0, v0, Landroidx/customview/a/a;->b:I

    int-to-float p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    iput p0, v0, Landroidx/customview/a/a;->b:I

    return-object v0
.end method

.method private a(FFI)V
    .registers 14

    .line 2818
    iget-object v0, p0, Landroidx/customview/a/a;->d:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroidx/customview/a/a;->d:[F

    array-length v0, v0

    if-gt v0, p3, :cond_64

    :cond_a
    add-int/lit8 v0, p3, 0x1

    .line 2819
    new-array v2, v0, [F

    .line 2820
    new-array v3, v0, [F

    .line 2821
    new-array v4, v0, [F

    .line 2822
    new-array v5, v0, [F

    .line 2823
    new-array v6, v0, [I

    .line 2824
    new-array v7, v0, [I

    .line 2825
    new-array v0, v0, [I

    .line 2827
    iget-object v8, p0, Landroidx/customview/a/a;->d:[F

    if-eqz v8, :cond_56

    .line 2828
    iget-object v8, p0, Landroidx/customview/a/a;->d:[F

    iget-object v9, p0, Landroidx/customview/a/a;->d:[F

    array-length v9, v9

    invoke-static {v8, v1, v2, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2829
    iget-object v8, p0, Landroidx/customview/a/a;->e:[F

    iget-object v9, p0, Landroidx/customview/a/a;->e:[F

    array-length v9, v9

    invoke-static {v8, v1, v3, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2830
    iget-object v8, p0, Landroidx/customview/a/a;->f:[F

    iget-object v9, p0, Landroidx/customview/a/a;->f:[F

    array-length v9, v9

    invoke-static {v8, v1, v4, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2831
    iget-object v8, p0, Landroidx/customview/a/a;->g:[F

    iget-object v9, p0, Landroidx/customview/a/a;->g:[F

    array-length v9, v9

    invoke-static {v8, v1, v5, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2832
    iget-object v8, p0, Landroidx/customview/a/a;->n:[I

    iget-object v9, p0, Landroidx/customview/a/a;->n:[I

    array-length v9, v9

    invoke-static {v8, v1, v6, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2833
    iget-object v8, p0, Landroidx/customview/a/a;->o:[I

    iget-object v9, p0, Landroidx/customview/a/a;->o:[I

    array-length v9, v9

    invoke-static {v8, v1, v7, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2834
    iget-object v8, p0, Landroidx/customview/a/a;->p:[I

    iget-object v9, p0, Landroidx/customview/a/a;->p:[I

    array-length v9, v9

    invoke-static {v8, v1, v0, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2837
    :cond_56
    iput-object v2, p0, Landroidx/customview/a/a;->d:[F

    .line 2838
    iput-object v3, p0, Landroidx/customview/a/a;->e:[F

    .line 2839
    iput-object v4, p0, Landroidx/customview/a/a;->f:[F

    .line 2840
    iput-object v5, p0, Landroidx/customview/a/a;->g:[F

    .line 2841
    iput-object v6, p0, Landroidx/customview/a/a;->n:[I

    .line 2842
    iput-object v7, p0, Landroidx/customview/a/a;->o:[I

    .line 2843
    iput-object v0, p0, Landroidx/customview/a/a;->p:[I

    .line 849
    :cond_64
    iget-object v0, p0, Landroidx/customview/a/a;->d:[F

    iget-object v2, p0, Landroidx/customview/a/a;->f:[F

    aput p1, v2, p3

    aput p1, v0, p3

    .line 850
    iget-object v0, p0, Landroidx/customview/a/a;->e:[F

    iget-object v2, p0, Landroidx/customview/a/a;->g:[F

    aput p2, v2, p3

    aput p2, v0, p3

    .line 851
    iget-object v0, p0, Landroidx/customview/a/a;->n:[I

    float-to-int p1, p1

    float-to-int p2, p2

    .line 3501
    iget-object v2, p0, Landroidx/customview/a/a;->u:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    iget v3, p0, Landroidx/customview/a/a;->j:I

    add-int/2addr v2, v3

    const/4 v3, 0x1

    if-ge p1, v2, :cond_85

    move v1, v3

    .line 3502
    :cond_85
    iget-object v2, p0, Landroidx/customview/a/a;->u:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    iget v4, p0, Landroidx/customview/a/a;->j:I

    add-int/2addr v2, v4

    if-ge p2, v2, :cond_92

    or-int/lit8 v1, v1, 0x4

    .line 3503
    :cond_92
    iget-object v2, p0, Landroidx/customview/a/a;->u:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    iget v4, p0, Landroidx/customview/a/a;->j:I

    sub-int/2addr v2, v4

    if-le p1, v2, :cond_9f

    or-int/lit8 v1, v1, 0x2

    .line 3504
    :cond_9f
    iget-object p1, p0, Landroidx/customview/a/a;->u:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBottom()I

    move-result p1

    iget v2, p0, Landroidx/customview/a/a;->j:I

    sub-int/2addr p1, v2

    if-le p2, p1, :cond_ac

    or-int/lit8 v1, v1, 0x8

    .line 851
    :cond_ac
    aput v1, v0, p3

    .line 852
    iget p1, p0, Landroidx/customview/a/a;->q:I

    shl-int p2, v3, p3

    or-int/2addr p1, p2

    iput p1, p0, Landroidx/customview/a/a;->q:I

    return-void
.end method

.method private a(FFII)Z
    .registers 7

    .line 1276
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 1277
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 1279
    iget-object v0, p0, Landroidx/customview/a/a;->n:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    const/4 v1, 0x0

    if-ne v0, p4, :cond_43

    iget v0, p0, Landroidx/customview/a/a;->k:I

    and-int/2addr v0, p4

    if-eqz v0, :cond_43

    iget-object v0, p0, Landroidx/customview/a/a;->p:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_43

    iget-object v0, p0, Landroidx/customview/a/a;->o:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_43

    iget v0, p0, Landroidx/customview/a/a;->b:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_32

    iget v0, p0, Landroidx/customview/a/a;->b:I

    int-to-float v0, v0

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_32

    goto :goto_43

    .line 1289
    :cond_32
    iget-object p2, p0, Landroidx/customview/a/a;->o:[I

    aget p2, p2, p3

    and-int/2addr p2, p4

    if-nez p2, :cond_42

    iget p0, p0, Landroidx/customview/a/a;->b:I

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_42

    const/4 p0, 0x1

    return p0

    :cond_42
    return v1

    :cond_43
    :goto_43
    return v1
.end method

.method private a(Landroid/view/View;F)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1306
    :cond_4
    iget-object v1, p0, Landroidx/customview/a/a;->t:Landroidx/customview/a/a$a;

    invoke-virtual {v1, p1}, Landroidx/customview/a/a$a;->b(Landroid/view/View;)I

    move-result p1

    const/4 v1, 0x1

    if-lez p1, :cond_f

    move p1, v1

    goto :goto_10

    :cond_f
    move p1, v0

    :goto_10
    if-eqz p1, :cond_1f

    .line 1312
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Landroidx/customview/a/a;->b:I

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_1e

    return v1

    :cond_1e
    return v0

    :cond_1f
    return v0
.end method

.method private static b(III)I
    .registers 4

    .line 670
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p1, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    if-le v0, p2, :cond_f

    if-lez p0, :cond_d

    return p2

    :cond_d
    neg-int p0, p2

    return p0

    :cond_f
    return p0
.end method

.method private b(F)V
    .registers 5

    const/4 v0, 0x1

    .line 779
    iput-boolean v0, p0, Landroidx/customview/a/a;->m:Z

    .line 780
    iget-object v1, p0, Landroidx/customview/a/a;->t:Landroidx/customview/a/a$a;

    iget-object v2, p0, Landroidx/customview/a/a;->l:Landroid/view/View;

    invoke-virtual {v1, v2, p1}, Landroidx/customview/a/a$a;->a(Landroid/view/View;F)V

    const/4 p1, 0x0

    .line 781
    iput-boolean p1, p0, Landroidx/customview/a/a;->m:Z

    .line 783
    iget v1, p0, Landroidx/customview/a/a;->a:I

    if-ne v1, v0, :cond_14

    .line 785
    invoke-virtual {p0, p1}, Landroidx/customview/a/a;->b(I)V

    :cond_14
    return-void
.end method

.method private b(FFI)V
    .registers 6

    const/4 v0, 0x1

    .line 1256
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/customview/a/a;->a(FFII)Z

    move-result v0

    const/4 v1, 0x4

    .line 1259
    invoke-direct {p0, p2, p1, p3, v1}, Landroidx/customview/a/a;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_e

    or-int/lit8 v0, v0, 0x4

    :cond_e
    const/4 v1, 0x2

    .line 1262
    invoke-direct {p0, p1, p2, p3, v1}, Landroidx/customview/a/a;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_17

    or-int/lit8 v0, v0, 0x2

    :cond_17
    const/16 v1, 0x8

    .line 1265
    invoke-direct {p0, p2, p1, p3, v1}, Landroidx/customview/a/a;->a(FFII)Z

    move-result p1

    if-eqz p1, :cond_21

    or-int/lit8 v0, v0, 0x8

    :cond_21
    if-eqz v0, :cond_2f

    .line 1270
    iget-object p1, p0, Landroidx/customview/a/a;->o:[I

    aget p2, p1, p3

    or-int/2addr p2, v0

    aput p2, p1, p3

    .line 1271
    iget-object p0, p0, Landroidx/customview/a/a;->t:Landroidx/customview/a/a$a;

    invoke-virtual {p0, v0, p3}, Landroidx/customview/a/a$a;->a(II)V

    :cond_2f
    return-void
.end method

.method private b(Landroid/view/View;I)Z
    .registers 5

    .line 908
    iget-object v0, p0, Landroidx/customview/a/a;->l:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_a

    iget v0, p0, Landroidx/customview/a/a;->c:I

    if-ne v0, p2, :cond_a

    return v1

    :cond_a
    if-eqz p1, :cond_1a

    .line 912
    iget-object v0, p0, Landroidx/customview/a/a;->t:Landroidx/customview/a/a$a;

    invoke-virtual {v0, p1}, Landroidx/customview/a/a$a;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 913
    iput p2, p0, Landroidx/customview/a/a;->c:I

    .line 914
    invoke-virtual {p0, p1, p2}, Landroidx/customview/a/a;->a(Landroid/view/View;I)V

    return v1

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private c()V
    .registers 5

    .line 1413
    iget-object v0, p0, Landroidx/customview/a/a;->h:Landroid/view/VelocityTracker;

    iget v1, p0, Landroidx/customview/a/a;->r:F

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1414
    iget-object v0, p0, Landroidx/customview/a/a;->h:Landroid/view/VelocityTracker;

    iget v1, p0, Landroidx/customview/a/a;->c:I

    .line 1415
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    iget v1, p0, Landroidx/customview/a/a;->i:F

    iget v2, p0, Landroidx/customview/a/a;->r:F

    .line 1414
    invoke-static {v0, v1, v2}, Landroidx/customview/a/a;->a(FFF)F

    move-result v0

    .line 1417
    iget-object v1, p0, Landroidx/customview/a/a;->h:Landroid/view/VelocityTracker;

    iget v2, p0, Landroidx/customview/a/a;->c:I

    .line 1418
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    iget v2, p0, Landroidx/customview/a/a;->i:F

    iget v3, p0, Landroidx/customview/a/a;->r:F

    .line 1417
    invoke-static {v1, v2, v3}, Landroidx/customview/a/a;->a(FFF)F

    .line 1420
    invoke-direct {p0, v0}, Landroidx/customview/a/a;->b(F)V

    return-void
.end method

.method private c(I)V
    .registers 4

    .line 804
    iget-object v0, p0, Landroidx/customview/a/a;->d:[F

    if-eqz v0, :cond_33

    invoke-virtual {p0, p1}, Landroidx/customview/a/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_33

    .line 807
    :cond_b
    iget-object v0, p0, Landroidx/customview/a/a;->d:[F

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 808
    iget-object v0, p0, Landroidx/customview/a/a;->e:[F

    aput v1, v0, p1

    .line 809
    iget-object v0, p0, Landroidx/customview/a/a;->f:[F

    aput v1, v0, p1

    .line 810
    iget-object v0, p0, Landroidx/customview/a/a;->g:[F

    aput v1, v0, p1

    .line 811
    iget-object v0, p0, Landroidx/customview/a/a;->n:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 812
    iget-object v0, p0, Landroidx/customview/a/a;->o:[I

    aput v1, v0, p1

    .line 813
    iget-object v0, p0, Landroidx/customview/a/a;->p:[I

    aput v1, v0, p1

    .line 814
    iget v0, p0, Landroidx/customview/a/a;->q:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Landroidx/customview/a/a;->q:I

    return-void

    :cond_33
    :goto_33
    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .registers 8

    .line 856
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_24

    .line 858
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 860
    invoke-direct {p0, v2}, Landroidx/customview/a/a;->d(I)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 863
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 864
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 865
    iget-object v5, p0, Landroidx/customview/a/a;->f:[F

    aput v3, v5, v2

    .line 866
    iget-object v3, p0, Landroidx/customview/a/a;->g:[F

    aput v4, v3, v2

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_24
    return-void
.end method

.method private d(I)Z
    .registers 4

    .line 1510
    invoke-virtual {p0, p1}, Landroidx/customview/a/a;->a(I)Z

    move-result p0

    if-nez p0, :cond_20

    const-string p0, "ViewDragHelper"

    .line 1511
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring pointerId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_20
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(II)Landroid/view/View;
    .registers 6

    .line 1487
    iget-object v0, p0, Landroidx/customview/a/a;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_2c

    .line 1489
    iget-object v1, p0, Landroidx/customview/a/a;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1490
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_29

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_29

    .line 1491
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_29

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p2, v2, :cond_29

    return-object v1

    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a()V
    .registers 3

    const/4 v0, -0x1

    .line 511
    iput v0, p0, Landroidx/customview/a/a;->c:I

    .line 2790
    iget-object v0, p0, Landroidx/customview/a/a;->d:[F

    if-eqz v0, :cond_2e

    .line 2793
    iget-object v0, p0, Landroidx/customview/a/a;->d:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 2794
    iget-object v0, p0, Landroidx/customview/a/a;->e:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 2795
    iget-object v0, p0, Landroidx/customview/a/a;->f:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 2796
    iget-object v0, p0, Landroidx/customview/a/a;->g:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 2797
    iget-object v0, p0, Landroidx/customview/a/a;->n:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2798
    iget-object v0, p0, Landroidx/customview/a/a;->o:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2799
    iget-object v0, p0, Landroidx/customview/a/a;->p:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2800
    iput v1, p0, Landroidx/customview/a/a;->q:I

    .line 514
    :cond_2e
    iget-object v0, p0, Landroidx/customview/a/a;->h:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3a

    .line 515
    iget-object v0, p0, Landroidx/customview/a/a;->h:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 516
    iput-object v0, p0, Landroidx/customview/a/a;->h:Landroid/view/VelocityTracker;

    :cond_3a
    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .registers 5

    .line 471
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroidx/customview/a/a;->u:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_16

    .line 476
    iput-object p1, p0, Landroidx/customview/a/a;->l:Landroid/view/View;

    .line 477
    iput p2, p0, Landroidx/customview/a/a;->c:I

    .line 478
    iget-object p2, p0, Landroidx/customview/a/a;->t:Landroidx/customview/a/a$a;

    invoke-virtual {p2, p1}, Landroidx/customview/a/a$a;->a(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 479
    invoke-virtual {p0, p1}, Landroidx/customview/a/a;->b(I)V

    return-void

    .line 472
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/customview/a/a;->u:Landroid/view/ViewGroup;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(I)Z
    .registers 3

    .line 884
    iget p0, p0, Landroidx/customview/a/a;->q:I

    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_9

    return v0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final a(IIII)Z
    .registers 15

    .line 597
    iget-object v0, p0, Landroidx/customview/a/a;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 598
    iget-object v0, p0, Landroidx/customview/a/a;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr p1, v2

    sub-int/2addr p2, v3

    if-nez p1, :cond_1c

    if-nez p2, :cond_1c

    .line 604
    iget-object p1, p0, Landroidx/customview/a/a;->s:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 p1, 0x0

    .line 605
    invoke-virtual {p0, p1}, Landroidx/customview/a/a;->b(I)V

    return p1

    .line 609
    :cond_1c
    iget-object v5, p0, Landroidx/customview/a/a;->l:Landroid/view/View;

    move-object v4, p0

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v4 .. v9}, Landroidx/customview/a/a;->a(Landroid/view/View;IIII)I

    move-result v6

    .line 610
    iget-object v1, p0, Landroidx/customview/a/a;->s:Landroid/widget/OverScroller;

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    const/4 p1, 0x2

    .line 612
    invoke-virtual {p0, p1}, Landroidx/customview/a/a;->b(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .registers 14

    .line 963
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 964
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-nez v0, :cond_d

    .line 969
    invoke-virtual {p0}, Landroidx/customview/a/a;->a()V

    .line 972
    :cond_d
    iget-object v2, p0, Landroidx/customview/a/a;->h:Landroid/view/VelocityTracker;

    if-nez v2, :cond_17

    .line 973
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Landroidx/customview/a/a;->h:Landroid/view/VelocityTracker;

    .line 975
    :cond_17
    iget-object v2, p0, Landroidx/customview/a/a;->h:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_112

    :pswitch_22
    goto/16 :goto_10c

    .line 1075
    :pswitch_24
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 1076
    invoke-direct {p0, p1}, Landroidx/customview/a/a;->c(I)V

    goto/16 :goto_10c

    .line 999
    :pswitch_2d
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1000
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 1001
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 1003
    invoke-direct {p0, v5, p1, v0}, Landroidx/customview/a/a;->a(FFI)V

    .line 1006
    iget v1, p0, Landroidx/customview/a/a;->a:I

    if-nez v1, :cond_50

    .line 1007
    iget-object p1, p0, Landroidx/customview/a/a;->n:[I

    aget p1, p1, v0

    .line 1008
    iget v0, p0, Landroidx/customview/a/a;->k:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_10c

    .line 1009
    iget-object p1, p0, Landroidx/customview/a/a;->t:Landroidx/customview/a/a$a;

    invoke-virtual {p1}, Landroidx/customview/a/a$a;->a()V

    goto/16 :goto_10c

    .line 1011
    :cond_50
    iget v1, p0, Landroidx/customview/a/a;->a:I

    if-ne v1, v2, :cond_10c

    float-to-int v1, v5

    float-to-int p1, p1

    .line 1013
    invoke-virtual {p0, v1, p1}, Landroidx/customview/a/a;->a(II)Landroid/view/View;

    move-result-object p1

    .line 1014
    iget-object v1, p0, Landroidx/customview/a/a;->l:Landroid/view/View;

    if-ne p1, v1, :cond_10c

    .line 1015
    invoke-direct {p0, p1, v0}, Landroidx/customview/a/a;->b(Landroid/view/View;I)Z

    goto/16 :goto_10c

    .line 1022
    :pswitch_63
    iget-object v0, p0, Landroidx/customview/a/a;->d:[F

    if-eqz v0, :cond_10c

    iget-object v0, p0, Landroidx/customview/a/a;->e:[F

    if-eqz v0, :cond_10c

    .line 1025
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    move v1, v3

    :goto_70
    if-ge v1, v0, :cond_d6

    .line 1027
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1030
    invoke-direct {p0, v2}, Landroidx/customview/a/a;->d(I)Z

    move-result v5

    if-eqz v5, :cond_d3

    .line 1032
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 1033
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 1034
    iget-object v7, p0, Landroidx/customview/a/a;->d:[F

    aget v7, v7, v2

    sub-float v7, v5, v7

    .line 1035
    iget-object v8, p0, Landroidx/customview/a/a;->e:[F

    aget v8, v8, v2

    sub-float v8, v6, v8

    float-to-int v5, v5

    float-to-int v6, v6

    .line 1037
    invoke-virtual {p0, v5, v6}, Landroidx/customview/a/a;->a(II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_a0

    .line 1038
    invoke-direct {p0, v5, v7}, Landroidx/customview/a/a;->a(Landroid/view/View;F)Z

    move-result v6

    if-eqz v6, :cond_a0

    move v6, v4

    goto :goto_a1

    :cond_a0
    move v6, v3

    :goto_a1
    if-eqz v6, :cond_c4

    .line 1045
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v9

    float-to-int v10, v7

    add-int/2addr v10, v9

    .line 1047
    iget-object v11, p0, Landroidx/customview/a/a;->t:Landroidx/customview/a/a$a;

    invoke-virtual {v11, v5, v10}, Landroidx/customview/a/a$a;->b(Landroid/view/View;I)I

    move-result v10

    .line 1049
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 1051
    iget-object v11, p0, Landroidx/customview/a/a;->t:Landroidx/customview/a/a$a;

    invoke-virtual {v11, v5}, Landroidx/customview/a/a$a;->d(Landroid/view/View;)I

    .line 1053
    iget-object v11, p0, Landroidx/customview/a/a;->t:Landroidx/customview/a/a$a;

    invoke-virtual {v11, v5}, Landroidx/customview/a/a$a;->b(Landroid/view/View;)I

    move-result v11

    if-eqz v11, :cond_d6

    if-lez v11, :cond_c4

    if-ne v10, v9, :cond_c4

    goto :goto_d6

    .line 1060
    :cond_c4
    invoke-direct {p0, v7, v8, v2}, Landroidx/customview/a/a;->b(FFI)V

    .line 1061
    iget v7, p0, Landroidx/customview/a/a;->a:I

    if-eq v7, v4, :cond_d6

    if-eqz v6, :cond_d3

    .line 1066
    invoke-direct {p0, v5, v2}, Landroidx/customview/a/a;->b(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_d6

    :cond_d3
    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    .line 1070
    :cond_d6
    :goto_d6
    invoke-direct {p0, p1}, Landroidx/customview/a/a;->c(Landroid/view/MotionEvent;)V

    goto :goto_10c

    .line 1082
    :pswitch_da
    invoke-virtual {p0}, Landroidx/customview/a/a;->a()V

    goto :goto_10c

    .line 979
    :pswitch_de
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 980
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 981
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 982
    invoke-direct {p0, v0, v1, p1}, Landroidx/customview/a/a;->a(FFI)V

    float-to-int v0, v0

    float-to-int v1, v1

    .line 984
    invoke-virtual {p0, v0, v1}, Landroidx/customview/a/a;->a(II)Landroid/view/View;

    move-result-object v0

    .line 987
    iget-object v1, p0, Landroidx/customview/a/a;->l:Landroid/view/View;

    if-ne v0, v1, :cond_fe

    iget v1, p0, Landroidx/customview/a/a;->a:I

    if-ne v1, v2, :cond_fe

    .line 988
    invoke-direct {p0, v0, p1}, Landroidx/customview/a/a;->b(Landroid/view/View;I)Z

    .line 991
    :cond_fe
    iget-object v0, p0, Landroidx/customview/a/a;->n:[I

    aget p1, v0, p1

    .line 992
    iget v0, p0, Landroidx/customview/a/a;->k:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_10c

    .line 993
    iget-object p1, p0, Landroidx/customview/a/a;->t:Landroidx/customview/a/a$a;

    invoke-virtual {p1}, Landroidx/customview/a/a$a;->a()V

    .line 1087
    :cond_10c
    :goto_10c
    iget p0, p0, Landroidx/customview/a/a;->a:I

    if-ne p0, v4, :cond_111

    return v4

    :cond_111
    return v3

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_de
        :pswitch_da
        :pswitch_63
        :pswitch_da
        :pswitch_22
        :pswitch_2d
        :pswitch_24
    .end packed-switch
.end method

.method public final a(Landroid/view/View;II)Z
    .registers 4

    .line 552
    iput-object p1, p0, Landroidx/customview/a/a;->l:Landroid/view/View;

    const/4 p1, -0x1

    .line 553
    iput p1, p0, Landroidx/customview/a/a;->c:I

    const/4 p1, 0x0

    .line 555
    invoke-virtual {p0, p2, p3, p1, p1}, Landroidx/customview/a/a;->a(IIII)Z

    move-result p1

    if-nez p1, :cond_17

    .line 556
    iget p2, p0, Landroidx/customview/a/a;->a:I

    if-nez p2, :cond_17

    iget-object p2, p0, Landroidx/customview/a/a;->l:Landroid/view/View;

    if-eqz p2, :cond_17

    const/4 p2, 0x0

    .line 559
    iput-object p2, p0, Landroidx/customview/a/a;->l:Landroid/view/View;

    :cond_17
    return p1
.end method

.method final b(I)V
    .registers 4

    .line 888
    iget-object v0, p0, Landroidx/customview/a/a;->u:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/customview/a/a;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 889
    iget v0, p0, Landroidx/customview/a/a;->a:I

    if-eq v0, p1, :cond_19

    .line 890
    iput p1, p0, Landroidx/customview/a/a;->a:I

    .line 891
    iget-object v0, p0, Landroidx/customview/a/a;->t:Landroidx/customview/a/a$a;

    invoke-virtual {v0, p1}, Landroidx/customview/a/a$a;->a(I)V

    .line 892
    iget p1, p0, Landroidx/customview/a/a;->a:I

    if-nez p1, :cond_19

    const/4 p1, 0x0

    .line 893
    iput-object p1, p0, Landroidx/customview/a/a;->l:Landroid/view/View;

    :cond_19
    return-void
.end method

.method public final b(Landroid/view/MotionEvent;)V
    .registers 10

    .line 1097
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1098
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-nez v0, :cond_d

    .line 1103
    invoke-virtual {p0}, Landroidx/customview/a/a;->a()V

    .line 1106
    :cond_d
    iget-object v2, p0, Landroidx/customview/a/a;->h:Landroid/view/VelocityTracker;

    if-nez v2, :cond_17

    .line 1107
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Landroidx/customview/a/a;->h:Landroid/view/VelocityTracker;

    .line 1109
    :cond_17
    iget-object v2, p0, Landroidx/customview/a/a;->h:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_1b0

    :pswitch_21
    goto/16 :goto_1af

    .line 1206
    :pswitch_23
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1207
    iget v1, p0, Landroidx/customview/a/a;->a:I

    if-ne v1, v3, :cond_64

    iget v1, p0, Landroidx/customview/a/a;->c:I

    if-ne v0, v1, :cond_64

    .line 1210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    :goto_33
    const/4 v3, -0x1

    if-ge v2, v1, :cond_5e

    .line 1212
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1213
    iget v5, p0, Landroidx/customview/a/a;->c:I

    if-eq v4, v5, :cond_5b

    .line 1218
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 1219
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v5, v5

    float-to-int v6, v6

    .line 1220
    invoke-virtual {p0, v5, v6}, Landroidx/customview/a/a;->a(II)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Landroidx/customview/a/a;->l:Landroid/view/View;

    if-ne v5, v6, :cond_5b

    iget-object v5, p0, Landroidx/customview/a/a;->l:Landroid/view/View;

    .line 1221
    invoke-direct {p0, v5, v4}, Landroidx/customview/a/a;->b(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 1222
    iget p1, p0, Landroidx/customview/a/a;->c:I

    goto :goto_5f

    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_5e
    move p1, v3

    :goto_5f
    if-ne p1, v3, :cond_64

    .line 1229
    invoke-direct {p0}, Landroidx/customview/a/a;->c()V

    .line 1232
    :cond_64
    invoke-direct {p0, v0}, Landroidx/customview/a/a;->c(I)V

    return-void

    .line 1133
    :pswitch_68
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1134
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 1135
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 1137
    invoke-direct {p0, v4, p1, v0}, Landroidx/customview/a/a;->a(FFI)V

    .line 1140
    iget v1, p0, Landroidx/customview/a/a;->a:I

    if-nez v1, :cond_93

    float-to-int v1, v4

    float-to-int p1, p1

    .line 1143
    invoke-virtual {p0, v1, p1}, Landroidx/customview/a/a;->a(II)Landroid/view/View;

    move-result-object p1

    .line 1144
    invoke-direct {p0, p1, v0}, Landroidx/customview/a/a;->b(Landroid/view/View;I)Z

    .line 1146
    iget-object p1, p0, Landroidx/customview/a/a;->n:[I

    aget p1, p1, v0

    .line 1147
    iget v0, p0, Landroidx/customview/a/a;->k:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_92

    .line 1148
    iget-object p0, p0, Landroidx/customview/a/a;->t:Landroidx/customview/a/a$a;

    invoke-virtual {p0}, Landroidx/customview/a/a$a;->a()V

    :cond_92
    return-void

    :cond_93
    float-to-int v1, v4

    float-to-int p1, p1

    .line 4455
    iget-object v4, p0, Landroidx/customview/a/a;->l:Landroid/view/View;

    if-eqz v4, :cond_b2

    .line 4471
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    if-lt v1, v5, :cond_b2

    .line 4472
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    if-ge v1, v5, :cond_b2

    .line 4473
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p1, v1, :cond_b2

    .line 4474
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge p1, v1, :cond_b2

    move v2, v3

    :cond_b2
    if-eqz v2, :cond_1af

    .line 1155
    iget-object p1, p0, Landroidx/customview/a/a;->l:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Landroidx/customview/a/a;->b(Landroid/view/View;I)Z

    return-void

    .line 1245
    :pswitch_ba
    iget p1, p0, Landroidx/customview/a/a;->a:I

    if-ne p1, v3, :cond_c2

    const/4 p1, 0x0

    .line 1246
    invoke-direct {p0, p1}, Landroidx/customview/a/a;->b(F)V

    .line 1248
    :cond_c2
    invoke-virtual {p0}, Landroidx/customview/a/a;->a()V

    goto/16 :goto_1af

    .line 1161
    :pswitch_c7
    iget v0, p0, Landroidx/customview/a/a;->a:I

    if-ne v0, v3, :cond_139

    .line 1163
    iget v0, p0, Landroidx/customview/a/a;->c:I

    invoke-direct {p0, v0}, Landroidx/customview/a/a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1af

    .line 1165
    iget v0, p0, Landroidx/customview/a/a;->c:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1166
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1167
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 1168
    iget-object v2, p0, Landroidx/customview/a/a;->f:[F

    iget v3, p0, Landroidx/customview/a/a;->c:I

    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 1169
    iget-object v2, p0, Landroidx/customview/a/a;->g:[F

    iget v3, p0, Landroidx/customview/a/a;->c:I

    aget v2, v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 1171
    iget-object v2, p0, Landroidx/customview/a/a;->l:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Landroidx/customview/a/a;->l:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 5426
    iget-object v3, p0, Landroidx/customview/a/a;->l:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 5427
    iget-object v4, p0, Landroidx/customview/a/a;->l:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    if-eqz v1, :cond_11a

    .line 5429
    iget-object v5, p0, Landroidx/customview/a/a;->t:Landroidx/customview/a/a$a;

    iget-object v6, p0, Landroidx/customview/a/a;->l:Landroid/view/View;

    invoke-virtual {v5, v6, v2}, Landroidx/customview/a/a$a;->b(Landroid/view/View;I)I

    move-result v2

    .line 5430
    iget-object v5, p0, Landroidx/customview/a/a;->l:Landroid/view/View;

    sub-int v3, v2, v3

    invoke-static {v5, v3}, Landroidx/core/e/r;->c(Landroid/view/View;I)V

    :cond_11a
    if-eqz v0, :cond_12a

    .line 5433
    iget-object v3, p0, Landroidx/customview/a/a;->t:Landroidx/customview/a/a$a;

    iget-object v5, p0, Landroidx/customview/a/a;->l:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroidx/customview/a/a$a;->d(Landroid/view/View;)I

    move-result v3

    .line 5434
    iget-object v5, p0, Landroidx/customview/a/a;->l:Landroid/view/View;

    sub-int/2addr v3, v4

    invoke-static {v5, v3}, Landroidx/core/e/r;->b(Landroid/view/View;I)V

    :cond_12a
    if-nez v1, :cond_12e

    if-eqz v0, :cond_135

    .line 5440
    :cond_12e
    iget-object v0, p0, Landroidx/customview/a/a;->t:Landroidx/customview/a/a$a;

    iget-object v1, p0, Landroidx/customview/a/a;->l:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroidx/customview/a/a$a;->a(Landroid/view/View;I)V

    .line 1173
    :cond_135
    invoke-direct {p0, p1}, Landroidx/customview/a/a;->c(Landroid/view/MotionEvent;)V

    return-void

    .line 1176
    :cond_139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    :goto_13d
    if-ge v2, v0, :cond_179

    .line 1178
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1181
    invoke-direct {p0, v1}, Landroidx/customview/a/a;->d(I)Z

    move-result v4

    if-eqz v4, :cond_176

    .line 1183
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 1184
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 1185
    iget-object v6, p0, Landroidx/customview/a/a;->d:[F

    aget v6, v6, v1

    sub-float v6, v4, v6

    .line 1186
    iget-object v7, p0, Landroidx/customview/a/a;->e:[F

    aget v7, v7, v1

    sub-float v7, v5, v7

    .line 1188
    invoke-direct {p0, v6, v7, v1}, Landroidx/customview/a/a;->b(FFI)V

    .line 1189
    iget v7, p0, Landroidx/customview/a/a;->a:I

    if-eq v7, v3, :cond_179

    float-to-int v4, v4

    float-to-int v5, v5

    .line 1194
    invoke-virtual {p0, v4, v5}, Landroidx/customview/a/a;->a(II)Landroid/view/View;

    move-result-object v4

    .line 1195
    invoke-direct {p0, v4, v6}, Landroidx/customview/a/a;->a(Landroid/view/View;F)Z

    move-result v5

    if-eqz v5, :cond_176

    .line 1196
    invoke-direct {p0, v4, v1}, Landroidx/customview/a/a;->b(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_179

    :cond_176
    add-int/lit8 v2, v2, 0x1

    goto :goto_13d

    .line 1200
    :cond_179
    invoke-direct {p0, p1}, Landroidx/customview/a/a;->c(Landroid/view/MotionEvent;)V

    return-void

    .line 1237
    :pswitch_17d
    iget p1, p0, Landroidx/customview/a/a;->a:I

    if-ne p1, v3, :cond_184

    .line 1238
    invoke-direct {p0}, Landroidx/customview/a/a;->c()V

    .line 1240
    :cond_184
    invoke-virtual {p0}, Landroidx/customview/a/a;->a()V

    return-void

    .line 1113
    :pswitch_188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1115
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    float-to-int v2, v0

    float-to-int v3, v1

    .line 1116
    invoke-virtual {p0, v2, v3}, Landroidx/customview/a/a;->a(II)Landroid/view/View;

    move-result-object v2

    .line 1118
    invoke-direct {p0, v0, v1, p1}, Landroidx/customview/a/a;->a(FFI)V

    .line 1123
    invoke-direct {p0, v2, p1}, Landroidx/customview/a/a;->b(Landroid/view/View;I)Z

    .line 1125
    iget-object v0, p0, Landroidx/customview/a/a;->n:[I

    aget p1, v0, p1

    .line 1126
    iget v0, p0, Landroidx/customview/a/a;->k:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_1af

    .line 1127
    iget-object p0, p0, Landroidx/customview/a/a;->t:Landroidx/customview/a/a$a;

    invoke-virtual {p0}, Landroidx/customview/a/a$a;->a()V

    return-void

    :cond_1af
    :goto_1af
    return-void

    :pswitch_data_1b0
    .packed-switch 0x0
        :pswitch_188
        :pswitch_17d
        :pswitch_c7
        :pswitch_ba
        :pswitch_21
        :pswitch_68
        :pswitch_23
    .end packed-switch
.end method

.method public final b()Z
    .registers 9

    .line 735
    iget v0, p0, Landroidx/customview/a/a;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_62

    .line 736
    iget-object v0, p0, Landroidx/customview/a/a;->s:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    .line 737
    iget-object v3, p0, Landroidx/customview/a/a;->s:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v3

    .line 738
    iget-object v4, p0, Landroidx/customview/a/a;->s:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v4

    .line 739
    iget-object v5, p0, Landroidx/customview/a/a;->l:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v5, v3, v5

    .line 740
    iget-object v6, p0, Landroidx/customview/a/a;->l:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v6, v4, v6

    if-eqz v5, :cond_2f

    .line 743
    iget-object v7, p0, Landroidx/customview/a/a;->l:Landroid/view/View;

    invoke-static {v7, v5}, Landroidx/core/e/r;->c(Landroid/view/View;I)V

    :cond_2f
    if-eqz v6, :cond_36

    .line 746
    iget-object v7, p0, Landroidx/customview/a/a;->l:Landroid/view/View;

    invoke-static {v7, v6}, Landroidx/core/e/r;->b(Landroid/view/View;I)V

    :cond_36
    if-nez v5, :cond_3a

    if-eqz v6, :cond_41

    .line 750
    :cond_3a
    iget-object v5, p0, Landroidx/customview/a/a;->t:Landroidx/customview/a/a$a;

    iget-object v6, p0, Landroidx/customview/a/a;->l:Landroid/view/View;

    invoke-virtual {v5, v6, v3}, Landroidx/customview/a/a$a;->a(Landroid/view/View;I)V

    :cond_41
    if-eqz v0, :cond_59

    .line 753
    iget-object v5, p0, Landroidx/customview/a/a;->s:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v5

    if-ne v3, v5, :cond_59

    iget-object v3, p0, Landroidx/customview/a/a;->s:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v3

    if-ne v4, v3, :cond_59

    .line 756
    iget-object v0, p0, Landroidx/customview/a/a;->s:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    move v0, v1

    :cond_59
    if-nez v0, :cond_62

    .line 762
    iget-object v0, p0, Landroidx/customview/a/a;->u:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroidx/customview/a/a;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 769
    :cond_62
    iget p0, p0, Landroidx/customview/a/a;->a:I

    if-ne p0, v2, :cond_68

    const/4 p0, 0x1

    return p0

    :cond_68
    return v1
.end method
