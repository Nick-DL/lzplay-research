.class final Lcom/airbnb/lottie/e$5;
.super Ljava/lang/Object;
.source "LottieCompositionFactory.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/e;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic a:Lcom/airbnb/lottie/d;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/d;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/airbnb/lottie/e$5;->a:Lcom/airbnb/lottie/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    const-string v0, "Gabe"

    const-string v1, "call\treturning from cache"

    .line 1330
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    new-instance v0, Lcom/airbnb/lottie/j;

    iget-object p0, p0, Lcom/airbnb/lottie/e$5;->a:Lcom/airbnb/lottie/d;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/j;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
