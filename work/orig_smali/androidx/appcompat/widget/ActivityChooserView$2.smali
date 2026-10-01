.class final Landroidx/appcompat/widget/ActivityChooserView$2;
.super Ljava/lang/Object;
.source "ActivityChooserView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActivityChooserView;)V
    .registers 2

    .line 149
    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$2;->a:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .registers 2

    .line 152
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$2;->a:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView;->c()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 153
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$2;->a:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 154
    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView$2;->a:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView;->getListPopupWindow()Landroidx/appcompat/widget/u;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/widget/u;->c()V

    return-void

    .line 156
    :cond_1a
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$2;->a:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView;->getListPopupWindow()Landroidx/appcompat/widget/u;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/u;->b_()V

    .line 157
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$2;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->g:Landroidx/core/e/b;

    if-eqz v0, :cond_31

    .line 158
    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView$2;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView;->g:Landroidx/core/e/b;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/core/e/b;->a(Z)V

    :cond_31
    return-void
.end method
