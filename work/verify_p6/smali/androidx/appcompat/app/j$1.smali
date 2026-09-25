.class final Landroidx/appcompat/app/j$1;
.super Landroidx/core/e/w;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/j;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/j;)V
    .locals 0

    .line 135
    iput-object p1, p0, Landroidx/appcompat/app/j$1;->a:Landroidx/appcompat/app/j;

    invoke-direct {p0}, Landroidx/core/e/w;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)V
    .locals 3

    .line 138
    iget-object p1, p0, Landroidx/appcompat/app/j$1;->a:Landroidx/appcompat/app/j;

    iget-boolean p1, p1, Landroidx/appcompat/app/j;->k:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/app/j$1;->a:Landroidx/appcompat/app/j;

    iget-object p1, p1, Landroidx/appcompat/app/j;->f:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Landroidx/appcompat/app/j$1;->a:Landroidx/appcompat/app/j;

    iget-object p1, p1, Landroidx/appcompat/app/j;->f:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 140
    iget-object p1, p0, Landroidx/appcompat/app/j$1;->a:Landroidx/appcompat/app/j;

    iget-object p1, p1, Landroidx/appcompat/app/j;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTranslationY(F)V

    .line 142
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/app/j$1;->a:Landroidx/appcompat/app/j;

    iget-object p1, p1, Landroidx/appcompat/app/j;->c:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 143
    iget-object p1, p0, Landroidx/appcompat/app/j$1;->a:Landroidx/appcompat/app/j;

    iget-object p1, p1, Landroidx/appcompat/app/j;->c:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 144
    iget-object p1, p0, Landroidx/appcompat/app/j$1;->a:Landroidx/appcompat/app/j;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/appcompat/app/j;->n:Landroidx/appcompat/view/h;

    .line 145
    iget-object p1, p0, Landroidx/appcompat/app/j$1;->a:Landroidx/appcompat/app/j;

    .line 1312
    iget-object v1, p1, Landroidx/appcompat/app/j;->j:Landroidx/appcompat/view/b$a;

    if-eqz v1, :cond_1

    .line 1313
    iget-object v1, p1, Landroidx/appcompat/app/j;->j:Landroidx/appcompat/view/b$a;

    iget-object v2, p1, Landroidx/appcompat/app/j;->i:Landroidx/appcompat/view/b;

    invoke-interface {v1, v2}, Landroidx/appcompat/view/b$a;->a(Landroidx/appcompat/view/b;)V

    .line 1314
    iput-object v0, p1, Landroidx/appcompat/app/j;->i:Landroidx/appcompat/view/b;

    .line 1315
    iput-object v0, p1, Landroidx/appcompat/app/j;->j:Landroidx/appcompat/view/b$a;

    .line 146
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/app/j$1;->a:Landroidx/appcompat/app/j;

    iget-object p1, p1, Landroidx/appcompat/app/j;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_2

    .line 147
    iget-object p0, p0, Landroidx/appcompat/app/j$1;->a:Landroidx/appcompat/app/j;

    iget-object p0, p0, Landroidx/appcompat/app/j;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-static {p0}, Landroidx/core/e/r;->j(Landroid/view/View;)V

    :cond_2
    return-void
.end method
