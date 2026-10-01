.class public final Landroidx/lifecycle/i;
.super Landroidx/lifecycle/e;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/i$a;
    }
.end annotation


# instance fields
.field private b:Landroidx/a/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/a/a/b/a<",
            "Landroidx/lifecycle/g;",
            "Landroidx/lifecycle/i$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroidx/lifecycle/e$b;

.field private final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/lifecycle/h;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/lifecycle/e$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/h;)V
    .registers 3

    .line 94
    invoke-direct {p0}, Landroidx/lifecycle/e;-><init>()V

    .line 56
    new-instance v0, Landroidx/a/a/b/a;

    invoke-direct {v0}, Landroidx/a/a/b/a;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/i;->b:Landroidx/a/a/b/a;

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Landroidx/lifecycle/i;->e:I

    .line 73
    iput-boolean v0, p0, Landroidx/lifecycle/i;->f:Z

    .line 74
    iput-boolean v0, p0, Landroidx/lifecycle/i;->g:Z

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/i;->h:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/i;->d:Ljava/lang/ref/WeakReference;

    .line 96
    sget-object p1, Landroidx/lifecycle/e$b;->INITIALIZED:Landroidx/lifecycle/e$b;

    iput-object p1, p0, Landroidx/lifecycle/i;->c:Landroidx/lifecycle/e$b;

    return-void
.end method

.method static a(Landroidx/lifecycle/e$b;Landroidx/lifecycle/e$b;)Landroidx/lifecycle/e$b;
    .registers 3

    if-eqz p1, :cond_9

    .line 346
    invoke-virtual {p1, p0}, Landroidx/lifecycle/e$b;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_9

    return-object p1

    :cond_9
    return-object p0
.end method

