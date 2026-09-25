.class public abstract Landroidx/lifecycle/q;
.super Ljava/lang/Object;
.source "ViewModel.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/q;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Landroidx/lifecycle/q;->b:Z

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method final b()V
    .locals 4

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Landroidx/lifecycle/q;->b:Z

    .line 131
    iget-object v0, p0, Landroidx/lifecycle/q;->a:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Landroidx/lifecycle/q;->a:Ljava/util/Map;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-object v1, p0, Landroidx/lifecycle/q;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1185
    instance-of v3, v2, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 1187
    :try_start_1
    check-cast v2, Ljava/io/Closeable;

    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1189
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 137
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 139
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroidx/lifecycle/q;->a()V

    return-void
.end method
