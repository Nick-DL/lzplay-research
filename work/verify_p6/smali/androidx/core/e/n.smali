.class public final Landroidx/core/e/n;
.super Ljava/lang/Object;
.source "NestedScrollingParentHelper.java"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 92
    iget v0, p0, Landroidx/core/e/n;->a:I

    iget p0, p0, Landroidx/core/e/n;->b:I

    or-int/2addr p0, v0

    return p0
.end method

.method public final a(II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 77
    iput p1, p0, Landroidx/core/e/n;->b:I

    return-void

    .line 79
    :cond_0
    iput p1, p0, Landroidx/core/e/n;->a:I

    return-void
.end method
