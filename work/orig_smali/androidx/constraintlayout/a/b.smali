.class public Landroidx/constraintlayout/a/b;
.super Ljava/lang/Object;
.source "ArrayRow.java"

# interfaces
.implements Landroidx/constraintlayout/a/e$a;


# instance fields
.field a:Landroidx/constraintlayout/a/h;

.field public b:F

.field c:Z

.field public final d:Landroidx/constraintlayout/a/a;

.field public e:Z


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/a/c;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Landroidx/constraintlayout/a/b;->b:F

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Landroidx/constraintlayout/a/b;->c:Z

    .line 31
    iput-boolean v0, p0, Landroidx/constraintlayout/a/b;->e:Z

    .line 34
    new-instance v0, Landroidx/constraintlayout/a/a;

    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/a/a;-><init>(Landroidx/constraintlayout/a/b;Landroidx/constraintlayout/a/c;)V

    iput-object v0, p0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/a/e;I)Landroidx/constraintlayout/a/b;
    .registers 6

    .line 324
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/a/e;->a(I)Landroidx/constraintlayout/a/h;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 325
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/a/e;->a(I)Landroidx/constraintlayout/a/h;

    move-result-object p1

    const/high16 p2, -0x40800000    # -1.0f

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    return-object p0
.end method

.method public final a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;I)Landroidx/constraintlayout/a/b;
    .registers 7

    const/4 v0, 0x0

    if-eqz p4, :cond_b

    if-gez p4, :cond_8

    mul-int/lit8 p4, p4, -0x1

    const/4 v0, 0x1

    :cond_8
    int-to-float p4, p4

    .line 167
    iput p4, p0, Landroidx/constraintlayout/a/b;->b:F

    :cond_b
    const/high16 p4, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    if-nez v0, :cond_21

    .line 170
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 171
    iget-object p1, p0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {p1, p2, p4}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 172
    iget-object p1, p0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {p1, p3, p4}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    goto :goto_30

    .line 174
    :cond_21
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {v0, p1, p4}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 175
    iget-object p1, p0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {p1, p2, v1}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 176
    iget-object p1, p0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {p1, p3, v1}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    :goto_30
    return-object p0
.end method

.method public final a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;F)Landroidx/constraintlayout/a/b;
    .registers 8

    .line 351
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 352
    iget-object p1, p0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 353
    iget-object p1, p0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {p1, p3, p5}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 354
    iget-object p1, p0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    neg-float p2, p5

    invoke-virtual {p1, p4, p2}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    return-object p0
.end method

.method public final a([Z)Landroidx/constraintlayout/a/h;
    .registers 3

    .line 450
    iget-object p0, p0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/a/a;->a([ZLandroidx/constraintlayout/a/h;)Landroidx/constraintlayout/a/h;

    move-result-object p0

    return-object p0
.end method

.method public final a()V
    .registers 2

    .line 455
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a;->a()V

    const/4 v0, 0x0

    .line 456
    iput-object v0, p0, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    const/4 v0, 0x0

    .line 457
    iput v0, p0, Landroidx/constraintlayout/a/b;->b:F

    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/e$a;)V
    .registers 7

    .line 466
    instance-of v0, p1, Landroidx/constraintlayout/a/b;

    if-eqz v0, :cond_2a

    .line 467
    check-cast p1, Landroidx/constraintlayout/a/b;

    const/4 v0, 0x0

    .line 468
    iput-object v0, p0, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    .line 469
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a;->a()V

    const/4 v0, 0x0

    .line 470
    :goto_f
    iget-object v1, p1, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    iget v1, v1, Landroidx/constraintlayout/a/a;->a:I

    if-ge v0, v1, :cond_2a

    .line 471
    iget-object v1, p1, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/a/a;->a(I)Landroidx/constraintlayout/a/h;

    move-result-object v1

    .line 472
    iget-object v2, p1, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/a/a;->b(I)F

    move-result v2

    .line 473
    iget-object v3, p0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v2, v4}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;FZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_2a
    return-void
.end method

