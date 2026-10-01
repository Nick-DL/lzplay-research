.class public final Landroidx/constraintlayout/a/a/a;
.super Ljava/lang/Object;
.source "Analyzer.java"


# direct methods
.method private static a(Landroidx/constraintlayout/a/a/f;)I
    .registers 3

    .line 533
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/f;->y()I

    move-result v0

    sget v1, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    if-ne v0, v1, :cond_23

    .line 534
    iget v0, p0, Landroidx/constraintlayout/a/a/f;->L:I

    if-nez v0, :cond_16

    .line 535
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/f;->n()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroidx/constraintlayout/a/a/f;->K:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_1f

    .line 537
    :cond_16
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/f;->n()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroidx/constraintlayout/a/a/f;->K:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 539
    :goto_1f
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/a/a/f;->e(I)V

    goto :goto_48

    .line 540
    :cond_23
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/f;->z()I

    move-result v0

    sget v1, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    if-ne v0, v1, :cond_47

    .line 541
    iget v0, p0, Landroidx/constraintlayout/a/a/f;->L:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3a

    .line 542
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/f;->m()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroidx/constraintlayout/a/a/f;->K:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_43

    .line 544
    :cond_3a
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/f;->m()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroidx/constraintlayout/a/a/f;->K:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 546
    :goto_43
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/a/a/f;->f(I)V

    goto :goto_48

    :cond_47
    const/4 v0, -0x1

    :goto_48
    return v0
.end method

