.class public final Lcom/airbnb/lottie/c/b/f;
.super Ljava/lang/Enum;
.source "GradientType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/c/b/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final Linear$9a8e412:I = 0x1

.field public static final Radial$9a8e412:I = 0x2

.field private static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [I

    sget v1, Lcom/airbnb/lottie/c/b/f;->Linear$9a8e412:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/airbnb/lottie/c/b/f;->Radial$9a8e412:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Lcom/airbnb/lottie/c/b/f;->a:[I

    return-void
.end method

.method public static values$18494e18()[I
    .locals 1

    .line 3
    sget-object v0, Lcom/airbnb/lottie/c/b/f;->a:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