.method final a(Landroidx/constraintlayout/a/h;)Z
    .registers 8

    .line 110
    iget-object p0, p0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    .line 1408
    iget v0, p0, Landroidx/constraintlayout/a/a;->g:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_22

    .line 1411
    iget v0, p0, Landroidx/constraintlayout/a/a;->g:I

    move v3, v1

    :goto_b
    if-eq v0, v2, :cond_22

    .line 1413
    iget v4, p0, Landroidx/constraintlayout/a/a;->a:I

    if-ge v3, v4, :cond_22

    .line 1414
    iget-object v4, p0, Landroidx/constraintlayout/a/a;->d:[I

    aget v4, v4, v0

    iget v5, p1, Landroidx/constraintlayout/a/h;->a:I

    if-ne v4, v5, :cond_1b

    const/4 p0, 0x1

    return p0

    .line 1417
    :cond_1b
    iget-object v4, p0, Landroidx/constraintlayout/a/a;->e:[I

    aget v0, v4, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_22
    return v1
.end method

.method public final b(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;I)Landroidx/constraintlayout/a/b;
    .registers 7

    const/4 v0, 0x0

    if-eqz p4, :cond_b

    if-gez p4, :cond_8

    mul-int/lit8 p4, p4, -0x1

    const/4 v0, 0x1

    :cond_8
    int-to-float p4, p4

    .line 196
    iput p4, p0, Landroidx/constraintlayout/a/b;->b:F

    :cond_b
    const/high16 p4, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    if-nez v0, :cond_21

    .line 199
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 200
    iget-object p1, p0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {p1, p2, p4}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 201
    iget-object p1, p0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {p1, p3, v1}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    goto :goto_30

    .line 203
    :cond_21
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {v0, p1, p4}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 204
    iget-object p1, p0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {p1, p2, v1}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 205
    iget-object p1, p0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {p1, p3, p4}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    :goto_30
    return-object p0
.end method

.method public final b(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;F)Landroidx/constraintlayout/a/b;
    .registers 8

    .line 369
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, p3, v1}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 370
    iget-object p3, p0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {p3, p4, v1}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 371
    iget-object p3, p0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    const/high16 p4, -0x41000000    # -0.5f

    invoke-virtual {p3, p1, p4}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 372
    iget-object p1, p0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {p1, p2, p4}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    neg-float p1, p5

    .line 373
    iput p1, p0, Landroidx/constraintlayout/a/b;->b:F

    return-object p0
.end method

.method public final b()Landroidx/constraintlayout/a/h;
    .registers 1

    .line 497
    iget-object p0, p0, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    return-object p0
.end method

.method final b(Landroidx/constraintlayout/a/h;)V
    .registers 6

    .line 426
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_10

    .line 428
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    iget-object v2, p0, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    const/4 v0, 0x0

    .line 429
    iput-object v0, p0, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    .line 432
    :cond_10
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;Z)F

    move-result v0

    mul-float/2addr v0, v1

    .line 433
    iput-object p1, p0, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, v0, p1

    if-nez p1, :cond_21

    return-void

    .line 437
    :cond_21
    iget p1, p0, Landroidx/constraintlayout/a/b;->b:F

    div-float/2addr p1, v0

    iput p1, p0, Landroidx/constraintlayout/a/b;->b:F

    .line 438
    iget-object p0, p0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    .line 1458
    iget p1, p0, Landroidx/constraintlayout/a/a;->g:I

    const/4 v1, 0x0

    :goto_2b
    const/4 v2, -0x1

    if-eq p1, v2, :cond_40

    .line 1460
    iget v2, p0, Landroidx/constraintlayout/a/a;->a:I

    if-ge v1, v2, :cond_40

    .line 1461
    iget-object v2, p0, Landroidx/constraintlayout/a/a;->f:[F

    aget v3, v2, p1

    div-float/2addr v3, v0

    aput v3, v2, p1

    .line 1462
    iget-object v2, p0, Landroidx/constraintlayout/a/a;->e:[I

    aget p1, v2, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_40
    return-void
.end method

.method public c(Landroidx/constraintlayout/a/h;)V
    .registers 5

    .line 481
    iget v0, p1, Landroidx/constraintlayout/a/h;->c:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    goto :goto_2a

    .line 483
    :cond_8
    iget v0, p1, Landroidx/constraintlayout/a/h;->c:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_10

    const/high16 v1, 0x447a0000    # 1000.0f

    goto :goto_2a

    .line 485
    :cond_10
    iget v0, p1, Landroidx/constraintlayout/a/h;->c:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_19

    const v1, 0x49742400    # 1000000.0f

    goto :goto_2a

    .line 487
    :cond_19
    iget v0, p1, Landroidx/constraintlayout/a/h;->c:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_22

    const v1, 0x4e6e6b28    # 1.0E9f

    goto :goto_2a

    .line 489
    :cond_22
    iget v0, p1, Landroidx/constraintlayout/a/h;->c:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2a

    const v1, 0x5368d4a5    # 1.0E12f

    .line 492
    :cond_2a
    :goto_2a
    iget-object p0, p0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {p0, p1, v1}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    const-string v0, ""

    .line 1051
    iget-object v1, p0, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    if-nez v1, :cond_18

    .line 1052
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    .line 1054
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1056
    :goto_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1058
    iget v1, p0, Landroidx/constraintlayout/a/b;->b:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_57

    .line 1059
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/constraintlayout/a/b;->b:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v0, v4

    goto :goto_59

    :cond_57
    move-object v1, v0

    move v0, v3

    .line 1062
    :goto_59
    iget-object v5, p0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    iget v5, v5, Landroidx/constraintlayout/a/a;->a:I

    :goto_5d
    if-ge v3, v5, :cond_e9

    .line 1064
    iget-object v6, p0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {v6, v3}, Landroidx/constraintlayout/a/a;->a(I)Landroidx/constraintlayout/a/h;

    move-result-object v6

    if-eqz v6, :cond_e5

    .line 1068
    iget-object v7, p0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {v7, v3}, Landroidx/constraintlayout/a/a;->b(I)F

    move-result v7

    cmpl-float v8, v7, v2

    if-eqz v8, :cond_e5

    .line 1072
    invoke-virtual {v6}, Landroidx/constraintlayout/a/h;->toString()Ljava/lang/String;

    move-result-object v6

    const/high16 v9, -0x40800000    # -1.0f

    if-nez v0, :cond_90

    cmpg-float v0, v7, v2

    if-gez v0, :cond_b6

    .line 1075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    mul-float/2addr v7, v9

    goto :goto_b6

    :cond_90
    if-lez v8, :cond_a4

    .line 1080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_b6

    .line 1082
    :cond_a4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    mul-float/2addr v7, v9

    :cond_b6
    :goto_b6
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v7, v0

    if-nez v0, :cond_cc

    .line 1087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e3

    .line 1089
    :cond_cc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_e3
    move-object v1, v0

    move v0, v4

    :cond_e5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5d

    :cond_e9
    if-nez v0, :cond_fc

    .line 1094
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0.0"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_fc
    return-object v1
.end method
