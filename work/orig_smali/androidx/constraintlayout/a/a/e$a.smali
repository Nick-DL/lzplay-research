.class public final Landroidx/constraintlayout/a/a/e$a;
.super Ljava/lang/Enum;
.source "ConstraintAnchor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/a/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/a/a/e$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final RELAXED$3f5d9801:I = 0x1

.field public static final STRICT$3f5d9801:I = 0x2

.field private static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    .line 46
    new-array v0, v0, [I

    sget v1, Landroidx/constraintlayout/a/a/e$a;->RELAXED$3f5d9801:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Landroidx/constraintlayout/a/a/e$a;->STRICT$3f5d9801:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Landroidx/constraintlayout/a/a/e$a;->a:[I

    return-void
.end method

.method public static values$2a7a5d07()[I
    .registers 1

    .line 46
    sget-object v0, Landroidx/constraintlayout/a/a/e$a;->a:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
