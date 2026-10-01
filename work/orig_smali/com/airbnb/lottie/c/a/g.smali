.class public final Lcom/airbnb/lottie/c/a/g;
.super Lcom/airbnb/lottie/c/a/n;
.source "AnimatableScaleValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/c/a/n<",
        "Lcom/airbnb/lottie/g/d;",
        "Lcom/airbnb/lottie/g/d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .line 13
    new-instance v0, Lcom/airbnb/lottie/g/d;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, Lcom/airbnb/lottie/g/d;-><init>(FF)V

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/c/a/g;-><init>(Lcom/airbnb/lottie/g/d;)V

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/g/d;)V
    .registers 2

    .line 17
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/c/a/n;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/g/a<",
            "Lcom/airbnb/lottie/g/d;",
            ">;>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/c/a/n;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/airbnb/lottie/a/b/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/a/b/a<",
            "Lcom/airbnb/lottie/g/d;",
            "Lcom/airbnb/lottie/g/d;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/airbnb/lottie/a/b/k;

    iget-object p0, p0, Lcom/airbnb/lottie/c/a/g;->a:Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/a/b/k;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .registers 1

    .line 10
    invoke-super {p0}, Lcom/airbnb/lottie/c/a/n;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
