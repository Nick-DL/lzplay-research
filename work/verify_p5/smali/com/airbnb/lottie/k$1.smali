.class final Lcom/airbnb/lottie/k$1;
.super Ljava/lang/Object;
.source "LottieTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/airbnb/lottie/k;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/k;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/airbnb/lottie/k$1;->a:Lcom/airbnb/lottie/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/airbnb/lottie/k$1;->a:Lcom/airbnb/lottie/k;

    invoke-static {v0}, Lcom/airbnb/lottie/k;->a(Lcom/airbnb/lottie/k;)Lcom/airbnb/lottie/j;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/airbnb/lottie/k$1;->a:Lcom/airbnb/lottie/k;

    invoke-static {v0}, Lcom/airbnb/lottie/k;->b(Lcom/airbnb/lottie/k;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/k$1;->a:Lcom/airbnb/lottie/k;

    invoke-static {v0}, Lcom/airbnb/lottie/k;->a(Lcom/airbnb/lottie/k;)Lcom/airbnb/lottie/j;

    move-result-object v0

    .line 1029
    iget-object v1, v0, Lcom/airbnb/lottie/j;->a:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 140
    iget-object p0, p0, Lcom/airbnb/lottie/k$1;->a:Lcom/airbnb/lottie/k;

    .line 2029
    iget-object v0, v0, Lcom/airbnb/lottie/j;->a:Ljava/lang/Object;

    .line 140
    invoke-static {p0, v0}, Lcom/airbnb/lottie/k;->a(Lcom/airbnb/lottie/k;Ljava/lang/Object;)V

    return-void

    .line 142
    :cond_1
    iget-object p0, p0, Lcom/airbnb/lottie/k$1;->a:Lcom/airbnb/lottie/k;

    .line 2033
    iget-object v0, v0, Lcom/airbnb/lottie/j;->b:Ljava/lang/Throwable;

    .line 142
    invoke-static {p0, v0}, Lcom/airbnb/lottie/k;->a(Lcom/airbnb/lottie/k;Ljava/lang/Throwable;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method
