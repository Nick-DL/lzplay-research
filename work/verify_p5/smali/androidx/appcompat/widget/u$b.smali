.class final Landroidx/appcompat/widget/u$b;
.super Landroid/database/DataSetObserver;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/u;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/u;)V
    .locals 0

    .line 1344
    iput-object p1, p0, Landroidx/appcompat/widget/u$b;->a:Landroidx/appcompat/widget/u;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .line 1349
    iget-object v0, p0, Landroidx/appcompat/widget/u$b;->a:Landroidx/appcompat/widget/u;

    .line 1861
    iget-object v0, v0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1351
    iget-object p0, p0, Landroidx/appcompat/widget/u$b;->a:Landroidx/appcompat/widget/u;

    invoke-virtual {p0}, Landroidx/appcompat/widget/u;->b_()V

    :cond_0
    return-void
.end method

.method public final onInvalidated()V
    .locals 0

    .line 1357
    iget-object p0, p0, Landroidx/appcompat/widget/u$b;->a:Landroidx/appcompat/widget/u;

    invoke-virtual {p0}, Landroidx/appcompat/widget/u;->c()V

    return-void
.end method
