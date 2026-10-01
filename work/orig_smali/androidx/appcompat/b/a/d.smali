.class Landroidx/appcompat/b/a/d;
.super Landroidx/appcompat/b/a/b;
.source "StateListDrawable.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedAPI"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/b/a/d$a;
    }
.end annotation


# instance fields
.field private c:Landroidx/appcompat/b/a/d$a;

.field private d:Z


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, v0, v0}, Landroidx/appcompat/b/a/d;-><init>(Landroidx/appcompat/b/a/d$a;Landroid/content/res/Resources;)V

    return-void
.end method

.method constructor <init>(B)V
    .registers 2

    .line 414
    invoke-direct {p0}, Landroidx/appcompat/b/a/b;-><init>()V

    return-void
.end method

.method constructor <init>(Landroidx/appcompat/b/a/d$a;Landroid/content/res/Resources;)V
    .registers 4

    .line 403
    invoke-direct {p0}, Landroidx/appcompat/b/a/b;-><init>()V

    .line 405
    new-instance v0, Landroidx/appcompat/b/a/d$a;

    invoke-direct {v0, p1, p0, p2}, Landroidx/appcompat/b/a/d$a;-><init>(Landroidx/appcompat/b/a/d$a;Landroidx/appcompat/b/a/d;Landroid/content/res/Resources;)V

    .line 406
    invoke-virtual {p0, v0}, Landroidx/appcompat/b/a/d;->a(Landroidx/appcompat/b/a/b$b;)V

    .line 407
    invoke-virtual {p0}, Landroidx/appcompat/b/a/d;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/b/a/d;->onStateChange([I)Z

    return-void
.end method


# virtual methods
.method a()Landroidx/appcompat/b/a/d$a;
    .registers 4

    .line 319
    new-instance v0, Landroidx/appcompat/b/a/d$a;

    iget-object v1, p0, Landroidx/appcompat/b/a/d;->c:Landroidx/appcompat/b/a/d$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroidx/appcompat/b/a/d$a;-><init>(Landroidx/appcompat/b/a/d$a;Landroidx/appcompat/b/a/d;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method a(Landroidx/appcompat/b/a/b$b;)V
    .registers 3

    .line 397
    invoke-super {p0, p1}, Landroidx/appcompat/b/a/b;->a(Landroidx/appcompat/b/a/b$b;)V

    .line 398
    instance-of v0, p1, Landroidx/appcompat/b/a/d$a;

    if-eqz v0, :cond_b

    .line 399
    check-cast p1, Landroidx/appcompat/b/a/d$a;

    iput-object p1, p0, Landroidx/appcompat/b/a/d;->c:Landroidx/appcompat/b/a/d$a;

    :cond_b
    return-void
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 2

    .line 391
    invoke-super {p0, p1}, Landroidx/appcompat/b/a/b;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 392
    invoke-virtual {p0}, Landroidx/appcompat/b/a/d;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/b/a/d;->onStateChange([I)Z

    return-void
.end method

.method synthetic b()Landroidx/appcompat/b/a/b$b;
    .registers 1

    .line 79
    invoke-virtual {p0}, Landroidx/appcompat/b/a/d;->a()Landroidx/appcompat/b/a/d$a;

    move-result-object p0

    return-object p0
.end method

.method public isStateful()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 310
    iget-boolean v0, p0, Landroidx/appcompat/b/a/d;->d:Z

    if-nez v0, :cond_12

    invoke-super {p0}, Landroidx/appcompat/b/a/b;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_12

    .line 311
    iget-object v0, p0, Landroidx/appcompat/b/a/d;->c:Landroidx/appcompat/b/a/d$a;

    invoke-virtual {v0}, Landroidx/appcompat/b/a/d$a;->a()V

    const/4 v0, 0x1

    .line 312
    iput-boolean v0, p0, Landroidx/appcompat/b/a/d;->d:Z

    :cond_12
    return-object p0
.end method

.method protected onStateChange([I)Z
    .registers 4

    .line 113
    invoke-super {p0, p1}, Landroidx/appcompat/b/a/b;->onStateChange([I)Z

    move-result v0

    .line 114
    iget-object v1, p0, Landroidx/appcompat/b/a/d;->c:Landroidx/appcompat/b/a/d$a;

    invoke-virtual {v1, p1}, Landroidx/appcompat/b/a/d$a;->b([I)I

    move-result p1

    if-gez p1, :cond_14

    .line 120
    iget-object p1, p0, Landroidx/appcompat/b/a/d;->c:Landroidx/appcompat/b/a/d$a;

    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {p1, v1}, Landroidx/appcompat/b/a/d$a;->b([I)I

    move-result p1

    .line 122
    :cond_14
    invoke-virtual {p0, p1}, Landroidx/appcompat/b/a/d;->a(I)Z

    move-result p0

    if-nez p0, :cond_1f

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    return p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    return p0
.end method
