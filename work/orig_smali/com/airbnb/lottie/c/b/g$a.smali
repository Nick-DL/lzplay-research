.class public final Lcom/airbnb/lottie/c/b/g$a;
.super Ljava/lang/Enum;
.source "Mask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/c/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/c/b/g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final MaskModeAdd$2eee3dc9:I = 0x1

.field public static final MaskModeIntersect$2eee3dc9:I = 0x3

.field public static final MaskModeSubtract$2eee3dc9:I = 0x2

.field private static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    .line 7
    new-array v0, v0, [I

    sget v1, Lcom/airbnb/lottie/c/b/g$a;->MaskModeAdd$2eee3dc9:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/airbnb/lottie/c/b/g$a;->MaskModeSubtract$2eee3dc9:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/airbnb/lottie/c/b/g$a;->MaskModeIntersect$2eee3dc9:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sput-object v0, Lcom/airbnb/lottie/c/b/g$a;->a:[I

    return-void
.end method

.method public static values$ba4eb7d()[I
    .registers 1

    .line 7
    sget-object v0, Lcom/airbnb/lottie/c/b/g$a;->a:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
