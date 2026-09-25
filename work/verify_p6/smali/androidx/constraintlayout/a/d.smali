.class public final Landroidx/constraintlayout/a/d;
.super Landroidx/constraintlayout/a/b;
.source "GoalRow.java"


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/a/c;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroidx/constraintlayout/a/b;-><init>(Landroidx/constraintlayout/a/c;)V

    return-void
.end method


# virtual methods
.method public final c(Landroidx/constraintlayout/a/h;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Landroidx/constraintlayout/a/b;->c(Landroidx/constraintlayout/a/h;)V

    .line 30
    iget p0, p1, Landroidx/constraintlayout/a/h;->i:I

    add-int/lit8 p0, p0, -0x1

    iput p0, p1, Landroidx/constraintlayout/a/h;->i:I

    return-void
.end method
