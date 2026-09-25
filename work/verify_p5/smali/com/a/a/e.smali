.class public final Lcom/a/a/e;
.super Ljava/lang/Object;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/e$a;
    }
.end annotation


# static fields
.field private static final r:Lcom/a/a/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/c/a<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/a/a/s;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/a/a/b/d;

.field final c:Lcom/a/a/d;

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/a/a/f<",
            "*>;>;"
        }
    .end annotation
.end field

.field final e:Z

.field final f:Z

.field final g:Z

.field final h:Z

.field final i:Z

.field final j:Z

.field final k:Z

.field final l:Ljava/lang/String;

.field final m:I

.field final n:I

.field final o:Lcom/a/a/q;

.field final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/a/a/s;",
            ">;"
        }
    .end annotation
.end field

.field final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/a/a/s;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Lcom/a/a/c/a<",
            "*>;",
            "Lcom/a/a/e$a<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/a/a/c/a<",
            "*>;",
            "Lcom/a/a/r<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final u:Lcom/a/a/b/c;

.field private final v:Lcom/a/a/b/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lcom/a/a/c/a;->a(Ljava/lang/Class;)Lcom/a/a/c/a;

    move-result-object v0

    sput-object v0, Lcom/a/a/e;->r:Lcom/a/a/c/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 186
    sget-object v1, Lcom/a/a/b/d;->a:Lcom/a/a/b/d;

    sget-object v2, Lcom/a/a/c;->IDENTITY:Lcom/a/a/c;

    .line 187
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lcom/a/a/q;->DEFAULT:Lcom/a/a/q;

    .line 191
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 192
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    move-object v0, p0

    .line 186
    invoke-direct/range {v0 .. v7}, Lcom/a/a/e;-><init>(Lcom/a/a/b/d;Lcom/a/a/d;Ljava/util/Map;Lcom/a/a/q;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Lcom/a/a/b/d;Lcom/a/a/d;Ljava/util/Map;Lcom/a/a/q;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/d;",
            "Lcom/a/a/d;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/a/a/f<",
            "*>;>;",
            "Lcom/a/a/q;",
            "Ljava/util/List<",
            "Lcom/a/a/s;",
            ">;",
            "Ljava/util/List<",
            "Lcom/a/a/s;",
            ">;",
            "Ljava/util/List<",
            "Lcom/a/a/s;",
            ">;)V"
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/a/a/e;->s:Ljava/lang/ThreadLocal;

    .line 127
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/a/a/e;->t:Ljava/util/Map;

    .line 203
    iput-object p1, p0, Lcom/a/a/e;->b:Lcom/a/a/b/d;

    .line 204
    iput-object p2, p0, Lcom/a/a/e;->c:Lcom/a/a/d;

    .line 205
    iput-object p3, p0, Lcom/a/a/e;->d:Ljava/util/Map;

    .line 206
    new-instance v0, Lcom/a/a/b/c;

    invoke-direct {v0, p3}, Lcom/a/a/b/c;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/a/a/e;->u:Lcom/a/a/b/c;

    const/4 p3, 0x0

    .line 207
    iput-boolean p3, p0, Lcom/a/a/e;->e:Z

    .line 208
    iput-boolean p3, p0, Lcom/a/a/e;->f:Z

    .line 209
    iput-boolean p3, p0, Lcom/a/a/e;->g:Z

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lcom/a/a/e;->h:Z

    .line 211
    iput-boolean p3, p0, Lcom/a/a/e;->i:Z

    .line 212
    iput-boolean p3, p0, Lcom/a/a/e;->j:Z

    .line 213
    iput-boolean p3, p0, Lcom/a/a/e;->k:Z

    .line 214
    iput-object p4, p0, Lcom/a/a/e;->o:Lcom/a/a/q;

    const/4 p3, 0x0

    .line 215
    iput-object p3, p0, Lcom/a/a/e;->l:Ljava/lang/String;

    const/4 p3, 0x2

    .line 216
    iput p3, p0, Lcom/a/a/e;->m:I

    .line 217
    iput p3, p0, Lcom/a/a/e;->n:I

    .line 218
    iput-object p5, p0, Lcom/a/a/e;->p:Ljava/util/List;

    .line 219
    iput-object p6, p0, Lcom/a/a/e;->q:Ljava/util/List;

    .line 221
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 224
    sget-object p5, Lcom/a/a/b/a/n;->Y:Lcom/a/a/s;

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object p5, Lcom/a/a/b/a/h;->a:Lcom/a/a/s;

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-interface {p3, p7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 234
    sget-object p5, Lcom/a/a/b/a/n;->D:Lcom/a/a/s;

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object p5, Lcom/a/a/b/a/n;->m:Lcom/a/a/s;

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object p5, Lcom/a/a/b/a/n;->g:Lcom/a/a/s;

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object p5, Lcom/a/a/b/a/n;->i:Lcom/a/a/s;

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object p5, Lcom/a/a/b/a/n;->k:Lcom/a/a/s;

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1366
    sget-object p5, Lcom/a/a/q;->DEFAULT:Lcom/a/a/q;

    if-ne p4, p5, :cond_0

    .line 1367
    sget-object p4, Lcom/a/a/b/a/n;->t:Lcom/a/a/r;

    goto :goto_0

    .line 1369
    :cond_0
    new-instance p4, Lcom/a/a/e$3;

    invoke-direct {p4}, Lcom/a/a/e$3;-><init>()V

    .line 240
    :goto_0
    sget-object p5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class p6, Ljava/lang/Long;

    invoke-static {p5, p6, p4}, Lcom/a/a/b/a/n;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/r;)Lcom/a/a/s;

    move-result-object p5

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object p5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class p6, Ljava/lang/Double;

    .line 2313
    new-instance p7, Lcom/a/a/e$1;

    invoke-direct {p7, p0}, Lcom/a/a/e$1;-><init>(Lcom/a/a/e;)V

    .line 241
    invoke-static {p5, p6, p7}, Lcom/a/a/b/a/n;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/r;)Lcom/a/a/s;

    move-result-object p5

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object p5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class p6, Ljava/lang/Float;

    .line 2337
    new-instance p7, Lcom/a/a/e$2;

    invoke-direct {p7, p0}, Lcom/a/a/e$2;-><init>(Lcom/a/a/e;)V

    .line 243
    invoke-static {p5, p6, p7}, Lcom/a/a/b/a/n;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/r;)Lcom/a/a/s;

    move-result-object p5

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object p5, Lcom/a/a/b/a/n;->x:Lcom/a/a/s;

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object p5, Lcom/a/a/b/a/n;->o:Lcom/a/a/s;

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object p5, Lcom/a/a/b/a/n;->q:Lcom/a/a/s;

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    const-class p5, Ljava/util/concurrent/atomic/AtomicLong;

    .line 2388
    new-instance p6, Lcom/a/a/e$4;

    invoke-direct {p6, p4}, Lcom/a/a/e$4;-><init>(Lcom/a/a/r;)V

    .line 2396
    invoke-virtual {p6}, Lcom/a/a/e$4;->a()Lcom/a/a/r;

    move-result-object p6

    .line 248
    invoke-static {p5, p6}, Lcom/a/a/b/a/n;->a(Ljava/lang/Class;Lcom/a/a/r;)Lcom/a/a/s;

    move-result-object p5

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    const-class p5, Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 2400
    new-instance p6, Lcom/a/a/e$5;

    invoke-direct {p6, p4}, Lcom/a/a/e$5;-><init>(Lcom/a/a/r;)V

    .line 2423
    invoke-virtual {p6}, Lcom/a/a/e$5;->a()Lcom/a/a/r;

    move-result-object p4

    .line 249
    invoke-static {p5, p4}, Lcom/a/a/b/a/n;->a(Ljava/lang/Class;Lcom/a/a/r;)Lcom/a/a/s;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object p4, Lcom/a/a/b/a/n;->s:Lcom/a/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object p4, Lcom/a/a/b/a/n;->z:Lcom/a/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object p4, Lcom/a/a/b/a/n;->F:Lcom/a/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object p4, Lcom/a/a/b/a/n;->H:Lcom/a/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    const-class p4, Ljava/math/BigDecimal;

    sget-object p5, Lcom/a/a/b/a/n;->B:Lcom/a/a/r;

    invoke-static {p4, p5}, Lcom/a/a/b/a/n;->a(Ljava/lang/Class;Lcom/a/a/r;)Lcom/a/a/s;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    const-class p4, Ljava/math/BigInteger;

    sget-object p5, Lcom/a/a/b/a/n;->C:Lcom/a/a/r;

    invoke-static {p4, p5}, Lcom/a/a/b/a/n;->a(Ljava/lang/Class;Lcom/a/a/r;)Lcom/a/a/s;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object p4, Lcom/a/a/b/a/n;->J:Lcom/a/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    sget-object p4, Lcom/a/a/b/a/n;->L:Lcom/a/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object p4, Lcom/a/a/b/a/n;->P:Lcom/a/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    sget-object p4, Lcom/a/a/b/a/n;->R:Lcom/a/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object p4, Lcom/a/a/b/a/n;->W:Lcom/a/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    sget-object p4, Lcom/a/a/b/a/n;->N:Lcom/a/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    sget-object p4, Lcom/a/a/b/a/n;->d:Lcom/a/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    sget-object p4, Lcom/a/a/b/a/c;->a:Lcom/a/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object p4, Lcom/a/a/b/a/n;->U:Lcom/a/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    sget-object p4, Lcom/a/a/b/a/k;->a:Lcom/a/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    sget-object p4, Lcom/a/a/b/a/j;->a:Lcom/a/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    sget-object p4, Lcom/a/a/b/a/n;->S:Lcom/a/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object p4, Lcom/a/a/b/a/a;->a:Lcom/a/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object p4, Lcom/a/a/b/a/n;->b:Lcom/a/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    new-instance p4, Lcom/a/a/b/a/b;

    iget-object p5, p0, Lcom/a/a/e;->u:Lcom/a/a/b/c;

    invoke-direct {p4, p5}, Lcom/a/a/b/a/b;-><init>(Lcom/a/a/b/c;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    new-instance p4, Lcom/a/a/b/a/g;

    iget-object p5, p0, Lcom/a/a/e;->u:Lcom/a/a/b/c;

    invoke-direct {p4, p5}, Lcom/a/a/b/a/g;-><init>(Lcom/a/a/b/c;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance p4, Lcom/a/a/b/a/d;

    iget-object p5, p0, Lcom/a/a/e;->u:Lcom/a/a/b/c;

    invoke-direct {p4, p5}, Lcom/a/a/b/a/d;-><init>(Lcom/a/a/b/c;)V

    iput-object p4, p0, Lcom/a/a/e;->v:Lcom/a/a/b/a/d;

    .line 275
    iget-object p4, p0, Lcom/a/a/e;->v:Lcom/a/a/b/a/d;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    sget-object p4, Lcom/a/a/b/a/n;->Z:Lcom/a/a/s;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance p4, Lcom/a/a/b/a/i;

    iget-object p5, p0, Lcom/a/a/e;->u:Lcom/a/a/b/c;

    iget-object p6, p0, Lcom/a/a/e;->v:Lcom/a/a/b/a/d;

    invoke-direct {p4, p5, p2, p1, p6}, Lcom/a/a/b/a/i;-><init>(Lcom/a/a/b/c;Lcom/a/a/d;Lcom/a/a/b/d;Lcom/a/a/b/a/d;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/a/a/e;->a:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/a/a/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/d/a;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 6333
    iget-boolean v0, p1, Lcom/a/a/d/a;->a:Z

    const/4 v1, 0x1

    .line 7326
    iput-boolean v1, p1, Lcom/a/a/d/a;->a:Z

    .line 923
    :try_start_0
    invoke-virtual {p1}, Lcom/a/a/d/a;->f()Lcom/a/a/d/b;

    const/4 v1, 0x0

    .line 925
    invoke-static {p2}, Lcom/a/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/a/a/c/a;

    move-result-object p2

    .line 926
    invoke-virtual {p0, p2}, Lcom/a/a/e;->a(Lcom/a/a/c/a;)Lcom/a/a/r;

    move-result-object p0

    .line 927
    invoke-virtual {p0, p1}, Lcom/a/a/r;->a(Lcom/a/a/d/a;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8326
    iput-boolean v0, p1, Lcom/a/a/d/a;->a:Z

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 944
    :try_start_1
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AssertionError (GSON 2.8.5): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p0

    .line 942
    new-instance p2, Lcom/a/a/p;

    invoke-direct {p2, p0}, Lcom/a/a/p;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p0

    .line 939
    new-instance p2, Lcom/a/a/p;

    invoke-direct {p2, p0}, Lcom/a/a/p;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_3
    move-exception p0

    if-eqz v1, :cond_0

    .line 9326
    iput-boolean v0, p1, Lcom/a/a/d/a;->a:Z

    const/4 p0, 0x0

    return-object p0

    .line 937
    :cond_0
    :try_start_2
    new-instance p2, Lcom/a/a/p;

    invoke-direct {p2, p0}, Lcom/a/a/p;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10326
    :goto_0
    iput-boolean v0, p1, Lcom/a/a/d/a;->a:Z

    .line 946
    throw p0
.end method

.method static a(D)V
    .locals 2

    .line 358
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 359
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/a/a/c/a;)Lcom/a/a/r;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/c/a<",
            "TT;>;)",
            "Lcom/a/a/r<",
            "TT;>;"
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lcom/a/a/e;->t:Ljava/util/Map;

    if-nez p1, :cond_0

    sget-object v1, Lcom/a/a/e;->r:Lcom/a/a/c/a;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/r;

    if-eqz v0, :cond_1

    return-object v0

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/a/a/e;->s:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 442
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 443
    iget-object v1, p0, Lcom/a/a/e;->s:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 448
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/a/a/e$a;

    if-eqz v2, :cond_3

    return-object v2

    .line 454
    :cond_3
    :try_start_0
    new-instance v2, Lcom/a/a/e$a;

    invoke-direct {v2}, Lcom/a/a/e$a;-><init>()V

    .line 455
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iget-object v3, p0, Lcom/a/a/e;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/a/a/s;

    .line 458
    invoke-interface {v4, p0, p1}, Lcom/a/a/s;->a(Lcom/a/a/e;Lcom/a/a/c/a;)Lcom/a/a/r;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 3001
    iget-object v3, v2, Lcom/a/a/e$a;->a:Lcom/a/a/r;

    if-nez v3, :cond_6

    .line 3004
    iput-object v4, v2, Lcom/a/a/e$a;->a:Lcom/a/a/r;

    .line 461
    iget-object v2, p0, Lcom/a/a/e;->t:Ljava/util/Map;

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 470
    iget-object p0, p0, Lcom/a/a/e;->s:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_5
    return-object v4

    .line 3002
    :cond_6
    :try_start_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 465
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "GSON (2.8.5) cannot handle "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    .line 467
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_8

    .line 470
    iget-object p0, p0, Lcom/a/a/e;->s:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_8
    throw v2
.end method

.method public final a(Lcom/a/a/s;Lcom/a/a/c/a;)Lcom/a/a/r;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/s;",
            "Lcom/a/a/c/a<",
            "TT;>;)",
            "Lcom/a/a/r<",
            "TT;>;"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lcom/a/a/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 529
    iget-object p1, p0, Lcom/a/a/e;->v:Lcom/a/a/b/a/d;

    :cond_0
    const/4 v0, 0x0

    .line 533
    iget-object v1, p0, Lcom/a/a/e;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/a/a/s;

    if-nez v0, :cond_2

    if-ne v2, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 541
    :cond_2
    invoke-interface {v2, p0, p2}, Lcom/a/a/s;->a(Lcom/a/a/e;Lcom/a/a/c/a;)Lcom/a/a/r;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    .line 546
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "GSON cannot serialize "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a(Ljava/lang/Class;)Lcom/a/a/r;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/a/a/r<",
            "TT;>;"
        }
    .end annotation

    .line 556
    invoke-static {p1}, Lcom/a/a/c/a;->a(Ljava/lang/Class;)Lcom/a/a/c/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/a/a/e;->a(Lcom/a/a/c/a;)Lcom/a/a/r;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3840
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 4765
    new-instance p1, Lcom/a/a/d/a;

    invoke-direct {p1, v0}, Lcom/a/a/d/a;-><init>(Ljava/io/Reader;)V

    .line 4766
    iget-boolean v0, p0, Lcom/a/a/e;->j:Z

    .line 5326
    iput-boolean v0, p1, Lcom/a/a/d/a;->a:Z

    .line 3892
    invoke-direct {p0, p1, p2}, Lcom/a/a/e;->a(Lcom/a/a/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 5899
    :try_start_0
    invoke-virtual {p1}, Lcom/a/a/d/a;->f()Lcom/a/a/d/b;

    move-result-object p1

    sget-object v0, Lcom/a/a/d/b;->END_DOCUMENT:Lcom/a/a/d/b;

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 5900
    :cond_1
    new-instance p0, Lcom/a/a/j;

    const-string p1, "JSON document was not fully consumed."

    invoke-direct {p0, p1}, Lcom/a/a/j;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/a/a/d/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 5905
    new-instance p1, Lcom/a/a/j;

    invoke-direct {p1, p0}, Lcom/a/a/j;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 5903
    new-instance p1, Lcom/a/a/p;

    invoke-direct {p1, p0}, Lcom/a/a/p;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 814
    :cond_2
    :goto_0
    invoke-static {p2}, Lcom/a/a/b/j;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/a/a/e;->e:Z

    .line 1025
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",factories:"

    .line 1026
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/a/a/e;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    .line 1027
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/a/a/e;->u:Lcom/a/a/b/c;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 1028
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
