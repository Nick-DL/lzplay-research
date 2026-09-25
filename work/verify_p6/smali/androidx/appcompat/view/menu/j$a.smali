.class Landroidx/appcompat/view/menu/j$a;
.super Landroidx/core/e/b;
.source "MenuItemWrapperICS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/view/ActionProvider;

.field final synthetic b:Landroidx/appcompat/view/menu/j;


# direct methods
.method constructor <init>(Landroidx/appcompat/view/menu/j;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .locals 0

    .line 432
    iput-object p1, p0, Landroidx/appcompat/view/menu/j$a;->b:Landroidx/appcompat/view/menu/j;

    .line 433
    invoke-direct {p0, p2}, Landroidx/core/e/b;-><init>(Landroid/content/Context;)V

    .line 434
    iput-object p3, p0, Landroidx/appcompat/view/menu/j$a;->a:Landroid/view/ActionProvider;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 0

    .line 439
    iget-object p0, p0, Landroidx/appcompat/view/menu/j$a;->a:Landroid/view/ActionProvider;

    invoke-virtual {p0}, Landroid/view/ActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final a(Landroid/view/SubMenu;)V
    .locals 1

    .line 454
    iget-object v0, p0, Landroidx/appcompat/view/menu/j$a;->a:Landroid/view/ActionProvider;

    iget-object p0, p0, Landroidx/appcompat/view/menu/j$a;->b:Landroidx/appcompat/view/menu/j;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/j;->a(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    return-void
.end method

.method public final b()Z
    .locals 0

    .line 444
    iget-object p0, p0, Landroidx/appcompat/view/menu/j$a;->a:Landroid/view/ActionProvider;

    invoke-virtual {p0}, Landroid/view/ActionProvider;->onPerformDefaultAction()Z

    move-result p0

    return p0
.end method

.method public final c()Z
    .locals 0

    .line 449
    iget-object p0, p0, Landroidx/appcompat/view/menu/j$a;->a:Landroid/view/ActionProvider;

    invoke-virtual {p0}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result p0

    return p0
.end method
