.class public abstract Landroidx/core/widget/a;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/a$a;,
        Landroidx/core/widget/a$b;
    }
.end annotation


# static fields
.field private static final r:I


# instance fields
.field final a:Landroidx/core/widget/a$a;

.field final b:Landroid/view/View;

.field c:Z

.field d:Z

.field e:Z

.field private final f:Landroid/view/animation/Interpolator;

.field private g:Ljava/lang/Runnable;

.field private h:[F

.field private i:[F

.field private j:I

.field private k:I

.field private l:[F

.field private m:[F

.field private n:[F

.field private o:Z

.field private p:Z

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 195
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroidx/core/widget/a;->r:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 7

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Landroidx/core/widget/a$a;

    invoke-direct {v0}, Landroidx/core/widget/a$a;-><init>()V

    iput-object v0, p0, Landroidx/core/widget/a;->a:Landroidx/core/widget/a$a;

    .line 141
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/core/widget/a;->f:Landroid/view/animation/Interpolator;

    const/4 v0, 0x2

    .line 150
    new-array v1, v0, [F

    fill-array-data v1, :array_9c

    iput-object v1, p0, Landroidx/core/widget/a;->h:[F

    .line 153
    new-array v1, v0, [F

    fill-array-data v1, :array_a4

    iput-object v1, p0, Landroidx/core/widget/a;->i:[F

    .line 162
    new-array v1, v0, [F

    fill-array-data v1, :array_ac

    iput-object v1, p0, Landroidx/core/widget/a;->l:[F

    .line 165
    new-array v1, v0, [F

    fill-array-data v1, :array_b4

    iput-object v1, p0, Landroidx/core/widget/a;->m:[F

    .line 168
    new-array v0, v0, [F

    fill-array-data v0, :array_bc

    iput-object v0, p0, Landroidx/core/widget/a;->n:[F

    .line 211
    iput-object p1, p0, Landroidx/core/widget/a;->b:Landroid/view/View;

    .line 213
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 214
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    const v1, 0x44c4e000    # 1575.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 215
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const v2, 0x439d8000    # 315.0f

    mul-float/2addr p1, v2

    add-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float v0, v0

    .line 1296
    iget-object v1, p0, Landroidx/core/widget/a;->n:[F

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    const/4 v3, 0x0

    aput v0, v1, v3

    .line 1297
    iget-object v1, p0, Landroidx/core/widget/a;->n:[F

    const/4 v4, 0x1

    aput v0, v1, v4

    int-to-float p1, p1

    .line 1315
    iget-object v0, p0, Landroidx/core/widget/a;->m:[F

    div-float/2addr p1, v2

    aput p1, v0, v3

    .line 1316
    iget-object v0, p0, Landroidx/core/widget/a;->m:[F

    aput p1, v0, v4

    .line 1359
    iput v4, p0, Landroidx/core/widget/a;->j:I

    .line 1402
    iget-object p1, p0, Landroidx/core/widget/a;->i:[F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    aput v0, p1, v3

    .line 1403
    iget-object p1, p0, Landroidx/core/widget/a;->i:[F

    aput v0, p1, v4

    .line 2379
    iget-object p1, p0, Landroidx/core/widget/a;->h:[F

    const v0, 0x3e4ccccd    # 0.2f

    aput v0, p1, v3

    .line 2380
    iget-object p1, p0, Landroidx/core/widget/a;->h:[F

    aput v0, p1, v4

    .line 3337
    iget-object p1, p0, Landroidx/core/widget/a;->l:[F

    const v0, 0x3a83126f    # 0.001f

    aput v0, p1, v3

    .line 3338
    iget-object p1, p0, Landroidx/core/widget/a;->l:[F

    aput v0, p1, v4

    .line 223
    sget p1, Landroidx/core/widget/a;->r:I

    .line 3420
    iput p1, p0, Landroidx/core/widget/a;->k:I

    .line 3436
    iget-object p1, p0, Landroidx/core/widget/a;->a:Landroidx/core/widget/a$a;

    const/16 v0, 0x1f4

    .line 3765
    iput v0, p1, Landroidx/core/widget/a$a;->a:I

    .line 4452
    iget-object p0, p0, Landroidx/core/widget/a;->a:Landroidx/core/widget/a$a;

    .line 4769
    iput v0, p0, Landroidx/core/widget/a$a;->b:I

    return-void

    nop

    :array_9c
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_a4
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    :array_ac
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_b4
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_bc
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method private a(FF)F
    .registers 6

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_6

    return v0

    .line 638
    :cond_6
    iget v1, p0, Landroidx/core/widget/a;->j:I

    packed-switch v1, :pswitch_data_2c

    goto :goto_2a

    :pswitch_c
    cmpg-float p0, p1, v0

    if-gez p0, :cond_2a

    neg-float p0, p2

    div-float/2addr p1, p0

    return p1

    :pswitch_13
    cmpg-float v1, p1, p2

    if-gez v1, :cond_2a

    cmpl-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz v1, :cond_20

    div-float/2addr p1, p2

    sub-float/2addr v2, p1

    return v2

    .line 645
    :cond_20
    iget-boolean p1, p0, Landroidx/core/widget/a;->e:Z

    if-eqz p1, :cond_2a

    iget p0, p0, Landroidx/core/widget/a;->j:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2a

    return v2

    :cond_2a
    :goto_2a
    return v0

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_13
        :pswitch_13
        :pswitch_c
    .end packed-switch
.end method

.method static a(FFF)F
    .registers 4

    cmpl-float v0, p0, p2

    if-lez v0, :cond_5

    return p2

    :cond_5
    cmpg-float p2, p0, p1

    if-gez p2, :cond_a

    return p1

    :cond_a
    return p0
.end method

.method private a(FFFF)F
    .registers 6

    mul-float/2addr p1, p2

    const/4 v0, 0x0

    .line 617
    invoke-static {p1, v0, p3}, Landroidx/core/widget/a;->a(FFF)F

    move-result p1

    .line 618
    invoke-direct {p0, p4, p1}, Landroidx/core/widget/a;->a(FF)F

    move-result p3

    sub-float/2addr p2, p4

    .line 619
    invoke-direct {p0, p2, p1}, Landroidx/core/widget/a;->a(FF)F

    move-result p1

    sub-float/2addr p1, p3

    cmpg-float p2, p1, v0

    if-gez p2, :cond_1d

    .line 623
    iget-object p0, p0, Landroidx/core/widget/a;->f:Landroid/view/animation/Interpolator;

    neg-float p1, p1

    invoke-interface {p0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    neg-float p0, p0

    goto :goto_27

    :cond_1d
    cmpl-float p2, p1, v0

    if-lez p2, :cond_30

    .line 625
    iget-object p0, p0, Landroidx/core/widget/a;->f:Landroid/view/animation/Interpolator;

    invoke-interface {p0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    :goto_27
    const/high16 p1, -0x40800000    # -1.0f

    const/high16 p2, 0x3f800000    # 1.0f

    .line 630
    invoke-static {p0, p1, p2}, Landroidx/core/widget/a;->a(FFF)F

    move-result p0

    return p0

    :cond_30
    return v0
.end method

.method private a(IFFF)F
    .registers 7

    .line 549
    iget-object v0, p0, Landroidx/core/widget/a;->h:[F

    aget v0, v0, p1

    .line 550
    iget-object v1, p0, Landroidx/core/widget/a;->i:[F

    aget v1, v1, p1

    .line 551
    invoke-direct {p0, v0, p3, v1, p2}, Landroidx/core/widget/a;->a(FFFF)F

    move-result p2

    const/4 p3, 0x0

    cmpl-float v0, p2, p3

    if-nez v0, :cond_12

    return p3

    .line 557
    :cond_12
    iget-object p3, p0, Landroidx/core/widget/a;->l:[F

    aget p3, p3, p1

    .line 558
    iget-object v1, p0, Landroidx/core/widget/a;->m:[F

    aget v1, v1, p1

    .line 559
    iget-object p0, p0, Landroidx/core/widget/a;->n:[F

    aget p0, p0, p1

    mul-float/2addr p3, p4

    if-lez v0, :cond_27

    mul-float/2addr p2, p3

    .line 566
    invoke-static {p2, v1, p0}, Landroidx/core/widget/a;->a(FFF)F

    move-result p0

    return p0

    :cond_27
    neg-float p1, p2

    mul-float/2addr p1, p3

    .line 568
    invoke-static {p1, v1, p0}, Landroidx/core/widget/a;->a(FFF)F

    move-result p0

    neg-float p0, p0

    return p0
.end method

.method static a(II)I
    .registers 2

    if-le p0, p1, :cond_3

    return p1

    :cond_3
    if-gez p0, :cond_7

    const/4 p0, 0x0

    return p0

    :cond_7
    return p0
.end method

.method private b()V
    .registers 2

    .line 538
    iget-boolean v0, p0, Landroidx/core/widget/a;->c:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 541
    iput-boolean v0, p0, Landroidx/core/widget/a;->e:Z

    return-void

    .line 543
    :cond_8
    iget-object p0, p0, Landroidx/core/widget/a;->a:Landroidx/core/widget/a$a;

    invoke-virtual {p0}, Landroidx/core/widget/a$a;->a()V

    return-void
.end method


# virtual methods
.method public final a(Z)Landroidx/core/widget/a;
    .registers 3

    .line 236
    iget-boolean v0, p0, Landroidx/core/widget/a;->p:Z

    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    .line 237
    invoke-direct {p0}, Landroidx/core/widget/a;->b()V

    .line 240
    :cond_9
    iput-boolean p1, p0, Landroidx/core/widget/a;->p:Z

    return-object p0
.end method

.method public abstract a(I)V
.end method

.method final a()Z
    .registers 3

    .line 502
    iget-object v0, p0, Landroidx/core/widget/a;->a:Landroidx/core/widget/a$a;

    .line 503
    invoke-virtual {v0}, Landroidx/core/widget/a$a;->c()I

    move-result v1

    .line 504
    invoke-virtual {v0}, Landroidx/core/widget/a$a;->b()I

    move-result v0

    if-eqz v1, :cond_15

    .line 506
    invoke-virtual {p0, v1}, Landroidx/core/widget/a;->b(I)Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x1

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x0

    return p0
.end method

.method public abstract b(I)Z
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 466
    iget-boolean v0, p0, Landroidx/core/widget/a;->p:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 470
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_82

    goto :goto_78

    .line 491
    :pswitch_f
    invoke-direct {p0}, Landroidx/core/widget/a;->b()V

    goto :goto_78

    .line 473
    :pswitch_13
    iput-boolean v2, p0, Landroidx/core/widget/a;->d:Z

    .line 474
    iput-boolean v1, p0, Landroidx/core/widget/a;->o:Z

    .line 478
    :pswitch_17
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Landroidx/core/widget/a;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 477
    invoke-direct {p0, v1, v0, v3, v4}, Landroidx/core/widget/a;->a(IFFF)F

    move-result v0

    .line 480
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v3, p0, Landroidx/core/widget/a;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 479
    invoke-direct {p0, v2, p2, p1, v3}, Landroidx/core/widget/a;->a(IFFF)F

    move-result p1

    .line 481
    iget-object p2, p0, Landroidx/core/widget/a;->a:Landroidx/core/widget/a$a;

    .line 4852
    iput v0, p2, Landroidx/core/widget/a$a;->c:F

    .line 4853
    iput p1, p2, Landroidx/core/widget/a$a;->d:F

    .line 485
    iget-boolean p1, p0, Landroidx/core/widget/a;->e:Z

    if-nez p1, :cond_78

    invoke-virtual {p0}, Landroidx/core/widget/a;->a()Z

    move-result p1

    if-eqz p1, :cond_78

    .line 5514
    iget-object p1, p0, Landroidx/core/widget/a;->g:Ljava/lang/Runnable;

    if-nez p1, :cond_5a

    .line 5515
    new-instance p1, Landroidx/core/widget/a$b;

    invoke-direct {p1, p0}, Landroidx/core/widget/a$b;-><init>(Landroidx/core/widget/a;)V

    iput-object p1, p0, Landroidx/core/widget/a;->g:Ljava/lang/Runnable;

    .line 5518
    :cond_5a
    iput-boolean v2, p0, Landroidx/core/widget/a;->e:Z

    .line 5519
    iput-boolean v2, p0, Landroidx/core/widget/a;->c:Z

    .line 5521
    iget-boolean p1, p0, Landroidx/core/widget/a;->o:Z

    if-nez p1, :cond_71

    iget p1, p0, Landroidx/core/widget/a;->k:I

    if-lez p1, :cond_71

    .line 5522
    iget-object p1, p0, Landroidx/core/widget/a;->b:Landroid/view/View;

    iget-object p2, p0, Landroidx/core/widget/a;->g:Ljava/lang/Runnable;

    iget v0, p0, Landroidx/core/widget/a;->k:I

    int-to-long v3, v0

    invoke-static {p1, p2, v3, v4}, Landroidx/core/e/r;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_76

    .line 5524
    :cond_71
    iget-object p1, p0, Landroidx/core/widget/a;->g:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 5529
    :goto_76
    iput-boolean v2, p0, Landroidx/core/widget/a;->o:Z

    .line 495
    :cond_78
    :goto_78
    iget-boolean p1, p0, Landroidx/core/widget/a;->q:Z

    if-eqz p1, :cond_81

    iget-boolean p0, p0, Landroidx/core/widget/a;->e:Z

    if-eqz p0, :cond_81

    return v2

    :cond_81
    return v1

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_13
        :pswitch_f
        :pswitch_17
        :pswitch_f
    .end packed-switch
.end method
