.class final synthetic Landroidx/constraintlayout/a/a/f$1;
.super Ljava/lang/Object;
.source "ConstraintWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/a/a/f;
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
    .registers 6

    .line 2649
    invoke-static {}, Landroidx/constraintlayout/a/a/f$a;->values$3102af29()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/constraintlayout/a/a/f$1;->b:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Landroidx/constraintlayout/a/a/f$1;->b:[I

    sget v2, Landroidx/constraintlayout/a/a/f$a;->FIXED$689812f:I

    sub-int/2addr v2, v0

    aput v0, v1, v2
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_11} :catch_11

    :catch_11
    const/4 v1, 0x2

    :try_start_12
    sget-object v2, Landroidx/constraintlayout/a/a/f$1;->b:[I

    sget v3, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    sub-int/2addr v3, v0

    aput v1, v2, v3
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_19} :catch_19

    :catch_19
    const/4 v2, 0x3

    :try_start_1a
    sget-object v3, Landroidx/constraintlayout/a/a/f$1;->b:[I

    sget v4, Landroidx/constraintlayout/a/a/f$a;->MATCH_PARENT$689812f:I

    sub-int/2addr v4, v0

    aput v2, v3, v4
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_21} :catch_21

    :catch_21
    const/4 v3, 0x4

    :try_start_22
    sget-object v4, Landroidx/constraintlayout/a/a/f$1;->b:[I

    sget v5, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    sub-int/2addr v5, v0

    aput v3, v4, v5
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_29} :catch_29

    .line 1100
    :catch_29
    invoke-static {}, Landroidx/constraintlayout/a/a/e$c;->values()[Landroidx/constraintlayout/a/a/e$c;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Landroidx/constraintlayout/a/a/f$1;->a:[I

    :try_start_32
    sget-object v4, Landroidx/constraintlayout/a/a/f$1;->a:[I

    sget-object v5, Landroidx/constraintlayout/a/a/e$c;->LEFT:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v5}, Landroidx/constraintlayout/a/a/e$c;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3c} :catch_3c

    :catch_3c
    :try_start_3c
    sget-object v0, Landroidx/constraintlayout/a/a/f$1;->a:[I

    sget-object v4, Landroidx/constraintlayout/a/a/e$c;->TOP:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v4}, Landroidx/constraintlayout/a/a/e$c;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_46} :catch_46

    :catch_46
    :try_start_46
    sget-object v0, Landroidx/constraintlayout/a/a/f$1;->a:[I

    sget-object v1, Landroidx/constraintlayout/a/a/e$c;->RIGHT:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/e$c;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_50} :catch_50

    :catch_50
    :try_start_50
    sget-object v0, Landroidx/constraintlayout/a/a/f$1;->a:[I

    sget-object v1, Landroidx/constraintlayout/a/a/e$c;->BOTTOM:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/e$c;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_5a} :catch_5a

    :catch_5a
    :try_start_5a
    sget-object v0, Landroidx/constraintlayout/a/a/f$1;->a:[I

    sget-object v1, Landroidx/constraintlayout/a/a/e$c;->BASELINE:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/e$c;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_65} :catch_65

    :catch_65
    :try_start_65
    sget-object v0, Landroidx/constraintlayout/a/a/f$1;->a:[I

    sget-object v1, Landroidx/constraintlayout/a/a/e$c;->CENTER:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/e$c;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_70} :catch_70

    :catch_70
    :try_start_70
    sget-object v0, Landroidx/constraintlayout/a/a/f$1;->a:[I

    sget-object v1, Landroidx/constraintlayout/a/a/e$c;->CENTER_X:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/e$c;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70 .. :try_end_7b} :catch_7b

    :catch_7b
    :try_start_7b
    sget-object v0, Landroidx/constraintlayout/a/a/f$1;->a:[I

    sget-object v1, Landroidx/constraintlayout/a/a/e$c;->CENTER_Y:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/e$c;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_87
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7b .. :try_end_87} :catch_87

    :catch_87
    :try_start_87
    sget-object v0, Landroidx/constraintlayout/a/a/f$1;->a:[I

    sget-object v1, Landroidx/constraintlayout/a/a/e$c;->NONE:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/e$c;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87 .. :try_end_93} :catch_93

    :catch_93
    return-void
.end method
