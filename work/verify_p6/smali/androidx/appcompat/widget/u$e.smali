.class final Landroidx/appcompat/widget/u$e;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/u;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/u;)V
    .locals 0

    .line 1372
    iput-object p1, p0, Landroidx/appcompat/widget/u$e;->a:Landroidx/appcompat/widget/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1377
    iget-object v0, p0, Landroidx/appcompat/widget/u$e;->a:Landroidx/appcompat/widget/u;

    iget-object v0, v0, Landroidx/appcompat/widget/u;->e:Landroidx/appcompat/widget/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/u$e;->a:Landroidx/appcompat/widget/u;

    iget-object v0, v0, Landroidx/appcompat/widget/u;->e:Landroidx/appcompat/widget/r;

    invoke-static {v0}, Landroidx/core/e/r;->p(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/u$e;->a:Landroidx/appcompat/widget/u;

    iget-object v0, v0, Landroidx/appcompat/widget/u;->e:Landroidx/appcompat/widget/r;

    .line 1378
    invoke-virtual {v0}, Landroidx/appcompat/widget/r;->getCount()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/u$e;->a:Landroidx/appcompat/widget/u;

    iget-object v1, v1, Landroidx/appcompat/widget/u;->e:Landroidx/appcompat/widget/r;

    invoke-virtual {v1}, Landroidx/appcompat/widget/r;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/u$e;->a:Landroidx/appcompat/widget/u;

    iget-object v0, v0, Landroidx/appcompat/widget/u;->e:Landroidx/appcompat/widget/r;

    .line 1379
    invoke-virtual {v0}, Landroidx/appcompat/widget/r;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/u$e;->a:Landroidx/appcompat/widget/u;

    iget v1, v1, Landroidx/appcompat/widget/u;->i:I

    if-gt v0, v1, :cond_0

    .line 1380
    iget-object v0, p0, Landroidx/appcompat/widget/u$e;->a:Landroidx/appcompat/widget/u;

    iget-object v0, v0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1381
    iget-object p0, p0, Landroidx/appcompat/widget/u$e;->a:Landroidx/appcompat/widget/u;

    invoke-virtual {p0}, Landroidx/appcompat/widget/u;->b_()V

    :cond_0
    return-void
.end method
