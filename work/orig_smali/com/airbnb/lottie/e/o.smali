.class Lcom/airbnb/lottie/e/o;
.super Ljava/lang/Object;
.source "KeyframeParser.java"


# static fields
.field private static final a:Landroid/view/animation/Interpolator;

.field private static b:Landroidx/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/h<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/e/o;->a:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;FLcom/airbnb/lottie/e/af;Z)Lcom/airbnb/lottie/g/a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            "Lcom/airbnb/lottie/d;",
            "F",
            "Lcom/airbnb/lottie/e/af<",
            "TT;>;Z)",
            "Lcom/airbnb/lottie/g/a<",
            "TT;>;"
        }
    .end annotation

    if-eqz p4, :cond_7

    .line 58
    invoke-static {p1, p0, p2, p3}, Lcom/airbnb/lottie/e/o;->a(Lcom/airbnb/lottie/d;Landroid/util/JsonReader;FLcom/airbnb/lottie/e/af;)Lcom/airbnb/lottie/g/a;

    move-result-object p0

    return-object p0

    .line 1155
    :cond_7
    invoke-interface {p3, p0, p2}, Lcom/airbnb/lottie/e/af;->a(Landroid/util/JsonReader;F)Ljava/lang/Object;

    move-result-object p0

    .line 1156
    new-instance p1, Lcom/airbnb/lottie/g/a;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/g/a;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method private static a(Lcom/airbnb/lottie/d;Landroid/util/JsonReader;FLcom/airbnb/lottie/e/af;)Lcom/airbnb/lottie/g/a;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/d;",
            "Landroid/util/JsonReader;",
            "F",
            "Lcom/airbnb/lottie/e/af<",
            "TT;>;)",
            "Lcom/airbnb/lottie/g/a<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    .line 82
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v13, v9

    move-object v14, v13

    move v11, v5

    :cond_12
    const/4 v5, 0x0

    .line 83
    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b0

    .line 84
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v10

    const/4 v12, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v15

    const/4 v3, 0x1

    sparse-switch v15, :sswitch_data_13c

    goto :goto_77

    :sswitch_27
    const-string v15, "to"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_77

    const/4 v10, 0x6

    goto :goto_78

    :sswitch_31
    const-string v15, "ti"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_77

    const/4 v10, 0x7

    goto :goto_78

    :sswitch_3b
    const-string v15, "t"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_77

    const/4 v10, 0x0

    goto :goto_78

    :sswitch_45
    const-string v15, "s"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_77

    move v10, v3

    goto :goto_78

    :sswitch_4f
    const-string v15, "o"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_77

    const/4 v10, 0x3

    goto :goto_78

    :sswitch_59
    const-string v15, "i"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_77

    const/4 v10, 0x4

    goto :goto_78

    :sswitch_63
    const-string v15, "h"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_77

    const/4 v10, 0x5

    goto :goto_78

    :sswitch_6d
    const-string v15, "e"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_77

    const/4 v10, 0x2

    goto :goto_78

    :cond_77
    :goto_77
    move v10, v12

    :goto_78
    packed-switch v10, :pswitch_data_15e

    .line 110
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_13

    .line 107
    :pswitch_7f
    invoke-static/range {p1 .. p2}, Lcom/airbnb/lottie/e/n;->b(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v14

    goto :goto_13

    .line 104
    :pswitch_84
    invoke-static/range {p1 .. p2}, Lcom/airbnb/lottie/e/n;->b(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v13

    goto :goto_13

    .line 101
    :pswitch_89
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v5

    if-ne v5, v3, :cond_12

    move v5, v3

    goto :goto_13

    .line 98
    :pswitch_91
    invoke-static/range {p1 .. p2}, Lcom/airbnb/lottie/e/n;->b(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v7

    goto/16 :goto_13

    .line 95
    :pswitch_97
    invoke-static/range {p1 .. p2}, Lcom/airbnb/lottie/e/n;->b(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v6

    goto/16 :goto_13

    .line 92
    :pswitch_9d
    invoke-interface {v2, v0, v1}, Lcom/airbnb/lottie/e/af;->a(Landroid/util/JsonReader;F)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_13

    .line 89
    :pswitch_a3
    invoke-interface {v2, v0, v1}, Lcom/airbnb/lottie/e/af;->a(Landroid/util/JsonReader;F)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_13

    .line 86
    :pswitch_a9
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v10

    double-to-float v11, v10

    goto/16 :goto_13

    .line 113
    :cond_b0
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endObject()V

    if-eqz v5, :cond_bb

    .line 118
    sget-object v0, Lcom/airbnb/lottie/e/o;->a:Landroid/view/animation/Interpolator;

    move-object v10, v0

    move-object v9, v8

    goto/16 :goto_12d

    :cond_bb
    if-eqz v6, :cond_12a

    if-eqz v7, :cond_12a

    .line 120
    iget v0, v6, Landroid/graphics/PointF;->x:F

    neg-float v2, v1

    invoke-static {v0, v2, v1}, Lcom/airbnb/lottie/f/e;->a(FFF)F

    move-result v0

    iput v0, v6, Landroid/graphics/PointF;->x:F

    .line 121
    iget v0, v6, Landroid/graphics/PointF;->y:F

    const/high16 v3, 0x42c80000    # 100.0f

    const/high16 v5, -0x3d380000    # -100.0f

    invoke-static {v0, v5, v3}, Lcom/airbnb/lottie/f/e;->a(FFF)F

    move-result v0

    iput v0, v6, Landroid/graphics/PointF;->y:F

    .line 122
    iget v0, v7, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v2, v1}, Lcom/airbnb/lottie/f/e;->a(FFF)F

    move-result v0

    iput v0, v7, Landroid/graphics/PointF;->x:F

    .line 123
    iget v0, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v5, v3}, Lcom/airbnb/lottie/f/e;->a(FFF)F

    move-result v0

    iput v0, v7, Landroid/graphics/PointF;->y:F

    .line 124
    iget v0, v6, Landroid/graphics/PointF;->x:F

    iget v2, v6, Landroid/graphics/PointF;->y:F

    iget v3, v7, Landroid/graphics/PointF;->x:F

    iget v5, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v2, v3, v5}, Lcom/airbnb/lottie/f/f;->a(FFFF)I

    move-result v0

    .line 125
    invoke-static {v0}, Lcom/airbnb/lottie/e/o;->a(I)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_fd

    .line 127
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/view/animation/Interpolator;

    :cond_fd
    if-eqz v2, :cond_101

    if-nez v4, :cond_128

    .line 130
    :cond_101
    iget v2, v6, Landroid/graphics/PointF;->x:F

    div-float/2addr v2, v1

    iget v3, v6, Landroid/graphics/PointF;->y:F

    div-float/2addr v3, v1

    iget v4, v7, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, v1

    iget v5, v7, Landroid/graphics/PointF;->y:F

    div-float/2addr v5, v1

    .line 2081
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v1, v6, :cond_11a

    .line 2082
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    :goto_118
    move-object v4, v1

    goto :goto_120

    .line 2084
    :cond_11a
    new-instance v1, Landroidx/core/e/b/a;

    invoke-direct {v1, v2, v3, v4, v5}, Landroidx/core/e/b/a;-><init>(FFFF)V

    goto :goto_118

    .line 133
    :goto_120
    :try_start_120
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/airbnb/lottie/e/o;->a(ILjava/lang/ref/WeakReference;)V
    :try_end_128
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_120 .. :try_end_128} :catch_128

    :catch_128
    :cond_128
    move-object v10, v4

    goto :goto_12d

    .line 143
    :cond_12a
    sget-object v0, Lcom/airbnb/lottie/e/o;->a:Landroid/view/animation/Interpolator;

    move-object v10, v0

    .line 146
    :goto_12d
    new-instance v0, Lcom/airbnb/lottie/g/a;

    const/4 v12, 0x0

    move-object v6, v0

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v12}, Lcom/airbnb/lottie/g/a;-><init>(Lcom/airbnb/lottie/d;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 148
    iput-object v13, v0, Lcom/airbnb/lottie/g/a;->g:Landroid/graphics/PointF;

    .line 149
    iput-object v14, v0, Lcom/airbnb/lottie/g/a;->h:Landroid/graphics/PointF;

    return-object v0

    nop

    :sswitch_data_13c
    .sparse-switch
        0x65 -> :sswitch_6d
        0x68 -> :sswitch_63
        0x69 -> :sswitch_59
        0x6f -> :sswitch_4f
        0x73 -> :sswitch_45
        0x74 -> :sswitch_3b
        0xe75 -> :sswitch_31
        0xe7b -> :sswitch_27
    .end sparse-switch

    :pswitch_data_15e
    .packed-switch 0x0
        :pswitch_a9
        :pswitch_a3
        :pswitch_9d
        :pswitch_97
        :pswitch_91
        :pswitch_89
        :pswitch_84
        :pswitch_7f
    .end packed-switch
.end method

.method private static a(I)Ljava/lang/ref/WeakReference;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;"
        }
    .end annotation

    .line 41
    const-class v0, Lcom/airbnb/lottie/e/o;

    monitor-enter v0

    .line 1031
    :try_start_3
    sget-object v1, Lcom/airbnb/lottie/e/o;->b:Landroidx/b/h;

    if-nez v1, :cond_e

    .line 1032
    new-instance v1, Landroidx/b/h;

    invoke-direct {v1}, Landroidx/b/h;-><init>()V

    sput-object v1, Lcom/airbnb/lottie/e/o;->b:Landroidx/b/h;

    .line 1034
    :cond_e
    sget-object v1, Lcom/airbnb/lottie/e/o;->b:Landroidx/b/h;

    const/4 v2, 0x0

    .line 1109
    invoke-virtual {v1, p0, v2}, Landroidx/b/h;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 42
    check-cast p0, Ljava/lang/ref/WeakReference;

    monitor-exit v0

    return-object p0

    :catchall_19
    move-exception p0

    .line 43
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method private static a(ILjava/lang/ref/WeakReference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;)V"
        }
    .end annotation

    .line 49
    const-class v0, Lcom/airbnb/lottie/e/o;

    monitor-enter v0

    .line 50
    :try_start_3
    sget-object v1, Lcom/airbnb/lottie/e/o;->b:Landroidx/b/h;

    invoke-virtual {v1, p0, p1}, Landroidx/b/h;->b(ILjava/lang/Object;)V

    .line 51
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method
