.class public final Lcom/airbnb/lottie/l;
.super Ljava/lang/Object;
.source "PerformanceTracker.java"


# instance fields
.field a:Z

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/f/d;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/core/d/d<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/airbnb/lottie/l;->a:Z

    .line 24
    new-instance v0, Landroidx/b/b;

    invoke-direct {v0}, Landroidx/b/b;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/l;->b:Ljava/util/Set;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/l;->c:Ljava/util/Map;

    .line 26
    new-instance v0, Lcom/airbnb/lottie/l$1;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/l$1;-><init>(Lcom/airbnb/lottie/l;)V

    iput-object v0, p0, Lcom/airbnb/lottie/l;->d:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;F)V
    .locals 2

    .line 45
    iget-boolean v0, p0, Lcom/airbnb/lottie/l;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/l;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/f/d;

    if-nez v0, :cond_1

    .line 50
    new-instance v0, Lcom/airbnb/lottie/f/d;

    invoke-direct {v0}, Lcom/airbnb/lottie/f/d;-><init>()V

    .line 51
    iget-object v1, p0, Lcom/airbnb/lottie/l;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    :cond_1
    iget v1, v0, Lcom/airbnb/lottie/f/d;->a:F

    add-float/2addr v1, p2

    iput v1, v0, Lcom/airbnb/lottie/f/d;->a:F

    .line 1013
    iget p2, v0, Lcom/airbnb/lottie/f/d;->b:I

    add-int/lit8 p2, p2, 0x1

    iput p2, v0, Lcom/airbnb/lottie/f/d;->b:I

    .line 1014
    iget p2, v0, Lcom/airbnb/lottie/f/d;->b:I

    const v1, 0x7fffffff

    if-ne p2, v1, :cond_2

    .line 1015
    iget p2, v0, Lcom/airbnb/lottie/f/d;->a:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    iput p2, v0, Lcom/airbnb/lottie/f/d;->a:F

    .line 1016
    iget p2, v0, Lcom/airbnb/lottie/f/d;->b:I

    div-int/lit8 p2, p2, 0x2

    iput p2, v0, Lcom/airbnb/lottie/f/d;->b:I

    :cond_2
    const-string p2, "__container"

    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 56
    iget-object p0, p0, Lcom/airbnb/lottie/l;->b:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method
