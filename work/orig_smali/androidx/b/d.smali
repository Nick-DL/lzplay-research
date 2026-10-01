.class public final Landroidx/b/d;
.super Ljava/lang/Object;
.source "LongSparseArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Object;


# instance fields
.field public b:Z

.field public c:[J

.field public d:[Ljava/lang/Object;

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/b/d;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    .line 62
    invoke-direct {p0, v0}, Landroidx/b/d;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Landroidx/b/d;->b:Z

    if-nez p1, :cond_11

    .line 74
    sget-object p1, Landroidx/b/c;->b:[J

    iput-object p1, p0, Landroidx/b/d;->c:[J

    .line 75
    sget-object p1, Landroidx/b/c;->c:[Ljava/lang/Object;

    iput-object p1, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    return-void

    .line 77
    :cond_11
    invoke-static {p1}, Landroidx/b/c;->b(I)I

    move-result p1

    .line 78
    new-array v0, p1, [J

    iput-object v0, p0, Landroidx/b/d;->c:[J

    .line 79
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    return-void
.end method

.method private b(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 373
    iget-boolean v0, p0, Landroidx/b/d;->b:Z

    if-eqz v0, :cond_7

    .line 374
    invoke-direct {p0}, Landroidx/b/d;->c()V

    .line 377
    :cond_7
    iget-object p0, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method private c()V
    .registers 10

    .line 217
    iget v0, p0, Landroidx/b/d;->e:I

    .line 219
    iget-object v1, p0, Landroidx/b/d;->c:[J

    .line 220
    iget-object v2, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_9
    if-ge v4, v0, :cond_21

    .line 223
    aget-object v6, v2, v4

    .line 225
    sget-object v7, Landroidx/b/d;->a:Ljava/lang/Object;

    if-eq v6, v7, :cond_1e

    if-eq v4, v5, :cond_1c

    .line 227
    aget-wide v7, v1, v4

    aput-wide v7, v1, v5

    .line 228
    aput-object v6, v2, v5

    const/4 v6, 0x0

    .line 229
    aput-object v6, v2, v4

    :cond_1c
    add-int/lit8 v5, v5, 0x1

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 236
    :cond_21
    iput-boolean v3, p0, Landroidx/b/d;->b:Z

    .line 237
    iput v5, p0, Landroidx/b/d;->e:I

    return-void
.end method


# virtual methods
.method public final a(I)J
    .registers 3

    .line 353
    iget-boolean v0, p0, Landroidx/b/d;->b:Z

    if-eqz v0, :cond_7

    .line 354
    invoke-direct {p0}, Landroidx/b/d;->c()V

    .line 357
    :cond_7
    iget-object p0, p0, Landroidx/b/d;->c:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public final a()Landroidx/b/d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/b/d<",
            "TE;>;"
        }
    .end annotation

    .line 88
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/b/d;

    .line 89
    iget-object v1, p0, Landroidx/b/d;->c:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Landroidx/b/d;->c:[J

    .line 90
    iget-object p0, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    iput-object p0, v0, Landroidx/b/d;->d:[Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object v0

    :catch_1b
    move-exception p0

    .line 92
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final a(JLjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Landroidx/b/d;->c:[J

    iget v1, p0, Landroidx/b/d;->e:I

    invoke-static {v0, v1, p1, p2}, Landroidx/b/c;->a([JIJ)I

    move-result p1

    if-ltz p1, :cond_18

    .line 120
    iget-object p2, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    aget-object p2, p2, p1

    sget-object v0, Landroidx/b/d;->a:Ljava/lang/Object;

    if-ne p2, v0, :cond_13

    goto :goto_18

    .line 123
    :cond_13
    iget-object p0, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0

    :cond_18
    :goto_18
    return-object p3
.end method

.method public final b()I
    .registers 2

    .line 327
    iget-boolean v0, p0, Landroidx/b/d;->b:Z

    if-eqz v0, :cond_7

    .line 328
    invoke-direct {p0}, Landroidx/b/d;->c()V

    .line 331
    :cond_7
    iget p0, p0, Landroidx/b/d;->e:I

    return p0
.end method

.method public final b(JLjava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Landroidx/b/d;->c:[J

    iget v1, p0, Landroidx/b/d;->e:I

    invoke-static {v0, v1, p1, p2}, Landroidx/b/c;->a([JIJ)I

    move-result v0

    if-ltz v0, :cond_f

    .line 251
    iget-object p0, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    aput-object p3, p0, v0

    return-void

    :cond_f
    not-int v0, v0

    .line 255
    iget v1, p0, Landroidx/b/d;->e:I

    if-ge v0, v1, :cond_25

    iget-object v1, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroidx/b/d;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_25

    .line 256
    iget-object v1, p0, Landroidx/b/d;->c:[J

    aput-wide p1, v1, v0

    .line 257
    iget-object p0, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    aput-object p3, p0, v0

    return-void

    .line 261
    :cond_25
    iget-boolean v1, p0, Landroidx/b/d;->b:Z

    if-eqz v1, :cond_3c

    iget v1, p0, Landroidx/b/d;->e:I

    iget-object v2, p0, Landroidx/b/d;->c:[J

    array-length v2, v2

    if-lt v1, v2, :cond_3c

    .line 262
    invoke-direct {p0}, Landroidx/b/d;->c()V

    .line 265
    iget-object v0, p0, Landroidx/b/d;->c:[J

    iget v1, p0, Landroidx/b/d;->e:I

    invoke-static {v0, v1, p1, p2}, Landroidx/b/c;->a([JIJ)I

    move-result v0

    not-int v0, v0

    .line 268
    :cond_3c
    iget v1, p0, Landroidx/b/d;->e:I

    iget-object v2, p0, Landroidx/b/d;->c:[J

    array-length v2, v2

    if-lt v1, v2, :cond_64

    .line 269
    iget v1, p0, Landroidx/b/d;->e:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/b/c;->b(I)I

    move-result v1

    .line 271
    new-array v2, v1, [J

    .line 272
    new-array v1, v1, [Ljava/lang/Object;

    .line 275
    iget-object v3, p0, Landroidx/b/d;->c:[J

    iget-object v4, p0, Landroidx/b/d;->c:[J

    array-length v4, v4

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    iget-object v3, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    iget-object v4, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    iput-object v2, p0, Landroidx/b/d;->c:[J

    .line 279
    iput-object v1, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    .line 282
    :cond_64
    iget v1, p0, Landroidx/b/d;->e:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_7b

    .line 284
    iget-object v1, p0, Landroidx/b/d;->c:[J

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Landroidx/b/d;->e:I

    sub-int/2addr v3, v0

    invoke-static {v1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    iget-object v1, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    iget v3, p0, Landroidx/b/d;->e:I

    sub-int/2addr v3, v0

    invoke-static {v1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    :cond_7b
    iget-object v1, p0, Landroidx/b/d;->c:[J

    aput-wide p1, v1, v0

    .line 289
    iget-object p1, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    aput-object p3, p1, v0

    .line 290
    iget p1, p0, Landroidx/b/d;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/b/d;->e:I

    return-void
.end method

.method public final c(JLjava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .line 456
    iget v0, p0, Landroidx/b/d;->e:I

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidx/b/d;->c:[J

    iget v1, p0, Landroidx/b/d;->e:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    cmp-long v0, p1, v0

    if-gtz v0, :cond_14

    .line 457
    invoke-virtual {p0, p1, p2, p3}, Landroidx/b/d;->b(JLjava/lang/Object;)V

    return-void

    .line 461
    :cond_14
    iget-boolean v0, p0, Landroidx/b/d;->b:Z

    if-eqz v0, :cond_22

    iget v0, p0, Landroidx/b/d;->e:I

    iget-object v1, p0, Landroidx/b/d;->c:[J

    array-length v1, v1

    if-lt v0, v1, :cond_22

    .line 462
    invoke-direct {p0}, Landroidx/b/d;->c()V

    .line 465
    :cond_22
    iget v0, p0, Landroidx/b/d;->e:I

    .line 466
    iget-object v1, p0, Landroidx/b/d;->c:[J

    array-length v1, v1

    if-lt v0, v1, :cond_48

    add-int/lit8 v1, v0, 0x1

    .line 467
    invoke-static {v1}, Landroidx/b/c;->b(I)I

    move-result v1

    .line 469
    new-array v2, v1, [J

    .line 470
    new-array v1, v1, [Ljava/lang/Object;

    .line 473
    iget-object v3, p0, Landroidx/b/d;->c:[J

    iget-object v4, p0, Landroidx/b/d;->c:[J

    array-length v4, v4

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 474
    iget-object v3, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    iget-object v4, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    iput-object v2, p0, Landroidx/b/d;->c:[J

    .line 477
    iput-object v1, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    .line 480
    :cond_48
    iget-object v1, p0, Landroidx/b/d;->c:[J

    aput-wide p1, v1, v0

    .line 481
    iget-object p1, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    aput-object p3, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 482
    iput v0, p0, Landroidx/b/d;->e:I

    return-void
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 50
    invoke-virtual {p0}, Landroidx/b/d;->a()Landroidx/b/d;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 494
    invoke-virtual {p0}, Landroidx/b/d;->b()I

    move-result v0

    if-gtz v0, :cond_9

    const-string p0, "{}"

    return-object p0

    .line 498
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/b/d;->e:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 500
    :goto_18
    iget v2, p0, Landroidx/b/d;->e:I

    if-ge v1, v2, :cond_41

    if-lez v1, :cond_23

    const-string v2, ", "

    .line 502
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    :cond_23
    invoke-virtual {p0, v1}, Landroidx/b/d;->a(I)J

    move-result-wide v2

    .line 505
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 506
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 507
    invoke-direct {p0, v1}, Landroidx/b/d;->b(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_39

    .line 509
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3e

    :cond_39
    const-string v2, "(this Map)"

    .line 511
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_41
    const/16 p0, 0x7d

    .line 514
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
