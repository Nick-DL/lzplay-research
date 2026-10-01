.class public Landroidx/b/e;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(I)V
    .registers 5

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_13

    .line 55
    iput p1, p0, Landroidx/b/e;->c:I

    .line 56
    new-instance p1, Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p1, p0, Landroidx/b/e;->a:Ljava/util/LinkedHashMap;

    return-void

    .line 53
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(I)V
    .registers 4

    .line 171
    :goto_0
    monitor-enter p0

    .line 172
    :try_start_1
    iget v0, p0, Landroidx/b/e;->b:I

    if-ltz v0, :cond_4a

    iget-object v0, p0, Landroidx/b/e;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Landroidx/b/e;->b:I

    if-nez v0, :cond_4a

    .line 177
    :cond_11
    iget v0, p0, Landroidx/b/e;->b:I

    if-le v0, p1, :cond_48

    iget-object v0, p0, Landroidx/b/e;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_48

    .line 181
    :cond_1e
    iget-object v0, p0, Landroidx/b/e;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 182
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 183
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Landroidx/b/e;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget v0, p0, Landroidx/b/e;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/b/e;->b:I

    .line 186
    iget v0, p0, Landroidx/b/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/b/e;->e:I

    .line 187
    monitor-exit p0

    goto :goto_0

    .line 178
    :cond_48
    :goto_48
    monitor-exit p0

    return-void

    .line 173
    :cond_4a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_69
    move-exception p1

    .line 187
    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_1 .. :try_end_6b} :catchall_69

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_1f

    .line 88
    monitor-enter p0

    .line 89
    :try_start_3
    iget-object v0, p0, Landroidx/b/e;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 91
    iget v0, p0, Landroidx/b/e;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/b/e;->f:I

    .line 92
    monitor-exit p0

    return-object p1

    .line 94
    :cond_13
    iget p1, p0, Landroidx/b/e;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/b/e;->g:I

    .line 95
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_1c
    move-exception p1

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1

    .line 84
    :cond_1f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "key == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_29

    if-eqz p2, :cond_29

    .line 143
    monitor-enter p0

    .line 144
    :try_start_5
    iget v0, p0, Landroidx/b/e;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/b/e;->d:I

    .line 145
    iget v0, p0, Landroidx/b/e;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/b/e;->b:I

    .line 146
    iget-object v0, p0, Landroidx/b/e;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 148
    iget p2, p0, Landroidx/b/e;->b:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Landroidx/b/e;->b:I

    .line 150
    :cond_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_26

    .line 156
    iget p2, p0, Landroidx/b/e;->c:I

    invoke-direct {p0, p2}, Landroidx/b/e;->a(I)V

    return-object p1

    :catchall_26
    move-exception p1

    .line 150
    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p1

    .line 139
    :cond_29
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "key == null || value == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .registers 7

    monitor-enter p0

    .line 348
    :try_start_1
    iget v0, p0, Landroidx/b/e;->f:I

    iget v1, p0, Landroidx/b/e;->g:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 349
    iget v2, p0, Landroidx/b/e;->f:I

    mul-int/lit8 v2, v2, 0x64

    div-int v0, v2, v0

    goto :goto_11

    :cond_10
    move v0, v1

    .line 350
    :goto_11
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Landroidx/b/e;->c:I

    .line 351
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    iget v5, p0, Landroidx/b/e;->f:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    iget v5, p0, Landroidx/b/e;->g:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    .line 350
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3f

    monitor-exit p0

    return-object v0

    :catchall_3f
    move-exception v0

    .line 347
    monitor-exit p0

    throw v0
.end method
