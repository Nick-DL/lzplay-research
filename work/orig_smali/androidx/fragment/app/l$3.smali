.class final Landroidx/fragment/app/l$3;
.super Ljava/lang/Object;
.source "FragmentTransitionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Landroidx/fragment/app/l;


# direct methods
.method constructor <init>(Landroidx/fragment/app/l;Ljava/util/ArrayList;Ljava/util/Map;)V
    .registers 4

    .line 296
    iput-object p1, p0, Landroidx/fragment/app/l$3;->c:Landroidx/fragment/app/l;

    iput-object p2, p0, Landroidx/fragment/app/l$3;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Landroidx/fragment/app/l$3;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 299
    iget-object v0, p0, Landroidx/fragment/app/l$3;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_23

    .line 301
    iget-object v2, p0, Landroidx/fragment/app/l$3;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 302
    invoke-static {v2}, Landroidx/core/e/r;->h(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    .line 303
    iget-object v4, p0, Landroidx/fragment/app/l$3;->b:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 304
    invoke-static {v2, v3}, Landroidx/core/e/r;->a(Landroid/view/View;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_23
    return-void
.end method
