.class final Landroidx/fragment/app/m;
.super Ljava/lang/Object;
.source "FragmentViewLifecycleOwner.java"

# interfaces
.implements Landroidx/lifecycle/h;


# instance fields
.field a:Landroidx/lifecycle/i;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Landroidx/fragment/app/m;->a:Landroidx/lifecycle/i;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/lifecycle/e;
    .registers 1

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/m;->b()V

    .line 47
    iget-object p0, p0, Landroidx/fragment/app/m;->a:Landroidx/lifecycle/i;

    return-object p0
.end method

.method final a(Landroidx/lifecycle/e$a;)V
    .registers 2

    .line 51
    iget-object p0, p0, Landroidx/fragment/app/m;->a:Landroidx/lifecycle/i;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    return-void
.end method

.method final b()V
    .registers 2

    .line 31
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Landroidx/lifecycle/i;

    if-nez v0, :cond_b

    .line 32
    new-instance v0, Landroidx/lifecycle/i;

    invoke-direct {v0, p0}, Landroidx/lifecycle/i;-><init>(Landroidx/lifecycle/h;)V

    iput-object v0, p0, Landroidx/fragment/app/m;->a:Landroidx/lifecycle/i;

    :cond_b
    return-void
.end method
