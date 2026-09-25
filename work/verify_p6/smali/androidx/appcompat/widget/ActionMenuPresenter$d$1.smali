.class final Landroidx/appcompat/widget/ActionMenuPresenter$d$1;
.super Landroidx/appcompat/widget/t;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/ActionMenuPresenter$d;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ActionMenuPresenter;

.field final synthetic b:Landroidx/appcompat/widget/ActionMenuPresenter$d;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActionMenuPresenter$d;Landroid/view/View;Landroidx/appcompat/widget/ActionMenuPresenter;)V
    .locals 0

    .line 643
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d$1;->b:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    iput-object p3, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d$1;->a:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/t;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/appcompat/view/menu/p;
    .locals 1

    .line 646
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d$1;->b:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter$d;->a:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 650
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d$1;->b:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d;->a:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter$e;->a()Landroidx/appcompat/view/menu/k;

    move-result-object p0

    return-object p0
.end method

.method public final b()Z
    .locals 0

    .line 655
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d$1;->b:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d;->a:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->d()Z

    const/4 p0, 0x1

    return p0
.end method

.method public final c()Z
    .locals 1

    .line 664
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d$1;->b:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter$d;->a:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->o:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 668
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d$1;->b:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d;->a:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->e()Z

    const/4 p0, 0x1

    return p0
.end method
