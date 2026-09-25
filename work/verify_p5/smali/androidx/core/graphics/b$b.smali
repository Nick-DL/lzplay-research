.class public final Landroidx/core/graphics/b$b;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:C

.field public b:[F


# direct methods
.method constructor <init>(C[F)V
    .locals 0

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-char p1, p0, Landroidx/core/graphics/b$b;->a:C

    .line 354
    iput-object p2, p0, Landroidx/core/graphics/b$b;->b:[F

    return-void
.end method

.method constructor <init>(Landroidx/core/graphics/b$b;)V
    .locals 1

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iget-char v0, p1, Landroidx/core/graphics/b$b;->a:C

    iput-char v0, p0, Landroidx/core/graphics/b$b;->a:C

    .line 359
    iget-object v0, p1, Landroidx/core/graphics/b$b;->b:[F

    iget-object p1, p1, Landroidx/core/graphics/b$b;->b:[F

    array-length p1, p1

    invoke-static {v0, p1}, Landroidx/core/graphics/b;->a([FI)[F

    move-result-object p1

    iput-object p1, p0, Landroidx/core/graphics/b$b;->b:[F

    return-void
.end method

.method private static a(Landroid/graphics/Path;DDDDDDDDD)V
    .locals 55

    move-wide/from16 v0, p5

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    mul-double v8, p17, v6

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v10

    .line 750
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    .line 753
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    .line 754
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    .line 755
    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    .line 756
    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    neg-double v6, v0

    mul-double v18, v6, v9

    mul-double v20, v18, v15

    mul-double v22, p7, v11

    mul-double v24, v22, v13

    sub-double v20, v20, v24

    mul-double/2addr v6, v11

    mul-double/2addr v15, v6

    mul-double v2, p7, v9

    mul-double/2addr v13, v2

    add-double/2addr v15, v13

    int-to-double v13, v8

    div-double v4, p17, v13

    const/4 v13, 0x0

    move-wide/from16 v26, p11

    move-wide/from16 v28, v15

    move-wide/from16 v24, v20

    move-wide/from16 v20, p9

    move-wide/from16 v14, p15

    :goto_0
    if-ge v13, v8, :cond_0

    add-double v30, v14, v4

    .line 763
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    .line 764
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->cos(D)D

    move-result-wide v34

    mul-double v36, v0, v9

    mul-double v36, v36, v34

    add-double v36, p1, v36

    mul-double v38, v22, v32

    move-wide/from16 v40, v4

    sub-double v4, v36, v38

    mul-double v36, v0, v11

    mul-double v36, v36, v34

    add-double v36, p3, v36

    mul-double v42, v2, v32

    add-double v0, v36, v42

    mul-double v36, v18, v32

    mul-double v42, v22, v34

    sub-double v36, v36, v42

    mul-double v32, v32, v6

    mul-double v34, v34, v2

    add-double v32, v32, v34

    sub-double v14, v30, v14

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    div-double v34, v14, v34

    .line 769
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->tan(D)D

    move-result-wide v34

    .line 771
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    const-wide/high16 v42, 0x4008000000000000L    # 3.0

    mul-double v44, v34, v42

    mul-double v44, v44, v34

    const-wide/high16 v16, 0x4010000000000000L    # 4.0

    add-double v44, v44, v16

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v34

    const-wide/high16 v44, 0x3ff0000000000000L    # 1.0

    sub-double v34, v34, v44

    mul-double v14, v14, v34

    div-double v14, v14, v42

    mul-double v24, v24, v14

    move-wide/from16 v46, v2

    add-double v2, v20, v24

    mul-double v28, v28, v14

    move-wide/from16 v48, v6

    add-double v6, v26, v28

    mul-double v20, v14, v36

    move/from16 v50, v8

    move-wide/from16 v51, v9

    sub-double v8, v4, v20

    mul-double v14, v14, v32

    sub-double v14, v0, v14

    const/4 v10, 0x0

    move-wide/from16 v53, v11

    move-object/from16 v11, p0

    .line 778
    invoke-virtual {v11, v10, v10}, Landroid/graphics/Path;->rLineTo(FF)V

    double-to-float v2, v2

    double-to-float v3, v6

    double-to-float v6, v8

    double-to-float v7, v14

    double-to-float v8, v4

    double-to-float v9, v0

    move-object/from16 p7, p0

    move/from16 p8, v2

    move/from16 p9, v3

    move/from16 p10, v6

    move/from16 p11, v7

    move/from16 p12, v8

    move/from16 p13, v9

    .line 780
    invoke-virtual/range {p7 .. p13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v26, v0

    move-wide/from16 v20, v4

    move-wide/from16 v14, v30

    move-wide/from16 v28, v32

    move-wide/from16 v24, v36

    move-wide/from16 v4, v40

    move-wide/from16 v2, v46

    move-wide/from16 v6, v48

    move/from16 v8, v50

    move-wide/from16 v9, v51

    move-wide/from16 v11, v53

    move-wide/from16 v0, p5

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method private static a(Landroid/graphics/Path;FFFFFFFZZ)V
    .locals 45

    move/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p9

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v3, p7

    :goto_0
    float-to-double v6, v3

    .line 657
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v21

    .line 659
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 660
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    float-to-double v13, v0

    mul-double v8, v13, v6

    move/from16 v10, p2

    move-wide/from16 v27, v13

    float-to-double v13, v10

    mul-double v15, v13, v11

    add-double/2addr v8, v15

    float-to-double v2, v4

    div-double/2addr v8, v2

    neg-float v15, v0

    move-wide/from16 v29, v8

    float-to-double v8, v15

    mul-double/2addr v8, v11

    mul-double v15, v13, v6

    add-double/2addr v8, v15

    move-wide/from16 v31, v13

    float-to-double v13, v5

    div-double/2addr v8, v13

    move/from16 v33, v4

    move/from16 v34, v5

    float-to-double v4, v1

    mul-double/2addr v4, v6

    move/from16 v15, p4

    move-wide/from16 v35, v8

    float-to-double v8, v15

    mul-double v16, v8, v11

    add-double v4, v4, v16

    div-double/2addr v4, v2

    neg-float v0, v1

    float-to-double v0, v0

    mul-double/2addr v0, v11

    mul-double/2addr v8, v6

    add-double/2addr v0, v8

    div-double/2addr v0, v13

    sub-double v8, v29, v4

    sub-double v16, v35, v0

    add-double v18, v29, v4

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    div-double v18, v18, v23

    add-double v25, v35, v0

    div-double v25, v25, v23

    mul-double v23, v8, v8

    mul-double v37, v16, v16

    add-double v23, v23, v37

    const-wide/16 v37, 0x0

    cmpl-double v20, v23, v37

    if-nez v20, :cond_0

    const-string v0, "PathParser"

    const-string v1, " Points are coincident"

    .line 676
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide/high16 v39, 0x3ff0000000000000L    # 1.0

    div-double v39, v39, v23

    const-wide/high16 v41, 0x3fd0000000000000L    # 0.25

    sub-double v39, v39, v41

    cmpg-double v20, v39, v37

    if-gez v20, :cond_1

    const-string v0, "PathParser"

    const-string v1, "Points are too far apart "

    .line 681
    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x3ffffff583a53b8eL    # 1.99999

    div-double/2addr v0, v2

    double-to-float v0, v0

    mul-float v4, v33, v0

    mul-float v5, v34, v0

    move/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p9

    move/from16 v3, p7

    goto/16 :goto_0

    .line 687
    :cond_1
    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v23

    mul-double v8, v8, v23

    mul-double v23, v23, v16

    move-wide v15, v2

    move/from16 v3, p9

    move/from16 v2, p8

    if-ne v2, v3, :cond_2

    sub-double v18, v18, v23

    add-double v25, v25, v8

    goto :goto_1

    :cond_2
    add-double v18, v18, v23

    sub-double v25, v25, v8

    :goto_1
    sub-double v8, v35, v25

    move-wide/from16 v43, v11

    sub-double v10, v29, v18

    .line 700
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v23

    sub-double v0, v0, v25

    sub-double v4, v4, v18

    .line 702
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    sub-double v0, v0, v23

    cmpl-double v2, v0, v37

    if-ltz v2, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eq v3, v4, :cond_5

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    if-lez v2, :cond_4

    sub-double/2addr v0, v3

    goto :goto_3

    :cond_4
    add-double/2addr v0, v3

    :cond_5
    :goto_3
    mul-double v18, v18, v15

    mul-double v25, v25, v13

    mul-double v2, v18, v6

    mul-double v11, v25, v43

    sub-double v9, v2, v11

    mul-double v18, v18, v43

    mul-double v25, v25, v6

    add-double v11, v18, v25

    move-object/from16 v8, p0

    move-wide v6, v13

    move-wide/from16 v2, v27

    move-wide/from16 v4, v31

    move-wide v13, v15

    move-wide v15, v6

    move-wide/from16 v17, v2

    move-wide/from16 v19, v4

    move-wide/from16 v25, v0

    .line 719
    invoke-static/range {v8 .. v26}, Landroidx/core/graphics/b$b;->a(Landroid/graphics/Path;DDDDDDDDD)V

    return-void
.end method

.method public static a([Landroidx/core/graphics/b$b;Landroid/graphics/Path;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    const/4 v12, 0x6

    .line 369
    new-array v13, v12, [F

    const/4 v14, 0x0

    const/16 v1, 0x6d

    move v15, v14

    .line 371
    :goto_0
    array-length v2, v0

    if-ge v15, v2, :cond_f

    .line 372
    aget-object v2, v0, v15

    iget-char v10, v2, Landroidx/core/graphics/b$b;->a:C

    aget-object v2, v0, v15

    iget-object v9, v2, Landroidx/core/graphics/b$b;->b:[F

    .line 1399
    aget v2, v13, v14

    const/16 v16, 0x1

    .line 1400
    aget v3, v13, v16

    const/16 v17, 0x2

    .line 1401
    aget v4, v13, v17

    const/16 v18, 0x3

    .line 1402
    aget v5, v13, v18

    const/16 v19, 0x4

    .line 1403
    aget v6, v13, v19

    const/16 v20, 0x5

    .line 1404
    aget v7, v13, v20

    sparse-switch v10, :sswitch_data_0

    :goto_1
    :sswitch_0
    move/from16 v21, v17

    goto :goto_2

    .line 1411
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->close()V

    .line 1419
    invoke-virtual {v11, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    move v2, v6

    move v4, v2

    move v3, v7

    move v5, v3

    goto :goto_1

    :sswitch_2
    move/from16 v21, v19

    goto :goto_2

    :sswitch_3
    move/from16 v21, v16

    goto :goto_2

    :sswitch_4
    move/from16 v21, v12

    goto :goto_2

    :sswitch_5
    const/4 v8, 0x7

    move/from16 v21, v8

    :goto_2
    move/from16 v22, v6

    move/from16 v23, v7

    move v8, v14

    move v7, v2

    move v6, v3

    .line 1451
    :goto_3
    array-length v2, v9

    if-ge v8, v2, :cond_e

    const/16 v2, 0x51

    const/16 v12, 0x74

    const/16 v3, 0x71

    const/high16 v26, 0x40000000    # 2.0f

    const/4 v14, 0x0

    sparse-switch v10, :sswitch_data_1

    move v0, v6

    move/from16 v27, v8

    move-object/from16 v29, v9

    move/from16 v30, v10

    move/from16 v28, v15

    move v15, v7

    goto/16 :goto_13

    :sswitch_6
    add-int/lit8 v1, v8, 0x0

    .line 1500
    aget v2, v9, v1

    invoke-virtual {v11, v14, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 1501
    aget v1, v9, v1

    add-float/2addr v6, v1

    move/from16 v27, v8

    move-object/from16 v29, v9

    move/from16 v30, v10

    :goto_4
    move/from16 v28, v15

    goto/16 :goto_13

    :sswitch_7
    if-eq v1, v3, :cond_1

    if-eq v1, v12, :cond_1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x54

    if-ne v1, v2, :cond_0

    goto :goto_5

    :cond_0
    move v1, v14

    goto :goto_6

    :cond_1
    :goto_5
    sub-float v14, v7, v4

    sub-float v1, v6, v5

    :goto_6
    add-int/lit8 v2, v8, 0x0

    .line 1579
    aget v3, v9, v2

    add-int/lit8 v4, v8, 0x1

    aget v5, v9, v4

    invoke-virtual {v11, v14, v1, v3, v5}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    add-float/2addr v14, v7

    add-float/2addr v1, v6

    .line 1583
    aget v2, v9, v2

    add-float/2addr v7, v2

    .line 1584
    aget v2, v9, v4

    add-float/2addr v6, v2

    move v5, v1

    move/from16 v27, v8

    move-object/from16 v29, v9

    move/from16 v30, v10

    move v4, v14

    goto :goto_4

    :sswitch_8
    const/16 v2, 0x63

    if-eq v1, v2, :cond_3

    const/16 v2, 0x73

    if-eq v1, v2, :cond_3

    const/16 v2, 0x43

    if-eq v1, v2, :cond_3

    const/16 v2, 0x53

    if-ne v1, v2, :cond_2

    goto :goto_7

    :cond_2
    move v2, v14

    move v3, v2

    goto :goto_8

    :cond_3
    :goto_7
    sub-float v1, v7, v4

    sub-float v2, v6, v5

    move v3, v2

    move v2, v1

    :goto_8
    add-int/lit8 v12, v8, 0x0

    .line 1533
    aget v4, v9, v12

    add-int/lit8 v14, v8, 0x1

    aget v5, v9, v14

    add-int/lit8 v24, v8, 0x2

    aget v25, v9, v24

    add-int/lit8 v26, v8, 0x3

    aget v27, v9, v26

    move-object/from16 v1, p1

    move v0, v6

    move/from16 v6, v25

    move/from16 v28, v15

    move v15, v7

    move/from16 v7, v27

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 1537
    aget v1, v9, v12

    add-float v7, v15, v1

    .line 1538
    aget v1, v9, v14

    add-float v6, v0, v1

    .line 1539
    aget v1, v9, v24

    add-float/2addr v1, v15

    .line 1540
    aget v2, v9, v26

    add-float/2addr v0, v2

    goto/16 :goto_a

    :sswitch_9
    move v0, v6

    move/from16 v28, v15

    move v15, v7

    add-int/lit8 v1, v8, 0x0

    .line 1558
    aget v2, v9, v1

    add-int/lit8 v3, v8, 0x1

    aget v4, v9, v3

    add-int/lit8 v5, v8, 0x2

    aget v6, v9, v5

    add-int/lit8 v7, v8, 0x3

    aget v12, v9, v7

    invoke-virtual {v11, v2, v4, v6, v12}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 1559
    aget v1, v9, v1

    add-float/2addr v1, v15

    .line 1560
    aget v2, v9, v3

    add-float v6, v0, v2

    .line 1561
    aget v2, v9, v5

    add-float/2addr v2, v15

    .line 1562
    aget v3, v9, v7

    add-float/2addr v0, v3

    move v4, v1

    move v7, v2

    move v5, v6

    move/from16 v27, v8

    move-object/from16 v29, v9

    move/from16 v30, v10

    move v6, v0

    goto/16 :goto_13

    :sswitch_a
    move v0, v6

    move/from16 v28, v15

    move v15, v7

    add-int/lit8 v1, v8, 0x0

    .line 1454
    aget v2, v9, v1

    add-float v7, v15, v2

    add-int/lit8 v2, v8, 0x1

    .line 1455
    aget v3, v9, v2

    add-float v6, v0, v3

    if-lez v8, :cond_4

    .line 1460
    aget v0, v9, v1

    aget v1, v9, v2

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    goto :goto_9

    .line 1462
    :cond_4
    aget v0, v9, v1

    aget v1, v9, v2

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->rMoveTo(FF)V

    move/from16 v23, v6

    move/from16 v22, v7

    goto :goto_9

    :sswitch_b
    move v0, v6

    move/from16 v28, v15

    move v15, v7

    add-int/lit8 v1, v8, 0x0

    .line 1482
    aget v2, v9, v1

    add-int/lit8 v3, v8, 0x1

    aget v6, v9, v3

    invoke-virtual {v11, v2, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 1483
    aget v1, v9, v1

    add-float v7, v15, v1

    .line 1484
    aget v1, v9, v3

    add-float v6, v0, v1

    goto :goto_9

    :sswitch_c
    move v0, v6

    move/from16 v28, v15

    move v15, v7

    add-int/lit8 v1, v8, 0x0

    .line 1492
    aget v2, v9, v1

    invoke-virtual {v11, v2, v14}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 1493
    aget v1, v9, v1

    add-float v7, v15, v1

    :goto_9
    move/from16 v27, v8

    move-object/from16 v29, v9

    move/from16 v30, v10

    goto/16 :goto_13

    :sswitch_d
    move v0, v6

    move/from16 v28, v15

    move v15, v7

    add-int/lit8 v1, v8, 0x0

    .line 1508
    aget v2, v9, v1

    add-int/lit8 v1, v8, 0x1

    aget v3, v9, v1

    add-int/lit8 v12, v8, 0x2

    aget v4, v9, v12

    add-int/lit8 v14, v8, 0x3

    aget v5, v9, v14

    add-int/lit8 v24, v8, 0x4

    aget v6, v9, v24

    add-int/lit8 v25, v8, 0x5

    aget v7, v9, v25

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 1511
    aget v1, v9, v12

    add-float v7, v15, v1

    .line 1512
    aget v1, v9, v14

    add-float v6, v0, v1

    .line 1513
    aget v1, v9, v24

    add-float/2addr v1, v15

    .line 1514
    aget v2, v9, v25

    add-float/2addr v0, v2

    :goto_a
    move v5, v6

    move v4, v7

    move/from16 v27, v8

    move-object/from16 v29, v9

    move/from16 v30, v10

    move v6, v0

    move v7, v1

    goto/16 :goto_13

    :sswitch_e
    move v0, v6

    move/from16 v28, v15

    move v15, v7

    add-int/lit8 v12, v8, 0x5

    .line 1603
    aget v1, v9, v12

    add-float v4, v1, v15

    add-int/lit8 v24, v8, 0x6

    aget v1, v9, v24

    add-float v5, v1, v0

    add-int/lit8 v1, v8, 0x0

    aget v6, v9, v1

    add-int/lit8 v1, v8, 0x1

    aget v7, v9, v1

    add-int/lit8 v1, v8, 0x2

    aget v25, v9, v1

    add-int/lit8 v1, v8, 0x3

    aget v1, v9, v1

    cmpl-float v1, v1, v14

    if-eqz v1, :cond_5

    move/from16 v26, v16

    goto :goto_b

    :cond_5
    const/16 v26, 0x0

    :goto_b
    add-int/lit8 v1, v8, 0x4

    aget v1, v9, v1

    cmpl-float v1, v1, v14

    if-eqz v1, :cond_6

    move/from16 v14, v16

    goto :goto_c

    :cond_6
    const/4 v14, 0x0

    :goto_c
    move-object/from16 v1, p1

    move v2, v15

    move v3, v0

    move/from16 v27, v8

    move/from16 v8, v25

    move-object/from16 v29, v9

    move/from16 v9, v26

    move/from16 v30, v10

    move v10, v14

    invoke-static/range {v1 .. v10}, Landroidx/core/graphics/b$b;->a(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 1613
    aget v1, v29, v12

    add-float v7, v15, v1

    .line 1614
    aget v1, v29, v24

    add-float v6, v0, v1

    goto/16 :goto_12

    :sswitch_f
    move/from16 v27, v8

    move-object/from16 v29, v9

    move/from16 v30, v10

    move/from16 v28, v15

    move v15, v7

    add-int/lit8 v8, v27, 0x0

    .line 1504
    aget v0, v29, v8

    invoke-virtual {v11, v15, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1505
    aget v6, v29, v8

    goto/16 :goto_13

    :sswitch_10
    move v0, v6

    move/from16 v27, v8

    move-object/from16 v29, v9

    move/from16 v30, v10

    move/from16 v28, v15

    move v15, v7

    if-eq v1, v3, :cond_7

    if-eq v1, v12, :cond_7

    if-eq v1, v2, :cond_7

    const/16 v2, 0x54

    if-ne v1, v2, :cond_8

    :cond_7
    mul-float v7, v15, v26

    sub-float/2addr v7, v4

    mul-float v6, v0, v26

    sub-float/2addr v6, v5

    move v0, v6

    move v15, v7

    :cond_8
    add-int/lit8 v8, v27, 0x0

    .line 1594
    aget v1, v29, v8

    add-int/lit8 v2, v27, 0x1

    aget v3, v29, v2

    invoke-virtual {v11, v15, v0, v1, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1598
    aget v7, v29, v8

    .line 1599
    aget v6, v29, v2

    move v5, v0

    move v4, v15

    goto/16 :goto_13

    :sswitch_11
    move v0, v6

    move/from16 v27, v8

    move-object/from16 v29, v9

    move/from16 v30, v10

    move/from16 v28, v15

    const/16 v2, 0x63

    move v15, v7

    if-eq v1, v2, :cond_a

    const/16 v2, 0x73

    if-eq v1, v2, :cond_a

    const/16 v2, 0x43

    if-eq v1, v2, :cond_a

    const/16 v2, 0x53

    if-ne v1, v2, :cond_9

    goto :goto_d

    :cond_9
    move v3, v0

    move v2, v15

    goto :goto_e

    :cond_a
    :goto_d
    mul-float v7, v15, v26

    sub-float/2addr v7, v4

    mul-float v6, v0, v26

    sub-float/2addr v6, v5

    move v3, v6

    move v2, v7

    :goto_e
    add-int/lit8 v8, v27, 0x0

    .line 1550
    aget v4, v29, v8

    add-int/lit8 v0, v27, 0x1

    aget v5, v29, v0

    add-int/lit8 v9, v27, 0x2

    aget v6, v29, v9

    add-int/lit8 v10, v27, 0x3

    aget v7, v29, v10

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1552
    aget v1, v29, v8

    .line 1553
    aget v0, v29, v0

    .line 1554
    aget v7, v29, v9

    .line 1555
    aget v6, v29, v10

    goto/16 :goto_f

    :sswitch_12
    move/from16 v27, v8

    move-object/from16 v29, v9

    move/from16 v30, v10

    move/from16 v28, v15

    add-int/lit8 v8, v27, 0x0

    .line 1565
    aget v0, v29, v8

    add-int/lit8 v1, v27, 0x1

    aget v2, v29, v1

    add-int/lit8 v3, v27, 0x2

    aget v4, v29, v3

    add-int/lit8 v5, v27, 0x3

    aget v6, v29, v5

    invoke-virtual {v11, v0, v2, v4, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1566
    aget v0, v29, v8

    .line 1567
    aget v1, v29, v1

    .line 1568
    aget v7, v29, v3

    .line 1569
    aget v6, v29, v5

    move v4, v0

    move v5, v1

    goto/16 :goto_13

    :sswitch_13
    move/from16 v27, v8

    move-object/from16 v29, v9

    move/from16 v30, v10

    move/from16 v28, v15

    add-int/lit8 v8, v27, 0x0

    .line 1468
    aget v7, v29, v8

    add-int/lit8 v0, v27, 0x1

    .line 1469
    aget v6, v29, v0

    if-lez v27, :cond_b

    .line 1474
    aget v1, v29, v8

    aget v0, v29, v0

    invoke-virtual {v11, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_13

    .line 1476
    :cond_b
    aget v1, v29, v8

    aget v0, v29, v0

    invoke-virtual {v11, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    move/from16 v23, v6

    move/from16 v22, v7

    goto/16 :goto_13

    :sswitch_14
    move/from16 v27, v8

    move-object/from16 v29, v9

    move/from16 v30, v10

    move/from16 v28, v15

    add-int/lit8 v8, v27, 0x0

    .line 1487
    aget v0, v29, v8

    add-int/lit8 v1, v27, 0x1

    aget v2, v29, v1

    invoke-virtual {v11, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1488
    aget v7, v29, v8

    .line 1489
    aget v6, v29, v1

    goto/16 :goto_13

    :sswitch_15
    move v0, v6

    move/from16 v27, v8

    move-object/from16 v29, v9

    move/from16 v30, v10

    move/from16 v28, v15

    add-int/lit8 v8, v27, 0x0

    .line 1496
    aget v1, v29, v8

    invoke-virtual {v11, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1497
    aget v7, v29, v8

    goto/16 :goto_13

    :sswitch_16
    move/from16 v27, v8

    move-object/from16 v29, v9

    move/from16 v30, v10

    move/from16 v28, v15

    add-int/lit8 v8, v27, 0x0

    .line 1518
    aget v2, v29, v8

    add-int/lit8 v8, v27, 0x1

    aget v3, v29, v8

    add-int/lit8 v8, v27, 0x2

    aget v4, v29, v8

    add-int/lit8 v0, v27, 0x3

    aget v5, v29, v0

    add-int/lit8 v9, v27, 0x4

    aget v6, v29, v9

    add-int/lit8 v10, v27, 0x5

    aget v7, v29, v10

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1520
    aget v7, v29, v9

    .line 1521
    aget v6, v29, v10

    .line 1522
    aget v1, v29, v8

    .line 1523
    aget v0, v29, v0

    :goto_f
    move v5, v0

    move v4, v1

    goto :goto_13

    :sswitch_17
    move v0, v6

    move/from16 v27, v8

    move-object/from16 v29, v9

    move/from16 v30, v10

    move/from16 v28, v15

    move v15, v7

    add-int/lit8 v12, v27, 0x5

    .line 1619
    aget v4, v29, v12

    add-int/lit8 v24, v27, 0x6

    aget v5, v29, v24

    add-int/lit8 v8, v27, 0x0

    aget v6, v29, v8

    add-int/lit8 v8, v27, 0x1

    aget v7, v29, v8

    add-int/lit8 v8, v27, 0x2

    aget v8, v29, v8

    add-int/lit8 v1, v27, 0x3

    aget v1, v29, v1

    cmpl-float v1, v1, v14

    if-eqz v1, :cond_c

    move/from16 v9, v16

    goto :goto_10

    :cond_c
    const/4 v9, 0x0

    :goto_10
    add-int/lit8 v1, v27, 0x4

    aget v1, v29, v1

    cmpl-float v1, v1, v14

    if-eqz v1, :cond_d

    move/from16 v10, v16

    goto :goto_11

    :cond_d
    const/4 v10, 0x0

    :goto_11
    move-object/from16 v1, p1

    move v2, v15

    move v3, v0

    invoke-static/range {v1 .. v10}, Landroidx/core/graphics/b$b;->a(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 1629
    aget v7, v29, v12

    .line 1630
    aget v6, v29, v24

    :goto_12
    move v5, v6

    move v4, v7

    :goto_13
    add-int v8, v27, v21

    move/from16 v15, v28

    move-object/from16 v9, v29

    move/from16 v1, v30

    move v10, v1

    move-object/from16 v0, p0

    const/4 v12, 0x6

    const/4 v14, 0x0

    goto/16 :goto_3

    :cond_e
    move v0, v6

    move v1, v14

    move/from16 v28, v15

    move v15, v7

    aput v15, v13, v1

    aput v0, v13, v16

    aput v4, v13, v17

    aput v5, v13, v18

    aput v22, v13, v19

    aput v23, v13, v20

    move-object/from16 v0, p0

    .line 373
    aget-object v2, v0, v28

    iget-char v2, v2, Landroidx/core/graphics/b$b;->a:C

    add-int/lit8 v15, v28, 0x1

    move v1, v2

    const/4 v12, 0x6

    goto/16 :goto_0

    :cond_f
    return-void

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_5
        0x43 -> :sswitch_4
        0x48 -> :sswitch_3
        0x4c -> :sswitch_0
        0x4d -> :sswitch_0
        0x51 -> :sswitch_2
        0x53 -> :sswitch_2
        0x54 -> :sswitch_0
        0x56 -> :sswitch_3
        0x5a -> :sswitch_1
        0x61 -> :sswitch_5
        0x63 -> :sswitch_4
        0x68 -> :sswitch_3
        0x6c -> :sswitch_0
        0x6d -> :sswitch_0
        0x71 -> :sswitch_2
        0x73 -> :sswitch_2
        0x74 -> :sswitch_0
        0x76 -> :sswitch_3
        0x7a -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x41 -> :sswitch_17
        0x43 -> :sswitch_16
        0x48 -> :sswitch_15
        0x4c -> :sswitch_14
        0x4d -> :sswitch_13
        0x51 -> :sswitch_12
        0x53 -> :sswitch_11
        0x54 -> :sswitch_10
        0x56 -> :sswitch_f
        0x61 -> :sswitch_e
        0x63 -> :sswitch_d
        0x68 -> :sswitch_c
        0x6c -> :sswitch_b
        0x6d -> :sswitch_a
        0x71 -> :sswitch_9
        0x73 -> :sswitch_8
        0x74 -> :sswitch_7
        0x76 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public final a(Landroidx/core/graphics/b$b;Landroidx/core/graphics/b$b;F)V
    .locals 4

    .line 388
    iget-char v0, p1, Landroidx/core/graphics/b$b;->a:C

    iput-char v0, p0, Landroidx/core/graphics/b$b;->a:C

    const/4 v0, 0x0

    .line 389
    :goto_0
    iget-object v1, p1, Landroidx/core/graphics/b$b;->b:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 390
    iget-object v1, p0, Landroidx/core/graphics/b$b;->b:[F

    iget-object v2, p1, Landroidx/core/graphics/b$b;->b:[F

    aget v2, v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p3

    mul-float/2addr v2, v3

    iget-object v3, p2, Landroidx/core/graphics/b$b;->b:[F

    aget v3, v3, v0

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
