.class public abstract Lcom/airbnb/lottie/c/c/a;
.super Ljava/lang/Object;
.source "BaseLayer.java"

# interfaces
.implements Lcom/airbnb/lottie/a/a/d;
.implements Lcom/airbnb/lottie/a/b/a$a;
.implements Lcom/airbnb/lottie/c/f;


# instance fields
.field final a:Landroid/graphics/Matrix;

.field final b:Lcom/airbnb/lottie/f;

.field final c:Lcom/airbnb/lottie/c/c/d;

.field d:Lcom/airbnb/lottie/c/c/a;

.field e:Lcom/airbnb/lottie/c/c/a;

.field final f:Lcom/airbnb/lottie/a/b/o;

.field private final g:Landroid/graphics/Path;

.field private final h:Landroid/graphics/Matrix;

.field private final i:Landroid/graphics/Paint;

.field private final j:Landroid/graphics/Paint;

.field private final k:Landroid/graphics/Paint;

.field private final l:Landroid/graphics/Paint;

.field private final m:Landroid/graphics/Paint;

.field private final n:Landroid/graphics/RectF;

.field private final o:Landroid/graphics/RectF;

.field private final p:Landroid/graphics/RectF;

.field private final q:Landroid/graphics/RectF;

.field private final r:Ljava/lang/String;

.field private s:Lcom/airbnb/lottie/a/b/g;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/c/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/a/b/a<",
            "**>;>;"
        }
    .end annotation
.end field

