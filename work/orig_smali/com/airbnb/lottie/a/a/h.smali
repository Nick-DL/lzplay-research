.class public final Lcom/airbnb/lottie/a/a/h;
.super Lcom/airbnb/lottie/a/a/a;
.source "GradientStrokeContent.java"


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Landroidx/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/d<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroidx/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/d<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/graphics/RectF;

.field private final f:I

.field private final g:I

.field private final h:Lcom/airbnb/lottie/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/a/b/a<",
            "Lcom/airbnb/lottie/c/b/c;",
            "Lcom/airbnb/lottie/c/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/airbnb/lottie/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/a/b/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/airbnb/lottie/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/a/b/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/c/c/a;Lcom/airbnb/lottie/c/b/e;)V
    .registers 15

    .line 1081
    iget-object v0, p3, Lcom/airbnb/lottie/c/b/e;->h:Lcom/airbnb/lottie/c/b/p$a;

    .line 38
    invoke-virtual {v0}, Lcom/airbnb/lottie/c/b/p$a;->toPaintCap()Landroid/graphics/Paint$Cap;

    move-result-object v4

    .line 1085
    iget-object v0, p3, Lcom/airbnb/lottie/c/b/e;->i:Lcom/airbnb/lottie/c/b/p$b;

    .line 39
    invoke-virtual {v0}, Lcom/airbnb/lottie/c/b/p$b;->toPaintJoin()Landroid/graphics/Paint$Join;

    move-result-object v5

    .line 1097
    iget v6, p3, Lcom/airbnb/lottie/c/b/e;->j:F

    .line 2065
    iget-object v7, p3, Lcom/airbnb/lottie/c/b/e;->d:Lcom/airbnb/lottie/c/a/d;

    .line 2077
    iget-object v8, p3, Lcom/airbnb/lottie/c/b/e;->g:Lcom/airbnb/lottie/c/a/b;

    .line 2089
    iget-object v9, p3, Lcom/airbnb/lottie/c/b/e;->k:Ljava/util/List;

    .line 2093
    iget-object v10, p3, Lcom/airbnb/lottie/c/b/e;->l:Lcom/airbnb/lottie/c/a/b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 38
    invoke-direct/range {v1 .. v10}, Lcom/airbnb/lottie/a/a/a;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/c/c/a;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/airbnb/lottie/c/a/d;Lcom/airbnb/lottie/c/a/b;Ljava/util/List;Lcom/airbnb/lottie/c/a/b;)V

    .line 26
    new-instance v0, Landroidx/b/d;

    invoke-direct {v0}, Landroidx/b/d;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/a/a/h;->c:Landroidx/b/d;

    .line 27
    new-instance v0, Landroidx/b/d;

    invoke-direct {v0}, Landroidx/b/d;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/a/a/h;->d:Landroidx/b/d;

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/a/a/h;->e:Landroid/graphics/RectF;

    .line 3053
    iget-object v0, p3, Lcom/airbnb/lottie/c/b/e;->a:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/airbnb/lottie/a/a/h;->b:Ljava/lang/String;

    .line 3057
    iget v0, p3, Lcom/airbnb/lottie/c/b/e;->b:I

    .line 43
    iput v0, p0, Lcom/airbnb/lottie/a/a/h;->f:I

    .line 3708
    iget-object p1, p1, Lcom/airbnb/lottie/f;->a:Lcom/airbnb/lottie/d;

    .line 44
    invoke-virtual {p1}, Lcom/airbnb/lottie/d;->a()F

    move-result p1

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/airbnb/lottie/a/a/h;->g:I

    .line 4061
    iget-object p1, p3, Lcom/airbnb/lottie/c/b/e;->c:Lcom/airbnb/lottie/c/a/c;

    .line 46
    invoke-virtual {p1}, Lcom/airbnb/lottie/c/a/c;->a()Lcom/airbnb/lottie/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/a/a/h;->h:Lcom/airbnb/lottie/a/b/a;

    .line 47
    iget-object p1, p0, Lcom/airbnb/lottie/a/a/h;->h:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/a/b/a;->a(Lcom/airbnb/lottie/a/b/a$a;)V

    .line 48
    iget-object p1, p0, Lcom/airbnb/lottie/a/a/h;->h:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/c/c/a;->a(Lcom/airbnb/lottie/a/b/a;)V

    .line 4069
    iget-object p1, p3, Lcom/airbnb/lottie/c/b/e;->e:Lcom/airbnb/lottie/c/a/f;

    .line 50
    invoke-virtual {p1}, Lcom/airbnb/lottie/c/a/f;->a()Lcom/airbnb/lottie/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/a/a/h;->i:Lcom/airbnb/lottie/a/b/a;

    .line 51
    iget-object p1, p0, Lcom/airbnb/lottie/a/a/h;->i:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/a/b/a;->a(Lcom/airbnb/lottie/a/b/a$a;)V

    .line 52
    iget-object p1, p0, Lcom/airbnb/lottie/a/a/h;->i:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/c/c/a;->a(Lcom/airbnb/lottie/a/b/a;)V

    .line 4073
    iget-object p1, p3, Lcom/airbnb/lottie/c/b/e;->f:Lcom/airbnb/lottie/c/a/f;

    .line 54
    invoke-virtual {p1}, Lcom/airbnb/lottie/c/a/f;->a()Lcom/airbnb/lottie/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/a/a/h;->j:Lcom/airbnb/lottie/a/b/a;

    .line 55
    iget-object p1, p0, Lcom/airbnb/lottie/a/a/h;->j:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/a/b/a;->a(Lcom/airbnb/lottie/a/b/a$a;)V

    .line 56
    iget-object p0, p0, Lcom/airbnb/lottie/a/a/h;->j:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/c/c/a;->a(Lcom/airbnb/lottie/a/b/a;)V

    return-void
