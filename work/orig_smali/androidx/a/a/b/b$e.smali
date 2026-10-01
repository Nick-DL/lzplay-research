.class abstract Landroidx/a/a/b/b$e;
.super Ljava/lang/Object;
.source "SafeIterableMap.java"

# interfaces
.implements Landroidx/a/a/b/b$f;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/a/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/a/a/b/b$f<",
        "TK;TV;>;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field a:Landroidx/a/a/b/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/a/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field b:Landroidx/a/a/b/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/a/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/a/a/b/b$c;Landroidx/a/a/b/b$c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/a/a/b/b$c<",
            "TK;TV;>;",
            "Landroidx/a/a/b/b$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p2, p0, Landroidx/a/a/b/b$e;->a:Landroidx/a/a/b/b$c;

    .line 236
    iput-object p1, p0, Landroidx/a/a/b/b$e;->b:Landroidx/a/a/b/b$c;

    return-void
.end method

.method private a()Landroidx/a/a/b/b$c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/a/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Landroidx/a/a/b/b$e;->b:Landroidx/a/a/b/b$c;

    iget-object v1, p0, Landroidx/a/a/b/b$e;->a:Landroidx/a/a/b/b$c;

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Landroidx/a/a/b/b$e;->a:Landroidx/a/a/b/b$c;

    if-nez v0, :cond_b

    goto :goto_12

    .line 266
    :cond_b
    iget-object v0, p0, Landroidx/a/a/b/b$e;->b:Landroidx/a/a/b/b$c;

    invoke-virtual {p0, v0}, Landroidx/a/a/b/b$e;->a(Landroidx/a/a/b/b$c;)Landroidx/a/a/b/b$c;

    move-result-object p0

    return-object p0

    :cond_12
    :goto_12
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method abstract a(Landroidx/a/a/b/b$c;)Landroidx/a/a/b/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/a/a/b/b$c<",
            "TK;TV;>;)",
            "Landroidx/a/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public final a_(Landroidx/a/a/b/b$c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/a/a/b/b$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Landroidx/a/a/b/b$e;->a:Landroidx/a/a/b/b$c;

    if-ne v0, p1, :cond_d

    iget-object v0, p0, Landroidx/a/a/b/b$e;->b:Landroidx/a/a/b/b$c;

    if-ne p1, v0, :cond_d

    const/4 v0, 0x0

    .line 248
    iput-object v0, p0, Landroidx/a/a/b/b$e;->b:Landroidx/a/a/b/b$c;

    .line 249
    iput-object v0, p0, Landroidx/a/a/b/b$e;->a:Landroidx/a/a/b/b$c;

    .line 252
    :cond_d
    iget-object v0, p0, Landroidx/a/a/b/b$e;->a:Landroidx/a/a/b/b$c;

    if-ne v0, p1, :cond_19

    .line 253
    iget-object v0, p0, Landroidx/a/a/b/b$e;->a:Landroidx/a/a/b/b$c;

    invoke-virtual {p0, v0}, Landroidx/a/a/b/b$e;->b(Landroidx/a/a/b/b$c;)Landroidx/a/a/b/b$c;

    move-result-object v0

    iput-object v0, p0, Landroidx/a/a/b/b$e;->a:Landroidx/a/a/b/b$c;

    .line 256
    :cond_19
    iget-object v0, p0, Landroidx/a/a/b/b$e;->b:Landroidx/a/a/b/b$c;

    if-ne v0, p1, :cond_23

    .line 257
    invoke-direct {p0}, Landroidx/a/a/b/b$e;->a()Landroidx/a/a/b/b$c;

    move-result-object p1

    iput-object p1, p0, Landroidx/a/a/b/b$e;->b:Landroidx/a/a/b/b$c;

    :cond_23
    return-void
.end method

.method abstract b(Landroidx/a/a/b/b$c;)Landroidx/a/a/b/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/a/a/b/b$c<",
            "TK;TV;>;)",
            "Landroidx/a/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .registers 1

    .line 241
    iget-object p0, p0, Landroidx/a/a/b/b$e;->b:Landroidx/a/a/b/b$c;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 3

    .line 1271
    iget-object v0, p0, Landroidx/a/a/b/b$e;->b:Landroidx/a/a/b/b$c;

    .line 1272
    invoke-direct {p0}, Landroidx/a/a/b/b$e;->a()Landroidx/a/a/b/b$c;

    move-result-object v1

    iput-object v1, p0, Landroidx/a/a/b/b$e;->b:Landroidx/a/a/b/b$c;

    return-object v0
.end method
