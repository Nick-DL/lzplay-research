.class public final Lcom/airbnb/lottie/j;
.super Ljava/lang/Object;
.source "LottieResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/airbnb/lottie/j;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/airbnb/lottie/j;->b:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/airbnb/lottie/j;->b:Ljava/lang/Throwable;

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/airbnb/lottie/j;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 40
    :cond_4
    instance-of v1, p1, Lcom/airbnb/lottie/j;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 43
    :cond_a
    check-cast p1, Lcom/airbnb/lottie/j;

    .line 1029
    iget-object v1, p0, Lcom/airbnb/lottie/j;->a:Ljava/lang/Object;

    if-eqz v1, :cond_1b

    .line 2029
    iget-object v1, p0, Lcom/airbnb/lottie/j;->a:Ljava/lang/Object;

    .line 3029
    iget-object v3, p1, Lcom/airbnb/lottie/j;->a:Ljava/lang/Object;

    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    return v0

    .line 3033
    :cond_1b
    iget-object v0, p0, Lcom/airbnb/lottie/j;->b:Ljava/lang/Throwable;

    if-eqz v0, :cond_34

    .line 4033
    iget-object p1, p1, Lcom/airbnb/lottie/j;->b:Ljava/lang/Throwable;

    if-eqz p1, :cond_34

    .line 5033
    iget-object p1, p0, Lcom/airbnb/lottie/j;->b:Ljava/lang/Throwable;

    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6033
    iget-object p0, p0, Lcom/airbnb/lottie/j;->b:Ljava/lang/Throwable;

    .line 48
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_34
    return v2
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x2

    .line 54
    new-array v0, v0, [Ljava/lang/Object;

    .line 7029
    iget-object v1, p0, Lcom/airbnb/lottie/j;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 7033
    iget-object p0, p0, Lcom/airbnb/lottie/j;->b:Ljava/lang/Throwable;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 54
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
