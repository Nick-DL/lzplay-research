.class public final Landroidx/vectordrawable/a/a/i;
.super Landroidx/vectordrawable/a/a/h;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/vectordrawable/a/a/i$b;,
        Landroidx/vectordrawable/a/a/i$a;,
        Landroidx/vectordrawable/a/a/i$e;,
        Landroidx/vectordrawable/a/a/i$c;,
        Landroidx/vectordrawable/a/a/i$d;,
        Landroidx/vectordrawable/a/a/i$f;,
        Landroidx/vectordrawable/a/a/i$g;,
        Landroidx/vectordrawable/a/a/i$h;
    }
.end annotation


# static fields
.field static final a:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field b:Landroidx/vectordrawable/a/a/i$g;

.field d:Z

.field private e:Landroid/graphics/PorterDuffColorFilter;

.field private f:Landroid/graphics/ColorFilter;

.field private g:Z

.field private h:Landroid/graphics/drawable/Drawable$ConstantState;

.field private final i:[F

.field private final j:Landroid/graphics/Matrix;

.field private final k:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 280
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroidx/vectordrawable/a/a/i;->a:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 321
    invoke-direct {p0}, Landroidx/vectordrawable/a/a/h;-><init>()V

    const/4 v0, 0x1

    .line 311
    iput-boolean v0, p0, Landroidx/vectordrawable/a/a/i;->d:Z

    const/16 v0, 0x9

    .line 317
    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i;->i:[F

    .line 318
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i;->j:Landroid/graphics/Matrix;

    .line 319
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i;->k:Landroid/graphics/Rect;

    .line 322
    new-instance v0, Landroidx/vectordrawable/a/a/i$g;

    invoke-direct {v0}, Landroidx/vectordrawable/a/a/i$g;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    return-void
.end method

.method constructor <init>(Landroidx/vectordrawable/a/a/i$g;)V
    .registers 3

    .line 325
    invoke-direct {p0}, Landroidx/vectordrawable/a/a/h;-><init>()V

    const/4 v0, 0x1

    .line 311
    iput-boolean v0, p0, Landroidx/vectordrawable/a/a/i;->d:Z

    const/16 v0, 0x9

    .line 317
    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i;->i:[F

    .line 318
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i;->j:Landroid/graphics/Matrix;

    .line 319
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i;->k:Landroid/graphics/Rect;

    .line 326
    iput-object p1, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    .line 327
    iget-object v0, p1, Landroidx/vectordrawable/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    iget-object p1, p1, Landroidx/vectordrawable/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, p1}, Landroidx/vectordrawable/a/a/i;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Landroidx/vectordrawable/a/a/i;->e:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method static a(IF)I
    .registers 4

    .line 687
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr p0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method private a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .registers 4

    if-eqz p1, :cond_14

    if-nez p2, :cond_5

    goto :goto_14

    .line 482
    :cond_5
    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/i;->getState()[I

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    .line 483
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p1, p0, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/vectordrawable/a/a/i;
    .registers 7

    .line 645
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2a

    .line 646
    new-instance v0, Landroidx/vectordrawable/a/a/i;

    invoke-direct {v0}, Landroidx/vectordrawable/a/a/i;-><init>()V

    .line 6082
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_16

    .line 6083
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_1a

    .line 6085
    :cond_16
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 647
    :goto_1a
    iput-object p0, v0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    .line 648
    new-instance p0, Landroidx/vectordrawable/a/a/i$h;

    iget-object p1, v0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    .line 649
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/vectordrawable/a/a/i$h;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    iput-object p0, v0, Landroidx/vectordrawable/a/a/i;->h:Landroid/graphics/drawable/Drawable$ConstantState;

    return-object v0

    .line 654
    :cond_2a
    :try_start_2a
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 655
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 657
    :cond_32
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3c

    const/4 v3, 0x1

    if-ne v1, v3, :cond_32

    :cond_3c
    if-ne v1, v2, :cond_43

    .line 664
    invoke-static {p0, p1, v0, p2}, Landroidx/vectordrawable/a/a/i;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/vectordrawable/a/a/i;

    move-result-object p0

    return-object p0

    .line 662
    :cond_43
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2a .. :try_end_4b} :catch_54
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_4b} :catch_4b

    :catch_4b
    move-exception p0

    const-string p1, "VectorDrawableCompat"

    const-string p2, "parser error"

    .line 668
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5c

    :catch_54
    move-exception p0

    const-string p1, "VectorDrawableCompat"

    const-string p2, "parser error"

    .line 666
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/vectordrawable/a/a/i;
    .registers 5

    .line 681
    new-instance v0, Landroidx/vectordrawable/a/a/i;

    invoke-direct {v0}, Landroidx/vectordrawable/a/a/i;-><init>()V

    .line 682
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/vectordrawable/a/a/i;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method

.method private b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p0

    move-object/from16 v4, p4

    .line 816
    iget-object v3, v3, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    .line 817
    iget-object v5, v3, Landroidx/vectordrawable/a/a/i$g;->b:Landroidx/vectordrawable/a/a/i$f;

    .line 822
    new-instance v6, Ljava/util/ArrayDeque;

    invoke-direct {v6}, Ljava/util/ArrayDeque;-><init>()V

    .line 823
    iget-object v7, v5, Landroidx/vectordrawable/a/a/i$f;->c:Landroidx/vectordrawable/a/a/i$c;

    invoke-virtual {v6, v7}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 825
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .line 826
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    move v10, v9

    :goto_23
    if-eq v7, v9, :cond_154

    .line 830
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    const/4 v12, 0x3

    if-ge v11, v8, :cond_2e

    if-eq v7, v12, :cond_154

    :cond_2e
    const/4 v13, 0x2

    if-ne v7, v13, :cond_13c

    .line 832
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 833
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/vectordrawable/a/a/i$c;

    const-string v15, "path"

    .line 834
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_72

    .line 835
    new-instance v7, Landroidx/vectordrawable/a/a/i$b;

    invoke-direct {v7}, Landroidx/vectordrawable/a/a/i$b;-><init>()V

    .line 9890
    sget-object v10, Landroidx/vectordrawable/a/a/a;->c:[I

    invoke-static {v0, v4, v2, v10}, Landroidx/core/content/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 9892
    invoke-virtual {v7, v10, v1, v4}, Landroidx/vectordrawable/a/a/i$b;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)V

    .line 9893
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 837
    iget-object v10, v14, Landroidx/vectordrawable/a/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    invoke-virtual {v7}, Landroidx/vectordrawable/a/a/i$b;->getPathName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_68

    .line 839
    iget-object v10, v5, Landroidx/vectordrawable/a/a/i$f;->k:Landroidx/b/a;

    invoke-virtual {v7}, Landroidx/vectordrawable/a/a/i$b;->getPathName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12, v7}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    :cond_68
    iget v10, v3, Landroidx/vectordrawable/a/a/i$g;->a:I

    iget v7, v7, Landroidx/vectordrawable/a/a/i$b;->o:I

    or-int/2addr v7, v10

    iput v7, v3, Landroidx/vectordrawable/a/a/i$g;->a:I

    const/4 v10, 0x0

    goto/16 :goto_14e

    :cond_72
    const-string v15, "clip-path"

    .line 843
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b0

    .line 844
    new-instance v7, Landroidx/vectordrawable/a/a/i$a;

    invoke-direct {v7}, Landroidx/vectordrawable/a/a/i$a;-><init>()V

    const-string v11, "pathData"

    .line 10778
    invoke-static {v1, v11}, Landroidx/core/content/a/g;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_93

    .line 10782
    sget-object v11, Landroidx/vectordrawable/a/a/a;->d:[I

    invoke-static {v0, v4, v2, v11}, Landroidx/core/content/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 10784
    invoke-virtual {v7, v11, v1}, Landroidx/vectordrawable/a/a/i$a;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 10785
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 846
    :cond_93
    iget-object v11, v14, Landroidx/vectordrawable/a/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    invoke-virtual {v7}, Landroidx/vectordrawable/a/a/i$a;->getPathName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_a7

    .line 848
    iget-object v11, v5, Landroidx/vectordrawable/a/a/i$f;->k:Landroidx/b/a;

    invoke-virtual {v7}, Landroidx/vectordrawable/a/a/i$a;->getPathName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v7}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    :cond_a7
    iget v11, v3, Landroidx/vectordrawable/a/a/i$g;->a:I

    iget v7, v7, Landroidx/vectordrawable/a/a/i$a;->o:I

    or-int/2addr v7, v11

    iput v7, v3, Landroidx/vectordrawable/a/a/i$g;->a:I

    goto/16 :goto_14e

    :cond_b0
    const-string v15, "group"

    .line 851
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14e

    .line 852
    new-instance v7, Landroidx/vectordrawable/a/a/i$c;

    invoke-direct {v7}, Landroidx/vectordrawable/a/a/i$c;-><init>()V

    .line 11518
    sget-object v15, Landroidx/vectordrawable/a/a/a;->b:[I

    invoke-static {v0, v4, v2, v15}, Landroidx/core/content/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v15

    const/4 v11, 0x0

    .line 11529
    iput-object v11, v7, Landroidx/vectordrawable/a/a/i$c;->l:[I

    const-string v11, "rotation"

    const/4 v12, 0x5

    .line 11532
    iget v13, v7, Landroidx/vectordrawable/a/a/i$c;->c:F

    invoke-static {v15, v1, v11, v12, v13}, Landroidx/core/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v11

    iput v11, v7, Landroidx/vectordrawable/a/a/i$c;->c:F

    .line 11535
    iget v11, v7, Landroidx/vectordrawable/a/a/i$c;->d:F

    invoke-virtual {v15, v9, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    iput v11, v7, Landroidx/vectordrawable/a/a/i$c;->d:F

    .line 11536
    iget v11, v7, Landroidx/vectordrawable/a/a/i$c;->e:F

    const/4 v12, 0x2

    invoke-virtual {v15, v12, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    iput v11, v7, Landroidx/vectordrawable/a/a/i$c;->e:F

    const-string v11, "scaleX"

    .line 11539
    iget v12, v7, Landroidx/vectordrawable/a/a/i$c;->f:F

    const/4 v13, 0x3

    invoke-static {v15, v1, v11, v13, v12}, Landroidx/core/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v11

    iput v11, v7, Landroidx/vectordrawable/a/a/i$c;->f:F

    const-string v11, "scaleY"

    const/4 v12, 0x4

    .line 11543
    iget v13, v7, Landroidx/vectordrawable/a/a/i$c;->g:F

    invoke-static {v15, v1, v11, v12, v13}, Landroidx/core/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v11

    iput v11, v7, Landroidx/vectordrawable/a/a/i$c;->g:F

    const-string v11, "translateX"

    const/4 v12, 0x6

    .line 11546
    iget v13, v7, Landroidx/vectordrawable/a/a/i$c;->h:F

    invoke-static {v15, v1, v11, v12, v13}, Landroidx/core/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v11

    iput v11, v7, Landroidx/vectordrawable/a/a/i$c;->h:F

    const-string v11, "translateY"

    const/4 v12, 0x7

    .line 11548
    iget v13, v7, Landroidx/vectordrawable/a/a/i$c;->i:F

    invoke-static {v15, v1, v11, v12, v13}, Landroidx/core/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v11

    iput v11, v7, Landroidx/vectordrawable/a/a/i$c;->i:F

    const/4 v11, 0x0

    .line 11552
    invoke-virtual {v15, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_117

    .line 11554
    iput-object v11, v7, Landroidx/vectordrawable/a/a/i$c;->m:Ljava/lang/String;

    .line 11557
    :cond_117
    invoke-virtual {v7}, Landroidx/vectordrawable/a/a/i$c;->a()V

    .line 11521
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 854
    iget-object v11, v14, Landroidx/vectordrawable/a/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    invoke-virtual {v6, v7}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 856
    invoke-virtual {v7}, Landroidx/vectordrawable/a/a/i$c;->getGroupName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_134

    .line 857
    iget-object v11, v5, Landroidx/vectordrawable/a/a/i$f;->k:Landroidx/b/a;

    invoke-virtual {v7}, Landroidx/vectordrawable/a/a/i$c;->getGroupName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v7}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    :cond_134
    iget v11, v3, Landroidx/vectordrawable/a/a/i$g;->a:I

    iget v7, v7, Landroidx/vectordrawable/a/a/i$c;->k:I

    or-int/2addr v7, v11

    iput v7, v3, Landroidx/vectordrawable/a/a/i$g;->a:I

    goto :goto_14e

    :cond_13c
    move v11, v12

    if-ne v7, v11, :cond_14e

    .line 863
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v11, "group"

    .line 864
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14e

    .line 865
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 868
    :cond_14e
    :goto_14e
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    goto/16 :goto_23

    :cond_154
    if-nez v10, :cond_157

    return-void

    .line 877
    :cond_157
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "no path defined"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final bridge synthetic applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 2

    .line 277
    invoke-super {p0, p1}, Landroidx/vectordrawable/a/a/h;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public final canApplyTheme()Z
    .registers 2

    .line 587
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 588
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->c(Landroid/graphics/drawable/Drawable;)Z

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic clearColorFilter()V
    .registers 1

    .line 277
    invoke-super {p0}, Landroidx/vectordrawable/a/a/h;->clearColorFilter()V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .registers 12

    .line 360
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 361
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 366
    :cond_a
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroidx/vectordrawable/a/a/i;->copyBounds(Landroid/graphics/Rect;)V

    .line 367
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_17a

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_21

    goto/16 :goto_17a

    .line 373
    :cond_21
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->f:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_28

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->e:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_2a

    :cond_28
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->f:Landroid/graphics/ColorFilter;

    .line 379
    :goto_2a
    iget-object v1, p0, Landroidx/vectordrawable/a/a/i;->j:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 380
    iget-object v1, p0, Landroidx/vectordrawable/a/a/i;->j:Landroid/graphics/Matrix;

    iget-object v2, p0, Landroidx/vectordrawable/a/a/i;->i:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 381
    iget-object v1, p0, Landroidx/vectordrawable/a/a/i;->i:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 382
    iget-object v3, p0, Landroidx/vectordrawable/a/a/i;->i:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 384
    iget-object v4, p0, Landroidx/vectordrawable/a/a/i;->i:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 385
    iget-object v6, p0, Landroidx/vectordrawable/a/a/i;->i:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    const/high16 v8, 0x3f800000    # 1.0f

    if-nez v4, :cond_65

    cmpl-float v4, v6, v7

    if-eqz v4, :cond_67

    :cond_65
    move v1, v8

    move v3, v1

    .line 393
    :cond_67
    iget-object v4, p0, Landroidx/vectordrawable/a/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v1, v4

    .line 394
    iget-object v4, p0, Landroidx/vectordrawable/a/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    const/16 v4, 0x800

    .line 395
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 396
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lez v1, :cond_179

    if-gtz v3, :cond_89

    goto/16 :goto_179

    .line 402
    :cond_89
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 403
    iget-object v6, p0, Landroidx/vectordrawable/a/a/i;->k:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v9, p0, Landroidx/vectordrawable/a/a/i;->k:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1907
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x11

    if-lt v6, v9, :cond_ae

    .line 1908
    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/i;->isAutoMirrored()Z

    move-result v6

    if-eqz v6, :cond_ae

    .line 1909
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;)I

    move-result v6

    if-ne v6, v5, :cond_ae

    move v6, v5

    goto :goto_af

    :cond_ae
    move v6, v2

    :goto_af
    if-eqz v6, :cond_c0

    .line 408
    iget-object v6, p0, Landroidx/vectordrawable/a/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v6, -0x40800000    # -1.0f

    .line 409
    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 415
    :cond_c0
    iget-object v6, p0, Landroidx/vectordrawable/a/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 417
    iget-object v6, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    .line 2084
    iget-object v7, v6, Landroidx/vectordrawable/a/a/i$g;->f:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_e0

    .line 2093
    iget-object v7, v6, Landroidx/vectordrawable/a/a/i$g;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ne v1, v7, :cond_dd

    iget-object v7, v6, Landroidx/vectordrawable/a/a/i$g;->f:Landroid/graphics/Bitmap;

    .line 2094
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ne v3, v7, :cond_dd

    move v7, v5

    goto :goto_de

    :cond_dd
    move v7, v2

    :goto_de
    if-nez v7, :cond_ea

    .line 2085
    :cond_e0
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v6, Landroidx/vectordrawable/a/a/i$g;->f:Landroid/graphics/Bitmap;

    .line 2087
    iput-boolean v5, v6, Landroidx/vectordrawable/a/a/i$g;->k:Z

    .line 418
    :cond_ea
    iget-boolean v6, p0, Landroidx/vectordrawable/a/a/i;->d:Z

    if-nez v6, :cond_f4

    .line 419
    iget-object v6, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    invoke-virtual {v6, v1, v3}, Landroidx/vectordrawable/a/a/i$g;->a(II)V

    goto :goto_138

    .line 421
    :cond_f4
    iget-object v6, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    .line 2101
    iget-boolean v7, v6, Landroidx/vectordrawable/a/a/i$g;->k:Z

    if-nez v7, :cond_118

    iget-object v7, v6, Landroidx/vectordrawable/a/a/i$g;->g:Landroid/content/res/ColorStateList;

    iget-object v8, v6, Landroidx/vectordrawable/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    if-ne v7, v8, :cond_118

    iget-object v7, v6, Landroidx/vectordrawable/a/a/i$g;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v8, v6, Landroidx/vectordrawable/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    if-ne v7, v8, :cond_118

    iget-boolean v7, v6, Landroidx/vectordrawable/a/a/i$g;->j:Z

    iget-boolean v8, v6, Landroidx/vectordrawable/a/a/i$g;->e:Z

    if-ne v7, v8, :cond_118

    iget v7, v6, Landroidx/vectordrawable/a/a/i$g;->i:I

    iget-object v6, v6, Landroidx/vectordrawable/a/a/i$g;->b:Landroidx/vectordrawable/a/a/i$f;

    .line 2105
    invoke-virtual {v6}, Landroidx/vectordrawable/a/a/i$f;->getRootAlpha()I

    move-result v6

    if-ne v7, v6, :cond_118

    move v6, v5

    goto :goto_119

    :cond_118
    move v6, v2

    :goto_119
    if-nez v6, :cond_138

    .line 422
    iget-object v6, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    invoke-virtual {v6, v1, v3}, Landroidx/vectordrawable/a/a/i$g;->a(II)V

    .line 423
    iget-object v1, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    .line 2114
    iget-object v3, v1, Landroidx/vectordrawable/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    iput-object v3, v1, Landroidx/vectordrawable/a/a/i$g;->g:Landroid/content/res/ColorStateList;

    .line 2115
    iget-object v3, v1, Landroidx/vectordrawable/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v3, v1, Landroidx/vectordrawable/a/a/i$g;->h:Landroid/graphics/PorterDuff$Mode;

    .line 2116
    iget-object v3, v1, Landroidx/vectordrawable/a/a/i$g;->b:Landroidx/vectordrawable/a/a/i$f;

    invoke-virtual {v3}, Landroidx/vectordrawable/a/a/i$f;->getRootAlpha()I

    move-result v3

    iput v3, v1, Landroidx/vectordrawable/a/a/i$g;->i:I

    .line 2117
    iget-boolean v3, v1, Landroidx/vectordrawable/a/a/i$g;->e:Z

    iput-boolean v3, v1, Landroidx/vectordrawable/a/a/i$g;->j:Z

    .line 2118
    iput-boolean v2, v1, Landroidx/vectordrawable/a/a/i$g;->k:Z

    .line 426
    :cond_138
    :goto_138
    iget-object v1, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    iget-object p0, p0, Landroidx/vectordrawable/a/a/i;->k:Landroid/graphics/Rect;

    .line 4057
    iget-object v3, v1, Landroidx/vectordrawable/a/a/i$g;->b:Landroidx/vectordrawable/a/a/i$f;

    invoke-virtual {v3}, Landroidx/vectordrawable/a/a/i$f;->getRootAlpha()I

    move-result v3

    const/16 v6, 0xff

    if-ge v3, v6, :cond_147

    move v2, v5

    :cond_147
    const/4 v3, 0x0

    if-nez v2, :cond_14e

    if-nez v0, :cond_14e

    move-object v0, v3

    goto :goto_170

    .line 3068
    :cond_14e
    iget-object v2, v1, Landroidx/vectordrawable/a/a/i$g;->l:Landroid/graphics/Paint;

    if-nez v2, :cond_15e

    .line 3069
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v1, Landroidx/vectordrawable/a/a/i$g;->l:Landroid/graphics/Paint;

    .line 3070
    iget-object v2, v1, Landroidx/vectordrawable/a/a/i$g;->l:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 3072
    :cond_15e
    iget-object v2, v1, Landroidx/vectordrawable/a/a/i$g;->l:Landroid/graphics/Paint;

    iget-object v5, v1, Landroidx/vectordrawable/a/a/i$g;->b:Landroidx/vectordrawable/a/a/i$f;

    invoke-virtual {v5}, Landroidx/vectordrawable/a/a/i$f;->getRootAlpha()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3073
    iget-object v2, v1, Landroidx/vectordrawable/a/a/i$g;->l:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 3074
    iget-object v0, v1, Landroidx/vectordrawable/a/a/i$g;->l:Landroid/graphics/Paint;

    .line 3053
    :goto_170
    iget-object v1, v1, Landroidx/vectordrawable/a/a/i$g;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v3, p0, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 427
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_179
    :goto_179
    return-void

    :cond_17a
    :goto_17a
    return-void
.end method

.method public final getAlpha()I
    .registers 2

    .line 432
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 433
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    return p0

    .line 436
    :cond_b
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    iget-object p0, p0, Landroidx/vectordrawable/a/a/i$g;->b:Landroidx/vectordrawable/a/a/i$f;

    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/i$f;->getRootAlpha()I

    move-result p0

    return p0
.end method

.method public final getChangingConfigurations()I
    .registers 2

    .line 925
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 926
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p0

    return p0

    .line 928
    :cond_b
    invoke-super {p0}, Landroidx/vectordrawable/a/a/h;->getChangingConfigurations()I

    move-result v0

    iget-object p0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/i$g;->getChangingConfigurations()I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .line 465
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 466
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0

    .line 468
    :cond_b
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i;->f:Landroid/graphics/ColorFilter;

    return-object p0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    .line 350
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_16

    .line 352
    new-instance v0, Landroidx/vectordrawable/a/a/i$h;

    iget-object p0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/vectordrawable/a/a/i$h;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0

    .line 354
    :cond_16
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/i;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroidx/vectordrawable/a/a/i$g;->a:I

    .line 355
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    return-object p0
.end method

.method public final bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 277
    invoke-super {p0}, Landroidx/vectordrawable/a/a/h;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final getIntrinsicHeight()I
    .registers 2

    .line 577
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 578
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    return p0

    .line 581
    :cond_b
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    iget-object p0, p0, Landroidx/vectordrawable/a/a/i$g;->b:Landroidx/vectordrawable/a/a/i$f;

    iget p0, p0, Landroidx/vectordrawable/a/a/i$f;->e:F

    float-to-int p0, p0

    return p0
.end method

.method public final getIntrinsicWidth()I
    .registers 2

    .line 568
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 569
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    return p0

    .line 572
    :cond_b
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    iget-object p0, p0, Landroidx/vectordrawable/a/a/i$g;->b:Landroidx/vectordrawable/a/a/i$f;

    iget p0, p0, Landroidx/vectordrawable/a/a/i$f;->d:F

    float-to-int p0, p0

    return p0
.end method

.method public final bridge synthetic getMinimumHeight()I
    .registers 1

    .line 277
    invoke-super {p0}, Landroidx/vectordrawable/a/a/h;->getMinimumHeight()I

    move-result p0

    return p0
.end method

.method public final bridge synthetic getMinimumWidth()I
    .registers 1

    .line 277
    invoke-super {p0}, Landroidx/vectordrawable/a/a/h;->getMinimumWidth()I

    move-result p0

    return p0
.end method

.method public final getOpacity()I
    .registers 2

    .line 559
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 560
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

    return p0

    :cond_b
    const/4 p0, -0x3

    return p0
.end method

.method public final bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .registers 2

    .line 277
    invoke-super {p0, p1}, Landroidx/vectordrawable/a/a/h;->getPadding(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic getState()[I
    .registers 1

    .line 277
    invoke-super {p0}, Landroidx/vectordrawable/a/a/h;->getState()[I

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic getTransparentRegion()Landroid/graphics/Region;
    .registers 1

    .line 277
    invoke-super {p0}, Landroidx/vectordrawable/a/a/h;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object p0

    return-object p0
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .registers 5

    .line 696
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 697
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    return-void

    :cond_a
    const/4 v0, 0x0

    .line 701
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/vectordrawable/a/a/i;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 707
    iget-object v5, v0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_14

    .line 708
    iget-object v0, v0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    .line 712
    :cond_14
    iget-object v5, v0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    .line 713
    new-instance v6, Landroidx/vectordrawable/a/a/i$f;

    invoke-direct {v6}, Landroidx/vectordrawable/a/a/i$f;-><init>()V

    .line 714
    iput-object v6, v5, Landroidx/vectordrawable/a/a/i$g;->b:Landroidx/vectordrawable/a/a/i$f;

    .line 716
    sget-object v6, Landroidx/vectordrawable/a/a/a;->a:[I

    invoke-static {v1, v4, v3, v6}, Landroidx/core/content/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 6754
    iget-object v7, v0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    .line 6755
    iget-object v8, v7, Landroidx/vectordrawable/a/a/i$g;->b:Landroidx/vectordrawable/a/a/i$f;

    const-string v9, "tintMode"

    const/4 v10, 0x6

    const/4 v11, -0x1

    .line 6760
    invoke-static {v6, v2, v9, v10, v11}, Landroidx/core/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v9

    .line 6762
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v11, 0x5

    const/4 v12, 0x3

    if-eq v9, v12, :cond_4e

    if-eq v9, v11, :cond_4b

    const/16 v13, 0x9

    if-eq v9, v13, :cond_48

    packed-switch v9, :pswitch_data_190

    goto :goto_50

    .line 7746
    :pswitch_3f
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    goto :goto_50

    .line 7744
    :pswitch_42
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_50

    .line 7742
    :pswitch_45
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_50

    .line 7740
    :cond_48
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_50

    .line 7738
    :cond_4b
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_50

    .line 7736
    :cond_4e
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 6762
    :goto_50
    iput-object v10, v7, Landroidx/vectordrawable/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    const-string v9, "tint"

    .line 8168
    invoke-static {v2, v9}, Landroidx/core/content/a/g;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eqz v9, :cond_99

    .line 8169
    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 8170
    invoke-virtual {v6, v14, v9}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 8171
    iget v15, v9, Landroid/util/TypedValue;->type:I

    if-eq v15, v13, :cond_89

    .line 8174
    iget v15, v9, Landroid/util/TypedValue;->type:I

    const/16 v13, 0x1c

    if-lt v15, v13, :cond_7c

    iget v13, v9, Landroid/util/TypedValue;->type:I

    const/16 v15, 0x1f

    if-gt v13, v15, :cond_7c

    .line 8190
    iget v9, v9, Landroid/util/TypedValue;->data:I

    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    goto :goto_9a

    .line 8179
    :cond_7c
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 8180
    invoke-virtual {v6, v14, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 8179
    invoke-static {v9, v13, v4}, Landroidx/core/content/a/a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v9

    goto :goto_9a

    .line 8172
    :cond_89
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to resolve attribute at index 1: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_99
    const/4 v9, 0x0

    :goto_9a
    if-eqz v9, :cond_9e

    .line 6768
    iput-object v9, v7, Landroidx/vectordrawable/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    :cond_9e
    const-string v9, "autoMirrored"

    .line 6771
    iget-boolean v13, v7, Landroidx/vectordrawable/a/a/i$g;->e:Z

    .line 9087
    invoke-static {v2, v9}, Landroidx/core/content/a/g;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a9

    goto :goto_ad

    .line 9091
    :cond_a9
    invoke-virtual {v6, v11, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 6771
    :goto_ad
    iput-boolean v13, v7, Landroidx/vectordrawable/a/a/i$g;->e:Z

    const-string v7, "viewportWidth"

    const/4 v9, 0x7

    .line 6774
    iget v11, v8, Landroidx/vectordrawable/a/a/i$f;->f:F

    invoke-static {v6, v2, v7, v9, v11}, Landroidx/core/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    iput v7, v8, Landroidx/vectordrawable/a/a/i$f;->f:F

    const-string v7, "viewportHeight"

    const/16 v9, 0x8

    .line 6778
    iget v11, v8, Landroidx/vectordrawable/a/a/i$f;->g:F

    invoke-static {v6, v2, v7, v9, v11}, Landroidx/core/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    iput v7, v8, Landroidx/vectordrawable/a/a/i$f;->g:F

    .line 6782
    iget v7, v8, Landroidx/vectordrawable/a/a/i$f;->f:F

    const/4 v9, 0x0

    cmpg-float v7, v7, v9

    if-lez v7, :cond_175

    .line 6785
    iget v7, v8, Landroidx/vectordrawable/a/a/i$f;->g:F

    cmpg-float v7, v7, v9

    if-lez v7, :cond_15a

    .line 6790
    iget v7, v8, Landroidx/vectordrawable/a/a/i$f;->d:F

    invoke-virtual {v6, v12, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, v8, Landroidx/vectordrawable/a/a/i$f;->d:F

    .line 6792
    iget v7, v8, Landroidx/vectordrawable/a/a/i$f;->e:F

    const/4 v11, 0x2

    invoke-virtual {v6, v11, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, v8, Landroidx/vectordrawable/a/a/i$f;->e:F

    .line 6794
    iget v7, v8, Landroidx/vectordrawable/a/a/i$f;->d:F

    cmpg-float v7, v7, v9

    if-lez v7, :cond_13f

    .line 6797
    iget v7, v8, Landroidx/vectordrawable/a/a/i$f;->e:F

    cmpg-float v7, v7, v9

    if-lez v7, :cond_124

    const-string v7, "alpha"

    const/4 v9, 0x4

    .line 6804
    invoke-virtual {v8}, Landroidx/vectordrawable/a/a/i$f;->getAlpha()F

    move-result v11

    .line 6803
    invoke-static {v6, v2, v7, v9, v11}, Landroidx/core/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    .line 6805
    invoke-virtual {v8, v7}, Landroidx/vectordrawable/a/a/i$f;->setAlpha(F)V

    .line 6807
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10b

    .line 6809
    iput-object v7, v8, Landroidx/vectordrawable/a/a/i$f;->i:Ljava/lang/String;

    .line 6810
    iget-object v9, v8, Landroidx/vectordrawable/a/a/i$f;->k:Landroidx/b/a;

    invoke-virtual {v9, v7, v8}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    :cond_10b
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 721
    invoke-virtual/range {p0 .. p0}, Landroidx/vectordrawable/a/a/i;->getChangingConfigurations()I

    move-result v6

    iput v6, v5, Landroidx/vectordrawable/a/a/i$g;->a:I

    .line 722
    iput-boolean v14, v5, Landroidx/vectordrawable/a/a/i$g;->k:Z

    .line 723
    invoke-direct/range {p0 .. p4}, Landroidx/vectordrawable/a/a/i;->b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 725
    iget-object v1, v5, Landroidx/vectordrawable/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    iget-object v2, v5, Landroidx/vectordrawable/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroidx/vectordrawable/a/a/i;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, v0, Landroidx/vectordrawable/a/a/i;->e:Landroid/graphics/PorterDuffColorFilter;

    return-void

    .line 6798
    :cond_124
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<vector> tag requires height > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6795
    :cond_13f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<vector> tag requires width > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6786
    :cond_15a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6783
    :cond_175
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_190
    .packed-switch 0xe
        :pswitch_45
        :pswitch_42
        :pswitch_3f
    .end packed-switch
.end method

.method public final invalidateSelf()V
    .registers 2

    .line 933
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 934
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    .line 937
    :cond_a
    invoke-super {p0}, Landroidx/vectordrawable/a/a/h;->invalidateSelf()V

    return-void
.end method

.method public final isAutoMirrored()Z
    .registers 2

    .line 596
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 597
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    return p0

    .line 599
    :cond_b
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    iget-boolean p0, p0, Landroidx/vectordrawable/a/a/i$g;->e:Z

    return p0
.end method

.method public final isStateful()Z
    .registers 2

    .line 528
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 529
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    return p0

    .line 532
    :cond_b
    invoke-super {p0}, Landroidx/vectordrawable/a/a/h;->isStateful()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    .line 4143
    iget-object v0, v0, Landroidx/vectordrawable/a/a/i$g;->b:Landroidx/vectordrawable/a/a/i$f;

    invoke-virtual {v0}, Landroidx/vectordrawable/a/a/i$f;->a()Z

    move-result v0

    if-nez v0, :cond_32

    .line 533
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    iget-object v0, v0, Landroidx/vectordrawable/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_30

    iget-object p0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    iget-object p0, p0, Landroidx/vectordrawable/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    .line 534
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_30

    goto :goto_32

    :cond_30
    const/4 p0, 0x0

    return p0

    :cond_32
    :goto_32
    const/4 p0, 0x1

    return p0
.end method

.method public final bridge synthetic jumpToCurrentState()V
    .registers 1

    .line 277
    invoke-super {p0}, Landroidx/vectordrawable/a/a/h;->jumpToCurrentState()V

    return-void
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 332
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 333
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 337
    :cond_a
    iget-boolean v0, p0, Landroidx/vectordrawable/a/a/i;->g:Z

    if-nez v0, :cond_20

    invoke-super {p0}, Landroidx/vectordrawable/a/a/h;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_20

    .line 338
    new-instance v0, Landroidx/vectordrawable/a/a/i$g;

    iget-object v1, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    invoke-direct {v0, v1}, Landroidx/vectordrawable/a/a/i$g;-><init>(Landroidx/vectordrawable/a/a/i$g;)V

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    const/4 v0, 0x1

    .line 339
    iput-boolean v0, p0, Landroidx/vectordrawable/a/a/i;->g:Z

    :cond_20
    return-object p0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    .line 918
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 919
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_9
    return-void
.end method

.method protected final onStateChange([I)Z
    .registers 6

    .line 539
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 540
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p0

    return p0

    :cond_b
    const/4 v0, 0x0

    .line 544
    iget-object v1, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    .line 545
    iget-object v2, v1, Landroidx/vectordrawable/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    const/4 v3, 0x1

    if-eqz v2, :cond_25

    iget-object v2, v1, Landroidx/vectordrawable/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz v2, :cond_25

    .line 546
    iget-object v0, v1, Landroidx/vectordrawable/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    iget-object v2, v1, Landroidx/vectordrawable/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v2}, Landroidx/vectordrawable/a/a/i;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i;->e:Landroid/graphics/PorterDuffColorFilter;

    .line 547
    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/i;->invalidateSelf()V

    move v0, v3

    .line 5143
    :cond_25
    iget-object v2, v1, Landroidx/vectordrawable/a/a/i$g;->b:Landroidx/vectordrawable/a/a/i$f;

    invoke-virtual {v2}, Landroidx/vectordrawable/a/a/i$f;->a()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 5147
    iget-object v2, v1, Landroidx/vectordrawable/a/a/i$g;->b:Landroidx/vectordrawable/a/a/i$f;

    .line 5419
    iget-object v2, v2, Landroidx/vectordrawable/a/a/i$f;->c:Landroidx/vectordrawable/a/a/i$c;

    invoke-virtual {v2, p1}, Landroidx/vectordrawable/a/a/i$c;->a([I)Z

    move-result p1

    .line 5148
    iget-boolean v2, v1, Landroidx/vectordrawable/a/a/i$g;->k:Z

    or-int/2addr v2, p1

    iput-boolean v2, v1, Landroidx/vectordrawable/a/a/i$g;->k:Z

    if-eqz p1, :cond_40

    .line 551
    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/i;->invalidateSelf()V

    move v0, v3

    :cond_40
    return v0
.end method

.method public final scheduleSelf(Ljava/lang/Runnable;J)V
    .registers 5

    .line 942
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 943
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void

    .line 946
    :cond_a
    invoke-super {p0, p1, p2, p3}, Landroidx/vectordrawable/a/a/h;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final setAlpha(I)V
    .registers 3

    .line 441
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 442
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    .line 446
    :cond_a
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    iget-object v0, v0, Landroidx/vectordrawable/a/a/i$g;->b:Landroidx/vectordrawable/a/a/i$f;

    invoke-virtual {v0}, Landroidx/vectordrawable/a/a/i$f;->getRootAlpha()I

    move-result v0

    if-eq v0, p1, :cond_1e

    .line 447
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    iget-object v0, v0, Landroidx/vectordrawable/a/a/i$g;->b:Landroidx/vectordrawable/a/a/i$f;

    invoke-virtual {v0, p1}, Landroidx/vectordrawable/a/a/i$f;->setRootAlpha(I)V

    .line 448
    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/i;->invalidateSelf()V

    :cond_1e
    return-void
.end method

.method public final setAutoMirrored(Z)V
    .registers 3

    .line 604
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 605
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Z)V

    return-void

    .line 608
    :cond_a
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    iput-boolean p1, p0, Landroidx/vectordrawable/a/a/i$g;->e:Z

    return-void
.end method

.method public final bridge synthetic setChangingConfigurations(I)V
    .registers 2

    .line 277
    invoke-super {p0, p1}, Landroidx/vectordrawable/a/a/h;->setChangingConfigurations(I)V

    return-void
.end method

.method public final bridge synthetic setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 277
    invoke-super {p0, p1, p2}, Landroidx/vectordrawable/a/a/h;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 454
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 455
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    .line 459
    :cond_a
    iput-object p1, p0, Landroidx/vectordrawable/a/a/i;->f:Landroid/graphics/ColorFilter;

    .line 460
    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/i;->invalidateSelf()V

    return-void
.end method

.method public final bridge synthetic setFilterBitmap(Z)V
    .registers 2

    .line 277
    invoke-super {p0, p1}, Landroidx/vectordrawable/a/a/h;->setFilterBitmap(Z)V

    return-void
.end method

.method public final bridge synthetic setHotspot(FF)V
    .registers 3

    .line 277
    invoke-super {p0, p1, p2}, Landroidx/vectordrawable/a/a/h;->setHotspot(FF)V

    return-void
.end method

.method public final bridge synthetic setHotspotBounds(IIII)V
    .registers 5

    .line 277
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/vectordrawable/a/a/h;->setHotspotBounds(IIII)V

    return-void
.end method

.method public final bridge synthetic setState([I)Z
    .registers 2

    .line 277
    invoke-super {p0, p1}, Landroidx/vectordrawable/a/a/h;->setState([I)Z

    move-result p0

    return p0
.end method

.method public final setTint(I)V
    .registers 3

    .line 488
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 489
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;I)V

    return-void

    .line 493
    :cond_a
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/vectordrawable/a/a/i;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .registers 4

    .line 498
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 499
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    .line 503
    :cond_a
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    .line 504
    iget-object v1, v0, Landroidx/vectordrawable/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_1d

    .line 505
    iput-object p1, v0, Landroidx/vectordrawable/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    .line 506
    iget-object v0, v0, Landroidx/vectordrawable/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0}, Landroidx/vectordrawable/a/a/i;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Landroidx/vectordrawable/a/a/i;->e:Landroid/graphics/PorterDuffColorFilter;

    .line 507
    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/i;->invalidateSelf()V

    :cond_1d
    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    .line 513
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 514
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void

    .line 518
    :cond_a
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->b:Landroidx/vectordrawable/a/a/i$g;

    .line 519
    iget-object v1, v0, Landroidx/vectordrawable/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_1d

    .line 520
    iput-object p1, v0, Landroidx/vectordrawable/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    .line 521
    iget-object v0, v0, Landroidx/vectordrawable/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, p1}, Landroidx/vectordrawable/a/a/i;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Landroidx/vectordrawable/a/a/i;->e:Landroid/graphics/PorterDuffColorFilter;

    .line 522
    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/i;->invalidateSelf()V

    :cond_1d
    return-void
.end method

.method public final setVisible(ZZ)Z
    .registers 4

    .line 951
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 952
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p0

    return p0

    .line 954
    :cond_b
    invoke-super {p0, p1, p2}, Landroidx/vectordrawable/a/a/h;->setVisible(ZZ)Z

    move-result p0

    return p0
.end method

.method public final unscheduleSelf(Ljava/lang/Runnable;)V
    .registers 3

    .line 959
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 960
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void

    .line 963
    :cond_a
    invoke-super {p0, p1}, Landroidx/vectordrawable/a/a/h;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
