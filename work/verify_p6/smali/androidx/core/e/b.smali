.class public abstract Landroidx/core/e/b;
.super Ljava/lang/Object;
.source "ActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/e/b$b;,
        Landroidx/core/e/b$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field public d:Landroidx/core/e/b$a;

.field public e:Landroidx/core/e/b$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Landroidx/core/e/b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract a()Landroid/view/View;
.end method

.method public a(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 0

    .line 170
    invoke-virtual {p0}, Landroidx/core/e/b;->a()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/view/SubMenu;)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/core/e/b$b;)V
    .locals 3

    .line 299
    iget-object v0, p0, Landroidx/core/e/b;->e:Landroidx/core/e/b$b;

    if-eqz v0, :cond_0

    const-string v0, "ActionProvider(support)"

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " instance while it is still in use somewhere else?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_0
    iput-object p1, p0, Landroidx/core/e/b;->e:Landroidx/core/e/b$b;

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 279
    iget-object v0, p0, Landroidx/core/e/b;->d:Landroidx/core/e/b$a;

    if-eqz v0, :cond_0

    .line 280
    iget-object p0, p0, Landroidx/core/e/b;->d:Landroidx/core/e/b$a;

    invoke-interface {p0, p1}, Landroidx/core/e/b$a;->b(Z)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public d()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public e()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
