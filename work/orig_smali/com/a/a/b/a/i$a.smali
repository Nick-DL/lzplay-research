.class public final Lcom/a/a/b/a/i$a;
.super Lcom/a/a/r;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/b/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/r<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/b/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/a/a/b/a/i$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/a/a/b/i;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/i<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/a/a/b/a/i$b;",
            ">;)V"
        }
    .end annotation

    .line 201
    invoke-direct {p0}, Lcom/a/a/r;-><init>()V

    .line 202
    iput-object p1, p0, Lcom/a/a/b/a/i$a;->a:Lcom/a/a/b/i;

    .line 203
    iput-object p2, p0, Lcom/a/a/b/a/i$a;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lcom/a/a/d/a;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/a;",
            ")TT;"
        }
    .end annotation

    .line 207
    invoke-virtual {p1}, Lcom/a/a/d/a;->f()Lcom/a/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/a/a/d/b;->NULL:Lcom/a/a/d/b;

    if-ne v0, v1, :cond_d

    .line 208
    invoke-virtual {p1}, Lcom/a/a/d/a;->k()V

    const/4 p0, 0x0

    return-object p0

    .line 212
    :cond_d
    iget-object v0, p0, Lcom/a/a/b/a/i$a;->a:Lcom/a/a/b/i;

    invoke-interface {v0}, Lcom/a/a/b/i;->a()Ljava/lang/Object;

    move-result-object v0

    .line 215
    :try_start_13
    invoke-virtual {p1}, Lcom/a/a/d/a;->c()V

    .line 216
    :goto_16
    invoke-virtual {p1}, Lcom/a/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 217
    invoke-virtual {p1}, Lcom/a/a/d/a;->h()Ljava/lang/String;

    move-result-object v1

    .line 218
    iget-object v2, p0, Lcom/a/a/b/a/i$a;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/a/b/a/i$b;

    if-eqz v1, :cond_33

    .line 219
    iget-boolean v2, v1, Lcom/a/a/b/a/i$b;->j:Z

    if-nez v2, :cond_2f

    goto :goto_33

    .line 222
    :cond_2f
    invoke-virtual {v1, p1, v0}, Lcom/a/a/b/a/i$b;->a(Lcom/a/a/d/a;Ljava/lang/Object;)V

    goto :goto_16

    .line 220
    :cond_33
    :goto_33
    invoke-virtual {p1}, Lcom/a/a/d/a;->o()V
    :try_end_36
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_36} :catch_42
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_36} :catch_3b

    goto :goto_16

    .line 230
    :cond_37
    invoke-virtual {p1}, Lcom/a/a/d/a;->d()V

    return-object v0

    :catch_3b
    move-exception p0

    .line 228
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :catch_42
    move-exception p0

    .line 226
    new-instance p1, Lcom/a/a/p;

    invoke-direct {p1, p0}, Lcom/a/a/p;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final a(Lcom/a/a/d/c;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/c;",
            "TT;)V"
        }
    .end annotation

    if-nez p2, :cond_6

    .line 236
    invoke-virtual {p1}, Lcom/a/a/d/c;->e()Lcom/a/a/d/c;

    return-void

    .line 240
    :cond_6
    invoke-virtual {p1}, Lcom/a/a/d/c;->c()Lcom/a/a/d/c;

    .line 242
    :try_start_9
    iget-object p0, p0, Lcom/a/a/b/a/i$a;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_13
    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/a/i$b;

    .line 243
    invoke-virtual {v0, p2}, Lcom/a/a/b/a/i$b;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 244
    iget-object v1, v0, Lcom/a/a/b/a/i$b;->h:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/a/a/d/c;->a(Ljava/lang/String;)Lcom/a/a/d/c;

    .line 245
    invoke-virtual {v0, p1, p2}, Lcom/a/a/b/a/i$b;->a(Lcom/a/a/d/c;Ljava/lang/Object;)V
    :try_end_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_2d} :catch_32

    goto :goto_13

    .line 251
    :cond_2e
    invoke-virtual {p1}, Lcom/a/a/d/c;->d()Lcom/a/a/d/c;

    return-void

    :catch_32
    move-exception p0

    .line 249
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method
