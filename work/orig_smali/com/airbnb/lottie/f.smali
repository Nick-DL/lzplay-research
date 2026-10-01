.class public Lcom/airbnb/lottie/f;
.super Landroid/graphics/drawable/Drawable;
.source "LottieDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/f$a;
    }
.end annotation


# static fields
.field private static final m:Ljava/lang/String; = "f"


# instance fields
.field public a:Lcom/airbnb/lottie/d;

.field final b:Lcom/airbnb/lottie/f/c;

.field c:F

.field final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/airbnb/lottie/f$a;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/airbnb/lottie/b/b;

.field f:Ljava/lang/String;

.field g:Lcom/airbnb/lottie/b;

.field public h:Lcom/airbnb/lottie/b/a;

.field public i:Lcom/airbnb/lottie/a;

.field public j:Lcom/airbnb/lottie/n;

.field public k:Z

.field l:Z

.field private final n:Landroid/graphics/Matrix;

.field private final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/airbnb/lottie/c/c/b;

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 99
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 61
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/f;->n:Landroid/graphics/Matrix;

    .line 63
    new-instance v0, Lcom/airbnb/lottie/f/c;

    invoke-direct {v0}, Lcom/airbnb/lottie/f/c;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/f;->b:Lcom/airbnb/lottie/f/c;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 64
    iput v0, p0, Lcom/airbnb/lottie/f;->c:F

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/f;->o:Ljava/util/Set;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/f;->d:Ljava/util/ArrayList;

    const/16 v0, 0xff

    .line 76
    iput v0, p0, Lcom/airbnb/lottie/f;->q:I

    .line 100
    iget-object v0, p0, Lcom/airbnb/lottie/f;->b:Lcom/airbnb/lottie/f/c;

    new-instance v1, Lcom/airbnb/lottie/f$1;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/f$1;-><init>(Lcom/airbnb/lottie/f;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/f/c;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method static synthetic a(Lcom/airbnb/lottie/f;)Lcom/airbnb/lottie/c/c/b;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/airbnb/lottie/f;->p:Lcom/airbnb/lottie/c/c/b;

    return-object p0
.end method

.method private a(Lcom/airbnb/lottie/c/e;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/c/e;",
            ")",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/c/e;",
            ">;"
        }
    .end annotation

    .line 752
    iget-object v0, p0, Lcom/airbnb/lottie/f;->p:Lcom/airbnb/lottie/c/c/b;

    if-nez v0, :cond_10

    const-string p0, "LOTTIE"

    const-string p1, "Cannot resolve KeyPath. Composition is not set yet."

    .line 753
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 756
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 757
    iget-object p0, p0, Lcom/airbnb/lottie/f;->p:Lcom/airbnb/lottie/c/c/b;

    new-instance v1, Lcom/airbnb/lottie/c/e;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/airbnb/lottie/c/e;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/airbnb/lottie/c/c/b;->a(Lcom/airbnb/lottie/c/e;ILjava/util/List;Lcom/airbnb/lottie/c/e;)V

    return-object v0
.end method

.method static synthetic b(Lcom/airbnb/lottie/f;)Lcom/airbnb/lottie/f/c;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/airbnb/lottie/f;->b:Lcom/airbnb/lottie/f/c;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 8

    .line 19845
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    move-object p0, v1

    goto :goto_54

    .line 19850
    :cond_9
    iget-object v0, p0, Lcom/airbnb/lottie/f;->e:Lcom/airbnb/lottie/b/b;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/airbnb/lottie/f;->e:Lcom/airbnb/lottie/b/b;

    .line 19885
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 19890
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_20

    .line 19891
    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_21

    :cond_20
    move-object v2, v1

    :goto_21
    if-nez v2, :cond_27

    .line 20134
    iget-object v3, v0, Lcom/airbnb/lottie/b/b;->a:Landroid/content/Context;

    if-eqz v3, :cond_2f

    :cond_27
    iget-object v0, v0, Lcom/airbnb/lottie/b/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_2f
    const/4 v0, 0x1

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    if-nez v0, :cond_3b

    .line 19851
    iget-object v0, p0, Lcom/airbnb/lottie/f;->e:Lcom/airbnb/lottie/b/b;

    invoke-virtual {v0}, Lcom/airbnb/lottie/b/b;->a()V

    .line 19852
    iput-object v1, p0, Lcom/airbnb/lottie/f;->e:Lcom/airbnb/lottie/b/b;

    .line 19855
    :cond_3b
    iget-object v0, p0, Lcom/airbnb/lottie/f;->e:Lcom/airbnb/lottie/b/b;

    if-nez v0, :cond_52

    .line 19856
    new-instance v0, Lcom/airbnb/lottie/b/b;

    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/lottie/f;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/airbnb/lottie/f;->g:Lcom/airbnb/lottie/b;

    iget-object v5, p0, Lcom/airbnb/lottie/f;->a:Lcom/airbnb/lottie/d;

    .line 20139
    iget-object v5, v5, Lcom/airbnb/lottie/d;->c:Ljava/util/Map;

    .line 19857
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/airbnb/lottie/b/b;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/airbnb/lottie/b;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/airbnb/lottie/f;->e:Lcom/airbnb/lottie/b/b;

    .line 19860
    :cond_52
    iget-object p0, p0, Lcom/airbnb/lottie/f;->e:Lcom/airbnb/lottie/b/b;

    :goto_54
    if-eqz p0, :cond_5b

    .line 839
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/b/b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_5b
    return-object v1
.end method

.method public final a()V
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/airbnb/lottie/f;->e:Lcom/airbnb/lottie/b/b;

    if-eqz v0, :cond_9

    .line 189
    iget-object p0, p0, Lcom/airbnb/lottie/f;->e:Lcom/airbnb/lottie/b/b;

    invoke-virtual {p0}, Lcom/airbnb/lottie/b/b;->a()V

    :cond_9
    return-void
.end method

.method public final a(F)V
    .registers 4

    .line 410
    iget-object v0, p0, Lcom/airbnb/lottie/f;->a:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_f

    .line 411
    iget-object v0, p0, Lcom/airbnb/lottie/f;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/f$7;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/f$7;-><init>(Lcom/airbnb/lottie/f;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 418
    :cond_f
    iget-object v0, p0, Lcom/airbnb/lottie/f;->a:Lcom/airbnb/lottie/d;

    .line 9104
    iget v0, v0, Lcom/airbnb/lottie/d;->i:F

    .line 418
    iget-object v1, p0, Lcom/airbnb/lottie/f;->a:Lcom/airbnb/lottie/d;

    .line 9109
    iget v1, v1, Lcom/airbnb/lottie/d;->j:F

    sub-float/2addr v1, v0

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    float-to-int p1, v0

    .line 418
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/f;->a(I)V

    return-void
.end method

.method public final a(I)V
    .registers 4

    .line 387
    iget-object v0, p0, Lcom/airbnb/lottie/f;->a:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_f

    .line 388
    iget-object v0, p0, Lcom/airbnb/lottie/f;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/f$6;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/f$6;-><init>(Lcom/airbnb/lottie/f;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 396
    :cond_f
    iget-object p0, p0, Lcom/airbnb/lottie/f;->b:Lcom/airbnb/lottie/f/c;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/f/c;->b(I)V

    return-void
.end method

.method public final a(Lcom/airbnb/lottie/c/e;Ljava/lang/Object;Lcom/airbnb/lottie/g/c;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/c/e;",
            "TT;",
            "Lcom/airbnb/lottie/g/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 770
    iget-object v0, p0, Lcom/airbnb/lottie/f;->p:Lcom/airbnb/lottie/c/c/b;

    if-nez v0, :cond_f

    .line 771
    iget-object v0, p0, Lcom/airbnb/lottie/f;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/f$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/airbnb/lottie/f$4;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/c/e;Ljava/lang/Object;Lcom/airbnb/lottie/g/c;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 17092
    :cond_f
    iget-object v0, p1, Lcom/airbnb/lottie/c/e;->a:Lcom/airbnb/lottie/c/f;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1b

    .line 18092
    iget-object p1, p1, Lcom/airbnb/lottie/c/e;->a:Lcom/airbnb/lottie/c/f;

    .line 780
    invoke-interface {p1, p2, p3}, Lcom/airbnb/lottie/c/f;->a(Ljava/lang/Object;Lcom/airbnb/lottie/g/c;)V

    goto :goto_3c

    .line 783
    :cond_1b
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/f;->a(Lcom/airbnb/lottie/c/e;)Ljava/util/List;

    move-result-object p1

    move v0, v1

    .line 785
    :goto_20
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_34

    .line 787
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/c/e;

    .line 19092
    iget-object v3, v3, Lcom/airbnb/lottie/c/e;->a:Lcom/airbnb/lottie/c/f;

    .line 787
    invoke-interface {v3, p2, p3}, Lcom/airbnb/lottie/c/f;->a(Ljava/lang/Object;Lcom/airbnb/lottie/g/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 789
    :cond_34
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3b

    goto :goto_3c

    :cond_3b
    move v2, v1

    :goto_3c
    if-eqz v2, :cond_4e

    .line 792
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->invalidateSelf()V

    .line 793
    sget-object p1, Lcom/airbnb/lottie/i;->w:Ljava/lang/Float;

    if-ne p2, p1, :cond_4e

    .line 19732
    iget-object p1, p0, Lcom/airbnb/lottie/f;->b:Lcom/airbnb/lottie/f/c;

    invoke-virtual {p1}, Lcom/airbnb/lottie/f/c;->b()F

    move-result p1

    .line 797
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/f;->c(F)V

    :cond_4e
    return-void
.end method

.method public final a(Z)V
    .registers 4

    .line 135
    iget-boolean v0, p0, Lcom/airbnb/lottie/f;->k:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 139
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_13

    .line 140
    sget-object p0, Lcom/airbnb/lottie/f;->m:Ljava/lang/String;

    const-string p1, "Merge paths are not supported pre-Kit Kat."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 143
    :cond_13
    iput-boolean p1, p0, Lcom/airbnb/lottie/f;->k:Z

    .line 144
    iget-object p1, p0, Lcom/airbnb/lottie/f;->a:Lcom/airbnb/lottie/d;

    if-eqz p1, :cond_1c

    .line 145
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->b()V

    :cond_1c
    return-void
.end method

.method final b()V
    .registers 5

    .line 242
    new-instance v0, Lcom/airbnb/lottie/c/c/b;

    iget-object v1, p0, Lcom/airbnb/lottie/f;->a:Lcom/airbnb/lottie/d;

    .line 243
    invoke-static {v1}, Lcom/airbnb/lottie/e/q;->a(Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/c/d;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/f;->a:Lcom/airbnb/lottie/d;

    .line 1117
    iget-object v2, v2, Lcom/airbnb/lottie/d;->g:Ljava/util/List;

    .line 243
    iget-object v3, p0, Lcom/airbnb/lottie/f;->a:Lcom/airbnb/lottie/d;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/airbnb/lottie/c/c/b;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/c/c/d;Ljava/util/List;Lcom/airbnb/lottie/d;)V

    iput-object v0, p0, Lcom/airbnb/lottie/f;->p:Lcom/airbnb/lottie/c/c/b;

    return-void
.end method

.method public final b(F)V
    .registers 4

    .line 448
    iget-object v0, p0, Lcom/airbnb/lottie/f;->a:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_f

    .line 449
    iget-object v0, p0, Lcom/airbnb/lottie/f;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/f$9;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/f$9;-><init>(Lcom/airbnb/lottie/f;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 456
    :cond_f
    iget-object v0, p0, Lcom/airbnb/lottie/f;->a:Lcom/airbnb/lottie/d;

    .line 10104
    iget v0, v0, Lcom/airbnb/lottie/d;->i:F

    .line 456
    iget-object v1, p0, Lcom/airbnb/lottie/f;->a:Lcom/airbnb/lottie/d;

    .line 10109
    iget v1, v1, Lcom/airbnb/lottie/d;->j:F

    sub-float/2addr v1, v0

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    float-to-int p1, v0

    .line 456
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/f;->b(I)V

    return-void
.end method

.method public final b(I)V
    .registers 4

    .line 425
    iget-object v0, p0, Lcom/airbnb/lottie/f;->a:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_f

    .line 426
    iget-object v0, p0, Lcom/airbnb/lottie/f;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/f$8;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/f$8;-><init>(Lcom/airbnb/lottie/f;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 434
    :cond_f
    iget-object p0, p0, Lcom/airbnb/lottie/f;->b:Lcom/airbnb/lottie/f/c;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/f/c;->c(I)V

    return-void
.end method

.method public final c()V
    .registers 2

    .line 247
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->a()V

    .line 248
    iget-object v0, p0, Lcom/airbnb/lottie/f;->b:Lcom/airbnb/lottie/f/c;

    invoke-virtual {v0}, Lcom/airbnb/lottie/f/c;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 249
    iget-object v0, p0, Lcom/airbnb/lottie/f;->b:Lcom/airbnb/lottie/f/c;

    invoke-virtual {v0}, Lcom/airbnb/lottie/f/c;->cancel()V

    :cond_10
    const/4 v0, 0x0

    .line 251
    iput-object v0, p0, Lcom/airbnb/lottie/f;->a:Lcom/airbnb/lottie/d;

    .line 252
    iput-object v0, p0, Lcom/airbnb/lottie/f;->p:Lcom/airbnb/lottie/c/c/b;

    .line 253
    iput-object v0, p0, Lcom/airbnb/lottie/f;->e:Lcom/airbnb/lottie/b/b;

    .line 254
    iget-object v0, p0, Lcom/airbnb/lottie/f;->b:Lcom/airbnb/lottie/f/c;

    invoke-virtual {v0}, Lcom/airbnb/lottie/f/c;->c()V

    .line 255
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->invalidateSelf()V

    return-void
.end method

.method public final c(F)V
    .registers 4

    .line 570
    iget-object v0, p0, Lcom/airbnb/lottie/f;->a:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_f

    .line 571
    iget-object v0, p0, Lcom/airbnb/lottie/f;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/f$3;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/f$3;-><init>(Lcom/airbnb/lottie/f;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 578
    :cond_f
    iget-object v0, p0, Lcom/airbnb/lottie/f;->a:Lcom/airbnb/lottie/d;

    .line 11104
    iget v0, v0, Lcom/airbnb/lottie/d;->i:F

    .line 578
    iget-object v1, p0, Lcom/airbnb/lottie/f;->a:Lcom/airbnb/lottie/d;

    .line 11109
    iget v1, v1, Lcom/airbnb/lottie/d;->j:F

    sub-float/2addr v1, v0

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    float-to-int p1, v0

    .line 578
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/f;->c(I)V

    return-void
.end method

.method public final c(I)V
    .registers 4

    .line 550
    iget-object v0, p0, Lcom/airbnb/lottie/f;->a:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_f

    .line 551
    iget-object v0, p0, Lcom/airbnb/lottie/f;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/f$2;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/f$2;-><init>(Lcom/airbnb/lottie/f;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 559
    :cond_f
    iget-object p0, p0, Lcom/airbnb/lottie/f;->b:Lcom/airbnb/lottie/f/c;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/f/c;->a(I)V

    return-void
.end method

.method public final d()V
    .registers 3

    .line 349
    iget-object v0, p0, Lcom/airbnb/lottie/f;->p:Lcom/airbnb/lottie/c/c/b;

    if-nez v0, :cond_f

    .line 350
    iget-object v0, p0, Lcom/airbnb/lottie/f;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/f$5;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/f$5;-><init>(Lcom/airbnb/lottie/f;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 357
    :cond_f
    iget-object p0, p0, Lcom/airbnb/lottie/f;->b:Lcom/airbnb/lottie/f/c;

    invoke-virtual {p0}, Lcom/airbnb/lottie/f/c;->d()V

    return-void
.end method

.method public final d(F)V
    .registers 2

    .line 657
    iput p1, p0, Lcom/airbnb/lottie/f;->c:F

    .line 658
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->f()V

    return-void
.end method

.method public final d(I)V
    .registers 2

    .line 620
    iget-object p0, p0, Lcom/airbnb/lottie/f;->b:Lcom/airbnb/lottie/f/c;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/f/c;->setRepeatCount(I)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 10

    const-string v0, "Drawable#draw"

    .line 282
    invoke-static {v0}, Lcom/airbnb/lottie/c;->c(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/airbnb/lottie/f;->p:Lcom/airbnb/lottie/c/c/b;

    if-nez v0, :cond_a

    return-void

    .line 287
    :cond_a
    iget v0, p0, Lcom/airbnb/lottie/f;->c:F

    .line 1929
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/airbnb/lottie/f;->a:Lcom/airbnb/lottie/d;

    .line 2095
    iget-object v2, v2, Lcom/airbnb/lottie/d;->h:Landroid/graphics/Rect;

    .line 1929
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1930
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/airbnb/lottie/f;->a:Lcom/airbnb/lottie/d;

    .line 3095
    iget-object v3, v3, Lcom/airbnb/lottie/d;->h:Landroid/graphics/Rect;

    .line 1930
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1931
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    cmpl-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v2, :cond_38

    .line 292
    iget v0, p0, Lcom/airbnb/lottie/f;->c:F

    div-float/2addr v0, v1

    goto :goto_3a

    :cond_38
    move v1, v0

    move v0, v3

    :goto_3a
    cmpl-float v2, v0, v3

    if-lez v2, :cond_69

    .line 305
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 306
    iget-object v3, p0, Lcom/airbnb/lottie/f;->a:Lcom/airbnb/lottie/d;

    .line 4095
    iget-object v3, v3, Lcom/airbnb/lottie/d;->h:Landroid/graphics/Rect;

    .line 306
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 307
    iget-object v5, p0, Lcom/airbnb/lottie/f;->a:Lcom/airbnb/lottie/d;

    .line 5095
    iget-object v5, v5, Lcom/airbnb/lottie/d;->h:Landroid/graphics/Rect;

    .line 307
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    mul-float v4, v3, v1

    mul-float v6, v5, v1

    .line 5704
    iget v7, p0, Lcom/airbnb/lottie/f;->c:F

    mul-float/2addr v7, v3

    sub-float/2addr v7, v4

    .line 6704
    iget v3, p0, Lcom/airbnb/lottie/f;->c:F

    mul-float/2addr v3, v5

    sub-float/2addr v3, v6

    .line 311
    invoke-virtual {p1, v7, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 314
    invoke-virtual {p1, v0, v0, v4, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 317
    :cond_69
    iget-object v0, p0, Lcom/airbnb/lottie/f;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 318
    iget-object v0, p0, Lcom/airbnb/lottie/f;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 319
    iget-object v0, p0, Lcom/airbnb/lottie/f;->p:Lcom/airbnb/lottie/c/c/b;

    iget-object v1, p0, Lcom/airbnb/lottie/f;->n:Landroid/graphics/Matrix;

    iget p0, p0, Lcom/airbnb/lottie/f;->q:I

    invoke-virtual {v0, p1, v1, p0}, Lcom/airbnb/lottie/c/c/b;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    const-string p0, "Drawable#draw"

    .line 320
    invoke-static {p0}, Lcom/airbnb/lottie/c;->d(Ljava/lang/String;)F

    if-lez v2, :cond_86

    .line 323
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_86
    return-void
.end method

.method public final e()Z
    .registers 2

    .line 700
    iget-object v0, p0, Lcom/airbnb/lottie/f;->j:Lcom/airbnb/lottie/n;

    if-nez v0, :cond_10

    iget-object p0, p0, Lcom/airbnb/lottie/f;->a:Lcom/airbnb/lottie/d;

    .line 12127
    iget-object p0, p0, Lcom/airbnb/lottie/d;->e:Landroidx/b/h;

    .line 700
    invoke-virtual {p0}, Landroidx/b/h;->b()I

    move-result p0

    if-lez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method final f()V
    .registers 4

    .line 712
    iget-object v0, p0, Lcom/airbnb/lottie/f;->a:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_5

    return-void

    .line 12704
    :cond_5
    iget v0, p0, Lcom/airbnb/lottie/f;->c:F

    .line 716
    iget-object v1, p0, Lcom/airbnb/lottie/f;->a:Lcom/airbnb/lottie/d;

    .line 13095
    iget-object v1, v1, Lcom/airbnb/lottie/d;->h:Landroid/graphics/Rect;

    .line 716
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget-object v2, p0, Lcom/airbnb/lottie/f;->a:Lcom/airbnb/lottie/d;

    .line 14095
    iget-object v2, v2, Lcom/airbnb/lottie/d;->h:Landroid/graphics/Rect;

    .line 717
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    const/4 v2, 0x0

    .line 716
    invoke-virtual {p0, v2, v2, v1, v0}, Lcom/airbnb/lottie/f;->setBounds(IIII)V

    return-void
.end method

.method public getAlpha()I
    .registers 1

    .line 270
    iget p0, p0, Lcom/airbnb/lottie/f;->q:I

    return p0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 740
    iget-object v0, p0, Lcom/airbnb/lottie/f;->a:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    iget-object v0, p0, Lcom/airbnb/lottie/f;->a:Lcom/airbnb/lottie/d;

    .line 16095
    iget-object v0, v0, Lcom/airbnb/lottie/d;->h:Landroid/graphics/Rect;

    .line 740
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    .line 16704
    iget p0, p0, Lcom/airbnb/lottie/f;->c:F

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 736
    iget-object v0, p0, Lcom/airbnb/lottie/f;->a:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    iget-object v0, p0, Lcom/airbnb/lottie/f;->a:Lcom/airbnb/lottie/d;

    .line 15095
    iget-object v0, v0, Lcom/airbnb/lottie/d;->h:Landroid/graphics/Rect;

    .line 736
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 15704
    iget p0, p0, Lcom/airbnb/lottie/f;->c:F

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public getOpacity()I
    .registers 1

    const/4 p0, -0x3

    return p0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 901
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 905
    :cond_7
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public invalidateSelf()V
    .registers 2

    .line 259
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 261
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    return-void
.end method

.method public isRunning()Z
    .registers 1

    .line 8639
    iget-object p0, p0, Lcom/airbnb/lottie/f;->b:Lcom/airbnb/lottie/f/c;

    invoke-virtual {p0}, Lcom/airbnb/lottie/f/c;->isRunning()Z

    move-result p0

    return p0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 5

    .line 909
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 913
    :cond_7
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .registers 2

    .line 266
    iput p1, p0, Lcom/airbnb/lottie/f;->q:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    const-string p0, "LOTTIE"

    const-string p1, "Use addColorFilter instead."

    .line 274
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public start()V
    .registers 1

    .line 331
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->d()V

    return-void
.end method

.method public stop()V
    .registers 2

    .line 7362
    iget-object v0, p0, Lcom/airbnb/lottie/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7363
    iget-object p0, p0, Lcom/airbnb/lottie/f;->b:Lcom/airbnb/lottie/f/c;

    const/4 v0, 0x1

    .line 8262
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/f/c;->b(Z)V

    .line 8209
    invoke-virtual {p0}, Lcom/airbnb/lottie/f/c;->e()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/f/c;->a(Z)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 3

    .line 917
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 921
    :cond_7
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method
