.class final Landroidx/appcompat/widget/AppCompatSpinner$c;
.super Landroidx/appcompat/widget/u;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroidx/appcompat/widget/AppCompatSpinner$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/CharSequence;

.field b:Landroid/widget/ListAdapter;

.field final c:Landroid/graphics/Rect;

.field final synthetic d:Landroidx/appcompat/widget/AppCompatSpinner;

.field private p:I


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 958
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 959
    invoke-direct {p0, p2, p3, p4}, Landroidx/appcompat/widget/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 955
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->c:Landroid/graphics/Rect;

    .line 1471
    iput-object p1, p0, Landroidx/appcompat/widget/u;->k:Landroid/view/View;

    .line 962
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$c;->h()V

    const/4 p2, 0x0

    .line 2313
    iput p2, p0, Landroidx/appcompat/widget/u;->j:I

    .line 965
    new-instance p2, Landroidx/appcompat/widget/AppCompatSpinner$c$1;

    invoke-direct {p2, p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$c$1;-><init>(Landroidx/appcompat/widget/AppCompatSpinner$c;Landroidx/appcompat/widget/AppCompatSpinner;)V

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/AppCompatSpinner$c;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic a(Landroidx/appcompat/widget/AppCompatSpinner$c;)V
    .locals 0

    .line 952
    invoke-super {p0}, Landroidx/appcompat/widget/u;->b_()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/CharSequence;
    .locals 0

    .line 986
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final a(II)V
    .locals 5

    .line 5861
    iget-object v0, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 1037
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$c;->g()V

    .line 1039
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$c;->i()V

    .line 1040
    invoke-super {p0}, Landroidx/appcompat/widget/u;->b_()V

    .line 5947
    iget-object v1, p0, Landroidx/appcompat/widget/u;->e:Landroidx/appcompat/widget/r;

    const/4 v2, 0x1

    .line 1042
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1043
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 1044
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 1045
    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    .line 1047
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatSpinner;->getSelectedItemPosition()I

    move-result p1

    .line 6831
    iget-object p2, p0, Landroidx/appcompat/widget/u;->e:Landroidx/appcompat/widget/r;

    .line 6861
    iget-object v1, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    .line 6833
    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/r;->setListSelectionHidden(Z)V

    .line 6834
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/r;->setSelection(I)V

    .line 6836
    invoke-virtual {p2}, Landroidx/appcompat/widget/r;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_1

    .line 6837
    invoke-virtual {p2, p1, v2}, Landroidx/appcompat/widget/r;->setItemChecked(IZ)V

    :cond_1
    if-eqz v0, :cond_2

    return-void

    .line 1058
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatSpinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1060
    new-instance p2, Landroidx/appcompat/widget/AppCompatSpinner$c$2;

    invoke-direct {p2, p0}, Landroidx/appcompat/widget/AppCompatSpinner$c$2;-><init>(Landroidx/appcompat/widget/AppCompatSpinner$c;)V

    .line 1075
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1076
    new-instance p1, Landroidx/appcompat/widget/AppCompatSpinner$c$3;

    invoke-direct {p1, p0, p2}, Landroidx/appcompat/widget/AppCompatSpinner$c$3;-><init>(Landroidx/appcompat/widget/AppCompatSpinner$c;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$c;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_3
    return-void
.end method

.method public final a(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 980
    invoke-super {p0, p1}, Landroidx/appcompat/widget/u;->a(Landroid/widget/ListAdapter;)V

    .line 981
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->b:Landroid/widget/ListAdapter;

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 0

    .line 992
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->a:Ljava/lang/CharSequence;

    return-void
.end method

.method public final c(I)V
    .locals 0

    .line 1097
    iput p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->p:I

    return-void
.end method

.method final g()V
    .locals 7

    .line 2424
    iget-object v0, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 999
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1000
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-static {v0}, Landroidx/appcompat/widget/ak;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatSpinner;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatSpinner;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    goto :goto_0

    .line 1003
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatSpinner;->b:Landroid/graphics/Rect;

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatSpinner;->b:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1006
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner;->getPaddingLeft()I

    move-result v0

    .line 1007
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatSpinner;->getPaddingRight()I

    move-result v2

    .line 1008
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatSpinner;->getWidth()I

    move-result v3

    .line 1009
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    iget v4, v4, Landroidx/appcompat/widget/AppCompatSpinner;->a:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_3

    .line 1010
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->b:Landroid/widget/ListAdapter;

    check-cast v5, Landroid/widget/SpinnerAdapter;

    .line 3424
    iget-object v6, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1010
    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/AppCompatSpinner;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v4

    .line 1012
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatSpinner;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1013
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v6, v6, Landroidx/appcompat/widget/AppCompatSpinner;->b:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v6, v6, Landroidx/appcompat/widget/AppCompatSpinner;->b:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_2

    move v4, v5

    :cond_2
    sub-int v5, v3, v0

    sub-int/2addr v5, v2

    .line 1017
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/AppCompatSpinner$c;->d(I)V

    goto :goto_2

    .line 1019
    :cond_3
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    iget v4, v4, Landroidx/appcompat/widget/AppCompatSpinner;->a:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    sub-int v4, v3, v0

    sub-int/2addr v4, v2

    .line 1020
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/AppCompatSpinner$c;->d(I)V

    goto :goto_2

    .line 1022
    :cond_4
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    iget v4, v4, Landroidx/appcompat/widget/AppCompatSpinner;->a:I

    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/AppCompatSpinner$c;->d(I)V

    .line 1024
    :goto_2
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-static {v4}, Landroidx/appcompat/widget/ak;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    sub-int/2addr v3, v2

    .line 3546
    iget v0, p0, Landroidx/appcompat/widget/u;->f:I

    sub-int/2addr v3, v0

    .line 4102
    iget v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->p:I

    sub-int/2addr v3, v0

    add-int/2addr v1, v3

    goto :goto_3

    .line 5102
    :cond_5
    iget v2, p0, Landroidx/appcompat/widget/AppCompatSpinner$c;->p:I

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 5487
    :goto_3
    iput v1, p0, Landroidx/appcompat/widget/u;->g:I

    return-void
.end method
