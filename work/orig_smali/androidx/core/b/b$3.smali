.class final Landroidx/core/b/b$3;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Landroidx/core/b/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/b/b;->a(Landroid/content/Context;Landroidx/core/b/a;Landroidx/core/content/a/f$a;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/b/c$a<",
        "Landroidx/core/b/b$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 303
    iput-object p1, p0, Landroidx/core/b/b$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .registers 5

    .line 303
    check-cast p1, Landroidx/core/b/b$c;

    .line 1307
    sget-object v0, Landroidx/core/b/b;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1308
    :try_start_5
    sget-object v1, Landroidx/core/b/b;->c:Landroidx/b/g;

    iget-object v2, p0, Landroidx/core/b/b$3;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_13

    .line 1310
    monitor-exit v0

    return-void

    .line 1312
    :cond_13
    sget-object v2, Landroidx/core/b/b;->c:Landroidx/b/g;

    iget-object p0, p0, Landroidx/core/b/b$3;->a:Ljava/lang/String;

    invoke-virtual {v2, p0}, Landroidx/b/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1313
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_2f

    const/4 p0, 0x0

    .line 1314
    :goto_1c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_2e

    .line 1315
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/b/c$a;

    invoke-interface {v0, p1}, Landroidx/core/b/c$a;->a(Ljava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_1c

    :cond_2e
    return-void

    :catchall_2f
    move-exception p0

    .line 1313
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p0
.end method
