.class final Landroidx/constraintlayout/a/g$b;
.super Ljava/lang/Object;
.source "Pools.java"

# interfaces
.implements Landroidx/constraintlayout/a/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/constraintlayout/a/g$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:[Ljava/lang/Object;

.field private b:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 100
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/a/g$b;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 106
    iget v0, p0, Landroidx/constraintlayout/a/g$b;->b:I

    const/4 v1, 0x0

    if-lez v0, :cond_18

    .line 107
    iget v0, p0, Landroidx/constraintlayout/a/g$b;->b:I

    add-int/lit8 v0, v0, -0x1

    .line 108
    iget-object v2, p0, Landroidx/constraintlayout/a/g$b;->a:[Ljava/lang/Object;

    aget-object v2, v2, v0

    .line 109
    iget-object v3, p0, Landroidx/constraintlayout/a/g$b;->a:[Ljava/lang/Object;

    aput-object v1, v3, v0

    .line 110
    iget v0, p0, Landroidx/constraintlayout/a/g$b;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/a/g$b;->b:I

    return-object v2

    :cond_18
    return-object v1
.end method

.method public final a([Ljava/lang/Object;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .line 133
    array-length v0, p1

    if-le p2, v0, :cond_4

    .line 134
    array-length p2, p1

    :cond_4
    const/4 v0, 0x0

    :goto_5
    if-ge v0, p2, :cond_1f

    .line 137
    aget-object v1, p1, v0

    .line 143
    iget v2, p0, Landroidx/constraintlayout/a/g$b;->b:I

    iget-object v3, p0, Landroidx/constraintlayout/a/g$b;->a:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v2, v3, :cond_1c

    .line 144
    iget-object v2, p0, Landroidx/constraintlayout/a/g$b;->a:[Ljava/lang/Object;

    iget v3, p0, Landroidx/constraintlayout/a/g$b;->b:I

    aput-object v1, v2, v3

    .line 145
    iget v1, p0, Landroidx/constraintlayout/a/g$b;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/a/g$b;->b:I

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1f
    return-void
.end method

.method public final a(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 123
    iget v0, p0, Landroidx/constraintlayout/a/g$b;->b:I

    iget-object v1, p0, Landroidx/constraintlayout/a/g$b;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 124
    iget-object v0, p0, Landroidx/constraintlayout/a/g$b;->a:[Ljava/lang/Object;

    iget v1, p0, Landroidx/constraintlayout/a/g$b;->b:I

    aput-object p1, v0, v1

    .line 125
    iget p1, p0, Landroidx/constraintlayout/a/g$b;->b:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/constraintlayout/a/g$b;->b:I

    return v0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method
