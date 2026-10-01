.class public final Lcom/airbnb/lottie/e/j;
.super Ljava/lang/Object;
.source "GradientColorParser.java"

# interfaces
.implements Lcom/airbnb/lottie/e/af;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/e/af<",
        "Lcom/airbnb/lottie/c/b/c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/airbnb/lottie/e/j;->a:I

    return-void
.end method

.method private a(Lcom/airbnb/lottie/c/b/c;Ljava/util/List;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/c/b/c;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 103
    iget v1, v1, Lcom/airbnb/lottie/e/j;->a:I

    mul-int/lit8 v1, v1, 0x4

    .line 104
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v1, :cond_11

    return-void

    .line 108
    :cond_11
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    .line 109
    new-array v4, v3, [D

    .line 110
    new-array v3, v3, [D

    const/4 v5, 0x0

    move v6, v5

    .line 112
    :goto_1e
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_48

    .line 113
    rem-int/lit8 v7, v1, 0x2

    if-nez v7, :cond_36

    .line 114
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v7, v7

    aput-wide v7, v4, v6

    goto :goto_45

    .line 116
    :cond_36
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v7, v7

    aput-wide v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    :goto_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 1025
    :cond_48
    :goto_48
    iget-object v1, v0, Lcom/airbnb/lottie/c/b/c;->b:[I

    array-length v1, v1

    if-ge v5, v1, :cond_99

    .line 2021
    iget-object v1, v0, Lcom/airbnb/lottie/c/b/c;->b:[I

    .line 122
    aget v1, v1, v5

    .line 3017
    iget-object v2, v0, Lcom/airbnb/lottie/c/b/c;->a:[F

    .line 124
    aget v2, v2, v5

    float-to-double v6, v2

    const/4 v2, 0x1

    move v8, v2

    .line 3135
    :goto_58
    array-length v9, v4

    const-wide v10, 0x406fe00000000000L    # 255.0

    if-ge v8, v9, :cond_7c

    add-int/lit8 v9, v8, -0x1

    .line 3136
    aget-wide v12, v4, v9

    .line 3137
    aget-wide v14, v4, v8

    .line 3138
    aget-wide v16, v4, v8

    cmpl-double v16, v16, v6

    if-ltz v16, :cond_79

    sub-double/2addr v6, v12

    sub-double/2addr v14, v12

    div-double/2addr v6, v14

    .line 3140
    aget-wide v12, v3, v9

    aget-wide v8, v3, v8

    sub-double/2addr v8, v12

    mul-double/2addr v6, v8

    add-double/2addr v12, v6

    mul-double/2addr v12, v10

    double-to-int v2, v12

    goto :goto_82

    :cond_79
    add-int/lit8 v8, v8, 0x1

    goto :goto_58

    .line 3143
    :cond_7c
    array-length v6, v3

    sub-int/2addr v6, v2

    aget-wide v6, v3, v6

    mul-double/2addr v6, v10

    double-to-int v2, v6

    .line 125
    :goto_82
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v6

    .line 126
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v7

    .line 127
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 123
    invoke-static {v2, v6, v7, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 5021
    iget-object v2, v0, Lcom/airbnb/lottie/c/b/c;->b:[I

    .line 129
    aput v1, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_48

    :cond_99
    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .registers 13

    .line 5045
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 5048
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v0

    sget-object v1, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    move v0, v2

    :goto_11
    if-eqz v0, :cond_16

    .line 5050
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 5052
    :cond_16
    :goto_16
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 5053
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v3

    double-to-float v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_29
    if-eqz v0, :cond_2e

    .line 5056
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    .line 5058
    :cond_2e
    iget p1, p0, Lcom/airbnb/lottie/e/j;->a:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3b

    .line 5059
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/airbnb/lottie/e/j;->a:I

    .line 5062
    :cond_3b
    iget p1, p0, Lcom/airbnb/lottie/e/j;->a:I

    new-array p1, p1, [F

    .line 5063
    iget v0, p0, Lcom/airbnb/lottie/e/j;->a:I

    new-array v0, v0, [I

    move v1, v2

    move v3, v1

    .line 5067
    :goto_45
    iget v4, p0, Lcom/airbnb/lottie/e/j;->a:I

    mul-int/lit8 v4, v4, 0x4

    if-ge v2, v4, :cond_7a

    .line 5068
    div-int/lit8 v4, v2, 0x4

    .line 5069
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v5, v5

    .line 5070
    rem-int/lit8 v7, v2, 0x4

    const-wide v8, 0x406fe00000000000L    # 255.0

    packed-switch v7, :pswitch_data_84

    goto :goto_77

    :pswitch_63
    mul-double/2addr v5, v8

    double-to-int v5, v5

    const/16 v6, 0xff

    .line 5083
    invoke-static {v6, v1, v3, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    aput v5, v0, v4

    goto :goto_77

    :pswitch_6e
    mul-double/2addr v5, v8

    double-to-int v3, v5

    goto :goto_77

    :pswitch_71
    mul-double/2addr v5, v8

    double-to-int v1, v5

    goto :goto_77

    :pswitch_74
    double-to-float v5, v5

    .line 5073
    aput v5, p1, v4

    :goto_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 5088
    :cond_7a
    new-instance v1, Lcom/airbnb/lottie/c/b/c;

    invoke-direct {v1, p1, v0}, Lcom/airbnb/lottie/c/b/c;-><init>([F[I)V

    .line 5089
    invoke-direct {p0, v1, p2}, Lcom/airbnb/lottie/e/j;->a(Lcom/airbnb/lottie/c/b/c;Ljava/util/List;)V

    return-object v1

    nop

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_63
    .end packed-switch
.end method
