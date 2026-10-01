.class final Landroidx/appcompat/view/menu/q$1;
.super Ljava/lang/Object;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/view/menu/q;


# direct methods
.method constructor <init>(Landroidx/appcompat/view/menu/q;)V
    .registers 2

    .line 61
    iput-object p1, p0, Landroidx/appcompat/view/menu/q$1;->a:Landroidx/appcompat/view/menu/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .registers 2

    .line 67
    iget-object v0, p0, Landroidx/appcompat/view/menu/q$1;->a:Landroidx/appcompat/view/menu/q;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q;->d()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroidx/appcompat/view/menu/q$1;->a:Landroidx/appcompat/view/menu/q;

    iget-object v0, v0, Landroidx/appcompat/view/menu/q;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 1346
    iget-boolean v0, v0, Landroidx/appcompat/widget/u;->n:Z

    if-nez v0, :cond_2b

    .line 68
    iget-object v0, p0, Landroidx/appcompat/view/menu/q$1;->a:Landroidx/appcompat/view/menu/q;

    iget-object v0, v0, Landroidx/appcompat/view/menu/q;->c:Landroid/view/View;

    if-eqz v0, :cond_25

    .line 69
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_25

    .line 73
    :cond_1d
    iget-object p0, p0, Landroidx/appcompat/view/menu/q$1;->a:Landroidx/appcompat/view/menu/q;

    iget-object p0, p0, Landroidx/appcompat/view/menu/q;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/widget/MenuPopupWindow;->b_()V

    goto :goto_2b

    .line 70
    :cond_25
    :goto_25
    iget-object p0, p0, Landroidx/appcompat/view/menu/q$1;->a:Landroidx/appcompat/view/menu/q;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/q;->c()V

    return-void

    :cond_2b
    :goto_2b
    return-void
.end method
