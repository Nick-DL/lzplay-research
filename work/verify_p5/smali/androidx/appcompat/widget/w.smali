.class public final Landroidx/appcompat/widget/w;
.super Ljava/lang/Object;
.source "ResourceManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/w$a;,
        Landroidx/appcompat/widget/w$b;,
        Landroidx/appcompat/widget/w$f;,
        Landroidx/appcompat/widget/w$c;,
        Landroidx/appcompat/widget/w$d;,
        Landroidx/appcompat/widget/w$e;
    }
.end annotation


# static fields
.field private static final a:Landroid/graphics/PorterDuff$Mode;

.field private static b:Landroidx/appcompat/widget/w;

.field private static final c:Landroidx/appcompat/widget/w$c;


# instance fields
.field private d:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Landroidx/b/h<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Landroidx/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Landroidx/appcompat/widget/w$d;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroidx/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/h<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Landroidx/b/d<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private h:Landroid/util/TypedValue;

.field private i:Z

.field private j:Landroidx/appcompat/widget/w$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroidx/appcompat/widget/w;->a:Landroid/graphics/PorterDuff$Mode;

    .line 112
    new-instance v0, Landroidx/appcompat/widget/w$c;

    invoke-direct {v0}, Landroidx/appcompat/widget/w$c;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/w;->c:Landroidx/appcompat/widget/w$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/widget/w;->g:Ljava/util/WeakHashMap;

    return-void
.end method

