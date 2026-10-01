.class final Landroidx/appcompat/widget/ActionMenuPresenter$e;
.super Landroidx/appcompat/view/menu/l;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic c:Landroidx/appcompat/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroid/view/View;)V
    .registers 11

    .line 720
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$e;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 721
    sget v5, Landroidx/appcompat/R$attr;->actionOverflowMenuStyle:I

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/l;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroid/view/View;ZI)V

    const p2, 0x800005

    .line 1132
    iput p2, p0, Landroidx/appcompat/view/menu/l;->b:I

    .line 723
    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuPresenter;->p:Landroidx/appcompat/widget/ActionMenuPresenter$f;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter$e;->a(Landroidx/appcompat/view/menu/m$a;)V

    return-void
.end method


# virtual methods
.method public final d()V
    .registers 3

    .line 728
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$e;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 2054
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->c:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_d

    .line 729
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$e;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 3054
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->c:Landroidx/appcompat/view/menu/g;

    .line 729
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->close()V

    .line 731
    :cond_d
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$e;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    .line 733
    invoke-super {p0}, Landroidx/appcompat/view/menu/l;->d()V

    return-void
.end method
