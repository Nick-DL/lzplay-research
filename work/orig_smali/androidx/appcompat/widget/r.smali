.class Landroidx/appcompat/widget/r;
.super Landroid/widget/ListView;
.source "DropDownListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/r$b;,
        Landroidx/appcompat/widget/r$a;
    }
.end annotation


# instance fields
.field a:Landroidx/appcompat/widget/r$b;

.field private final b:Landroid/graphics/Rect;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/lang/reflect/Field;

.field private i:Landroidx/appcompat/widget/r$a;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Landroidx/core/e/u;

.field private n:Landroidx/core/widget/f;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    .line 118
    sget v0, Landroidx/appcompat/R$attr;->dropDownListViewStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/r;->b:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Landroidx/appcompat/widget/r;->c:I

    .line 52
    iput p1, p0, Landroidx/appcompat/widget/r;->d:I

    .line 53
    iput p1, p0, Landroidx/appcompat/widget/r;->e:I

    .line 54
    iput p1, p0, Landroidx/appcompat/widget/r;->f:I

    .line 119
    iput-boolean p2, p0, Landroidx/appcompat/widget/r;->k:Z

    .line 120
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/r;->setCacheColorHint(I)V

    .line 123
    :try_start_1b
    const-class p1, Landroid/widget/AbsListView;

    const-string p2, "mIsChildViewEnabled"

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/r;->h:Ljava/lang/reflect/Field;

    .line 124
    iget-object p0, p0, Landroidx/appcompat/widget/r;->h:Ljava/lang/reflect/Field;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1b .. :try_end_2b} :catch_2c

    return-void

    :catch_2c
    move-exception p0

    .line 126
    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    return-void
.end method

.method private a()V
    .registers 3

    .line 558
    invoke-virtual {p0}, Landroidx/appcompat/widget/r;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 5693
    iget-boolean v1, p0, Landroidx/appcompat/widget/r;->l:Z

    if-eqz v1, :cond_17

    .line 559
    invoke-virtual {p0}, Landroidx/appcompat/widget/r;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 560
    invoke-virtual {p0}, Landroidx/appcompat/widget/r;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_17
    return-void
.end method

.method private setSelectorEnabled(Z)V
    .registers 3

    .line 373
    iget-object v0, p0, Landroidx/appcompat/widget/r;->i:Landroidx/appcompat/widget/r$a;

    if-eqz v0, :cond_8

    .line 374
    iget-object p0, p0, Landroidx/appcompat/widget/r;->i:Landroidx/appcompat/widget/r$a;

    .line 2387
    iput-boolean p1, p0, Landroidx/appcompat/widget/r$a;->b:Z

    :cond_8
    return-void
.end method


