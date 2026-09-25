.class public final Landroidx/appcompat/view/f;
.super Landroid/view/ActionMode;
.source "SupportActionModeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/f$a;
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Landroidx/appcompat/view/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/b;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 50
    iput-object p1, p0, Landroidx/appcompat/view/f;->a:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 0

    .line 81
    iget-object p0, p0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    invoke-virtual {p0}, Landroidx/appcompat/view/b;->c()V

    return-void
.end method

.method public final getCustomView()Landroid/view/View;
    .locals 0

    .line 111
    iget-object p0, p0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    invoke-virtual {p0}, Landroidx/appcompat/view/b;->i()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getMenu()Landroid/view/Menu;
    .locals 2

    .line 86
    new-instance v0, Landroidx/appcompat/view/menu/o;

    iget-object v1, p0, Landroidx/appcompat/view/f;->a:Landroid/content/Context;

    iget-object p0, p0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    invoke-virtual {p0}, Landroidx/appcompat/view/b;->b()Landroid/view/Menu;

    move-result-object p0

    check-cast p0, Landroidx/core/a/a/a;

    invoke-direct {v0, v1, p0}, Landroidx/appcompat/view/menu/o;-><init>(Landroid/content/Context;Landroidx/core/a/a/a;)V

    return-object v0
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 0

    .line 121
    iget-object p0, p0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    invoke-virtual {p0}, Landroidx/appcompat/view/b;->a()Landroid/view/MenuInflater;

    move-result-object p0

    return-object p0
.end method

.method public final getSubtitle()Ljava/lang/CharSequence;
    .locals 0

    .line 101
    iget-object p0, p0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    invoke-virtual {p0}, Landroidx/appcompat/view/b;->g()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 0

    .line 56
    iget-object p0, p0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    .line 1071
    iget-object p0, p0, Landroidx/appcompat/view/b;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 91
    iget-object p0, p0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    invoke-virtual {p0}, Landroidx/appcompat/view/b;->f()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final getTitleOptionalHint()Z
    .locals 0

    .line 126
    iget-object p0, p0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    .line 2145
    iget-boolean p0, p0, Landroidx/appcompat/view/b;->d:Z

    return p0
.end method

.method public final invalidate()V
    .locals 0

    .line 76
    iget-object p0, p0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    invoke-virtual {p0}, Landroidx/appcompat/view/b;->d()V

    return-void
.end method

.method public final isTitleOptional()Z
    .locals 0

    .line 136
    iget-object p0, p0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    invoke-virtual {p0}, Landroidx/appcompat/view/b;->h()Z

    move-result p0

    return p0
.end method

.method public final setCustomView(Landroid/view/View;)V
    .locals 0

    .line 116
    iget-object p0, p0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/b;->a(Landroid/view/View;)V

    return-void
.end method

.method public final setSubtitle(I)V
    .locals 0

    .line 106
    iget-object p0, p0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/b;->b(I)V

    return-void
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 71
    iget-object p0, p0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/b;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 0

    .line 61
    iget-object p0, p0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    .line 2057
    iput-object p1, p0, Landroidx/appcompat/view/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public final setTitle(I)V
    .locals 0

    .line 96
    iget-object p0, p0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/b;->a(I)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 66
    iget-object p0, p0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/b;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitleOptionalHint(Z)V
    .locals 0

    .line 131
    iget-object p0, p0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/b;->a(Z)V

    return-void
.end method
