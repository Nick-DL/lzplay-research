.class public final Lcom/airbnb/lottie/f/e;
.super Ljava/lang/Object;
.source "MiscUtils.java"


# direct methods
.method public static a(FFF)F
    .registers 3

    .line 83
    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method static a(FF)I
    .registers 5

    float-to-int p0, p0

    float-to-int p1, p1

    .line 4069
    div-int v0, p0, p1

    xor-int v1, p0, p1

    if-ltz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    .line 4071
    :goto_b
    rem-int v2, p0, p1

    if-nez v1, :cond_13

    if-eqz v2, :cond_13

    add-int/lit8 v0, v0, -0x1

    :cond_13
    mul-int/2addr p1, v0

    sub-int/2addr p0, p1

    return p0
.end method

.method public static a(I)I
    .registers 2

    const/16 v0, 0xff

    .line 79
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 5

    .line 16
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr p0, p1

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public static a(Lcom/airbnb/lottie/c/b/l;Landroid/graphics/Path;)V
    .registers 14

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 1036
    iget-object v0, p0, Lcom/airbnb/lottie/c/b/l;->b:Landroid/graphics/PointF;

    .line 22
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 23
    new-instance v1, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v0, 0x0

    .line 1044
    :goto_16
    iget-object v2, p0, Lcom/airbnb/lottie/c/b/l;->a:Ljava/util/List;

    .line 24
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5a

    .line 2044
    iget-object v2, p0, Lcom/airbnb/lottie/c/b/l;->a:Ljava/util/List;

    .line 25
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/c/a;

    .line 3031
    iget-object v3, v2, Lcom/airbnb/lottie/c/a;->a:Landroid/graphics/PointF;

    .line 3039
    iget-object v4, v2, Lcom/airbnb/lottie/c/a;->b:Landroid/graphics/PointF;

    .line 3047
    iget-object v2, v2, Lcom/airbnb/lottie/c/a;->c:Landroid/graphics/PointF;

    .line 30
    invoke-virtual {v3, v1}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-virtual {v4, v2}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 37
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_50

    .line 39
    :cond_40
    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget v7, v3, Landroid/graphics/PointF;->y:F

    iget v8, v4, Landroid/graphics/PointF;->x:F

    iget v9, v4, Landroid/graphics/PointF;->y:F

    iget v10, v2, Landroid/graphics/PointF;->x:F

    iget v11, v2, Landroid/graphics/PointF;->y:F

    move-object v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 41
    :goto_50
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 4040
    :cond_5a
    iget-boolean p0, p0, Lcom/airbnb/lottie/c/b/l;->c:Z

    if-eqz p0, :cond_61

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    :cond_61
    return-void
.end method

.method public static a(Lcom/airbnb/lottie/c/e;ILjava/util/List;Lcom/airbnb/lottie/c/e;Lcom/airbnb/lottie/a/a/j;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/c/e;",
            "I",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/c/e;",
            ">;",
            "Lcom/airbnb/lottie/c/e;",
            "Lcom/airbnb/lottie/a/a/j;",
            ")V"
        }
    .end annotation

    .line 100
    invoke-interface {p4}, Lcom/airbnb/lottie/a/a/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/airbnb/lottie/c/e;->c(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 101
    invoke-interface {p4}, Lcom/airbnb/lottie/a/a/j;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/airbnb/lottie/c/e;->a(Ljava/lang/String;)Lcom/airbnb/lottie/c/e;

    move-result-object p0

    .line 102
    invoke-virtual {p0, p4}, Lcom/airbnb/lottie/c/e;->a(Lcom/airbnb/lottie/c/f;)Lcom/airbnb/lottie/c/e;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    return-void
.end method
