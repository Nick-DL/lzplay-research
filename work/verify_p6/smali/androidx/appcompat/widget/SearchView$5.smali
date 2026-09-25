.class final Landroidx/appcompat/widget/SearchView$5;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/SearchView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/SearchView;)V
    .locals 0

    .line 376
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$5;->a:Landroidx/appcompat/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 380
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$5;->a:Landroidx/appcompat/widget/SearchView;

    .line 2364
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->g:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_2

    .line 2365
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 2366
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->b:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    .line 2367
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 2368
    invoke-static {p0}, Landroidx/appcompat/widget/ak;->a(Landroid/view/View;)Z

    move-result p4

    .line 2369
    iget-boolean p5, p0, Landroidx/appcompat/widget/SearchView;->l:Z

    if-eqz p5, :cond_0

    sget p5, Landroidx/appcompat/R$dimen;->abc_dropdownitem_icon_width:I

    .line 2370
    invoke-virtual {p1, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    sget p6, Landroidx/appcompat/R$dimen;->abc_dropdownitem_text_padding_left:I

    .line 2371
    invoke-virtual {p1, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr p5, p1

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    .line 2373
    :goto_0
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    if-eqz p4, :cond_1

    .line 2376
    iget p1, p3, Landroid/graphics/Rect;->left:I

    neg-int p1, p1

    goto :goto_1

    .line 2378
    :cond_1
    iget p1, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p5

    sub-int p1, p2, p1

    .line 2380
    :goto_1
    iget-object p4, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p4, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V

    .line 2381
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->g:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget p4, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p4

    iget p3, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p3

    add-int/2addr p1, p5

    sub-int/2addr p1, p2

    .line 2383
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setDropDownWidth(I)V

    :cond_2
    return-void
.end method
