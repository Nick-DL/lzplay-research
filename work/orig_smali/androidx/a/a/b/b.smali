.class public Landroidx/a/a/b/b;
.super Ljava/lang/Object;
.source "SafeIterableMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/a/a/b/b$c;,
        Landroidx/a/a/b/b$f;,
        Landroidx/a/a/b/b$d;,
        Landroidx/a/a/b/b$b;,
        Landroidx/a/a/b/b$a;,
        Landroidx/a/a/b/b$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public b:Landroidx/a/a/b/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/a/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public c:Landroidx/a/a/b/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/a/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public d:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroidx/a/a/b/b$f<",
            "TK;TV;>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public e:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/a/a/b/b;->d:Ljava/util/WeakHashMap;

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Landroidx/a/a/b/b;->e:I

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)Landroidx/a/a/b/b$c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Landroidx/a/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 46
    iget-object p0, p0, Landroidx/a/a/b/b;->b:Landroidx/a/a/b/b$c;

    :goto_2
    if-eqz p0, :cond_f

    .line 48
    iget-object v0, p0, Landroidx/a/a/b/b$c;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 51
    iget-object p0, p0, Landroidx/a/a/b/b$c;->c:Landroidx/a/a/b/b$c;

    goto :goto_2

    :cond_f
    return-object p0
.end method

.method public final a()Landroidx/a/a/b/b$d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/a/a/b/b<",
            "TK;TV;>.d;"
        }
    .end annotation

    .line 160
    new-instance v0, Landroidx/a/a/b/b$d;

    invoke-direct {v0, p0}, Landroidx/a/a/b/b$d;-><init>(Landroidx/a/a/b/b;)V

    .line 161
    iget-object p0, p0, Landroidx/a/a/b/b;->d:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 66
    invoke-virtual {p0, p1}, Landroidx/a/a/b/b;->a(Ljava/lang/Object;)Landroidx/a/a/b/b$c;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 68
    iget-object p0, v0, Landroidx/a/a/b/b$c;->b:Ljava/lang/Object;

    return-object p0

    .line 70
    :cond_9
    invoke-virtual {p0, p1, p2}, Landroidx/a/a/b/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/a/a/b/b$c;

    const/4 p0, 0x0

    return-object p0
.end method

