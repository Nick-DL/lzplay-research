.class public final Landroidx/fragment/app/c;
.super Ljava/lang/Object;
.source "FragmentController.java"


# instance fields
.field final a:Landroidx/fragment/app/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/fragment/app/e<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/fragment/app/e;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/e<",
            "*>;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/e;

    return-void
.end method

.method public static a(Landroidx/fragment/app/e;)Landroidx/fragment/app/c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/e<",
            "*>;)",
            "Landroidx/fragment/app/c;"
        }
    .end annotation

    .line 57
    new-instance v0, Landroidx/fragment/app/c;

    const-string v1, "callbacks == null"

    invoke-static {p0, v1}, Landroidx/core/d/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/e;

    invoke-direct {v0, p0}, Landroidx/fragment/app/c;-><init>(Landroidx/fragment/app/e;)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    .line 134
    iget-object p0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/e;

    iget-object p0, p0, Landroidx/fragment/app/e;->e:Landroidx/fragment/app/g;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/g;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 2

    .line 92
    iget-object p0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/e;

    iget-object p0, p0, Landroidx/fragment/app/e;->e:Landroidx/fragment/app/g;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/g;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public final a()V
    .registers 1

    .line 141
    iget-object p0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/e;

    iget-object p0, p0, Landroidx/fragment/app/e;->e:Landroidx/fragment/app/g;

    invoke-virtual {p0}, Landroidx/fragment/app/g;->k()V

    return-void
.end method

.method public final b()Z
    .registers 1

    .line 446
    iget-object p0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/e;

    iget-object p0, p0, Landroidx/fragment/app/e;->e:Landroidx/fragment/app/g;

    invoke-virtual {p0}, Landroidx/fragment/app/g;->i()Z

    move-result p0

    return p0
.end method
