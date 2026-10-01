.class public final Landroidx/core/e/c;
.super Ljava/lang/Object;
.source "GravityCompat.java"


# direct methods
.method public static a(II)I
    .registers 4

    .line 145
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_b

    .line 146
    invoke-static {p0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p0

    return p0

    :cond_b
    const p1, -0x800001

    and-int/2addr p0, p1

    return p0
.end method
