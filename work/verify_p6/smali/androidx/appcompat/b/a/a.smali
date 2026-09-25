.class public Landroidx/appcompat/b/a/a;
.super Landroidx/appcompat/b/a/d;
.source "AnimatedStateListDrawableCompat.java"

# interfaces
.implements Landroidx/core/graphics/drawable/b;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedAPI"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/b/a/a$e;,
        Landroidx/appcompat/b/a/a$b;,
        Landroidx/appcompat/b/a/a$c;,
        Landroidx/appcompat/b/a/a$d;,
        Landroidx/appcompat/b/a/a$a;,
        Landroidx/appcompat/b/a/a$f;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "a"


# instance fields
.field private d:Landroidx/appcompat/b/a/a$b;

.field private e:Landroidx/appcompat/b/a/a$f;

.field private f:I

.field private g:I

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, v0, v0}, Landroidx/appcompat/b/a/a;-><init>(Landroidx/appcompat/b/a/a$b;Landroid/content/res/Resources;)V

    return-void
.end method

.method constructor <init>(Landroidx/appcompat/b/a/a$b;Landroid/content/res/Resources;)V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, v0}, Landroidx/appcompat/b/a/d;-><init>(B)V

    const/4 v0, -0x1

    .line 105
    iput v0, p0, Landroidx/appcompat/b/a/a;->f:I

    .line 107
    iput v0, p0, Landroidx/appcompat/b/a/a;->g:I

    .line 118
    new-instance v0, Landroidx/appcompat/b/a/a$b;

    invoke-direct {v0, p1, p0, p2}, Landroidx/appcompat/b/a/a$b;-><init>(Landroidx/appcompat/b/a/a$b;Landroidx/appcompat/b/a/a;Landroid/content/res/Resources;)V

    .line 119
    invoke-virtual {p0, v0}, Landroidx/appcompat/b/a/a;->a(Landroidx/appcompat/b/a/b$b;)V

    .line 120
    invoke-virtual {p0}, Landroidx/appcompat/b/a/a;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/b/a/a;->onStateChange([I)Z

    .line 121
    invoke-virtual {p0}, Landroidx/appcompat/b/a/a;->jumpToCurrentState()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/appcompat/b/a/a;
    .locals 8

    .line 171
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "animated-selector"

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    new-instance v0, Landroidx/appcompat/b/a/a;

    invoke-direct {v0}, Landroidx/appcompat/b/a/a;-><init>()V

    .line 1201
    sget-object v1, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat:[I

    invoke-static {p1, p4, p3, v1}, Landroidx/core/content/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1203
    sget v2, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_visible:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/b/a/a;->setVisible(ZZ)Z

    .line 1449
    iget-object v2, v0, Landroidx/appcompat/b/a/a;->d:Landroidx/appcompat/b/a/a$b;

    .line 1451
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 1452
    iget v3, v2, Landroidx/appcompat/b/a/a$b;->f:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, v2, Landroidx/appcompat/b/a/a$b;->f:I

    .line 1455
    :cond_0
    sget v3, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_variablePadding:I

    iget-boolean v4, v2, Landroidx/appcompat/b/a/a$b;->k:Z

    .line 1456
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 1961
    iput-boolean v3, v2, Landroidx/appcompat/b/a/b$b;->k:Z

    .line 1458
    sget v3, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_constantSize:I

    iget-boolean v4, v2, Landroidx/appcompat/b/a/a$b;->n:Z

    .line 1459
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 1993
    iput-boolean v3, v2, Landroidx/appcompat/b/a/b$b;->n:Z

    .line 1461
    sget v3, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_enterFadeDuration:I

    iget v4, v2, Landroidx/appcompat/b/a/a$b;->C:I

    .line 1462
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 2064
    iput v3, v2, Landroidx/appcompat/b/a/b$b;->C:I

    .line 1464
    sget v3, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_exitFadeDuration:I

    iget v4, v2, Landroidx/appcompat/b/a/a$b;->D:I

    .line 1465
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 2072
    iput v3, v2, Landroidx/appcompat/b/a/b$b;->D:I

    .line 1467
    sget v3, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_dither:I

    iget-boolean v2, v2, Landroidx/appcompat/b/a/a$b;->z:Z

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/b/a/a;->setDither(Z)V

    .line 2589
    iget-object v2, v0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    invoke-virtual {v2, p1}, Landroidx/appcompat/b/a/b$b;->a(Landroid/content/res/Resources;)V

    .line 1207
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 1208
    invoke-direct/range {v2 .. v7}, Landroidx/appcompat/b/a/a;->b(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 3472
    invoke-virtual {v0}, Landroidx/appcompat/b/a/a;->getState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/b/a/a;->onStateChange([I)Z

    return-object v0

    .line 173
    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": invalid animated-selector tag "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private b(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 17

    move-object/from16 v0, p4

    .line 483
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 485
    :cond_0
    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-eq v3, v2, :cond_e

    .line 486
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ge v4, v1, :cond_1

    const/4 v5, 0x3

    if-eq v3, v5, :cond_e

    :cond_1
    const/4 v5, 0x2

    if-ne v3, v5, :cond_d

    if-gt v4, v1, :cond_d

    .line 494
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 7564
    sget-object v3, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableItem:[I

    move-object/from16 v4, p2

    move-object/from16 v6, p5

    invoke-static {v4, v6, v0, v3}, Landroidx/core/content/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 7566
    sget v7, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableItem_android_id:I

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/4 v9, 0x0

    .line 7569
    sget v10, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableItem_android_drawable:I

    const/4 v11, -0x1

    .line 7570
    invoke-virtual {v3, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    if-lez v10, :cond_2

    .line 7572
    invoke-static {}, Landroidx/appcompat/widget/w;->a()Landroidx/appcompat/widget/w;

    move-result-object v9

    move-object/from16 v11, p1

    invoke-virtual {v9, v11, v10}, Landroidx/appcompat/widget/w;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto :goto_1

    :cond_2
    move-object/from16 v11, p1

    .line 7574
    :goto_1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 8235
    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    .line 8236
    new-array v10, v3, [I

    move v12, v8

    move v13, v12

    :goto_2
    if-ge v12, v3, :cond_5

    .line 8238
    invoke-interface {v0, v12}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v14

    if-eqz v14, :cond_4

    const v15, 0x10100d0

    if-eq v14, v15, :cond_4

    const v15, 0x1010199

    if-eq v14, v15, :cond_4

    add-int/lit8 v15, v13, 0x1

    .line 8248
    invoke-interface {v0, v12, v8}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v16

    if-eqz v16, :cond_3

    goto :goto_3

    :cond_3
    neg-int v14, v14

    :goto_3
    aput v14, v10, v13

    move v13, v15

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 8252
    :cond_5
    invoke-static {v10, v13}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v3

    if-nez v9, :cond_a

    .line 7580
    :cond_6
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x4

    if-eq v8, v9, :cond_6

    if-ne v8, v5, :cond_9

    .line 7588
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v8, "vector"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 7589
    invoke-static/range {p2 .. p5}, Landroidx/vectordrawable/a/a/i;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/vectordrawable/a/a/i;

    move-result-object v9

    goto :goto_4

    .line 7590
    :cond_7
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v5, v8, :cond_8

    .line 7591
    invoke-static/range {p2 .. p5}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto :goto_4

    .line 7593
    :cond_8
    invoke-static/range {p2 .. p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto :goto_4

    .line 7584
    :cond_9
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7585
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_4
    if-eqz v9, :cond_b

    move-object/from16 v5, p0

    .line 7600
    iget-object v8, v5, Landroidx/appcompat/b/a/a;->d:Landroidx/appcompat/b/a/a$b;

    .line 9351
    invoke-virtual {v8, v9}, Landroidx/appcompat/b/a/d$a;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v9

    .line 9352
    iget-object v10, v8, Landroidx/appcompat/b/a/d$a;->L:[[I

    aput-object v3, v10, v9

    .line 8668
    iget-object v3, v8, Landroidx/appcompat/b/a/a$b;->b:Landroidx/b/h;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v9, v7}, Landroidx/b/h;->b(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 7597
    :cond_b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7598
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move-object/from16 v5, p0

    move-object/from16 v11, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p5

    .line 496
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "transition"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 497
    invoke-direct/range {p0 .. p5}, Landroidx/appcompat/b/a/a;->c(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    goto/16 :goto_0

    :cond_d
    move-object/from16 v5, p0

    move-object/from16 v11, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p5

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method private c(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .locals 7

    .line 510
    sget-object v0, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition:[I

    invoke-static {p2, p5, p4, v0}, Landroidx/core/content/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 512
    sget v1, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition_android_fromId:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 514
    sget v3, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition_android_toId:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 517
    sget v4, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition_android_drawable:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-lez v4, :cond_0

    .line 520
    invoke-static {}, Landroidx/appcompat/widget/w;->a()Landroidx/appcompat/widget/w;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Landroidx/appcompat/widget/w;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 522
    :goto_0
    sget v5, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition_android_reversible:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 524
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v4, :cond_5

    .line 529
    :cond_1
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    .line 537
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "animated-vector"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 538
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/vectordrawable/a/a/c;->a(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/vectordrawable/a/a/c;

    move-result-object v4

    goto :goto_1

    .line 540
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_3

    .line 541
    invoke-static {p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_1

    .line 543
    :cond_3
    invoke-static {p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_1

    .line 533
    :cond_4
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 534
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    if-eqz v4, :cond_7

    if-eq v1, v2, :cond_6

    if-eq v3, v2, :cond_6

    .line 554
    iget-object p0, p0, Landroidx/appcompat/b/a/a;->d:Landroidx/appcompat/b/a/a$b;

    invoke-virtual {p0, v1, v3, v4, v5}, Landroidx/appcompat/b/a/a$b;->a(IILandroid/graphics/drawable/Drawable;Z)I

    move-result p0

    return p0

    .line 551
    :cond_6
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 552
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": <transition> tag requires \'fromId\' & \'toId\' attributes"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 547
    :cond_7
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 548
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private c()Landroidx/appcompat/b/a/a$b;
    .locals 3

    .line 614
    new-instance v0, Landroidx/appcompat/b/a/a$b;

    iget-object v1, p0, Landroidx/appcompat/b/a/a;->d:Landroidx/appcompat/b/a/a$b;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroidx/appcompat/b/a/a$b;-><init>(Landroidx/appcompat/b/a/a$b;Landroidx/appcompat/b/a/a;Landroid/content/res/Resources;)V

    return-object v0
.end method


# virtual methods
.method final synthetic a()Landroidx/appcompat/b/a/d$a;
    .locals 0

    .line 89
    invoke-direct {p0}, Landroidx/appcompat/b/a/a;->c()Landroidx/appcompat/b/a/a$b;

    move-result-object p0

    return-object p0
.end method

.method final a(Landroidx/appcompat/b/a/b$b;)V
    .locals 1

    .line 718
    invoke-super {p0, p1}, Landroidx/appcompat/b/a/d;->a(Landroidx/appcompat/b/a/b$b;)V

    .line 719
    instance-of v0, p1, Landroidx/appcompat/b/a/a$b;

    if-eqz v0, :cond_0

    .line 720
    check-cast p1, Landroidx/appcompat/b/a/a$b;

    iput-object p1, p0, Landroidx/appcompat/b/a/a;->d:Landroidx/appcompat/b/a/a$b;

    :cond_0
    return-void
.end method

.method public bridge synthetic applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroidx/appcompat/b/a/d;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method final synthetic b()Landroidx/appcompat/b/a/b$b;
    .locals 0

    .line 89
    invoke-direct {p0}, Landroidx/appcompat/b/a/a;->c()Landroidx/appcompat/b/a/a$b;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic canApplyTheme()Z
    .locals 0

    .line 89
    invoke-super {p0}, Landroidx/appcompat/b/a/d;->canApplyTheme()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroidx/appcompat/b/a/d;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public bridge synthetic getAlpha()I
    .locals 0

    .line 89
    invoke-super {p0}, Landroidx/appcompat/b/a/d;->getAlpha()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getChangingConfigurations()I
    .locals 0

    .line 89
    invoke-super {p0}, Landroidx/appcompat/b/a/d;->getChangingConfigurations()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 89
    invoke-super {p0}, Landroidx/appcompat/b/a/d;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroidx/appcompat/b/a/d;->getHotspotBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic getIntrinsicHeight()I
    .locals 0

    .line 89
    invoke-super {p0}, Landroidx/appcompat/b/a/d;->getIntrinsicHeight()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getIntrinsicWidth()I
    .locals 0

    .line 89
    invoke-super {p0}, Landroidx/appcompat/b/a/d;->getIntrinsicWidth()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getMinimumHeight()I
    .locals 0

    .line 89
    invoke-super {p0}, Landroidx/appcompat/b/a/d;->getMinimumHeight()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getMinimumWidth()I
    .locals 0

    .line 89
    invoke-super {p0}, Landroidx/appcompat/b/a/d;->getMinimumWidth()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getOpacity()I
    .locals 0

    .line 89
    invoke-super {p0}, Landroidx/appcompat/b/a/d;->getOpacity()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getOutline(Landroid/graphics/Outline;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroidx/appcompat/b/a/d;->getOutline(Landroid/graphics/Outline;)V

    return-void
.end method

.method public bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroidx/appcompat/b/a/d;->getPadding(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroidx/appcompat/b/a/d;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic isAutoMirrored()Z
    .locals 0

    .line 89
    invoke-super {p0}, Landroidx/appcompat/b/a/d;->isAutoMirrored()Z

    move-result p0

    return p0
.end method

.method public isStateful()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .line 264
    invoke-super {p0}, Landroidx/appcompat/b/a/d;->jumpToCurrentState()V

    .line 265
    iget-object v0, p0, Landroidx/appcompat/b/a/a;->e:Landroidx/appcompat/b/a/a$f;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Landroidx/appcompat/b/a/a;->e:Landroidx/appcompat/b/a/a$f;

    invoke-virtual {v0}, Landroidx/appcompat/b/a/a$f;->b()V

    const/4 v0, 0x0

    .line 267
    iput-object v0, p0, Landroidx/appcompat/b/a/a;->e:Landroidx/appcompat/b/a/a$f;

    .line 268
    iget v0, p0, Landroidx/appcompat/b/a/a;->f:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/b/a/a;->a(I)Z

    const/4 v0, -0x1

    .line 269
    iput v0, p0, Landroidx/appcompat/b/a/a;->f:I

    .line 270
    iput v0, p0, Landroidx/appcompat/b/a/a;->g:I

    :cond_0
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 605
    iget-boolean v0, p0, Landroidx/appcompat/b/a/a;->h:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroidx/appcompat/b/a/d;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 606
    iget-object v0, p0, Landroidx/appcompat/b/a/a;->d:Landroidx/appcompat/b/a/a$b;

    invoke-virtual {v0}, Landroidx/appcompat/b/a/a$b;->a()V

    const/4 v0, 0x1

    .line 607
    iput-boolean v0, p0, Landroidx/appcompat/b/a/a;->h:Z

    :cond_0
    return-object p0
.end method

.method public bridge synthetic onLayoutDirectionChanged(I)Z
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroidx/appcompat/b/a/d;->onLayoutDirectionChanged(I)Z

    move-result p0

    return p0
.end method

.method protected onStateChange([I)Z
    .locals 14

    .line 278
    iget-object v0, p0, Landroidx/appcompat/b/a/a;->d:Landroidx/appcompat/b/a/a$b;

    invoke-virtual {v0, p1}, Landroidx/appcompat/b/a/a$b;->a([I)I

    move-result v0

    .line 4414
    iget v1, p0, Landroidx/appcompat/b/a/b;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_a

    .line 5293
    iget-object v1, p0, Landroidx/appcompat/b/a/a;->e:Landroidx/appcompat/b/a/a$f;

    if-eqz v1, :cond_2

    .line 5295
    iget v4, p0, Landroidx/appcompat/b/a/a;->f:I

    if-ne v0, v4, :cond_0

    :goto_0
    move v1, v2

    goto/16 :goto_6

    .line 5298
    :cond_0
    iget v4, p0, Landroidx/appcompat/b/a/a;->g:I

    if-ne v0, v4, :cond_1

    invoke-virtual {v1}, Landroidx/appcompat/b/a/a$f;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5300
    invoke-virtual {v1}, Landroidx/appcompat/b/a/a$f;->d()V

    .line 5301
    iget v1, p0, Landroidx/appcompat/b/a/a;->g:I

    iput v1, p0, Landroidx/appcompat/b/a/a;->f:I

    .line 5302
    iput v0, p0, Landroidx/appcompat/b/a/a;->g:I

    goto :goto_0

    .line 5306
    :cond_1
    iget v4, p0, Landroidx/appcompat/b/a/a;->f:I

    .line 5308
    invoke-virtual {v1}, Landroidx/appcompat/b/a/a$f;->b()V

    goto :goto_1

    .line 5414
    :cond_2
    iget v4, p0, Landroidx/appcompat/b/a/b;->b:I

    :goto_1
    const/4 v1, 0x0

    .line 5313
    iput-object v1, p0, Landroidx/appcompat/b/a/a;->e:Landroidx/appcompat/b/a/a$f;

    const/4 v1, -0x1

    .line 5314
    iput v1, p0, Landroidx/appcompat/b/a/a;->g:I

    .line 5315
    iput v1, p0, Landroidx/appcompat/b/a/a;->f:I

    .line 5316
    iget-object v1, p0, Landroidx/appcompat/b/a/a;->d:Landroidx/appcompat/b/a/a$b;

    .line 5317
    invoke-virtual {v1, v4}, Landroidx/appcompat/b/a/a$b;->a(I)I

    move-result v5

    .line 5318
    invoke-virtual {v1, v0}, Landroidx/appcompat/b/a/a$b;->a(I)I

    move-result v6

    if-eqz v6, :cond_9

    if-nez v5, :cond_3

    goto/16 :goto_5

    .line 5685
    :cond_3
    invoke-static {v5, v6}, Landroidx/appcompat/b/a/a$b;->a(II)J

    move-result-wide v7

    .line 5686
    iget-object v9, v1, Landroidx/appcompat/b/a/a$b;->a:Landroidx/b/d;

    const-wide/16 v10, -0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v9, v7, v8, v12}, Landroidx/b/d;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    long-to-int v7, v7

    if-gez v7, :cond_4

    goto/16 :goto_5

    .line 5695
    :cond_4
    invoke-static {v5, v6}, Landroidx/appcompat/b/a/a$b;->a(II)J

    move-result-wide v8

    .line 5696
    iget-object v12, v1, Landroidx/appcompat/b/a/a$b;->a:Landroidx/b/d;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v8, v9, v13}, Landroidx/b/d;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide v12, 0x200000000L

    and-long/2addr v8, v12

    const-wide/16 v12, 0x0

    cmp-long v8, v8, v12

    if-eqz v8, :cond_5

    move v8, v2

    goto :goto_2

    :cond_5
    move v8, v3

    .line 5330
    :goto_2
    invoke-virtual {p0, v7}, Landroidx/appcompat/b/a/a;->a(I)Z

    .line 5332
    invoke-virtual {p0}, Landroidx/appcompat/b/a/a;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 5333
    instance-of v9, v7, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v9, :cond_7

    .line 6690
    invoke-static {v5, v6}, Landroidx/appcompat/b/a/a$b;->a(II)J

    move-result-wide v5

    .line 6691
    iget-object v1, v1, Landroidx/appcompat/b/a/a$b;->a:Landroidx/b/d;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v5, v6, v9}, Landroidx/b/d;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide v9, 0x100000000L

    and-long/2addr v5, v9

    cmp-long v1, v5, v12

    if-eqz v1, :cond_6

    move v1, v2

    goto :goto_3

    :cond_6
    move v1, v3

    .line 5335
    :goto_3
    new-instance v5, Landroidx/appcompat/b/a/a$d;

    check-cast v7, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v5, v7, v1, v8}, Landroidx/appcompat/b/a/a$d;-><init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V

    goto :goto_4

    .line 5337
    :cond_7
    instance-of v1, v7, Landroidx/vectordrawable/a/a/c;

    if-eqz v1, :cond_8

    .line 5339
    new-instance v5, Landroidx/appcompat/b/a/a$c;

    check-cast v7, Landroidx/vectordrawable/a/a/c;

    invoke-direct {v5, v7}, Landroidx/appcompat/b/a/a$c;-><init>(Landroidx/vectordrawable/a/a/c;)V

    goto :goto_4

    .line 5340
    :cond_8
    instance-of v1, v7, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_9

    .line 5341
    new-instance v5, Landroidx/appcompat/b/a/a$a;

    check-cast v7, Landroid/graphics/drawable/Animatable;

    invoke-direct {v5, v7}, Landroidx/appcompat/b/a/a$a;-><init>(Landroid/graphics/drawable/Animatable;)V

    .line 5346
    :goto_4
    invoke-virtual {v5}, Landroidx/appcompat/b/a/a$f;->a()V

    .line 5347
    iput-object v5, p0, Landroidx/appcompat/b/a/a;->e:Landroidx/appcompat/b/a/a$f;

    .line 5348
    iput v4, p0, Landroidx/appcompat/b/a/a;->g:I

    .line 5349
    iput v0, p0, Landroidx/appcompat/b/a/a;->f:I

    goto/16 :goto_0

    :cond_9
    :goto_5
    move v1, v3

    :goto_6
    if-nez v1, :cond_b

    .line 280
    invoke-virtual {p0, v0}, Landroidx/appcompat/b/a/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_7

    :cond_a
    move v2, v3

    .line 284
    :cond_b
    :goto_7
    invoke-virtual {p0}, Landroidx/appcompat/b/a/a;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 286
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p0

    or-int/2addr v2, p0

    :cond_c
    return v2
.end method

.method public bridge synthetic scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/b/a/d;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public bridge synthetic setAlpha(I)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroidx/appcompat/b/a/d;->setAlpha(I)V

    return-void
.end method

.method public bridge synthetic setAutoMirrored(Z)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroidx/appcompat/b/a/d;->setAutoMirrored(Z)V

    return-void
.end method

.method public bridge synthetic setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroidx/appcompat/b/a/d;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public bridge synthetic setDither(Z)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroidx/appcompat/b/a/d;->setDither(Z)V

    return-void
.end method

.method public bridge synthetic setHotspot(FF)V
    .locals 0

    .line 89
    invoke-super {p0, p1, p2}, Landroidx/appcompat/b/a/d;->setHotspot(FF)V

    return-void
.end method

.method public bridge synthetic setHotspotBounds(IIII)V
    .locals 0

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/b/a/d;->setHotspotBounds(IIII)V

    return-void
.end method

.method public bridge synthetic setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroidx/appcompat/b/a/d;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroidx/appcompat/b/a/d;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 214
    invoke-super {p0, p1, p2}, Landroidx/appcompat/b/a/d;->setVisible(ZZ)Z

    move-result v0

    .line 215
    iget-object v1, p0, Landroidx/appcompat/b/a/a;->e:Landroidx/appcompat/b/a/a$f;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 217
    iget-object p0, p0, Landroidx/appcompat/b/a/a;->e:Landroidx/appcompat/b/a/a$f;

    invoke-virtual {p0}, Landroidx/appcompat/b/a/a$f;->a()V

    goto :goto_0

    .line 220
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/b/a/a;->jumpToCurrentState()V

    :cond_2
    :goto_0
    return v0
.end method

.method public bridge synthetic unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 89
    invoke-super {p0, p1, p2}, Landroidx/appcompat/b/a/d;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method
