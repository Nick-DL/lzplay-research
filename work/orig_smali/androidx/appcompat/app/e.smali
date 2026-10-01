.class public Landroidx/appcompat/app/e;
.super Landroid/app/Dialog;
.source "AppCompatDialog.java"

# interfaces
.implements Landroidx/appcompat/app/c;


# instance fields
.field private a:Landroidx/appcompat/app/d;

.field private final b:Landroidx/core/e/d$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 57
    invoke-static {p1, p2}, Landroidx/appcompat/app/e;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 45
    new-instance v0, Landroidx/appcompat/app/e$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/e$1;-><init>(Landroidx/appcompat/app/e;)V

    iput-object v0, p0, Landroidx/appcompat/app/e;->b:Landroidx/core/e/d$a;

    .line 59
    invoke-virtual {p0}, Landroidx/appcompat/app/e;->a()Landroidx/appcompat/app/d;

    move-result-object p0

    .line 61
    invoke-static {p1, p2}, Landroidx/appcompat/app/e;->a(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->a(I)V

    .line 67
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->c()V

    return-void
.end method

.method private static a(Landroid/content/Context;I)I
    .registers 4

    if-nez p1, :cond_13

    .line 178
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v0, Landroidx/appcompat/R$attr;->dialogTheme:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 180
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    :cond_13
    return p1
.end method


# virtual methods
.method public final a()Landroidx/appcompat/app/d;
    .registers 2

    .line 169
    iget-object v0, p0, Landroidx/appcompat/app/e;->a:Landroidx/appcompat/app/d;

    if-nez v0, :cond_a

    .line 170
    invoke-static {p0, p0}, Landroidx/appcompat/app/d;->a(Landroid/app/Dialog;Landroidx/appcompat/app/c;)Landroidx/appcompat/app/d;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/e;->a:Landroidx/appcompat/app/d;

    .line 172
    :cond_a
    iget-object p0, p0, Landroidx/appcompat/app/e;->a:Landroidx/appcompat/app/d;

    return-object p0
.end method

.method final a(Landroid/view/KeyEvent;)Z
    .registers 2

    .line 201
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 129
    invoke-virtual {p0}, Landroidx/appcompat/app/e;->a()Landroidx/appcompat/app/d;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/d;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    .line 206
    invoke-virtual {p0}, Landroidx/appcompat/app/e;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 207
    iget-object v1, p0, Landroidx/appcompat/app/e;->b:Landroidx/core/e/d$a;

    invoke-static {v1, v0, p0, p1}, Landroidx/core/e/d;->a(Landroidx/core/e/d$a;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public findViewById(I)Landroid/view/View;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Landroidx/appcompat/app/e;->a()Landroidx/appcompat/app/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->b(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public invalidateOptionsMenu()V
    .registers 1

    .line 162
    invoke-virtual {p0}, Landroidx/appcompat/app/e;->a()Landroidx/appcompat/app/d;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->i()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 77
    invoke-virtual {p0}, Landroidx/appcompat/app/e;->a()Landroidx/appcompat/app/d;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/d;->k()V

    .line 78
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Landroidx/appcompat/app/e;->a()Landroidx/appcompat/app/d;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->c()V

    return-void
.end method

.method protected onStop()V
    .registers 1

    .line 134
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 135
    invoke-virtual {p0}, Landroidx/appcompat/app/e;->a()Landroidx/appcompat/app/d;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->f()V

    return-void
.end method

.method public setContentView(I)V
    .registers 2

    .line 95
    invoke-virtual {p0}, Landroidx/appcompat/app/e;->a()Landroidx/appcompat/app/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->c(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2

    .line 100
    invoke-virtual {p0}, Landroidx/appcompat/app/e;->a()Landroidx/appcompat/app/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->a(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 105
    invoke-virtual {p0}, Landroidx/appcompat/app/e;->a()Landroidx/appcompat/app/d;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/d;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTitle(I)V
    .registers 3

    .line 123
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 124
    invoke-virtual {p0}, Landroidx/appcompat/app/e;->a()Landroidx/appcompat/app/d;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/e;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/d;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 117
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {p0}, Landroidx/appcompat/app/e;->a()Landroidx/appcompat/app/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
