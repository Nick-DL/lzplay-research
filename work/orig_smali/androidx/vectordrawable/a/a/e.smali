.class public final Landroidx/vectordrawable/a/a/e;
.super Ljava/lang/Object;
.source "AnimatorInflaterCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/vectordrawable/a/a/e$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;
    .registers 14

    const/4 v0, 0x0

    .line 131
    :try_start_1
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_5} :catch_42
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_26
    .catchall {:try_start_1 .. :try_end_5} :catchall_24

    .line 1501
    :try_start_5
    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v9

    invoke-static/range {v1 .. v8}, Landroidx/vectordrawable/a/a/e;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    move-result-object p0
    :try_end_15
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_15} :catch_21
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_15} :catch_1e
    .catchall {:try_start_5 .. :try_end_15} :catchall_1b

    if-eqz v9, :cond_1a

    .line 147
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1a
    return-object p0

    :catchall_1b
    move-exception p0

    move-object v0, v9

    goto :goto_5e

    :catch_1e
    move-exception p0

    move-object v0, v9

    goto :goto_27

    :catch_21
    move-exception p0

    move-object v0, v9

    goto :goto_43

    :catchall_24
    move-exception p0

    goto :goto_5e

    :catch_26
    move-exception p0

    .line 141
    :goto_27
    :try_start_27
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t load animation resource ID #0x"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1, p0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 145
    throw p1

    :catch_42
    move-exception p0

    .line 135
    :goto_43
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t load animation resource ID #0x"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1, p0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 139
    throw p1
    :try_end_5e
    .catchall {:try_start_27 .. :try_end_5e} :catchall_24

    :goto_5e
    if-eqz v0, :cond_63

    .line 147
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 148
    :cond_63
    throw p0
.end method