.end method

.method private c()I
    .registers 4

    .line 116
    iget-object v0, p0, Lcom/airbnb/lottie/a/a/h;->i:Lcom/airbnb/lottie/a/b/a;

    .line 9129
    iget v0, v0, Lcom/airbnb/lottie/a/b/a;->c:F

    .line 116
    iget v1, p0, Lcom/airbnb/lottie/a/a/h;->g:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/airbnb/lottie/a/a/h;->j:Lcom/airbnb/lottie/a/b/a;

    .line 10129
    iget v1, v1, Lcom/airbnb/lottie/a/b/a;->c:F

    .line 117
    iget v2, p0, Lcom/airbnb/lottie/a/a/h;->g:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 118
    iget-object v2, p0, Lcom/airbnb/lottie/a/a/h;->h:Lcom/airbnb/lottie/a/b/a;

    .line 11129
    iget v2, v2, Lcom/airbnb/lottie/a/b/a;->c:F

    .line 118
    iget p0, p0, Lcom/airbnb/lottie/a/a/h;->g:I

    int-to-float p0, p0

    mul-float/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-eqz v0, :cond_29

    mul-int/lit16 v0, v0, 0x20f

    goto :goto_2b

    :cond_29
    const/16 v0, 0x11

    :goto_2b
    if-eqz v1, :cond_30

    mul-int/lit8 v0, v0, 0x1f

    mul-int/2addr v0, v1

    :cond_30
    if-eqz p0, :cond_35

    mul-int/lit8 v0, v0, 0x1f

    mul-int/2addr v0, p0

    :cond_35
    return v0
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 21

    move-object/from16 v0, p0

    .line 60
    iget-object v1, v0, Lcom/airbnb/lottie/a/a/h;->e:Landroid/graphics/RectF;

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/lottie/a/a/h;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 61
    iget v1, v0, Lcom/airbnb/lottie/a/a/h;->f:I

    sget v3, Lcom/airbnb/lottie/c/b/f;->Linear$9a8e412:I

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_97

    .line 62
    iget-object v1, v0, Lcom/airbnb/lottie/a/a/h;->a:Landroid/graphics/Paint;

    .line 4075
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/a/a/h;->c()I

    move-result v3

    .line 4076
    iget-object v6, v0, Lcom/airbnb/lottie/a/a/h;->c:Landroidx/b/d;

    int-to-long v7, v3

    .line 4109
    invoke-virtual {v6, v7, v8, v4}, Landroidx/b/d;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 4076
    check-cast v3, Landroid/graphics/LinearGradient;

    if-eqz v3, :cond_24

    goto :goto_92

    .line 4080
    :cond_24
    iget-object v3, v0, Lcom/airbnb/lottie/a/a/h;->i:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {v3}, Lcom/airbnb/lottie/a/b/a;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 4081
    iget-object v4, v0, Lcom/airbnb/lottie/a/a/h;->j:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {v4}, Lcom/airbnb/lottie/a/b/a;->d()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    .line 4082
    iget-object v6, v0, Lcom/airbnb/lottie/a/a/h;->h:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {v6}, Lcom/airbnb/lottie/a/b/a;->d()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/c/b/c;

    .line 5021
    iget-object v14, v6, Lcom/airbnb/lottie/c/b/c;->b:[I

    .line 6017
    iget-object v15, v6, Lcom/airbnb/lottie/c/b/c;->a:[F

    .line 4085
    iget-object v6, v0, Lcom/airbnb/lottie/a/a/h;->e:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v9, v0, Lcom/airbnb/lottie/a/a/h;->e:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float/2addr v9, v5

    add-float/2addr v6, v9

    iget v9, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v9

    float-to-int v6, v6

    .line 4086
    iget-object v9, v0, Lcom/airbnb/lottie/a/a/h;->e:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    iget-object v10, v0, Lcom/airbnb/lottie/a/a/h;->e:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    div-float/2addr v10, v5

    add-float/2addr v9, v10

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v9, v3

    float-to-int v3, v9

    .line 4087
    iget-object v9, v0, Lcom/airbnb/lottie/a/a/h;->e:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    iget-object v10, v0, Lcom/airbnb/lottie/a/a/h;->e:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    div-float/2addr v10, v5

    add-float/2addr v9, v10

    iget v10, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v10

    float-to-int v9, v9

    .line 4088
    iget-object v10, v0, Lcom/airbnb/lottie/a/a/h;->e:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    iget-object v11, v0, Lcom/airbnb/lottie/a/a/h;->e:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    div-float/2addr v11, v5

    add-float/2addr v10, v11

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v10, v4

    float-to-int v4, v10

    .line 4089
    new-instance v5, Landroid/graphics/LinearGradient;

    int-to-float v10, v6

    int-to-float v11, v3

    int-to-float v12, v9

    int-to-float v13, v4

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v5

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 4090
    iget-object v3, v0, Lcom/airbnb/lottie/a/a/h;->c:Landroidx/b/d;

    invoke-virtual {v3, v7, v8, v5}, Landroidx/b/d;->b(JLjava/lang/Object;)V

    move-object v3, v5

    .line 62
    :goto_92
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_121

    .line 64
    :cond_97
    iget-object v1, v0, Lcom/airbnb/lottie/a/a/h;->a:Landroid/graphics/Paint;

    .line 6095
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/a/a/h;->c()I

    move-result v3

    .line 6096
    iget-object v6, v0, Lcom/airbnb/lottie/a/a/h;->d:Landroidx/b/d;

    int-to-long v7, v3

    .line 7109
    invoke-virtual {v6, v7, v8, v4}, Landroidx/b/d;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 6096
    check-cast v3, Landroid/graphics/RadialGradient;

    if-eqz v3, :cond_a9

    goto :goto_11e

    .line 6100
    :cond_a9
    iget-object v3, v0, Lcom/airbnb/lottie/a/a/h;->i:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {v3}, Lcom/airbnb/lottie/a/b/a;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 6101
    iget-object v4, v0, Lcom/airbnb/lottie/a/a/h;->j:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {v4}, Lcom/airbnb/lottie/a/b/a;->d()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    .line 6102
    iget-object v6, v0, Lcom/airbnb/lottie/a/a/h;->h:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {v6}, Lcom/airbnb/lottie/a/b/a;->d()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/c/b/c;

    .line 8021
    iget-object v13, v6, Lcom/airbnb/lottie/c/b/c;->b:[I

    .line 9017
    iget-object v14, v6, Lcom/airbnb/lottie/c/b/c;->a:[F

    .line 6105
    iget-object v6, v0, Lcom/airbnb/lottie/a/a/h;->e:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v9, v0, Lcom/airbnb/lottie/a/a/h;->e:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float/2addr v9, v5

    add-float/2addr v6, v9

    iget v9, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v9

    float-to-int v6, v6

    .line 6106
    iget-object v9, v0, Lcom/airbnb/lottie/a/a/h;->e:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    iget-object v10, v0, Lcom/airbnb/lottie/a/a/h;->e:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    div-float/2addr v10, v5

    add-float/2addr v9, v10

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v9, v3

    float-to-int v3, v9

    .line 6107
    iget-object v9, v0, Lcom/airbnb/lottie/a/a/h;->e:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    iget-object v10, v0, Lcom/airbnb/lottie/a/a/h;->e:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    div-float/2addr v10, v5

    add-float/2addr v9, v10

    iget v10, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v10

    float-to-int v9, v9

    .line 6108
    iget-object v10, v0, Lcom/airbnb/lottie/a/a/h;->e:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    iget-object v11, v0, Lcom/airbnb/lottie/a/a/h;->e:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    div-float/2addr v11, v5

    add-float/2addr v10, v11

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v10, v4

    float-to-int v4, v10

    sub-int/2addr v9, v6

    int-to-double v9, v9

    sub-int/2addr v4, v3

    int-to-double v4, v4

    .line 6109
    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v12, v4

    .line 6110
    new-instance v4, Landroid/graphics/RadialGradient;

    int-to-float v10, v6

    int-to-float v11, v3

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v4

    invoke-direct/range {v9 .. v15}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 6111
    iget-object v3, v0, Lcom/airbnb/lottie/a/a/h;->d:Landroidx/b/d;

    invoke-virtual {v3, v7, v8, v4}, Landroidx/b/d;->b(JLjava/lang/Object;)V

    move-object v3, v4

    .line 64
    :goto_11e
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 67
    :goto_121
    invoke-super/range {p0 .. p3}, Lcom/airbnb/lottie/a/a/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/airbnb/lottie/a/a/h;->b:Ljava/lang/String;

    return-object p0
.end method
