.class final Landroidx/appcompat/widget/n;
.super Ljava/lang/Object;
.source "AppCompatTextViewAutoSizeHelper.java"


# static fields
.field private static final f:Landroid/graphics/RectF;

.field private static g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:F

.field c:F

.field d:F

.field e:[I

.field private i:Z

.field private j:Z

.field private k:Landroid/text/TextPaint;

.field private final l:Landroid/widget/TextView;

.field private final m:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/n;->f:Landroid/graphics/RectF;

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/n;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 76
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/n;->h:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .registers 4

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Landroidx/appcompat/widget/n;->a:I

    .line 86
    iput-boolean v0, p0, Landroidx/appcompat/widget/n;->i:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 88
    iput v1, p0, Landroidx/appcompat/widget/n;->b:F

    .line 90
    iput v1, p0, Landroidx/appcompat/widget/n;->c:F

    .line 92
    iput v1, p0, Landroidx/appcompat/widget/n;->d:F

    .line 95
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/appcompat/widget/n;->e:[I

    .line 99
    iput-boolean v0, p0, Landroidx/appcompat/widget/n;->j:Z

    .line 106
    iput-object p1, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    .line 107
    iget-object p1, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/n;->m:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/graphics/RectF;)I
    .registers 7

    .line 642
    iget-object v0, p0, Landroidx/appcompat/widget/n;->e:[I

    array-length v0, v0

    if-eqz v0, :cond_27

    const/4 v1, 0x0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_8
    move v4, v2

    move v2, v1

    move v1, v4

    :goto_b
    if-gt v1, v0, :cond_22

    add-int v2, v1, v0

    .line 652
    div-int/lit8 v2, v2, 0x2

    .line 653
    iget-object v3, p0, Landroidx/appcompat/widget/n;->e:[I

    aget v3, v3, v2

    invoke-direct {p0, v3, p1}, Landroidx/appcompat/widget/n;->a(ILandroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_1e

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1e
    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_b

    .line 662
    :cond_22
    iget-object p0, p0, Landroidx/appcompat/widget/n;->e:[I

    aget p0, p0, v2

    return p0

    .line 644
    :cond_27
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No available text sizes to choose from."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;
    .registers 13

    .line 679
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 680
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/n;->b(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;

    move-result-object p0

    return-object p0

    .line 681
    :cond_b
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p4, v0, :cond_2f

    .line 1754
    iget-object p4, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v5

    .line 1755
    iget-object p4, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v6

    .line 1756
    iget-object p4, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v7

    .line 1760
    new-instance p4, Landroid/text/StaticLayout;

    iget-object v2, p0, Landroidx/appcompat/widget/n;->k:Landroid/text/TextPaint;

    move-object v0, p4

    move-object v1, p1

    move v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object p4

    .line 1771
    :cond_2f
    iget-object p4, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    const-string v0, "mSpacingMult"

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1772
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 1771
    invoke-static {p4, v0, v1}, Landroidx/appcompat/widget/n;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 1773
    iget-object p4, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    const-string v0, "mSpacingAdd"

    const/4 v1, 0x0

    .line 1774
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 1773
    invoke-static {p4, v0, v1}, Landroidx/appcompat/widget/n;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 1775
    iget-object p4, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    const-string v0, "mIncludePad"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p4, v0, v1}, Landroidx/appcompat/widget/n;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 1778
    new-instance p4, Landroid/text/StaticLayout;

    iget-object v2, p0, Landroidx/appcompat/widget/n;->k:Landroid/text/TextPaint;

    move-object v0, p4

    move-object v1, p1

    move v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object p4
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 793
    :try_start_0
    invoke-static {p1}, Landroidx/appcompat/widget/n;->a(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 794
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_e
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    goto :goto_28

    :catchall_c
    move-exception p0

    goto :goto_29

    :catch_e
    move-exception p0

    :try_start_f
    const-string v0, "ACTVAutoSizeHelper"

    .line 797
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to invoke TextView#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "() method"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_c

    move-object p0, p2

    :goto_28
    return-object p0

    .line 802
    :goto_29
    throw p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 5

    .line 826
    :try_start_0
    sget-object v0, Landroidx/appcompat/widget/n;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_1e

    .line 828
    const-class v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1e

    const/4 v1, 0x1

    .line 830
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 832
    sget-object v1, Landroidx/appcompat/widget/n;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    :cond_1e
    return-object v0

    :catch_1f
    move-exception v0

    const-string v1, "ACTVAutoSizeHelper"

    .line 838
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to retrieve TextView#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "() method"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private a(F)V
    .registers 5

    .line 604
    iget-object v0, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_5a

    .line 605
    iget-object v0, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 608
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    const/4 v1, 0x0

    if-lt p1, v0, :cond_25

    .line 609
    iget-object p1, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isInLayout()Z

    move-result p1

    goto :goto_26

    :cond_25
    move p1, v1

    .line 612
    :goto_26
    iget-object v0, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 614
    iput-boolean v1, p0, Landroidx/appcompat/widget/n;->i:Z

    :try_start_30
    const-string v0, "nullLayouts"

    .line 618
    invoke-static {v0}, Landroidx/appcompat/widget/n;->a(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 620
    iget-object v2, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3f} :catch_40

    goto :goto_48

    :catch_40
    move-exception v0

    const-string v1, "ACTVAutoSizeHelper"

    const-string v2, "Failed to invoke TextView#nullLayouts() method"

    .line 623
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_48
    :goto_48
    if-nez p1, :cond_50

    .line 627
    iget-object p1, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_55

    .line 629
    :cond_50
    iget-object p1, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->forceLayout()V

    .line 632
    :goto_55
    iget-object p0, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_5a
    return-void
.end method

.method private a(FFF)V
    .registers 6

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-lez v1, :cond_54

    cmpg-float v1, p2, p1

    if-lez v1, :cond_33

    cmpg-float v0, p3, v0

    if-lez v0, :cond_1a

    const/4 v0, 0x1

    .line 508
    iput v0, p0, Landroidx/appcompat/widget/n;->a:I

    .line 509
    iput p1, p0, Landroidx/appcompat/widget/n;->c:F

    .line 510
    iput p2, p0, Landroidx/appcompat/widget/n;->d:F

    .line 511
    iput p3, p0, Landroidx/appcompat/widget/n;->b:F

    const/4 p1, 0x0

    .line 512
    iput-boolean p1, p0, Landroidx/appcompat/widget/n;->j:Z

    return-void

    .line 503
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The auto-size step granularity ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "px) is less or equal to (0px)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 497
    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Maximum auto-size text size ("

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "px) is less or equal to minimum auto-size text size ("

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "px)"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 492
    :cond_54
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Minimum auto-size text size ("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "px) is less or equal to (0px)"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(Landroid/content/res/TypedArray;)V
    .registers 6

    .line 427
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 428
    new-array v1, v0, [I

    if-lez v0, :cond_1e

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_15

    const/4 v3, -0x1

    .line 432
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 434
    :cond_15
    invoke-static {v1}, Landroidx/appcompat/widget/n;->a([I)[I

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/n;->e:[I

    .line 435
    invoke-direct {p0}, Landroidx/appcompat/widget/n;->c()Z

    :cond_1e
    return-void
.end method

.method private a(ILandroid/graphics/RectF;)Z
    .registers 8

    .line 689
    iget-object v0, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 690
    iget-object v1, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 692
    iget-object v2, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    invoke-interface {v1, v0, v2}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_17

    move-object v0, v1

    .line 698
    :cond_17
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    const/4 v3, -0x1

    if-lt v1, v2, :cond_25

    iget-object v1, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMaxLines()I

    move-result v1

    goto :goto_26

    :cond_25
    move v1, v3

    .line 699
    :goto_26
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/n;->b(I)V

    .line 702
    iget-object p1, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    const-string v2, "getLayoutAlignment"

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-static {p1, v2, v4}, Landroidx/appcompat/widget/n;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/Layout$Alignment;

    .line 704
    iget v2, p2, Landroid/graphics/RectF;->right:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {p0, v0, p1, v2, v1}, Landroidx/appcompat/widget/n;->a(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v2, 0x1

    if-eq v1, v3, :cond_59

    .line 707
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    if-gt v3, v1, :cond_58

    .line 708
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eq v1, v0, :cond_59

    :cond_58
    return p1

    .line 713
    :cond_59
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float p0, p0, p2

    if-lez p0, :cond_65

    return p1

    :cond_65
    return v2
.end method

.method private static a([I)[I
    .registers 7

    .line 453
    array-length v0, p0

    if-nez v0, :cond_4

    return-object p0

    .line 457
    :cond_4
    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    .line 459
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v0, :cond_28

    .line 461
    aget v4, p0, v3

    if-lez v4, :cond_25

    .line 464
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_25

    .line 465
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 469
    :cond_28
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_2f

    return-object p0

    .line 472
    :cond_2f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    .line 473
    new-array v0, p0, [I

    :goto_35
    if-ge v2, p0, :cond_46

    .line 475
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_46
    return-object v0
.end method

.method private b(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;
    .registers 8

    .line 725
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/n;->k:Landroid/text/TextPaint;

    const/4 v2, 0x0

    .line 724
    invoke-static {p1, v2, v0, v1, p3}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 727
    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p2

    iget-object p3, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    .line 729
    invoke-virtual {p3}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result p3

    iget-object v0, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    .line 730
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v0

    .line 728
    invoke-virtual {p2, p3, v0}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object p2

    iget-object p3, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    .line 731
    invoke-virtual {p3}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object p2

    iget-object p3, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    .line 732
    invoke-virtual {p3}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object p2

    iget-object p3, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    .line 733
    invoke-virtual {p3}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object p2

    const/4 p3, -0x1

    if-ne p4, p3, :cond_43

    const p4, 0x7fffffff

    .line 734
    :cond_43
    invoke-virtual {p2, p4}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    .line 739
    :try_start_46
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1d

    if-lt p2, p3, :cond_53

    iget-object p0, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    .line 740
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object p0

    goto :goto_5f

    :cond_53
    iget-object p0, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    const-string p2, "getTextDirectionHeuristic"

    sget-object p3, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 741
    invoke-static {p0, p2, p3}, Landroidx/appcompat/widget/n;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/TextDirectionHeuristic;

    .line 743
    :goto_5f
    invoke-virtual {p1, p0}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;
    :try_end_62
    .catch Ljava/lang/ClassCastException; {:try_start_46 .. :try_end_62} :catch_63

    goto :goto_6a

    :catch_63
    const-string p0, "ACTVAutoSizeHelper"

    const-string p2, "Failed to obtain TextDirectionHeuristic, auto size may be incorrect"

    .line 746
    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :goto_6a
    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 811
    :try_start_0
    invoke-static {p1}, Landroidx/appcompat/widget/n;->b(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_7

    return-object p2

    .line 816
    :cond_7
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p0

    const-string v0, "ACTVAutoSizeHelper"

    .line 818
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to access TextView#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " member"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p2
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5

    .line 846
    :try_start_0
    sget-object v0, Landroidx/appcompat/widget/n;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    if-nez v0, :cond_1b

    .line 848
    const-class v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/4 v1, 0x1

    .line 850
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 851
    sget-object v1, Landroidx/appcompat/widget/n;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_1b} :catch_1c

    :cond_1b
    return-object v0

    :catch_1c
    move-exception v0

    const-string v1, "ACTVAutoSizeHelper"

    .line 857
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to access TextView#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " member"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private b(I)V
    .registers 4

    .line 667
    iget-object v0, p0, Landroidx/appcompat/widget/n;->k:Landroid/text/TextPaint;

    if-nez v0, :cond_c

    .line 668
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/n;->k:Landroid/text/TextPaint;

    goto :goto_11

    .line 670
    :cond_c
    iget-object v0, p0, Landroidx/appcompat/widget/n;->k:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->reset()V

    .line 672
    :goto_11
    iget-object v0, p0, Landroidx/appcompat/widget/n;->k:Landroid/text/TextPaint;

    iget-object v1, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 673
    iget-object p0, p0, Landroidx/appcompat/widget/n;->k:Landroid/text/TextPaint;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method private c()Z
    .registers 5

    .line 440
    iget-object v0, p0, Landroidx/appcompat/widget/n;->e:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_9

    move v3, v2

    goto :goto_a

    :cond_9
    move v3, v1

    .line 441
    :goto_a
    iput-boolean v3, p0, Landroidx/appcompat/widget/n;->j:Z

    .line 442
    iget-boolean v3, p0, Landroidx/appcompat/widget/n;->j:Z

    if-eqz v3, :cond_25

    .line 443
    iput v2, p0, Landroidx/appcompat/widget/n;->a:I

    .line 444
    iget-object v3, p0, Landroidx/appcompat/widget/n;->e:[I

    aget v1, v3, v1

    int-to-float v1, v1

    iput v1, p0, Landroidx/appcompat/widget/n;->c:F

    .line 445
    iget-object v1, p0, Landroidx/appcompat/widget/n;->e:[I

    sub-int/2addr v0, v2

    aget v0, v1, v0

    int-to-float v0, v0

    iput v0, p0, Landroidx/appcompat/widget/n;->d:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 446
    iput v0, p0, Landroidx/appcompat/widget/n;->b:F

    .line 448
    :cond_25
    iget-boolean p0, p0, Landroidx/appcompat/widget/n;->j:Z

    return p0
.end method

.method private d()Z
    .registers 8

    .line 516
    invoke-direct {p0}, Landroidx/appcompat/widget/n;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_41

    iget v0, p0, Landroidx/appcompat/widget/n;->a:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_41

    .line 520
    iget-boolean v0, p0, Landroidx/appcompat/widget/n;->j:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroidx/appcompat/widget/n;->e:[I

    array-length v0, v0

    if-nez v0, :cond_3e

    .line 522
    :cond_15
    iget v0, p0, Landroidx/appcompat/widget/n;->d:F

    iget v3, p0, Landroidx/appcompat/widget/n;->c:F

    sub-float/2addr v0, v3

    iget v3, p0, Landroidx/appcompat/widget/n;->b:F

    div-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v0, v3

    add-int/2addr v0, v2

    .line 524
    new-array v3, v0, [I

    :goto_26
    if-ge v1, v0, :cond_38

    .line 526
    iget v4, p0, Landroidx/appcompat/widget/n;->c:F

    int-to-float v5, v1

    iget v6, p0, Landroidx/appcompat/widget/n;->b:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 529
    :cond_38
    invoke-static {v3}, Landroidx/appcompat/widget/n;->a([I)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/n;->e:[I

    .line 531
    :cond_3e
    iput-boolean v2, p0, Landroidx/appcompat/widget/n;->i:Z

    goto :goto_43

    .line 533
    :cond_41
    iput-boolean v1, p0, Landroidx/appcompat/widget/n;->i:Z

    .line 536
    :goto_43
    iget-boolean p0, p0, Landroidx/appcompat/widget/n;->i:Z

    return p0
.end method

.method private e()V
    .registers 3

    const/4 v0, 0x0

    .line 585
    iput v0, p0, Landroidx/appcompat/widget/n;->a:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 586
    iput v1, p0, Landroidx/appcompat/widget/n;->c:F

    .line 587
    iput v1, p0, Landroidx/appcompat/widget/n;->d:F

    .line 588
    iput v1, p0, Landroidx/appcompat/widget/n;->b:F

    .line 589
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/appcompat/widget/n;->e:[I

    .line 590
    iput-boolean v0, p0, Landroidx/appcompat/widget/n;->i:Z

    return-void
.end method

.method private f()Z
    .registers 1

    .line 879
    iget-object p0, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    instance-of p0, p0, Landroidx/appcompat/widget/AppCompatEditText;

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method final a()V
    .registers 5

    .line 546
    invoke-virtual {p0}, Landroidx/appcompat/widget/n;->b()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 550
    :cond_7
    iget-boolean v0, p0, Landroidx/appcompat/widget/n;->i:Z

    if-eqz v0, :cond_9a

    .line 551
    iget-object v0, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_99

    iget-object v0, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_1d

    goto/16 :goto_99

    .line 555
    :cond_1d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2a

    iget-object v0, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    .line 556
    invoke-virtual {v0}, Landroid/widget/TextView;->isHorizontallyScrollable()Z

    move-result v0

    goto :goto_3a

    :cond_2a
    iget-object v0, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    const-string v1, "getHorizontallyScrolling"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 557
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/n;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_3a
    if-eqz v0, :cond_3f

    const/high16 v0, 0x100000

    goto :goto_53

    .line 558
    :cond_3f
    iget-object v0, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    .line 560
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    .line 561
    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 562
    :goto_53
    iget-object v1, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    .line 563
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v0, :cond_98

    if-gtz v1, :cond_6c

    goto :goto_98

    .line 569
    :cond_6c
    sget-object v2, Landroidx/appcompat/widget/n;->f:Landroid/graphics/RectF;

    monitor-enter v2

    .line 570
    :try_start_6f
    sget-object v3, Landroidx/appcompat/widget/n;->f:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    .line 571
    sget-object v3, Landroidx/appcompat/widget/n;->f:Landroid/graphics/RectF;

    int-to-float v0, v0

    iput v0, v3, Landroid/graphics/RectF;->right:F

    .line 572
    sget-object v0, Landroidx/appcompat/widget/n;->f:Landroid/graphics/RectF;

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 573
    sget-object v0, Landroidx/appcompat/widget/n;->f:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/n;->a(Landroid/graphics/RectF;)I

    move-result v0

    int-to-float v0, v0

    .line 574
    iget-object v1, p0, Landroidx/appcompat/widget/n;->l:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_93

    const/4 v1, 0x0

    .line 575
    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/widget/n;->a(IF)V

    .line 577
    :cond_93
    monitor-exit v2

    goto :goto_9a

    :catchall_95
    move-exception p0

    monitor-exit v2
    :try_end_97
    .catchall {:try_start_6f .. :try_end_97} :catchall_95

    throw p0

    :cond_98
    :goto_98
    return-void

    :cond_99
    :goto_99
    return-void

    :cond_9a
    :goto_9a
    const/4 v0, 0x1

    .line 581
    iput-boolean v0, p0, Landroidx/appcompat/widget/n;->i:Z

    return-void
.end method

.method final a(I)V
    .registers 5

    .line 204
    invoke-direct {p0}, Landroidx/appcompat/widget/n;->f()Z

    move-result v0

    if-eqz v0, :cond_43

    packed-switch p1, :pswitch_data_44

    .line 230
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unknown auto-size text type: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 210
    :pswitch_19
    iget-object p1, p0, Landroidx/appcompat/widget/n;->m:Landroid/content/Context;

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v0, 0x41400000    # 12.0f

    const/4 v1, 0x2

    .line 212
    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v2, 0x42e00000    # 112.0f

    .line 216
    invoke-static {v1, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 221
    invoke-direct {p0, v0, p1, v1}, Landroidx/appcompat/widget/n;->a(FFF)V

    .line 225
    invoke-direct {p0}, Landroidx/appcompat/widget/n;->d()Z

    move-result p1

    if-eqz p1, :cond_43

    .line 226
    invoke-virtual {p0}, Landroidx/appcompat/widget/n;->a()V

    return-void

    .line 207
    :pswitch_3f
    invoke-direct {p0}, Landroidx/appcompat/widget/n;->e()V

    return-void

    :cond_43
    return-void

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_19
    .end packed-switch
.end method

.method final a(IF)V
    .registers 4

    .line 596
    iget-object v0, p0, Landroidx/appcompat/widget/n;->m:Landroid/content/Context;

    if-nez v0, :cond_9

    .line 597
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Landroidx/appcompat/widget/n;->m:Landroid/content/Context;

    .line 598
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 600
    :goto_f
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/n;->a(F)V

    return-void
.end method

.method final a(IIII)V
    .registers 6

    .line 271
    invoke-direct {p0}, Landroidx/appcompat/widget/n;->f()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 272
    iget-object v0, p0, Landroidx/appcompat/widget/n;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float p1, p1

    .line 273
    invoke-static {p4, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    int-to-float p2, p2

    .line 275
    invoke-static {p4, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    int-to-float p3, p3

    .line 277
    invoke-static {p4, p3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    .line 280
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/n;->a(FFF)V

    .line 283
    invoke-direct {p0}, Landroidx/appcompat/widget/n;->d()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 284
    invoke-virtual {p0}, Landroidx/appcompat/widget/n;->a()V

    :cond_2b
    return-void
.end method

.method final a(Landroid/util/AttributeSet;I)V
    .registers 9

    .line 115
    iget-object v0, p0, Landroidx/appcompat/widget/n;->m:Landroid/content/Context;

    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 117
    sget p2, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeTextType:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 118
    sget p2, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeTextType:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/n;->a:I

    .line 121
    :cond_19
    sget p2, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeStepGranularity:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const/high16 v0, -0x40800000    # -1.0f

    if-eqz p2, :cond_2a

    .line 122
    sget p2, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeStepGranularity:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    goto :goto_2b

    :cond_2a
    move p2, v0

    .line 126
    :goto_2b
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeMinTextSize:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 127
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeMinTextSize:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    goto :goto_3b

    :cond_3a
    move v1, v0

    .line 131
    :goto_3b
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeMaxTextSize:I

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 132
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeMaxTextSize:I

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    goto :goto_4b

    :cond_4a
    move v3, v0

    .line 136
    :goto_4b
    sget v4, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizePresetSizes:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 137
    sget v4, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizePresetSizes:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-lez v4, :cond_69

    .line 140
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 141
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 142
    invoke-direct {p0, v4}, Landroidx/appcompat/widget/n;->a(Landroid/content/res/TypedArray;)V

    .line 143
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 146
    :cond_69
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 148
    invoke-direct {p0}, Landroidx/appcompat/widget/n;->f()Z

    move-result p1

    if-eqz p1, :cond_a7

    .line 149
    iget p1, p0, Landroidx/appcompat/widget/n;->a:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_a9

    .line 153
    iget-boolean p1, p0, Landroidx/appcompat/widget/n;->j:Z

    if-nez p1, :cond_a3

    .line 154
    iget-object p1, p0, Landroidx/appcompat/widget/n;->m:Landroid/content/Context;

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    cmpl-float v2, v1, v0

    const/4 v4, 0x2

    if-nez v2, :cond_90

    const/high16 v1, 0x41400000    # 12.0f

    .line 158
    invoke-static {v4, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    :cond_90
    cmpl-float v2, v3, v0

    if-nez v2, :cond_9a

    const/high16 v2, 0x42e00000    # 112.0f

    .line 165
    invoke-static {v4, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    :cond_9a
    cmpl-float p1, p2, v0

    if-nez p1, :cond_a0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 176
    :cond_a0
    invoke-direct {p0, v1, v3, p2}, Landroidx/appcompat/widget/n;->a(FFF)V

    .line 181
    :cond_a3
    invoke-direct {p0}, Landroidx/appcompat/widget/n;->d()Z

    return-void

    .line 184
    :cond_a7
    iput v2, p0, Landroidx/appcompat/widget/n;->a:I

    :cond_a9
    return-void
.end method

.method final a([II)V
    .registers 8

    .line 314
    invoke-direct {p0}, Landroidx/appcompat/widget/n;->f()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 315
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_54

    .line 317
    new-array v2, v0, [I

    if-nez p2, :cond_13

    .line 320
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    goto :goto_2f

    .line 322
    :cond_13
    iget-object v3, p0, Landroidx/appcompat/widget/n;->m:Landroid/content/Context;

    .line 323
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    :goto_1d
    if-ge v1, v0, :cond_2f

    .line 326
    aget v4, p1, v1

    int-to-float v4, v4

    invoke-static {p2, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 331
    :cond_2f
    :goto_2f
    invoke-static {v2}, Landroidx/appcompat/widget/n;->a([I)[I

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/n;->e:[I

    .line 332
    invoke-direct {p0}, Landroidx/appcompat/widget/n;->c()Z

    move-result p2

    if-eqz p2, :cond_3c

    goto :goto_56

    .line 333
    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "None of the preset sizes is valid: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 337
    :cond_54
    iput-boolean v1, p0, Landroidx/appcompat/widget/n;->j:Z

    .line 340
    :goto_56
    invoke-direct {p0}, Landroidx/appcompat/widget/n;->d()Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 341
    invoke-virtual {p0}, Landroidx/appcompat/widget/n;->a()V

    :cond_5f
    return-void
.end method

.method final b()Z
    .registers 2

    .line 870
    invoke-direct {p0}, Landroidx/appcompat/widget/n;->f()Z

    move-result v0

    if-eqz v0, :cond_c

    iget p0, p0, Landroidx/appcompat/widget/n;->a:I

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method
