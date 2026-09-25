.class public final Lcom/airbnb/lottie/d/c$1;
.super Ljava/lang/Object;
.source "NetworkFetcher.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/airbnb/lottie/j<",
        "Lcom/airbnb/lottie/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/airbnb/lottie/d/c;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/d/c;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/airbnb/lottie/d/c$1;->a:Lcom/airbnb/lottie/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    .line 1049
    iget-object p0, p0, Lcom/airbnb/lottie/d/c$1;->a:Lcom/airbnb/lottie/d/c;

    .line 1071
    iget-object v0, p0, Lcom/airbnb/lottie/d/c;->b:Lcom/airbnb/lottie/d/b;

    invoke-virtual {v0}, Lcom/airbnb/lottie/d/b;->a()Landroidx/core/d/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1076
    iget-object v1, v0, Landroidx/core/d/d;->a:Ljava/lang/Object;

    check-cast v1, Lcom/airbnb/lottie/d/a;

    .line 1077
    iget-object v0, v0, Landroidx/core/d/d;->b:Ljava/lang/Object;

    check-cast v0, Ljava/io/InputStream;

    .line 1079
    sget-object v2, Lcom/airbnb/lottie/d/a;->Zip:Lcom/airbnb/lottie/d/a;

    if-ne v1, v2, :cond_0

    .line 1080
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/airbnb/lottie/d/c;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/airbnb/lottie/e;->a(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/j;

    move-result-object v0

    goto :goto_0

    .line 1082
    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/d/c;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/airbnb/lottie/e;->a(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/j;

    move-result-object v0

    .line 2029
    :goto_0
    iget-object v1, v0, Lcom/airbnb/lottie/j;->a:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 3029
    iget-object v0, v0, Lcom/airbnb/lottie/j;->a:Ljava/lang/Object;

    .line 1085
    check-cast v0, Lcom/airbnb/lottie/d;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 1058
    new-instance p0, Lcom/airbnb/lottie/j;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/j;-><init>(Ljava/lang/Object;)V

    return-object p0

    .line 1061
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Animation for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/airbnb/lottie/d/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found in cache. Fetching from network."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)V

    .line 1062
    invoke-virtual {p0}, Lcom/airbnb/lottie/d/c;->a()Lcom/airbnb/lottie/j;

    move-result-object p0

    return-object p0
.end method
