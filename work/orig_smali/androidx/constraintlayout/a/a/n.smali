.class public final Landroidx/constraintlayout/a/a/n;
.super Landroidx/constraintlayout/a/a/o;
.source "ResolutionDimension.java"


# instance fields
.field a:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Landroidx/constraintlayout/a/a/o;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Landroidx/constraintlayout/a/a/n;->a:F

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 4

    .line 31
    iget v0, p0, Landroidx/constraintlayout/a/a/n;->i:I

    if-eqz v0, :cond_b

    iget v0, p0, Landroidx/constraintlayout/a/a/n;->a:F

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_19

    :cond_b
    int-to-float p1, p1

    .line 32
    iput p1, p0, Landroidx/constraintlayout/a/a/n;->a:F

    .line 33
    iget p1, p0, Landroidx/constraintlayout/a/a/n;->i:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    .line 34
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/n;->c()V

    .line 36
    :cond_16
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/n;->d()V

    :cond_19
    return-void
.end method

.method public final b()V
    .registers 2

    .line 26
    invoke-super {p0}, Landroidx/constraintlayout/a/a/o;->b()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Landroidx/constraintlayout/a/a/n;->a:F

    return-void
.end method
