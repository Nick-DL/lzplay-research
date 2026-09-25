.class public final Landroidx/constraintlayout/a/h$a;
.super Ljava/lang/Enum;
.source "SolverVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/a/h$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONSTANT$2fe29fa6:I = 0x2

.field public static final ERROR$2fe29fa6:I = 0x4

.field public static final SLACK$2fe29fa6:I = 0x3

.field public static final UNKNOWN$2fe29fa6:I = 0x5

.field public static final UNRESTRICTED$2fe29fa6:I = 0x1

.field private static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    .line 65
    new-array v0, v0, [I

    sget v1, Landroidx/constraintlayout/a/h$a;->UNRESTRICTED$2fe29fa6:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Landroidx/constraintlayout/a/h$a;->CONSTANT$2fe29fa6:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Landroidx/constraintlayout/a/h$a;->SLACK$2fe29fa6:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Landroidx/constraintlayout/a/h$a;->ERROR$2fe29fa6:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Landroidx/constraintlayout/a/h$a;->UNKNOWN$2fe29fa6:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sput-object v0, Landroidx/constraintlayout/a/h$a;->a:[I

    return-void
.end method

.method public static values$6e13a3ac()[I
    .locals 1

    .line 65
    sget-object v0, Landroidx/constraintlayout/a/h$a;->a:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
