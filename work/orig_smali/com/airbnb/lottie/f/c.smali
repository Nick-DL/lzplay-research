.class public final Lcom/airbnb/lottie/f/c;
.super Lcom/airbnb/lottie/f/a;
.source "LottieValueAnimator.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public b:F

.field public c:J

.field public d:F

.field public e:F

.field public f:F

.field public g:Lcom/airbnb/lottie/d;

.field protected h:Z

.field private i:Z

.field private j:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 29
    invoke-direct {p0}, Lcom/airbnb/lottie/f/a;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    iput v0, p0, Lcom/airbnb/lottie/f/c;->b:F

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/airbnb/lottie/f/c;->i:Z

    const-wide/16 v1, 0x0

    .line 21
    iput-wide v1, p0, Lcom/airbnb/lottie/f/c;->c:J

    const/4 v1, 0x0

    .line 22
    iput v1, p0, Lcom/airbnb/lottie/f/c;->d:F

    .line 23
    iput v0, p0, Lcom/airbnb/lottie/f/c;->j:I

    const/high16 v1, -0x31000000

    .line 24
    iput v1, p0, Lcom/airbnb/lottie/f/c;->e:F

    const/high16 v1, 0x4f000000

    .line 25
    iput v1, p0, Lcom/airbnb/lottie/f/c;->f:F

    .line 27
    iput-boolean v0, p0, Lcom/airbnb/lottie/f/c;->h:Z

    return-void
.end method

.method private h()V
    .registers 2

    .line 6185
    iget v0, p0, Lcom/airbnb/lottie/f/c;->b:F

    neg-float v0, v0

    .line 7178
    iput v0, p0, Lcom/airbnb/lottie/f/c;->b:F

    return-void
.end method

.method private i()V
    .registers 2

    .line 254
    invoke-virtual {p0}, Lcom/airbnb/lottie/f/c;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    .line 255
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/f/c;->b(Z)V

    .line 256
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_11
    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 4

    .line 149
    iget v0, p0, Lcom/airbnb/lottie/f/c;->d:F

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-nez v0, :cond_8

    return-void

    .line 152
    :cond_8
    invoke-virtual {p0}, Lcom/airbnb/lottie/f/c;->f()F

    move-result v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/f/c;->g()F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/airbnb/lottie/f/e;->a(FFF)F

    move-result p1

    iput p1, p0, Lcom/airbnb/lottie/f/c;->d:F

    .line 153
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/lottie/f/c;->c:J

    .line 154
    invoke-virtual {p0}, Lcom/airbnb/lottie/f/c;->a()V

    return-void
.end method