.method private static a(Landroidx/constraintlayout/a/a/f;I)I
    .registers 6

    mul-int/lit8 v0, p1, 0x2

    .line 506
    iget-object v1, p0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v1, v1, v0

    .line 507
    iget-object v2, p0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v2, v0

    .line 508
    iget-object v2, v1, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v2, :cond_44

    iget-object v2, v1, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    if-ne v2, v3, :cond_44

    iget-object v2, v0, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v2, :cond_44

    iget-object v2, v0, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    if-ne v2, v3, :cond_44

    .line 513
    iget-object v2, p0, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/a/a/f;->b(I)I

    move-result v2

    if-nez p1, :cond_2f

    .line 514
    iget v3, p0, Landroidx/constraintlayout/a/a/f;->Y:F

    goto :goto_31

    :cond_2f
    iget v3, p0, Landroidx/constraintlayout/a/a/f;->Z:F

    .line 516
    :goto_31
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/a/a/f;->b(I)I

    move-result p0

    .line 517
    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result p1

    sub-int/2addr v2, p1

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result p1

    sub-int/2addr v2, p1

    sub-int/2addr v2, p0

    int-to-float p0, v2

    mul-float/2addr p0, v3

    float-to-int p0, p0

    return p0

    :cond_44
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Landroidx/constraintlayout/a/a/f;IZI)I
    .registers 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 304
    iget-boolean v3, v0, Landroidx/constraintlayout/a/a/f;->af:Z

    const/4 v4, 0x0

    if-nez v3, :cond_c

    return v4

    .line 316
    :cond_c
    iget-object v3, v0, Landroidx/constraintlayout/a/a/f;->A:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    const/4 v5, 0x1

    if-eqz v3, :cond_17

    if-ne v1, v5, :cond_17

    move v3, v5

    goto :goto_18

    :cond_17
    move v3, v4

    :goto_18
    if-eqz v2, :cond_28

    .line 12031
    iget v6, v0, Landroidx/constraintlayout/a/a/f;->S:I

    .line 320
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/f;->n()I

    move-result v7

    .line 13031
    iget v8, v0, Landroidx/constraintlayout/a/a/f;->S:I

    sub-int/2addr v7, v8

    mul-int/lit8 v8, v1, 0x2

    add-int/lit8 v9, v8, 0x1

    goto :goto_35

    .line 324
    :cond_28
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/f;->n()I

    move-result v6

    .line 14031
    iget v7, v0, Landroidx/constraintlayout/a/a/f;->S:I

    sub-int/2addr v6, v7

    .line 15031
    iget v7, v0, Landroidx/constraintlayout/a/a/f;->S:I

    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v8, v9, 0x1

    .line 332
    :goto_35
    iget-object v10, v0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v10, v10, v9

    iget-object v10, v10, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v10, :cond_49

    iget-object v10, v0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v10, v10, v8

    iget-object v10, v10, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v10, :cond_49

    move v10, v8

    move v8, v9

    const/4 v9, -0x1

    goto :goto_4b

    :cond_49
    move v10, v9

    move v9, v5

    :goto_4b
    if-eqz v3, :cond_50

    sub-int v12, p3, v6

    goto :goto_52

    :cond_50
    move/from16 v12, p3

    .line 345
    :goto_52
    iget-object v13, v0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v13, v13, v8

    invoke-virtual {v13}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v13

    mul-int/2addr v13, v9

    invoke-static/range {p0 .. p1}, Landroidx/constraintlayout/a/a/a;->a(Landroidx/constraintlayout/a/a/f;I)I

    move-result v14

    add-int/2addr v13, v14

    add-int/2addr v12, v13

    if-nez v1, :cond_68

    .line 347
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/f;->m()I

    move-result v14

    goto :goto_6c

    :cond_68
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/f;->n()I

    move-result v14

    :goto_6c
    mul-int/2addr v14, v9

    .line 348
    iget-object v15, v0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v15, v15, v8

    .line 15058
    iget-object v15, v15, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 348
    iget-object v15, v15, Landroidx/constraintlayout/a/a/m;->h:Ljava/util/HashSet;

    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_79
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_96

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroidx/constraintlayout/a/a/o;

    .line 349
    move-object/from16 v11, v17

    check-cast v11, Landroidx/constraintlayout/a/a/m;

    .line 350
    iget-object v11, v11, Landroidx/constraintlayout/a/a/m;->a:Landroidx/constraintlayout/a/a/e;

    iget-object v11, v11, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    invoke-static {v11, v1, v2, v12}, Landroidx/constraintlayout/a/a/a;->a(Landroidx/constraintlayout/a/a/f;IZI)I

    move-result v11

    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_79

    .line 352
    :cond_96
    iget-object v11, v0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v11, v11, v10

    .line 16058
    iget-object v11, v11, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 352
    iget-object v11, v11, Landroidx/constraintlayout/a/a/m;->h:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v15, 0x0

    :goto_a3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroidx/constraintlayout/a/a/o;

    .line 353
    move-object/from16 v5, v17

    check-cast v5, Landroidx/constraintlayout/a/a/m;

    .line 354
    iget-object v5, v5, Landroidx/constraintlayout/a/a/m;->a:Landroidx/constraintlayout/a/a/e;

    iget-object v5, v5, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    move-object/from16 v18, v11

    add-int v11, v14, v12

    invoke-static {v5, v1, v2, v11}, Landroidx/constraintlayout/a/a/a;->a(Landroidx/constraintlayout/a/a/f;IZI)I

    move-result v5

    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    move-result v15

    move-object/from16 v11, v18

    const/4 v5, 0x1

    goto :goto_a3

    :cond_c7
    if-eqz v3, :cond_cd

    sub-int/2addr v4, v6

    add-int/2addr v15, v7

    :goto_cb
    const/4 v5, 0x1

    goto :goto_db

    :cond_cd
    if-nez v1, :cond_d4

    .line 360
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/f;->m()I

    move-result v5

    goto :goto_d8

    :cond_d4
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/f;->n()I

    move-result v5

    :goto_d8
    mul-int/2addr v5, v9

    add-int/2addr v15, v5

    goto :goto_cb

    :goto_db
    if-ne v1, v5, :cond_147

    .line 366
    iget-object v11, v0, Landroidx/constraintlayout/a/a/f;->A:Landroidx/constraintlayout/a/a/e;

    .line 17058
    iget-object v11, v11, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 366
    iget-object v11, v11, Landroidx/constraintlayout/a/a/m;->h:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/16 v19, 0x0

    :goto_e9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_12a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroidx/constraintlayout/a/a/o;

    move-object/from16 v20, v11

    .line 367
    move-object/from16 v11, v16

    check-cast v11, Landroidx/constraintlayout/a/a/m;

    if-ne v9, v5, :cond_111

    .line 369
    iget-object v5, v11, Landroidx/constraintlayout/a/a/m;->a:Landroidx/constraintlayout/a/a/e;

    iget-object v5, v5, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    add-int v11, v6, v12

    invoke-static {v5, v1, v2, v11}, Landroidx/constraintlayout/a/a/a;->a(Landroidx/constraintlayout/a/a/f;IZI)I

    move-result v5

    move/from16 v11, v19

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v19

    move-object/from16 v11, v20

    :goto_10f
    const/4 v5, 0x1

    goto :goto_e9

    :cond_111
    move/from16 v5, v19

    .line 371
    iget-object v11, v11, Landroidx/constraintlayout/a/a/m;->a:Landroidx/constraintlayout/a/a/e;

    iget-object v11, v11, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    mul-int v16, v7, v9

    move/from16 v21, v10

    add-int v10, v16, v12

    invoke-static {v11, v1, v2, v10}, Landroidx/constraintlayout/a/a/a;->a(Landroidx/constraintlayout/a/a/f;IZI)I

    move-result v10

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v19

    move-object/from16 v11, v20

    move/from16 v10, v21

    goto :goto_10f

    :cond_12a
    move/from16 v21, v10

    move/from16 v5, v19

    .line 374
    iget-object v10, v0, Landroidx/constraintlayout/a/a/f;->A:Landroidx/constraintlayout/a/a/e;

    .line 18058
    iget-object v10, v10, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 374
    iget-object v10, v10, Landroidx/constraintlayout/a/a/m;->h:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v10

    if-lez v10, :cond_145

    if-nez v3, :cond_145

    const/4 v3, 0x1

    if-ne v9, v3, :cond_142

    add-int v3, v5, v6

    goto :goto_14a

    :cond_142
    sub-int v3, v5, v7

    goto :goto_14a

    :cond_145
    move v3, v5

    goto :goto_14a

    :cond_147
    move/from16 v21, v10

    const/4 v3, 0x0

    .line 384
    :goto_14a
    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v13, v3

    add-int v3, v12, v14

    const/4 v4, -0x1

    if-ne v9, v4, :cond_15d

    move/from16 v22, v12

    move v12, v3

    move/from16 v3, v22

    :cond_15d
    if-eqz v2, :cond_166

    .line 393
    invoke-static {v0, v1, v12}, Landroidx/constraintlayout/a/a/k;->a(Landroidx/constraintlayout/a/a/f;II)V

    .line 394
    invoke-virtual {v0, v12, v3, v1}, Landroidx/constraintlayout/a/a/f;->a(III)V

    goto :goto_16e

    .line 396
    :cond_166
    iget-object v2, v0, Landroidx/constraintlayout/a/a/f;->t:Landroidx/constraintlayout/a/a/h;

    invoke-virtual {v2, v0, v1}, Landroidx/constraintlayout/a/a/h;->a(Landroidx/constraintlayout/a/a/f;I)V

    .line 397
    invoke-virtual {v0, v12, v1}, Landroidx/constraintlayout/a/a/f;->e(II)V

    .line 400
    :goto_16e
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/a/a/f;->i(I)I

    move-result v2

    sget v3, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    if-ne v2, v3, :cond_182

    iget v2, v0, Landroidx/constraintlayout/a/a/f;->K:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_182

    .line 402
    iget-object v2, v0, Landroidx/constraintlayout/a/a/f;->t:Landroidx/constraintlayout/a/a/h;

    invoke-virtual {v2, v0, v1}, Landroidx/constraintlayout/a/a/h;->a(Landroidx/constraintlayout/a/a/f;I)V

    .line 405
    :cond_182
    iget-object v2, v0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v2, v2, v8

    iget-object v2, v2, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v2, :cond_1ad

    iget-object v2, v0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v2, v2, v21

    iget-object v2, v2, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v2, :cond_1ad

    .line 18555
    iget-object v2, v0, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    .line 408
    iget-object v3, v0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v3, v3, v8

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    if-ne v3, v2, :cond_1ad

    iget-object v3, v0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v3, v3, v21

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    if-ne v3, v2, :cond_1ad

    .line 410
    iget-object v2, v0, Landroidx/constraintlayout/a/a/f;->t:Landroidx/constraintlayout/a/a/h;

    invoke-virtual {v2, v0, v1}, Landroidx/constraintlayout/a/a/h;->a(Landroidx/constraintlayout/a/a/f;I)V

    :cond_1ad
    return v13
