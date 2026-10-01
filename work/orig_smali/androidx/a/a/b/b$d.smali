.class public final Landroidx/a/a/b/b$d;
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
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/a/a/b/b$f<",
        "TK;TV;>;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/a/a/b/b;

.field private b:Landroidx/a/a/b/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/a/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method constructor <init>(Landroidx/a/a/b/b;)V
    .registers 2

    .line 318
    iput-object p1, p0, Landroidx/a/a/b/b$d;->a:Landroidx/a/a/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 316
    iput-boolean p1, p0, Landroidx/a/a/b/b$d;->c:Z

    return-void
.end method


# virtual methods
.method public final a_(Landroidx/a/a/b/b$c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/a/a/b/b$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Landroidx/a/a/b/b$d;->b:Landroidx/a/a/b/b$c;

    if-ne p1, v0, :cond_13

    .line 325
    iget-object p1, p0, Landroidx/a/a/b/b$d;->b:Landroidx/a/a/b/b$c;

    iget-object p1, p1, Landroidx/a/a/b/b$c;->d:Landroidx/a/a/b/b$c;

    iput-object p1, p0, Landroidx/a/a/b/b$d;->b:Landroidx/a/a/b/b$c;

    .line 326
    iget-object p1, p0, Landroidx/a/a/b/b$d;->b:Landroidx/a/a/b/b$c;

    if-nez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    iput-boolean p1, p0, Landroidx/a/a/b/b$d;->c:Z

    :cond_13
    return-void
.end method

.method public final hasNext()Z
    .registers 4

    .line 332
    iget-boolean v0, p0, Landroidx/a/a/b/b$d;->c:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    .line 333
    iget-object p0, p0, Landroidx/a/a/b/b$d;->a:Landroidx/a/a/b/b;

    iget-object p0, p0, Landroidx/a/a/b/b;->b:Landroidx/a/a/b/b$c;

    if-eqz p0, :cond_d

    return v2

    :cond_d
    return v1

    .line 335
    :cond_e
    iget-object v0, p0, Landroidx/a/a/b/b$d;->b:Landroidx/a/a/b/b$c;

    if-eqz v0, :cond_19

    iget-object p0, p0, Landroidx/a/a/b/b$d;->b:Landroidx/a/a/b/b$c;

    iget-object p0, p0, Landroidx/a/a/b/b$c;->c:Landroidx/a/a/b/b$c;

    if-eqz p0, :cond_19

    return v2

    :cond_19
    return v1
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 1340
    iget-boolean v0, p0, Landroidx/a/a/b/b$d;->c:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 1341
    iput-boolean v0, p0, Landroidx/a/a/b/b$d;->c:Z

    .line 1342
    iget-object v0, p0, Landroidx/a/a/b/b$d;->a:Landroidx/a/a/b/b;

    iget-object v0, v0, Landroidx/a/a/b/b;->b:Landroidx/a/a/b/b$c;

    goto :goto_16

    .line 1344
    :cond_c
    iget-object v0, p0, Landroidx/a/a/b/b$d;->b:Landroidx/a/a/b/b$c;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroidx/a/a/b/b$d;->b:Landroidx/a/a/b/b$c;

    iget-object v0, v0, Landroidx/a/a/b/b$c;->c:Landroidx/a/a/b/b$c;

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    iput-object v0, p0, Landroidx/a/a/b/b$d;->b:Landroidx/a/a/b/b$c;

    .line 1346
    iget-object p0, p0, Landroidx/a/a/b/b$d;->b:Landroidx/a/a/b/b$c;

    return-object p0
.end method
