.class final Landroidx/core/b/b$4;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[B>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6

    .line 784
    check-cast p1, [B

    check-cast p2, [B

    .line 1787
    array-length p0, p1

    array-length v0, p2

    if-eq p0, v0, :cond_c

    .line 1788
    array-length p0, p1

    array-length p1, p2

    sub-int/2addr p0, p1

    return p0

    :cond_c
    const/4 p0, 0x0

    move v0, p0

    .line 1790
    :goto_e
    array-length v1, p1

    if-ge v0, v1, :cond_20

    .line 1791
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    if-eq v1, v2, :cond_1d

    .line 1792
    aget-byte p0, p1, v0

    aget-byte p1, p2, v0

    sub-int/2addr p0, p1

    return p0

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_20
    return p0
.end method
