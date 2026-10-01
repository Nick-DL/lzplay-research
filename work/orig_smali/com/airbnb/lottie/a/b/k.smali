.class public final Lcom/airbnb/lottie/a/b/k;
.super Lcom/airbnb/lottie/a/b/f;
.source "ScaleKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/a/b/f<",
        "Lcom/airbnb/lottie/g/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/g/a<",
            "Lcom/airbnb/lottie/g/d;",
            ">;>;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/a/b/f;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/airbnb/lottie/g/a;F)Ljava/lang/Object;
    .registers 13

    .line 1015
    iget-object v0, p1, Lcom/airbnb/lottie/g/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_45

    iget-object v0, p1, Lcom/airbnb/lottie/g/a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_45

    .line 1018
    iget-object v0, p1, Lcom/airbnb/lottie/g/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/g/d;

    .line 1019
    iget-object v1, p1, Lcom/airbnb/lottie/g/a;->c:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Lcom/airbnb/lottie/g/d;

    .line 1021
    iget-object v1, p0, Lcom/airbnb/lottie/a/b/k;->d:Lcom/airbnb/lottie/g/c;

    if-eqz v1, :cond_31

    .line 1023
    iget-object v1, p0, Lcom/airbnb/lottie/a/b/k;->d:Lcom/airbnb/lottie/g/c;

    iget v2, p1, Lcom/airbnb/lottie/g/a;->e:F

    iget-object p1, p1, Lcom/airbnb/lottie/g/a;->f:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 1025
    invoke-virtual {p0}, Lcom/airbnb/lottie/a/b/k;->b()F

    move-result v7

    .line 1129
    iget v8, p0, Lcom/airbnb/lottie/a/b/a;->c:F

    move-object v4, v0

    move-object v5, v9

    move v6, p2

    .line 1023
    invoke-virtual/range {v1 .. v8}, Lcom/airbnb/lottie/g/c;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/g/d;

    if-eqz p0, :cond_31

    return-object p0

    .line 1031
    :cond_31
    new-instance p0, Lcom/airbnb/lottie/g/d;

    .line 2017
    iget p1, v0, Lcom/airbnb/lottie/g/d;->a:F

    .line 3017
    iget v1, v9, Lcom/airbnb/lottie/g/d;->a:F

    sub-float/2addr v1, p1

    mul-float/2addr v1, p2

    add-float/2addr p1, v1

    .line 4021
    iget v0, v0, Lcom/airbnb/lottie/g/d;->b:F

    .line 5021
    iget v1, v9, Lcom/airbnb/lottie/g/d;->b:F

    sub-float/2addr v1, v0

    mul-float/2addr p2, v1

    add-float/2addr v0, p2

    .line 1033
    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/g/d;-><init>(FF)V

    return-object p0

    .line 1016
    :cond_45
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing values for keyframe."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
