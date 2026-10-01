.class public Lcom/airbnb/lottie/g/a;
.super Ljava/lang/Object;
.source "Keyframe.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/airbnb/lottie/d;

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final d:Landroid/view/animation/Interpolator;

.field public final e:F

.field public f:Ljava/lang/Float;

.field public g:Landroid/graphics/PointF;

.field public h:Landroid/graphics/PointF;

.field private i:F

.field private j:F


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/d;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/d;",
            "TT;TT;",
            "Landroid/view/animation/Interpolator;",
            "F",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput v0, p0, Lcom/airbnb/lottie/g/a;->i:F

    .line 19
    iput v0, p0, Lcom/airbnb/lottie/g/a;->j:F

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/airbnb/lottie/g/a;->g:Landroid/graphics/PointF;

    .line 24
    iput-object v0, p0, Lcom/airbnb/lottie/g/a;->h:Landroid/graphics/PointF;

    .line 30
    iput-object p1, p0, Lcom/airbnb/lottie/g/a;->a:Lcom/airbnb/lottie/d;

    .line 31
    iput-object p2, p0, Lcom/airbnb/lottie/g/a;->b:Ljava/lang/Object;

    .line 32
    iput-object p3, p0, Lcom/airbnb/lottie/g/a;->c:Ljava/lang/Object;

    .line 33
    iput-object p4, p0, Lcom/airbnb/lottie/g/a;->d:Landroid/view/animation/Interpolator;

    .line 34
    iput p5, p0, Lcom/airbnb/lottie/g/a;->e:F

    .line 35
    iput-object p6, p0, Lcom/airbnb/lottie/g/a;->f:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput v0, p0, Lcom/airbnb/lottie/g/a;->i:F

    .line 19
    iput v0, p0, Lcom/airbnb/lottie/g/a;->j:F

    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Lcom/airbnb/lottie/g/a;->g:Landroid/graphics/PointF;

    .line 24
    iput-object v1, p0, Lcom/airbnb/lottie/g/a;->h:Landroid/graphics/PointF;

    .line 42
    iput-object v1, p0, Lcom/airbnb/lottie/g/a;->a:Lcom/airbnb/lottie/d;

    .line 43
    iput-object p1, p0, Lcom/airbnb/lottie/g/a;->b:Ljava/lang/Object;

    .line 44
    iput-object p1, p0, Lcom/airbnb/lottie/g/a;->c:Ljava/lang/Object;

    .line 45
    iput-object v1, p0, Lcom/airbnb/lottie/g/a;->d:Landroid/view/animation/Interpolator;

    .line 46
    iput v0, p0, Lcom/airbnb/lottie/g/a;->e:F

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 47
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/g/a;->f:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public final a()F
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/airbnb/lottie/g/a;->a:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 54
    :cond_6
    iget v0, p0, Lcom/airbnb/lottie/g/a;->i:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1d

    .line 55
    iget v0, p0, Lcom/airbnb/lottie/g/a;->e:F

    iget-object v1, p0, Lcom/airbnb/lottie/g/a;->a:Lcom/airbnb/lottie/d;

    .line 1104
    iget v1, v1, Lcom/airbnb/lottie/d;->i:F

    sub-float/2addr v0, v1

    .line 55
    iget-object v1, p0, Lcom/airbnb/lottie/g/a;->a:Lcom/airbnb/lottie/d;

    invoke-virtual {v1}, Lcom/airbnb/lottie/d;->b()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/airbnb/lottie/g/a;->i:F

    .line 57
    :cond_1d
    iget p0, p0, Lcom/airbnb/lottie/g/a;->i:F

    return p0
.end method

.method public final a(F)Z
    .registers 3

    .line 82
    invoke-virtual {p0}, Lcom/airbnb/lottie/g/a;->a()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_12

    invoke-virtual {p0}, Lcom/airbnb/lottie/g/a;->b()F

    move-result p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public final b()F
    .registers 4

    .line 61
    iget-object v0, p0, Lcom/airbnb/lottie/g/a;->a:Lcom/airbnb/lottie/d;

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_7

    return v1

    .line 64
    :cond_7
    iget v0, p0, Lcom/airbnb/lottie/g/a;->j:F

    const/4 v2, 0x1

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2c

    .line 65
    iget-object v0, p0, Lcom/airbnb/lottie/g/a;->f:Ljava/lang/Float;

    if-nez v0, :cond_15

    .line 66
    iput v1, p0, Lcom/airbnb/lottie/g/a;->j:F

    goto :goto_2c

    .line 68
    :cond_15
    invoke-virtual {p0}, Lcom/airbnb/lottie/g/a;->a()F

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/airbnb/lottie/g/a;->f:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/airbnb/lottie/g/a;->e:F

    sub-float/2addr v1, v2

    .line 70
    iget-object v2, p0, Lcom/airbnb/lottie/g/a;->a:Lcom/airbnb/lottie/d;

    invoke-virtual {v2}, Lcom/airbnb/lottie/d;->b()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 71
    iput v0, p0, Lcom/airbnb/lottie/g/a;->j:F

    .line 74
    :cond_2c
    :goto_2c
    iget p0, p0, Lcom/airbnb/lottie/g/a;->j:F

    return p0
.end method

.method public final c()Z
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/airbnb/lottie/g/a;->d:Landroid/view/animation/Interpolator;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Keyframe{startValue="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/airbnb/lottie/g/a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/airbnb/lottie/g/a;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/airbnb/lottie/g/a;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", endFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/airbnb/lottie/g/a;->f:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", interpolator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/airbnb/lottie/g/a;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