.end method

.method private static a(Landroidx/constraintlayout/a/a/h;I)I
    .registers 12

    mul-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_8

    .line 11066
    iget-object v2, p0, Landroidx/constraintlayout/a/a/h;->f:Ljava/util/List;

    goto :goto_e

    :cond_8
    if-ne p1, v1, :cond_d

    .line 11068
    iget-object v2, p0, Landroidx/constraintlayout/a/a/h;->g:Ljava/util/List;

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    .line 277
    :goto_e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_15
    if-ge v5, v3, :cond_46

    .line 279
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/a/a/f;

    .line 280
    iget-object v8, v7, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    add-int/lit8 v9, v0, 0x1

    aget-object v8, v8, v9

    iget-object v8, v8, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v8, :cond_3a

    iget-object v8, v7, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v8, v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v8, :cond_38

    iget-object v8, v7, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v8, v8, v9

    iget-object v8, v8, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v8, :cond_38

    goto :goto_3a

    :cond_38
    move v8, v4

    goto :goto_3b

    :cond_3a
    :goto_3a
    move v8, v1

    .line 283
    :goto_3b
    invoke-static {v7, p1, v8, v4}, Landroidx/constraintlayout/a/a/a;->a(Landroidx/constraintlayout/a/a/f;IZI)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 286
    :cond_46
    iget-object p0, p0, Landroidx/constraintlayout/a/a/h;->e:[I

    aput v6, p0, p1

    return v6
.end method

.method public static a(Landroidx/constraintlayout/a/a/g;)V
    .registers 11

    .line 2122
    iget v0, p0, Landroidx/constraintlayout/a/a/g;->aF:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_b

    .line 46
    invoke-static {p0}, Landroidx/constraintlayout/a/a/a;->b(Landroidx/constraintlayout/a/a/g;)V

    return-void

    :cond_b
    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Landroidx/constraintlayout/a/a/g;->aG:Z

    const/4 v1, 0x0

    .line 50
    iput-boolean v1, p0, Landroidx/constraintlayout/a/a/g;->aA:Z

    .line 51
    iput-boolean v1, p0, Landroidx/constraintlayout/a/a/g;->aB:Z

    .line 52
    iput-boolean v1, p0, Landroidx/constraintlayout/a/a/g;->aC:Z

    .line 53
    iget-object v2, p0, Landroidx/constraintlayout/a/a/g;->aK:Ljava/util/ArrayList;

    .line 54
    iget-object v3, p0, Landroidx/constraintlayout/a/a/g;->az:Ljava/util/List;

    .line 55
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/g;->y()I

    move-result v4

    sget v5, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    if-ne v4, v5, :cond_23

    move v4, v0

    goto :goto_24

    :cond_23
    move v4, v1

    .line 56
    :goto_24
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/g;->z()I

    move-result v5

    sget v6, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    if-ne v5, v6, :cond_2e

    move v5, v0

    goto :goto_2f

    :cond_2e
    move v5, v1

    :goto_2f
    if-nez v4, :cond_36

    if-eqz v5, :cond_34

    goto :goto_36

    :cond_34
    move v6, v1

    goto :goto_37

    :cond_36
    :goto_36
    move v6, v0

    .line 58
    :goto_37
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 60
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_53

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/a/a/f;

    const/4 v9, 0x0

    .line 61
    iput-object v9, v8, Landroidx/constraintlayout/a/a/f;->t:Landroidx/constraintlayout/a/a/h;

    .line 62
    iput-boolean v1, v8, Landroidx/constraintlayout/a/a/f;->ah:Z

    .line 63
    invoke-virtual {v8}, Landroidx/constraintlayout/a/a/f;->b()V

    goto :goto_3e

    .line 65
    :cond_53
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_57
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_80

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/a/a/f;

    .line 66
    iget-object v8, v7, Landroidx/constraintlayout/a/a/f;->t:Landroidx/constraintlayout/a/a/h;

    if-nez v8, :cond_57

    .line 3110
    new-instance v8, Landroidx/constraintlayout/a/a/h;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v8, v9, v1}, Landroidx/constraintlayout/a/a/h;-><init>(Ljava/util/List;B)V

    .line 3111
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3112
    invoke-static {v7, v8, v3, v6}, Landroidx/constraintlayout/a/a/a;->a(Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/h;Ljava/util/List;Z)Z

    move-result v7

    if-nez v7, :cond_57

    .line 68
    invoke-static {p0}, Landroidx/constraintlayout/a/a/a;->b(Landroidx/constraintlayout/a/a/g;)V

    .line 69
    iput-boolean v1, p0, Landroidx/constraintlayout/a/a/g;->aG:Z

    return-void

    .line 77
    :cond_80
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v6, v1

    move v7, v6

    :goto_86
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/a/a/h;

    .line 79
    invoke-static {v8, v1}, Landroidx/constraintlayout/a/a/a;->a(Landroidx/constraintlayout/a/a/h;I)I

    move-result v9

    .line 78
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 81
    invoke-static {v8, v0}, Landroidx/constraintlayout/a/a/a;->a(Landroidx/constraintlayout/a/a/h;I)I

    move-result v8

    .line 80
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_86

    :cond_a3
    if-eqz v4, :cond_b3

    .line 85
    sget v2, Landroidx/constraintlayout/a/a/f$a;->FIXED$689812f:I

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/a/a/g;->j(I)V

    .line 86
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/a/a/g;->e(I)V

    .line 87
    iput-boolean v0, p0, Landroidx/constraintlayout/a/a/g;->aA:Z

    .line 88
    iput-boolean v0, p0, Landroidx/constraintlayout/a/a/g;->aB:Z

    .line 89
    iput v6, p0, Landroidx/constraintlayout/a/a/g;->aD:I

    :cond_b3
    if-eqz v5, :cond_c3

    .line 92
    sget v2, Landroidx/constraintlayout/a/a/f$a;->FIXED$689812f:I

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/a/a/g;->k(I)V

    .line 93
    invoke-virtual {p0, v7}, Landroidx/constraintlayout/a/a/g;->f(I)V

    .line 94
    iput-boolean v0, p0, Landroidx/constraintlayout/a/a/g;->aA:Z

    .line 95
    iput-boolean v0, p0, Landroidx/constraintlayout/a/a/g;->aC:Z

    .line 96
    iput v7, p0, Landroidx/constraintlayout/a/a/g;->aE:I

    .line 98
    :cond_c3
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/g;->m()I

    move-result v2

    invoke-static {v3, v1, v2}, Landroidx/constraintlayout/a/a/a;->a(Ljava/util/List;II)V

    .line 99
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/g;->n()I

    move-result p0

    invoke-static {v3, v0, p0}, Landroidx/constraintlayout/a/a/a;->a(Ljava/util/List;II)V

    return-void
