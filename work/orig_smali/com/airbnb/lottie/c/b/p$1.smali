.class final synthetic Lcom/airbnb/lottie/c/b/p$1;
.super Ljava/lang/Object;
.source "ShapeStroke.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/c/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 41
    invoke-static {}, Lcom/airbnb/lottie/c/b/p$b;->values()[Lcom/airbnb/lottie/c/b/p$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/airbnb/lottie/c/b/p$1;->b:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/airbnb/lottie/c/b/p$1;->b:[I

    sget-object v2, Lcom/airbnb/lottie/c/b/p$b;->Bevel:Lcom/airbnb/lottie/c/b/p$b;

    invoke-virtual {v2}, Lcom/airbnb/lottie/c/b/p$b;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Lcom/airbnb/lottie/c/b/p$1;->b:[I

    sget-object v3, Lcom/airbnb/lottie/c/b/p$b;->Miter:Lcom/airbnb/lottie/c/b/p$b;

    invoke-virtual {v3}, Lcom/airbnb/lottie/c/b/p$b;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    :catch_1f
    const/4 v2, 0x3

    :try_start_20
    sget-object v3, Lcom/airbnb/lottie/c/b/p$1;->b:[I

    sget-object v4, Lcom/airbnb/lottie/c/b/p$b;->Round:Lcom/airbnb/lottie/c/b/p$b;

    invoke-virtual {v4}, Lcom/airbnb/lottie/c/b/p$b;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_2a

    .line 23
    :catch_2a
    invoke-static {}, Lcom/airbnb/lottie/c/b/p$a;->values()[Lcom/airbnb/lottie/c/b/p$a;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/airbnb/lottie/c/b/p$1;->a:[I

    :try_start_33
    sget-object v3, Lcom/airbnb/lottie/c/b/p$1;->a:[I

    sget-object v4, Lcom/airbnb/lottie/c/b/p$a;->Butt:Lcom/airbnb/lottie/c/b/p$a;

    invoke-virtual {v4}, Lcom/airbnb/lottie/c/b/p$a;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3d
    sget-object v0, Lcom/airbnb/lottie/c/b/p$1;->a:[I

    sget-object v3, Lcom/airbnb/lottie/c/b/p$a;->Round:Lcom/airbnb/lottie/c/b/p$a;

    invoke-virtual {v3}, Lcom/airbnb/lottie/c/b/p$a;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_47} :catch_47

    :catch_47
    :try_start_47
    sget-object v0, Lcom/airbnb/lottie/c/b/p$1;->a:[I

    sget-object v1, Lcom/airbnb/lottie/c/b/p$a;->Unknown:Lcom/airbnb/lottie/c/b/p$a;

    invoke-virtual {v1}, Lcom/airbnb/lottie/c/b/p$a;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_51} :catch_51

    :catch_51
    return-void
.end method
