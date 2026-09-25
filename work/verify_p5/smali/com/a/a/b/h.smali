.class public final Lcom/a/a/b/h;
.super Ljava/util/AbstractMap;
.source "LinkedTreeMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/b/h$b;,
        Lcom/a/a/b/h$a;,
        Lcom/a/a/b/h$c;,
        Lcom/a/a/b/h$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field

.field private entrySet:Lcom/a/a/b/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/h<",
            "TK;TV;>.a;"
        }
    .end annotation
.end field

.field final header:Lcom/a/a/b/h$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/h$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private keySet:Lcom/a/a/b/h$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/h<",
            "TK;TV;>.b;"
        }
    .end annotation
.end field

.field modCount:I

.field root:Lcom/a/a/b/h$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/h$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/a/a/b/h$1;

    invoke-direct {v0}, Lcom/a/a/b/h$1;-><init>()V

    sput-object v0, Lcom/a/a/b/h;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    sget-object v0, Lcom/a/a/b/h;->a:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lcom/a/a/b/h;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/a/a/b/h;->size:I

    .line 49
    iput v0, p0, Lcom/a/a/b/h;->modCount:I

    .line 52
    new-instance v0, Lcom/a/a/b/h$d;

    invoke-direct {v0}, Lcom/a/a/b/h$d;-><init>()V

    iput-object v0, p0, Lcom/a/a/b/h;->header:Lcom/a/a/b/h$d;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    sget-object p1, Lcom/a/a/b/h;->a:Ljava/util/Comparator;

    :goto_0
    iput-object p1, p0, Lcom/a/a/b/h;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method private a(Lcom/a/a/b/h$d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/h$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 374
    iget-object v0, p1, Lcom/a/a/b/h$d;->b:Lcom/a/a/b/h$d;

    .line 375
    iget-object v1, p1, Lcom/a/a/b/h$d;->c:Lcom/a/a/b/h$d;

    .line 376
    iget-object v2, v1, Lcom/a/a/b/h$d;->b:Lcom/a/a/b/h$d;

    .line 377
    iget-object v3, v1, Lcom/a/a/b/h$d;->c:Lcom/a/a/b/h$d;

    .line 380
    iput-object v2, p1, Lcom/a/a/b/h$d;->c:Lcom/a/a/b/h$d;

    if-eqz v2, :cond_0

    .line 382
    iput-object p1, v2, Lcom/a/a/b/h$d;->a:Lcom/a/a/b/h$d;

    .line 385
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/a/a/b/h;->a(Lcom/a/a/b/h$d;Lcom/a/a/b/h$d;)V

    .line 388
    iput-object p1, v1, Lcom/a/a/b/h$d;->b:Lcom/a/a/b/h$d;

    .line 389
    iput-object v1, p1, Lcom/a/a/b/h$d;->a:Lcom/a/a/b/h$d;

    const/4 p0, 0x0

    if-eqz v0, :cond_1

    .line 392
    iget v0, v0, Lcom/a/a/b/h$d;->h:I

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    if-eqz v2, :cond_2

    iget v2, v2, Lcom/a/a/b/h$d;->h:I

    goto :goto_1

    :cond_2
    move v2, p0

    :goto_1
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/a/a/b/h$d;->h:I

    .line 394
    iget p1, p1, Lcom/a/a/b/h$d;->h:I

    if-eqz v3, :cond_3

    iget p0, v3, Lcom/a/a/b/h$d;->h:I

    :cond_3
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    iput p0, v1, Lcom/a/a/b/h$d;->h:I

    return-void
.end method

.method private a(Lcom/a/a/b/h$d;Lcom/a/a/b/h$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/h$d<",
            "TK;TV;>;",
            "Lcom/a/a/b/h$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 285
    iget-object v0, p1, Lcom/a/a/b/h$d;->a:Lcom/a/a/b/h$d;

    const/4 v1, 0x0

    .line 286
    iput-object v1, p1, Lcom/a/a/b/h$d;->a:Lcom/a/a/b/h$d;

    if-eqz p2, :cond_0

    .line 288
    iput-object v0, p2, Lcom/a/a/b/h$d;->a:Lcom/a/a/b/h$d;

    :cond_0
    if-eqz v0, :cond_2

    .line 292
    iget-object p0, v0, Lcom/a/a/b/h$d;->b:Lcom/a/a/b/h$d;

    if-ne p0, p1, :cond_1

    .line 293
    iput-object p2, v0, Lcom/a/a/b/h$d;->b:Lcom/a/a/b/h$d;

    return-void

    .line 296
    :cond_1
    iput-object p2, v0, Lcom/a/a/b/h$d;->c:Lcom/a/a/b/h$d;

    return-void

    .line 299
    :cond_2
    iput-object p2, p0, Lcom/a/a/b/h;->root:Lcom/a/a/b/h$d;

    return-void
.end method

.method private a(Lcom/a/a/b/h$d;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/h$d<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_e

    .line 312
    iget-object v0, p1, Lcom/a/a/b/h$d;->b:Lcom/a/a/b/h$d;

    .line 313
    iget-object v1, p1, Lcom/a/a/b/h$d;->c:Lcom/a/a/b/h$d;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 314
    iget v3, v0, Lcom/a/a/b/h$d;->h:I

    goto :goto_1

    :cond_0
    move v3, v2

    :goto_1
    if-eqz v1, :cond_1

    .line 315
    iget v4, v1, Lcom/a/a/b/h$d;->h:I

    goto :goto_2

    :cond_1
    move v4, v2

    :goto_2
    sub-int v5, v3, v4

    const/4 v6, -0x2

    if-ne v5, v6, :cond_6

    .line 319
    iget-object v0, v1, Lcom/a/a/b/h$d;->b:Lcom/a/a/b/h$d;

    .line 320
    iget-object v3, v1, Lcom/a/a/b/h$d;->c:Lcom/a/a/b/h$d;

    if-eqz v3, :cond_2

    .line 321
    iget v3, v3, Lcom/a/a/b/h$d;->h:I

    goto :goto_3

    :cond_2
    move v3, v2

    :goto_3
    if-eqz v0, :cond_3

    .line 322
    iget v2, v0, Lcom/a/a/b/h$d;->h:I

    :cond_3
    sub-int/2addr v2, v3

    const/4 v0, -0x1

    if-eq v2, v0, :cond_5

    if-nez v2, :cond_4

    if-nez p2, :cond_4

    goto :goto_4

    .line 329
    :cond_4
    invoke-direct {p0, v1}, Lcom/a/a/b/h;->b(Lcom/a/a/b/h$d;)V

    .line 330
    invoke-direct {p0, p1}, Lcom/a/a/b/h;->a(Lcom/a/a/b/h$d;)V

    goto :goto_5

    .line 326
    :cond_5
    :goto_4
    invoke-direct {p0, p1}, Lcom/a/a/b/h;->a(Lcom/a/a/b/h$d;)V

    :goto_5
    if-nez p2, :cond_e

    goto :goto_9

    :cond_6
    const/4 v1, 0x2

    const/4 v6, 0x1

    if-ne v5, v1, :cond_b

    .line 337
    iget-object v1, v0, Lcom/a/a/b/h$d;->b:Lcom/a/a/b/h$d;

    .line 338
    iget-object v3, v0, Lcom/a/a/b/h$d;->c:Lcom/a/a/b/h$d;

    if-eqz v3, :cond_7

    .line 339
    iget v3, v3, Lcom/a/a/b/h$d;->h:I

    goto :goto_6

    :cond_7
    move v3, v2

    :goto_6
    if-eqz v1, :cond_8

    .line 340
    iget v2, v1, Lcom/a/a/b/h$d;->h:I

    :cond_8
    sub-int/2addr v2, v3

    if-eq v2, v6, :cond_a

    if-nez v2, :cond_9

    if-nez p2, :cond_9

    goto :goto_7

    .line 347
    :cond_9
    invoke-direct {p0, v0}, Lcom/a/a/b/h;->a(Lcom/a/a/b/h$d;)V

    .line 348
    invoke-direct {p0, p1}, Lcom/a/a/b/h;->b(Lcom/a/a/b/h$d;)V

    goto :goto_8

    .line 344
    :cond_a
    :goto_7
    invoke-direct {p0, p1}, Lcom/a/a/b/h;->b(Lcom/a/a/b/h$d;)V

    :goto_8
    if-nez p2, :cond_e

    goto :goto_9

    :cond_b
    if-nez v5, :cond_c

    add-int/lit8 v3, v3, 0x1

    .line 355
    iput v3, p1, Lcom/a/a/b/h$d;->h:I

    if-eqz p2, :cond_d

    return-void

    .line 362
    :cond_c
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v6

    iput v0, p1, Lcom/a/a/b/h$d;->h:I

    if-eqz p2, :cond_e

    .line 311
    :cond_d
    :goto_9
    iget-object p1, p1, Lcom/a/a/b/h$d;->a:Lcom/a/a/b/h$d;

    goto :goto_0

    :cond_e
    return-void
.end method

.method private b(Lcom/a/a/b/h$d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/h$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 402
    iget-object v0, p1, Lcom/a/a/b/h$d;->b:Lcom/a/a/b/h$d;

    .line 403
    iget-object v1, p1, Lcom/a/a/b/h$d;->c:Lcom/a/a/b/h$d;

    .line 404
    iget-object v2, v0, Lcom/a/a/b/h$d;->b:Lcom/a/a/b/h$d;

    .line 405
    iget-object v3, v0, Lcom/a/a/b/h$d;->c:Lcom/a/a/b/h$d;

    .line 408
    iput-object v3, p1, Lcom/a/a/b/h$d;->b:Lcom/a/a/b/h$d;

    if-eqz v3, :cond_0

    .line 410
    iput-object p1, v3, Lcom/a/a/b/h$d;->a:Lcom/a/a/b/h$d;

    .line 413
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/a/a/b/h;->a(Lcom/a/a/b/h$d;Lcom/a/a/b/h$d;)V

    .line 416
    iput-object p1, v0, Lcom/a/a/b/h$d;->c:Lcom/a/a/b/h$d;

    .line 417
    iput-object v0, p1, Lcom/a/a/b/h$d;->a:Lcom/a/a/b/h$d;

    const/4 p0, 0x0

    if-eqz v1, :cond_1

    .line 420
    iget v1, v1, Lcom/a/a/b/h$d;->h:I

    goto :goto_0

    :cond_1
    move v1, p0

    :goto_0
    if-eqz v3, :cond_2

    iget v3, v3, Lcom/a/a/b/h$d;->h:I

    goto :goto_1

    :cond_2
    move v3, p0

    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/a/a/b/h$d;->h:I

    .line 422
    iget p1, p1, Lcom/a/a/b/h$d;->h:I

    if-eqz v2, :cond_3

    iget p0, v2, Lcom/a/a/b/h$d;->h:I

    :cond_3
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    iput p0, v0, Lcom/a/a/b/h$d;->h:I

    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .line 628
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/a/a/b/h;->root:Lcom/a/a/b/h$d;

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Lcom/a/a/b/h;->size:I

    .line 103
    iget v0, p0, Lcom/a/a/b/h;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/h;->modCount:I

    .line 106
    iget-object p0, p0, Lcom/a/a/b/h;->header:Lcom/a/a/b/h$d;

    .line 107
    iput-object p0, p0, Lcom/a/a/b/h$d;->e:Lcom/a/a/b/h$d;

    iput-object p0, p0, Lcom/a/a/b/h$d;->d:Lcom/a/a/b/h$d;

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lcom/a/a/b/h;->findByObject(Ljava/lang/Object;)Lcom/a/a/b/h$d;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/a/a/b/h;->entrySet:Lcom/a/a/b/h$a;

    if-eqz v0, :cond_0

    return-object v0

    .line 431
    :cond_0
    new-instance v0, Lcom/a/a/b/h$a;

    invoke-direct {v0, p0}, Lcom/a/a/b/h$a;-><init>(Lcom/a/a/b/h;)V

    iput-object v0, p0, Lcom/a/a/b/h;->entrySet:Lcom/a/a/b/h$a;

    return-object v0
.end method

.method final find(Ljava/lang/Object;Z)Lcom/a/a/b/h$d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/a/a/b/h$d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/a/a/b/h;->comparator:Ljava/util/Comparator;

    .line 123
    iget-object v1, p0, Lcom/a/a/b/h;->root:Lcom/a/a/b/h$d;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 129
    sget-object v3, Lcom/a/a/b/h;->a:Ljava/util/Comparator;

    if-ne v0, v3, :cond_0

    move-object v3, p1

    check-cast v3, Ljava/lang/Comparable;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 134
    iget-object v4, v1, Lcom/a/a/b/h$d;->f:Ljava/lang/Object;

    .line 135
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    goto :goto_1

    :cond_1
    iget-object v4, v1, Lcom/a/a/b/h$d;->f:Ljava/lang/Object;

    .line 136
    invoke-interface {v0, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    :goto_1
    if-nez v4, :cond_2

    return-object v1

    :cond_2
    if-gez v4, :cond_3

    .line 144
    iget-object v5, v1, Lcom/a/a/b/h$d;->b:Lcom/a/a/b/h$d;

    goto :goto_2

    :cond_3
    iget-object v5, v1, Lcom/a/a/b/h$d;->c:Lcom/a/a/b/h$d;

    :goto_2
    if-eqz v5, :cond_5

    move-object v1, v5

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :cond_5
    if-nez p2, :cond_6

    return-object v2

    .line 159
    :cond_6
    iget-object p2, p0, Lcom/a/a/b/h;->header:Lcom/a/a/b/h$d;

    const/4 v2, 0x1

    if-nez v1, :cond_9

    .line 163
    sget-object v3, Lcom/a/a/b/h;->a:Ljava/util/Comparator;

    if-ne v0, v3, :cond_8

    instance-of v0, p1, Ljava/lang/Comparable;

    if-eqz v0, :cond_7

    goto :goto_3

    .line 164
    :cond_7
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not Comparable"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 166
    :cond_8
    :goto_3
    new-instance v0, Lcom/a/a/b/h$d;

    iget-object v3, p2, Lcom/a/a/b/h$d;->e:Lcom/a/a/b/h$d;

    invoke-direct {v0, v1, p1, p2, v3}, Lcom/a/a/b/h$d;-><init>(Lcom/a/a/b/h$d;Ljava/lang/Object;Lcom/a/a/b/h$d;Lcom/a/a/b/h$d;)V

    .line 167
    iput-object v0, p0, Lcom/a/a/b/h;->root:Lcom/a/a/b/h$d;

    goto :goto_5

    .line 169
    :cond_9
    new-instance v0, Lcom/a/a/b/h$d;

    iget-object v3, p2, Lcom/a/a/b/h$d;->e:Lcom/a/a/b/h$d;

    invoke-direct {v0, v1, p1, p2, v3}, Lcom/a/a/b/h$d;-><init>(Lcom/a/a/b/h$d;Ljava/lang/Object;Lcom/a/a/b/h$d;Lcom/a/a/b/h$d;)V

    if-gez v4, :cond_a

    .line 171
    iput-object v0, v1, Lcom/a/a/b/h$d;->b:Lcom/a/a/b/h$d;

    goto :goto_4

    .line 173
    :cond_a
    iput-object v0, v1, Lcom/a/a/b/h$d;->c:Lcom/a/a/b/h$d;

    .line 175
    :goto_4
    invoke-direct {p0, v1, v2}, Lcom/a/a/b/h;->a(Lcom/a/a/b/h$d;Z)V

    .line 177
    :goto_5
    iget p1, p0, Lcom/a/a/b/h;->size:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/a/a/b/h;->size:I

    .line 178
    iget p1, p0, Lcom/a/a/b/h;->modCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/a/a/b/h;->modCount:I

    return-object v0
.end method

.method final findByEntry(Ljava/util/Map$Entry;)Lcom/a/a/b/h$d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)",
            "Lcom/a/a/b/h$d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 202
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/b/h;->findByObject(Ljava/lang/Object;)Lcom/a/a/b/h$d;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    .line 203
    iget-object v2, p0, Lcom/a/a/b/h$d;->g:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eq v2, p1, :cond_1

    if-eqz v2, :cond_0

    .line 1208
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-eqz v0, :cond_3

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method final findByObject(Ljava/lang/Object;)Lcom/a/a/b/h$d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/a/a/b/h$d<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 186
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/a/a/b/h;->find(Ljava/lang/Object;Z)Lcom/a/a/b/h$d;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0

    :cond_0
    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 82
    invoke-virtual {p0, p1}, Lcom/a/a/b/h;->findByObject(Ljava/lang/Object;)Lcom/a/a/b/h$d;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 83
    iget-object p0, p0, Lcom/a/a/b/h$d;->g:Ljava/lang/Object;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/a/a/b/h;->keySet:Lcom/a/a/b/h$b;

    if-eqz v0, :cond_0

    return-object v0

    .line 436
    :cond_0
    new-instance v0, Lcom/a/a/b/h$b;

    invoke-direct {v0, p0}, Lcom/a/a/b/h$b;-><init>(Lcom/a/a/b/h;)V

    iput-object v0, p0, Lcom/a/a/b/h;->keySet:Lcom/a/a/b/h$b;

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 94
    invoke-virtual {p0, p1, v0}, Lcom/a/a/b/h;->find(Ljava/lang/Object;Z)Lcom/a/a/b/h$d;

    move-result-object p0

    .line 95
    iget-object p1, p0, Lcom/a/a/b/h$d;->g:Ljava/lang/Object;

    .line 96
    iput-object p2, p0, Lcom/a/a/b/h$d;->g:Ljava/lang/Object;

    return-object p1

    .line 92
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "key == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/a/a/b/h;->removeInternalByKey(Ljava/lang/Object;)Lcom/a/a/b/h$d;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 112
    iget-object p0, p0, Lcom/a/a/b/h$d;->g:Ljava/lang/Object;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method final removeInternal(Lcom/a/a/b/h$d;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/h$d<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 219
    iget-object p2, p1, Lcom/a/a/b/h$d;->e:Lcom/a/a/b/h$d;

    iget-object v0, p1, Lcom/a/a/b/h$d;->d:Lcom/a/a/b/h$d;

    iput-object v0, p2, Lcom/a/a/b/h$d;->d:Lcom/a/a/b/h$d;

    .line 220
    iget-object p2, p1, Lcom/a/a/b/h$d;->d:Lcom/a/a/b/h$d;

    iget-object v0, p1, Lcom/a/a/b/h$d;->e:Lcom/a/a/b/h$d;

    iput-object v0, p2, Lcom/a/a/b/h$d;->e:Lcom/a/a/b/h$d;

    .line 223
    :cond_0
    iget-object p2, p1, Lcom/a/a/b/h$d;->b:Lcom/a/a/b/h$d;

    .line 224
    iget-object v0, p1, Lcom/a/a/b/h$d;->c:Lcom/a/a/b/h$d;

    .line 225
    iget-object v1, p1, Lcom/a/a/b/h$d;->a:Lcom/a/a/b/h$d;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_6

    if-eqz v0, :cond_6

    .line 237
    iget v1, p2, Lcom/a/a/b/h$d;->h:I

    iget v4, v0, Lcom/a/a/b/h$d;->h:I

    if-le v1, v4, :cond_1

    .line 1517
    iget-object v0, p2, Lcom/a/a/b/h$d;->c:Lcom/a/a/b/h$d;

    :goto_0
    move-object v5, v0

    move-object v0, p2

    move-object p2, v5

    if-eqz p2, :cond_2

    .line 1520
    iget-object v0, p2, Lcom/a/a/b/h$d;->c:Lcom/a/a/b/h$d;

    goto :goto_0

    .line 2504
    :cond_1
    :goto_1
    iget-object p2, v0, Lcom/a/a/b/h$d;->b:Lcom/a/a/b/h$d;

    if-nez p2, :cond_5

    .line 238
    :cond_2
    invoke-virtual {p0, v0, v2}, Lcom/a/a/b/h;->removeInternal(Lcom/a/a/b/h$d;Z)V

    .line 241
    iget-object p2, p1, Lcom/a/a/b/h$d;->b:Lcom/a/a/b/h$d;

    if-eqz p2, :cond_3

    .line 243
    iget v1, p2, Lcom/a/a/b/h$d;->h:I

    .line 244
    iput-object p2, v0, Lcom/a/a/b/h$d;->b:Lcom/a/a/b/h$d;

    .line 245
    iput-object v0, p2, Lcom/a/a/b/h$d;->a:Lcom/a/a/b/h$d;

    .line 246
    iput-object v3, p1, Lcom/a/a/b/h$d;->b:Lcom/a/a/b/h$d;

    goto :goto_2

    :cond_3
    move v1, v2

    .line 250
    :goto_2
    iget-object p2, p1, Lcom/a/a/b/h$d;->c:Lcom/a/a/b/h$d;

    if-eqz p2, :cond_4

    .line 252
    iget v2, p2, Lcom/a/a/b/h$d;->h:I

    .line 253
    iput-object p2, v0, Lcom/a/a/b/h$d;->c:Lcom/a/a/b/h$d;

    .line 254
    iput-object v0, p2, Lcom/a/a/b/h$d;->a:Lcom/a/a/b/h$d;

    .line 255
    iput-object v3, p1, Lcom/a/a/b/h$d;->c:Lcom/a/a/b/h$d;

    .line 258
    :cond_4
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    iput p2, v0, Lcom/a/a/b/h$d;->h:I

    .line 259
    invoke-direct {p0, p1, v0}, Lcom/a/a/b/h;->a(Lcom/a/a/b/h$d;Lcom/a/a/b/h$d;)V

    return-void

    :cond_5
    move-object v0, p2

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_7

    .line 262
    invoke-direct {p0, p1, p2}, Lcom/a/a/b/h;->a(Lcom/a/a/b/h$d;Lcom/a/a/b/h$d;)V

    .line 263
    iput-object v3, p1, Lcom/a/a/b/h$d;->b:Lcom/a/a/b/h$d;

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_8

    .line 265
    invoke-direct {p0, p1, v0}, Lcom/a/a/b/h;->a(Lcom/a/a/b/h$d;Lcom/a/a/b/h$d;)V

    .line 266
    iput-object v3, p1, Lcom/a/a/b/h$d;->c:Lcom/a/a/b/h$d;

    goto :goto_3

    .line 268
    :cond_8
    invoke-direct {p0, p1, v3}, Lcom/a/a/b/h;->a(Lcom/a/a/b/h$d;Lcom/a/a/b/h$d;)V

    .line 271
    :goto_3
    invoke-direct {p0, v1, v2}, Lcom/a/a/b/h;->a(Lcom/a/a/b/h$d;Z)V

    .line 272
    iget p1, p0, Lcom/a/a/b/h;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/a/a/b/h;->size:I

    .line 273
    iget p1, p0, Lcom/a/a/b/h;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/a/a/b/h;->modCount:I

    return-void
.end method

.method final removeInternalByKey(Ljava/lang/Object;)Lcom/a/a/b/h$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/a/a/b/h$d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 277
    invoke-virtual {p0, p1}, Lcom/a/a/b/h;->findByObject(Ljava/lang/Object;)Lcom/a/a/b/h$d;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 279
    invoke-virtual {p0, p1, v0}, Lcom/a/a/b/h;->removeInternal(Lcom/a/a/b/h$d;Z)V

    :cond_0
    return-object p1
.end method

.method public final size()I
    .locals 0

    .line 78
    iget p0, p0, Lcom/a/a/b/h;->size:I

    return p0
.end method
