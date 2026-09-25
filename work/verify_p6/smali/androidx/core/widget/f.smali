.class public final Landroidx/core/widget/f;
.super Landroidx/core/widget/a;
.source "ListViewAutoScrollHelper.java"


# instance fields
.field private final f:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroidx/core/widget/a;-><init>(Landroid/view/View;)V

    .line 35
    iput-object p1, p0, Landroidx/core/widget/f;->f:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 40
    iget-object p0, p0, Landroidx/core/widget/f;->f:Landroid/widget/ListView;

    .line 1037
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1039
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->scrollListBy(I)V

    return-void

    .line 1042
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    .line 1047
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1052
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, p1

    .line 1053
    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_1
    return-void
.end method

.method public final b(I)Z
    .locals 6

    .line 51
    iget-object p0, p0, Landroidx/core/widget/f;->f:Landroid/widget/ListView;

    .line 52
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 57
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 58
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    add-int v4, v3, v2

    const/4 v5, 0x1

    if-lez p1, :cond_1

    if-lt v4, v0, :cond_2

    sub-int/2addr v2, v5

    .line 64
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result p0

    if-gt p1, p0, :cond_2

    return v1

    :cond_1
    if-gez p1, :cond_3

    if-gtz v3, :cond_2

    .line 72
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    if-ltz p0, :cond_2

    return v1

    :cond_2
    return v5

    :cond_3
    return v1
.end method
