.class public Landroidx/appcompat/widget/AlertDialogLayout;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "AlertDialogLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 59
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 15

    .line 265
    invoke-virtual {p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingLeft()I

    move-result p1

    sub-int/2addr p4, p2

    .line 269
    invoke-virtual {p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingRight()I

    move-result p2

    sub-int p2, p4, p2

    sub-int/2addr p4, p1

    .line 272
    invoke-virtual {p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingRight()I

    move-result v0

    sub-int/2addr p4, v0

    .line 274
    invoke-virtual {p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getMeasuredHeight()I

    move-result v0

    .line 275
    invoke-virtual {p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getChildCount()I

    move-result v1

    .line 276
    invoke-virtual {p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getGravity()I

    move-result v2

    and-int/lit8 v3, v2, 0x70

    const v4, 0x800007

    and-int/2addr v2, v4

    const/16 v4, 0x10

    if-eq v3, v4, :cond_39

    const/16 v4, 0x50

    if-eq v3, v4, :cond_30

    .line 294
    invoke-virtual {p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingTop()I

    move-result p3

    goto :goto_43

    .line 284
    :cond_30
    invoke-virtual {p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, p5

    sub-int/2addr v3, p3

    sub-int p3, v3, v0

    goto :goto_43

    .line 289
    :cond_39
    invoke-virtual {p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr p5, p3

    sub-int/2addr p5, v0

    div-int/lit8 p5, p5, 0x2

    add-int p3, v3, p5

    .line 298
    :goto_43
    invoke-virtual {p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p5

    const/4 v0, 0x0

    if-nez p5, :cond_4c

    move p5, v0

    goto :goto_50

    .line 300
    :cond_4c
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p5

    :goto_50
    if-ge v0, v1, :cond_af

    .line 303
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_ac

    .line 304
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_ac

    .line 305
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 306
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 309
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 311
    iget v7, v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;->h:I

    if-gez v7, :cond_73

    move v7, v2

    .line 315
    :cond_73
    invoke-static {p0}, Landroidx/core/e/r;->c(Landroid/view/View;)I

    move-result v8

    .line 316
    invoke-static {v7, v8}, Landroidx/core/e/c;->a(II)I

    move-result v7

    and-int/lit8 v7, v7, 0x7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_8d

    const/4 v8, 0x5

    if-eq v7, v8, :cond_87

    .line 332
    iget v7, v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    add-int/2addr v7, p1

    goto :goto_98

    :cond_87
    sub-int v7, p2, v4

    .line 327
    iget v8, v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    sub-int/2addr v7, v8

    goto :goto_98

    :cond_8d
    sub-int v7, p4, v4

    .line 322
    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, p1

    iget v8, v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    add-int/2addr v7, v8

    iget v8, v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    sub-int/2addr v7, v8

    .line 336
    :goto_98
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AlertDialogLayout;->a(I)Z

    move-result v8

    if-eqz v8, :cond_9f

    add-int/2addr p3, p5

    .line 340
    :cond_9f
    iget v8, v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;->topMargin:I

    add-int/2addr p3, v8

    add-int/2addr v4, v7

    add-int v8, p3, v5

    .line 2348
    invoke-virtual {v3, v7, p3, v4, v8}, Landroid/view/View;->layout(IIII)V

    .line 342
    iget v3, v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;->bottomMargin:I

    add-int/2addr v5, v3

    add-int/2addr p3, v5

    :cond_ac
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    :cond_af
    return-void
.end method

.method protected onMeasure(II)V
    .registers 19

    move-object/from16 v6, p0

    move/from16 v7, p1

    .line 1075
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getChildCount()I

    move-result v8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    move v0, v1

    :goto_e
    const/16 v9, 0x8

    const/4 v10, 0x1

    if-ge v0, v8, :cond_41

    .line 1077
    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1078
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v10, v9, :cond_3e

    .line 1082
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v9

    .line 1083
    sget v10, Landroidx/appcompat/R$id;->topPanel:I

    if-ne v9, v10, :cond_27

    move-object v2, v5

    goto :goto_3e

    .line 1085
    :cond_27
    sget v10, Landroidx/appcompat/R$id;->buttonPanel:I

    if-ne v9, v10, :cond_2d

    move-object v3, v5

    goto :goto_3e

    .line 1087
    :cond_2d
    sget v10, Landroidx/appcompat/R$id;->contentPanel:I

    if-eq v9, v10, :cond_3a

    sget v10, Landroidx/appcompat/R$id;->customPanel:I

    if-ne v9, v10, :cond_36

    goto :goto_3a

    :cond_36
    :goto_36
    move/from16 v13, p2

    goto/16 :goto_163

    :cond_3a
    :goto_3a
    if-eqz v4, :cond_3d

    goto :goto_36

    :cond_3d
    move-object v4, v5

    :cond_3e
    :goto_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1099
    :cond_41
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1100
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 1101
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 1104
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingBottom()I

    move-result v13

    add-int/2addr v12, v13

    if-eqz v2, :cond_69

    .line 1107
    invoke-virtual {v2, v7, v1}, Landroid/view/View;->measure(II)V

    .line 1109
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v12, v13

    .line 1110
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    goto :goto_6a

    :cond_69
    move v2, v1

    :goto_6a
    if-eqz v3, :cond_98

    .line 1116
    invoke-virtual {v3, v7, v1}, Landroid/view/View;->measure(II)V

    move-object v13, v3

    .line 1248
    :goto_70
    invoke-static {v13}, Landroidx/core/e/r;->e(Landroid/view/View;)I

    move-result v14

    if-lez v14, :cond_77

    goto :goto_89

    .line 1253
    :cond_77
    instance-of v14, v13, Landroid/view/ViewGroup;

    if-eqz v14, :cond_88

    .line 1254
    check-cast v13, Landroid/view/ViewGroup;

    .line 1255
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    if-ne v14, v10, :cond_88

    .line 1256
    invoke-virtual {v13, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    goto :goto_70

    :cond_88
    move v14, v1

    .line 1118
    :goto_89
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    sub-int/2addr v13, v14

    add-int/2addr v12, v14

    .line 1121
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v15

    invoke-static {v2, v15}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    goto :goto_9a

    :cond_98
    move v13, v1

    move v14, v13

    :goto_9a
    if-eqz v4, :cond_bb

    if-nez v0, :cond_a0

    move v15, v1

    goto :goto_aa

    :cond_a0
    sub-int v15, v5, v12

    .line 1131
    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 1130
    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 1134
    :goto_aa
    invoke-virtual {v4, v7, v15}, Landroid/view/View;->measure(II)V

    .line 1135
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v12, v15

    .line 1138
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v10

    invoke-static {v2, v10}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    goto :goto_bc

    :cond_bb
    move v15, v1

    :goto_bc
    sub-int/2addr v5, v12

    const/high16 v10, 0x40000000    # 2.0f

    if-eqz v3, :cond_de

    sub-int/2addr v12, v14

    .line 1149
    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    if-lez v13, :cond_ca

    sub-int/2addr v5, v13

    add-int/2addr v14, v13

    .line 1155
    :cond_ca
    invoke-static {v14, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1157
    invoke-virtual {v3, v7, v13}, Landroid/view/View;->measure(II)V

    .line 1159
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v12, v13

    .line 1160
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    :cond_de
    if-eqz v4, :cond_f8

    if-lez v5, :cond_f8

    sub-int/2addr v12, v15

    add-int/2addr v15, v5

    .line 1175
    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1177
    invoke-virtual {v4, v7, v0}, Landroid/view/View;->measure(II)V

    .line 1179
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v12, v0

    .line 1180
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v2, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    :cond_f8
    move v0, v1

    move v3, v0

    :goto_fa
    if-ge v0, v8, :cond_111

    .line 1186
    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1187
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v9, :cond_10e

    .line 1188
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_10e
    add-int/lit8 v0, v0, 0x1

    goto :goto_fa

    .line 1192
    :cond_111
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v0, v4

    add-int/2addr v3, v0

    .line 1194
    invoke-static {v3, v7, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    move/from16 v13, p2

    .line 1196
    invoke-static {v12, v13, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    .line 1198
    invoke-virtual {v6, v0, v2}, Landroidx/appcompat/widget/AlertDialogLayout;->setMeasuredDimension(II)V

    if-eq v11, v10, :cond_162

    .line 2218
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getMeasuredWidth()I

    move-result v0

    .line 2217
    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    move v11, v1

    :goto_133
    if-ge v11, v8, :cond_162

    .line 2221
    invoke-virtual {v6, v11}, Landroidx/appcompat/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2222
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v9, :cond_15f

    .line 2223
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 2224
    iget v0, v12, Landroidx/appcompat/widget/LinearLayoutCompat$a;->width:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_15f

    .line 2227
    iget v14, v12, Landroidx/appcompat/widget/LinearLayoutCompat$a;->height:I

    .line 2228
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v12, Landroidx/appcompat/widget/LinearLayoutCompat$a;->height:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v2, v10

    move/from16 v4, p2

    .line 2231
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/AlertDialogLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 2232
    iput v14, v12, Landroidx/appcompat/widget/LinearLayoutCompat$a;->height:I

    :cond_15f
    add-int/lit8 v11, v11, 0x1

    goto :goto_133

    :cond_162
    const/4 v1, 0x1

    :goto_163
    if-nez v1, :cond_168

    .line 66
    invoke-super/range {p0 .. p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    :cond_168
    return-void
.end method