.method protected final b(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/a/a/b/b$c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Landroidx/a/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 75
    new-instance v0, Landroidx/a/a/b/b$c;

    invoke-direct {v0, p1, p2}, Landroidx/a/a/b/b$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    iget p1, p0, Landroidx/a/a/b/b;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/a/a/b/b;->e:I

    .line 77
    iget-object p1, p0, Landroidx/a/a/b/b;->c:Landroidx/a/a/b/b$c;

    if-nez p1, :cond_16

    .line 78
    iput-object v0, p0, Landroidx/a/a/b/b;->b:Landroidx/a/a/b/b$c;

    .line 79
    iget-object p1, p0, Landroidx/a/a/b/b;->b:Landroidx/a/a/b/b$c;

    iput-object p1, p0, Landroidx/a/a/b/b;->c:Landroidx/a/a/b/b$c;

    return-object v0

    .line 83
    :cond_16
    iget-object p1, p0, Landroidx/a/a/b/b;->c:Landroidx/a/a/b/b$c;

    iput-object v0, p1, Landroidx/a/a/b/b$c;->c:Landroidx/a/a/b/b$c;

    .line 84
    iget-object p1, p0, Landroidx/a/a/b/b;->c:Landroidx/a/a/b/b$c;

    iput-object p1, v0, Landroidx/a/a/b/b$c;->d:Landroidx/a/a/b/b$c;

    .line 85
    iput-object v0, p0, Landroidx/a/a/b/b;->c:Landroidx/a/a/b/b$c;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 98
    invoke-virtual {p0, p1}, Landroidx/a/a/b/b;->a(Ljava/lang/Object;)Landroidx/a/a/b/b$c;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    .line 102
    :cond_8
    iget v1, p0, Landroidx/a/a/b/b;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/a/a/b/b;->e:I

    .line 103
    iget-object v1, p0, Landroidx/a/a/b/b;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_30

    .line 104
    iget-object v1, p0, Landroidx/a/a/b/b;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/a/a/b/b$f;

    .line 105
    invoke-interface {v2, p1}, Landroidx/a/a/b/b$f;->a_(Landroidx/a/a/b/b$c;)V

    goto :goto_20

    .line 109
    :cond_30
    iget-object v1, p1, Landroidx/a/a/b/b$c;->d:Landroidx/a/a/b/b$c;

    if-eqz v1, :cond_3b

    .line 110
    iget-object v1, p1, Landroidx/a/a/b/b$c;->d:Landroidx/a/a/b/b$c;

    iget-object v2, p1, Landroidx/a/a/b/b$c;->c:Landroidx/a/a/b/b$c;

    iput-object v2, v1, Landroidx/a/a/b/b$c;->c:Landroidx/a/a/b/b$c;

    goto :goto_3f

    .line 112
    :cond_3b
    iget-object v1, p1, Landroidx/a/a/b/b$c;->c:Landroidx/a/a/b/b$c;

    iput-object v1, p0, Landroidx/a/a/b/b;->b:Landroidx/a/a/b/b$c;

    .line 115
    :goto_3f
    iget-object v1, p1, Landroidx/a/a/b/b$c;->c:Landroidx/a/a/b/b$c;

    if-eqz v1, :cond_4a

    .line 116
    iget-object p0, p1, Landroidx/a/a/b/b$c;->c:Landroidx/a/a/b/b$c;

    iget-object v1, p1, Landroidx/a/a/b/b$c;->d:Landroidx/a/a/b/b$c;

    iput-object v1, p0, Landroidx/a/a/b/b$c;->d:Landroidx/a/a/b/b$c;

    goto :goto_4e

    .line 118
    :cond_4a
    iget-object v1, p1, Landroidx/a/a/b/b$c;->d:Landroidx/a/a/b/b$c;

    iput-object v1, p0, Landroidx/a/a/b/b;->c:Landroidx/a/a/b/b$c;

    .line 121
    :goto_4e
    iput-object v0, p1, Landroidx/a/a/b/b$c;->c:Landroidx/a/a/b/b$c;

    .line 122
    iput-object v0, p1, Landroidx/a/a/b/b$c;->d:Landroidx/a/a/b/b$c;

    .line 123
    iget-object p0, p1, Landroidx/a/a/b/b$c;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 184
    :cond_4
    instance-of v1, p1, Landroidx/a/a/b/b;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 187
    :cond_a
    check-cast p1, Landroidx/a/a/b/b;

    .line 1130
    iget v1, p0, Landroidx/a/a/b/b;->e:I

    .line 2130
    iget v3, p1, Landroidx/a/a/b/b;->e:I

    if-eq v1, v3, :cond_13

    return v2

    .line 191
    :cond_13
    invoke-virtual {p0}, Landroidx/a/a/b/b;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 192
    invoke-virtual {p1}, Landroidx/a/a/b/b;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 193
    :cond_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 194
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 195
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_35

    if-nez v3, :cond_3d

    :cond_35
    if-eqz v1, :cond_1b

    .line 197
    invoke-interface {v1, v3}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    :cond_3d
    return v2

    .line 201
    :cond_3e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_4b

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_4b

    return v0

    :cond_4b
    return v2
.end method

.method public hashCode()I
    .registers 3

    .line 207
    invoke-virtual {p0}, Landroidx/a/a/b/b;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    .line 208
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 209
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_5

    :cond_17
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 140
    new-instance v0, Landroidx/a/a/b/b$a;

    iget-object v1, p0, Landroidx/a/a/b/b;->b:Landroidx/a/a/b/b$c;

    iget-object v2, p0, Landroidx/a/a/b/b;->c:Landroidx/a/a/b/b$c;

    invoke-direct {v0, v1, v2}, Landroidx/a/a/b/b$a;-><init>(Landroidx/a/a/b/b$c;Landroidx/a/a/b/b$c;)V

    .line 141
    iget-object p0, p0, Landroidx/a/a/b/b;->d:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p0}, Landroidx/a/a/b/b;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 219
    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 220
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, ", "

    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_2d
    const-string p0, "]"

    .line 225
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
