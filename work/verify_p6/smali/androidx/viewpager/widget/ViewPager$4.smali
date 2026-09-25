.class final Landroidx/viewpager/widget/ViewPager$4;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Landroidx/core/e/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/viewpager/widget/ViewPager;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/viewpager/widget/ViewPager;

.field private final b:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 428
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager$4;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager$4;->b:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroidx/core/e/y;)Landroidx/core/e/y;
    .locals 5

    .line 436
    invoke-static {p1, p2}, Landroidx/core/e/r;->a(Landroid/view/View;Landroidx/core/e/y;)Landroidx/core/e/y;

    move-result-object p1

    .line 1164
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x15

    if-lt p2, v1, :cond_0

    .line 1165
    iget-object p2, p1, Landroidx/core/e/y;->a:Ljava/lang/Object;

    check-cast p2, Landroid/view/WindowInsets;

    invoke-virtual {p2}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-eqz p2, :cond_1

    return-object p1

    .line 449
    :cond_1
    iget-object p2, p0, Landroidx/viewpager/widget/ViewPager$4;->b:Landroid/graphics/Rect;

    .line 450
    invoke-virtual {p1}, Landroidx/core/e/y;->a()I

    move-result v1

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 451
    invoke-virtual {p1}, Landroidx/core/e/y;->b()I

    move-result v1

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 452
    invoke-virtual {p1}, Landroidx/core/e/y;->c()I

    move-result v1

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 453
    invoke-virtual {p1}, Landroidx/core/e/y;->d()I

    move-result v1

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 455
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager$4;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_2

    .line 456
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager$4;->a:Landroidx/viewpager/widget/ViewPager;

    .line 457
    invoke-virtual {v2, v0}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Landroidx/core/e/r;->b(Landroid/view/View;Landroidx/core/e/y;)Landroidx/core/e/y;

    move-result-object v2

    .line 460
    invoke-virtual {v2}, Landroidx/core/e/y;->a()I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->left:I

    .line 462
    invoke-virtual {v2}, Landroidx/core/e/y;->b()I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->top:I

    .line 464
    invoke-virtual {v2}, Landroidx/core/e/y;->c()I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->right:I

    .line 466
    invoke-virtual {v2}, Landroidx/core/e/y;->d()I

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 471
    :cond_2
    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p0, v0, v1, p2}, Landroidx/core/e/y;->a(IIII)Landroidx/core/e/y;

    move-result-object p0

    return-object p0
.end method