.method private a(Landroidx/lifecycle/h;)V
    .registers 7

    .line 292
    iget-object v0, p0, Landroidx/lifecycle/i;->b:Landroidx/a/a/b/a;

    .line 293
    invoke-virtual {v0}, Landroidx/a/a/b/a;->a()Landroidx/a/a/b/b$d;

    move-result-object v0

    .line 294
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    iget-boolean v1, p0, Landroidx/lifecycle/i;->g:Z

    if-nez v1, :cond_48

    .line 295
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 296
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/i$a;

    .line 297
    :goto_1c
    iget-object v3, v2, Landroidx/lifecycle/i$a;->a:Landroidx/lifecycle/e$b;

    iget-object v4, p0, Landroidx/lifecycle/i;->c:Landroidx/lifecycle/e$b;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/e$b;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_6

    iget-boolean v3, p0, Landroidx/lifecycle/i;->g:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Landroidx/lifecycle/i;->b:Landroidx/a/a/b/a;

    .line 298
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/a/a/b/a;->c(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 299
    iget-object v3, v2, Landroidx/lifecycle/i$a;->a:Landroidx/lifecycle/e$b;

    invoke-direct {p0, v3}, Landroidx/lifecycle/i;->b(Landroidx/lifecycle/e$b;)V

    .line 300
    iget-object v3, v2, Landroidx/lifecycle/i$a;->a:Landroidx/lifecycle/e$b;

    invoke-static {v3}, Landroidx/lifecycle/i;->c(Landroidx/lifecycle/e$b;)Landroidx/lifecycle/e$a;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroidx/lifecycle/i$a;->a(Landroidx/lifecycle/h;Landroidx/lifecycle/e$a;)V

    .line 301
    invoke-direct {p0}, Landroidx/lifecycle/i;->c()V

    goto :goto_1c

    :cond_48
    return-void
.end method

.method static b(Landroidx/lifecycle/e$a;)Landroidx/lifecycle/e$b;
    .registers 3

    .line 243
    sget-object v0, Landroidx/lifecycle/i$1;->a:[I

    invoke-virtual {p0}, Landroidx/lifecycle/e$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    .line 257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unexpected event value "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :pswitch_1b
    sget-object p0, Landroidx/lifecycle/e$b;->DESTROYED:Landroidx/lifecycle/e$b;

    return-object p0

    .line 251
    :pswitch_1e
    sget-object p0, Landroidx/lifecycle/e$b;->RESUMED:Landroidx/lifecycle/e$b;

    return-object p0

    .line 249
    :pswitch_21
    sget-object p0, Landroidx/lifecycle/e$b;->STARTED:Landroidx/lifecycle/e$b;

    return-object p0

    .line 246
    :pswitch_24
    sget-object p0, Landroidx/lifecycle/e$b;->CREATED:Landroidx/lifecycle/e$b;

    return-object p0

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_24
        :pswitch_24
        :pswitch_21
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
    .end packed-switch
.end method

.method private b(Landroidx/lifecycle/e$b;)V
    .registers 2

    .line 206
    iget-object p0, p0, Landroidx/lifecycle/i;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Landroidx/lifecycle/h;)V
    .registers 8

    .line 307
    iget-object v0, p0, Landroidx/lifecycle/i;->b:Landroidx/a/a/b/a;

    .line 2150
    new-instance v1, Landroidx/a/a/b/b$b;

    iget-object v2, v0, Landroidx/a/a/b/b;->c:Landroidx/a/a/b/b$c;

    iget-object v3, v0, Landroidx/a/a/b/b;->b:Landroidx/a/a/b/b$c;

    invoke-direct {v1, v2, v3}, Landroidx/a/a/b/b$b;-><init>(Landroidx/a/a/b/b$c;Landroidx/a/a/b/b$c;)V

    .line 2151
    iget-object v0, v0, Landroidx/a/a/b/b;->d:Ljava/util/WeakHashMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_81

    iget-boolean v0, p0, Landroidx/lifecycle/i;->g:Z

    if-nez v0, :cond_81

    .line 310
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 311
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/i$a;

    .line 312
    :goto_28
    iget-object v3, v2, Landroidx/lifecycle/i$a;->a:Landroidx/lifecycle/e$b;

    iget-object v4, p0, Landroidx/lifecycle/i;->c:Landroidx/lifecycle/e$b;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/e$b;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_12

    iget-boolean v3, p0, Landroidx/lifecycle/i;->g:Z

    if-nez v3, :cond_12

    iget-object v3, p0, Landroidx/lifecycle/i;->b:Landroidx/a/a/b/a;

    .line 313
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/a/a/b/a;->c(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 314
    iget-object v3, v2, Landroidx/lifecycle/i$a;->a:Landroidx/lifecycle/e$b;

    .line 2261
    sget-object v4, Landroidx/lifecycle/i$1;->b:[I

    invoke-virtual {v3}, Landroidx/lifecycle/e$b;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_82

    .line 2273
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unexpected state value "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2271
    :pswitch_5f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 2269
    :pswitch_65
    sget-object v3, Landroidx/lifecycle/e$a;->ON_PAUSE:Landroidx/lifecycle/e$a;

    goto :goto_6d

    .line 2267
    :pswitch_68
    sget-object v3, Landroidx/lifecycle/e$a;->ON_STOP:Landroidx/lifecycle/e$a;

    goto :goto_6d

    .line 2265
    :pswitch_6b
    sget-object v3, Landroidx/lifecycle/e$a;->ON_DESTROY:Landroidx/lifecycle/e$a;

    .line 315
    :goto_6d
    invoke-static {v3}, Landroidx/lifecycle/i;->b(Landroidx/lifecycle/e$a;)Landroidx/lifecycle/e$b;

    move-result-object v4

    invoke-direct {p0, v4}, Landroidx/lifecycle/i;->b(Landroidx/lifecycle/e$b;)V

    .line 316
    invoke-virtual {v2, p1, v3}, Landroidx/lifecycle/i$a;->a(Landroidx/lifecycle/h;Landroidx/lifecycle/e$a;)V

    .line 317
    invoke-direct {p0}, Landroidx/lifecycle/i;->c()V

    goto :goto_28

    .line 2263
    :pswitch_7b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_81
    return-void

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_7b
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_5f
    .end packed-switch
.end method

.method private b()Z
    .registers 4

    .line 150
    iget-object v0, p0, Landroidx/lifecycle/i;->b:Landroidx/a/a/b/a;

    .line 1130
    iget v0, v0, Landroidx/a/a/b/b;->e:I

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 153
    :cond_8
    iget-object v0, p0, Landroidx/lifecycle/i;->b:Landroidx/a/a/b/a;

    .line 1169
    iget-object v0, v0, Landroidx/a/a/b/b;->b:Landroidx/a/a/b/b$c;

    .line 153
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/i$a;

    iget-object v0, v0, Landroidx/lifecycle/i$a;->a:Landroidx/lifecycle/e$b;

    .line 154
    iget-object v2, p0, Landroidx/lifecycle/i;->b:Landroidx/a/a/b/a;

    .line 1176
    iget-object v2, v2, Landroidx/a/a/b/b;->c:Landroidx/a/a/b/b$c;

    .line 154
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/i$a;

    iget-object v2, v2, Landroidx/lifecycle/i$a;->a:Landroidx/lifecycle/e$b;

    if-ne v0, v2, :cond_27

    .line 155
    iget-object p0, p0, Landroidx/lifecycle/i;->c:Landroidx/lifecycle/e$b;

    if-ne p0, v2, :cond_27

    return v1

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method private static c(Landroidx/lifecycle/e$b;)Landroidx/lifecycle/e$a;
    .registers 3

    .line 277
    sget-object v0, Landroidx/lifecycle/i$1;->b:[I

    invoke-virtual {p0}, Landroidx/lifecycle/e$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    .line 288
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unexpected state value "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :pswitch_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 284
    :pswitch_21
    sget-object p0, Landroidx/lifecycle/e$a;->ON_RESUME:Landroidx/lifecycle/e$a;

    return-object p0

    .line 282
    :pswitch_24
    sget-object p0, Landroidx/lifecycle/e$a;->ON_START:Landroidx/lifecycle/e$a;

    return-object p0

    .line 280
    :pswitch_27
    sget-object p0, Landroidx/lifecycle/e$a;->ON_CREATE:Landroidx/lifecycle/e$a;

    return-object p0

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1b
        :pswitch_27
    .end packed-switch
.end method

.method private c(Landroidx/lifecycle/g;)Landroidx/lifecycle/e$b;
    .registers 5

    .line 159
    iget-object v0, p0, Landroidx/lifecycle/i;->b:Landroidx/a/a/b/a;

    .line 2075
    invoke-virtual {v0, p1}, Landroidx/a/a/b/a;->c(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    .line 2076
    iget-object v0, v0, Landroidx/a/a/b/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/a/a/b/b$c;

    iget-object p1, p1, Landroidx/a/a/b/b$c;->d:Landroidx/a/a/b/b$c;

    goto :goto_15

    :cond_14
    move-object p1, v2

    :goto_15
    if-eqz p1, :cond_20

    .line 161
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/i$a;

    iget-object p1, p1, Landroidx/lifecycle/i$a;->a:Landroidx/lifecycle/e$b;

    goto :goto_21

    :cond_20
    move-object p1, v2

    .line 162
    :goto_21
    iget-object v0, p0, Landroidx/lifecycle/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Landroidx/lifecycle/i;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/lifecycle/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/lifecycle/e$b;

    .line 164
    :cond_3a
    iget-object p0, p0, Landroidx/lifecycle/i;->c:Landroidx/lifecycle/e$b;

    invoke-static {p0, p1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$b;Landroidx/lifecycle/e$b;)Landroidx/lifecycle/e$b;

    move-result-object p0

    invoke-static {p0, v2}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$b;Landroidx/lifecycle/e$b;)Landroidx/lifecycle/e$b;

    move-result-object p0

    return-object p0
.end method

.method private c()V
    .registers 2

    .line 202
    iget-object v0, p0, Landroidx/lifecycle/i;->h:Ljava/util/ArrayList;

    iget-object p0, p0, Landroidx/lifecycle/i;->h:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private d()V
    .registers 4

    .line 325
    iget-object v0, p0, Landroidx/lifecycle/i;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/h;

    if-eqz v0, :cond_4b

    .line 330
    :cond_a
    :goto_a
    invoke-direct {p0}, Landroidx/lifecycle/i;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_48

    .line 331
    iput-boolean v2, p0, Landroidx/lifecycle/i;->g:Z

    .line 333
    iget-object v1, p0, Landroidx/lifecycle/i;->c:Landroidx/lifecycle/e$b;

    iget-object v2, p0, Landroidx/lifecycle/i;->b:Landroidx/a/a/b/a;

    .line 3169
    iget-object v2, v2, Landroidx/a/a/b/b;->b:Landroidx/a/a/b/b$c;

    .line 333
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/i$a;

    iget-object v2, v2, Landroidx/lifecycle/i$a;->a:Landroidx/lifecycle/e$b;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/e$b;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_2a

    .line 334
    invoke-direct {p0, v0}, Landroidx/lifecycle/i;->b(Landroidx/lifecycle/h;)V

    .line 336
    :cond_2a
    iget-object v1, p0, Landroidx/lifecycle/i;->b:Landroidx/a/a/b/a;

    .line 3176
    iget-object v1, v1, Landroidx/a/a/b/b;->c:Landroidx/a/a/b/b$c;

    .line 337
    iget-boolean v2, p0, Landroidx/lifecycle/i;->g:Z

    if-nez v2, :cond_a

    if-eqz v1, :cond_a

    iget-object v2, p0, Landroidx/lifecycle/i;->c:Landroidx/lifecycle/e$b;

    .line 338
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/i$a;

    iget-object v1, v1, Landroidx/lifecycle/i$a;->a:Landroidx/lifecycle/e$b;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/e$b;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_a

    .line 339
    invoke-direct {p0, v0}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/h;)V

    goto :goto_a

    .line 342
    :cond_48
    iput-boolean v2, p0, Landroidx/lifecycle/i;->g:Z

    return-void

    .line 327
    :cond_4b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Landroidx/lifecycle/e$b;
    .registers 1

    .line 239
    iget-object p0, p0, Landroidx/lifecycle/i;->c:Landroidx/lifecycle/e$b;

    return-object p0
.end method

.method public final a(Landroidx/lifecycle/e$a;)V
    .registers 2

    .line 130
    invoke-static {p1}, Landroidx/lifecycle/i;->b(Landroidx/lifecycle/e$a;)Landroidx/lifecycle/e$b;

    move-result-object p1

    .line 131
    invoke-virtual {p0, p1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$b;)V

    return-void
.end method

.method public final a(Landroidx/lifecycle/e$b;)V
    .registers 3

    .line 135
    iget-object v0, p0, Landroidx/lifecycle/i;->c:Landroidx/lifecycle/e$b;

    if-ne v0, p1, :cond_5

    return-void

    .line 138
    :cond_5
    iput-object p1, p0, Landroidx/lifecycle/i;->c:Landroidx/lifecycle/e$b;

    .line 139
    iget-boolean p1, p0, Landroidx/lifecycle/i;->f:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1a

    iget p1, p0, Landroidx/lifecycle/i;->e:I

    if-eqz p1, :cond_11

    goto :goto_1a

    .line 144
    :cond_11
    iput-boolean v0, p0, Landroidx/lifecycle/i;->f:Z

    .line 145
    invoke-direct {p0}, Landroidx/lifecycle/i;->d()V

    const/4 p1, 0x0

    .line 146
    iput-boolean p1, p0, Landroidx/lifecycle/i;->f:Z

    return-void

    .line 140
    :cond_1a
    :goto_1a
    iput-boolean v0, p0, Landroidx/lifecycle/i;->g:Z

    return-void
.end method

.method public final a(Landroidx/lifecycle/g;)V
    .registers 8

    .line 169
    iget-object v0, p0, Landroidx/lifecycle/i;->c:Landroidx/lifecycle/e$b;

    sget-object v1, Landroidx/lifecycle/e$b;->DESTROYED:Landroidx/lifecycle/e$b;

    if-ne v0, v1, :cond_9

    sget-object v0, Landroidx/lifecycle/e$b;->DESTROYED:Landroidx/lifecycle/e$b;

    goto :goto_b

    :cond_9
    sget-object v0, Landroidx/lifecycle/e$b;->INITIALIZED:Landroidx/lifecycle/e$b;

    .line 170
    :goto_b
    new-instance v1, Landroidx/lifecycle/i$a;

    invoke-direct {v1, p1, v0}, Landroidx/lifecycle/i$a;-><init>(Landroidx/lifecycle/g;Landroidx/lifecycle/e$b;)V

    .line 171
    iget-object v0, p0, Landroidx/lifecycle/i;->b:Landroidx/a/a/b/a;

    invoke-virtual {v0, p1, v1}, Landroidx/a/a/b/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/i$a;

    if-eqz v0, :cond_1b

    return-void

    .line 176
    :cond_1b
    iget-object v0, p0, Landroidx/lifecycle/i;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/h;

    if-nez v0, :cond_26

    return-void

    .line 182
    :cond_26
    iget v2, p0, Landroidx/lifecycle/i;->e:I

    const/4 v3, 0x1

    if-nez v2, :cond_32

    iget-boolean v2, p0, Landroidx/lifecycle/i;->f:Z

    if-eqz v2, :cond_30

    goto :goto_32

    :cond_30
    const/4 v2, 0x0

    goto :goto_33

    :cond_32
    :goto_32
    move v2, v3

    .line 183
    :goto_33
    invoke-direct {p0, p1}, Landroidx/lifecycle/i;->c(Landroidx/lifecycle/g;)Landroidx/lifecycle/e$b;

    move-result-object v4

    .line 184
    iget v5, p0, Landroidx/lifecycle/i;->e:I

    add-int/2addr v5, v3

    iput v5, p0, Landroidx/lifecycle/i;->e:I

    .line 185
    :goto_3c
    iget-object v5, v1, Landroidx/lifecycle/i$a;->a:Landroidx/lifecycle/e$b;

    invoke-virtual {v5, v4}, Landroidx/lifecycle/e$b;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_62

    iget-object v4, p0, Landroidx/lifecycle/i;->b:Landroidx/a/a/b/a;

    .line 186
    invoke-virtual {v4, p1}, Landroidx/a/a/b/a;->c(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 187
    iget-object v4, v1, Landroidx/lifecycle/i$a;->a:Landroidx/lifecycle/e$b;

    invoke-direct {p0, v4}, Landroidx/lifecycle/i;->b(Landroidx/lifecycle/e$b;)V

    .line 188
    iget-object v4, v1, Landroidx/lifecycle/i$a;->a:Landroidx/lifecycle/e$b;

    invoke-static {v4}, Landroidx/lifecycle/i;->c(Landroidx/lifecycle/e$b;)Landroidx/lifecycle/e$a;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroidx/lifecycle/i$a;->a(Landroidx/lifecycle/h;Landroidx/lifecycle/e$a;)V

    .line 189
    invoke-direct {p0}, Landroidx/lifecycle/i;->c()V

    .line 191
    invoke-direct {p0, p1}, Landroidx/lifecycle/i;->c(Landroidx/lifecycle/g;)Landroidx/lifecycle/e$b;

    move-result-object v4

    goto :goto_3c

    :cond_62
    if-nez v2, :cond_67

    .line 196
    invoke-direct {p0}, Landroidx/lifecycle/i;->d()V

    .line 198
    :cond_67
    iget p1, p0, Landroidx/lifecycle/i;->e:I

    sub-int/2addr p1, v3

    iput p1, p0, Landroidx/lifecycle/i;->e:I

    return-void
.end method

.method public final b(Landroidx/lifecycle/g;)V
    .registers 2

    .line 223
    iget-object p0, p0, Landroidx/lifecycle/i;->b:Landroidx/a/a/b/a;

    invoke-virtual {p0, p1}, Landroidx/a/a/b/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
