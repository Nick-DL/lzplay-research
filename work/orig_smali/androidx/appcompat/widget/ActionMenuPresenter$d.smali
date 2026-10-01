.class final Landroidx/appcompat/widget/ActionMenuPresenter$d;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroidx/appcompat/widget/ActionMenuView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ActionMenuPresenter;

.field private final b:[F


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .registers 5

    .line 633
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d;->a:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 634
    sget v0, Landroidx/appcompat/R$attr;->actionOverflowButtonStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x2

    .line 631
    new-array p2, p2, [F

    iput-object p2, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d;->b:[F

    const/4 p2, 0x1

    .line 636
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ActionMenuPresenter$d;->setClickable(Z)V

    .line 637
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ActionMenuPresenter$d;->setFocusable(Z)V

    const/4 v0, 0x0

    .line 638
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionMenuPresenter$d;->setVisibility(I)V

    .line 639
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ActionMenuPresenter$d;->setEnabled(Z)V

    .line 641
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter$d;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p0, p2}, Landroidx/appcompat/widget/ag;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 643
    new-instance p2, Landroidx/appcompat/widget/ActionMenuPresenter$d$1;

    invoke-direct {p2, p0, p0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter$d$1;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter$d;Landroid/view/View;Landroidx/appcompat/widget/ActionMenuPresenter;)V

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ActionMenuPresenter$d;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public final c()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final d()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final performClick()Z
    .registers 3

    .line 676
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    .line 680
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionMenuPresenter$d;->playSoundEffect(I)V

    .line 681
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d;->a:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->d()Z

    return v1
.end method

.method protected final setFrame(IIII)Z
    .registers 8

    .line 697
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageView;->setFrame(IIII)Z

    move-result p1

    .line 700
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter$d;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 701
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter$d;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p2, :cond_3f

    if-eqz p3, :cond_3f

    .line 703
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter$d;->getWidth()I

    move-result p2

    .line 704
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter$d;->getHeight()I

    move-result p4

    .line 705
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 706
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter$d;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter$d;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 707
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter$d;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter$d;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    add-int/2addr p2, v1

    .line 708
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p4, v2

    .line 709
    div-int/lit8 p4, p4, 0x2

    sub-int p0, p2, v0

    sub-int v1, p4, v0

    add-int/2addr p2, v0

    add-int/2addr p4, v0

    .line 710
    invoke-static {p3, p0, v1, p2, p4}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_3f
    return p1
.end method
