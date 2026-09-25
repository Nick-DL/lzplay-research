.class public final Lcom/airbnb/lottie/a/b/p;
.super Lcom/airbnb/lottie/a/b/a;
.source "ValueCallbackKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/airbnb/lottie/a/b/a<",
        "TK;TA;>;"
    }
.end annotation


# instance fields
.field private final e:Lcom/airbnb/lottie/g/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/g/b<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/g/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/g/c<",
            "TA;>;)V"
        }
    .end annotation

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/a/b/a;-><init>(Ljava/util/List;)V

    .line 10
    new-instance v0, Lcom/airbnb/lottie/g/b;

    invoke-direct {v0}, Lcom/airbnb/lottie/g/b;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/a/b/p;->e:Lcom/airbnb/lottie/g/b;

    .line 14
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/a/b/p;->a(Lcom/airbnb/lottie/g/c;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/airbnb/lottie/g/a;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/g/a<",
            "TK;>;F)TA;"
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/airbnb/lottie/a/b/p;->d()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a()V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/airbnb/lottie/a/b/p;->d:Lcom/airbnb/lottie/g/c;

    if-eqz v0, :cond_0

    .line 27
    invoke-super {p0}, Lcom/airbnb/lottie/a/b/a;->a()V

    :cond_0
    return-void
.end method

.method final c()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public final d()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/airbnb/lottie/a/b/p;->d:Lcom/airbnb/lottie/g/c;

    .line 1129
    iget v5, p0, Lcom/airbnb/lottie/a/b/a;->c:F

    .line 2129
    iget v6, p0, Lcom/airbnb/lottie/a/b/a;->c:F

    .line 3129
    iget v7, p0, Lcom/airbnb/lottie/a/b/a;->c:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 33
    invoke-virtual/range {v0 .. v7}, Lcom/airbnb/lottie/g/c;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
