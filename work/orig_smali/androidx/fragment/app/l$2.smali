.class final Landroidx/fragment/app/l$2;
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

    .line 237
    iput-object p1, p0, Landroidx/fragment/app/l$2;->c:Landroidx/fragment/app/l;

    iput-object p2, p0, Landroidx/fragment/app/l$2;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Landroidx/fragment/app/l$2;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 240
    iget-object v0, p0, Landroidx/fragment/app/l$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_45

    .line 242
    iget-object v2, p0, Landroidx/fragment/app/l$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 243
    invoke-static {v2}, Landroidx/core/e/r;->h(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 245
    iget-object v4, p0, Landroidx/fragment/app/l$2;->b:Ljava/util/Map;

    .line 1360
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1361
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 1362
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_3f

    :cond_3e
    const/4 v3, 0x0

    .line 246
    :goto_3f
    invoke-static {v2, v3}, Landroidx/core/e/r;->a(Landroid/view/View;Ljava/lang/String;)V

    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_45
    return-void
.end method