.method private static a(Landroid/util/TypedValue;)J
    .locals 4

    .line 167
    iget v0, p0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget p0, p0, Landroid/util/TypedValue;->data:I

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private a(I)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 389
    iget-object v0, p0, Landroidx/appcompat/widget/w;->j:Landroidx/appcompat/widget/w$e;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/w;->j:Landroidx/appcompat/widget/w$e;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/w$e;->a(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 3

    const-class v0, Landroidx/appcompat/widget/w;

    monitor-enter v0

    .line 485
    :try_start_0
    sget-object v1, Landroidx/appcompat/widget/w;->c:Landroidx/appcompat/widget/w$c;

    .line 6435
    invoke-static {p0, p1}, Landroidx/appcompat/widget/w$c;->a(ILandroid/graphics/PorterDuff$Mode;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/w$c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PorterDuffColorFilter;

    if-nez v1, :cond_0

    .line 489
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 490
    sget-object v2, Landroidx/appcompat/widget/w;->c:Landroidx/appcompat/widget/w$c;

    .line 6439
    invoke-static {p0, p1}, Landroidx/appcompat/widget/w$c;->a(ILandroid/graphics/PorterDuff$Mode;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0, v1}, Landroidx/appcompat/widget/w$c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 484
    monitor-exit v0

    throw p0
.end method

.method private a(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 200
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/w;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 203
    invoke-static {p4}, Landroidx/appcompat/widget/q;->c(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 204
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 206
    :cond_0
    invoke-static {p4}, Landroidx/core/graphics/drawable/a;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 207
    invoke-static {p4, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 210
    invoke-direct {p0, p2}, Landroidx/appcompat/widget/w;->a(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 212
    invoke-static {p4, p0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 214
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->j:Landroidx/appcompat/widget/w$e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/w;->j:Landroidx/appcompat/widget/w$e;

    invoke-interface {v0, p1, p2, p4}, Landroidx/appcompat/widget/w$e;->a(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 218
    :cond_2
    invoke-virtual {p0, p1, p2, p4}, Landroidx/appcompat/widget/w;->a(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-nez p0, :cond_3

    if-eqz p3, :cond_3

    const/4 p4, 0x0

    :cond_3
    :goto_0
    return-object p4
.end method

.method private declared-synchronized a(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 3

    monitor-enter p0

    .line 315
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/w;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/b/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 317
    monitor-exit p0

    return-object v1

    .line 4109
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2, p3, v1}, Landroidx/b/d;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 320
    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    .line 323
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v2, :cond_1

    .line 325
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 4139
    :cond_1
    :try_start_2
    iget-object p1, v0, Landroidx/b/d;->c:[J

    iget v2, v0, Landroidx/b/d;->e:I

    invoke-static {p1, v2, p2, p3}, Landroidx/b/c;->a([JIJ)I

    move-result p1

    if-ltz p1, :cond_2

    .line 4142
    iget-object p2, v0, Landroidx/b/d;->d:[Ljava/lang/Object;

    aget-object p2, p2, p1

    sget-object p3, Landroidx/b/d;->a:Ljava/lang/Object;

    if-eq p2, p3, :cond_2

    .line 4143
    iget-object p2, v0, Landroidx/b/d;->d:[Ljava/lang/Object;

    sget-object p3, Landroidx/b/d;->a:Ljava/lang/Object;

    aput-object p3, p2, p1

    const/4 p1, 0x1

    .line 4144
    iput-boolean p1, v0, Landroidx/b/d;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 331
    :cond_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    .line 314
    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized a()Landroidx/appcompat/widget/w;
    .locals 4

    const-class v0, Landroidx/appcompat/widget/w;

    monitor-enter v0

    .line 94
    :try_start_0
    sget-object v1, Landroidx/appcompat/widget/w;->b:Landroidx/appcompat/widget/w;

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Landroidx/appcompat/widget/w;

    invoke-direct {v1}, Landroidx/appcompat/widget/w;-><init>()V

    .line 96
    sput-object v1, Landroidx/appcompat/widget/w;->b:Landroidx/appcompat/widget/w;

    .line 1105
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_0

    const-string v2, "vector"

    .line 1106
    new-instance v3, Landroidx/appcompat/widget/w$f;

    invoke-direct {v3}, Landroidx/appcompat/widget/w$f;-><init>()V

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/widget/w;->a(Ljava/lang/String;Landroidx/appcompat/widget/w$d;)V

    const-string v2, "animated-vector"

    .line 1107
    new-instance v3, Landroidx/appcompat/widget/w$b;

    invoke-direct {v3}, Landroidx/appcompat/widget/w$b;-><init>()V

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/widget/w;->a(Ljava/lang/String;Landroidx/appcompat/widget/w$d;)V

    const-string v2, "animated-selector"

    .line 1108
    new-instance v3, Landroidx/appcompat/widget/w$a;

    invoke-direct {v3}, Landroidx/appcompat/widget/w$a;-><init>()V

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/widget/w;->a(Ljava/lang/String;Landroidx/appcompat/widget/w$d;)V

    .line 98
    :cond_0
    sget-object v1, Landroidx/appcompat/widget/w;->b:Landroidx/appcompat/widget/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 93
    monitor-exit v0

    throw v1
.end method

.method static a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/ac;[I)V
    .locals 3

    .line 451
    invoke-static {p0}, Landroidx/appcompat/widget/q;->c(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    const-string p0, "ResourceManagerInternal"

    const-string p1, "Mutated drawable is not the same instance as the input."

    .line 453
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 457
    :cond_0
    iget-boolean v0, p1, Landroidx/appcompat/widget/ac;->d:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Landroidx/appcompat/widget/ac;->c:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 463
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_4

    .line 458
    :cond_2
    :goto_0
    iget-boolean v0, p1, Landroidx/appcompat/widget/ac;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroidx/appcompat/widget/ac;->a:Landroid/content/res/ColorStateList;

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    iget-boolean v2, p1, Landroidx/appcompat/widget/ac;->c:Z

    if-eqz v2, :cond_4

    iget-object p1, p1, Landroidx/appcompat/widget/ac;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    :cond_4
    sget-object p1, Landroidx/appcompat/widget/w;->a:Landroid/graphics/PorterDuff$Mode;

    :goto_2
    if-eqz v0, :cond_6

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 5478
    invoke-virtual {v0, p2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    .line 5479
    invoke-static {p2, p1}, Landroidx/appcompat/widget/w;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    .line 458
    :cond_6
    :goto_3
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 466
    :goto_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-gt p1, p2, :cond_7

    .line 469
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_7
    return-void
.end method

.method private a(Ljava/lang/String;Landroidx/appcompat/widget/w$d;)V
    .locals 1

    .line 367
    iget-object v0, p0, Landroidx/appcompat/widget/w;->e:Landroidx/b/a;

    if-nez v0, :cond_0

    .line 368
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/w;->e:Landroidx/b/a;

    .line 370
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/w;->e:Landroidx/b/a;

    invoke-virtual {p0, p1, p2}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    .locals 2

    monitor-enter p0

    .line 336
    :try_start_0
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 338
    iget-object v0, p0, Landroidx/appcompat/widget/w;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/b/d;

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Landroidx/b/d;

    invoke-direct {v0}, Landroidx/b/d;-><init>()V

    .line 341
    iget-object v1, p0, Landroidx/appcompat/widget/w;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    :cond_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p3, p1}, Landroidx/b/d;->b(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 344
    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 346
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 335
    monitor-exit p0

    throw p1
.end method

.method private c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 9

    .line 229
    iget-object v0, p0, Landroidx/appcompat/widget/w;->e:Landroidx/b/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroidx/appcompat/widget/w;->e:Landroidx/b/a;

    invoke-virtual {v0}, Landroidx/b/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 230
    iget-object v0, p0, Landroidx/appcompat/widget/w;->f:Landroidx/b/h;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Landroidx/appcompat/widget/w;->f:Landroidx/b/h;

    .line 3109
    invoke-virtual {v0, p2, v1}, Landroidx/b/h;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 231
    check-cast v0, Ljava/lang/String;

    const-string v2, "appcompat_skip_skip"

    .line 232
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_2

    iget-object v2, p0, Landroidx/appcompat/widget/w;->e:Landroidx/b/a;

    .line 233
    invoke-virtual {v2, v0}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    return-object v1

    .line 244
    :cond_1
    new-instance v0, Landroidx/b/h;

    invoke-direct {v0}, Landroidx/b/h;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/w;->f:Landroidx/b/h;

    .line 247
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/w;->h:Landroid/util/TypedValue;

    if-nez v0, :cond_3

    .line 248
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/w;->h:Landroid/util/TypedValue;

    .line 250
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/widget/w;->h:Landroid/util/TypedValue;

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    .line 252
    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 254
    invoke-static {v0}, Landroidx/appcompat/widget/w;->a(Landroid/util/TypedValue;)J

    move-result-wide v3

    .line 256
    invoke-direct {p0, p1, v3, v4}, Landroidx/appcompat/widget/w;->a(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_4

    return-object v5

    .line 266
    :cond_4
    iget-object v6, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v6, :cond_9

    iget-object v6, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 269
    :try_start_0
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 270
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 272
    :cond_5
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_6

    if-ne v7, v2, :cond_5

    :cond_6
    if-ne v7, v8, :cond_8

    .line 280
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 282
    iget-object v7, p0, Landroidx/appcompat/widget/w;->f:Landroidx/b/h;

    invoke-virtual {v7, p2, v2}, Landroidx/b/h;->c(ILjava/lang/Object;)V

    .line 285
    iget-object v7, p0, Landroidx/appcompat/widget/w;->e:Landroidx/b/a;

    invoke-virtual {v7, v2}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/w$d;

    if-eqz v2, :cond_7

    .line 288
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    .line 287
    invoke-interface {v2, p1, v1, v6, v7}, Landroidx/appcompat/widget/w$d;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v5, v1

    :cond_7
    if-eqz v5, :cond_9

    .line 292
    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 293
    invoke-direct {p0, p1, v3, v4, v5}, Landroidx/appcompat/widget/w;->a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    goto :goto_0

    .line 277
    :cond_8
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "No start tag found"

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "ResourceManagerInternal"

    const-string v1, "Exception while inflating drawable"

    .line 299
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_0
    if-nez v5, :cond_a

    .line 305
    iget-object p0, p0, Landroidx/appcompat/widget/w;->f:Landroidx/b/h;

    const-string p1, "appcompat_skip_skip"

    invoke-virtual {p0, p2, p1}, Landroidx/b/h;->c(ILjava/lang/Object;)V

    :cond_a
    return-object v5

    :cond_b
    return-object v1
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 132
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/widget/w;->a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 4

    monitor-enter p0

    .line 1497
    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/w;->i:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 1503
    iput-boolean v1, p0, Landroidx/appcompat/widget/w;->i:Z

    .line 1504
    sget v0, Landroidx/appcompat/resources/R$drawable;->abc_vector_test:I

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/w;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1513
    instance-of v3, v0, Landroidx/vectordrawable/a/a/i;

    if-nez v3, :cond_1

    const-string v3, "android.graphics.drawable.VectorDrawable"

    .line 1514
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 1506
    :cond_2
    iput-boolean v2, p0, Landroidx/appcompat/widget/w;->i:Z

    .line 1507
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 139
    :cond_3
    :goto_2
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/w;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_7

    .line 2172
    iget-object v0, p0, Landroidx/appcompat/widget/w;->h:Landroid/util/TypedValue;

    if-nez v0, :cond_4

    .line 2173
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/w;->h:Landroid/util/TypedValue;

    .line 2175
    :cond_4
    iget-object v0, p0, Landroidx/appcompat/widget/w;->h:Landroid/util/TypedValue;

    .line 2176
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2177
    invoke-static {v0}, Landroidx/appcompat/widget/w;->a(Landroid/util/TypedValue;)J

    move-result-wide v1

    .line 2179
    invoke-direct {p0, p1, v1, v2}, Landroidx/appcompat/widget/w;->a(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_6

    .line 2186
    iget-object v3, p0, Landroidx/appcompat/widget/w;->j:Landroidx/appcompat/widget/w$e;

    if-nez v3, :cond_5

    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    iget-object v3, p0, Landroidx/appcompat/widget/w;->j:Landroidx/appcompat/widget/w$e;

    .line 2187
    invoke-interface {v3, p0, p1, p2}, Landroidx/appcompat/widget/w$e;->a(Landroidx/appcompat/widget/w;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_3
    if-eqz v3, :cond_6

    .line 2190
    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 2192
    invoke-direct {p0, p1, v1, v2, v3}, Landroidx/appcompat/widget/w;->a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    :cond_6
    move-object v0, v3

    :cond_7
    if-nez v0, :cond_8

    .line 144
    invoke-static {p1, p2}, Landroidx/core/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_8
    if-eqz v0, :cond_9

    .line 149
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/w;->a(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_9
    if-eqz v0, :cond_a

    .line 153
    invoke-static {v0}, Landroidx/appcompat/widget/q;->b(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :cond_a
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 136
    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized a(Landroid/content/Context;Landroidx/appcompat/widget/aj;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    .line 351
    :try_start_0
    invoke-direct {p0, p1, p3}, Landroidx/appcompat/widget/w;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 353
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/aj;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 p2, 0x0

    .line 356
    invoke-direct {p0, p1, p3, p2, v0}, Landroidx/appcompat/widget/w;->a(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 358
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 350
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 5

    monitor-enter p0

    .line 159
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/w;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/b/d;

    if-eqz p1, :cond_1

    .line 2440
    iget v0, p1, Landroidx/b/d;->e:I

    .line 2441
    iget-object v1, p1, Landroidx/b/d;->d:[Ljava/lang/Object;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    const/4 v4, 0x0

    .line 2444
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2447
    :cond_0
    iput v2, p1, Landroidx/b/d;->e:I

    .line 2448
    iput-boolean v2, p1, Landroidx/b/d;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 158
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Landroidx/appcompat/widget/w$e;)V
    .locals 0

    monitor-enter p0

    .line 128
    :try_start_0
    iput-object p1, p0, Landroidx/appcompat/widget/w;->j:Landroidx/appcompat/widget/w$e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 127
    monitor-exit p0

    throw p1
.end method

.method final a(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 363
    iget-object v0, p0, Landroidx/appcompat/widget/w;->j:Landroidx/appcompat/widget/w$e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/w;->j:Landroidx/appcompat/widget/w$e;

    invoke-interface {p0, p1, p2, p3}, Landroidx/appcompat/widget/w$e;->b(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method final declared-synchronized b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 3

    monitor-enter p0

    .line 4408
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/w;->d:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4409
    iget-object v0, p0, Landroidx/appcompat/widget/w;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/b/h;

    if-eqz v0, :cond_0

    .line 5109
    invoke-virtual {v0, p2, v1}, Landroidx/b/h;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4410
    check-cast v0, Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_4

    .line 398
    iget-object v0, p0, Landroidx/appcompat/widget/w;->j:Landroidx/appcompat/widget/w$e;

    if-nez v0, :cond_1

    :goto_1
    move-object v0, v1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->j:Landroidx/appcompat/widget/w$e;

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/widget/w$e;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_1

    :goto_2
    if-eqz v0, :cond_4

    .line 5417
    iget-object v1, p0, Landroidx/appcompat/widget/w;->d:Ljava/util/WeakHashMap;

    if-nez v1, :cond_2

    .line 5418
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/widget/w;->d:Ljava/util/WeakHashMap;

    .line 5420
    :cond_2
    iget-object v1, p0, Landroidx/appcompat/widget/w;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/b/h;

    if-nez v1, :cond_3

    .line 5422
    new-instance v1, Landroidx/b/h;

    invoke-direct {v1}, Landroidx/b/h;-><init>()V

    .line 5423
    iget-object v2, p0, Landroidx/appcompat/widget/w;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5425
    :cond_3
    invoke-virtual {v1, p2, v0}, Landroidx/b/h;->c(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    :cond_4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 393
    monitor-exit p0

    throw p1
.end method