.end method

.method private static a(Landroidx/constraintlayout/a/a/g;Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/h;)V
    .registers 4

    const/4 v0, 0x0

    .line 260
    iput-boolean v0, p2, Landroidx/constraintlayout/a/a/h;->d:Z

    .line 261
    iput-boolean v0, p0, Landroidx/constraintlayout/a/a/g;->aG:Z

    .line 262
    iput-boolean v0, p1, Landroidx/constraintlayout/a/a/f;->af:Z

    return-void
.end method

.method public static a(Ljava/util/List;II)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/constraintlayout/a/a/h;",
            ">;II)V"
        }
    .end annotation

    .line 444
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_a4

    .line 446
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/a/a/h;

    const/4 v4, 0x1

    if-nez p1, :cond_14

    .line 19075
    iget-object v3, v3, Landroidx/constraintlayout/a/a/h;->h:Ljava/util/HashSet;

    goto :goto_1a

    :cond_14
    if-ne p1, v4, :cond_19

    .line 19077
    iget-object v3, v3, Landroidx/constraintlayout/a/a/h;->i:Ljava/util/HashSet;

    goto :goto_1a

    :cond_19
    const/4 v3, 0x0

    .line 447
    :goto_1a
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1e
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/a/a/f;

    .line 449
    iget-boolean v6, v5, Landroidx/constraintlayout/a/a/f;->af:Z

    if-eqz v6, :cond_1e

    mul-int/lit8 v6, p1, 0x2

    .line 19468
    iget-object v7, v5, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v7, v7, v6

    .line 19469
    iget-object v8, v5, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    add-int/lit8 v9, v6, 0x1

    aget-object v8, v8, v9

    .line 19470
    iget-object v9, v7, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v9, :cond_44

    iget-object v9, v8, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v9, :cond_44

    move v9, v4

    goto :goto_45

    :cond_44
    move v9, v1

    :goto_45
    if-eqz v9, :cond_54

    .line 19472
    invoke-static {v5, p1}, Landroidx/constraintlayout/a/a/a;->a(Landroidx/constraintlayout/a/a/f;I)I

    move-result v6

    invoke-virtual {v7}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v7

    add-int/2addr v6, v7

    .line 19473
    invoke-static {v5, p1, v6}, Landroidx/constraintlayout/a/a/k;->a(Landroidx/constraintlayout/a/a/f;II)V

    goto :goto_1e

    .line 19481
    :cond_54
    iget v9, v5, Landroidx/constraintlayout/a/a/f;->K:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_85

    invoke-virtual {v5, p1}, Landroidx/constraintlayout/a/a/f;->i(I)I

    move-result v9

    sget v10, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    if-ne v9, v10, :cond_85

    .line 19482
    invoke-static {v5}, Landroidx/constraintlayout/a/a/a;->a(Landroidx/constraintlayout/a/a/f;)I

    move-result v9

    .line 19483
    iget-object v10, v5, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v6, v10, v6

    .line 20058
    iget-object v6, v6, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 19483
    iget v6, v6, Landroidx/constraintlayout/a/a/m;->f:F

    float-to-int v6, v6

    add-int v10, v6, v9

    .line 21058
    iget-object v11, v8, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 22058
    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 19485
    iput-object v7, v11, Landroidx/constraintlayout/a/a/m;->e:Landroidx/constraintlayout/a/a/m;

    .line 23058
    iget-object v7, v8, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    int-to-float v9, v9

    .line 19486
    iput v9, v7, Landroidx/constraintlayout/a/a/m;->f:F

    .line 24058
    iget-object v7, v8, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 19487
    iput v4, v7, Landroidx/constraintlayout/a/a/m;->i:I

    .line 19488
    invoke-virtual {v5, v6, v10, p1}, Landroidx/constraintlayout/a/a/f;->a(III)V

    goto :goto_1e

    :cond_85
    if-nez p1, :cond_8a

    .line 24549
    iget v6, v5, Landroidx/constraintlayout/a/a/f;->O:I

    goto :goto_90

    :cond_8a
    if-ne p1, v4, :cond_8f

    .line 24551
    iget v6, v5, Landroidx/constraintlayout/a/a/f;->P:I

    goto :goto_90

    :cond_8f
    move v6, v1

    :goto_90
    sub-int v6, p2, v6

    .line 19492
    invoke-virtual {v5, p1}, Landroidx/constraintlayout/a/a/f;->b(I)I

    move-result v7

    sub-int v7, v6, v7

    .line 19493
    invoke-virtual {v5, v7, v6, p1}, Landroidx/constraintlayout/a/a/f;->a(III)V

    .line 19494
    invoke-static {v5, p1, v7}, Landroidx/constraintlayout/a/a/k;->a(Landroidx/constraintlayout/a/a/f;II)V

    goto/16 :goto_1e

    :cond_a0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :cond_a4
    return-void
