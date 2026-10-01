.class public final Landroidx/core/graphics/b;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/b$b;,
        Landroidx/core/graphics/b$a;
    }
.end annotation


# direct methods
.method private static a(Ljava/lang/String;I)I
    .registers 5

    .line 174
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_24

    .line 175
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v2, v0, -0x5a

    mul-int/2addr v1, v2

    if-lez v1, :cond_18

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v2, v0, -0x7a

    mul-int/2addr v1, v2

    if-gtz v1, :cond_21

    :cond_18
    const/16 v1, 0x65

    if-eq v0, v1, :cond_21

    const/16 v1, 0x45

    if-eq v0, v1, :cond_21

    return p1

    :cond_21
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_24
    return p1
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Path;
    .registers 4

    .line 73
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 74
    invoke-static {p0}, Landroidx/core/graphics/b;->b(Ljava/lang/String;)[Landroidx/core/graphics/b$b;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 77
    :try_start_b
    invoke-static {v1, v0}, Landroidx/core/graphics/b$b;->a([Landroidx/core/graphics/b$b;Landroid/graphics/Path;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    .line 79
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "Error in parsing "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/util/ArrayList;C[F)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/core/graphics/b$b;",
            ">;C[F)V"
        }
    .end annotation

    .line 190
    new-instance v0, Landroidx/core/graphics/b$b;

    invoke-direct {v0, p1, p2}, Landroidx/core/graphics/b$b;-><init>(C[F)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a([Landroidx/core/graphics/b$b;[Landroidx/core/graphics/b$b;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_2c

    if-nez p1, :cond_6

    goto :goto_2c

    .line 141
    :cond_6
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_b

    return v0

    :cond_b
    move v1, v0

    .line 145
    :goto_c
    array-length v2, p0

    if-ge v1, v2, :cond_2a

    .line 146
    aget-object v2, p0, v1

    iget-char v2, v2, Landroidx/core/graphics/b$b;->a:C

    aget-object v3, p1, v1

    iget-char v3, v3, Landroidx/core/graphics/b$b;->a:C

    if-ne v2, v3, :cond_29

    aget-object v2, p0, v1

    iget-object v2, v2, Landroidx/core/graphics/b$b;->b:[F

    array-length v2, v2

    aget-object v3, p1, v1

    iget-object v3, v3, Landroidx/core/graphics/b$b;->b:[F

    array-length v3, v3

    if-eq v2, v3, :cond_26

    goto :goto_29

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_29
    :goto_29
    return v0

    :cond_2a
    const/4 p0, 0x1

    return p0

    :cond_2c
    :goto_2c
    return v0
.end method

.method static a([FI)[F
    .registers 4

    if-ltz p1, :cond_18

    .line 57
    array-length v0, p0

    if-ltz v0, :cond_12

    const/4 v1, 0x0

    sub-int/2addr p1, v1

    sub-int/2addr v0, v1

    .line 62
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 63
    new-array p1, p1, [F

    .line 64
    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    .line 59
    :cond_12
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    .line 55
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static a([Landroidx/core/graphics/b$b;)[Landroidx/core/graphics/b$b;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 123
    :cond_4
    array-length v0, p0

    new-array v0, v0, [Landroidx/core/graphics/b$b;

    const/4 v1, 0x0

    .line 124
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_17

    .line 125
    new-instance v2, Landroidx/core/graphics/b$b;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Landroidx/core/graphics/b$b;-><init>(Landroidx/core/graphics/b$b;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_17
    return-object v0
.end method

.method public static b(Ljava/lang/String;)[Landroidx/core/graphics/b$b;
    .registers 8

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 97
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    .line 98
    :goto_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_36

    .line 99
    invoke-static {p0, v3}, Landroidx/core/graphics/b;->a(Ljava/lang/String;I)I

    move-result v3

    .line 100
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_30

    .line 102
    invoke-static {v4}, Landroidx/core/graphics/b;->c(Ljava/lang/String;)[F

    move-result-object v5

    .line 103
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v0, v4, v5}, Landroidx/core/graphics/b;->a(Ljava/util/ArrayList;C[F)V

    :cond_30
    add-int/lit8 v4, v3, 0x1

    move v6, v4

    move v4, v3

    move v3, v6

    goto :goto_d

    :cond_36
    sub-int/2addr v3, v4

    if-ne v3, v1, :cond_48

    .line 109
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v4, v1, :cond_48

    .line 110
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result p0

    new-array v1, v2, [F

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/b;->a(Ljava/util/ArrayList;C[F)V

    .line 112
    :cond_48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroidx/core/graphics/b$b;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroidx/core/graphics/b$b;

    return-object p0
.end method

.method private static c(Ljava/lang/String;)[F
    .registers 14

    const/4 v0, 0x0

    .line 211
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7a

    if-eq v1, v2, :cond_9c

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_13

    goto/16 :goto_9c

    .line 215
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [F

    .line 220
    new-instance v2, Landroidx/core/graphics/b$a;

    invoke-direct {v2}, Landroidx/core/graphics/b$a;-><init>()V

    .line 221
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    move v6, v0

    move v5, v4

    :goto_25
    if-ge v5, v3, :cond_7d

    .line 1260
    iput-boolean v0, v2, Landroidx/core/graphics/b$a;->b:Z

    move v8, v0

    move v9, v8

    move v10, v9

    move v7, v5

    .line 1263
    :goto_2d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v7, v11, :cond_61

    .line 1266
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x20

    if-eq v11, v12, :cond_5a

    const/16 v12, 0x45

    if-eq v11, v12, :cond_58

    const/16 v12, 0x65

    if-eq v11, v12, :cond_58

    packed-switch v11, :pswitch_data_a0

    goto :goto_56

    :pswitch_47
    if-nez v9, :cond_4c

    move v8, v0

    move v9, v4

    goto :goto_5c

    .line 1285
    :cond_4c
    iput-boolean v4, v2, Landroidx/core/graphics/b$a;->b:Z

    goto :goto_5a

    :pswitch_4f
    if-eq v7, v5, :cond_56

    if-nez v8, :cond_56

    .line 1276
    iput-boolean v4, v2, Landroidx/core/graphics/b$a;->b:Z

    goto :goto_5a

    :cond_56
    :goto_56
    move v8, v0

    goto :goto_5c

    :cond_58
    move v8, v4

    goto :goto_5c

    :cond_5a
    :goto_5a
    :pswitch_5a
    move v8, v0

    move v10, v4

    :goto_5c
    if-nez v10, :cond_61

    add-int/lit8 v7, v7, 0x1

    goto :goto_2d

    .line 1299
    :cond_61
    iput v7, v2, Landroidx/core/graphics/b$a;->a:I

    .line 228
    iget v7, v2, Landroidx/core/graphics/b$a;->a:I

    if-ge v5, v7, :cond_74

    add-int/lit8 v8, v6, 0x1

    .line 232
    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 231
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v6

    move v6, v8

    .line 235
    :cond_74
    iget-boolean v5, v2, Landroidx/core/graphics/b$a;->b:Z

    if-eqz v5, :cond_7a

    move v5, v7

    goto :goto_25

    :cond_7a
    add-int/lit8 v5, v7, 0x1

    goto :goto_25

    .line 242
    :cond_7d
    invoke-static {v1, v6}, Landroidx/core/graphics/b;->a([FI)[F

    move-result-object v0
    :try_end_81
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_81} :catch_82

    return-object v0

    :catch_82
    move-exception v0

    .line 244
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error in parsing \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 212
    :cond_9c
    :goto_9c
    new-array p0, v0, [F

    return-object p0

    nop

    :pswitch_data_a0
    .packed-switch 0x2c
        :pswitch_5a
        :pswitch_4f
        :pswitch_47
    .end packed-switch
.end method
