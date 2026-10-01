.class public final Lcom/a/a/b/c;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/a/a/f<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/a/a/b/b/b;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/a/a/f<",
            "*>;>;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Lcom/a/a/b/b/b;->a()Lcom/a/a/b/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/c;->b:Lcom/a/a/b/b/b;

    .line 54
    iput-object p1, p0, Lcom/a/a/b/c;->a:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/Class;)Lcom/a/a/b/i;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/a/a/b/i<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 101
    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_12

    .line 103
    iget-object v0, p0, Lcom/a/a/b/c;->b:Lcom/a/a/b/b/b;

    invoke-virtual {v0, p1}, Lcom/a/a/b/b/b;->a(Ljava/lang/reflect/AccessibleObject;)V

    .line 105
    :cond_12
    new-instance v0, Lcom/a/a/b/c$8;

    invoke-direct {v0, p0, p1}, Lcom/a/a/b/c$8;-><init>(Lcom/a/a/b/c;Ljava/lang/reflect/Constructor;)V
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_17} :catch_18

    return-object v0

    :catch_18
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/a/a/c/a;)Lcom/a/a/b/i;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/c/a<",
            "TT;>;)",
            "Lcom/a/a/b/i<",
            "TT;>;"
        }
    .end annotation

    .line 1101
    iget-object v0, p1, Lcom/a/a/c/a;->b:Ljava/lang/reflect/Type;

    .line 2094
    iget-object p1, p1, Lcom/a/a/c/a;->a:Ljava/lang/Class;

    .line 64
    iget-object v1, p0, Lcom/a/a/b/c;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/a/f;

    if-eqz v1, :cond_14

    .line 66
    new-instance p1, Lcom/a/a/b/c$1;

    invoke-direct {p1, p0, v1, v0}, Lcom/a/a/b/c$1;-><init>(Lcom/a/a/b/c;Lcom/a/a/f;Ljava/lang/reflect/Type;)V

    return-object p1

    .line 75
    :cond_14
    iget-object v1, p0, Lcom/a/a/b/c;->a:Ljava/util/Map;

    .line 76
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/a/f;

    if-eqz v1, :cond_24

    .line 78
    new-instance p1, Lcom/a/a/b/c$7;

    invoke-direct {p1, p0, v1, v0}, Lcom/a/a/b/c$7;-><init>(Lcom/a/a/b/c;Lcom/a/a/f;Ljava/lang/reflect/Type;)V

    return-object p1

    .line 85
    :cond_24
    invoke-direct {p0, p1}, Lcom/a/a/b/c;->a(Ljava/lang/Class;)Lcom/a/a/b/i;

    move-result-object v1

    if-eqz v1, :cond_2b

    return-object v1

    .line 2136
    :cond_2b
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 2137
    const-class v1, Ljava/util/SortedSet;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 2138
    new-instance v1, Lcom/a/a/b/c$9;

    invoke-direct {v1, p0}, Lcom/a/a/b/c$9;-><init>(Lcom/a/a/b/c;)V

    goto/16 :goto_cf

    .line 2143
    :cond_42
    const-class v1, Ljava/util/EnumSet;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 2144
    new-instance v1, Lcom/a/a/b/c$10;

    invoke-direct {v1, p0, v0}, Lcom/a/a/b/c$10;-><init>(Lcom/a/a/b/c;Ljava/lang/reflect/Type;)V

    goto/16 :goto_cf

    .line 2159
    :cond_51
    const-class v1, Ljava/util/Set;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 2160
    new-instance v1, Lcom/a/a/b/c$11;

    invoke-direct {v1, p0}, Lcom/a/a/b/c$11;-><init>(Lcom/a/a/b/c;)V

    goto/16 :goto_cf

    .line 2165
    :cond_60
    const-class v1, Ljava/util/Queue;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 2166
    new-instance v1, Lcom/a/a/b/c$12;

    invoke-direct {v1, p0}, Lcom/a/a/b/c$12;-><init>(Lcom/a/a/b/c;)V

    goto :goto_cf

    .line 2172
    :cond_6e
    new-instance v1, Lcom/a/a/b/c$13;

    invoke-direct {v1, p0}, Lcom/a/a/b/c$13;-><init>(Lcom/a/a/b/c;)V

    goto :goto_cf

    .line 2180
    :cond_74
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_ce

    .line 2181
    const-class v1, Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 2182
    new-instance v1, Lcom/a/a/b/c$14;

    invoke-direct {v1, p0}, Lcom/a/a/b/c$14;-><init>(Lcom/a/a/b/c;)V

    goto :goto_cf

    .line 2187
    :cond_8a
    const-class v1, Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 2188
    new-instance v1, Lcom/a/a/b/c$2;

    invoke-direct {v1, p0}, Lcom/a/a/b/c$2;-><init>(Lcom/a/a/b/c;)V

    goto :goto_cf

    .line 2193
    :cond_98
    const-class v1, Ljava/util/SortedMap;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 2194
    new-instance v1, Lcom/a/a/b/c$3;

    invoke-direct {v1, p0}, Lcom/a/a/b/c$3;-><init>(Lcom/a/a/b/c;)V

    goto :goto_cf

    .line 2199
    :cond_a6
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_c8

    const-class v1, Ljava/lang/String;

    move-object v2, v0

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 2200
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/a/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/a/a/c/a;

    move-result-object v2

    .line 3094
    iget-object v2, v2, Lcom/a/a/c/a;->a:Ljava/lang/Class;

    .line 2199
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_c8

    .line 2201
    new-instance v1, Lcom/a/a/b/c$4;

    invoke-direct {v1, p0}, Lcom/a/a/b/c$4;-><init>(Lcom/a/a/b/c;)V

    goto :goto_cf

    .line 2207
    :cond_c8
    new-instance v1, Lcom/a/a/b/c$5;

    invoke-direct {v1, p0}, Lcom/a/a/b/c$5;-><init>(Lcom/a/a/b/c;)V

    goto :goto_cf

    :cond_ce
    const/4 v1, 0x0

    :goto_cf
    if-eqz v1, :cond_d2

    return-object v1

    .line 3220
    :cond_d2
    new-instance v1, Lcom/a/a/b/c$6;

    invoke-direct {v1, p0, p1, v0}, Lcom/a/a/b/c$6;-><init>(Lcom/a/a/b/c;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 1

    .line 236
    iget-object p0, p0, Lcom/a/a/b/c;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
