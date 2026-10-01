.class final Landroidx/viewpager/widget/PagerTitleStrip$a;
.super Landroid/database/DataSetObserver;
.source "PagerTitleStrip.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$e;
.implements Landroidx/viewpager/widget/ViewPager$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/PagerTitleStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/viewpager/widget/PagerTitleStrip;

.field private b:I


# direct methods
.method constructor <init>(Landroidx/viewpager/widget/PagerTitleStrip;)V
    .registers 2

    .line 475
    iput-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip$a;->a:Landroidx/viewpager/widget/PagerTitleStrip;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 4

    .line 489
    iget p1, p0, Landroidx/viewpager/widget/PagerTitleStrip$a;->b:I

    if-nez p1, :cond_34

    .line 491
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip$a;->a:Landroidx/viewpager/widget/PagerTitleStrip;

    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip$a;->a:Landroidx/viewpager/widget/PagerTitleStrip;

    iget-object v0, v0, Landroidx/viewpager/widget/PagerTitleStrip;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Landroidx/viewpager/widget/PagerTitleStrip$a;->a:Landroidx/viewpager/widget/PagerTitleStrip;

    iget-object v1, v1, Landroidx/viewpager/widget/PagerTitleStrip;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/PagerTitleStrip;->a(ILandroidx/viewpager/widget/a;)V

    .line 493
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip$a;->a:Landroidx/viewpager/widget/PagerTitleStrip;

    iget p1, p1, Landroidx/viewpager/widget/PagerTitleStrip;->e:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_26

    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip$a;->a:Landroidx/viewpager/widget/PagerTitleStrip;

    iget v0, p1, Landroidx/viewpager/widget/PagerTitleStrip;->e:F

    .line 494
    :cond_26
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip$a;->a:Landroidx/viewpager/widget/PagerTitleStrip;

    iget-object p0, p0, Landroidx/viewpager/widget/PagerTitleStrip$a;->a:Landroidx/viewpager/widget/PagerTitleStrip;

    iget-object p0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p0

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v0, v1}, Landroidx/viewpager/widget/PagerTitleStrip;->a(IFZ)V

    :cond_34
    return-void
.end method

.method public final a(IF)V
    .registers 4

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_8

    add-int/lit8 p1, p1, 0x1

    .line 484
    :cond_8
    iget-object p0, p0, Landroidx/viewpager/widget/PagerTitleStrip$a;->a:Landroidx/viewpager/widget/PagerTitleStrip;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/viewpager/widget/PagerTitleStrip;->a(IFZ)V

    return-void
.end method

.method public final a(Landroidx/viewpager/widget/a;Landroidx/viewpager/widget/a;)V
    .registers 3

    .line 506
    iget-object p0, p0, Landroidx/viewpager/widget/PagerTitleStrip$a;->a:Landroidx/viewpager/widget/PagerTitleStrip;

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager/widget/PagerTitleStrip;->a(Landroidx/viewpager/widget/a;Landroidx/viewpager/widget/a;)V

    return-void
.end method

.method public final b(I)V
    .registers 2

    .line 500
    iput p1, p0, Landroidx/viewpager/widget/PagerTitleStrip$a;->b:I

    return-void
.end method

.method public final onChanged()V
    .registers 4

    .line 511
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip$a;->a:Landroidx/viewpager/widget/PagerTitleStrip;

    iget-object v1, p0, Landroidx/viewpager/widget/PagerTitleStrip$a;->a:Landroidx/viewpager/widget/PagerTitleStrip;

    iget-object v1, v1, Landroidx/viewpager/widget/PagerTitleStrip;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Landroidx/viewpager/widget/PagerTitleStrip$a;->a:Landroidx/viewpager/widget/PagerTitleStrip;

    iget-object v2, v2, Landroidx/viewpager/widget/PagerTitleStrip;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/PagerTitleStrip;->a(ILandroidx/viewpager/widget/a;)V

    .line 513
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip$a;->a:Landroidx/viewpager/widget/PagerTitleStrip;

    iget v0, v0, Landroidx/viewpager/widget/PagerTitleStrip;->e:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_22

    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip$a;->a:Landroidx/viewpager/widget/PagerTitleStrip;

    iget v1, v0, Landroidx/viewpager/widget/PagerTitleStrip;->e:F

    .line 514
    :cond_22
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip$a;->a:Landroidx/viewpager/widget/PagerTitleStrip;

    iget-object p0, p0, Landroidx/viewpager/widget/PagerTitleStrip$a;->a:Landroidx/viewpager/widget/PagerTitleStrip;

    iget-object p0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroidx/viewpager/widget/PagerTitleStrip;->a(IFZ)V

    return-void
.end method
