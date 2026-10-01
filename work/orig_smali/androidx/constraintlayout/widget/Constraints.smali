.class public Landroidx/constraintlayout/widget/Constraints;
.super Landroid/view/ViewGroup;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/Constraints$a;
    }
.end annotation


# instance fields
.field a:Landroidx/constraintlayout/widget/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    .line 42
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-static {}, Landroidx/constraintlayout/widget/Constraints;->a()V

    const/16 p1, 0x8

    .line 48
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    invoke-static {}, Landroidx/constraintlayout/widget/Constraints;->a()V

    const/16 p1, 0x8

    .line 54
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private static a()V
    .registers 2

    const-string v0, "Constraints"

    const-string v1, " ################# init"

    .line 135
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 1

    .line 4131
    new-instance p0, Landroidx/constraintlayout/widget/Constraints$a;

    invoke-direct {p0}, Landroidx/constraintlayout/widget/Constraints$a;-><init>()V

    return-object p0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 5062
    new-instance v0, Landroidx/constraintlayout/widget/Constraints$a;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/Constraints;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/widget/Constraints$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 143
    new-instance p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getConstraintSet()Landroidx/constraintlayout/widget/a;
    .registers 11

    .line 147
    iget-object v0, p0, Landroidx/constraintlayout/widget/Constraints;->a:Landroidx/constraintlayout/widget/a;

    if-nez v0, :cond_b

    .line 148
    new-instance v0, Landroidx/constraintlayout/widget/a;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/a;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/Constraints;->a:Landroidx/constraintlayout/widget/a;

    .line 151
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/widget/Constraints;->a:Landroidx/constraintlayout/widget/a;

    .line 1761
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/Constraints;->getChildCount()I

    move-result v1

    .line 1762
    iget-object v2, v0, Landroidx/constraintlayout/widget/a;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    const/4 v2, 0x0

    move v3, v2

    :goto_18
    if-ge v3, v1, :cond_7d

    .line 1764
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/widget/Constraints;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1765
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/Constraints$a;

    .line 1767
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_75

    .line 1771
    iget-object v7, v0, Landroidx/constraintlayout/widget/a;->a:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_45

    .line 1772
    iget-object v7, v0, Landroidx/constraintlayout/widget/a;->a:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Landroidx/constraintlayout/widget/a$a;

    invoke-direct {v9, v2}, Landroidx/constraintlayout/widget/a$a;-><init>(B)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1774
    :cond_45
    iget-object v7, v0, Landroidx/constraintlayout/widget/a;->a:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/a$a;

    .line 1775
    instance-of v8, v4, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v8, :cond_6f

    .line 1776
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 2526
    invoke-virtual {v7, v6, v5}, Landroidx/constraintlayout/widget/a$a;->a(ILandroidx/constraintlayout/widget/Constraints$a;)V

    .line 2527
    instance-of v8, v4, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v8, :cond_6f

    const/4 v8, 0x1

    .line 2528
    iput v8, v7, Landroidx/constraintlayout/widget/a$a;->at:I

    .line 2529
    check-cast v4, Landroidx/constraintlayout/widget/Barrier;

    .line 2530
    invoke-virtual {v4}, Landroidx/constraintlayout/widget/Barrier;->getType()I

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/widget/a$a;->as:I

    .line 2531
    invoke-virtual {v4}, Landroidx/constraintlayout/widget/Barrier;->getReferencedIds()[I

    move-result-object v4

    iput-object v4, v7, Landroidx/constraintlayout/widget/a$a;->au:[I

    .line 3358
    :cond_6f
    invoke-virtual {v7, v6, v5}, Landroidx/constraintlayout/widget/a$a;->a(ILandroidx/constraintlayout/widget/Constraints$a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 1769
    :cond_75
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 152
    :cond_7d
    iget-object p0, p0, Landroidx/constraintlayout/widget/Constraints;->a:Landroidx/constraintlayout/widget/a;

    return-object p0
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    return-void
.end method
