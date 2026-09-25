.class final Landroidx/appcompat/widget/af$1;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/af;-><init>(Landroidx/appcompat/widget/Toolbar;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Landroidx/appcompat/view/menu/a;

.field final synthetic b:Landroidx/appcompat/widget/af;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/af;)V
    .locals 2

    .line 182
    iput-object p1, p0, Landroidx/appcompat/widget/af$1;->b:Landroidx/appcompat/widget/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance p1, Landroidx/appcompat/view/menu/a;

    iget-object v0, p0, Landroidx/appcompat/widget/af$1;->b:Landroidx/appcompat/widget/af;

    iget-object v0, v0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/af$1;->b:Landroidx/appcompat/widget/af;

    iget-object v1, v1, Landroidx/appcompat/widget/af;->b:Ljava/lang/CharSequence;

    invoke-direct {p1, v0, v1}, Landroidx/appcompat/view/menu/a;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iput-object p1, p0, Landroidx/appcompat/widget/af$1;->a:Landroidx/appcompat/view/menu/a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 187
    iget-object p1, p0, Landroidx/appcompat/widget/af$1;->b:Landroidx/appcompat/widget/af;

    iget-object p1, p1, Landroidx/appcompat/widget/af;->c:Landroid/view/Window$Callback;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/widget/af$1;->b:Landroidx/appcompat/widget/af;

    iget-boolean p1, p1, Landroidx/appcompat/widget/af;->d:Z

    if-eqz p1, :cond_0

    .line 188
    iget-object p1, p0, Landroidx/appcompat/widget/af$1;->b:Landroidx/appcompat/widget/af;

    iget-object p1, p1, Landroidx/appcompat/widget/af;->c:Landroid/view/Window$Callback;

    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/appcompat/widget/af$1;->a:Landroidx/appcompat/view/menu/a;

    invoke-interface {p1, v0, p0}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    :cond_0
    return-void
.end method
