.class final Landroidx/appcompat/widget/ScrollingTabContainerView$b;
.super Landroid/widget/LinearLayout;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Landroidx/appcompat/app/a$c;

.field final synthetic b:Landroidx/appcompat/widget/ScrollingTabContainerView;

.field private final c:[I

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ScrollingTabContainerView;Landroid/content/Context;Landroidx/appcompat/app/a$c;)V
    .registers 7

    .line 394
    iput-object p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->b:Landroidx/appcompat/widget/ScrollingTabContainerView;

    .line 395
    sget p1, Landroidx/appcompat/R$attr;->actionBarTabStyle:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 381
    new-array p1, p1, [I

    const/4 v1, 0x0

    const v2, 0x10100d4

    aput v2, p1, v1

    iput-object p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->c:[I

    .line 396
    iput-object p3, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->a:Landroidx/appcompat/app/a$c;

    .line 398
    iget-object p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->c:[I

    sget p3, Landroidx/appcompat/R$attr;->actionBarTabStyle:I

    invoke-static {p2, v0, p1, p3, v1}, Landroidx/appcompat/widget/ae;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/ae;

    move-result-object p1

    .line 400
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ae;->f(I)Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 401
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ae;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1245
    :cond_2a
    iget-object p1, p1, Landroidx/appcompat/widget/ae;->a:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const p1, 0x800013

    .line 406
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->setGravity(I)V

    .line 409
    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 11

    .line 453
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->a:Landroidx/appcompat/app/a$c;

    .line 454
    invoke-virtual {v0}, Landroidx/appcompat/app/a$c;->c()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_35

    .line 456
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1b

    if-eqz v0, :cond_18

    .line 458
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 459
    :cond_18
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->addView(Landroid/view/View;)V

    .line 461
    :cond_1b
    iput-object v1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->f:Landroid/view/View;

    .line 462
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 463
    :cond_26
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_34

    .line 464
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 465
    iget-object p0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->e:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_34
    return-void

    .line 468
    :cond_35
    iget-object v1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->f:Landroid/view/View;

    if-eqz v1, :cond_40

    .line 469
    iget-object v1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->f:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->removeView(Landroid/view/View;)V

    .line 470
    iput-object v3, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->f:Landroid/view/View;

    .line 473
    :cond_40
    invoke-virtual {v0}, Landroidx/appcompat/app/a$c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 474
    invoke-virtual {v0}, Landroidx/appcompat/app/a$c;->b()Ljava/lang/CharSequence;

    move-result-object v4

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v7, -0x2

    if-eqz v1, :cond_75

    .line 477
    iget-object v8, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->e:Landroid/widget/ImageView;

    if-nez v8, :cond_6a

    .line 478
    new-instance v8, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 479
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 481
    iput v5, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 482
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    invoke-virtual {p0, v8, v6}, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->addView(Landroid/view/View;I)V

    .line 484
    iput-object v8, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->e:Landroid/widget/ImageView;

    .line 486
    :cond_6a
    iget-object v8, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->e:Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 487
    iget-object v1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_83

    .line 488
    :cond_75
    iget-object v1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->e:Landroid/widget/ImageView;

    if-eqz v1, :cond_83

    .line 489
    iget-object v1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 490
    iget-object v1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 493
    :cond_83
    :goto_83
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_b9

    .line 495
    iget-object v2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->d:Landroid/widget/TextView;

    if-nez v2, :cond_ae

    .line 496
    new-instance v2, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Landroidx/appcompat/R$attr;->actionBarTabTextStyle:I

    invoke-direct {v2, v8, v3, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 498
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 499
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 501
    iput v5, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 502
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 503
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->addView(Landroid/view/View;)V

    .line 504
    iput-object v2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->d:Landroid/widget/TextView;

    .line 506
    :cond_ae
    iget-object v2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c7

    .line 508
    :cond_b9
    iget-object v4, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->d:Landroid/widget/TextView;

    if-eqz v4, :cond_c7

    .line 509
    iget-object v4, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 510
    iget-object v2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    :cond_c7
    :goto_c7
    iget-object v2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->e:Landroid/widget/ImageView;

    if-eqz v2, :cond_d4

    .line 514
    iget-object v2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroidx/appcompat/app/a$c;->d()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_d4
    if-eqz v1, :cond_d7

    goto :goto_db

    .line 516
    :cond_d7
    invoke-virtual {v0}, Landroidx/appcompat/app/a$c;->d()Ljava/lang/CharSequence;

    move-result-object v3

    :goto_db
    invoke-static {p0, v3}, Landroidx/appcompat/widget/ag;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    .line 428
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-string p0, "androidx.appcompat.app.ActionBar$Tab"

    .line 430
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    .line 435
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string p0, "androidx.appcompat.app.ActionBar$Tab"

    .line 438
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onMeasure(II)V
    .registers 4

    .line 443
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 446
    iget-object p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->b:Landroidx/appcompat/widget/ScrollingTabContainerView;

    iget p1, p1, Landroidx/appcompat/widget/ScrollingTabContainerView;->c:I

    if-lez p1, :cond_20

    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->b:Landroidx/appcompat/widget/ScrollingTabContainerView;

    iget v0, v0, Landroidx/appcompat/widget/ScrollingTabContainerView;->c:I

    if-le p1, v0, :cond_20

    .line 447
    iget-object p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->b:Landroidx/appcompat/widget/ScrollingTabContainerView;

    iget p1, p1, Landroidx/appcompat/widget/ScrollingTabContainerView;->c:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_20
    return-void
.end method

.method public final setSelected(Z)V
    .registers 3

    .line 419
    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 420
    :goto_9
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    const/4 p1, 0x4

    .line 422
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ScrollingTabContainerView$b;->sendAccessibilityEvent(I)V

    :cond_14
    return-void
.end method
