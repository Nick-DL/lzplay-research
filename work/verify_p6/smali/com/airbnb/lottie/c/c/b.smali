.class public final Lcom/airbnb/lottie/c/c/b;
.super Lcom/airbnb/lottie/c/c/a;
.source "CompositionLayer.java"


# instance fields
.field private g:Lcom/airbnb/lottie/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/a/b/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/c/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/graphics/RectF;

.field private final j:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/c/c/d;Ljava/util/List;Lcom/airbnb/lottie/d;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/f;",
            "Lcom/airbnb/lottie/c/c/d;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/c/c/d;",
            ">;",
            "Lcom/airbnb/lottie/d;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/c/c/a;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/c/c/d;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/c/c/b;->h:Ljava/util/List;

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/c/c/b;->i:Landroid/graphics/RectF;

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/c/c/b;->j:Landroid/graphics/RectF;

    .line 1169
    iget-object p2, p2, Lcom/airbnb/lottie/c/c/d;->s:Lcom/airbnb/lottie/c/a/b;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 38
    invoke-virtual {p2}, Lcom/airbnb/lottie/c/a/b;->a()Lcom/airbnb/lottie/a/b/a;

    move-result-object p2

    iput-object p2, p0, Lcom/airbnb/lottie/c/c/b;->g:Lcom/airbnb/lottie/a/b/a;

    .line 39
    iget-object p2, p0, Lcom/airbnb/lottie/c/c/b;->g:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/c/c/b;->a(Lcom/airbnb/lottie/a/b/a;)V

    .line 41
    iget-object p2, p0, Lcom/airbnb/lottie/c/c/b;->g:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/a/b/a;->a(Lcom/airbnb/lottie/a/b/a$a;)V

    goto :goto_0

    .line 43
    :cond_0
    iput-object v0, p0, Lcom/airbnb/lottie/c/c/b;->g:Lcom/airbnb/lottie/a/b/a;

    .line 46
    :goto_0
    new-instance p2, Landroidx/b/d;

    .line 2117
    iget-object v1, p4, Lcom/airbnb/lottie/d;->g:Ljava/util/List;

    .line 47
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p2, v1}, Landroidx/b/d;-><init>(I)V

    .line 50
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object v2, v0

    :goto_1
    const/4 v3, 0x0

    if-ltz v1, :cond_3

    .line 51
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/c/c/d;

    .line 3043
    sget-object v5, Lcom/airbnb/lottie/c/c/a$2;->a:[I

    .line 3129
    iget-object v6, v4, Lcom/airbnb/lottie/c/c/d;->e:Lcom/airbnb/lottie/c/c/d$a;

    .line 3043
    invoke-virtual {v6}, Lcom/airbnb/lottie/c/c/d$a;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 3060
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknown layer type "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4129
    iget-object v6, v4, Lcom/airbnb/lottie/c/c/d;->e:Lcom/airbnb/lottie/c/c/d$a;

    .line 3060
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)V

    move-object v5, v0

    goto :goto_2

    .line 3056
    :pswitch_0
    new-instance v5, Lcom/airbnb/lottie/c/c/h;

    invoke-direct {v5, p1, v4}, Lcom/airbnb/lottie/c/c/h;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/c/c/d;)V

    goto :goto_2

    .line 3054
    :pswitch_1
    new-instance v5, Lcom/airbnb/lottie/c/c/e;

    invoke-direct {v5, p1, v4}, Lcom/airbnb/lottie/c/c/e;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/c/c/d;)V

    goto :goto_2

    .line 3052
    :pswitch_2
    new-instance v5, Lcom/airbnb/lottie/c/c/c;

    invoke-direct {v5, p1, v4}, Lcom/airbnb/lottie/c/c/c;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/c/c/d;)V

    goto :goto_2

    .line 3050
    :pswitch_3
    new-instance v5, Lcom/airbnb/lottie/c/c/g;

    invoke-direct {v5, p1, v4}, Lcom/airbnb/lottie/c/c/g;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/c/c/d;)V

    goto :goto_2

    .line 3047
    :pswitch_4
    new-instance v5, Lcom/airbnb/lottie/c/c/b;

    .line 4113
    iget-object v6, v4, Lcom/airbnb/lottie/c/c/d;->g:Ljava/lang/String;

    .line 4123
    iget-object v7, p4, Lcom/airbnb/lottie/d;->b:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3048
    invoke-direct {v5, p1, v4, v6, p4}, Lcom/airbnb/lottie/c/c/b;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/c/c/d;Ljava/util/List;Lcom/airbnb/lottie/d;)V

    goto :goto_2

    .line 3045
    :pswitch_5
    new-instance v5, Lcom/airbnb/lottie/c/c/f;

    invoke-direct {v5, p1, v4}, Lcom/airbnb/lottie/c/c/f;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/c/c/d;)V

    :goto_2
    if-eqz v5, :cond_2

    .line 5125
    iget-object v6, v5, Lcom/airbnb/lottie/c/c/a;->c:Lcom/airbnb/lottie/c/c/d;

    .line 6105
    iget-wide v6, v6, Lcom/airbnb/lottie/c/c/d;->d:J

    .line 56
    invoke-virtual {p2, v6, v7, v5}, Landroidx/b/d;->b(JLjava/lang/Object;)V

    if-eqz v2, :cond_1

    .line 6129
    iput-object v5, v2, Lcom/airbnb/lottie/c/c/a;->d:Lcom/airbnb/lottie/c/c/a;

    move-object v2, v0

    goto :goto_3

    .line 61
    :cond_1
    iget-object v6, p0, Lcom/airbnb/lottie/c/c/b;->h:Ljava/util/List;

    invoke-interface {v6, v3, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 62
    sget-object v3, Lcom/airbnb/lottie/c/c/b$1;->a:[I

    .line 6133
    iget v4, v4, Lcom/airbnb/lottie/c/c/d;->u:I

    add-int/lit8 v4, v4, -0x1

    .line 62
    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    goto :goto_3

    :pswitch_6
    move-object v2, v5

    :cond_2
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 71
    :cond_3
    :goto_4
    invoke-virtual {p2}, Landroidx/b/d;->b()I

    move-result p0

    if-ge v3, p0, :cond_5

    .line 72
    invoke-virtual {p2, v3}, Landroidx/b/d;->a(I)J

    move-result-wide p0

    .line 7109
    invoke-virtual {p2, p0, p1, v0}, Landroidx/b/d;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 73
    check-cast p0, Lcom/airbnb/lottie/c/c/a;

    if-eqz p0, :cond_4

    .line 7125
    iget-object p1, p0, Lcom/airbnb/lottie/c/c/a;->c:Lcom/airbnb/lottie/c/c/d;

    .line 7137
    iget-wide p3, p1, Lcom/airbnb/lottie/c/c/d;->f:J

    .line 8109
    invoke-virtual {p2, p3, p4, v0}, Landroidx/b/d;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 80
    check-cast p1, Lcom/airbnb/lottie/c/c/a;

    if-eqz p1, :cond_4

    .line 8137
    iput-object p1, p0, Lcom/airbnb/lottie/c/c/a;->e:Lcom/airbnb/lottie/c/c/a;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public final a(F)V
    .locals 2

    .line 127
    invoke-super {p0, p1}, Lcom/airbnb/lottie/c/c/a;->a(F)V

    .line 128
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/b;->g:Lcom/airbnb/lottie/a/b/a;

    if-eqz v0, :cond_0

    .line 129
    iget-object p1, p0, Lcom/airbnb/lottie/c/c/b;->b:Lcom/airbnb/lottie/f;

    .line 9708
    iget-object p1, p1, Lcom/airbnb/lottie/f;->a:Lcom/airbnb/lottie/d;

    .line 129
    invoke-virtual {p1}, Lcom/airbnb/lottie/d;->a()F

    move-result p1

    .line 130
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/b;->g:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {v0}, Lcom/airbnb/lottie/a/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    long-to-float v0, v0

    div-float p1, v0, p1

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/b;->c:Lcom/airbnb/lottie/c/c/d;

    .line 10093
    iget v0, v0, Lcom/airbnb/lottie/c/c/d;->m:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/b;->c:Lcom/airbnb/lottie/c/c/d;

    .line 11093
    iget v0, v0, Lcom/airbnb/lottie/c/c/d;->m:F

    div-float/2addr p1, v0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/b;->c:Lcom/airbnb/lottie/c/c/d;

    .line 11097
    iget v1, v0, Lcom/airbnb/lottie/c/c/d;->n:F

    iget-object v0, v0, Lcom/airbnb/lottie/c/c/d;->b:Lcom/airbnb/lottie/d;

    invoke-virtual {v0}, Lcom/airbnb/lottie/d;->b()F

    move-result v0

    div-float/2addr v1, v0

    sub-float/2addr p1, v1

    .line 138
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 139
    iget-object v1, p0, Lcom/airbnb/lottie/c/c/b;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/c/c/a;

    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/c/c/a;->a(F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 5

    .line 108
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/c/c/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 109
    iget-object p2, p0, Lcom/airbnb/lottie/c/c/b;->i:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 110
    iget-object p2, p0, Lcom/airbnb/lottie/c/c/b;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_1

    .line 111
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/b;->h:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/c/c/a;

    .line 112
    iget-object v1, p0, Lcom/airbnb/lottie/c/c/b;->i:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/airbnb/lottie/c/c/b;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/lottie/c/c/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 113
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/b;->i:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_1

    .line 116
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/airbnb/lottie/c/c/b;->i:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 117
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/airbnb/lottie/c/c/b;->i:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    .line 118
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/airbnb/lottie/c/c/b;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    .line 119
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/airbnb/lottie/c/c/b;->i:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    .line 120
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 116
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
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

    .line 191
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/c/c/a;->a(Ljava/lang/Object;Lcom/airbnb/lottie/g/c;)V

    .line 193
    sget-object v0, Lcom/airbnb/lottie/i;->w:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 195
    iput-object p1, p0, Lcom/airbnb/lottie/c/c/b;->g:Lcom/airbnb/lottie/a/b/a;

    return-void

    .line 197
    :cond_0
    new-instance p1, Lcom/airbnb/lottie/a/b/p;

    invoke-direct {p1, p2}, Lcom/airbnb/lottie/a/b/p;-><init>(Lcom/airbnb/lottie/g/c;)V

    iput-object p1, p0, Lcom/airbnb/lottie/c/c/b;->g:Lcom/airbnb/lottie/a/b/a;

    .line 198
    iget-object p1, p0, Lcom/airbnb/lottie/c/c/b;->g:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/c/c/b;->a(Lcom/airbnb/lottie/a/b/a;)V

    :cond_1
    return-void
.end method

.method final b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4

    const-string v0, "CompositionLayer#draw"

    .line 88
    invoke-static {v0}, Lcom/airbnb/lottie/c;->c(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 90
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/b;->j:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/airbnb/lottie/c/c/b;->c:Lcom/airbnb/lottie/c/c/d;

    .line 9117
    iget v1, v1, Lcom/airbnb/lottie/c/c/d;->o:I

    int-to-float v1, v1

    .line 90
    iget-object v2, p0, Lcom/airbnb/lottie/c/c/b;->c:Lcom/airbnb/lottie/c/c/d;

    .line 9121
    iget v2, v2, Lcom/airbnb/lottie/c/c/d;->p:I

    int-to-float v2, v2

    const/4 v3, 0x0

    .line 90
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 91
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/b;->j:Landroid/graphics/RectF;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 93
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 95
    iget-object v2, p0, Lcom/airbnb/lottie/c/c/b;->j:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/airbnb/lottie/c/c/b;->j:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v2

    goto :goto_1

    :cond_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_1

    .line 99
    iget-object v2, p0, Lcom/airbnb/lottie/c/c/b;->h:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/c/c/a;

    .line 100
    invoke-virtual {v2, p1, p2, p3}, Lcom/airbnb/lottie/c/c/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const-string p0, "CompositionLayer#draw"

    .line 104
    invoke-static {p0}, Lcom/airbnb/lottie/c;->d(Ljava/lang/String;)F

    return-void
.end method

.method protected final b(Lcom/airbnb/lottie/c/e;ILjava/util/List;Lcom/airbnb/lottie/c/e;)V
    .locals 2
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

    const/4 v0, 0x0

    .line 183
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/c/c/b;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/airbnb/lottie/c/c/b;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/c/c/a;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/airbnb/lottie/c/c/a;->a(Lcom/airbnb/lottie/c/e;ILjava/util/List;Lcom/airbnb/lottie/c/e;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
