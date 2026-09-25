.class public final Lcom/airbnb/lottie/d;
.super Ljava/lang/Object;
.source "LottieComposition.java"


# instance fields
.field public final a:Lcom/airbnb/lottie/l;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/c/c/d;",
            ">;>;"
        }
    .end annotation
.end field

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/g;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/c/c;",
            ">;"
        }
    .end annotation
.end field

.field public e:Landroidx/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/h<",
            "Lcom/airbnb/lottie/c/d;",
            ">;"
        }
    .end annotation
.end field

.field f:Landroidx/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/d<",
            "Lcom/airbnb/lottie/c/c/d;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/c/c/d;",
            ">;"
        }
    .end annotation
.end field

.field public h:Landroid/graphics/Rect;

.field public i:F

.field public j:F

.field public k:F

.field private final l:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/airbnb/lottie/l;

    invoke-direct {v0}, Lcom/airbnb/lottie/l;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/d;->a:Lcom/airbnb/lottie/l;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/d;->l:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 2

    .line 99
    invoke-virtual {p0}, Lcom/airbnb/lottie/d;->b()F

    move-result v0

    iget p0, p0, Lcom/airbnb/lottie/d;->k:F

    div-float/2addr v0, p0

    const/high16 p0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p0

    float-to-long v0, v0

    long-to-float p0, v0

    return p0
.end method

.method public final a(J)Lcom/airbnb/lottie/c/c/d;
    .locals 1

    .line 91
    iget-object p0, p0, Lcom/airbnb/lottie/d;->f:Landroidx/b/d;

    const/4 v0, 0x0

    .line 1109
    invoke-virtual {p0, p1, p2, v0}, Landroidx/b/d;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 91
    check-cast p0, Lcom/airbnb/lottie/c/c/d;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "LOTTIE"

    .line 73
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object p0, p0, Lcom/airbnb/lottie/d;->l:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/airbnb/lottie/d;->a:Lcom/airbnb/lottie/l;

    .line 1041
    iput-boolean p1, p0, Lcom/airbnb/lottie/l;->a:Z

    return-void
.end method

.method public final b()F
    .locals 1

    .line 143
    iget v0, p0, Lcom/airbnb/lottie/d;->j:F

    iget p0, p0, Lcom/airbnb/lottie/d;->i:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LottieComposition:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    iget-object p0, p0, Lcom/airbnb/lottie/d;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/c/c/d;

    const-string v2, "\t"

    .line 150
    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/c/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
