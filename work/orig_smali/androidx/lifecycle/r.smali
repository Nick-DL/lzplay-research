.class public final Landroidx/lifecycle/r;
.super Ljava/lang/Object;
.source "ViewModelProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/r$b;,
        Landroidx/lifecycle/r$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/lifecycle/r$a;

.field private final b:Landroidx/lifecycle/s;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/s;Landroidx/lifecycle/r$a;)V
    .registers 3

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p2, p0, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/r$a;

    .line 107
    iput-object p1, p0, Landroidx/lifecycle/r;->b:Landroidx/lifecycle/s;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/q;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/q;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Landroidx/lifecycle/r;->b:Landroidx/lifecycle/s;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/s;->a(Ljava/lang/String;)Landroidx/lifecycle/q;

    move-result-object v0

    .line 152
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    return-object v0

    .line 161
    :cond_d
    iget-object p2, p0, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/r$a;

    instance-of p2, p2, Landroidx/lifecycle/r$b;

    if-eqz p2, :cond_1c

    .line 162
    iget-object p2, p0, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/r$a;

    check-cast p2, Landroidx/lifecycle/r$b;

    invoke-virtual {p2}, Landroidx/lifecycle/r$b;->b()Landroidx/lifecycle/q;

    move-result-object p2

    goto :goto_22

    .line 164
    :cond_1c
    iget-object p2, p0, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/r$a;

    invoke-interface {p2}, Landroidx/lifecycle/r$a;->a()Landroidx/lifecycle/q;

    move-result-object p2

    .line 166
    :goto_22
    iget-object p0, p0, Landroidx/lifecycle/r;->b:Landroidx/lifecycle/s;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/s;->a(Ljava/lang/String;Landroidx/lifecycle/q;)V

    return-object p2
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Landroidx/lifecycle/q;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/q;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 126
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    const-string v1, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 130
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroidx/lifecycle/r;->a(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/q;

    move-result-object p0

    return-object p0

    .line 128
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
