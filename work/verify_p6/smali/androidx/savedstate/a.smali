.class public final Landroidx/savedstate/a;
.super Ljava/lang/Object;
.source "SavedStateRegistry.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/savedstate/a$b;,
        Landroidx/savedstate/a$a;
    }
.end annotation


# instance fields
.field a:Landroid/os/Bundle;

.field b:Z

.field c:Z

.field private d:Landroidx/a/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/a/a/b/b<",
            "Ljava/lang/String;",
            "Landroidx/savedstate/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroidx/a/a/b/b;

    invoke-direct {v0}, Landroidx/a/a/b/b;-><init>()V

    iput-object v0, p0, Landroidx/savedstate/a;->d:Landroidx/a/a/b/b;

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Landroidx/savedstate/a;->c:Z

    return-void
.end method


# virtual methods
.method final a(Landroid/os/Bundle;)V
    .locals 3

    .line 220
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 221
    iget-object v1, p0, Landroidx/savedstate/a;->a:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Landroidx/savedstate/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 224
    :cond_0
    iget-object p0, p0, Landroidx/savedstate/a;->d:Landroidx/a/a/b/b;

    .line 225
    invoke-virtual {p0}, Landroidx/a/a/b/b;->a()Landroidx/a/a/b/b$d;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 227
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/savedstate/a$b;

    invoke-interface {v1}, Landroidx/savedstate/a$b;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const-string p0, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    .line 229
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method final a(Landroidx/lifecycle/e;Landroid/os/Bundle;)V
    .locals 1

    .line 190
    iget-boolean v0, p0, Landroidx/savedstate/a;->b:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const-string v0, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    .line 194
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Landroidx/savedstate/a;->a:Landroid/os/Bundle;

    .line 197
    :cond_0
    new-instance p2, Landroidx/savedstate/SavedStateRegistry$1;

    invoke-direct {p2, p0}, Landroidx/savedstate/SavedStateRegistry$1;-><init>(Landroidx/savedstate/a;)V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/g;)V

    const/4 p1, 0x1

    .line 208
    iput-boolean p1, p0, Landroidx/savedstate/a;->b:Z

    return-void

    .line 191
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SavedStateRegistry was already restored."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
