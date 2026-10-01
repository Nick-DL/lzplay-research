.class public final Landroidx/b/c;
.super Ljava/lang/Object;
.source "ContainerHelpers.java"


# static fields
.field static final a:[I

.field static final b:[J

.field static final c:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    .line 20
    new-array v1, v0, [I

    sput-object v1, Landroidx/b/c;->a:[I

    .line 21
    new-array v1, v0, [J

    sput-object v1, Landroidx/b/c;->b:[J

    .line 22
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroidx/b/c;->c:[Ljava/lang/Object;

    return-void
.end method

.method public static a(I)I
    .registers 1

    mul-int/lit8 p0, p0, 0x4

    .line 25
    invoke-static {p0}, Landroidx/b/c;->c(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x4

    return p0
.end method

.method static a([III)I
    .registers 6

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    :goto_3
    if-gt v0, p1, :cond_16

    add-int v1, v0, p1

    ushr-int/lit8 v1, v1, 0x1

    .line 51
    aget v2, p0, v1

    if-ge v2, p2, :cond_10

    add-int/lit8 v0, v1, 0x1

    goto :goto_3

    :cond_10
    if-le v2, p2, :cond_15

    add-int/lit8 p1, v1, -0x1

    goto :goto_3

    :cond_15
    return v1

    :cond_16
    not-int p0, v0

    return p0
.end method

.method public static a([JIJ)I
    .registers 8

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    :goto_3
    if-gt v0, p1, :cond_18

    add-int v1, v0, p1

    ushr-int/lit8 v1, v1, 0x1

    .line 70
    aget-wide v2, p0, v1

    cmp-long v2, v2, p2

    if-gez v2, :cond_12

    add-int/lit8 v0, v1, 0x1

    goto :goto_3

    :cond_12
    if-lez v2, :cond_17

    add-int/lit8 p1, v1, -0x1

    goto :goto_3

    :cond_17
    return v1

    :cond_18
    not-int p0, v0

    return p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public static b(I)I
    .registers 1

    mul-int/lit8 p0, p0, 0x8

    .line 29
    invoke-static {p0}, Landroidx/b/c;->c(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x8

    return p0
.end method

.method private static c(I)I
    .registers 3

    const/4 v0, 0x4

    :goto_1
    const/16 v1, 0x20

    if-ge v0, v1, :cond_f

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_c

    return v1

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return p0
.end method