.end method

.method private static a(Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/h;Ljava/util/List;Z)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/a/a/f;",
            "Landroidx/constraintlayout/a/a/h;",
            "Ljava/util/List<",
            "Landroidx/constraintlayout/a/a/h;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    .line 131
    iput-boolean v1, p0, Landroidx/constraintlayout/a/a/f;->ag:Z

    .line 3555
    iget-object v2, p0, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    .line 132
    check-cast v2, Landroidx/constraintlayout/a/a/g;

    .line 133
    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->t:Landroidx/constraintlayout/a/a/h;

    if-nez v3, :cond_212

    .line 135
    iput-boolean v0, p0, Landroidx/constraintlayout/a/a/f;->af:Z

    .line 136
    iget-object v3, p1, Landroidx/constraintlayout/a/a/h;->a:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iput-object p1, p0, Landroidx/constraintlayout/a/a/f;->t:Landroidx/constraintlayout/a/a/h;

    .line 139
    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v3, :cond_42

    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v3, :cond_42

    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v3, :cond_42

    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v3, :cond_42

    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->A:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v3, :cond_42

    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->D:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v3, :cond_42

    .line 145
    invoke-static {v2, p0, p1}, Landroidx/constraintlayout/a/a/a;->a(Landroidx/constraintlayout/a/a/g;Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/h;)V

    if-eqz p3, :cond_42

    return v1

    .line 151
    :cond_42
    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_6d

    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_6d

    .line 153
    sget v3, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    if-eqz p3, :cond_56

    .line 155
    invoke-static {v2, p0, p1}, Landroidx/constraintlayout/a/a/a;->a(Landroidx/constraintlayout/a/a/g;Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/h;)V

    return v1

    .line 157
    :cond_56
    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    .line 4555
    iget-object v4, p0, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    if-ne v3, v4, :cond_6a

    .line 157
    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    .line 5555
    iget-object v4, p0, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    if-eq v3, v4, :cond_6d

    .line 159
    :cond_6a
    invoke-static {v2, p0, p1}, Landroidx/constraintlayout/a/a/a;->a(Landroidx/constraintlayout/a/a/g;Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/h;)V

    .line 163
    :cond_6d
    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_98

    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_98

    .line 165
    sget v3, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    if-eqz p3, :cond_81

    .line 167
    invoke-static {v2, p0, p1}, Landroidx/constraintlayout/a/a/a;->a(Landroidx/constraintlayout/a/a/g;Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/h;)V

    return v1

    .line 169
    :cond_81
    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    .line 6555
    iget-object v4, p0, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    if-ne v3, v4, :cond_95

    .line 169
    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    .line 7555
    iget-object v4, p0, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    if-eq v3, v4, :cond_98

    .line 171
    :cond_95
    invoke-static {v2, p0, p1}, Landroidx/constraintlayout/a/a/a;->a(Landroidx/constraintlayout/a/a/g;Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/h;)V

    .line 174
    :cond_98
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/f;->y()I

    move-result v3

    sget v4, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    if-ne v3, v4, :cond_a2

    move v3, v0

    goto :goto_a3

    :cond_a2
    move v3, v1

    .line 175
    :goto_a3
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/f;->z()I

    move-result v4

    sget v5, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    if-ne v4, v5, :cond_ad

    move v4, v0

    goto :goto_ae

    :cond_ad
    move v4, v1

    :goto_ae
    xor-int/2addr v3, v4

    if-eqz v3, :cond_bc

    iget v3, p0, Landroidx/constraintlayout/a/a/f;->K:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_bc

    .line 178
    invoke-static {p0}, Landroidx/constraintlayout/a/a/a;->a(Landroidx/constraintlayout/a/a/f;)I

    goto :goto_d2

    .line 179
    :cond_bc
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/f;->y()I

    move-result v3

    sget v4, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    if-eq v3, v4, :cond_cc

    .line 180
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/f;->z()I

    move-result v3

    sget v4, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    if-ne v3, v4, :cond_d2

    .line 181
    :cond_cc
    invoke-static {v2, p0, p1}, Landroidx/constraintlayout/a/a/a;->a(Landroidx/constraintlayout/a/a/g;Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/h;)V

    if-eqz p3, :cond_d2

    return v1

    .line 187
    :cond_d2
    :goto_d2
    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v3, :cond_de

    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_12a

    :cond_de
    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_f4

    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    iget-object v4, p0, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    if-ne v3, v4, :cond_f4

    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_12a

    :cond_f4
    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_10a

    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    iget-object v4, p0, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    if-ne v3, v4, :cond_10a

    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_12a

    :cond_10a
    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_13d

    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    iget-object v4, p0, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    if-ne v3, v4, :cond_13d

    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_13d

    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    iget-object v4, p0, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    if-ne v3, v4, :cond_13d

    :cond_12a
    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->D:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v3, :cond_13d

    .line 193
    instance-of v3, p0, Landroidx/constraintlayout/a/a/i;

    if-nez v3, :cond_13d

    instance-of v3, p0, Landroidx/constraintlayout/a/a/j;

    if-nez v3, :cond_13d

    .line 194
    iget-object v3, p1, Landroidx/constraintlayout/a/a/h;->f:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_13d
    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v3, :cond_149

    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_195

    :cond_149
    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_15f

    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    iget-object v4, p0, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    if-ne v3, v4, :cond_15f

    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_195

    :cond_15f
    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_175

    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    iget-object v4, p0, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    if-ne v3, v4, :cond_175

    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_195

    :cond_175
    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_1ae

    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    iget-object v4, p0, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    if-ne v3, v4, :cond_1ae

    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_1ae

    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    iget-object v4, p0, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    if-ne v3, v4, :cond_1ae

    :cond_195
    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->D:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v3, :cond_1ae

    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->A:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v3, :cond_1ae

    .line 205
    instance-of v3, p0, Landroidx/constraintlayout/a/a/i;

    if-nez v3, :cond_1ae

    instance-of v3, p0, Landroidx/constraintlayout/a/a/j;

    if-nez v3, :cond_1ae

    .line 206
    iget-object v3, p1, Landroidx/constraintlayout/a/a/h;->g:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_1ae
    instance-of v3, p0, Landroidx/constraintlayout/a/a/j;

    if-eqz v3, :cond_1ce

    .line 227
    invoke-static {v2, p0, p1}, Landroidx/constraintlayout/a/a/a;->a(Landroidx/constraintlayout/a/a/g;Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/h;)V

    if-eqz p3, :cond_1b8

    return v1

    .line 231
    :cond_1b8
    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/a/a/j;

    move v4, v1

    .line 232
    :goto_1bc
    iget v5, v3, Landroidx/constraintlayout/a/a/j;->as:I

    if-ge v4, v5, :cond_1ce

    .line 233
    iget-object v5, v3, Landroidx/constraintlayout/a/a/j;->ar:[Landroidx/constraintlayout/a/a/f;

    aget-object v5, v5, v4

    invoke-static {v5, p1, p2, p3}, Landroidx/constraintlayout/a/a/a;->a(Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/h;Ljava/util/List;Z)Z

    move-result v5

    if-nez v5, :cond_1cb

    return v1

    :cond_1cb
    add-int/lit8 v4, v4, 0x1

    goto :goto_1bc

    .line 239
    :cond_1ce
    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    array-length v3, v3

    move v4, v1

    :goto_1d2
    if-ge v4, v3, :cond_211

    .line 241
    iget-object v5, p0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v5, v5, v4

    .line 242
    iget-object v6, v5, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v6, :cond_20e

    iget-object v6, v5, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v6, v6, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    .line 8555
    iget-object v7, p0, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    if-eq v6, v7, :cond_20e

    .line 243
    iget-object v6, v5, Landroidx/constraintlayout/a/a/e;->c:Landroidx/constraintlayout/a/a/e$c;

    sget-object v7, Landroidx/constraintlayout/a/a/e$c;->CENTER:Landroidx/constraintlayout/a/a/e$c;

    if-ne v6, v7, :cond_1f0

    .line 244
    invoke-static {v2, p0, p1}, Landroidx/constraintlayout/a/a/a;->a(Landroidx/constraintlayout/a/a/g;Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/h;)V

    if-eqz p3, :cond_203

    return v1

    .line 10058
    :cond_1f0
    iget-object v6, v5, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 9418
    iget-object v7, v5, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v7, :cond_203

    iget-object v7, v5, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eq v7, v5, :cond_203

    .line 9420
    iget-object v7, v5, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    .line 11058
    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 9420
    invoke-virtual {v7, v6}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/o;)V

    .line 251
    :cond_203
    iget-object v5, v5, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v5, v5, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    invoke-static {v5, p1, p2, p3}, Landroidx/constraintlayout/a/a/a;->a(Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/h;Ljava/util/List;Z)Z

    move-result v5

    if-nez v5, :cond_20e

    return v1

    :cond_20e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d2

    :cond_211
    return v0

    .line 211
    :cond_212
    iget-object p3, p0, Landroidx/constraintlayout/a/a/f;->t:Landroidx/constraintlayout/a/a/h;

    if-eq p3, p1, :cond_255

    .line 212
    iget-object p3, p1, Landroidx/constraintlayout/a/a/h;->a:Ljava/util/List;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/f;->t:Landroidx/constraintlayout/a/a/h;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/h;->a:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 213
    iget-object p3, p1, Landroidx/constraintlayout/a/a/h;->f:Ljava/util/List;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/f;->t:Landroidx/constraintlayout/a/a/h;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/h;->f:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 214
    iget-object p3, p1, Landroidx/constraintlayout/a/a/h;->g:Ljava/util/List;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/f;->t:Landroidx/constraintlayout/a/a/h;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/h;->g:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 215
    iget-object p3, p0, Landroidx/constraintlayout/a/a/f;->t:Landroidx/constraintlayout/a/a/h;

    iget-boolean p3, p3, Landroidx/constraintlayout/a/a/h;->d:Z

    if-nez p3, :cond_239

    .line 216
    iput-boolean v1, p1, Landroidx/constraintlayout/a/a/h;->d:Z

    .line 218
    :cond_239
    iget-object p3, p0, Landroidx/constraintlayout/a/a/f;->t:Landroidx/constraintlayout/a/a/h;

    invoke-interface {p2, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 219
    iget-object p0, p0, Landroidx/constraintlayout/a/a/f;->t:Landroidx/constraintlayout/a/a/h;

    iget-object p0, p0, Landroidx/constraintlayout/a/a/h;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_246
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_255

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/a/a/f;

    .line 220
    iput-object p1, p2, Landroidx/constraintlayout/a/a/f;->t:Landroidx/constraintlayout/a/a/h;

    goto :goto_246

    :cond_255
    return v0
.end method

.method private static b(Landroidx/constraintlayout/a/a/g;)V
    .registers 3

    .line 431
    iget-object v0, p0, Landroidx/constraintlayout/a/a/g;->az:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 432
    iget-object v0, p0, Landroidx/constraintlayout/a/a/g;->az:Ljava/util/List;

    new-instance v1, Landroidx/constraintlayout/a/a/h;

    iget-object p0, p0, Landroidx/constraintlayout/a/a/g;->aK:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/a/a/h;-><init>(Ljava/util/List;)V

    const/4 p0, 0x0

    invoke-interface {v0, p0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method