.field private v:Z


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/c/c/d;)V
    .registers 6

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/c/c/a;->g:Landroid/graphics/Path;

    .line 66
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/c/c/a;->h:Landroid/graphics/Matrix;

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/c/c/a;->i:Landroid/graphics/Paint;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/c/c/a;->j:Landroid/graphics/Paint;

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/c/c/a;->k:Landroid/graphics/Paint;

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/c/c/a;->l:Landroid/graphics/Paint;

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/c/c/a;->m:Landroid/graphics/Paint;

    .line 72
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/c/c/a;->n:Landroid/graphics/RectF;

    .line 73
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/c/c/a;->o:Landroid/graphics/RectF;

    .line 74
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/c/c/a;->p:Landroid/graphics/RectF;

    .line 75
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/c/c/a;->q:Landroid/graphics/RectF;

    .line 77
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/c/c/a;->a:Landroid/graphics/Matrix;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/c/c/a;->u:Ljava/util/List;

    .line 87
    iput-boolean v1, p0, Lcom/airbnb/lottie/c/c/a;->v:Z

    .line 90
    iput-object p1, p0, Lcom/airbnb/lottie/c/c/a;->b:Lcom/airbnb/lottie/f;

    .line 91
    iput-object p2, p0, Lcom/airbnb/lottie/c/c/a;->c:Lcom/airbnb/lottie/c/c/d;

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1109
    iget-object v0, p2, Lcom/airbnb/lottie/c/c/d;->c:Ljava/lang/String;

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#draw"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/c/c/a;->r:Ljava/lang/String;

    .line 93
    iget-object p1, p0, Lcom/airbnb/lottie/c/c/a;->m:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 94
    iget-object p1, p0, Lcom/airbnb/lottie/c/c/a;->j:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 95
    iget-object p1, p0, Lcom/airbnb/lottie/c/c/a;->k:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1133
    iget p1, p2, Lcom/airbnb/lottie/c/c/d;->u:I

    .line 96
    sget v0, Lcom/airbnb/lottie/c/c/d$b;->Invert$f97b8e:I

    if-ne p1, v0, :cond_b1

    .line 97
    iget-object p1, p0, Lcom/airbnb/lottie/c/c/a;->l:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_bd

    .line 99
    :cond_b1
    iget-object p1, p0, Lcom/airbnb/lottie/c/c/a;->l:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1145
    :goto_bd
    iget-object p1, p2, Lcom/airbnb/lottie/c/c/d;->i:Lcom/airbnb/lottie/c/a/l;

    .line 102
    invoke-virtual {p1}, Lcom/airbnb/lottie/c/a/l;->a()Lcom/airbnb/lottie/a/b/o;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/c/c/a;->f:Lcom/airbnb/lottie/a/b/o;

    .line 103
    iget-object p1, p0, Lcom/airbnb/lottie/c/c/a;->f:Lcom/airbnb/lottie/a/b/o;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/a/b/o;->a(Lcom/airbnb/lottie/a/b/a$a;)V

    .line 2125
    iget-object p1, p2, Lcom/airbnb/lottie/c/c/d;->h:Ljava/util/List;

    if-eqz p1, :cond_112

    .line 3125
    iget-object p1, p2, Lcom/airbnb/lottie/c/c/d;->h:Ljava/util/List;

    .line 105
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_112

    .line 106
    new-instance p1, Lcom/airbnb/lottie/a/b/g;

    .line 4125
    iget-object p2, p2, Lcom/airbnb/lottie/c/c/d;->h:Ljava/util/List;

    .line 106
    invoke-direct {p1, p2}, Lcom/airbnb/lottie/a/b/g;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/airbnb/lottie/c/c/a;->s:Lcom/airbnb/lottie/a/b/g;

    .line 107
    iget-object p1, p0, Lcom/airbnb/lottie/c/c/a;->s:Lcom/airbnb/lottie/a/b/g;

    .line 5033
    iget-object p1, p1, Lcom/airbnb/lottie/a/b/g;->a:Ljava/util/List;

    .line 107
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/a/b/a;

    .line 110
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/a/b/a;->a(Lcom/airbnb/lottie/a/b/a$a;)V

    goto :goto_e7

    .line 112
    :cond_f7
    iget-object p1, p0, Lcom/airbnb/lottie/c/c/a;->s:Lcom/airbnb/lottie/a/b/g;

    .line 5037
    iget-object p1, p1, Lcom/airbnb/lottie/a/b/g;->b:Ljava/util/List;

    .line 112
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_ff
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_112

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/a/b/a;

    .line 113
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/c/c/a;->a(Lcom/airbnb/lottie/a/b/a;)V

    .line 114
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/a/b/a;->a(Lcom/airbnb/lottie/a/b/a$a;)V

    goto :goto_ff

    .line 5141
    :cond_112
    iget-object p1, p0, Lcom/airbnb/lottie/c/c/a;->c:Lcom/airbnb/lottie/c/c/d;

    .line 6101
    iget-object p1, p1, Lcom/airbnb/lottie/c/c/d;->t:Ljava/util/List;

    .line 5141
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_148

    .line 5142
    new-instance p1, Lcom/airbnb/lottie/a/b/c;

    iget-object p2, p0, Lcom/airbnb/lottie/c/c/a;->c:Lcom/airbnb/lottie/c/c/d;

    .line 7101
    iget-object p2, p2, Lcom/airbnb/lottie/c/c/d;->t:Ljava/util/List;

    .line 5143
    invoke-direct {p1, p2}, Lcom/airbnb/lottie/a/b/c;-><init>(Ljava/util/List;)V

    .line 8036
    iput-boolean v1, p1, Lcom/airbnb/lottie/a/b/a;->b:Z

    .line 5145
    new-instance p2, Lcom/airbnb/lottie/c/c/a$1;

    invoke-direct {p2, p0, p1}, Lcom/airbnb/lottie/c/c/a$1;-><init>(Lcom/airbnb/lottie/c/c/a;Lcom/airbnb/lottie/a/b/c;)V

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/a/b/c;->a(Lcom/airbnb/lottie/a/b/a$a;)V

    .line 5150
    invoke-virtual {p1}, Lcom/airbnb/lottie/a/b/c;->d()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v0

    if-nez p2, :cond_140

    goto :goto_141

    :cond_140
    const/4 v1, 0x0

    :goto_141
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/c/c/a;->a(Z)V

    .line 5151
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/c/c/a;->a(Lcom/airbnb/lottie/a/b/a;)V

    return-void

    .line 5153
    :cond_148
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/c/c/a;->a(Z)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .registers 10

    const-string v0, "Layer#clearLayer"

    .line 259
    invoke-static {v0}, Lcom/airbnb/lottie/c;->c(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->n:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v3, v0, v1

    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->n:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float v4, v0, v1

    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->n:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float v5, v0, v1

    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->n:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float v6, v0, v1

    iget-object v7, p0, Lcom/airbnb/lottie/c/c/a;->m:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const-string p0, "Layer#clearLayer"

    .line 262
    invoke-static {p0}, Lcom/airbnb/lottie/c;->d(Ljava/lang/String;)F

    return-void
.end method

.method private static a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_11

    if-eqz p3, :cond_b

    const/16 p3, 0x1f

    goto :goto_d

    :cond_b
    const/16 p3, 0x13

    .line 166
    :goto_d
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    return-void

    .line 168
    :cond_11
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    return-void
.end method

.method private b(F)V
    .registers 3

    .line 253
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->b:Lcom/airbnb/lottie/f;

    .line 10708
    iget-object v0, v0, Lcom/airbnb/lottie/f;->a:Lcom/airbnb/lottie/d;

    .line 11086
    iget-object v0, v0, Lcom/airbnb/lottie/d;->a:Lcom/airbnb/lottie/l;

    .line 254
    iget-object p0, p0, Lcom/airbnb/lottie/c/c/a;->c:Lcom/airbnb/lottie/c/c/d;

    .line 11109
    iget-object p0, p0, Lcom/airbnb/lottie/c/c/d;->c:Ljava/lang/String;

    .line 254
    invoke-virtual {v0, p0, p1}, Lcom/airbnb/lottie/l;->a(Ljava/lang/String;F)V

    return-void
.end method

.method private b(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .registers 12

    .line 266
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->o:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 267
    invoke-direct {p0}, Lcom/airbnb/lottie/c/c/a;->d()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 271
    :cond_d
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->s:Lcom/airbnb/lottie/a/b/g;

    .line 12029
    iget-object v0, v0, Lcom/airbnb/lottie/a/b/g;->c:Ljava/util/List;

    .line 271
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_17
    if-ge v2, v0, :cond_93

    .line 273
    iget-object v3, p0, Lcom/airbnb/lottie/c/c/a;->s:Lcom/airbnb/lottie/a/b/g;

    .line 13029
    iget-object v3, v3, Lcom/airbnb/lottie/a/b/g;->c:Ljava/util/List;

    .line 273
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/c/b/g;

    .line 274
    iget-object v4, p0, Lcom/airbnb/lottie/c/c/a;->s:Lcom/airbnb/lottie/a/b/g;

    .line 13033
    iget-object v4, v4, Lcom/airbnb/lottie/a/b/g;->a:Ljava/util/List;

    .line 274
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/a/b/a;

    .line 275
    invoke-virtual {v4}, Lcom/airbnb/lottie/a/b/a;->d()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    .line 276
    iget-object v5, p0, Lcom/airbnb/lottie/c/c/a;->g:Landroid/graphics/Path;

    invoke-virtual {v5, v4}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 277
    iget-object v4, p0, Lcom/airbnb/lottie/c/c/a;->g:Landroid/graphics/Path;

    invoke-virtual {v4, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 279
    sget-object v4, Lcom/airbnb/lottie/c/c/a$2;->b:[I

    .line 14024
    iget v3, v3, Lcom/airbnb/lottie/c/b/g;->a:I

    add-int/lit8 v3, v3, -0x1

    .line 279
    aget v3, v4, v3

    packed-switch v3, :pswitch_data_c0

    .line 289
    iget-object v3, p0, Lcom/airbnb/lottie/c/c/a;->g:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/airbnb/lottie/c/c/a;->q:Landroid/graphics/RectF;

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    if-nez v2, :cond_5b

    .line 294
    iget-object v3, p0, Lcom/airbnb/lottie/c/c/a;->o:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/airbnb/lottie/c/c/a;->q:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_90

    :pswitch_59
    return-void

    :pswitch_5a
    return-void

    .line 296
    :cond_5b
    iget-object v3, p0, Lcom/airbnb/lottie/c/c/a;->o:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/airbnb/lottie/c/c/a;->o:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/airbnb/lottie/c/c/a;->q:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    .line 297
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v5, p0, Lcom/airbnb/lottie/c/c/a;->o:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/airbnb/lottie/c/c/a;->q:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    .line 298
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget-object v6, p0, Lcom/airbnb/lottie/c/c/a;->o:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/airbnb/lottie/c/c/a;->q:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    .line 299
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget-object v7, p0, Lcom/airbnb/lottie/c/c/a;->o:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/airbnb/lottie/c/c/a;->q:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    .line 300
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 296
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_90
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 306
    :cond_93
    iget p2, p1, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->o:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 307
    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/airbnb/lottie/c/c/a;->o:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 308
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/airbnb/lottie/c/c/a;->o:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    .line 309
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p0, p0, Lcom/airbnb/lottie/c/c/a;->o:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    .line 310
    invoke-static {v2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    .line 306
    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void

    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_59
    .end packed-switch
.end method

.method private c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 10

    .line 345
    sget-object v0, Lcom/airbnb/lottie/c/c/a$2;->b:[I

    add-int/lit8 v1, p3, -0x1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    .line 354
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->j:Landroid/graphics/Paint;

    goto :goto_e

    .line 347
    :cond_c
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->k:Landroid/graphics/Paint;

    .line 358
    :goto_e
    iget-object v2, p0, Lcom/airbnb/lottie/c/c/a;->s:Lcom/airbnb/lottie/a/b/g;

    .line 14029
    iget-object v2, v2, Lcom/airbnb/lottie/a/b/g;->c:Ljava/util/List;

    .line 358
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_18
    if-ge v4, v2, :cond_2c

    .line 362
    iget-object v5, p0, Lcom/airbnb/lottie/c/c/a;->s:Lcom/airbnb/lottie/a/b/g;

    .line 15029
    iget-object v5, v5, Lcom/airbnb/lottie/a/b/g;->c:Ljava/util/List;

    .line 362
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/c/b/g;

    .line 16024
    iget v5, v5, Lcom/airbnb/lottie/c/b/g;->a:I

    if-ne v5, p3, :cond_29

    goto :goto_2d

    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_2c
    move v1, v3

    :goto_2d
    if-nez v1, :cond_30

    return-void

    :cond_30
    const-string v1, "Layer#drawMask"

    .line 371
    invoke-static {v1}, Lcom/airbnb/lottie/c;->c(Ljava/lang/String;)V

    const-string v1, "Layer#saveLayer"

    .line 372
    invoke-static {v1}, Lcom/airbnb/lottie/c;->c(Ljava/lang/String;)V

    .line 373
    iget-object v1, p0, Lcom/airbnb/lottie/c/c/a;->n:Landroid/graphics/RectF;

    invoke-static {p1, v1, v0, v3}, Lcom/airbnb/lottie/c/c/a;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    const-string v0, "Layer#saveLayer"

    .line 374
    invoke-static {v0}, Lcom/airbnb/lottie/c;->d(Ljava/lang/String;)F

    .line 375
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/c/c/a;->a(Landroid/graphics/Canvas;)V

    :goto_47
    if-ge v3, v2, :cond_a5

    .line 378
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->s:Lcom/airbnb/lottie/a/b/g;

    .line 16029
    iget-object v0, v0, Lcom/airbnb/lottie/a/b/g;->c:Ljava/util/List;

    .line 378
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/c/b/g;

    .line 17024
    iget v0, v0, Lcom/airbnb/lottie/c/b/g;->a:I

    if-ne v0, p3, :cond_a2

    .line 382
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->s:Lcom/airbnb/lottie/a/b/g;

    .line 17033
    iget-object v0, v0, Lcom/airbnb/lottie/a/b/g;->a:Ljava/util/List;

    .line 382
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/a/b/a;

    .line 383
    invoke-virtual {v0}, Lcom/airbnb/lottie/a/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    .line 384
    iget-object v1, p0, Lcom/airbnb/lottie/c/c/a;->g:Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 385
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->g:Landroid/graphics/Path;

    invoke-virtual {v0, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 386
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->s:Lcom/airbnb/lottie/a/b/g;

    .line 17037
    iget-object v0, v0, Lcom/airbnb/lottie/a/b/g;->b:Ljava/util/List;

    .line 387
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/a/b/a;

    .line 388
    iget-object v1, p0, Lcom/airbnb/lottie/c/c/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    .line 389
    iget-object v4, p0, Lcom/airbnb/lottie/c/c/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/airbnb/lottie/a/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const v5, 0x40233333    # 2.55f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 390
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->g:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/airbnb/lottie/c/c/a;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 391
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_a2
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    :cond_a5
    const-string p0, "Layer#restoreLayer"

    .line 393
    invoke-static {p0}, Lcom/airbnb/lottie/c;->c(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const-string p0, "Layer#restoreLayer"

    .line 395
    invoke-static {p0}, Lcom/airbnb/lottie/c;->d(Ljava/lang/String;)F

    const-string p0, "Layer#drawMask"

    .line 396
    invoke-static {p0}, Lcom/airbnb/lottie/c;->d(Ljava/lang/String;)F

    return-void
.end method

.method private c()Z
    .registers 1

    .line 133
    iget-object p0, p0, Lcom/airbnb/lottie/c/c/a;->d:Lcom/airbnb/lottie/c/c/a;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private d()Z
    .registers 2

    .line 400
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->s:Lcom/airbnb/lottie/a/b/g;

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/airbnb/lottie/c/c/a;->s:Lcom/airbnb/lottie/a/b/g;

    .line 18033
    iget-object p0, p0, Lcom/airbnb/lottie/a/b/g;->a:Ljava/util/List;

    .line 400
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()V
    .registers 1

    .line 8158
    iget-object p0, p0, Lcom/airbnb/lottie/c/c/a;->b:Lcom/airbnb/lottie/f;

    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->invalidateSelf()V

    return-void
.end method

.method a(F)V
    .registers 5

    .line 412
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->f:Lcom/airbnb/lottie/a/b/o;

    .line 19080
    iget-object v1, v0, Lcom/airbnb/lottie/a/b/o;->a:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/a/b/a;->a(F)V

    .line 19081
    iget-object v1, v0, Lcom/airbnb/lottie/a/b/o;->b:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/a/b/a;->a(F)V

    .line 19082
    iget-object v1, v0, Lcom/airbnb/lottie/a/b/o;->c:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/a/b/a;->a(F)V

    .line 19083
    iget-object v1, v0, Lcom/airbnb/lottie/a/b/o;->d:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/a/b/a;->a(F)V

    .line 19084
    iget-object v1, v0, Lcom/airbnb/lottie/a/b/o;->e:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/a/b/a;->a(F)V

    .line 19085
    iget-object v1, v0, Lcom/airbnb/lottie/a/b/o;->f:Lcom/airbnb/lottie/a/b/a;

    if-eqz v1, :cond_24

    .line 19086
    iget-object v1, v0, Lcom/airbnb/lottie/a/b/o;->f:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/a/b/a;->a(F)V

    .line 19088
    :cond_24
    iget-object v1, v0, Lcom/airbnb/lottie/a/b/o;->g:Lcom/airbnb/lottie/a/b/a;

    if-eqz v1, :cond_2d

    .line 19089
    iget-object v0, v0, Lcom/airbnb/lottie/a/b/o;->g:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/a/b/a;->a(F)V

    .line 413
    :cond_2d
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->s:Lcom/airbnb/lottie/a/b/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_4d

    move v0, v1

    .line 414
    :goto_33
    iget-object v2, p0, Lcom/airbnb/lottie/c/c/a;->s:Lcom/airbnb/lottie/a/b/g;

    .line 20033
    iget-object v2, v2, Lcom/airbnb/lottie/a/b/g;->a:Ljava/util/List;

    .line 414
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4d

    .line 415
    iget-object v2, p0, Lcom/airbnb/lottie/c/c/a;->s:Lcom/airbnb/lottie/a/b/g;

    .line 21033
    iget-object v2, v2, Lcom/airbnb/lottie/a/b/g;->a:Ljava/util/List;

    .line 415
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {v2, p1}, Lcom/airbnb/lottie/a/b/a;->a(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 418
    :cond_4d
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->c:Lcom/airbnb/lottie/c/c/d;

    .line 21093
    iget v0, v0, Lcom/airbnb/lottie/c/c/d;->m:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_5b

    .line 419
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->c:Lcom/airbnb/lottie/c/c/d;

    .line 22093
    iget v0, v0, Lcom/airbnb/lottie/c/c/d;->m:F

    div-float/2addr p1, v0

    .line 421
    :cond_5b
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->d:Lcom/airbnb/lottie/c/c/a;

    if-eqz v0, :cond_6b

    .line 423
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->d:Lcom/airbnb/lottie/c/c/a;

    iget-object v0, v0, Lcom/airbnb/lottie/c/c/a;->c:Lcom/airbnb/lottie/c/c/d;

    .line 23093
    iget v0, v0, Lcom/airbnb/lottie/c/c/d;->m:F

    .line 424
    iget-object v2, p0, Lcom/airbnb/lottie/c/c/a;->d:Lcom/airbnb/lottie/c/c/a;

    mul-float/2addr v0, p1

    invoke-virtual {v2, v0}, Lcom/airbnb/lottie/c/c/a;->a(F)V

    .line 426
    :cond_6b
    :goto_6b
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_81

    .line 427
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->u:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/a/b/a;->a(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    :cond_81
    return-void
.end method

.method public final a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 12

    .line 183
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/airbnb/lottie/c;->c(Ljava/lang/String;)V

    .line 184
    iget-boolean v0, p0, Lcom/airbnb/lottie/c/c/a;->v:Z

    if-nez v0, :cond_f

    .line 185
    iget-object p0, p0, Lcom/airbnb/lottie/c/c/a;->r:Ljava/lang/String;

    invoke-static {p0}, Lcom/airbnb/lottie/c;->d(Ljava/lang/String;)F

    return-void

    .line 8432
    :cond_f
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->t:Ljava/util/List;

    if-nez v0, :cond_31

    .line 8435
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->e:Lcom/airbnb/lottie/c/c/a;

    if-nez v0, :cond_1e

    .line 8436
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/c/c/a;->t:Ljava/util/List;

    goto :goto_31

    .line 8440
    :cond_1e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/c/c/a;->t:Ljava/util/List;

    .line 8441
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->e:Lcom/airbnb/lottie/c/c/a;

    :goto_27
    if-eqz v0, :cond_31

    .line 8443
    iget-object v1, p0, Lcom/airbnb/lottie/c/c/a;->t:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8444
    iget-object v0, v0, Lcom/airbnb/lottie/c/c/a;->e:Lcom/airbnb/lottie/c/c/a;

    goto :goto_27

    :cond_31
    :goto_31
    const-string v0, "Layer#parentMatrix"

    .line 189
    invoke-static {v0}, Lcom/airbnb/lottie/c;->c(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 191
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 192
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_48
    if-ltz v0, :cond_60

    .line 193
    iget-object v2, p0, Lcom/airbnb/lottie/c/c/a;->h:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/airbnb/lottie/c/c/a;->t:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/c/c/a;

    iget-object v3, v3, Lcom/airbnb/lottie/c/c/a;->f:Lcom/airbnb/lottie/a/b/o;

    invoke-virtual {v3}, Lcom/airbnb/lottie/a/b/o;->a()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_48

    :cond_60
    const-string v0, "Layer#parentMatrix"

    .line 195
    invoke-static {v0}, Lcom/airbnb/lottie/c;->d(Ljava/lang/String;)F

    int-to-float p3, p3

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p3, v0

    .line 196
    iget-object v2, p0, Lcom/airbnb/lottie/c/c/a;->f:Lcom/airbnb/lottie/a/b/o;

    .line 9094
    iget-object v2, v2, Lcom/airbnb/lottie/a/b/o;->e:Lcom/airbnb/lottie/a/b/a;

    .line 197
    invoke-virtual {v2}, Lcom/airbnb/lottie/a/b/a;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p3, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p3, v2

    mul-float/2addr p3, v0

    float-to-int p3, p3

    .line 198
    invoke-direct {p0}, Lcom/airbnb/lottie/c/c/a;->c()Z

    move-result v0

    if-nez v0, :cond_ae

    invoke-direct {p0}, Lcom/airbnb/lottie/c/c/a;->d()Z

    move-result v0

    if-nez v0, :cond_ae

    .line 199
    iget-object p2, p0, Lcom/airbnb/lottie/c/c/a;->h:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->f:Lcom/airbnb/lottie/a/b/o;

    invoke-virtual {v0}, Lcom/airbnb/lottie/a/b/o;->a()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    const-string p2, "Layer#drawLayer"

    .line 200
    invoke-static {p2}, Lcom/airbnb/lottie/c;->c(Ljava/lang/String;)V

    .line 201
    iget-object p2, p0, Lcom/airbnb/lottie/c/c/a;->h:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/lottie/c/c/a;->b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    const-string p1, "Layer#drawLayer"

    .line 202
    invoke-static {p1}, Lcom/airbnb/lottie/c;->d(Ljava/lang/String;)F

    .line 203
    iget-object p1, p0, Lcom/airbnb/lottie/c/c/a;->r:Ljava/lang/String;

    invoke-static {p1}, Lcom/airbnb/lottie/c;->d(Ljava/lang/String;)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/c/c/a;->b(F)V

    return-void

    :cond_ae
    const-string v0, "Layer#computeBounds"

    .line 207
    invoke-static {v0}, Lcom/airbnb/lottie/c;->c(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->n:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 209
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->n:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/airbnb/lottie/c/c/a;->h:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, v3}, Lcom/airbnb/lottie/c/c/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 210
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->n:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/airbnb/lottie/c/c/a;->h:Landroid/graphics/Matrix;

    .line 9315
    invoke-direct {p0}, Lcom/airbnb/lottie/c/c/a;->c()Z

    move-result v4

    if-eqz v4, :cond_104

    .line 9318
    iget-object v4, p0, Lcom/airbnb/lottie/c/c/a;->c:Lcom/airbnb/lottie/c/c/d;

    .line 10133
    iget v4, v4, Lcom/airbnb/lottie/c/c/d;->u:I

    .line 9318
    sget v5, Lcom/airbnb/lottie/c/c/d$b;->Invert$f97b8e:I

    if-eq v4, v5, :cond_104

    .line 9324
    iget-object v4, p0, Lcom/airbnb/lottie/c/c/a;->d:Lcom/airbnb/lottie/c/c/a;

    iget-object v5, p0, Lcom/airbnb/lottie/c/c/a;->p:Landroid/graphics/RectF;

    invoke-virtual {v4, v5, v3}, Lcom/airbnb/lottie/c/c/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 9325
    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/airbnb/lottie/c/c/a;->p:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    .line 9326
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/airbnb/lottie/c/c/a;->p:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    .line 9327
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lcom/airbnb/lottie/c/c/a;->p:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    .line 9328
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v7, p0, Lcom/airbnb/lottie/c/c/a;->p:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    .line 9329
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 9325
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 212
    :cond_104
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->h:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/airbnb/lottie/c/c/a;->f:Lcom/airbnb/lottie/a/b/o;

    invoke-virtual {v3}, Lcom/airbnb/lottie/a/b/o;->a()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 213
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->n:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/airbnb/lottie/c/c/a;->h:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, v3}, Lcom/airbnb/lottie/c/c/a;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 215
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->n:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    const-string v0, "Layer#computeBounds"

    .line 216
    invoke-static {v0}, Lcom/airbnb/lottie/c;->d(Ljava/lang/String;)F

    const-string v0, "Layer#saveLayer"

    .line 218
    invoke-static {v0}, Lcom/airbnb/lottie/c;->c(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->n:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/airbnb/lottie/c/c/a;->i:Landroid/graphics/Paint;

    invoke-static {p1, v0, v2, v1}, Lcom/airbnb/lottie/c/c/a;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    const-string v0, "Layer#saveLayer"

    .line 220
    invoke-static {v0}, Lcom/airbnb/lottie/c;->d(Ljava/lang/String;)F

    .line 223
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/c/c/a;->a(Landroid/graphics/Canvas;)V

    const-string v0, "Layer#drawLayer"

    .line 224
    invoke-static {v0}, Lcom/airbnb/lottie/c;->c(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->h:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v0, p3}, Lcom/airbnb/lottie/c/c/a;->b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    const-string v0, "Layer#drawLayer"

    .line 226
    invoke-static {v0}, Lcom/airbnb/lottie/c;->d(Ljava/lang/String;)F

    .line 228
    invoke-direct {p0}, Lcom/airbnb/lottie/c/c/a;->d()Z

    move-result v0

    if-eqz v0, :cond_164

    .line 229
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->h:Landroid/graphics/Matrix;

    .line 10336
    sget v1, Lcom/airbnb/lottie/c/b/g$a;->MaskModeAdd$2eee3dc9:I

    invoke-direct {p0, p1, v0, v1}, Lcom/airbnb/lottie/c/c/a;->c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 10338
    sget v1, Lcom/airbnb/lottie/c/b/g$a;->MaskModeIntersect$2eee3dc9:I

    invoke-direct {p0, p1, v0, v1}, Lcom/airbnb/lottie/c/c/a;->c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 10339
    sget v1, Lcom/airbnb/lottie/c/b/g$a;->MaskModeSubtract$2eee3dc9:I

    invoke-direct {p0, p1, v0, v1}, Lcom/airbnb/lottie/c/c/a;->c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 232
    :cond_164
    invoke-direct {p0}, Lcom/airbnb/lottie/c/c/a;->c()Z

    move-result v0

    if-eqz v0, :cond_19b

    const-string v0, "Layer#drawMatte"

    .line 233
    invoke-static {v0}, Lcom/airbnb/lottie/c;->c(Ljava/lang/String;)V

    const-string v0, "Layer#saveLayer"

    .line 234
    invoke-static {v0}, Lcom/airbnb/lottie/c;->c(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->n:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/airbnb/lottie/c/c/a;->l:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/airbnb/lottie/c/c/a;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    const-string v0, "Layer#saveLayer"

    .line 236
    invoke-static {v0}, Lcom/airbnb/lottie/c;->d(Ljava/lang/String;)F

    .line 237
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/c/c/a;->a(Landroid/graphics/Canvas;)V

    .line 239
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->d:Lcom/airbnb/lottie/c/c/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/airbnb/lottie/c/c/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    const-string p2, "Layer#restoreLayer"

    .line 240
    invoke-static {p2}, Lcom/airbnb/lottie/c;->c(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const-string p2, "Layer#restoreLayer"

    .line 242
    invoke-static {p2}, Lcom/airbnb/lottie/c;->d(Ljava/lang/String;)F

    const-string p2, "Layer#drawMatte"

    .line 243
    invoke-static {p2}, Lcom/airbnb/lottie/c;->d(Ljava/lang/String;)F

    :cond_19b
    const-string p2, "Layer#restoreLayer"

    .line 246
    invoke-static {p2}, Lcom/airbnb/lottie/c;->c(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const-string p1, "Layer#restoreLayer"

    .line 248
    invoke-static {p1}, Lcom/airbnb/lottie/c;->d(Ljava/lang/String;)F

    .line 249
    iget-object p1, p0, Lcom/airbnb/lottie/c/c/a;->r:Ljava/lang/String;

    invoke-static {p1}, Lcom/airbnb/lottie/c;->d(Ljava/lang/String;)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/c/c/a;->b(F)V

    return-void
.end method

.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .registers 3

    .line 177
    iget-object p1, p0, Lcom/airbnb/lottie/c/c/a;->a:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 178
    iget-object p1, p0, Lcom/airbnb/lottie/c/c/a;->a:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/airbnb/lottie/c/c/a;->f:Lcom/airbnb/lottie/a/b/o;

    invoke-virtual {p0}, Lcom/airbnb/lottie/a/b/o;->a()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public final a(Lcom/airbnb/lottie/a/b/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/a/b/a<",
            "**>;)V"
        }
    .end annotation

    .line 173
    iget-object p0, p0, Lcom/airbnb/lottie/c/c/a;->u:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/airbnb/lottie/c/e;ILjava/util/List;Lcom/airbnb/lottie/c/e;)V
    .registers 7
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

    .line 23449
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->c:Lcom/airbnb/lottie/c/c/d;

    .line 24109
    iget-object v0, v0, Lcom/airbnb/lottie/c/c/d;->c:Ljava/lang/String;

    .line 458
    invoke-virtual {p1, v0, p2}, Lcom/airbnb/lottie/c/e;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    const-string v0, "__container"

    .line 24449
    iget-object v1, p0, Lcom/airbnb/lottie/c/c/a;->c:Lcom/airbnb/lottie/c/c/d;

    .line 25109
    iget-object v1, v1, Lcom/airbnb/lottie/c/c/d;->c:Ljava/lang/String;

    .line 462
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 25449
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->c:Lcom/airbnb/lottie/c/c/d;

    .line 26109
    iget-object v0, v0, Lcom/airbnb/lottie/c/c/d;->c:Ljava/lang/String;

    .line 463
    invoke-virtual {p4, v0}, Lcom/airbnb/lottie/c/e;->a(Ljava/lang/String;)Lcom/airbnb/lottie/c/e;

    move-result-object p4

    .line 26449
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->c:Lcom/airbnb/lottie/c/c/d;

    .line 27109
    iget-object v0, v0, Lcom/airbnb/lottie/c/c/d;->c:Ljava/lang/String;

    .line 465
    invoke-virtual {p1, v0, p2}, Lcom/airbnb/lottie/c/e;->c(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 466
    invoke-virtual {p4, p0}, Lcom/airbnb/lottie/c/e;->a(Lcom/airbnb/lottie/c/f;)Lcom/airbnb/lottie/c/e;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27449
    :cond_30
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->c:Lcom/airbnb/lottie/c/c/d;

    .line 28109
    iget-object v0, v0, Lcom/airbnb/lottie/c/c/d;->c:Ljava/lang/String;

    .line 470
    invoke-virtual {p1, v0, p2}, Lcom/airbnb/lottie/c/e;->d(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 28449
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a;->c:Lcom/airbnb/lottie/c/c/d;

    .line 29109
    iget-object v0, v0, Lcom/airbnb/lottie/c/c/d;->c:Ljava/lang/String;

    .line 471
    invoke-virtual {p1, v0, p2}, Lcom/airbnb/lottie/c/e;->b(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr p2, v0

    .line 472
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/airbnb/lottie/c/c/a;->b(Lcom/airbnb/lottie/c/e;ILjava/util/List;Lcom/airbnb/lottie/c/e;)V

    :cond_46
    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/airbnb/lottie/g/c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/airbnb/lottie/g/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 483
    iget-object p0, p0, Lcom/airbnb/lottie/c/c/a;->f:Lcom/airbnb/lottie/a/b/o;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/a/b/o;->a(Ljava/lang/Object;Lcom/airbnb/lottie/g/c;)Z

    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/List;)V
    .registers 3
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

    return-void
.end method

.method final a(Z)V
    .registers 3

    .line 404
    iget-boolean v0, p0, Lcom/airbnb/lottie/c/c/a;->v:Z

    if-eq p1, v0, :cond_b

    .line 405
    iput-boolean p1, p0, Lcom/airbnb/lottie/c/c/a;->v:Z

    .line 18158
    iget-object p0, p0, Lcom/airbnb/lottie/c/c/a;->b:Lcom/airbnb/lottie/f;

    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->invalidateSelf()V

    :cond_b
    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 1

    .line 449
    iget-object p0, p0, Lcom/airbnb/lottie/c/c/a;->c:Lcom/airbnb/lottie/c/c/d;

    .line 23109
    iget-object p0, p0, Lcom/airbnb/lottie/c/c/d;->c:Ljava/lang/String;

    return-object p0
.end method

.method abstract b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
.end method

.method b(Lcom/airbnb/lottie/c/e;ILjava/util/List;Lcom/airbnb/lottie/c/e;)V
    .registers 5
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

    return-void
.end method
