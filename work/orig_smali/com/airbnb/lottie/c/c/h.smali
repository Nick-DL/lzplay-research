.class public final Lcom/airbnb/lottie/c/c/h;
.super Lcom/airbnb/lottie/c/c/a;
.source "TextLayer.java"


# instance fields
.field private final g:[C

.field private final h:Landroid/graphics/RectF;

.field private final i:Landroid/graphics/Matrix;

.field private final j:Landroid/graphics/Paint;

.field private final k:Landroid/graphics/Paint;

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/airbnb/lottie/c/d;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/a/a/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m:Lcom/airbnb/lottie/a/b/n;

.field private final n:Lcom/airbnb/lottie/f;

.field private final o:Lcom/airbnb/lottie/d;

.field private p:Lcom/airbnb/lottie/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/a/b/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/airbnb/lottie/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/a/b/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/airbnb/lottie/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/a/b/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/airbnb/lottie/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/a/b/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/c/c/d;)V
    .registers 4

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/c/c/a;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/c/c/d;)V

    const/4 v0, 0x1

    .line 33
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/airbnb/lottie/c/c/h;->g:[C

    .line 34
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/c/c/h;->h:Landroid/graphics/RectF;

    .line 35
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/c/c/h;->i:Landroid/graphics/Matrix;

    .line 36
    new-instance v0, Lcom/airbnb/lottie/c/c/h$1;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/c/c/h$1;-><init>(Lcom/airbnb/lottie/c/c/h;)V

    iput-object v0, p0, Lcom/airbnb/lottie/c/c/h;->j:Landroid/graphics/Paint;

    .line 39
    new-instance v0, Lcom/airbnb/lottie/c/c/h$2;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/c/c/h$2;-><init>(Lcom/airbnb/lottie/c/c/h;)V

    iput-object v0, p0, Lcom/airbnb/lottie/c/c/h;->k:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/c/c/h;->l:Ljava/util/Map;

    .line 53
    iput-object p1, p0, Lcom/airbnb/lottie/c/c/h;->n:Lcom/airbnb/lottie/f;

    .line 1089
    iget-object p1, p2, Lcom/airbnb/lottie/c/c/d;->b:Lcom/airbnb/lottie/d;

    .line 54
    iput-object p1, p0, Lcom/airbnb/lottie/c/c/h;->o:Lcom/airbnb/lottie/d;

    .line 1161
    iget-object p1, p2, Lcom/airbnb/lottie/c/c/d;->q:Lcom/airbnb/lottie/c/a/j;

    .line 56
    invoke-virtual {p1}, Lcom/airbnb/lottie/c/a/j;->b()Lcom/airbnb/lottie/a/b/n;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/c/c/h;->m:Lcom/airbnb/lottie/a/b/n;

    .line 57
    iget-object p1, p0, Lcom/airbnb/lottie/c/c/h;->m:Lcom/airbnb/lottie/a/b/n;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/a/b/n;->a(Lcom/airbnb/lottie/a/b/a$a;)V

    .line 58
    iget-object p1, p0, Lcom/airbnb/lottie/c/c/h;->m:Lcom/airbnb/lottie/a/b/n;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/c/c/h;->a(Lcom/airbnb/lottie/a/b/a;)V

    .line 1165
    iget-object p1, p2, Lcom/airbnb/lottie/c/c/d;->r:Lcom/airbnb/lottie/c/a/k;

    if-eqz p1, :cond_5d

    .line 61
    iget-object p2, p1, Lcom/airbnb/lottie/c/a/k;->a:Lcom/airbnb/lottie/c/a/a;

    if-eqz p2, :cond_5d

    .line 62
    iget-object p2, p1, Lcom/airbnb/lottie/c/a/k;->a:Lcom/airbnb/lottie/c/a/a;

    invoke-virtual {p2}, Lcom/airbnb/lottie/c/a/a;->a()Lcom/airbnb/lottie/a/b/a;

    move-result-object p2

    iput-object p2, p0, Lcom/airbnb/lottie/c/c/h;->p:Lcom/airbnb/lottie/a/b/a;

    .line 63
    iget-object p2, p0, Lcom/airbnb/lottie/c/c/h;->p:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/a/b/a;->a(Lcom/airbnb/lottie/a/b/a$a;)V

    .line 64
    iget-object p2, p0, Lcom/airbnb/lottie/c/c/h;->p:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/c/c/h;->a(Lcom/airbnb/lottie/a/b/a;)V

    :cond_5d
    if-eqz p1, :cond_75

    .line 68
    iget-object p2, p1, Lcom/airbnb/lottie/c/a/k;->b:Lcom/airbnb/lottie/c/a/a;

    if-eqz p2, :cond_75

    .line 69
    iget-object p2, p1, Lcom/airbnb/lottie/c/a/k;->b:Lcom/airbnb/lottie/c/a/a;

    invoke-virtual {p2}, Lcom/airbnb/lottie/c/a/a;->a()Lcom/airbnb/lottie/a/b/a;

    move-result-object p2

    iput-object p2, p0, Lcom/airbnb/lottie/c/c/h;->q:Lcom/airbnb/lottie/a/b/a;

    .line 70
    iget-object p2, p0, Lcom/airbnb/lottie/c/c/h;->q:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/a/b/a;->a(Lcom/airbnb/lottie/a/b/a$a;)V

    .line 71
    iget-object p2, p0, Lcom/airbnb/lottie/c/c/h;->q:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/c/c/h;->a(Lcom/airbnb/lottie/a/b/a;)V

    :cond_75
    if-eqz p1, :cond_8d

    .line 74
    iget-object p2, p1, Lcom/airbnb/lottie/c/a/k;->c:Lcom/airbnb/lottie/c/a/b;

    if-eqz p2, :cond_8d

    .line 75
    iget-object p2, p1, Lcom/airbnb/lottie/c/a/k;->c:Lcom/airbnb/lottie/c/a/b;

    invoke-virtual {p2}, Lcom/airbnb/lottie/c/a/b;->a()Lcom/airbnb/lottie/a/b/a;

    move-result-object p2

    iput-object p2, p0, Lcom/airbnb/lottie/c/c/h;->r:Lcom/airbnb/lottie/a/b/a;

    .line 76
    iget-object p2, p0, Lcom/airbnb/lottie/c/c/h;->r:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/a/b/a;->a(Lcom/airbnb/lottie/a/b/a$a;)V

    .line 77
    iget-object p2, p0, Lcom/airbnb/lottie/c/c/h;->r:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/c/c/h;->a(Lcom/airbnb/lottie/a/b/a;)V

    :cond_8d
    if-eqz p1, :cond_a5

    .line 80
    iget-object p2, p1, Lcom/airbnb/lottie/c/a/k;->d:Lcom/airbnb/lottie/c/a/b;

    if-eqz p2, :cond_a5

    .line 81
    iget-object p1, p1, Lcom/airbnb/lottie/c/a/k;->d:Lcom/airbnb/lottie/c/a/b;

    invoke-virtual {p1}, Lcom/airbnb/lottie/c/a/b;->a()Lcom/airbnb/lottie/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/c/c/h;->s:Lcom/airbnb/lottie/a/b/a;

    .line 82
    iget-object p1, p0, Lcom/airbnb/lottie/c/c/h;->s:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/a/b/a;->a(Lcom/airbnb/lottie/a/b/a$a;)V

    .line 83
    iget-object p1, p0, Lcom/airbnb/lottie/c/c/h;->s:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/c/c/h;->a(Lcom/airbnb/lottie/a/b/a;)V

    :cond_a5
    return-void
.end method

.method private static a(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .registers 5

    .line 214
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 217
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_19

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_19

    return-void

    .line 220
    :cond_19
    invoke-virtual {p2, p0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private a(Lcom/airbnb/lottie/c/b;Lcom/airbnb/lottie/c/c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V
    .registers 14

    .line 160
    invoke-static {p3}, Lcom/airbnb/lottie/f/f;->a(Landroid/graphics/Matrix;)F

    move-result p3

    .line 161
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/h;->n:Lcom/airbnb/lottie/f;

    .line 7023
    iget-object v1, p2, Lcom/airbnb/lottie/c/c;->a:Ljava/lang/String;

    .line 7031
    iget-object p2, p2, Lcom/airbnb/lottie/c/c;->c:Ljava/lang/String;

    .line 7872
    invoke-virtual {v0}, Lcom/airbnb/lottie/f;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_13

    move-object v0, v3

    goto :goto_26

    .line 7877
    :cond_13
    iget-object v2, v0, Lcom/airbnb/lottie/f;->h:Lcom/airbnb/lottie/b/a;

    if-nez v2, :cond_24

    .line 7878
    new-instance v2, Lcom/airbnb/lottie/b/a;

    invoke-virtual {v0}, Lcom/airbnb/lottie/f;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v4

    iget-object v5, v0, Lcom/airbnb/lottie/f;->i:Lcom/airbnb/lottie/a;

    invoke-direct {v2, v4, v5}, Lcom/airbnb/lottie/b/a;-><init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/airbnb/lottie/a;)V

    iput-object v2, v0, Lcom/airbnb/lottie/f;->h:Lcom/airbnb/lottie/b/a;

    .line 7881
    :cond_24
    iget-object v0, v0, Lcom/airbnb/lottie/f;->h:Lcom/airbnb/lottie/b/a;

    :goto_26
    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_94

    .line 8055
    iget-object v3, v0, Lcom/airbnb/lottie/b/a;->a:Lcom/airbnb/lottie/c/h;

    .line 9019
    iput-object v1, v3, Lcom/airbnb/lottie/c/h;->a:Ljava/lang/Object;

    .line 9020
    iput-object p2, v3, Lcom/airbnb/lottie/c/h;->b:Ljava/lang/Object;

    .line 8056
    iget-object v3, v0, Lcom/airbnb/lottie/b/a;->b:Ljava/util/Map;

    iget-object v5, v0, Lcom/airbnb/lottie/b/a;->a:Lcom/airbnb/lottie/c/h;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    if-eqz v3, :cond_3d

    goto :goto_94

    .line 9067
    :cond_3d
    iget-object v3, v0, Lcom/airbnb/lottie/b/a;->c:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    if-eqz v3, :cond_48

    goto :goto_66

    .line 9085
    :cond_48
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "fonts/"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/airbnb/lottie/b/a;->f:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 9086
    iget-object v5, v0, Lcom/airbnb/lottie/b/a;->d:Landroid/content/res/AssetManager;

    invoke-static {v5, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 9089
    iget-object v5, v0, Lcom/airbnb/lottie/b/a;->c:Ljava/util/Map;

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_66
    const-string v1, "Italic"

    .line 9095
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v5, "Bold"

    .line 9096
    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz v1, :cond_78

    if-eqz p2, :cond_78

    const/4 p2, 0x3

    goto :goto_81

    :cond_78
    if-eqz v1, :cond_7c

    const/4 p2, 0x2

    goto :goto_81

    :cond_7c
    if-eqz p2, :cond_80

    move p2, v2

    goto :goto_81

    :cond_80
    move p2, v4

    .line 9105
    :goto_81
    invoke-virtual {v3}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    if-ne v1, p2, :cond_88

    goto :goto_8d

    .line 9109
    :cond_88
    invoke-static {v3, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p2

    move-object v3, p2

    .line 8062
    :goto_8d
    iget-object p2, v0, Lcom/airbnb/lottie/b/a;->b:Ljava/util/Map;

    iget-object v0, v0, Lcom/airbnb/lottie/b/a;->a:Lcom/airbnb/lottie/c/h;

    invoke-interface {p2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_94
    :goto_94
    if-nez v3, :cond_97

    return-void

    .line 165
    :cond_97
    iget-object p2, p1, Lcom/airbnb/lottie/c/b;->a:Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/h;->n:Lcom/airbnb/lottie/f;

    .line 9696
    iget-object v0, v0, Lcom/airbnb/lottie/f;->j:Lcom/airbnb/lottie/n;

    if-eqz v0, :cond_bd

    .line 10084
    iget-boolean v1, v0, Lcom/airbnb/lottie/n;->b:Z

    if-eqz v1, :cond_b4

    iget-object v1, v0, Lcom/airbnb/lottie/n;->a:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 10085
    iget-object v0, v0, Lcom/airbnb/lottie/n;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_bd

    .line 10088
    :cond_b4
    iget-boolean v1, v0, Lcom/airbnb/lottie/n;->b:Z

    if-eqz v1, :cond_bd

    .line 10089
    iget-object v0, v0, Lcom/airbnb/lottie/n;->a:Ljava/util/Map;

    invoke-interface {v0, p2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_bd
    :goto_bd
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/h;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 171
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/h;->j:Landroid/graphics/Paint;

    iget-wide v5, p1, Lcom/airbnb/lottie/c/b;->c:D

    invoke-static {}, Lcom/airbnb/lottie/f/f;->a()F

    move-result v1

    float-to-double v7, v1

    mul-double/2addr v5, v7

    double-to-float v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 172
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/h;->k:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/airbnb/lottie/c/c/h;->j:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 173
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/h;->k:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/airbnb/lottie/c/c/h;->j:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    move v0, v4

    .line 174
    :goto_e7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_142

    .line 175
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 11224
    iget-object v3, p0, Lcom/airbnb/lottie/c/c/h;->g:[C

    aput-char v1, v3, v4

    .line 11225
    iget-boolean v3, p1, Lcom/airbnb/lottie/c/b;->k:Z

    if-eqz v3, :cond_108

    .line 11226
    iget-object v3, p0, Lcom/airbnb/lottie/c/c/h;->g:[C

    iget-object v5, p0, Lcom/airbnb/lottie/c/c/h;->j:Landroid/graphics/Paint;

    invoke-static {v3, v5, p4}, Lcom/airbnb/lottie/c/c/h;->a([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 11227
    iget-object v3, p0, Lcom/airbnb/lottie/c/c/h;->g:[C

    iget-object v5, p0, Lcom/airbnb/lottie/c/c/h;->k:Landroid/graphics/Paint;

    invoke-static {v3, v5, p4}, Lcom/airbnb/lottie/c/c/h;->a([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_116

    .line 11229
    :cond_108
    iget-object v3, p0, Lcom/airbnb/lottie/c/c/h;->g:[C

    iget-object v5, p0, Lcom/airbnb/lottie/c/c/h;->k:Landroid/graphics/Paint;

    invoke-static {v3, v5, p4}, Lcom/airbnb/lottie/c/c/h;->a([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 11230
    iget-object v3, p0, Lcom/airbnb/lottie/c/c/h;->g:[C

    iget-object v5, p0, Lcom/airbnb/lottie/c/c/h;->j:Landroid/graphics/Paint;

    invoke-static {v3, v5, p4}, Lcom/airbnb/lottie/c/c/h;->a([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 177
    :goto_116
    iget-object v3, p0, Lcom/airbnb/lottie/c/c/h;->g:[C

    aput-char v1, v3, v4

    .line 178
    iget-object v1, p0, Lcom/airbnb/lottie/c/c/h;->j:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/airbnb/lottie/c/c/h;->g:[C

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .line 180
    iget v3, p1, Lcom/airbnb/lottie/c/b;->e:I

    int-to-float v3, v3

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v3, v5

    .line 181
    iget-object v5, p0, Lcom/airbnb/lottie/c/c/h;->s:Lcom/airbnb/lottie/a/b/a;

    if-eqz v5, :cond_139

    .line 182
    iget-object v5, p0, Lcom/airbnb/lottie/c/c/h;->s:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {v5}, Lcom/airbnb/lottie/a/b/a;->d()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v3, v5

    :cond_139
    mul-float/2addr v3, p3

    add-float/2addr v1, v3

    const/4 v3, 0x0

    .line 185
    invoke-virtual {p4, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e7

    :cond_142
    return-void
.end method

.method private static a([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .registers 11

    .line 235
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 238
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_19

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_19

    return-void

    :cond_19
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v7, p1

    .line 241
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/airbnb/lottie/g/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/airbnb/lottie/g/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 262
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/c/c/a;->a(Ljava/lang/Object;Lcom/airbnb/lottie/g/c;)V

    .line 263
    sget-object v0, Lcom/airbnb/lottie/i;->a:Ljava/lang/Integer;

    if-ne p1, v0, :cond_11

    iget-object v0, p0, Lcom/airbnb/lottie/c/c/h;->p:Lcom/airbnb/lottie/a/b/a;

    if-eqz v0, :cond_11

    .line 264
    iget-object p0, p0, Lcom/airbnb/lottie/c/c/h;->p:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/a/b/a;->a(Lcom/airbnb/lottie/g/c;)V

    return-void

    .line 265
    :cond_11
    sget-object v0, Lcom/airbnb/lottie/i;->b:Ljava/lang/Integer;

    if-ne p1, v0, :cond_1f

    iget-object v0, p0, Lcom/airbnb/lottie/c/c/h;->q:Lcom/airbnb/lottie/a/b/a;

    if-eqz v0, :cond_1f

    .line 266
    iget-object p0, p0, Lcom/airbnb/lottie/c/c/h;->q:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/a/b/a;->a(Lcom/airbnb/lottie/g/c;)V

    return-void

    .line 267
    :cond_1f
    sget-object v0, Lcom/airbnb/lottie/i;->k:Ljava/lang/Float;

    if-ne p1, v0, :cond_2d

    iget-object v0, p0, Lcom/airbnb/lottie/c/c/h;->r:Lcom/airbnb/lottie/a/b/a;

    if-eqz v0, :cond_2d

    .line 268
    iget-object p0, p0, Lcom/airbnb/lottie/c/c/h;->r:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/a/b/a;->a(Lcom/airbnb/lottie/g/c;)V

    return-void

    .line 269
    :cond_2d
    sget-object v0, Lcom/airbnb/lottie/i;->l:Ljava/lang/Float;

    if-ne p1, v0, :cond_3a

    iget-object p1, p0, Lcom/airbnb/lottie/c/c/h;->s:Lcom/airbnb/lottie/a/b/a;

    if-eqz p1, :cond_3a

    .line 270
    iget-object p0, p0, Lcom/airbnb/lottie/c/c/h;->s:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/a/b/a;->a(Lcom/airbnb/lottie/g/c;)V

    :cond_3a
    return-void
.end method

.method final b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 88
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 89
    iget-object v3, v0, Lcom/airbnb/lottie/c/c/h;->n:Lcom/airbnb/lottie/f;

    invoke-virtual {v3}, Lcom/airbnb/lottie/f;->e()Z

    move-result v3

    if-nez v3, :cond_14

    .line 90
    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 92
    :cond_14
    iget-object v3, v0, Lcom/airbnb/lottie/c/c/h;->m:Lcom/airbnb/lottie/a/b/n;

    invoke-virtual {v3}, Lcom/airbnb/lottie/a/b/n;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/c/b;

    .line 93
    iget-object v4, v0, Lcom/airbnb/lottie/c/c/h;->o:Lcom/airbnb/lottie/d;

    .line 2131
    iget-object v4, v4, Lcom/airbnb/lottie/d;->d:Ljava/util/Map;

    .line 93
    iget-object v5, v3, Lcom/airbnb/lottie/c/b;->b:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/c/c;

    if-nez v4, :cond_2e

    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 100
    :cond_2e
    iget-object v5, v0, Lcom/airbnb/lottie/c/c/h;->p:Lcom/airbnb/lottie/a/b/a;

    if-eqz v5, :cond_44

    .line 101
    iget-object v5, v0, Lcom/airbnb/lottie/c/c/h;->j:Landroid/graphics/Paint;

    iget-object v6, v0, Lcom/airbnb/lottie/c/c/h;->p:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {v6}, Lcom/airbnb/lottie/a/b/a;->d()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4b

    .line 103
    :cond_44
    iget-object v5, v0, Lcom/airbnb/lottie/c/c/h;->j:Landroid/graphics/Paint;

    iget v6, v3, Lcom/airbnb/lottie/c/b;->h:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    :goto_4b
    iget-object v5, v0, Lcom/airbnb/lottie/c/c/h;->q:Lcom/airbnb/lottie/a/b/a;

    if-eqz v5, :cond_61

    .line 107
    iget-object v5, v0, Lcom/airbnb/lottie/c/c/h;->k:Landroid/graphics/Paint;

    iget-object v6, v0, Lcom/airbnb/lottie/c/c/h;->q:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {v6}, Lcom/airbnb/lottie/a/b/a;->d()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_68

    .line 109
    :cond_61
    iget-object v5, v0, Lcom/airbnb/lottie/c/c/h;->k:Landroid/graphics/Paint;

    iget v6, v3, Lcom/airbnb/lottie/c/b;->i:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    :goto_68
    iget-object v5, v0, Lcom/airbnb/lottie/c/c/h;->f:Lcom/airbnb/lottie/a/b/o;

    .line 3094
    iget-object v5, v5, Lcom/airbnb/lottie/a/b/o;->e:Lcom/airbnb/lottie/a/b/a;

    .line 111
    invoke-virtual {v5}, Lcom/airbnb/lottie/a/b/a;->d()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    mul-int/lit16 v5, v5, 0xff

    div-int/lit8 v5, v5, 0x64

    .line 112
    iget-object v6, v0, Lcom/airbnb/lottie/c/c/h;->j:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 113
    iget-object v6, v0, Lcom/airbnb/lottie/c/c/h;->k:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 115
    iget-object v5, v0, Lcom/airbnb/lottie/c/c/h;->r:Lcom/airbnb/lottie/a/b/a;

    if-eqz v5, :cond_9a

    .line 116
    iget-object v5, v0, Lcom/airbnb/lottie/c/c/h;->k:Landroid/graphics/Paint;

    iget-object v6, v0, Lcom/airbnb/lottie/c/c/h;->r:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {v6}, Lcom/airbnb/lottie/a/b/a;->d()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_ae

    .line 118
    :cond_9a
    invoke-static/range {p2 .. p2}, Lcom/airbnb/lottie/f/f;->a(Landroid/graphics/Matrix;)F

    move-result v5

    .line 119
    iget-object v6, v0, Lcom/airbnb/lottie/c/c/h;->k:Landroid/graphics/Paint;

    iget-wide v7, v3, Lcom/airbnb/lottie/c/b;->j:D

    invoke-static {}, Lcom/airbnb/lottie/f/f;->a()F

    move-result v9

    float-to-double v9, v9

    mul-double/2addr v7, v9

    float-to-double v9, v5

    mul-double/2addr v7, v9

    double-to-float v5, v7

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 122
    :goto_ae
    iget-object v5, v0, Lcom/airbnb/lottie/c/c/h;->n:Lcom/airbnb/lottie/f;

    invoke-virtual {v5}, Lcom/airbnb/lottie/f;->e()Z

    move-result v5

    if-eqz v5, :cond_1a2

    .line 3133
    iget-wide v5, v3, Lcom/airbnb/lottie/c/b;->c:D

    double-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    .line 3134
    invoke-static/range {p2 .. p2}, Lcom/airbnb/lottie/f/f;->a(Landroid/graphics/Matrix;)F

    move-result v6

    .line 3135
    iget-object v7, v3, Lcom/airbnb/lottie/c/b;->a:Ljava/lang/String;

    const/4 v9, 0x0

    .line 3138
    :goto_c3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_1a5

    .line 3139
    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 4023
    iget-object v11, v4, Lcom/airbnb/lottie/c/c;->a:Ljava/lang/String;

    .line 4031
    iget-object v12, v4, Lcom/airbnb/lottie/c/c;->c:Ljava/lang/String;

    .line 3140
    invoke-static {v10, v11, v12}, Lcom/airbnb/lottie/c/d;->a(CLjava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 3141
    iget-object v11, v0, Lcom/airbnb/lottie/c/c/h;->o:Lcom/airbnb/lottie/d;

    .line 4127
    iget-object v11, v11, Lcom/airbnb/lottie/d;->e:Landroidx/b/h;

    const/4 v12, 0x0

    .line 5109
    invoke-virtual {v11, v10, v12}, Landroidx/b/h;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 3141
    check-cast v10, Lcom/airbnb/lottie/c/d;

    if-eqz v10, :cond_19a

    .line 5245
    iget-object v11, v0, Lcom/airbnb/lottie/c/c/h;->l:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f6

    .line 5246
    iget-object v11, v0, Lcom/airbnb/lottie/c/c/h;->l:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    move-object/from16 v16, v7

    move-object v13, v11

    goto :goto_122

    .line 6040
    :cond_f6
    iget-object v11, v10, Lcom/airbnb/lottie/c/d;->a:Ljava/util/List;

    .line 5249
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 5250
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v12}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v14, 0x0

    :goto_102
    if-ge v14, v12, :cond_11b

    .line 5252
    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/airbnb/lottie/c/b/n;

    .line 5253
    new-instance v8, Lcom/airbnb/lottie/a/a/c;

    move-object/from16 v16, v7

    iget-object v7, v0, Lcom/airbnb/lottie/c/c/h;->n:Lcom/airbnb/lottie/f;

    invoke-direct {v8, v7, v0, v15}, Lcom/airbnb/lottie/a/a/c;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/c/c/a;Lcom/airbnb/lottie/c/b/n;)V

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v7, v16

    goto :goto_102

    :cond_11b
    move-object/from16 v16, v7

    .line 5255
    iget-object v7, v0, Lcom/airbnb/lottie/c/c/h;->l:Ljava/util/Map;

    invoke-interface {v7, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_122
    const/4 v7, 0x0

    .line 5196
    :goto_123
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v8

    const/4 v11, 0x0

    if-ge v7, v8, :cond_173

    .line 5197
    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/airbnb/lottie/a/a/c;

    invoke-virtual {v8}, Lcom/airbnb/lottie/a/a/c;->e()Landroid/graphics/Path;

    move-result-object v8

    .line 5198
    iget-object v12, v0, Lcom/airbnb/lottie/c/c/h;->h:Landroid/graphics/RectF;

    const/4 v14, 0x0

    invoke-virtual {v8, v12, v14}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 5199
    iget-object v12, v0, Lcom/airbnb/lottie/c/c/h;->i:Landroid/graphics/Matrix;

    invoke-virtual {v12, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 5200
    iget-object v12, v0, Lcom/airbnb/lottie/c/c/h;->i:Landroid/graphics/Matrix;

    iget-wide v14, v3, Lcom/airbnb/lottie/c/b;->g:D

    neg-double v14, v14

    double-to-float v14, v14

    invoke-static {}, Lcom/airbnb/lottie/f/f;->a()F

    move-result v15

    mul-float/2addr v14, v15

    invoke-virtual {v12, v11, v14}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 5201
    iget-object v11, v0, Lcom/airbnb/lottie/c/c/h;->i:Landroid/graphics/Matrix;

    invoke-virtual {v11, v5, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 5202
    iget-object v11, v0, Lcom/airbnb/lottie/c/c/h;->i:Landroid/graphics/Matrix;

    invoke-virtual {v8, v11}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 5203
    iget-boolean v11, v3, Lcom/airbnb/lottie/c/b;->k:Z

    if-eqz v11, :cond_166

    .line 5204
    iget-object v11, v0, Lcom/airbnb/lottie/c/c/h;->j:Landroid/graphics/Paint;

    invoke-static {v8, v11, v1}, Lcom/airbnb/lottie/c/c/h;->a(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 5205
    iget-object v11, v0, Lcom/airbnb/lottie/c/c/h;->k:Landroid/graphics/Paint;

    invoke-static {v8, v11, v1}, Lcom/airbnb/lottie/c/c/h;->a(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_170

    .line 5207
    :cond_166
    iget-object v11, v0, Lcom/airbnb/lottie/c/c/h;->k:Landroid/graphics/Paint;

    invoke-static {v8, v11, v1}, Lcom/airbnb/lottie/c/c/h;->a(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 5208
    iget-object v11, v0, Lcom/airbnb/lottie/c/c/h;->j:Landroid/graphics/Paint;

    invoke-static {v8, v11, v1}, Lcom/airbnb/lottie/c/c/h;->a(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_170
    add-int/lit8 v7, v7, 0x1

    goto :goto_123

    .line 6048
    :cond_173
    iget-wide v7, v10, Lcom/airbnb/lottie/c/d;->b:D

    double-to-float v7, v7

    mul-float/2addr v7, v5

    .line 3147
    invoke-static {}, Lcom/airbnb/lottie/f/f;->a()F

    move-result v8

    mul-float/2addr v7, v8

    mul-float/2addr v7, v6

    .line 3149
    iget v8, v3, Lcom/airbnb/lottie/c/b;->e:I

    int-to-float v8, v8

    const/high16 v10, 0x41200000    # 10.0f

    div-float/2addr v8, v10

    .line 3150
    iget-object v10, v0, Lcom/airbnb/lottie/c/c/h;->s:Lcom/airbnb/lottie/a/b/a;

    if-eqz v10, :cond_194

    .line 3151
    iget-object v10, v0, Lcom/airbnb/lottie/c/c/h;->s:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {v10}, Lcom/airbnb/lottie/a/b/a;->d()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    add-float/2addr v8, v10

    :cond_194
    mul-float/2addr v8, v6

    add-float/2addr v7, v8

    .line 3154
    invoke-virtual {v1, v7, v11}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_19c

    :cond_19a
    move-object/from16 v16, v7

    :goto_19c
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, v16

    goto/16 :goto_c3

    .line 125
    :cond_1a2
    invoke-direct {v0, v3, v4, v2, v1}, Lcom/airbnb/lottie/c/c/h;->a(Lcom/airbnb/lottie/c/b;Lcom/airbnb/lottie/c/c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V

    .line 128
    :cond_1a5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
