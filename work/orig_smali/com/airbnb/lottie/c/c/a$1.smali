.class final Lcom/airbnb/lottie/c/c/a$1;
.super Ljava/lang/Object;
.source "BaseLayer.java"

# interfaces
.implements Lcom/airbnb/lottie/a/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/c/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/airbnb/lottie/a/b/c;

.field final synthetic b:Lcom/airbnb/lottie/c/c/a;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/c/c/a;Lcom/airbnb/lottie/a/b/c;)V
    .registers 3

    .line 145
    iput-object p1, p0, Lcom/airbnb/lottie/c/c/a$1;->b:Lcom/airbnb/lottie/c/c/a;

    iput-object p2, p0, Lcom/airbnb/lottie/c/c/a$1;->a:Lcom/airbnb/lottie/a/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 147
    iget-object v0, p0, Lcom/airbnb/lottie/c/c/a$1;->b:Lcom/airbnb/lottie/c/c/a;

    iget-object p0, p0, Lcom/airbnb/lottie/c/c/a$1;->a:Lcom/airbnb/lottie/a/b/c;

    invoke-virtual {p0}, Lcom/airbnb/lottie/a/b/c;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v1

    if-nez p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    .line 1035
    :goto_17
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/c/c/a;->a(Z)V

    return-void
.end method
