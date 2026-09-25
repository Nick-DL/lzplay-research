.class public final Lcom/airbnb/lottie/a/a/f;
.super Ljava/lang/Object;
.source "FillContent.java"

# interfaces
.implements Lcom/airbnb/lottie/a/a/d;
.implements Lcom/airbnb/lottie/a/a/j;
.implements Lcom/airbnb/lottie/a/b/a$a;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Landroid/graphics/Paint;

.field private final c:Lcom/airbnb/lottie/c/c/a;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/a/a/l;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/airbnb/lottie/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/a/b/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/airbnb/lottie/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/a/b/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/airbnb/lottie/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/a/b/a<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/airbnb/lottie/f;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/c/c/a;Lcom/airbnb/lottie/c/b/m;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/a/a/f;->a:Landroid/graphics/Path;

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/a/a/f;->b:Landroid/graphics/Paint;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/a/a/f;->e:Ljava/util/List;

    .line 40
    iput-object p2, p0, Lcom/airbnb/lottie/a/a/f;->c:Lcom/airbnb/lottie/c/c/a;

    .line 1030
    iget-object v0, p3, Lcom/airbnb/lottie/c/b/m;->b:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/airbnb/lottie/a/a/f;->d:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/airbnb/lottie/a/a/f;->i:Lcom/airbnb/lottie/f;

    .line 1034
    iget-object p1, p3, Lcom/airbnb/lottie/c/b/m;->c:Lcom/airbnb/lottie/c/a/a;

    if-eqz p1, :cond_1

    .line 1038
    iget-object p1, p3, Lcom/airbnb/lottie/c/b/m;->d:Lcom/airbnb/lottie/c/a/d;

    if-nez p1, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/airbnb/lottie/a/a/f;->a:Landroid/graphics/Path;

    .line 1042
    iget-object v0, p3, Lcom/airbnb/lottie/c/b/m;->a:Landroid/graphics/Path$FillType;

    .line 49
    invoke-virtual {p1, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 2034
    iget-object p1, p3, Lcom/airbnb/lottie/c/b/m;->c:Lcom/airbnb/lottie/c/a/a;

    .line 51
    invoke-virtual {p1}, Lcom/airbnb/lottie/c/a/a;->a()Lcom/airbnb/lottie/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/a/a/f;->f:Lcom/airbnb/lottie/a/b/a;

    .line 52
    iget-object p1, p0, Lcom/airbnb/lottie/a/a/f;->f:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/a/b/a;->a(Lcom/airbnb/lottie/a/b/a$a;)V

    .line 53
    iget-object p1, p0, Lcom/airbnb/lottie/a/a/f;->f:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/c/c/a;->a(Lcom/airbnb/lottie/a/b/a;)V

    .line 2038
    iget-object p1, p3, Lcom/airbnb/lottie/c/b/m;->d:Lcom/airbnb/lottie/c/a/d;

    .line 54
    invoke-virtual {p1}, Lcom/airbnb/lottie/c/a/d;->a()Lcom/airbnb/lottie/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/a/a/f;->g:Lcom/airbnb/lottie/a/b/a;

    .line 55
    iget-object p1, p0, Lcom/airbnb/lottie/a/a/f;->g:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/a/b/a;->a(Lcom/airbnb/lottie/a/b/a$a;)V

    .line 56
    iget-object p0, p0, Lcom/airbnb/lottie/a/a/f;->g:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/c/c/a;->a(Lcom/airbnb/lottie/a/b/a;)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/airbnb/lottie/a/a/f;->f:Lcom/airbnb/lottie/a/b/a;

    .line 45
    iput-object p1, p0, Lcom/airbnb/lottie/a/a/f;->g:Lcom/airbnb/lottie/a/b/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/airbnb/lottie/a/a/f;->i:Lcom/airbnb/lottie/f;

    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->invalidateSelf()V

    return-void
.end method

.method public final a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    const-string v0, "FillContent#draw"

    .line 77
    invoke-static {v0}, Lcom/airbnb/lottie/c;->c(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/airbnb/lottie/a/a/f;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/airbnb/lottie/a/a/f;->f:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {v1}, Lcom/airbnb/lottie/a/b/a;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p3, p3

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p3, v0

    .line 79
    iget-object v1, p0, Lcom/airbnb/lottie/a/a/f;->g:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {v1}, Lcom/airbnb/lottie/a/b/a;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p3, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p3, v1

    mul-float/2addr p3, v0

    float-to-int p3, p3

    .line 80
    iget-object v0, p0, Lcom/airbnb/lottie/a/a/f;->b:Landroid/graphics/Paint;

    invoke-static {p3}, Lcom/airbnb/lottie/f/e;->a(I)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 82
    iget-object p3, p0, Lcom/airbnb/lottie/a/a/f;->h:Lcom/airbnb/lottie/a/b/a;

    if-eqz p3, :cond_0

    .line 83
    iget-object p3, p0, Lcom/airbnb/lottie/a/a/f;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/airbnb/lottie/a/a/f;->h:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {v0}, Lcom/airbnb/lottie/a/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 86
    :cond_0
    iget-object p3, p0, Lcom/airbnb/lottie/a/a/f;->a:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/a/a/f;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/airbnb/lottie/a/a/f;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/airbnb/lottie/a/a/f;->e:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/a/a/l;

    invoke-interface {v1}, Lcom/airbnb/lottie/a/a/l;->e()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 91
    :cond_1
    iget-object p2, p0, Lcom/airbnb/lottie/a/a/f;->a:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/airbnb/lottie/a/a/f;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const-string p0, "FillContent#draw"

    .line 93
    invoke-static {p0}, Lcom/airbnb/lottie/c;->d(Ljava/lang/String;)F

    return-void
.end method

.method public final a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/airbnb/lottie/a/a/f;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    move v1, v0

    .line 98
    :goto_0
    iget-object v2, p0, Lcom/airbnb/lottie/a/a/f;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/airbnb/lottie/a/a/f;->a:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/airbnb/lottie/a/a/f;->e:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/a/a/l;

    invoke-interface {v3}, Lcom/airbnb/lottie/a/a/l;->e()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/a/a/f;->a:Landroid/graphics/Path;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 103
    iget p0, p1, Landroid/graphics/RectF;->left:F

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p0, p2

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p2

    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p2

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, p2

    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public final a(Lcom/airbnb/lottie/c/e;ILjava/util/List;Lcom/airbnb/lottie/c/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/c/e;",
            "I",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/c/e;",
            ">;",
            "Lcom/airbnb/lottie/c/e;",
            ")V"
        }
    .end annotation

    .line 113
    invoke-static {p1, p2, p3, p4, p0}, Lcom/airbnb/lottie/f/e;->a(Lcom/airbnb/lottie/c/e;ILjava/util/List;Lcom/airbnb/lottie/c/e;Lcom/airbnb/lottie/a/a/j;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/airbnb/lottie/g/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/airbnb/lottie/g/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 119
    sget-object v0, Lcom/airbnb/lottie/i;->a:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 120
    iget-object p0, p0, Lcom/airbnb/lottie/a/a/f;->f:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/a/b/a;->a(Lcom/airbnb/lottie/g/c;)V

    return-void

    .line 121
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/i;->d:Ljava/lang/Integer;

    if-ne p1, v0, :cond_1

    .line 122
    iget-object p0, p0, Lcom/airbnb/lottie/a/a/f;->g:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/a/b/a;->a(Lcom/airbnb/lottie/g/c;)V

    return-void

    .line 123
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/i;->x:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_3

    if-nez p2, :cond_2

    const/4 p1, 0x0

    .line 125
    iput-object p1, p0, Lcom/airbnb/lottie/a/a/f;->h:Lcom/airbnb/lottie/a/b/a;

    return-void

    .line 127
    :cond_2
    new-instance p1, Lcom/airbnb/lottie/a/b/p;

    invoke-direct {p1, p2}, Lcom/airbnb/lottie/a/b/p;-><init>(Lcom/airbnb/lottie/g/c;)V

    iput-object p1, p0, Lcom/airbnb/lottie/a/a/f;->h:Lcom/airbnb/lottie/a/b/a;

    .line 129
    iget-object p1, p0, Lcom/airbnb/lottie/a/a/f;->h:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/a/b/a;->a(Lcom/airbnb/lottie/a/b/a$a;)V

    .line 130
    iget-object p1, p0, Lcom/airbnb/lottie/a/a/f;->c:Lcom/airbnb/lottie/c/c/a;

    iget-object p0, p0, Lcom/airbnb/lottie/a/a/f;->h:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/c/c/a;->a(Lcom/airbnb/lottie/a/b/a;)V

    :cond_3
    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/a/a/b;",
            ">;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/a/a/b;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 64
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 65
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/a/a/b;

    .line 66
    instance-of v1, v0, Lcom/airbnb/lottie/a/a/l;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/airbnb/lottie/a/a/f;->e:Ljava/util/List;

    check-cast v0, Lcom/airbnb/lottie/a/a/l;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/airbnb/lottie/a/a/f;->d:Ljava/lang/String;

    return-object p0
.end method
