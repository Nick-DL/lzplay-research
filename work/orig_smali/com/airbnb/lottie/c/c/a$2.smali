.class final synthetic Lcom/airbnb/lottie/c/c/a$2;
.super Ljava/lang/Object;
.source "BaseLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/c/c/a;
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

    .line 279
    invoke-static {}, Lcom/airbnb/lottie/c/b/g$a;->values$ba4eb7d()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/airbnb/lottie/c/c/a$2;->b:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/airbnb/lottie/c/c/a$2;->b:[I

    sget v2, Lcom/airbnb/lottie/c/b/g$a;->MaskModeSubtract$2eee3dc9:I

    sub-int/2addr v2, v0

    aput v0, v1, v2
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_11} :catch_11

    :catch_11
    const/4 v1, 0x2

    :try_start_12
    sget-object v2, Lcom/airbnb/lottie/c/c/a$2;->b:[I

    sget v3, Lcom/airbnb/lottie/c/b/g$a;->MaskModeIntersect$2eee3dc9:I

    sub-int/2addr v3, v0

    aput v1, v2, v3
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_19} :catch_19

    :catch_19
    const/4 v2, 0x3

    :try_start_1a
    sget-object v3, Lcom/airbnb/lottie/c/c/a$2;->b:[I

    sget v4, Lcom/airbnb/lottie/c/b/g$a;->MaskModeAdd$2eee3dc9:I

    sub-int/2addr v4, v0

    aput v2, v3, v4
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_21} :catch_21

    .line 43
    :catch_21
    invoke-static {}, Lcom/airbnb/lottie/c/c/d$a;->values()[Lcom/airbnb/lottie/c/c/d$a;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/airbnb/lottie/c/c/a$2;->a:[I

    :try_start_2a
    sget-object v3, Lcom/airbnb/lottie/c/c/a$2;->a:[I

    sget-object v4, Lcom/airbnb/lottie/c/c/d$a;->Shape:Lcom/airbnb/lottie/c/c/d$a;

    invoke-virtual {v4}, Lcom/airbnb/lottie/c/c/d$a;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_34} :catch_34

    :catch_34
    :try_start_34
    sget-object v0, Lcom/airbnb/lottie/c/c/a$2;->a:[I

    sget-object v3, Lcom/airbnb/lottie/c/c/d$a;->PreComp:Lcom/airbnb/lottie/c/c/d$a;

    invoke-virtual {v3}, Lcom/airbnb/lottie/c/c/d$a;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/airbnb/lottie/c/c/a$2;->a:[I

    sget-object v1, Lcom/airbnb/lottie/c/c/d$a;->Solid:Lcom/airbnb/lottie/c/c/d$a;

    invoke-virtual {v1}, Lcom/airbnb/lottie/c/c/d$a;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_48} :catch_48

    :catch_48
    :try_start_48
    sget-object v0, Lcom/airbnb/lottie/c/c/a$2;->a:[I

    sget-object v1, Lcom/airbnb/lottie/c/c/d$a;->Image:Lcom/airbnb/lottie/c/c/d$a;

    invoke-virtual {v1}, Lcom/airbnb/lottie/c/c/d$a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_53} :catch_53

    :catch_53
    :try_start_53
    sget-object v0, Lcom/airbnb/lottie/c/c/a$2;->a:[I

    sget-object v1, Lcom/airbnb/lottie/c/c/d$a;->Null:Lcom/airbnb/lottie/c/c/d$a;

    invoke-virtual {v1}, Lcom/airbnb/lottie/c/c/d$a;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_5e} :catch_5e

    :catch_5e
    :try_start_5e
    sget-object v0, Lcom/airbnb/lottie/c/c/a$2;->a:[I

    sget-object v1, Lcom/airbnb/lottie/c/c/d$a;->Text:Lcom/airbnb/lottie/c/c/d$a;

    invoke-virtual {v1}, Lcom/airbnb/lottie/c/c/d$a;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e .. :try_end_69} :catch_69

    :catch_69
    :try_start_69
    sget-object v0, Lcom/airbnb/lottie/c/c/a$2;->a:[I

    sget-object v1, Lcom/airbnb/lottie/c/c/d$a;->Unknown:Lcom/airbnb/lottie/c/c/d$a;

    invoke-virtual {v1}, Lcom/airbnb/lottie/c/c/d$a;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_74
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_74} :catch_74

    :catch_74
    return-void
.end method