# virtual methods
.method public a(IIIII)I
    .registers 16

    .line 290
    invoke-virtual {p0}, Landroidx/appcompat/widget/r;->getListPaddingTop()I

    move-result p2

    .line 291
    invoke-virtual {p0}, Landroidx/appcompat/widget/r;->getListPaddingBottom()I

    move-result p3

    .line 292
    invoke-virtual {p0}, Landroidx/appcompat/widget/r;->getListPaddingLeft()I

    .line 293
    invoke-virtual {p0}, Landroidx/appcompat/widget/r;->getListPaddingRight()I

    .line 294
    invoke-virtual {p0}, Landroidx/appcompat/widget/r;->getDividerHeight()I

    move-result v0

    .line 295
    invoke-virtual {p0}, Landroidx/appcompat/widget/r;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 297
    invoke-virtual {p0}, Landroidx/appcompat/widget/r;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-nez v2, :cond_1e

    add-int/2addr p2, p3

    return p2

    :cond_1e
    add-int/2addr p2, p3

    const/4 p3, 0x0

    if-lez v0, :cond_25

    if-eqz v1, :cond_25

    goto :goto_26

    :cond_25
    move v0, p3

    .line 314
    :goto_26
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/4 v3, 0x0

    move v5, p2

    move p2, p3

    move v4, p2

    move v7, v4

    move-object v6, v3

    :goto_30
    if-ge p2, v1, :cond_7e

    .line 316
    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v4, :cond_3a

    move-object v6, v3

    move v4, v8

    .line 321
    :cond_3a
    invoke-interface {v2, p2, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 325
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_4b

    .line 328
    invoke-virtual {p0}, Landroidx/appcompat/widget/r;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 329
    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    :cond_4b
    iget v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v9, :cond_58

    .line 333
    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_5c

    .line 336
    :cond_58
    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 338
    :goto_5c
    invoke-virtual {v6, p1, v8}, Landroid/view/View;->measure(II)V

    .line 342
    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    if-lez p2, :cond_65

    add-int/2addr v5, v0

    .line 349
    :cond_65
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v5, v8

    if-lt v5, p4, :cond_76

    if-ltz p5, :cond_75

    if-le p2, p5, :cond_75

    if-lez v7, :cond_75

    if-eq v5, p4, :cond_75

    return v7

    :cond_75
    return p4

    :cond_76
    if-ltz p5, :cond_7b

    if-lt p2, p5, :cond_7b

    move v7, v5

    :cond_7b
    add-int/lit8 p2, p2, 0x1

    goto :goto_30

    :cond_7e
    return v5
.end method

.method public a(Landroid/view/MotionEvent;I)Z
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 485
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_17a

    :cond_d
    :goto_d
    move v5, v4

    const/4 v0, 0x0

    goto/16 :goto_12e

    :goto_11
    :pswitch_11
    move v0, v5

    goto/16 :goto_12e

    :pswitch_14
    move v0, v4

    goto :goto_17

    :pswitch_16
    move v0, v5

    .line 494
    :goto_17
    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    if-gez v6, :cond_1e

    goto :goto_11

    .line 500
    :cond_1e
    invoke-virtual {v2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v7, v7

    .line 501
    invoke-virtual {v2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    .line 502
    invoke-virtual {v1, v7, v6}, Landroidx/appcompat/widget/r;->pointToPosition(II)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_33

    move v5, v0

    move v0, v4

    goto/16 :goto_12e

    .line 508
    :cond_33
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/r;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, v8, v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/r;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    int-to-float v7, v7

    int-to-float v6, v6

    .line 3646
    iput-boolean v4, v1, Landroidx/appcompat/widget/r;->l:Z

    .line 3649
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v0, v11, :cond_4a

    .line 3650
    invoke-virtual {v1, v7, v6}, Landroidx/appcompat/widget/r;->drawableHotspotChanged(FF)V

    .line 3652
    :cond_4a
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/r;->isPressed()Z

    move-result v0

    if-nez v0, :cond_53

    .line 3653
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/r;->setPressed(Z)V

    .line 3657
    :cond_53
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/r;->layoutChildren()V

    .line 3661
    iget v0, v1, Landroidx/appcompat/widget/r;->g:I

    if-eq v0, v9, :cond_72

    .line 3662
    iget v0, v1, Landroidx/appcompat/widget/r;->g:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/r;->getFirstVisiblePosition()I

    move-result v12

    sub-int/2addr v0, v12

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/r;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_72

    if-eq v0, v10, :cond_72

    .line 3663
    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v12

    if-eqz v12, :cond_72

    .line 3664
    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 3667
    :cond_72
    iput v8, v1, Landroidx/appcompat/widget/r;->g:I

    .line 3670
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, v7, v0

    .line 3671
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v12

    int-to-float v12, v12

    sub-float v12, v6, v12

    .line 3672
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v13, v11, :cond_89

    .line 3673
    invoke-virtual {v10, v0, v12}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 3675
    :cond_89
    invoke-virtual {v10}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-nez v0, :cond_92

    .line 3676
    invoke-virtual {v10, v4}, Landroid/view/View;->setPressed(Z)V

    .line 4586
    :cond_92
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/r;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_9c

    if-eq v8, v9, :cond_9c

    move v12, v4

    goto :goto_9d

    :cond_9c
    move v12, v5

    :goto_9d
    if-eqz v12, :cond_a2

    .line 4589
    invoke-virtual {v11, v5, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 4604
    :cond_a2
    iget-object v0, v1, Landroidx/appcompat/widget/r;->b:Landroid/graphics/Rect;

    .line 4605
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v15

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v0, v13, v14, v15, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 4608
    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v13, v1, Landroidx/appcompat/widget/r;->c:I

    sub-int/2addr v5, v13

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 4609
    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v13, v1, Landroidx/appcompat/widget/r;->d:I

    sub-int/2addr v5, v13

    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 4610
    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v13, v1, Landroidx/appcompat/widget/r;->e:I

    add-int/2addr v5, v13

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 4611
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget v13, v1, Landroidx/appcompat/widget/r;->f:I

    add-int/2addr v5, v13

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 4616
    :try_start_d3
    iget-object v0, v1, Landroidx/appcompat/widget/r;->h:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 4617
    invoke-virtual {v10}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eq v5, v0, :cond_f3

    .line 4618
    iget-object v5, v1, Landroidx/appcompat/widget/r;->h:Ljava/lang/reflect/Field;

    xor-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eq v8, v9, :cond_f3

    .line 4620
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/r;->refreshDrawableState()V
    :try_end_ee
    .catch Ljava/lang/IllegalAccessException; {:try_start_d3 .. :try_end_ee} :catch_ef

    goto :goto_f3

    :catch_ef
    move-exception v0

    .line 4624
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_f3
    :goto_f3
    if-eqz v12, :cond_111

    .line 4595
    iget-object v0, v1, Landroidx/appcompat/widget/r;->b:Landroid/graphics/Rect;

    .line 4596
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    .line 4597
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    .line 4598
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/r;->getVisibility()I

    move-result v12

    if-nez v12, :cond_108

    move v12, v4

    :goto_106
    const/4 v13, 0x0

    goto :goto_10a

    :cond_108
    const/4 v12, 0x0

    goto :goto_106

    :goto_10a
    invoke-virtual {v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 4599
    invoke-static {v11, v5, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;FF)V

    goto :goto_112

    :cond_111
    const/4 v13, 0x0

    .line 4577
    :goto_112
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/r;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_11d

    if-eq v8, v9, :cond_11d

    .line 4579
    invoke-static {v0, v7, v6}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;FF)V

    .line 3685
    :cond_11d
    invoke-direct {v1, v13}, Landroidx/appcompat/widget/r;->setSelectorEnabled(Z)V

    .line 3689
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/r;->refreshDrawableState()V

    if-ne v3, v4, :cond_d

    .line 5542
    invoke-virtual {v1, v8}, Landroidx/appcompat/widget/r;->getItemIdAtPosition(I)J

    move-result-wide v5

    .line 5543
    invoke-virtual {v1, v10, v8, v5, v6}, Landroidx/appcompat/widget/r;->performItemClick(Landroid/view/View;IJ)Z

    goto/16 :goto_d

    :goto_12e
    if-eqz v5, :cond_132

    if-eqz v0, :cond_157

    :cond_132
    const/4 v3, 0x0

    .line 5629
    iput-boolean v3, v1, Landroidx/appcompat/widget/r;->l:Z

    .line 5630
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/r;->setPressed(Z)V

    .line 5632
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/r;->drawableStateChanged()V

    .line 5634
    iget v0, v1, Landroidx/appcompat/widget/r;->g:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/r;->getFirstVisiblePosition()I

    move-result v6

    sub-int/2addr v0, v6

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/r;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_14b

    .line 5636
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 5639
    :cond_14b
    iget-object v0, v1, Landroidx/appcompat/widget/r;->m:Landroidx/core/e/u;

    if-eqz v0, :cond_157

    .line 5640
    iget-object v0, v1, Landroidx/appcompat/widget/r;->m:Landroidx/core/e/u;

    invoke-virtual {v0}, Landroidx/core/e/u;->b()V

    const/4 v0, 0x0

    .line 5641
    iput-object v0, v1, Landroidx/appcompat/widget/r;->m:Landroidx/core/e/u;

    :cond_157
    if-eqz v5, :cond_16f

    .line 525
    iget-object v0, v1, Landroidx/appcompat/widget/r;->n:Landroidx/core/widget/f;

    if-nez v0, :cond_164

    .line 526
    new-instance v0, Landroidx/core/widget/f;

    invoke-direct {v0, v1}, Landroidx/core/widget/f;-><init>(Landroid/widget/ListView;)V

    iput-object v0, v1, Landroidx/appcompat/widget/r;->n:Landroidx/core/widget/f;

    .line 528
    :cond_164
    iget-object v0, v1, Landroidx/appcompat/widget/r;->n:Landroidx/core/widget/f;

    invoke-virtual {v0, v4}, Landroidx/core/widget/f;->a(Z)Landroidx/core/widget/a;

    .line 529
    iget-object v0, v1, Landroidx/appcompat/widget/r;->n:Landroidx/core/widget/f;

    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/f;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_179

    .line 530
    :cond_16f
    iget-object v0, v1, Landroidx/appcompat/widget/r;->n:Landroidx/core/widget/f;

    if-eqz v0, :cond_179

    .line 531
    iget-object v0, v1, Landroidx/appcompat/widget/r;->n:Landroidx/core/widget/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/widget/f;->a(Z)Landroidx/core/widget/a;

    :cond_179
    :goto_179
    return v5

    :pswitch_data_17a
    .packed-switch 0x1
        :pswitch_16
        :pswitch_14
        :pswitch_11
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 1565
    iget-object v0, p0, Landroidx/appcompat/widget/r;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1566
    invoke-virtual {p0}, Landroidx/appcompat/widget/r;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1568
    iget-object v1, p0, Landroidx/appcompat/widget/r;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1569
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 203
    :cond_16
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .registers 2

    .line 186
    iget-object v0, p0, Landroidx/appcompat/widget/r;->a:Landroidx/appcompat/widget/r$b;

    if-eqz v0, :cond_5

    return-void

    .line 190
    :cond_5
    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    const/4 v0, 0x1

    .line 192
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/r;->setSelectorEnabled(Z)V

    .line 193
    invoke-direct {p0}, Landroidx/appcompat/widget/r;->a()V

    return-void
.end method

.method public hasFocus()Z
    .registers 2

    .line 164
    iget-boolean v0, p0, Landroidx/appcompat/widget/r;->k:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

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

.method public hasWindowFocus()Z
    .registers 2

    .line 144
    iget-boolean v0, p0, Landroidx/appcompat/widget/r;->k:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

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

.method public isFocused()Z
    .registers 2

    .line 154
    iget-boolean v0, p0, Landroidx/appcompat/widget/r;->k:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

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

.method public isInTouchMode()Z
    .registers 2

    .line 134
    iget-boolean v0, p0, Landroidx/appcompat/widget/r;->k:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroidx/appcompat/widget/r;->j:Z

    if-nez v0, :cond_e

    :cond_8
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result p0

    if-eqz p0, :cond_10

    :cond_e
    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    const/4 v0, 0x0

    .line 471
    iput-object v0, p0, Landroidx/appcompat/widget/r;->a:Landroidx/appcompat/widget/r$b;

    .line 472
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 430
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_b

    .line 434
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 437
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_25

    .line 438
    iget-object v1, p0, Landroidx/appcompat/widget/r;->a:Landroidx/appcompat/widget/r$b;

    if-nez v1, :cond_25

    .line 441
    new-instance v1, Landroidx/appcompat/widget/r$b;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/r$b;-><init>(Landroidx/appcompat/widget/r;)V

    iput-object v1, p0, Landroidx/appcompat/widget/r;->a:Landroidx/appcompat/widget/r$b;

    .line 442
    iget-object v1, p0, Landroidx/appcompat/widget/r;->a:Landroidx/appcompat/widget/r$b;

    .line 2716
    iget-object v2, v1, Landroidx/appcompat/widget/r$b;->a:Landroidx/appcompat/widget/r;

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/r;->post(Ljava/lang/Runnable;)Z

    .line 446
    :cond_25
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    const/16 v2, 0x9

    const/4 v3, -0x1

    if-eq v0, v2, :cond_36

    const/4 v2, 0x7

    if-ne v0, v2, :cond_32

    goto :goto_36

    .line 463
    :cond_32
    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/r;->setSelection(I)V

    goto :goto_6b

    .line 449
    :cond_36
    :goto_36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/widget/r;->pointToPosition(II)I

    move-result p1

    if-eq p1, v3, :cond_6b

    .line 451
    invoke-virtual {p0}, Landroidx/appcompat/widget/r;->getSelectedItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_6b

    .line 452
    invoke-virtual {p0}, Landroidx/appcompat/widget/r;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/r;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 456
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/r;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/r;->setSelectionFromTop(II)V

    .line 458
    :cond_68
    invoke-direct {p0}, Landroidx/appcompat/widget/r;->a()V

    :cond_6b
    :goto_6b
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_17

    .line 210
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/r;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/r;->g:I

    .line 213
    :goto_17
    iget-object v0, p0, Landroidx/appcompat/widget/r;->a:Landroidx/appcompat/widget/r$b;

    if-eqz v0, :cond_27

    .line 215
    iget-object v0, p0, Landroidx/appcompat/widget/r;->a:Landroidx/appcompat/widget/r$b;

    .line 1711
    iget-object v1, v0, Landroidx/appcompat/widget/r$b;->a:Landroidx/appcompat/widget/r;

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/appcompat/widget/r;->a:Landroidx/appcompat/widget/r$b;

    .line 1712
    iget-object v1, v0, Landroidx/appcompat/widget/r$b;->a:Landroidx/appcompat/widget/r;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/r;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 217
    :cond_27
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method setListSelectionHidden(Z)V
    .registers 2

    .line 554
    iput-boolean p1, p0, Landroidx/appcompat/widget/r;->j:Z

    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    if-eqz p1, :cond_8

    .line 169
    new-instance v0, Landroidx/appcompat/widget/r$a;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/r$a;-><init>(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-object v0, p0, Landroidx/appcompat/widget/r;->i:Landroidx/appcompat/widget/r$a;

    .line 170
    iget-object v0, p0, Landroidx/appcompat/widget/r;->i:Landroidx/appcompat/widget/r$a;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 172
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-eqz p1, :cond_1a

    .line 174
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 177
    :cond_1a
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iput p1, p0, Landroidx/appcompat/widget/r;->c:I

    .line 178
    iget p1, v0, Landroid/graphics/Rect;->top:I

    iput p1, p0, Landroidx/appcompat/widget/r;->d:I

    .line 179
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iput p1, p0, Landroidx/appcompat/widget/r;->e:I

    .line 180
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Landroidx/appcompat/widget/r;->f:I

    return-void
.end method
