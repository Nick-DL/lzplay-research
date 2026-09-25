.class public final Lcom/airbnb/lottie/c/c/d$b;
.super Ljava/lang/Enum;
.source "Layer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/c/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/c/c/d$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final Add$f97b8e:I = 0x2

.field public static final Invert$f97b8e:I = 0x3

.field public static final None$f97b8e:I = 0x1

.field public static final Unknown$f97b8e:I = 0x4

.field private static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    .line 29
    new-array v0, v0, [I

    sget v1, Lcom/airbnb/lottie/c/c/d$b;->None$f97b8e:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/airbnb/lottie/c/c/d$b;->Add$f97b8e:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/airbnb/lottie/c/c/d$b;->Invert$f97b8e:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/airbnb/lottie/c/c/d$b;->Unknown$f97b8e:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sput-object v0, Lcom/airbnb/lottie/c/c/d$b;->a:[I

    return-void
.end method

.method public static values$3b8ca4d4()[I
    .locals 1

    .line 29
    sget-object v0, Lcom/airbnb/lottie/c/c/d$b;->a:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
