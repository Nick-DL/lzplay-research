.class public final Lcom/airbnb/lottie/a/b/e;
.super Lcom/airbnb/lottie/a/b/f;
.source "IntegerKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/a/b/f<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/g/a<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/a/b/f;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method final synthetic a(Lcom/airbnb/lottie/g/a;F)Ljava/lang/Object;
    .locals 9

    .line 1015
    iget-object v0, p1, Lcom/airbnb/lottie/g/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/airbnb/lottie/g/a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1019
    iget-object v0, p0, Lcom/airbnb/lottie/a/b/e;->d:Lcom/airbnb/lottie/g/c;

    if-eqz v0, :cond_0

    .line 1021
    iget-object v1, p0, Lcom/airbnb/lottie/a/b/e;->d:Lcom/airbnb/lottie/g/c;

    iget v2, p1, Lcom/airbnb/lottie/g/a;->e:F

    iget-object v0, p1, Lcom/airbnb/lottie/g/a;->f:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p1, Lcom/airbnb/lottie/g/a;->b:Ljava/lang/Object;

    iget-object v5, p1, Lcom/airbnb/lottie/g/a;->c:Ljava/lang/Object;

    .line 1023
    invoke-virtual {p0}, Lcom/airbnb/lottie/a/b/e;->b()F

    move-result v7

    .line 1129
    iget v8, p0, Lcom/airbnb/lottie/a/b/a;->c:F

    move v6, p2

    .line 1021
    invoke-virtual/range {v1 .. v8}, Lcom/airbnb/lottie/g/c;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    return-object p0

    .line 1029
    :cond_0
    iget-object p0, p1, Lcom/airbnb/lottie/g/a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget-object p1, p1, Lcom/airbnb/lottie/g/a;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float v0, p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float/2addr p2, p0

    add-float/2addr v0, p2

    float-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 1016
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing values for keyframe."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
