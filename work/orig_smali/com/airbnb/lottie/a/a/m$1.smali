.class final synthetic Lcom/airbnb/lottie/a/a/m$1;
.super Ljava/lang/Object;
.source "PolystarContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/a/a/m;
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

    .line 113
    invoke-static {}, Lcom/airbnb/lottie/c/b/i$a;->values()[Lcom/airbnb/lottie/c/b/i$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/airbnb/lottie/a/a/m$1;->a:[I

    :try_start_9
    sget-object v0, Lcom/airbnb/lottie/a/a/m$1;->a:[I

    sget-object v1, Lcom/airbnb/lottie/c/b/i$a;->Star:Lcom/airbnb/lottie/c/b/i$a;

    invoke-virtual {v1}, Lcom/airbnb/lottie/c/b/i$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/airbnb/lottie/a/a/m$1;->a:[I

    sget-object v1, Lcom/airbnb/lottie/c/b/i$a;->Polygon:Lcom/airbnb/lottie/c/b/i$a;

    invoke-virtual {v1}, Lcom/airbnb/lottie/c/b/i$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method
