.class final Landroidx/core/widget/a$a;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:F

.field d:F

.field e:J

.field f:J

.field g:I

.field h:I

.field i:J

.field j:F

.field k:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 757
    iput-wide v0, p0, Landroidx/core/widget/a$a;->e:J

    const-wide/16 v0, -0x1

    .line 758
    iput-wide v0, p0, Landroidx/core/widget/a$a;->i:J

    const-wide/16 v0, 0x0

    .line 759
    iput-wide v0, p0, Landroidx/core/widget/a$a;->f:J

    const/4 v0, 0x0

    .line 760
    iput v0, p0, Landroidx/core/widget/a$a;->g:I

    .line 761
    iput v0, p0, Landroidx/core/widget/a$a;->h:I

    return-void
.end method


# virtual methods
.method final a(J)F
    .locals 6

    .line 800
    iget-wide v0, p0, Landroidx/core/widget/a$a;->e:J

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 802
    :cond_0
    iget-wide v2, p0, Landroidx/core/widget/a$a;->i:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz v0, :cond_2

    iget-wide v3, p0, Landroidx/core/widget/a$a;->i:J

    cmp-long v0, p1, v3

    if-gez v0, :cond_1

    goto :goto_0

    .line 806
    :cond_1
    iget-wide v3, p0, Landroidx/core/widget/a$a;->i:J

    sub-long/2addr p1, v3

    .line 807
    iget v0, p0, Landroidx/core/widget/a$a;->j:F

    sub-float v0, v2, v0

    iget v3, p0, Landroidx/core/widget/a$a;->j:F

    long-to-float p1, p1

    iget p0, p0, Landroidx/core/widget/a$a;->k:I

    int-to-float p0, p0

    div-float/2addr p1, p0

    .line 808
    invoke-static {p1, v1, v2}, Landroidx/core/widget/a;->a(FFF)F

    move-result p0

    mul-float/2addr v3, p0

    add-float/2addr v0, v3

    return v0

    .line 803
    :cond_2
    :goto_0
    iget-wide v3, p0, Landroidx/core/widget/a$a;->e:J

    sub-long/2addr p1, v3

    const/high16 v0, 0x3f000000    # 0.5f

    long-to-float p1, p1

    .line 804
    iget p0, p0, Landroidx/core/widget/a$a;->a:I

    int-to-float p0, p0

    div-float/2addr p1, p0

    invoke-static {p1, v1, v2}, Landroidx/core/widget/a;->a(FFF)F

    move-result p0

    mul-float/2addr p0, v0

    return p0
.end method

.method public final a()V
    .locals 4

    .line 788
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 789
    iget-wide v2, p0, Landroidx/core/widget/a$a;->e:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    iget v3, p0, Landroidx/core/widget/a$a;->b:I

    invoke-static {v2, v3}, Landroidx/core/widget/a;->a(II)I

    move-result v2

    iput v2, p0, Landroidx/core/widget/a$a;->k:I

    .line 790
    invoke-virtual {p0, v0, v1}, Landroidx/core/widget/a$a;->a(J)F

    move-result v2

    iput v2, p0, Landroidx/core/widget/a$a;->j:F

    .line 791
    iput-wide v0, p0, Landroidx/core/widget/a$a;->i:J

    return-void
.end method

.method public final b()I
    .locals 1

    .line 857
    iget v0, p0, Landroidx/core/widget/a$a;->c:F

    iget p0, p0, Landroidx/core/widget/a$a;->c:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    div-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public final c()I
    .locals 1

    .line 861
    iget v0, p0, Landroidx/core/widget/a$a;->d:F

    iget p0, p0, Landroidx/core/widget/a$a;->d:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    div-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method
