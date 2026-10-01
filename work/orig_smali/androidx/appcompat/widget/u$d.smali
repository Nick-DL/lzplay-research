.class final Landroidx/appcompat/widget/u$d;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/u;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/u;)V
    .registers 2

    .line 1387
    iput-object p1, p0, Landroidx/appcompat/widget/u$d;->a:Landroidx/appcompat/widget/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1392
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    .line 1393
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1394
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    if-nez p1, :cond_46

    .line 1396
    iget-object v1, p0, Landroidx/appcompat/widget/u$d;->a:Landroidx/appcompat/widget/u;

    iget-object v1, v1, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_46

    iget-object v1, p0, Landroidx/appcompat/widget/u$d;->a:Landroidx/appcompat/widget/u;

    iget-object v1, v1, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    .line 1397
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_46

    if-ltz v0, :cond_46

    iget-object v1, p0, Landroidx/appcompat/widget/u$d;->a:Landroidx/appcompat/widget/u;

    iget-object v1, v1, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    .line 1398
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_46

    if-ltz p2, :cond_46

    iget-object v0, p0, Landroidx/appcompat/widget/u$d;->a:Landroidx/appcompat/widget/u;

    iget-object v0, v0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_46

    .line 1399
    iget-object p1, p0, Landroidx/appcompat/widget/u$d;->a:Landroidx/appcompat/widget/u;

    iget-object p1, p1, Landroidx/appcompat/widget/u;->m:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/appcompat/widget/u$d;->a:Landroidx/appcompat/widget/u;

    iget-object p0, p0, Landroidx/appcompat/widget/u;->l:Landroidx/appcompat/widget/u$e;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_54

    :cond_46
    const/4 p2, 0x1

    if-ne p1, p2, :cond_54

    .line 1401
    iget-object p1, p0, Landroidx/appcompat/widget/u$d;->a:Landroidx/appcompat/widget/u;

    iget-object p1, p1, Landroidx/appcompat/widget/u;->m:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/appcompat/widget/u$d;->a:Landroidx/appcompat/widget/u;

    iget-object p0, p0, Landroidx/appcompat/widget/u;->l:Landroidx/appcompat/widget/u$e;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_54
    :goto_54
    const/4 p0, 0x0

    return p0
.end method