.method private static a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;
    .registers 26

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    .line 514
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    const/4 v0, 0x0

    move-object v13, v0

    .line 516
    :cond_e
    :goto_e
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    const/4 v14, 0x0

    if-ne v1, v2, :cond_1c

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v12, :cond_df

    :cond_1c
    const/4 v2, 0x1

    if-eq v1, v2, :cond_df

    const/4 v3, 0x2

    if-ne v1, v3, :cond_db

    .line 523
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "objectAnimator"

    .line 526
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p7

    move-object/from16 v5, p3

    .line 527
    invoke-static/range {v0 .. v5}, Landroidx/vectordrawable/a/a/e;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_3e
    move-object/from16 v3, p0

    goto/16 :goto_b3

    :cond_42
    const-string v3, "animator"

    .line 528
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v5, p7

    move-object/from16 v6, p3

    .line 529
    invoke-static/range {v0 .. v6}, Landroidx/vectordrawable/a/a/e;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_3e

    :cond_5c
    const-string v3, "set"

    .line 530
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_94

    .line 531
    new-instance v15, Landroid/animation/AnimatorSet;

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    .line 532
    sget-object v0, Landroidx/vectordrawable/a/a/a;->h:[I

    move-object/from16 v7, p4

    invoke-static {v8, v9, v7, v0}, Landroidx/core/content/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    const-string v0, "ordering"

    .line 535
    invoke-static {v6, v10, v0, v14, v14}, Landroidx/core/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v16

    .line 538
    move-object v5, v15

    check-cast v5, Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v17, v6

    move/from16 v6, v16

    move/from16 v7, p7

    invoke-static/range {v0 .. v7}, Landroidx/vectordrawable/a/a/e;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    .line 540
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v3, p0

    move-object v0, v15

    goto :goto_b3

    :cond_94
    const-string v3, "propertyValuesHolder"

    .line 541
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 543
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    move-object/from16 v3, p0

    .line 542
    invoke-static {v3, v8, v9, v10, v1}, Landroidx/vectordrawable/a/a/e;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    if-eqz v1, :cond_b2

    .line 544
    instance-of v4, v0, Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_b2

    .line 545
    move-object v4, v0

    check-cast v4, Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :cond_b2
    move v14, v2

    :goto_b3
    if-eqz v11, :cond_e

    if-nez v14, :cond_e

    if-nez v13, :cond_be

    .line 554
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 556
    :cond_be
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 549
    :cond_c3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown animator name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_db
    move-object/from16 v3, p0

    goto/16 :goto_e

    :cond_df
    if-eqz v11, :cond_108

    if-eqz v13, :cond_108

    .line 560
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/animation/Animator;

    .line 562
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ed
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ff

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    add-int/lit8 v4, v14, 0x1

    .line 563
    aput-object v3, v1, v14

    move v14, v4

    goto :goto_ed

    :cond_ff
    if-nez p6, :cond_105

    .line 566
    invoke-virtual {v11, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_108

    .line 568
    :cond_105
    invoke-virtual {v11, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    :cond_108
    :goto_108
    return-object v0
.end method

.method private static a(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;
    .registers 4

    .line 779
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_d

    .line 780
    invoke-static {p1}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object p0

    return-object p0

    .line 781
    :cond_d
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object p0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1a

    .line 782
    invoke-static {p1}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object p0

    return-object p0

    .line 783
    :cond_1a
    invoke-static {p1}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ObjectAnimator;
    .registers 14

    .line 872
    new-instance v7, Landroid/animation/ObjectAnimator;

    invoke-direct {v7}, Landroid/animation/ObjectAnimator;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v7

    move v5, p4

    move-object v6, p5

    .line 874
    invoke-static/range {v0 .. v6}, Landroidx/vectordrawable/a/a/e;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;

    return-object v7
.end method

.method private static a(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;
    .registers 16

    .line 207
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    move v3, v1

    goto :goto_b

    :cond_a
    move v3, v2

    :goto_b
    if-eqz v3, :cond_10

    .line 209
    iget v0, v0, Landroid/util/TypedValue;->type:I

    goto :goto_11

    :cond_10
    move v0, v2

    .line 210
    :goto_11
    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    if-eqz v4, :cond_19

    move v5, v1

    goto :goto_1a

    :cond_19
    move v5, v2

    :goto_1a
    if-eqz v5, :cond_1f

    .line 212
    iget v4, v4, Landroid/util/TypedValue;->type:I

    goto :goto_20

    :cond_1f
    move v4, v2

    :goto_20
    const/4 v6, 0x4

    const/4 v7, 0x3

    if-ne p1, v6, :cond_37

    if-eqz v3, :cond_2c

    .line 216
    invoke-static {v0}, Landroidx/vectordrawable/a/a/e;->a(I)Z

    move-result p1

    if-nez p1, :cond_34

    :cond_2c
    if-eqz v5, :cond_36

    invoke-static {v4}, Landroidx/vectordrawable/a/a/e;->a(I)Z

    move-result p1

    if-eqz p1, :cond_36

    :cond_34
    move p1, v7

    goto :goto_37

    :cond_36
    move p1, v2

    :cond_37
    :goto_37
    if-nez p1, :cond_3b

    move v6, v1

    goto :goto_3c

    :cond_3b
    move v6, v2

    :goto_3c
    const/4 v8, 0x0

    const/4 v9, 0x2

    if-ne p1, v9, :cond_a7

    .line 228
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 229
    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 232
    invoke-static {p1}, Landroidx/core/graphics/b;->b(Ljava/lang/String;)[Landroidx/core/graphics/b$b;

    move-result-object p2

    .line 234
    invoke-static {p0}, Landroidx/core/graphics/b;->b(Ljava/lang/String;)[Landroidx/core/graphics/b$b;

    move-result-object p3

    if-nez p2, :cond_54

    if-eqz p3, :cond_a4

    :cond_54
    if-eqz p2, :cond_95

    .line 237
    new-instance v0, Landroidx/vectordrawable/a/a/e$a;

    invoke-direct {v0}, Landroidx/vectordrawable/a/a/e$a;-><init>()V

    if-eqz p3, :cond_8b

    .line 239
    invoke-static {p2, p3}, Landroidx/core/graphics/b;->a([Landroidx/core/graphics/b$b;[Landroidx/core/graphics/b$b;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 243
    new-array p0, v9, [Ljava/lang/Object;

    aput-object p2, p0, v2

    aput-object p3, p0, v1

    invoke-static {p4, v0, p0}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    goto/16 :goto_167

    .line 240
    :cond_6f
    new-instance p2, Landroid/view/InflateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, " Can\'t morph from "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 246
    :cond_8b
    new-array p0, v1, [Ljava/lang/Object;

    aput-object p2, p0, v2

    invoke-static {p4, v0, p0}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    goto/16 :goto_167

    :cond_95
    if-eqz p3, :cond_a4

    .line 250
    new-instance p0, Landroidx/vectordrawable/a/a/e$a;

    invoke-direct {p0}, Landroidx/vectordrawable/a/a/e$a;-><init>()V

    .line 251
    new-array p1, v1, [Ljava/lang/Object;

    aput-object p3, p1, v2

    invoke-static {p4, p0, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    :cond_a4
    move-object p0, v8

    goto/16 :goto_167

    :cond_a7
    if-ne p1, v7, :cond_ae

    .line 260
    invoke-static {}, Landroidx/vectordrawable/a/a/f;->a()Landroidx/vectordrawable/a/a/f;

    move-result-object p1

    goto :goto_af

    :cond_ae
    move-object p1, v8

    :goto_af
    const/4 v7, 0x5

    const/4 v10, 0x0

    if-eqz v6, :cond_f8

    if-eqz v3, :cond_e3

    if-ne v0, v7, :cond_bc

    .line 267
    invoke-virtual {p0, p2, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    goto :goto_c0

    .line 269
    :cond_bc
    invoke-virtual {p0, p2, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    :goto_c0
    if-eqz v5, :cond_d9

    if-ne v4, v7, :cond_c9

    .line 273
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    goto :goto_cd

    .line 275
    :cond_c9
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    .line 277
    :goto_cd
    new-array p3, v9, [F

    aput p2, p3, v2

    aput p0, p3, v1

    invoke-static {p4, p3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    goto/16 :goto_15f

    .line 280
    :cond_d9
    new-array p0, v1, [F

    aput p2, p0, v2

    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    goto/16 :goto_15f

    :cond_e3
    if-ne v4, v7, :cond_ea

    .line 284
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    goto :goto_ee

    .line 286
    :cond_ea
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    .line 288
    :goto_ee
    new-array p2, v1, [F

    aput p0, p2, v2

    invoke-static {p4, p2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    goto/16 :goto_15f

    :cond_f8
    if-eqz v3, :cond_13e

    if-ne v0, v7, :cond_102

    .line 295
    invoke-virtual {p0, p2, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    goto :goto_111

    .line 296
    :cond_102
    invoke-static {v0}, Landroidx/vectordrawable/a/a/e;->a(I)Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 297
    invoke-virtual {p0, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    goto :goto_111

    .line 299
    :cond_10d
    invoke-virtual {p0, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    :goto_111
    if-eqz v5, :cond_135

    if-ne v4, v7, :cond_11b

    .line 303
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    float-to-int p0, p0

    goto :goto_12a

    .line 304
    :cond_11b
    invoke-static {v4}, Landroidx/vectordrawable/a/a/e;->a(I)Z

    move-result v0

    if-eqz v0, :cond_126

    .line 305
    invoke-virtual {p0, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    goto :goto_12a

    .line 307
    :cond_126
    invoke-virtual {p0, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    .line 309
    :goto_12a
    new-array p3, v9, [I

    aput p2, p3, v2

    aput p0, p3, v1

    invoke-static {p4, p3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    goto :goto_15f

    .line 311
    :cond_135
    new-array p0, v1, [I

    aput p2, p0, v2

    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    goto :goto_15f

    :cond_13e
    if-eqz v5, :cond_15f

    if-ne v4, v7, :cond_148

    .line 316
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    float-to-int p0, p0

    goto :goto_157

    .line 317
    :cond_148
    invoke-static {v4}, Landroidx/vectordrawable/a/a/e;->a(I)Z

    move-result p2

    if-eqz p2, :cond_153

    .line 318
    invoke-virtual {p0, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    goto :goto_157

    .line 320
    :cond_153
    invoke-virtual {p0, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    .line 322
    :goto_157
    new-array p2, v1, [I

    aput p0, p2, v2

    invoke-static {p4, p2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    :cond_15f
    :goto_15f
    move-object p0, v8

    if-eqz p0, :cond_167

    if-eqz p1, :cond_167

    .line 327
    invoke-virtual {p0, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    :cond_167
    :goto_167
    return-object p0
.end method

.method private static a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;
    .registers 9

    .line 890
    sget-object v0, Landroidx/vectordrawable/a/a/a;->g:[I

    invoke-static {p1, p2, p3, v0}, Landroidx/core/content/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 892
    sget-object v1, Landroidx/vectordrawable/a/a/a;->k:[I

    invoke-static {p1, p2, p3, v1}, Landroidx/core/content/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-nez p4, :cond_13

    .line 896
    new-instance p4, Landroid/animation/ValueAnimator;

    invoke-direct {p4}, Landroid/animation/ValueAnimator;-><init>()V

    .line 899
    :cond_13
    invoke-static {p4, v0, p1, p5, p6}, Landroidx/vectordrawable/a/a/e;->a(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;FLorg/xmlpull/v1/XmlPullParser;)V

    const-string p2, "interpolator"

    const/4 p3, 0x0

    .line 902
    invoke-static {v0, p6, p2, p3}, Landroidx/core/content/a/g;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result p2

    if-lez p2, :cond_26

    .line 905
    invoke-static {p0, p2}, Landroidx/vectordrawable/a/a/d;->a(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    .line 906
    invoke-virtual {p4, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 909
    :cond_26
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p1, :cond_2e

    .line 911
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2e
    return-object p4
.end method

.method private static a(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;FLorg/xmlpull/v1/XmlPullParser;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    const-string v4, "duration"

    const/4 v5, 0x1

    const/16 v6, 0x12c

    .line 345
    invoke-static {v1, v3, v4, v5, v6}, Landroidx/core/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v4

    int-to-long v6, v4

    const-string v4, "startOffset"

    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 347
    invoke-static {v1, v3, v4, v8, v9}, Landroidx/core/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v4

    int-to-long v10, v4

    const-string v4, "valueType"

    const/4 v12, 0x4

    const/4 v13, 0x7

    .line 349
    invoke-static {v1, v3, v4, v13, v12}, Landroidx/core/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v4

    const-string v13, "valueFrom"

    .line 353
    invoke-static {v3, v13}, Landroidx/core/content/a/g;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    const/4 v14, 0x3

    if-eqz v13, :cond_7c

    const-string v13, "valueTo"

    .line 354
    invoke-static {v3, v13}, Landroidx/core/content/a/g;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7c

    const/4 v13, 0x6

    const/4 v15, 0x5

    if-ne v4, v12, :cond_6d

    .line 1655
    invoke-virtual {v1, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    if-eqz v4, :cond_41

    move/from16 v16, v5

    goto :goto_43

    :cond_41
    move/from16 v16, v9

    :goto_43
    if-eqz v16, :cond_48

    .line 1657
    iget v4, v4, Landroid/util/TypedValue;->type:I

    goto :goto_49

    :cond_48
    move v4, v9

    .line 1658
    :goto_49
    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    if-eqz v8, :cond_52

    move/from16 v17, v5

    goto :goto_54

    :cond_52
    move/from16 v17, v9

    :goto_54
    if-eqz v17, :cond_59

    .line 1660
    iget v8, v8, Landroid/util/TypedValue;->type:I

    goto :goto_5a

    :cond_59
    move v8, v9

    :goto_5a
    if-eqz v16, :cond_62

    .line 1664
    invoke-static {v4}, Landroidx/vectordrawable/a/a/e;->a(I)Z

    move-result v4

    if-nez v4, :cond_6a

    :cond_62
    if-eqz v17, :cond_6c

    invoke-static {v8}, Landroidx/vectordrawable/a/a/e;->a(I)Z

    move-result v4

    if-eqz v4, :cond_6c

    :cond_6a
    move v4, v14

    goto :goto_6d

    :cond_6c
    move v4, v9

    :cond_6d
    :goto_6d
    const-string v8, ""

    .line 360
    invoke-static {v1, v4, v15, v13, v8}, Landroidx/vectordrawable/a/a/e;->a(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    if-eqz v4, :cond_7c

    .line 364
    new-array v8, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v8, v9

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 367
    :cond_7c
    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 368
    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-string v4, "repeatCount"

    .line 370
    invoke-static {v1, v3, v4, v14, v9}, Landroidx/core/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const-string v4, "repeatMode"

    .line 372
    invoke-static {v1, v3, v4, v12, v5}, Landroidx/core/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    if-eqz v2, :cond_e2

    .line 2390
    check-cast v0, Landroid/animation/ObjectAnimator;

    const-string v1, "pathData"

    .line 2391
    invoke-static {v2, v3, v1, v5}, Landroidx/core/content/a/g;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d9

    const-string v4, "propertyXName"

    const/4 v5, 0x2

    .line 2403
    invoke-static {v2, v3, v4, v5}, Landroidx/core/content/a/g;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "propertyYName"

    .line 2405
    invoke-static {v2, v3, v5, v14}, Landroidx/core/content/a/g;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-nez v4, :cond_cd

    if-eqz v3, :cond_b2

    goto :goto_cd

    .line 2415
    :cond_b2
    new-instance v0, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " propertyXName or propertyYName is needed for PathData"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2418
    :cond_cd
    :goto_cd
    invoke-static {v1}, Landroidx/core/graphics/b;->a(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v2, v2, p3

    .line 2419
    invoke-static {v1, v0, v2, v4, v3}, Landroidx/vectordrawable/a/a/e;->a(Landroid/graphics/Path;Landroid/animation/ObjectAnimator;FLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d9
    const-string v1, "propertyName"

    .line 2423
    invoke-static {v2, v3, v1, v9}, Landroidx/core/content/a/g;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2425
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    :cond_e2
    return-void
.end method

.method private static a(Landroid/graphics/Path;Landroid/animation/ObjectAnimator;FLjava/lang/String;Ljava/lang/String;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 436
    new-instance v4, Landroid/graphics/PathMeasure;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 440
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 441
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v7

    .line 443
    :cond_1c
    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v9

    add-float/2addr v8, v9

    .line 445
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v9

    if-nez v9, :cond_1c

    .line 450
    new-instance v4, Landroid/graphics/PathMeasure;

    invoke-direct {v4, v0, v5}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/16 v0, 0x64

    div-float v9, v8, p2

    float-to-int v9, v9

    const/4 v10, 0x1

    add-int/2addr v9, v10

    .line 452
    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 454
    new-array v9, v0, [F

    .line 455
    new-array v11, v0, [F

    const/4 v12, 0x2

    .line 456
    new-array v13, v12, [F

    add-int/lit8 v14, v0, -0x1

    int-to-float v14, v14

    div-float/2addr v8, v14

    move v15, v5

    move v14, v7

    move v7, v15

    :goto_4c
    const/4 v12, 0x0

    if-ge v7, v0, :cond_86

    .line 466
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Float;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    sub-float v10, v14, v16

    invoke-virtual {v4, v10, v13, v12}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 469
    aget v10, v13, v5

    aput v10, v9, v7

    const/4 v10, 0x1

    .line 470
    aget v12, v13, v10

    aput v12, v11, v7

    add-float/2addr v14, v8

    add-int/lit8 v10, v15, 0x1

    .line 472
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v10, v12, :cond_82

    .line 473
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    cmpl-float v12, v14, v12

    if-lez v12, :cond_82

    .line 475
    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->nextContour()Z

    move v15, v10

    :cond_82
    add-int/lit8 v7, v7, 0x1

    const/4 v10, 0x1

    goto :goto_4c

    :cond_86
    if-eqz v2, :cond_8d

    .line 483
    invoke-static {v2, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    goto :goto_8e

    :cond_8d
    move-object v0, v12

    :goto_8e
    if-eqz v3, :cond_94

    .line 486
    invoke-static {v3, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    :cond_94
    if-nez v0, :cond_9f

    const/4 v2, 0x1

    .line 489
    new-array v0, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v12, v0, v5

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    return-void

    :cond_9f
    const/4 v2, 0x1

    if-nez v12, :cond_aa

    .line 491
    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    return-void

    :cond_aa
    const/4 v3, 0x2

    .line 493
    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v5

    aput-object v12, v3, v2

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    return-void
.end method

.method private static a([Landroid/animation/Keyframe;FII)V
    .registers 6

    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-float/2addr p1, v0

    :goto_6
    if-gt p2, p3, :cond_19

    .line 809
    aget-object v0, p0, p2

    add-int/lit8 v1, p2, -0x1

    aget-object v1, p0, v1

    invoke-virtual {v1}, Landroid/animation/Keyframe;->getFraction()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/animation/Keyframe;->setFraction(F)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_19
    return-void
.end method

.method private static a(I)Z
    .registers 2

    const/16 v0, 0x1c

    if-lt p0, v0, :cond_a

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;
    .registers 26

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v4, 0x0

    .line 579
    :goto_7
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-eq v5, v6, :cond_1e3

    const/4 v8, 0x1

    if-eq v5, v8, :cond_1e3

    const/4 v9, 0x2

    if-eq v5, v9, :cond_19

    .line 583
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_7

    .line 587
    :cond_19
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v10, "propertyValuesHolder"

    .line 589
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1da

    .line 590
    sget-object v5, Landroidx/vectordrawable/a/a/a;->i:[I

    move-object/from16 v10, p4

    invoke-static {v0, v1, v10, v5}, Landroidx/core/content/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    const-string v11, "propertyName"

    .line 593
    invoke-static {v5, v2, v11, v6}, Landroidx/core/content/a/g;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "valueType"

    const/4 v13, 0x4

    .line 595
    invoke-static {v5, v2, v12, v9, v13}, Landroidx/core/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v9

    move v14, v9

    const/4 v12, 0x0

    .line 2696
    :goto_3c
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    if-eq v15, v6, :cond_100

    if-eq v15, v8, :cond_100

    .line 2698
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v8, "keyframe"

    .line 2699
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_fa

    if-ne v14, v13, :cond_77

    .line 2701
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8

    .line 3636
    sget-object v14, Landroidx/vectordrawable/a/a/a;->j:[I

    invoke-static {v0, v1, v8, v14}, Landroidx/core/content/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    const-string v14, "value"

    .line 3639
    invoke-static {v8, v2, v14}, Landroidx/core/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v14

    if-eqz v14, :cond_66

    const/4 v15, 0x1

    goto :goto_67

    :cond_66
    move v15, v7

    :goto_67
    if-eqz v15, :cond_73

    .line 3644
    iget v14, v14, Landroid/util/TypedValue;->type:I

    invoke-static {v14}, Landroidx/vectordrawable/a/a/e;->a(I)Z

    move-result v14

    if-eqz v14, :cond_73

    move v14, v6

    goto :goto_74

    :cond_73
    move v14, v7

    .line 3649
    :goto_74
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 2704
    :cond_77
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8

    .line 3818
    sget-object v15, Landroidx/vectordrawable/a/a/a;->j:[I

    invoke-static {v0, v1, v8, v15}, Landroidx/core/content/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    const-string v15, "fraction"

    const/high16 v3, -0x40800000    # -1.0f

    .line 3823
    invoke-static {v8, v2, v15, v6, v3}, Landroidx/core/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v3

    const-string v15, "value"

    .line 3826
    invoke-static {v8, v2, v15}, Landroidx/core/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v15

    if-eqz v15, :cond_94

    const/16 v18, 0x1

    goto :goto_96

    :cond_94
    move/from16 v18, v7

    :goto_96
    if-ne v14, v13, :cond_a6

    if-eqz v18, :cond_a4

    .line 3832
    iget v15, v15, Landroid/util/TypedValue;->type:I

    invoke-static {v15}, Landroidx/vectordrawable/a/a/e;->a(I)Z

    move-result v15

    if-eqz v15, :cond_a4

    move v15, v6

    goto :goto_a7

    :cond_a4
    move v15, v7

    goto :goto_a7

    :cond_a6
    move v15, v14

    :goto_a7
    if-eqz v18, :cond_c7

    if-eq v15, v6, :cond_bc

    packed-switch v15, :pswitch_data_200

    const/4 v3, 0x0

    goto :goto_d2

    :pswitch_b0
    const-string v15, "value"

    const/4 v13, 0x0

    .line 3842
    invoke-static {v8, v2, v15, v7, v13}, Landroidx/core/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v13

    .line 3844
    invoke-static {v3, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    goto :goto_d2

    :cond_bc
    :pswitch_bc
    const-string v13, "value"

    .line 3848
    invoke-static {v8, v2, v13, v7, v7}, Landroidx/core/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v13

    .line 3850
    invoke-static {v3, v13}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v3

    goto :goto_d2

    :cond_c7
    if-nez v15, :cond_ce

    .line 3854
    invoke-static {v3}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v3

    goto :goto_d2

    .line 3855
    :cond_ce
    invoke-static {v3}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v3

    :goto_d2
    const-string v13, "interpolator"

    const/4 v15, 0x1

    .line 3858
    invoke-static {v8, v2, v13, v15}, Landroidx/core/content/a/g;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v13

    if-lez v13, :cond_e5

    move-object/from16 v15, p0

    .line 3861
    invoke-static {v15, v13}, Landroidx/vectordrawable/a/a/d;->a(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v13

    .line 3862
    invoke-virtual {v3, v13}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_e7

    :cond_e5
    move-object/from16 v15, p0

    .line 3864
    :goto_e7
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v3, :cond_f6

    if-nez v12, :cond_f3

    .line 2708
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2710
    :cond_f3
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2712
    :cond_f6
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_fc

    :cond_fa
    move-object/from16 v15, p0

    :goto_fc
    const/4 v8, 0x1

    const/4 v13, 0x4

    goto/16 :goto_3c

    :cond_100
    move-object/from16 v15, p0

    if-eqz v12, :cond_1c1

    .line 2717
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1c1

    .line 2723
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/Keyframe;

    add-int/lit8 v13, v3, -0x1

    .line 2724
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/animation/Keyframe;

    .line 2725
    invoke-virtual {v13}, Landroid/animation/Keyframe;->getFraction()F

    move-result v18

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v19, v18, v6

    if-gez v19, :cond_139

    const/16 v17, 0x0

    cmpg-float v18, v18, v17

    if-gez v18, :cond_12c

    .line 2728
    invoke-virtual {v13, v6}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_139

    .line 2730
    :cond_12c
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v13, v6}, Landroidx/vectordrawable/a/a/e;->a(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v13

    invoke-virtual {v12, v7, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    .line 2734
    :cond_139
    :goto_139
    invoke-virtual {v8}, Landroid/animation/Keyframe;->getFraction()F

    move-result v7

    const/4 v13, 0x0

    cmpl-float v17, v7, v13

    if-eqz v17, :cond_154

    cmpg-float v7, v7, v13

    if-gez v7, :cond_14a

    .line 2737
    invoke-virtual {v8, v13}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_154

    .line 2739
    :cond_14a
    invoke-static {v8, v13}, Landroidx/vectordrawable/a/a/e;->a(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v12, v8, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    .line 2743
    :cond_154
    :goto_154
    new-array v7, v3, [Landroid/animation/Keyframe;

    .line 2744
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v8, 0x0

    :goto_15a
    if-ge v8, v3, :cond_1b2

    .line 2746
    aget-object v12, v7, v8

    .line 2747
    invoke-virtual {v12}, Landroid/animation/Keyframe;->getFraction()F

    move-result v13

    const/4 v6, 0x0

    cmpg-float v13, v13, v6

    if-gez v13, :cond_1ab

    if-nez v8, :cond_16d

    .line 2749
    invoke-virtual {v12, v6}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_1ab

    :cond_16d
    add-int/lit8 v6, v3, -0x1

    if-ne v8, v6, :cond_179

    const/high16 v13, 0x3f800000    # 1.0f

    .line 2751
    invoke-virtual {v12, v13}, Landroid/animation/Keyframe;->setFraction(F)V

    const/16 v17, 0x0

    goto :goto_1ad

    :cond_179
    const/high16 v13, 0x3f800000    # 1.0f

    add-int/lit8 v12, v8, 0x1

    move v13, v8

    :goto_17e
    if-ge v12, v6, :cond_194

    .line 2758
    aget-object v18, v7, v12

    invoke-virtual/range {v18 .. v18}, Landroid/animation/Keyframe;->getFraction()F

    move-result v18

    const/16 v17, 0x0

    cmpl-float v18, v18, v17

    if-gez v18, :cond_196

    add-int/lit8 v13, v12, 0x1

    move/from16 v20, v13

    move v13, v12

    move/from16 v12, v20

    goto :goto_17e

    :cond_194
    const/16 v17, 0x0

    :cond_196
    add-int/lit8 v6, v13, 0x1

    .line 2763
    aget-object v6, v7, v6

    invoke-virtual {v6}, Landroid/animation/Keyframe;->getFraction()F

    move-result v6

    add-int/lit8 v12, v8, -0x1

    aget-object v12, v7, v12

    .line 2764
    invoke-virtual {v12}, Landroid/animation/Keyframe;->getFraction()F

    move-result v12

    sub-float/2addr v6, v12

    .line 2765
    invoke-static {v7, v6, v8, v13}, Landroidx/vectordrawable/a/a/e;->a([Landroid/animation/Keyframe;FII)V

    goto :goto_1ad

    :cond_1ab
    :goto_1ab
    move/from16 v17, v6

    :goto_1ad
    add-int/lit8 v8, v8, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_15a

    .line 2769
    :cond_1b2
    invoke-static {v11, v7}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const/4 v6, 0x3

    if-ne v14, v6, :cond_1c2

    .line 2771
    invoke-static {}, Landroidx/vectordrawable/a/a/f;->a()Landroidx/vectordrawable/a/a/f;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    goto :goto_1c2

    :cond_1c1
    const/4 v3, 0x0

    :cond_1c2
    :goto_1c2
    if-nez v3, :cond_1ca

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 602
    invoke-static {v5, v9, v8, v6, v11}, Landroidx/vectordrawable/a/a/e;->a(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    :cond_1ca
    if-eqz v3, :cond_1d6

    if-nez v4, :cond_1d3

    .line 609
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 611
    :cond_1d3
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    :cond_1d6
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1de

    :cond_1da
    move-object/from16 v15, p0

    move-object/from16 v10, p4

    .line 616
    :goto_1de
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto/16 :goto_7

    :cond_1e3
    move v8, v7

    if-eqz v4, :cond_1fc

    .line 621
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 622
    new-array v3, v0, [Landroid/animation/PropertyValuesHolder;

    :goto_1ec
    if-ge v8, v0, :cond_1f9

    .line 624
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/PropertyValuesHolder;

    aput-object v1, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1ec

    :cond_1f9
    move-object/from16 v16, v3

    goto :goto_1fe

    :cond_1fc
    const/16 v16, 0x0

    :goto_1fe
    return-object v16

    nop

    :pswitch_data_200
    .packed-switch 0x0
        :pswitch_b0
        :pswitch_bc
    .end packed-switch
.end method
