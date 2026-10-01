.class public final Landroidx/constraintlayout/a/a/e$b;
.super Ljava/lang/Enum;
.source "ConstraintAnchor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/a/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/a/a/e$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final NONE$4f4a4916:I = 0x1

.field public static final STRONG$4f4a4916:I = 0x2

.field public static final WEAK$4f4a4916:I = 0x3

.field private static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    .line 41
    new-array v0, v0, [I

    sget v1, Landroidx/constraintlayout/a/a/e$b;->NONE$4f4a4916:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Landroidx/constraintlayout/a/a/e$b;->STRONG$4f4a4916:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Landroidx/constraintlayout/a/a/e$b;->WEAK$4f4a4916:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sput-object v0, Landroidx/constraintlayout/a/a/e$b;->a:[I

    return-void
.end method

.method public static values$4df43870()[I
    .registers 1

    .line 41
    sget-object v0, Landroidx/constraintlayout/a/a/e$b;->a:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
