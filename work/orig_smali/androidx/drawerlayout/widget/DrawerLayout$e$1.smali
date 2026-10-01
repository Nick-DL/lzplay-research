.class final Landroidx/drawerlayout/widget/DrawerLayout$e$1;
.super Ljava/lang/Object;
.source "DrawerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/drawerlayout/widget/DrawerLayout$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/drawerlayout/widget/DrawerLayout$e;


# direct methods
.method constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout$e;)V
    .registers 2

    .line 2146
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$e$1;->a:Landroidx/drawerlayout/widget/DrawerLayout$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 14

    .line 2148
    iget-object p0, p0, Landroidx/drawerlayout/widget/DrawerLayout$e$1;->a:Landroidx/drawerlayout/widget/DrawerLayout$e;

    .line 3237
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$e;->b:Landroidx/customview/a/a;

    .line 3459
    iget v0, v0, Landroidx/customview/a/a;->j:I

    .line 3238
    iget v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$e;->a:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_f

    move v1, v4

    goto :goto_10

    :cond_f
    move v1, v3

    :goto_10
    if-eqz v1, :cond_23

    .line 3240
    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout$e;->c:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v5, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 3241
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    neg-int v5, v5

    goto :goto_21

    :cond_20
    move v5, v3

    :goto_21
    add-int/2addr v5, v0

    goto :goto_31

    .line 3243
    :cond_23
    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout$e;->c:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v2

    .line 3244
    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout$e;->c:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v5}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v5

    sub-int/2addr v5, v0

    :goto_31
    if-eqz v2, :cond_8c

    if-eqz v1, :cond_3b

    .line 3247
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lt v0, v5, :cond_43

    :cond_3b
    if-nez v1, :cond_8c

    .line 3248
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    if-le v0, v5, :cond_8c

    :cond_43
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$e;->c:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 3249
    invoke-virtual {v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_8c

    .line 3250
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$d;

    .line 3251
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$e;->b:Landroidx/customview/a/a;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v1, v2, v5, v6}, Landroidx/customview/a/a;->a(Landroid/view/View;II)Z

    .line 3252
    iput-boolean v4, v0, Landroidx/drawerlayout/widget/DrawerLayout$d;->c:Z

    .line 3253
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$e;->c:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    .line 3255
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout$e;->c()V

    .line 3257
    iget-object p0, p0, Landroidx/drawerlayout/widget/DrawerLayout$e;->c:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 3961
    iget-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->f:Z

    if-nez v0, :cond_8c

    .line 3962
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide v5, v7

    .line 3963
    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 3965
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v1

    :goto_7b
    if-ge v3, v1, :cond_87

    .line 3967
    invoke-virtual {p0, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_7b

    .line 3969
    :cond_87
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 3970
    iput-boolean v4, p0, Landroidx/drawerlayout/widget/DrawerLayout;->f:Z

    :cond_8c
    return-void
.end method
