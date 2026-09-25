.class public Landroidx/appcompat/widget/LinearLayoutCompat;
.super Landroid/view/ViewGroup;
.source "LinearLayoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/LinearLayoutCompat$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:Z

.field private i:[I

.field private j:[I

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:I

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 157
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->a:Z

    const/4 v1, -0x1

    .line 109
    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    const/4 v2, 0x0

    .line 116
    iput v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->c:I

    const v3, 0x800033

    .line 120
    iput v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    .line 159
    sget-object v3, Landroidx/appcompat/R$styleable;->LinearLayoutCompat:[I

    invoke-static {p1, p2, v3, p3, v2}, Landroidx/appcompat/widget/ae;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/ae;

    move-result-object p1

    .line 162
    sget p2, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_orientation:I

    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/ae;->a(II)I

    move-result p2

    if-ltz p2, :cond_0

    .line 164
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->setOrientation(I)V

    .line 167
    :cond_0
    sget p2, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_gravity:I

    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/ae;->a(II)I

    move-result p2

    if-ltz p2, :cond_1

    .line 169
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->setGravity(I)V

    .line 172
    :cond_1
    sget p2, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAligned:I

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/ae;->a(IZ)Z

    move-result p2

    if-nez p2, :cond_2

    .line 174
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->setBaselineAligned(Z)V

    .line 177
    :cond_2
    sget p2, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_weightSum:I

    .line 2159
    iget-object p3, p1, Landroidx/appcompat/widget/ae;->a:Landroid/content/res/TypedArray;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p3, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    .line 177
    iput p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->g:F

    .line 179
    sget p2, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    .line 180
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/ae;->a(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    .line 182
    sget p2, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_measureWithLargestChild:I

    invoke-virtual {p1, p2, v2}, Landroidx/appcompat/widget/ae;->a(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->h:Z

    .line 184
    sget p2, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_divider:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ae;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    sget p2, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_showDividers:I

    invoke-virtual {p1, p2, v2}, Landroidx/appcompat/widget/ae;->a(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->n:I

    .line 186
    sget p2, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_dividerPadding:I

    invoke-virtual {p1, p2, v2}, Landroidx/appcompat/widget/ae;->d(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->o:I

    .line 2245
    iget-object p0, p1, Landroidx/appcompat/widget/ae;->a:Landroid/content/res/TypedArray;

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(II)V
    .locals 10

    .line 899
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 10509
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 903
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    .line 904
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 906
    iget v2, v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;->width:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 909
    iget v9, v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;->height:I

    .line 910
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;->height:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, v0

    move v6, p2

    .line 913
    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 914
    iput v9, v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;->height:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/graphics/Canvas;I)V
    .locals 4

    .line 367
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->o:I

    add-int/2addr v1, v2

    .line 368
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->o:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    add-int/2addr v3, p2

    .line 367
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 369
    iget-object p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private a(Landroid/view/View;IIII)V
    .locals 0

    .line 1381
    invoke-virtual/range {p0 .. p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method private b(II)V
    .locals 38

    move-object/from16 v6, p0

    move/from16 v7, p2

    const/4 v8, 0x0

    .line 932
    iput v8, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 940
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v9

    .line 942
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 943
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 948
    iget-object v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->i:[I

    const/4 v12, 0x4

    if-eqz v0, :cond_0

    iget-object v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->j:[I

    if-nez v0, :cond_1

    .line 949
    :cond_0
    new-array v0, v12, [I

    iput-object v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->i:[I

    .line 950
    new-array v0, v12, [I

    iput-object v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->j:[I

    .line 953
    :cond_1
    iget-object v13, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->i:[I

    .line 954
    iget-object v14, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->j:[I

    const/4 v15, 0x3

    const/4 v5, -0x1

    .line 956
    aput v5, v13, v15

    const/16 v16, 0x2

    aput v5, v13, v16

    const/16 v17, 0x1

    aput v5, v13, v17

    aput v5, v13, v8

    .line 957
    aput v5, v14, v15

    aput v5, v14, v16

    aput v5, v14, v17

    aput v5, v14, v8

    .line 959
    iget-boolean v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->a:Z

    .line 960
    iget-boolean v3, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->h:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v10, v2, :cond_2

    move/from16 v18, v17

    goto :goto_0

    :cond_2
    move/from16 v18, v8

    :goto_0
    const/16 v19, 0x0

    move v1, v8

    move v12, v1

    move v15, v12

    move/from16 v20, v15

    move/from16 v21, v20

    move/from16 v22, v21

    move/from16 v23, v22

    move/from16 v25, v23

    move/from16 v24, v17

    move/from16 v0, v19

    :goto_1
    const/16 v5, 0x8

    if-ge v1, v9, :cond_15

    .line 11509
    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_3

    .line 971
    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    add-int/2addr v2, v8

    iput v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move/from16 v29, v0

    move v0, v1

    move/from16 v33, v3

    move/from16 v27, v4

    const/high16 v1, 0x40000000    # 2.0f

    goto/16 :goto_e

    .line 975
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v5, :cond_14

    .line 980
    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 981
    iget v5, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iget v8, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    add-int/2addr v5, v8

    iput v5, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 985
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 987
    iget v5, v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;->g:F

    add-float v29, v0, v5

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v10, v5, :cond_7

    .line 989
    iget v0, v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;->width:I

    if-nez v0, :cond_7

    iget v0, v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;->g:F

    cmpl-float v0, v0, v19

    if-lez v0, :cond_7

    if-eqz v18, :cond_5

    .line 994
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iget v5, v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    move/from16 v31, v1

    iget v1, v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    add-int/2addr v5, v1

    add-int/2addr v0, v5

    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    goto :goto_2

    :cond_5
    move/from16 v31, v1

    .line 996
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 997
    iget v1, v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    add-int/2addr v1, v0

    iget v5, v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    add-int/2addr v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    :goto_2
    if-eqz v4, :cond_6

    const/4 v0, 0x0

    .line 1007
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1008
    invoke-virtual {v2, v1, v1}, Landroid/view/View;->measure(II)V

    move-object/from16 v30, v2

    move/from16 v33, v3

    move/from16 v27, v4

    const/16 v26, -0x2

    goto/16 :goto_6

    :cond_6
    move-object/from16 v30, v2

    move/from16 v33, v3

    move/from16 v27, v4

    move/from16 v20, v17

    const/high16 v1, 0x40000000    # 2.0f

    const/16 v26, -0x2

    goto/16 :goto_7

    :cond_7
    move/from16 v31, v1

    .line 1015
    iget v0, v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;->width:I

    if-nez v0, :cond_8

    iget v0, v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;->g:F

    cmpl-float v0, v0, v19

    if-lez v0, :cond_8

    const/4 v5, -0x2

    .line 1021
    iput v5, v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;->width:I

    const/4 v1, 0x0

    goto :goto_3

    :cond_8
    const/4 v5, -0x2

    const/high16 v1, -0x80000000

    :goto_3
    cmpl-float v0, v29, v19

    if-nez v0, :cond_9

    .line 1028
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move/from16 v27, v0

    goto :goto_4

    :cond_9
    const/16 v27, 0x0

    :goto_4
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v32, v1

    move-object v1, v2

    move-object/from16 v30, v2

    move/from16 v2, p1

    move/from16 v33, v3

    move/from16 v3, v27

    move/from16 v27, v4

    move/from16 v4, p2

    move/from16 v26, v5

    const/high16 v7, -0x80000000

    move/from16 v5, v28

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(Landroid/view/View;IIII)V

    move/from16 v0, v32

    if-eq v0, v7, :cond_a

    .line 1033
    iput v0, v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;->width:I

    .line 1036
    :cond_a
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v18, :cond_b

    .line 1038
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iget v2, v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    add-int/2addr v2, v0

    iget v3, v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 1039
    iput v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    goto :goto_5

    :cond_b
    const/4 v3, 0x0

    .line 1041
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    add-int v2, v1, v0

    .line 1042
    iget v4, v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    add-int/2addr v2, v4

    iget v4, v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    :goto_5
    if-eqz v33, :cond_c

    .line 1047
    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v12, v0

    :cond_c
    :goto_6
    const/high16 v1, 0x40000000    # 2.0f

    :goto_7
    if-eq v11, v1, :cond_d

    .line 1052
    iget v0, v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_d

    move/from16 v0, v17

    move/from16 v25, v0

    goto :goto_8

    :cond_d
    const/4 v0, 0x0

    .line 1060
    :goto_8
    iget v2, v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;->topMargin:I

    iget v3, v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;->bottomMargin:I

    add-int/2addr v2, v3

    .line 1061
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v2

    .line 1062
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    move/from16 v5, v23

    invoke-static {v5, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v23

    if-eqz v27, :cond_f

    .line 1065
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getBaseline()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_f

    .line 1069
    iget v5, v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;->h:I

    if-gez v5, :cond_e

    iget v5, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    goto :goto_9

    :cond_e
    iget v5, v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;->h:I

    :goto_9
    and-int/lit8 v5, v5, 0x70

    const/4 v7, 0x4

    shr-int/2addr v5, v7

    and-int/lit8 v5, v5, -0x2

    shr-int/lit8 v5, v5, 0x1

    .line 1074
    aget v7, v13, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    aput v7, v13, v5

    .line 1075
    aget v7, v14, v5

    sub-int v4, v3, v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v14, v5

    .line 1079
    :cond_f
    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v15

    if-eqz v24, :cond_10

    .line 1081
    iget v4, v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;->height:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_10

    move/from16 v24, v17

    goto :goto_a

    :cond_10
    const/16 v24, 0x0

    .line 1082
    :goto_a
    iget v4, v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;->g:F

    cmpl-float v4, v4, v19

    if-lez v4, :cond_12

    if-eqz v0, :cond_11

    :goto_b
    move/from16 v8, v22

    goto :goto_c

    :cond_11
    move v2, v3

    goto :goto_b

    .line 1087
    :goto_c
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v8, v22

    goto :goto_d

    :cond_12
    move/from16 v8, v22

    if-eqz v0, :cond_13

    move v3, v2

    :cond_13
    move/from16 v2, v21

    .line 1090
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v21

    goto :goto_d

    :cond_14
    move/from16 v31, v1

    move/from16 v33, v3

    move/from16 v27, v4

    move/from16 v2, v21

    move/from16 v8, v22

    move/from16 v5, v23

    const/high16 v1, 0x40000000    # 2.0f

    move/from16 v29, v0

    :goto_d
    add-int/lit8 v0, v31, 0x0

    move/from16 v22, v8

    :goto_e
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move/from16 v4, v27

    move/from16 v3, v33

    const/4 v5, -0x1

    move/from16 v7, p2

    const/4 v8, 0x0

    move v1, v0

    move/from16 v0, v29

    goto/16 :goto_1

    :cond_15
    move v1, v2

    move/from16 v33, v3

    move/from16 v27, v4

    move/from16 v2, v21

    move/from16 v8, v22

    const/high16 v7, -0x80000000

    const/16 v26, -0x2

    .line 1097
    iget v3, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    if-lez v3, :cond_16

    invoke-virtual {v6, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(I)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1098
    iget v3, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    add-int/2addr v3, v4

    iput v3, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 1103
    :cond_16
    aget v3, v13, v17

    const/4 v4, -0x1

    if-ne v3, v4, :cond_17

    const/4 v3, 0x0

    aget v1, v13, v3

    if-ne v1, v4, :cond_17

    aget v1, v13, v16

    if-ne v1, v4, :cond_17

    const/4 v1, 0x3

    aget v3, v13, v1

    if-eq v3, v4, :cond_18

    goto :goto_f

    :cond_17
    const/4 v1, 0x3

    .line 1107
    :goto_f
    aget v3, v13, v1

    const/4 v4, 0x0

    aget v5, v13, v4

    aget v7, v13, v17

    aget v4, v13, v16

    .line 1109
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1108
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1107
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1110
    aget v4, v14, v1

    const/4 v1, 0x0

    aget v5, v14, v1

    aget v1, v14, v17

    aget v7, v14, v16

    .line 1112
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1111
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1110
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v3, v1

    .line 1113
    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v15

    :cond_18
    if-eqz v33, :cond_1d

    const/high16 v1, -0x80000000

    if-eq v10, v1, :cond_19

    if-nez v10, :cond_1d

    :cond_19
    const/4 v1, 0x0

    .line 1118
    iput v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move v3, v1

    :goto_10
    if-ge v3, v9, :cond_1d

    .line 12509
    invoke-virtual {v6, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1a

    .line 1124
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    add-int/2addr v4, v1

    iput v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    goto :goto_11

    .line 1128
    :cond_1a
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v5, 0x8

    if-ne v1, v5, :cond_1b

    add-int/lit8 v3, v3, 0x0

    goto :goto_11

    .line 1134
    :cond_1b
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    if-eqz v18, :cond_1c

    .line 1136
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iget v5, v1, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    add-int/2addr v5, v12

    iget v1, v1, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    add-int/2addr v5, v1

    const/4 v7, 0x0

    add-int/2addr v5, v7

    add-int/2addr v4, v5

    .line 1137
    iput v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    goto :goto_11

    :cond_1c
    const/4 v7, 0x0

    .line 1139
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    add-int v5, v4, v12

    .line 1140
    iget v7, v1, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    add-int/2addr v5, v7

    iget v1, v1, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    add-int/2addr v5, v1

    const/4 v1, 0x0

    add-int/2addr v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    :goto_11
    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x0

    goto :goto_10

    .line 1147
    :cond_1d
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    iput v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 1149
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 1152
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v7, p1

    const/4 v3, 0x0

    .line 1155
    invoke-static {v1, v7, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    const v3, 0xffffff

    and-int/2addr v3, v1

    .line 1161
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int/2addr v3, v4

    if-nez v20, :cond_21

    if-eqz v3, :cond_1e

    cmpl-float v5, v0, v19

    if-lez v5, :cond_1e

    goto :goto_13

    .line 1273
    :cond_1e
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v33, :cond_20

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v10, v2, :cond_20

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v9, :cond_20

    .line 14509
    invoke-virtual {v6, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 1281
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v8, 0x8

    if-eq v5, v8, :cond_1f

    .line 1286
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 1288
    iget v5, v5, Landroidx/appcompat/widget/LinearLayoutCompat$a;->g:F

    cmpl-float v5, v5, v19

    if-lez v5, :cond_1f

    const/high16 v5, 0x40000000    # 2.0f

    .line 1291
    invoke-static {v12, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1292
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v10, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1290
    invoke-virtual {v3, v8, v10}, Landroid/view/View;->measure(II)V

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_20
    move/from16 v37, v1

    move/from16 v34, v9

    move/from16 v8, v23

    const/4 v2, 0x0

    move/from16 v3, p2

    goto/16 :goto_23

    .line 1163
    :cond_21
    :goto_13
    iget v5, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->g:F

    cmpl-float v5, v5, v19

    if-lez v5, :cond_22

    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->g:F

    :cond_22
    const/4 v5, -0x1

    const/4 v8, 0x3

    .line 1165
    aput v5, v13, v8

    aput v5, v13, v16

    aput v5, v13, v17

    const/4 v12, 0x0

    aput v5, v13, v12

    .line 1166
    aput v5, v14, v8

    aput v5, v14, v16

    aput v5, v14, v17

    aput v5, v14, v12

    .line 1169
    iput v12, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move v12, v2

    move v15, v5

    move/from16 v8, v23

    move v2, v0

    const/4 v0, 0x0

    :goto_14
    if-ge v0, v9, :cond_30

    .line 13509
    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2f

    .line 1174
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v7, 0x8

    if-eq v4, v7, :cond_2f

    .line 1179
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 1181
    iget v7, v4, Landroidx/appcompat/widget/LinearLayoutCompat$a;->g:F

    cmpl-float v20, v7, v19

    if-lez v20, :cond_27

    move/from16 v34, v9

    int-to-float v9, v3

    mul-float/2addr v9, v7

    div-float/2addr v9, v2

    float-to-int v9, v9

    sub-float/2addr v2, v7

    sub-int/2addr v3, v9

    .line 1190
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v20

    add-int v7, v7, v20

    move/from16 v35, v2

    iget v2, v4, Landroidx/appcompat/widget/LinearLayoutCompat$a;->topMargin:I

    add-int/2addr v7, v2

    iget v2, v4, Landroidx/appcompat/widget/LinearLayoutCompat$a;->bottomMargin:I

    add-int/2addr v7, v2

    iget v2, v4, Landroidx/appcompat/widget/LinearLayoutCompat$a;->height:I

    move/from16 v37, v1

    move/from16 v36, v3

    const/4 v1, -0x1

    move/from16 v3, p2

    .line 1188
    invoke-static {v3, v7, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v2

    .line 1195
    iget v7, v4, Landroidx/appcompat/widget/LinearLayoutCompat$a;->width:I

    if-nez v7, :cond_25

    const/high16 v7, 0x40000000    # 2.0f

    if-eq v10, v7, :cond_23

    goto :goto_16

    :cond_23
    if-lez v9, :cond_24

    move v7, v9

    goto :goto_17

    :cond_24
    :goto_15
    const/4 v7, 0x0

    goto :goto_17

    .line 1198
    :cond_25
    :goto_16
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v9

    if-gez v7, :cond_26

    goto :goto_15

    :cond_26
    :goto_17
    const/high16 v9, 0x40000000    # 2.0f

    .line 1208
    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v5, v7, v2}, Landroid/view/View;->measure(II)V

    .line 1215
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    const/high16 v7, -0x1000000

    and-int/2addr v2, v7

    .line 1214
    invoke-static {v8, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v8

    goto :goto_18

    :cond_27
    move/from16 v37, v1

    move v7, v3

    move/from16 v34, v9

    const/4 v1, -0x1

    move/from16 v3, p2

    move/from16 v35, v2

    move/from16 v36, v7

    :goto_18
    if-eqz v18, :cond_28

    .line 1219
    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v9, v4, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    add-int/2addr v7, v9

    iget v9, v4, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    add-int/2addr v7, v9

    const/4 v9, 0x0

    add-int/2addr v7, v9

    add-int/2addr v2, v7

    .line 1220
    iput v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    :goto_19
    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_1a

    :cond_28
    const/4 v9, 0x0

    .line 1222
    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 1223
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v2

    iget v1, v4, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    add-int/2addr v7, v1

    iget v1, v4, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    add-int/2addr v7, v1

    add-int/2addr v7, v9

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    goto :goto_19

    :goto_1a
    if-eq v11, v1, :cond_29

    .line 1227
    iget v1, v4, Landroidx/appcompat/widget/LinearLayoutCompat$a;->height:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_29

    move/from16 v1, v17

    goto :goto_1b

    :cond_29
    const/4 v1, 0x0

    .line 1230
    :goto_1b
    iget v2, v4, Landroidx/appcompat/widget/LinearLayoutCompat$a;->topMargin:I

    iget v7, v4, Landroidx/appcompat/widget/LinearLayoutCompat$a;->bottomMargin:I

    add-int/2addr v2, v7

    .line 1231
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v2

    .line 1232
    invoke-static {v15, v7}, Ljava/lang/Math;->max(II)I

    move-result v9

    if-eqz v1, :cond_2a

    goto :goto_1c

    :cond_2a
    move v2, v7

    .line 1233
    :goto_1c
    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v24, :cond_2b

    .line 1236
    iget v2, v4, Landroidx/appcompat/widget/LinearLayoutCompat$a;->height:I

    const/4 v12, -0x1

    if-ne v2, v12, :cond_2c

    move/from16 v2, v17

    goto :goto_1d

    :cond_2b
    const/4 v12, -0x1

    :cond_2c
    const/4 v2, 0x0

    :goto_1d
    if-eqz v27, :cond_2e

    .line 1239
    invoke-virtual {v5}, Landroid/view/View;->getBaseline()I

    move-result v5

    if-eq v5, v12, :cond_2e

    .line 1242
    iget v12, v4, Landroidx/appcompat/widget/LinearLayoutCompat$a;->h:I

    if-gez v12, :cond_2d

    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    goto :goto_1e

    :cond_2d
    iget v4, v4, Landroidx/appcompat/widget/LinearLayoutCompat$a;->h:I

    :goto_1e
    and-int/lit8 v4, v4, 0x70

    const/16 v20, 0x4

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, -0x2

    shr-int/lit8 v4, v4, 0x1

    .line 1247
    aget v12, v13, v4

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    aput v12, v13, v4

    .line 1248
    aget v12, v14, v4

    sub-int/2addr v7, v5

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    aput v5, v14, v4

    goto :goto_1f

    :cond_2e
    const/16 v20, 0x4

    :goto_1f
    move v12, v1

    move/from16 v24, v2

    move v15, v9

    move/from16 v2, v35

    goto :goto_20

    :cond_2f
    move/from16 v37, v1

    move v7, v3

    move/from16 v34, v9

    move/from16 v3, p2

    const/16 v20, 0x4

    move/from16 v36, v7

    :goto_20
    add-int/lit8 v0, v0, 0x1

    move/from16 v9, v34

    move/from16 v3, v36

    move/from16 v1, v37

    const/4 v5, -0x1

    move/from16 v7, p1

    goto/16 :goto_14

    :cond_30
    move/from16 v37, v1

    move/from16 v34, v9

    move/from16 v3, p2

    .line 1255
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 1260
    aget v0, v13, v17

    const/4 v1, -0x1

    if-ne v0, v1, :cond_32

    const/4 v0, 0x0

    aget v2, v13, v0

    if-ne v2, v1, :cond_32

    aget v0, v13, v16

    if-ne v0, v1, :cond_32

    const/4 v0, 0x3

    aget v2, v13, v0

    if-eq v2, v1, :cond_31

    goto :goto_21

    :cond_31
    const/4 v2, 0x0

    goto :goto_22

    :cond_32
    const/4 v0, 0x3

    .line 1264
    :goto_21
    aget v1, v13, v0

    const/4 v2, 0x0

    aget v4, v13, v2

    aget v5, v13, v17

    aget v7, v13, v16

    .line 1266
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1265
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1264
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1267
    aget v0, v14, v0

    aget v4, v14, v2

    aget v5, v14, v17

    aget v7, v14, v16

    .line 1269
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1268
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1267
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 1270
    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v15, v0

    :goto_22
    move v0, v12

    :goto_23
    if-nez v24, :cond_33

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v11, v1, :cond_33

    move v15, v0

    .line 1303
    :cond_33
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v15, v0

    .line 1306
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, -0x1000000

    and-int/2addr v1, v8

    or-int v1, v37, v1

    shl-int/lit8 v4, v8, 0x10

    .line 1309
    invoke-static {v0, v3, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    .line 1308
    invoke-virtual {v6, v1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    if-eqz v25, :cond_36

    .line 15321
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    move v9, v2

    move/from16 v8, v34

    :goto_24
    if-ge v9, v8, :cond_36

    .line 15509
    invoke-virtual {v6, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 15325
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v5, 0x8

    if-eq v0, v5, :cond_35

    .line 15326
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 15328
    iget v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_34

    .line 15331
    iget v11, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->width:I

    .line 15332
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->width:I

    const/4 v3, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move v13, v2

    move/from16 v2, p1

    move v4, v7

    move v14, v5

    move v5, v12

    .line 15335
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 15336
    iput v11, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->width:I

    goto :goto_25

    :cond_34
    move v13, v2

    move v14, v5

    goto :goto_25

    :cond_35
    move v14, v5

    const/4 v13, -0x1

    :goto_25
    add-int/lit8 v9, v9, 0x1

    goto :goto_24

    :cond_36
    return-void
.end method

.method private b(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 373
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->o:I

    add-int/2addr v1, v2

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    add-int/2addr v2, p2

    .line 374
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->o:I

    sub-int/2addr v3, v4

    .line 373
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 375
    iget-object p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private static b(Landroid/view/View;IIII)V
    .locals 0

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    .line 1649
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private static getChildrenSkipCount$5359dca7()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static getLocationOffset$3c7ec8d0()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static getNextLocationOffset$3c7ec8d0()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$a;
    .locals 1

    .line 1725
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected final a(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 571
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->n:I

    and-int/2addr p0, v1

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v0

    .line 572
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 573
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->n:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v0

    .line 574
    :cond_3
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->n:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    sub-int/2addr p1, v1

    :goto_0
    if-ltz p1, :cond_5

    .line 577
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v0

    :cond_6
    return v0
.end method

.method protected b(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$a;
    .locals 0

    .line 1748
    new-instance p0, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method protected c()Landroidx/appcompat/widget/LinearLayoutCompat$a;
    .locals 2

    .line 1738
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 1739
    new-instance p0, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    invoke-direct {p0, v1, v1}, Landroidx/appcompat/widget/LinearLayoutCompat$a;-><init>(II)V

    return-object p0

    .line 1740
    :cond_0
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 1741
    new-instance p0, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat$a;-><init>(II)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1755
    instance-of p0, p1, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    return p0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 57
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->c()Landroidx/appcompat/widget/LinearLayoutCompat$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$a;

    move-result-object p0

    return-object p0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$a;

    move-result-object p0

    return-object p0
.end method

.method public getBaseline()I
    .locals 5

    .line 427
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    if-gez v0, :cond_0

    .line 428
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result p0

    return p0

    .line 431
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    if-le v0, v1, :cond_6

    .line 436
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 437
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 440
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    if-nez p0, :cond_1

    return v2

    .line 446
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 456
    :cond_2
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->c:I

    .line 458
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 459
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x30

    if-eq v3, v4, :cond_5

    const/16 v4, 0x10

    if-eq v3, v4, :cond_4

    const/16 v4, 0x50

    if-eq v3, v4, :cond_3

    goto :goto_0

    .line 463
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int/2addr v2, p0

    goto :goto_0

    .line 467
    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int/2addr v3, p0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 474
    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 475
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$a;->topMargin:I

    add-int/2addr v2, p0

    add-int/2addr v2, v1

    return v2

    .line 432
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 0

    .line 484
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    return p0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 225
    iget-object p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getDividerPadding()I
    .locals 0

    .line 272
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->o:I

    return p0
.end method

.method public getDividerWidth()I
    .locals 0

    .line 282
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    return p0
.end method

.method public getGravity()I
    .locals 0

    .line 1704
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    return p0
.end method

.method public getOrientation()I
    .locals 0

    .line 1671
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    return p0
.end method

.method public getShowDividers()I
    .locals 0

    .line 216
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->n:I

    return p0
.end method

.method getVirtualChildCount()I
    .locals 0

    .line 522
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getWeightSum()F
    .locals 0

    .line 533
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->g:F

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 287
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 291
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    .line 2299
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2509
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2303
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v1, :cond_1

    .line 2304
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2305
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 2306
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, v5, Landroidx/appcompat/widget/LinearLayoutCompat$a;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    sub-int/2addr v4, v5

    .line 2307
    invoke-direct {p0, p1, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(Landroid/graphics/Canvas;I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2312
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sub-int/2addr v0, v3

    .line 3509
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2316
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    sub-int/2addr v0, v1

    goto :goto_1

    .line 2318
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 2319
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroidx/appcompat/widget/LinearLayoutCompat$a;->bottomMargin:I

    add-int/2addr v0, v1

    .line 2321
    :goto_1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(Landroid/graphics/Canvas;I)V

    :cond_4
    return-void

    .line 4326
    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v0

    .line 4327
    invoke-static {p0}, Landroidx/appcompat/widget/ak;->a(Landroid/view/View;)Z

    move-result v4

    :goto_2
    if-ge v2, v0, :cond_8

    .line 4509
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 4331
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v1, :cond_7

    .line 4332
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 4333
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    if-eqz v4, :cond_6

    .line 4336
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget v6, v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    add-int/2addr v5, v6

    goto :goto_3

    .line 4338
    :cond_6
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    sub-int/2addr v5, v6

    .line 4340
    :goto_3
    invoke-direct {p0, p1, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(Landroid/graphics/Canvas;I)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4345
    :cond_8
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(I)Z

    move-result v1

    if-eqz v1, :cond_c

    sub-int/2addr v0, v3

    .line 5509
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_a

    if-eqz v4, :cond_9

    .line 4350
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    goto :goto_4

    .line 4352
    :cond_9
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    sub-int/2addr v0, v1

    goto :goto_4

    .line 4355
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    if-eqz v4, :cond_b

    .line 4357
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, v1, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    sub-int/2addr v0, v1

    goto :goto_4

    .line 4359
    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, v1, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    add-int/2addr v0, v1

    .line 4362
    :goto_4
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(Landroid/graphics/Canvas;I)V

    :cond_c
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1760
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-string p0, "androidx.appcompat.widget.LinearLayoutCompat"

    .line 1761
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 1766
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string p0, "androidx.appcompat.widget.LinearLayoutCompat"

    .line 1767
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 23

    move-object/from16 v0, p0

    .line 1410
    iget v5, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    const/16 v6, 0x8

    const/4 v7, 0x5

    const/16 v8, 0x50

    const/16 v9, 0x10

    const v10, 0x800007

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ne v5, v12, :cond_9

    .line 16430
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v5

    sub-int v1, p4, p2

    .line 16437
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v3

    sub-int v3, v1, v3

    sub-int/2addr v1, v5

    .line 16440
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v14

    sub-int/2addr v1, v14

    .line 16442
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v14

    .line 16444
    iget v15, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    and-int/lit8 v15, v15, 0x70

    .line 16445
    iget v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    and-int/2addr v10, v13

    if-eq v15, v9, :cond_1

    if-eq v15, v8, :cond_0

    .line 16460
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v2

    goto :goto_0

    .line 16450
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v8

    add-int v8, v8, p5

    sub-int v8, v8, p3

    iget v2, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int v2, v8, v2

    goto :goto_0

    .line 16455
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v8

    sub-int v2, p5, p3

    iget v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int/2addr v2, v4

    div-int/2addr v2, v11

    add-int/2addr v2, v8

    :goto_0
    move v4, v2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v14, :cond_8

    .line 17509
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_2

    add-int/lit8 v4, v4, 0x0

    goto :goto_3

    .line 16468
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v6, :cond_7

    .line 16469
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 16470
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 16473
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 16475
    iget v6, v15, Landroidx/appcompat/widget/LinearLayoutCompat$a;->h:I

    if-gez v6, :cond_3

    move v6, v10

    .line 16479
    :cond_3
    invoke-static/range {p0 .. p0}, Landroidx/core/e/r;->c(Landroid/view/View;)I

    move-result v11

    .line 16480
    invoke-static {v6, v11}, Landroidx/core/e/c;->a(II)I

    move-result v6

    and-int/lit8 v6, v6, 0x7

    if-eq v6, v12, :cond_5

    if-eq v6, v7, :cond_4

    .line 16494
    iget v6, v15, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    add-int/2addr v6, v5

    goto :goto_2

    :cond_4
    sub-int v6, v3, v9

    .line 16489
    iget v11, v15, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    sub-int/2addr v6, v11

    goto :goto_2

    :cond_5
    sub-int v6, v1, v9

    const/4 v11, 0x2

    .line 16484
    div-int/2addr v6, v11

    add-int/2addr v6, v5

    iget v11, v15, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    add-int/2addr v6, v11

    iget v11, v15, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    sub-int/2addr v6, v11

    .line 16498
    :goto_2
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(I)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 16499
    iget v11, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    add-int/2addr v4, v11

    .line 16502
    :cond_6
    iget v11, v15, Landroidx/appcompat/widget/LinearLayoutCompat$a;->topMargin:I

    add-int/2addr v4, v11

    add-int/lit8 v11, v4, 0x0

    .line 16503
    invoke-static {v8, v6, v11, v9, v13}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(Landroid/view/View;IIII)V

    .line 16505
    iget v6, v15, Landroidx/appcompat/widget/LinearLayoutCompat$a;->bottomMargin:I

    add-int/2addr v13, v6

    const/4 v6, 0x0

    add-int/2addr v13, v6

    add-int/2addr v4, v13

    add-int/lit8 v2, v2, 0x0

    :cond_7
    :goto_3
    add-int/2addr v2, v12

    const/16 v6, 0x8

    const/4 v11, 0x2

    goto :goto_1

    :cond_8
    return-void

    .line 17525
    :cond_9
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ak;->a(Landroid/view/View;)Z

    move-result v5

    .line 17526
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v6

    sub-int v2, p5, p3

    .line 17533
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int v4, v2, v4

    sub-int/2addr v2, v6

    .line 17536
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v2, v11

    .line 17538
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v11

    .line 17540
    iget v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    and-int/2addr v10, v13

    .line 17541
    iget v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    and-int/lit8 v13, v13, 0x70

    .line 17543
    iget-boolean v14, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->a:Z

    .line 17545
    iget-object v15, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->i:[I

    .line 17546
    iget-object v8, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->j:[I

    .line 17548
    invoke-static/range {p0 .. p0}, Landroidx/core/e/r;->c(Landroid/view/View;)I

    move-result v9

    .line 17549
    invoke-static {v10, v9}, Landroidx/core/e/c;->a(II)I

    move-result v9

    if-eq v9, v12, :cond_b

    if-eq v9, v7, :cond_a

    .line 17562
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v1

    goto :goto_4

    .line 17552
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v7

    add-int v7, v7, p4

    sub-int v7, v7, p2

    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int v1, v7, v1

    goto :goto_4

    .line 17557
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v7

    sub-int v1, p4, p2

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int/2addr v1, v3

    const/4 v3, 0x2

    div-int/2addr v1, v3

    add-int/2addr v1, v7

    :goto_4
    if-eqz v5, :cond_c

    add-int/lit8 v5, v11, -0x1

    const/4 v7, -0x1

    goto :goto_5

    :cond_c
    move v7, v12

    const/4 v5, 0x0

    :goto_5
    move v9, v1

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v11, :cond_17

    mul-int v10, v7, v1

    add-int/2addr v10, v5

    .line 18509
    invoke-virtual {v0, v10}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_d

    add-int/lit8 v9, v9, 0x0

    move/from16 v18, v5

    move/from16 v19, v7

    move/from16 v20, v11

    move/from16 v21, v13

    move/from16 v22, v14

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v14, -0x1

    goto/16 :goto_a

    .line 17580
    :cond_d
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v3

    move/from16 v18, v5

    const/16 v5, 0x8

    if-eq v3, v5, :cond_16

    .line 17581
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 17582
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 17586
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move/from16 v19, v7

    move-object/from16 v7, v16

    check-cast v7, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    if-eqz v14, :cond_e

    move/from16 v20, v11

    .line 17588
    iget v11, v7, Landroidx/appcompat/widget/LinearLayoutCompat$a;->height:I

    move/from16 v21, v13

    const/4 v13, -0x1

    if-eq v11, v13, :cond_f

    .line 17589
    invoke-virtual {v12}, Landroid/view/View;->getBaseline()I

    move-result v11

    goto :goto_7

    :cond_e
    move/from16 v20, v11

    move/from16 v21, v13

    :cond_f
    const/4 v11, -0x1

    .line 17592
    :goto_7
    iget v13, v7, Landroidx/appcompat/widget/LinearLayoutCompat$a;->h:I

    if-gez v13, :cond_10

    move/from16 v13, v21

    :cond_10
    and-int/lit8 v13, v13, 0x70

    move/from16 v22, v14

    const/16 v14, 0x10

    if-eq v13, v14, :cond_14

    const/16 v14, 0x30

    if-eq v13, v14, :cond_12

    const/16 v14, 0x50

    if-eq v13, v14, :cond_11

    move v11, v6

    const/4 v14, -0x1

    goto :goto_8

    :cond_11
    sub-int v13, v4, v5

    .line 17622
    iget v14, v7, Landroidx/appcompat/widget/LinearLayoutCompat$a;->bottomMargin:I

    sub-int/2addr v13, v14

    const/4 v14, -0x1

    if-eq v11, v14, :cond_13

    .line 17624
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    sub-int v16, v16, v11

    const/4 v11, 0x2

    .line 17625
    aget v17, v8, v11

    sub-int v17, v17, v16

    sub-int v11, v13, v17

    goto :goto_8

    :cond_12
    const/4 v14, -0x1

    .line 17599
    iget v13, v7, Landroidx/appcompat/widget/LinearLayoutCompat$a;->topMargin:I

    add-int/2addr v13, v6

    if-eq v11, v14, :cond_13

    const/16 v16, 0x1

    .line 17601
    aget v17, v15, v16

    sub-int v17, v17, v11

    add-int v11, v13, v17

    goto :goto_8

    :cond_13
    move v11, v13

    goto :goto_8

    :cond_14
    const/4 v14, -0x1

    sub-int v11, v2, v5

    const/4 v13, 0x2

    .line 17617
    div-int/2addr v11, v13

    add-int/2addr v11, v6

    iget v13, v7, Landroidx/appcompat/widget/LinearLayoutCompat$a;->topMargin:I

    add-int/2addr v11, v13

    iget v13, v7, Landroidx/appcompat/widget/LinearLayoutCompat$a;->bottomMargin:I

    sub-int/2addr v11, v13

    .line 17633
    :goto_8
    invoke-virtual {v0, v10}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(I)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 17634
    iget v10, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    add-int/2addr v9, v10

    .line 17637
    :cond_15
    iget v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    add-int/2addr v9, v10

    add-int/lit8 v10, v9, 0x0

    .line 17638
    invoke-static {v12, v10, v11, v3, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(Landroid/view/View;IIII)V

    .line 17640
    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    add-int/2addr v3, v5

    const/4 v5, 0x0

    add-int/2addr v3, v5

    add-int/2addr v9, v3

    add-int/lit8 v1, v1, 0x0

    goto :goto_9

    :cond_16
    move/from16 v19, v7

    move/from16 v20, v11

    move/from16 v21, v13

    move/from16 v22, v14

    const/4 v5, 0x0

    const/4 v14, -0x1

    :goto_9
    const/4 v3, 0x1

    :goto_a
    add-int/2addr v1, v3

    move v12, v3

    move/from16 v5, v18

    move/from16 v7, v19

    move/from16 v11, v20

    move/from16 v13, v21

    move/from16 v14, v22

    goto/16 :goto_6

    :cond_17
    return-void
.end method

.method protected onMeasure(II)V
    .locals 36

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    .line 554
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    const/4 v9, 0x1

    if-ne v0, v9, :cond_2c

    const/4 v10, 0x0

    .line 5599
    iput v10, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 5607
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v11

    .line 5609
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 5610
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 5615
    iget v14, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    .line 5616
    iget-boolean v15, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->h:Z

    const/16 v16, 0x0

    move/from16 v18, v9

    move v1, v10

    move v2, v1

    move v4, v2

    move v5, v4

    move v9, v5

    move/from16 v17, v9

    move/from16 v19, v17

    move/from16 v20, v19

    move/from16 v0, v16

    :goto_0
    if-ge v5, v11, :cond_12

    .line 6509
    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    if-nez v22, :cond_0

    .line 5625
    iget v3, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    add-int/2addr v3, v10

    iput v3, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move/from16 v28, v11

    move/from16 v27, v13

    :goto_1
    const/4 v3, 0x1

    goto/16 :goto_d

    .line 5629
    :cond_0
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v3, 0x8

    if-eq v10, v3, :cond_11

    .line 5634
    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5635
    iget v3, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iget v10, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    add-int/2addr v3, v10

    iput v3, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 5638
    :cond_1
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 5640
    iget v3, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->g:F

    add-float v21, v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v13, v3, :cond_2

    .line 5642
    iget v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->height:I

    if-nez v0, :cond_2

    iget v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->g:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_2

    .line 5646
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 5647
    iget v3, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->topMargin:I

    add-int/2addr v3, v0

    move/from16 v24, v1

    iget v1, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->bottomMargin:I

    add-int/2addr v3, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move/from16 v29, v4

    move/from16 v30, v5

    move/from16 v28, v11

    move/from16 v27, v13

    move/from16 v8, v20

    move/from16 v26, v24

    const/16 v17, 0x1

    goto/16 :goto_4

    :cond_2
    move/from16 v24, v1

    .line 5652
    iget v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->height:I

    if-nez v0, :cond_3

    iget v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->g:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_3

    const/4 v0, -0x2

    .line 5658
    iput v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->height:I

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    const/high16 v3, -0x80000000

    :goto_2
    const/16 v23, 0x0

    cmpl-float v0, v21, v16

    if-nez v0, :cond_4

    .line 5665
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move/from16 v25, v0

    goto :goto_3

    :cond_4
    const/16 v25, 0x0

    :goto_3
    move-object/from16 v0, p0

    move/from16 v26, v24

    move-object/from16 v1, v22

    move v7, v2

    move/from16 v2, p1

    move/from16 v28, v11

    move/from16 v27, v13

    move/from16 v8, v20

    const/high16 v11, -0x80000000

    move v13, v3

    move/from16 v3, v23

    move/from16 v29, v4

    move/from16 v4, p2

    move/from16 v30, v5

    move/from16 v5, v25

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(Landroid/view/View;IIII)V

    if-eq v13, v11, :cond_5

    .line 5670
    iput v13, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->height:I

    .line 5673
    :cond_5
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 5674
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    add-int v2, v1, v0

    .line 5675
    iget v3, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->bottomMargin:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    if-eqz v15, :cond_6

    .line 5679
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v2, v0

    goto :goto_4

    :cond_6
    move v2, v7

    :goto_4
    if-ltz v14, :cond_7

    move/from16 v1, v30

    add-int/lit8 v5, v1, 0x1

    if-ne v14, v5, :cond_8

    .line 5688
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->c:I

    goto :goto_5

    :cond_7
    move/from16 v1, v30

    :cond_8
    :goto_5
    if-ge v1, v14, :cond_a

    .line 5694
    iget v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->g:F

    cmpl-float v0, v0, v16

    if-gtz v0, :cond_9

    goto :goto_6

    .line 5695
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_6
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v12, v0, :cond_b

    .line 5702
    iget v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->width:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_c

    const/4 v0, 0x1

    const/16 v19, 0x1

    goto :goto_7

    :cond_b
    const/4 v3, -0x1

    :cond_c
    const/4 v0, 0x0

    .line 5711
    :goto_7
    iget v4, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    iget v5, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    add-int/2addr v4, v5

    .line 5712
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v4

    move/from16 v13, v26

    .line 5713
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 5715
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredState()I

    move-result v11

    .line 5714
    invoke-static {v9, v11}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    if-eqz v18, :cond_d

    .line 5717
    iget v11, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->width:I

    if-ne v11, v3, :cond_d

    const/16 v18, 0x1

    goto :goto_8

    :cond_d
    const/16 v18, 0x0

    .line 5718
    :goto_8
    iget v3, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->g:F

    cmpl-float v3, v3, v16

    if-lez v3, :cond_f

    if-eqz v0, :cond_e

    goto :goto_9

    :cond_e
    move v4, v5

    .line 5723
    :goto_9
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v20

    move/from16 v8, v20

    goto :goto_c

    :cond_f
    if-eqz v0, :cond_10

    :goto_a
    move/from16 v10, v29

    goto :goto_b

    :cond_10
    move v4, v5

    goto :goto_a

    .line 5726
    :goto_b
    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v29, v4

    goto :goto_c

    :cond_11
    move v7, v2

    move v10, v4

    move/from16 v28, v11

    move/from16 v27, v13

    move/from16 v8, v20

    move v13, v1

    move v1, v5

    move/from16 v21, v0

    move/from16 v29, v10

    move v7, v13

    :goto_c
    add-int/lit8 v5, v1, 0x0

    move v1, v7

    move/from16 v20, v8

    move/from16 v0, v21

    move/from16 v4, v29

    goto/16 :goto_1

    :goto_d
    add-int/2addr v5, v3

    move/from16 v13, v27

    move/from16 v11, v28

    move/from16 v7, p1

    move/from16 v8, p2

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_12
    move v7, v2

    move v10, v4

    move/from16 v28, v11

    move/from16 v27, v13

    move/from16 v8, v20

    const/4 v3, -0x1

    const/high16 v11, -0x80000000

    move v13, v1

    .line 5733
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    if-lez v1, :cond_13

    move/from16 v1, v28

    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 5734
    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    add-int/2addr v2, v4

    iput v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    goto :goto_e

    :cond_13
    move/from16 v1, v28

    :cond_14
    :goto_e
    if-eqz v15, :cond_18

    move/from16 v2, v27

    if-eq v2, v11, :cond_15

    if-nez v2, :cond_19

    :cond_15
    const/4 v4, 0x0

    .line 5739
    iput v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move v5, v4

    :goto_f
    if-ge v5, v1, :cond_19

    .line 7509
    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_16

    .line 5745
    iget v11, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    add-int/2addr v11, v4

    iput v11, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    goto :goto_10

    .line 5749
    :cond_16
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v14, 0x8

    if-ne v4, v14, :cond_17

    add-int/lit8 v5, v5, 0x0

    goto :goto_10

    .line 5755
    :cond_17
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 5757
    iget v11, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    add-int v14, v11, v7

    .line 5758
    iget v3, v4, Landroidx/appcompat/widget/LinearLayoutCompat$a;->topMargin:I

    add-int/2addr v14, v3

    iget v3, v4, Landroidx/appcompat/widget/LinearLayoutCompat$a;->bottomMargin:I

    add-int/2addr v14, v3

    const/4 v3, 0x0

    add-int/2addr v14, v3

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    :goto_10
    const/4 v3, 0x1

    add-int/2addr v5, v3

    const/4 v3, -0x1

    const/4 v4, 0x0

    goto :goto_f

    :cond_18
    move/from16 v2, v27

    :cond_19
    const/4 v3, 0x1

    .line 5764
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v11

    add-int/2addr v5, v11

    add-int/2addr v4, v5

    iput v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 5766
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 5769
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v5, p2

    const/4 v11, 0x0

    .line 5772
    invoke-static {v4, v5, v11}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v4

    const v11, 0xffffff

    and-int/2addr v11, v4

    .line 5778
    iget v14, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int/2addr v11, v14

    if-nez v17, :cond_1d

    if-eqz v11, :cond_1a

    cmpl-float v14, v0, v16

    if-lez v14, :cond_1a

    goto :goto_12

    .line 5851
    :cond_1a
    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v15, :cond_1c

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v2, v3, :cond_1c

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_1c

    .line 9509
    invoke-virtual {v6, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 5861
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v10, 0x8

    if-eq v8, v10, :cond_1b

    .line 5866
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 5868
    iget v8, v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;->g:F

    cmpl-float v8, v8, v16

    if-lez v8, :cond_1b

    .line 5871
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 5873
    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 5870
    invoke-virtual {v3, v8, v11}, Landroid/view/View;->measure(II)V

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1c
    move/from16 v11, p1

    goto/16 :goto_1c

    .line 5780
    :cond_1d
    :goto_12
    iget v7, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->g:F

    cmpl-float v7, v7, v16

    if-lez v7, :cond_1e

    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->g:F

    :cond_1e
    const/4 v7, 0x0

    .line 5782
    iput v7, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move v7, v0

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v1, :cond_29

    .line 8509
    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 5787
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-eq v14, v15, :cond_28

    .line 5791
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 5793
    iget v3, v14, Landroidx/appcompat/widget/LinearLayoutCompat$a;->g:F

    cmpl-float v17, v3, v16

    if-lez v17, :cond_23

    int-to-float v15, v11

    mul-float/2addr v15, v3

    div-float/2addr v15, v7

    float-to-int v15, v15

    sub-float/2addr v7, v3

    sub-int/2addr v11, v15

    .line 5801
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v17

    add-int v3, v3, v17

    move/from16 v31, v7

    iget v7, v14, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    add-int/2addr v3, v7

    iget v7, v14, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    add-int/2addr v3, v7

    iget v7, v14, Landroidx/appcompat/widget/LinearLayoutCompat$a;->width:I

    move/from16 v32, v11

    move/from16 v11, p1

    .line 5800
    invoke-static {v11, v3, v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v3

    .line 5806
    iget v7, v14, Landroidx/appcompat/widget/LinearLayoutCompat$a;->height:I

    if-nez v7, :cond_21

    const/high16 v7, 0x40000000    # 2.0f

    if-eq v2, v7, :cond_1f

    goto :goto_14

    :cond_1f
    if-lez v15, :cond_20

    goto :goto_15

    :cond_20
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v15, 0x0

    goto :goto_16

    .line 5809
    :cond_21
    :goto_14
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v15

    if-gez v7, :cond_22

    const/4 v7, 0x0

    :cond_22
    move v15, v7

    :goto_15
    const/high16 v7, 0x40000000    # 2.0f

    .line 5820
    :goto_16
    invoke-static {v15, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 5819
    invoke-virtual {v8, v3, v15}, Landroid/view/View;->measure(II)V

    .line 5826
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    and-int/lit16 v3, v3, -0x100

    .line 5825
    invoke-static {v9, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    move/from16 v7, v31

    move/from16 v3, v32

    goto :goto_17

    :cond_23
    move v3, v11

    move/from16 v11, p1

    .line 5830
    :goto_17
    iget v15, v14, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    move/from16 v33, v2

    iget v2, v14, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    add-int/2addr v15, v2

    .line 5831
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v15

    .line 5832
    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    move/from16 v34, v2

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v12, v2, :cond_24

    .line 5834
    iget v2, v14, Landroidx/appcompat/widget/LinearLayoutCompat$a;->width:I

    move/from16 v35, v3

    const/4 v3, -0x1

    if-ne v2, v3, :cond_25

    const/4 v2, 0x1

    goto :goto_18

    :cond_24
    move/from16 v35, v3

    const/4 v3, -0x1

    :cond_25
    const/4 v2, 0x0

    :goto_18
    if-eqz v2, :cond_26

    goto :goto_19

    :cond_26
    move/from16 v15, v34

    .line 5837
    :goto_19
    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v18, :cond_27

    .line 5840
    iget v10, v14, Landroidx/appcompat/widget/LinearLayoutCompat$a;->width:I

    if-ne v10, v3, :cond_27

    const/4 v10, 0x1

    goto :goto_1a

    :cond_27
    const/4 v10, 0x0

    .line 5842
    :goto_1a
    iget v15, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 5843
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v15

    iget v3, v14, Landroidx/appcompat/widget/LinearLayoutCompat$a;->topMargin:I

    add-int/2addr v8, v3

    iget v3, v14, Landroidx/appcompat/widget/LinearLayoutCompat$a;->bottomMargin:I

    add-int/2addr v8, v3

    const/4 v3, 0x0

    add-int/2addr v8, v3

    invoke-static {v15, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move/from16 v18, v10

    move v10, v2

    goto :goto_1b

    :cond_28
    move/from16 v33, v2

    move v2, v11

    const/4 v3, 0x0

    move/from16 v11, p1

    move/from16 v35, v2

    :goto_1b
    add-int/lit8 v0, v0, 0x1

    move/from16 v2, v33

    move/from16 v11, v35

    const/4 v3, 0x1

    goto/16 :goto_13

    :cond_29
    move/from16 v11, p1

    .line 5848
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move v0, v10

    :goto_1c
    if-nez v18, :cond_2a

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v12, v2, :cond_2a

    move v13, v0

    .line 5884
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v13, v0

    .line 5887
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5889
    invoke-static {v0, v11, v9}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {v6, v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    if-eqz v19, :cond_2b

    .line 5893
    invoke-direct {v6, v1, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(II)V

    :cond_2b
    return-void

    :cond_2c
    move v11, v7

    move v5, v8

    .line 557
    invoke-direct/range {p0 .. p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(II)V

    return-void
.end method

.method public setBaselineAligned(Z)V
    .locals 0

    .line 396
    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->a:Z

    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 492
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 496
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    return-void

    .line 493
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "base aligned child index out of range (0, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 236
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    .line 239
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 241
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    .line 242
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    goto :goto_0

    .line 244
    :cond_1
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    .line 245
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    :goto_0
    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 247
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setWillNotDraw(Z)V

    .line 248
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0

    .line 261
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->o:I

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 1683
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    if-eq v0, p1, :cond_2

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x30

    .line 1692
    :cond_1
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    .line 1693
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 2

    const v0, 0x800007

    and-int/2addr p1, v0

    .line 1709
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    and-int/2addr v0, v1

    if-eq v0, p1, :cond_0

    .line 1710
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    const v1, -0x800008

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    .line 1711
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0

    .line 422
    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->h:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1658
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    if-eq v0, p1, :cond_0

    .line 1659
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    .line 1660
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1

    .line 199
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->n:I

    if-eq p1, v0, :cond_0

    .line 200
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 202
    :cond_0
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->n:I

    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 1

    and-int/lit8 p1, p1, 0x70

    .line 1717
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    and-int/lit8 v0, v0, 0x70

    if-eq v0, p1, :cond_0

    .line 1718
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    and-int/lit8 v0, v0, -0x71

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    .line 1719
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1

    const/4 v0, 0x0

    .line 549
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->g:F

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
