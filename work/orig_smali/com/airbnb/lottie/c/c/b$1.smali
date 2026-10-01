.class final synthetic Lcom/airbnb/lottie/c/c/b$1;
.super Ljava/lang/Object;
.source "CompositionLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/c/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 62
    invoke-static {}, Lcom/airbnb/lottie/c/c/d$b;->values$3b8ca4d4()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/airbnb/lottie/c/c/b$1;->a:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/airbnb/lottie/c/c/b$1;->a:[I

    sget v2, Lcom/airbnb/lottie/c/c/d$b;->Add$f97b8e:I

    sub-int/2addr v2, v0

    aput v0, v1, v2
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_11} :catch_11

    :catch_11
    :try_start_11
    sget-object v1, Lcom/airbnb/lottie/c/c/b$1;->a:[I

    sget v2, Lcom/airbnb/lottie/c/c/d$b;->Invert$f97b8e:I

    sub-int/2addr v2, v0

    const/4 v0, 0x2

    aput v0, v1, v2
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_19} :catch_19

    :catch_19
    return-void
.end method
