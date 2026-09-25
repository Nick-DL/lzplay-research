.class final Lcom/airbnb/lottie/f$1;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/f;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/airbnb/lottie/f;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/f;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/airbnb/lottie/f$1;->a:Lcom/airbnb/lottie/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 102
    iget-object p1, p0, Lcom/airbnb/lottie/f$1;->a:Lcom/airbnb/lottie/f;

    invoke-static {p1}, Lcom/airbnb/lottie/f;->a(Lcom/airbnb/lottie/f;)Lcom/airbnb/lottie/c/c/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/airbnb/lottie/f$1;->a:Lcom/airbnb/lottie/f;

    invoke-static {p1}, Lcom/airbnb/lottie/f;->a(Lcom/airbnb/lottie/f;)Lcom/airbnb/lottie/c/c/b;

    move-result-object p1

    iget-object p0, p0, Lcom/airbnb/lottie/f$1;->a:Lcom/airbnb/lottie/f;

    invoke-static {p0}, Lcom/airbnb/lottie/f;->b(Lcom/airbnb/lottie/f;)Lcom/airbnb/lottie/f/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/airbnb/lottie/f/c;->b()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/c/c/b;->a(F)V

    :cond_0
    return-void
.end method
