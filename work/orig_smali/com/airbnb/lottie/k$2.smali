.class final Lcom/airbnb/lottie/k$2;
.super Ljava/lang/Thread;
.source "LottieTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/k;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/airbnb/lottie/k;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/k;Ljava/lang/String;)V
    .registers 3

    .line 179
    iput-object p1, p0, Lcom/airbnb/lottie/k$2;->a:Lcom/airbnb/lottie/k;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 180
    iput-boolean p1, p0, Lcom/airbnb/lottie/k$2;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 184
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/k$2;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_3d

    iget-boolean v0, p0, Lcom/airbnb/lottie/k$2;->b:Z

    if-eqz v0, :cond_b

    goto :goto_3d

    .line 187
    :cond_b
    iget-object v0, p0, Lcom/airbnb/lottie/k$2;->a:Lcom/airbnb/lottie/k;

    invoke-static {v0}, Lcom/airbnb/lottie/k;->b(Lcom/airbnb/lottie/k;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    :try_start_17
    iget-object v0, p0, Lcom/airbnb/lottie/k$2;->a:Lcom/airbnb/lottie/k;

    iget-object v1, p0, Lcom/airbnb/lottie/k$2;->a:Lcom/airbnb/lottie/k;

    invoke-static {v1}, Lcom/airbnb/lottie/k;->b(Lcom/airbnb/lottie/k;)Ljava/util/concurrent/FutureTask;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/j;

    invoke-static {v0, v1}, Lcom/airbnb/lottie/k;->a(Lcom/airbnb/lottie/k;Lcom/airbnb/lottie/j;)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_28} :catch_29
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_17 .. :try_end_28} :catch_29

    goto :goto_34

    :catch_29
    move-exception v0

    .line 191
    iget-object v1, p0, Lcom/airbnb/lottie/k$2;->a:Lcom/airbnb/lottie/k;

    new-instance v2, Lcom/airbnb/lottie/j;

    invoke-direct {v2, v0}, Lcom/airbnb/lottie/j;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1, v2}, Lcom/airbnb/lottie/k;->a(Lcom/airbnb/lottie/k;Lcom/airbnb/lottie/j;)V

    :goto_34
    const/4 v0, 0x1

    .line 193
    iput-boolean v0, p0, Lcom/airbnb/lottie/k$2;->b:Z

    .line 194
    iget-object v0, p0, Lcom/airbnb/lottie/k$2;->a:Lcom/airbnb/lottie/k;

    invoke-static {v0}, Lcom/airbnb/lottie/k;->c(Lcom/airbnb/lottie/k;)V

    goto :goto_0

    :cond_3d
    :goto_3d
    return-void
.end method
