.class final Landroidx/viewpager/widget/ViewPager$i;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 3157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 3157
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    .line 4160
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/viewpager/widget/ViewPager$c;

    .line 4161
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager$c;

    .line 4162
    iget-boolean p2, p0, Landroidx/viewpager/widget/ViewPager$c;->a:Z

    iget-boolean v0, p1, Landroidx/viewpager/widget/ViewPager$c;->a:Z

    if-eq p2, v0, :cond_1e

    .line 4163
    iget-boolean p0, p0, Landroidx/viewpager/widget/ViewPager$c;->a:Z

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, -0x1

    return p0

    .line 4165
    :cond_1e
    iget p0, p0, Landroidx/viewpager/widget/ViewPager$c;->e:I

    iget p1, p1, Landroidx/viewpager/widget/ViewPager$c;->e:I

    sub-int/2addr p0, p1

    return p0
.end method
