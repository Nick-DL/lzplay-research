.class final Lcom/airbnb/lottie/e$4;
.super Ljava/lang/Object;
.source "LottieCompositionFactory.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/e;->a(Landroid/util/JsonReader;)Lcom/airbnb/lottie/k;
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
.field final synthetic a:Landroid/util/JsonReader;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/util/JsonReader;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/airbnb/lottie/e$4;->a:Landroid/util/JsonReader;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/airbnb/lottie/e$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1218
    iget-object v0, p0, Lcom/airbnb/lottie/e$4;->a:Landroid/util/JsonReader;

    iget-object p0, p0, Lcom/airbnb/lottie/e$4;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/airbnb/lottie/e;->a(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/j;

    move-result-object p0

    return-object p0
.end method
