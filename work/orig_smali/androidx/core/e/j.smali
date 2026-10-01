.class public final Landroidx/core/e/j;
.super Ljava/lang/Object;
.source "NestedScrollingChildHelper.java"


# instance fields
.field public final a:Landroid/view/View;

.field public b:Z

.field private c:Landroid/view/ViewParent;

.field private d:Landroid/view/ViewParent;

.field private e:[I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroidx/core/e/j;->a:Landroid/view/View;

    return-void
.end method

.method private a()[I
    .registers 2

    .line 425
    iget-object v0, p0, Landroidx/core/e/j;->e:[I

    if-nez v0, :cond_9

    const/4 v0, 0x2

    .line 426
    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/core/e/j;->e:[I

    .line 428
    :cond_9
    iget-object p0, p0, Landroidx/core/e/j;->e:[I

    return-object p0
.end method


# virtual methods
.method public final a(II[II[I)V
    .registers 14

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    .line 231
    invoke-virtual/range {v0 .. v7}, Landroidx/core/e/j;->a(IIII[II[I)Z

    return-void
.end method

.method public final a(ILandroid/view/ViewParent;)V
    .registers 3

    packed-switch p1, :pswitch_data_c

    goto :goto_a

    .line 419
    :pswitch_4
    iput-object p2, p0, Landroidx/core/e/j;->d:Landroid/view/ViewParent;

    goto :goto_a

    .line 416
    :pswitch_7
    iput-object p2, p0, Landroidx/core/e/j;->c:Landroid/view/ViewParent;

    return-void

    :goto_a
    return-void

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method

.method public final a(I)Z
    .registers 2

    .line 114
    invoke-virtual {p0, p1}, Landroidx/core/e/j;->b(I)Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final a(II)Z
    .registers 7

    .line 145
    invoke-virtual {p0, p2}, Landroidx/core/e/j;->a(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 1086
    :cond_8
    iget-boolean v0, p0, Landroidx/core/e/j;->b:Z

    if-eqz v0, :cond_69

    .line 150
    iget-object v0, p0, Landroidx/core/e/j;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 151
    iget-object v2, p0, Landroidx/core/e/j;->a:Landroid/view/View;

    :goto_14
    if-eqz v0, :cond_69

    .line 153
    iget-object v3, p0, Landroidx/core/e/j;->a:Landroid/view/View;

    invoke-static {v0, v2, v3, p1, p2}, Landroidx/core/e/t;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 154
    invoke-virtual {p0, p2, v0}, Landroidx/core/e/j;->a(ILandroid/view/ViewParent;)V

    .line 155
    iget-object p0, p0, Landroidx/core/e/j;->a:Landroid/view/View;

    .line 1248
    instance-of v3, v0, Landroidx/core/e/l;

    if-eqz v3, :cond_2d

    .line 1250
    check-cast v0, Landroidx/core/e/l;

    invoke-interface {v0, v2, p0, p1, p2}, Landroidx/core/e/l;->b(Landroid/view/View;Landroid/view/View;II)V

    goto :goto_5c

    :cond_2d
    if-nez p2, :cond_5c

    .line 1254
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt p2, v3, :cond_53

    .line 1256
    :try_start_35
    invoke-interface {v0, v2, p0, p1}, Landroid/view/ViewParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    :try_end_38
    .catch Ljava/lang/AbstractMethodError; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_5c

    :catch_39
    move-exception p0

    const-string p1, "ViewParentCompat"

    .line 1258
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "ViewParent "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not implement interface method onNestedScrollAccepted"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5c

    .line 1261
    :cond_53
    instance-of p2, v0, Landroidx/core/e/k;

    if-eqz p2, :cond_5c

    .line 1262
    check-cast v0, Landroidx/core/e/k;

    invoke-interface {v0, v2, p0, p1}, Landroidx/core/e/k;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    :cond_5c
    :goto_5c
    return v1

    .line 158
    :cond_5d
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_64

    .line 159
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    .line 161
    :cond_64
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_14

    :cond_69
    const/4 p0, 0x0

    return p0
.end method

.method public final a(IIII[II[I)Z
    .registers 23

    move-object v0, p0

    move-object/from16 v1, p5

    .line 2086
    iget-boolean v2, v0, Landroidx/core/e/j;->b:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_61

    move/from16 v2, p6

    .line 239
    invoke-virtual {p0, v2}, Landroidx/core/e/j;->b(I)Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_11

    return v3

    :cond_11
    const/4 v12, 0x1

    if-nez p1, :cond_22

    if-nez p2, :cond_22

    if-nez p3, :cond_22

    if-eqz p4, :cond_1b

    goto :goto_22

    :cond_1b
    if-eqz v1, :cond_61

    .line 270
    aput v3, v1, v3

    .line 271
    aput v3, v1, v12

    goto :goto_61

    :cond_22
    :goto_22
    if-eqz v1, :cond_30

    .line 248
    iget-object v5, v0, Landroidx/core/e/j;->a:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 249
    aget v5, v1, v3

    .line 250
    aget v10, v1, v12

    move v13, v5

    move v14, v10

    goto :goto_32

    :cond_30
    move v13, v3

    move v14, v13

    :goto_32
    if-nez p7, :cond_3e

    .line 254
    invoke-direct {p0}, Landroidx/core/e/j;->a()[I

    move-result-object v5

    .line 255
    aput v3, v5, v3

    .line 256
    aput v3, v5, v12

    move-object v11, v5

    goto :goto_40

    :cond_3e
    move-object/from16 v11, p7

    .line 259
    :goto_40
    iget-object v5, v0, Landroidx/core/e/j;->a:Landroid/view/View;

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p6

    invoke-static/range {v4 .. v11}, Landroidx/core/e/t;->a(Landroid/view/ViewParent;Landroid/view/View;IIIII[I)V

    if-eqz v1, :cond_60

    .line 263
    iget-object v0, v0, Landroidx/core/e/j;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 264
    aget v0, v1, v3

    sub-int/2addr v0, v13

    aput v0, v1, v3

    .line 265
    aget v0, v1, v12

    sub-int/2addr v0, v14

    aput v0, v1, v12

    :cond_60
    return v12

    :cond_61
    :goto_61
    return v3
.end method

.method public final a(II[I[II)Z
    .registers 20

    move-object v1, p0

    move v0, p1

    move/from16 v5, p2

    move-object/from16 v8, p4

    move/from16 v7, p5

    .line 3086
    iget-boolean v2, v1, Landroidx/core/e/j;->b:Z

    const/4 v9, 0x0

    if-eqz v2, :cond_9e

    .line 303
    invoke-virtual {p0, v7}, Landroidx/core/e/j;->b(I)Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_14

    return v9

    :cond_14
    const/4 v10, 0x1

    if-nez v0, :cond_22

    if-eqz v5, :cond_1a

    goto :goto_22

    :cond_1a
    if-eqz v8, :cond_9e

    .line 331
    aput v9, v8, v9

    .line 332
    aput v9, v8, v10

    goto/16 :goto_9e

    :cond_22
    :goto_22
    if-eqz v8, :cond_30

    .line 312
    iget-object v3, v1, Landroidx/core/e/j;->a:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->getLocationInWindow([I)V

    .line 313
    aget v3, v8, v9

    .line 314
    aget v4, v8, v10

    move v11, v3

    move v12, v4

    goto :goto_32

    :cond_30
    move v11, v9

    move v12, v11

    :goto_32
    if-nez p3, :cond_3a

    .line 318
    invoke-direct {p0}, Landroidx/core/e/j;->a()[I

    move-result-object v3

    move-object v13, v3

    goto :goto_3c

    :cond_3a
    move-object/from16 v13, p3

    .line 320
    :goto_3c
    aput v9, v13, v9

    .line 321
    aput v9, v13, v10

    .line 322
    iget-object v3, v1, Landroidx/core/e/j;->a:Landroid/view/View;

    .line 3384
    instance-of v4, v2, Landroidx/core/e/l;

    if-eqz v4, :cond_52

    .line 3386
    check-cast v2, Landroidx/core/e/l;

    move v4, p1

    move/from16 v5, p2

    move-object v6, v13

    move/from16 v7, p5

    invoke-interface/range {v2 .. v7}, Landroidx/core/e/l;->a(Landroid/view/View;II[II)V

    goto :goto_82

    :cond_52
    if-nez v7, :cond_82

    .line 3389
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v4, v6, :cond_79

    .line 3391
    :try_start_5a
    invoke-interface {v2, v3, p1, v5, v13}, Landroid/view/ViewParent;->onNestedPreScroll(Landroid/view/View;II[I)V
    :try_end_5d
    .catch Ljava/lang/AbstractMethodError; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_82

    :catch_5e
    move-exception v0

    move-object v3, v0

    const-string v0, "ViewParentCompat"

    .line 3393
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ViewParent "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not implement interface method onNestedPreScroll"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_82

    .line 3396
    :cond_79
    instance-of v4, v2, Landroidx/core/e/k;

    if-eqz v4, :cond_82

    .line 3397
    check-cast v2, Landroidx/core/e/k;

    invoke-interface {v2, v3, p1, v5, v13}, Landroidx/core/e/k;->onNestedPreScroll(Landroid/view/View;II[I)V

    :cond_82
    :goto_82
    if-eqz v8, :cond_93

    .line 325
    iget-object v0, v1, Landroidx/core/e/j;->a:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->getLocationInWindow([I)V

    .line 326
    aget v0, v8, v9

    sub-int/2addr v0, v11

    aput v0, v8, v9

    .line 327
    aget v0, v8, v10

    sub-int/2addr v0, v12

    aput v0, v8, v10

    .line 329
    :cond_93
    aget v0, v13, v9

    if-nez v0, :cond_9d

    aget v0, v13, v10

    if-eqz v0, :cond_9c

    goto :goto_9d

    :cond_9c
    return v9

    :cond_9d
    :goto_9d
    return v10

    :cond_9e
    :goto_9e
    return v9
.end method

.method public final b(I)Landroid/view/ViewParent;
    .registers 2

    packed-switch p1, :pswitch_data_c

    const/4 p0, 0x0

    return-object p0

    .line 408
    :pswitch_5
    iget-object p0, p0, Landroidx/core/e/j;->d:Landroid/view/ViewParent;

    return-object p0

    .line 406
    :pswitch_8
    iget-object p0, p0, Landroidx/core/e/j;->c:Landroid/view/ViewParent;

    return-object p0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method
