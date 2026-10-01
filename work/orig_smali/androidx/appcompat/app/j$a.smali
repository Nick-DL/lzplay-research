.class public final Landroidx/appcompat/app/j$a;
.super Landroidx/appcompat/view/b;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroidx/appcompat/view/menu/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final a:Landroidx/appcompat/view/menu/g;

.field final synthetic b:Landroidx/appcompat/app/j;

.field private final e:Landroid/content/Context;

.field private f:Landroidx/appcompat/view/b$a;

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/j;Landroid/content/Context;Landroidx/appcompat/view/b$a;)V
    .registers 4

    .line 993
    iput-object p1, p0, Landroidx/appcompat/app/j$a;->b:Landroidx/appcompat/app/j;

    invoke-direct {p0}, Landroidx/appcompat/view/b;-><init>()V

    .line 994
    iput-object p2, p0, Landroidx/appcompat/app/j$a;->e:Landroid/content/Context;

    .line 995
    iput-object p3, p0, Landroidx/appcompat/app/j$a;->f:Landroidx/appcompat/view/b$a;

    .line 996
    new-instance p1, Landroidx/appcompat/view/menu/g;

    invoke-direct {p1, p2}, Landroidx/appcompat/view/menu/g;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 1245
    iput p2, p1, Landroidx/appcompat/view/menu/g;->e:I

    .line 997
    iput-object p1, p0, Landroidx/appcompat/app/j$a;->a:Landroidx/appcompat/view/menu/g;

    .line 998
    iget-object p1, p0, Landroidx/appcompat/app/j$a;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/g$a;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/MenuInflater;
    .registers 2

    .line 1003
    new-instance v0, Landroidx/appcompat/view/g;

    iget-object p0, p0, Landroidx/appcompat/app/j$a;->e:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final a(I)V
    .registers 3

    .line 1086
    iget-object v0, p0, Landroidx/appcompat/app/j$a;->b:Landroidx/appcompat/app/j;

    iget-object v0, v0, Landroidx/appcompat/app/j;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/j$a;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .registers 3

    .line 1070
    iget-object v0, p0, Landroidx/appcompat/app/j$a;->b:Landroidx/appcompat/app/j;

    iget-object v0, v0, Landroidx/appcompat/app/j;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 1071
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/app/j$a;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final a(Landroidx/appcompat/view/menu/g;)V
    .registers 2

    .line 1150
    iget-object p1, p0, Landroidx/appcompat/app/j$a;->f:Landroidx/appcompat/view/b$a;

    if-nez p1, :cond_5

    return-void

    .line 1153
    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/app/j$a;->d()V

    .line 1154
    iget-object p0, p0, Landroidx/appcompat/app/j$a;->b:Landroidx/appcompat/app/j;

    iget-object p0, p0, Landroidx/appcompat/app/j;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->a()Z

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .registers 2

    .line 1076
    iget-object p0, p0, Landroidx/appcompat/app/j$a;->b:Landroidx/appcompat/app/j;

    iget-object p0, p0, Landroidx/appcompat/app/j;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Z)V
    .registers 2

    .line 1106
    invoke-super {p0, p1}, Landroidx/appcompat/view/b;->a(Z)V

    .line 1107
    iget-object p0, p0, Landroidx/appcompat/app/j$a;->b:Landroidx/appcompat/app/j;

    iget-object p0, p0, Landroidx/appcompat/app/j;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method

