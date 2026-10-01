.class public abstract Landroidx/appcompat/app/a;
.super Ljava/lang/Object;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/a$a;,
        Landroidx/appcompat/app/a$c;,
        Landroidx/appcompat/app/a$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public a(F)V
    .registers 2

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-nez p0, :cond_6

    return-void

    .line 1022
    :cond_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Setting a non-zero elevation is not supported in this action bar configuration."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 2

    return-void
.end method

.method public a(Z)V
    .registers 2

    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public abstract addOnMenuVisibilityListener(Landroidx/appcompat/app/a$b;)V
.end method

.method public b()Landroid/content/Context;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public b(Z)V
    .registers 2

    return-void
.end method

.method public c()V
    .registers 2

    .line 967
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Hide on content scroll is not supported in this action bar configuration."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c(Z)V
    .registers 2

    return-void
.end method

.method public d()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public e()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public f()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public g()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method h()V
    .registers 1

    return-void
.end method

.method public abstract removeOnMenuVisibilityListener(Landroidx/appcompat/app/a$b;)V
.end method
