.class public final Lcom/airbnb/lottie/c/a/j;
.super Lcom/airbnb/lottie/c/a/n;
.source "AnimatableTextFrame.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/c/a/n<",
        "Lcom/airbnb/lottie/c/b;",
        "Lcom/airbnb/lottie/c/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/g/a<",
            "Lcom/airbnb/lottie/c/b;",
            ">;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/c/a/n;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lcom/airbnb/lottie/a/b/a;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/airbnb/lottie/c/a/j;->b()Lcom/airbnb/lottie/a/b/n;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lcom/airbnb/lottie/a/b/n;
    .locals 1

    .line 16
    new-instance v0, Lcom/airbnb/lottie/a/b/n;

    iget-object p0, p0, Lcom/airbnb/lottie/c/a/j;->a:Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/a/b/n;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 0

    .line 9
    invoke-super {p0}, Lcom/airbnb/lottie/c/a/n;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
