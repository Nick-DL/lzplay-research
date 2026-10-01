.class final Landroidx/appcompat/widget/u$c;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/u;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/u;)V
    .registers 2

    .line 1408
    iput-object p1, p0, Landroidx/appcompat/widget/u$c;->a:Landroidx/appcompat/widget/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .registers 5

    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3

    const/4 p1, 0x1

    if-ne p2, p1, :cond_27

    .line 1419
    iget-object p1, p0, Landroidx/appcompat/widget/u$c;->a:Landroidx/appcompat/widget/u;

    .line 1420
    invoke-virtual {p1}, Landroidx/appcompat/widget/u;->k()Z

    move-result p1

    if-nez p1, :cond_27

    iget-object p1, p0, Landroidx/appcompat/widget/u$c;->a:Landroidx/appcompat/widget/u;

    iget-object p1, p1, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 1421
    iget-object p1, p0, Landroidx/appcompat/widget/u$c;->a:Landroidx/appcompat/widget/u;

    iget-object p1, p1, Landroidx/appcompat/widget/u;->m:Landroid/os/Handler;

    iget-object p2, p0, Landroidx/appcompat/widget/u$c;->a:Landroidx/appcompat/widget/u;

    iget-object p2, p2, Landroidx/appcompat/widget/u;->l:Landroidx/appcompat/widget/u$e;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1422
    iget-object p0, p0, Landroidx/appcompat/widget/u$c;->a:Landroidx/appcompat/widget/u;

    iget-object p0, p0, Landroidx/appcompat/widget/u;->l:Landroidx/appcompat/widget/u$e;

    invoke-virtual {p0}, Landroidx/appcompat/widget/u$e;->run()V

    :cond_27
    return-void
.end method