.method public final a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z
    .registers 3

    .line 1122
    iget-object p1, p0, Landroidx/appcompat/app/j$a;->f:Landroidx/appcompat/view/b$a;

    if-eqz p1, :cond_b

    .line 1123
    iget-object p1, p0, Landroidx/appcompat/app/j$a;->f:Landroidx/appcompat/view/b$a;

    invoke-interface {p1, p0, p2}, Landroidx/appcompat/view/b$a;->a(Landroidx/appcompat/view/b;Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public final b()Landroid/view/Menu;
    .registers 1

    .line 1008
    iget-object p0, p0, Landroidx/appcompat/app/j$a;->a:Landroidx/appcompat/view/menu/g;

    return-object p0
.end method

.method public final b(I)V
    .registers 3

    .line 1091
    iget-object v0, p0, Landroidx/appcompat/app/j$a;->b:Landroidx/appcompat/app/j;

    iget-object v0, v0, Landroidx/appcompat/app/j;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/j$a;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .registers 2

    .line 1081
    iget-object p0, p0, Landroidx/appcompat/app/j$a;->b:Landroidx/appcompat/app/j;

    iget-object p0, p0, Landroidx/appcompat/app/j;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final c()V
    .registers 4

    .line 1013
    iget-object v0, p0, Landroidx/appcompat/app/j$a;->b:Landroidx/appcompat/app/j;

    iget-object v0, v0, Landroidx/appcompat/app/j;->h:Landroidx/appcompat/app/j$a;

    if-eq v0, p0, :cond_7

    return-void

    .line 1022
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/app/j$a;->b:Landroidx/appcompat/app/j;

    iget-boolean v0, v0, Landroidx/appcompat/app/j;->l:Z

    iget-object v1, p0, Landroidx/appcompat/app/j$a;->b:Landroidx/appcompat/app/j;

    iget-boolean v1, v1, Landroidx/appcompat/app/j;->m:Z

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/appcompat/app/j;->a(ZZZ)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1025
    iget-object v0, p0, Landroidx/appcompat/app/j$a;->b:Landroidx/appcompat/app/j;

    iput-object p0, v0, Landroidx/appcompat/app/j;->i:Landroidx/appcompat/view/b;

    .line 1026
    iget-object v0, p0, Landroidx/appcompat/app/j$a;->b:Landroidx/appcompat/app/j;

    iget-object v1, p0, Landroidx/appcompat/app/j$a;->f:Landroidx/appcompat/view/b$a;

    iput-object v1, v0, Landroidx/appcompat/app/j;->j:Landroidx/appcompat/view/b$a;

    goto :goto_26

    .line 1028
    :cond_21
    iget-object v0, p0, Landroidx/appcompat/app/j$a;->f:Landroidx/appcompat/view/b$a;

    invoke-interface {v0, p0}, Landroidx/appcompat/view/b$a;->a(Landroidx/appcompat/view/b;)V

    :goto_26
    const/4 v0, 0x0

    .line 1030
    iput-object v0, p0, Landroidx/appcompat/app/j$a;->f:Landroidx/appcompat/view/b$a;

    .line 1031
    iget-object v1, p0, Landroidx/appcompat/app/j$a;->b:Landroidx/appcompat/app/j;

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/j;->e(Z)V

    .line 1034
    iget-object v1, p0, Landroidx/appcompat/app/j$a;->b:Landroidx/appcompat/app/j;

    iget-object v1, v1, Landroidx/appcompat/app/j;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->b()V

    .line 1035
    iget-object v1, p0, Landroidx/appcompat/app/j$a;->b:Landroidx/appcompat/app/j;

    iget-object v1, v1, Landroidx/appcompat/app/j;->d:Landroidx/appcompat/widget/p;

    invoke-interface {v1}, Landroidx/appcompat/widget/p;->a()Landroid/view/ViewGroup;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 1037
    iget-object v1, p0, Landroidx/appcompat/app/j$a;->b:Landroidx/appcompat/app/j;

    iget-object v1, v1, Landroidx/appcompat/app/j;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-object v2, p0, Landroidx/appcompat/app/j$a;->b:Landroidx/appcompat/app/j;

    iget-boolean v2, v2, Landroidx/appcompat/app/j;->o:Z

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 1039
    iget-object p0, p0, Landroidx/appcompat/app/j$a;->b:Landroidx/appcompat/app/j;

    iput-object v0, p0, Landroidx/appcompat/app/j;->h:Landroidx/appcompat/app/j$a;

    return-void
.end method

.method public final d()V
    .registers 3

    .line 1044
    iget-object v0, p0, Landroidx/appcompat/app/j$a;->b:Landroidx/appcompat/app/j;

    iget-object v0, v0, Landroidx/appcompat/app/j;->h:Landroidx/appcompat/app/j$a;

    if-eq v0, p0, :cond_7

    return-void

    .line 1051
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/app/j$a;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->e()V

    .line 1053
    :try_start_c
    iget-object v0, p0, Landroidx/appcompat/app/j$a;->f:Landroidx/appcompat/view/b$a;

    iget-object v1, p0, Landroidx/appcompat/app/j$a;->a:Landroidx/appcompat/view/menu/g;

    invoke-interface {v0, p0, v1}, Landroidx/appcompat/view/b$a;->b(Landroidx/appcompat/view/b;Landroid/view/Menu;)Z
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_19

    .line 1055
    iget-object p0, p0, Landroidx/appcompat/app/j$a;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->f()V

    return-void

    :catchall_19
    move-exception v0

    iget-object p0, p0, Landroidx/appcompat/app/j$a;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->f()V

    .line 1056
    throw v0
.end method

.method public final e()Z
    .registers 3

    .line 1060
    iget-object v0, p0, Landroidx/appcompat/app/j$a;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->e()V

    .line 1062
    :try_start_5
    iget-object v0, p0, Landroidx/appcompat/app/j$a;->f:Landroidx/appcompat/view/b$a;

    iget-object v1, p0, Landroidx/appcompat/app/j$a;->a:Landroidx/appcompat/view/menu/g;

    invoke-interface {v0, p0, v1}, Landroidx/appcompat/view/b$a;->a(Landroidx/appcompat/view/b;Landroid/view/Menu;)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_13

    .line 1064
    iget-object p0, p0, Landroidx/appcompat/app/j$a;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->f()V

    return v0

    :catchall_13
    move-exception v0

    iget-object p0, p0, Landroidx/appcompat/app/j$a;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->f()V

    .line 1065
    throw v0
.end method

.method public final f()Ljava/lang/CharSequence;
    .registers 1

    .line 1096
    iget-object p0, p0, Landroidx/appcompat/app/j$a;->b:Landroidx/appcompat/app/j;

    iget-object p0, p0, Landroidx/appcompat/app/j;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final g()Ljava/lang/CharSequence;
    .registers 1

    .line 1101
    iget-object p0, p0, Landroidx/appcompat/app/j$a;->b:Landroidx/appcompat/app/j;

    iget-object p0, p0, Landroidx/appcompat/app/j;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final h()Z
    .registers 1

    .line 1112
    iget-object p0, p0, Landroidx/appcompat/app/j$a;->b:Landroidx/appcompat/app/j;

    iget-object p0, p0, Landroidx/appcompat/app/j;->e:Landroidx/appcompat/widget/ActionBarContextView;

    .line 1378
    iget-boolean p0, p0, Landroidx/appcompat/widget/ActionBarContextView;->g:Z

    return p0
.end method

.method public final i()Landroid/view/View;
    .registers 2

    .line 1117
    iget-object v0, p0, Landroidx/appcompat/app/j$a;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    iget-object p0, p0, Landroidx/appcompat/app/j$a;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method