.method public final a(II)V
    .registers 6

    .line 166
    iget-object v0, p0, Lcom/airbnb/lottie/f/c;->g:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_8

    const v0, -0x800001

    goto :goto_c

    :cond_8
    iget-object v0, p0, Lcom/airbnb/lottie/f/c;->g:Lcom/airbnb/lottie/d;

    .line 6104
    iget v0, v0, Lcom/airbnb/lottie/d;->i:F

    .line 167
    :goto_c
    iget-object v1, p0, Lcom/airbnb/lottie/f/c;->g:Lcom/airbnb/lottie/d;

    if-nez v1, :cond_14

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_18

    :cond_14
    iget-object v1, p0, Lcom/airbnb/lottie/f/c;->g:Lcom/airbnb/lottie/d;

    .line 6109
    iget v1, v1, Lcom/airbnb/lottie/d;->j:F

    :goto_18
    int-to-float p1, p1

    .line 168
    invoke-static {p1, v0, v1}, Lcom/airbnb/lottie/f/e;->a(FFF)F

    move-result v2

    iput v2, p0, Lcom/airbnb/lottie/f/c;->e:F

    int-to-float p2, p2

    .line 169
    invoke-static {p2, v0, v1}, Lcom/airbnb/lottie/f/e;->a(FFF)F

    move-result v0

    iput v0, p0, Lcom/airbnb/lottie/f/c;->f:F

    .line 170
    iget v0, p0, Lcom/airbnb/lottie/f/c;->d:F

    invoke-static {v0, p1, p2}, Lcom/airbnb/lottie/f/e;->a(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/f/c;->a(I)V

    return-void
.end method

.method public final b()F
    .registers 3

    .line 45
    iget-object v0, p0, Lcom/airbnb/lottie/f/c;->g:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 48
    :cond_6
    iget v0, p0, Lcom/airbnb/lottie/f/c;->d:F

    iget-object v1, p0, Lcom/airbnb/lottie/f/c;->g:Lcom/airbnb/lottie/d;

    .line 1104
    iget v1, v1, Lcom/airbnb/lottie/d;->i:F

    sub-float/2addr v0, v1

    .line 48
    iget-object v1, p0, Lcom/airbnb/lottie/f/c;->g:Lcom/airbnb/lottie/d;

    .line 1109
    iget v1, v1, Lcom/airbnb/lottie/d;->j:F

    .line 48
    iget-object p0, p0, Lcom/airbnb/lottie/f/c;->g:Lcom/airbnb/lottie/d;

    .line 2104
    iget p0, p0, Lcom/airbnb/lottie/d;->i:F

    sub-float/2addr v1, p0

    div-float/2addr v0, v1

    return v0
.end method

.method public final b(I)V
    .registers 3

    .line 158
    iget v0, p0, Lcom/airbnb/lottie/f/c;->f:F

    float-to-int v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/f/c;->a(II)V

    return-void
.end method

.method public final b(Z)V
    .registers 3

    .line 267
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    if-eqz p1, :cond_c

    const/4 p1, 0x0

    .line 269
    iput-boolean p1, p0, Lcom/airbnb/lottie/f/c;->h:Z

    :cond_c
    return-void
.end method

.method public final c()V
    .registers 2

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/airbnb/lottie/f/c;->g:Lcom/airbnb/lottie/d;

    const/high16 v0, -0x31000000

    .line 127
    iput v0, p0, Lcom/airbnb/lottie/f/c;->e:F

    const/high16 v0, 0x4f000000

    .line 128
    iput v0, p0, Lcom/airbnb/lottie/f/c;->f:F

    return-void
.end method

.method public final c(I)V
    .registers 3

    .line 162
    iget v0, p0, Lcom/airbnb/lottie/f/c;->e:F

    float-to-int v0, v0

    invoke-virtual {p0, v0, p1}, Lcom/airbnb/lottie/f/c;->a(II)V

    return-void
.end method

.method public final cancel()V
    .registers 3

    .line 8081
    iget-object v0, p0, Lcom/airbnb/lottie/f/a;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 8082
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_6

    :cond_16
    const/4 v0, 0x1

    .line 8262
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/f/c;->b(Z)V

    return-void
.end method

.method public final d()V
    .registers 6

    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Lcom/airbnb/lottie/f/c;->h:Z

    .line 199
    invoke-virtual {p0}, Lcom/airbnb/lottie/f/c;->e()Z

    move-result v0

    .line 8055
    iget-object v1, p0, Lcom/airbnb/lottie/f/a;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    .line 8056
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_23

    .line 8057
    invoke-interface {v2, p0, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;Z)V

    goto :goto_d

    .line 8059
    :cond_23
    invoke-interface {v2, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_d

    .line 200
    :cond_27
    invoke-virtual {p0}, Lcom/airbnb/lottie/f/c;->e()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/airbnb/lottie/f/c;->g()F

    move-result v0

    goto :goto_36

    :cond_32
    invoke-virtual {p0}, Lcom/airbnb/lottie/f/c;->f()F

    move-result v0

    :goto_36
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/f/c;->a(I)V

    .line 201
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/lottie/f/c;->c:J

    const/4 v0, 0x0

    .line 202
    iput v0, p0, Lcom/airbnb/lottie/f/c;->j:I

    .line 203
    invoke-direct {p0}, Lcom/airbnb/lottie/f/c;->i()V

    return-void
.end method

.method public final doFrame(J)V
    .registers 9

    .line 80
    invoke-direct {p0}, Lcom/airbnb/lottie/f/c;->i()V

    .line 81
    iget-object p1, p0, Lcom/airbnb/lottie/f/c;->g:Lcom/airbnb/lottie/d;

    if-eqz p1, :cond_106

    invoke-virtual {p0}, Lcom/airbnb/lottie/f/c;->isRunning()Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_106

    .line 85
    :cond_f
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    .line 86
    iget-wide v0, p0, Lcom/airbnb/lottie/f/c;->c:J

    sub-long v0, p1, v0

    .line 2119
    iget-object v2, p0, Lcom/airbnb/lottie/f/c;->g:Lcom/airbnb/lottie/d;

    if-nez v2, :cond_1f

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_2e

    :cond_1f
    const v2, 0x4e6e6b28    # 1.0E9f

    .line 2122
    iget-object v3, p0, Lcom/airbnb/lottie/f/c;->g:Lcom/airbnb/lottie/d;

    .line 3113
    iget v3, v3, Lcom/airbnb/lottie/d;->k:F

    div-float/2addr v2, v3

    .line 2122
    iget v3, p0, Lcom/airbnb/lottie/f/c;->b:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v2, v3

    :goto_2e
    long-to-float v0, v0

    div-float/2addr v0, v2

    .line 90
    iget v1, p0, Lcom/airbnb/lottie/f/c;->d:F

    invoke-virtual {p0}, Lcom/airbnb/lottie/f/c;->e()Z

    move-result v2

    if-eqz v2, :cond_39

    neg-float v0, v0

    :cond_39
    add-float/2addr v1, v0

    iput v1, p0, Lcom/airbnb/lottie/f/c;->d:F

    .line 91
    iget v0, p0, Lcom/airbnb/lottie/f/c;->d:F

    invoke-virtual {p0}, Lcom/airbnb/lottie/f/c;->f()F

    move-result v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/f/c;->g()F

    move-result v2

    cmpl-float v1, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v1, :cond_52

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_52

    move v0, v4

    goto :goto_53

    :cond_52
    move v0, v3

    :goto_53
    xor-int/2addr v0, v4

    .line 92
    iget v1, p0, Lcom/airbnb/lottie/f/c;->d:F

    invoke-virtual {p0}, Lcom/airbnb/lottie/f/c;->f()F

    move-result v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/f/c;->g()F

    move-result v5

    invoke-static {v1, v2, v5}, Lcom/airbnb/lottie/f/e;->a(FFF)F

    move-result v1

    iput v1, p0, Lcom/airbnb/lottie/f/c;->d:F

    .line 94
    iput-wide p1, p0, Lcom/airbnb/lottie/f/c;->c:J

    .line 96
    invoke-virtual {p0}, Lcom/airbnb/lottie/f/c;->a()V

    const/4 v1, 0x2

    if-eqz v0, :cond_c9

    .line 98
    invoke-virtual {p0}, Lcom/airbnb/lottie/f/c;->getRepeatCount()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_8c

    iget v0, p0, Lcom/airbnb/lottie/f/c;->j:I

    invoke-virtual {p0}, Lcom/airbnb/lottie/f/c;->getRepeatCount()I

    move-result v2

    if-lt v0, v2, :cond_8c

    .line 99
    invoke-virtual {p0}, Lcom/airbnb/lottie/f/c;->g()F

    move-result p1

    iput p1, p0, Lcom/airbnb/lottie/f/c;->d:F

    .line 4262
    invoke-virtual {p0, v4}, Lcom/airbnb/lottie/f/c;->b(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/airbnb/lottie/f/c;->e()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/f/c;->a(Z)V

    goto :goto_c9

    .line 5065
    :cond_8c
    iget-object v0, p0, Lcom/airbnb/lottie/f/a;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_92
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    .line 5066
    invoke-interface {v2, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    goto :goto_92

    .line 104
    :cond_a2
    iget v0, p0, Lcom/airbnb/lottie/f/c;->j:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/airbnb/lottie/f/c;->j:I

    .line 105
    invoke-virtual {p0}, Lcom/airbnb/lottie/f/c;->getRepeatMode()I

    move-result v0

    if-ne v0, v1, :cond_b6

    .line 106
    iget-boolean v0, p0, Lcom/airbnb/lottie/f/c;->i:Z

    xor-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/airbnb/lottie/f/c;->i:Z

    .line 107
    invoke-direct {p0}, Lcom/airbnb/lottie/f/c;->h()V

    goto :goto_c7

    .line 109
    :cond_b6
    invoke-virtual {p0}, Lcom/airbnb/lottie/f/c;->e()Z

    move-result v0

    if-eqz v0, :cond_c1

    invoke-virtual {p0}, Lcom/airbnb/lottie/f/c;->g()F

    move-result v0

    goto :goto_c5

    :cond_c1
    invoke-virtual {p0}, Lcom/airbnb/lottie/f/c;->f()F

    move-result v0

    :goto_c5
    iput v0, p0, Lcom/airbnb/lottie/f/c;->d:F

    .line 111
    :goto_c7
    iput-wide p1, p0, Lcom/airbnb/lottie/f/c;->c:J

    .line 5274
    :cond_c9
    :goto_c9
    iget-object p1, p0, Lcom/airbnb/lottie/f/c;->g:Lcom/airbnb/lottie/d;

    if-eqz p1, :cond_105

    .line 5277
    iget p1, p0, Lcom/airbnb/lottie/f/c;->d:F

    iget p2, p0, Lcom/airbnb/lottie/f/c;->e:F

    cmpg-float p1, p1, p2

    if-ltz p1, :cond_de

    iget p1, p0, Lcom/airbnb/lottie/f/c;->d:F

    iget p2, p0, Lcom/airbnb/lottie/f/c;->f:F

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_de

    goto :goto_105

    .line 5278
    :cond_de
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    iget v0, p0, Lcom/airbnb/lottie/f/c;->e:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p2, v3

    iget v0, p0, Lcom/airbnb/lottie/f/c;->f:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p2, v4

    iget p0, p0, Lcom/airbnb/lottie/f/c;->d:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p2, v1

    const-string p0, "Frame must be [%f,%f]. It is %f"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_105
    :goto_105
    return-void

    :cond_106
    :goto_106
    return-void
.end method

.method public final e()Z
    .registers 2

    .line 9185
    iget p0, p0, Lcom/airbnb/lottie/f/c;->b:F

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final f()F
    .registers 3

    .line 240
    iget-object v0, p0, Lcom/airbnb/lottie/f/c;->g:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 243
    :cond_6
    iget v0, p0, Lcom/airbnb/lottie/f/c;->e:F

    const/high16 v1, -0x31000000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/airbnb/lottie/f/c;->g:Lcom/airbnb/lottie/d;

    .line 10104
    iget p0, p0, Lcom/airbnb/lottie/d;->i:F

    return p0

    .line 243
    :cond_13
    iget p0, p0, Lcom/airbnb/lottie/f/c;->e:F

    return p0
.end method

.method public final g()F
    .registers 3

    .line 247
    iget-object v0, p0, Lcom/airbnb/lottie/f/c;->g:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 250
    :cond_6
    iget v0, p0, Lcom/airbnb/lottie/f/c;->f:F

    const/high16 v1, 0x4f000000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/airbnb/lottie/f/c;->g:Lcom/airbnb/lottie/d;

    .line 10109
    iget p0, p0, Lcom/airbnb/lottie/d;->j:F

    return p0

    .line 250
    :cond_13
    iget p0, p0, Lcom/airbnb/lottie/f/c;->f:F

    return p0
.end method

.method public final getAnimatedFraction()F
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/airbnb/lottie/f/c;->g:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 60
    :cond_6
    invoke-virtual {p0}, Lcom/airbnb/lottie/f/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 61
    invoke-virtual {p0}, Lcom/airbnb/lottie/f/c;->g()F

    move-result v0

    iget v1, p0, Lcom/airbnb/lottie/f/c;->d:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/f/c;->g()F

    move-result v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/f/c;->f()F

    move-result p0

    sub-float/2addr v1, p0

    div-float/2addr v0, v1

    return v0

    .line 63
    :cond_1e
    iget v0, p0, Lcom/airbnb/lottie/f/c;->d:F

    invoke-virtual {p0}, Lcom/airbnb/lottie/f/c;->f()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/f/c;->g()F

    move-result v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/f/c;->f()F

    move-result p0

    sub-float/2addr v1, p0

    div-float/2addr v0, v1

    return v0
.end method

.method public final getAnimatedValue()Ljava/lang/Object;
    .registers 1

    .line 37
    invoke-virtual {p0}, Lcom/airbnb/lottie/f/c;->b()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final getDuration()J
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/airbnb/lottie/f/c;->g:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_7
    iget-object p0, p0, Lcom/airbnb/lottie/f/c;->g:Lcom/airbnb/lottie/d;

    invoke-virtual {p0}, Lcom/airbnb/lottie/d;->a()F

    move-result p0

    float-to-long v0, p0

    return-wide v0
.end method

.method public final isRunning()Z
    .registers 1

    .line 76
    iget-boolean p0, p0, Lcom/airbnb/lottie/f/c;->h:Z

    return p0
.end method

.method public final setRepeatMode(I)V
    .registers 3

    .line 189
    invoke-super {p0, p1}, Lcom/airbnb/lottie/f/a;->setRepeatMode(I)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_10

    .line 190
    iget-boolean p1, p0, Lcom/airbnb/lottie/f/c;->i:Z

    if-eqz p1, :cond_10

    const/4 p1, 0x0

    .line 191
    iput-boolean p1, p0, Lcom/airbnb/lottie/f/c;->i:Z

    .line 192
    invoke-direct {p0}, Lcom/airbnb/lottie/f/c;->h()V

    :cond_10
    return-void
.end method
