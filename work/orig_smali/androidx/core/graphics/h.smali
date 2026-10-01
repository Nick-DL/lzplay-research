.class Landroidx/core/graphics/h;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/h$a;
    }
.end annotation


# instance fields
.field h:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Landroidx/core/content/a/c$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroidx/core/graphics/h;->h:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static a(Landroid/graphics/Typeface;)J
    .registers 5

    const-wide/16 v0, 0x0

    if-nez p0, :cond_5

    return-wide v0

    .line 85
    :cond_5
    :try_start_5
    const-class v2, Landroid/graphics/Typeface;

    const-string v3, "native_instance"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 87
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    .line 88
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_1b} :catch_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_1b} :catch_1c

    return-wide v2

    :catch_1c
    move-exception p0

    const-string v2, "TypefaceCompatBaseImpl"

    const-string v3, "Could not retrieve font from family."

    .line 93
    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v0

    :catch_25
    move-exception p0

    const-string v2, "TypefaceCompatBaseImpl"

    const-string v3, "Could not retrieve font from family."

    .line 90
    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v0
.end method

.method protected static a(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    .registers 3

    .line 114
    invoke-static {p0}, Landroidx/core/graphics/i;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    .line 119
    :cond_8
    :try_start_8
    invoke-static {p0, p1}, Landroidx/core/graphics/i;->a(Ljava/io/File;Ljava/io/InputStream;)Z

    move-result p1
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_c} :catch_23
    .catchall {:try_start_8 .. :try_end_c} :catchall_1e

    if-nez p1, :cond_12

    .line 129
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-object v0

    .line 122
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_1a} :catch_23
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1e

    .line 129
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-object p1

    :catchall_1e
    move-exception p1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    throw p1

    :catch_23
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-object v0
.end method

.method private static a([Ljava/lang/Object;ILandroidx/core/graphics/h$a;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I",
            "Landroidx/core/graphics/h$a<",
            "TT;>;)TT;"
        }
    .end annotation

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_7

    const/16 v0, 0x190

    goto :goto_9

    :cond_7
    const/16 v0, 0x2bc

    :goto_9
    and-int/lit8 p1, p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_11

    move p1, v2

    goto :goto_12

    :cond_11
    move p1, v1

    :goto_12
    const/4 v3, 0x0

    const v4, 0x7fffffff

    .line 67
    array-length v5, p0

    move v6, v4

    move-object v4, v3

    move v3, v1

    :goto_1a
    if-ge v3, v5, :cond_3c

    aget-object v7, p0, v3

    .line 68
    invoke-interface {p2, v7}, Landroidx/core/graphics/h$a;->b(Ljava/lang/Object;)I

    move-result v8

    sub-int/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    .line 69
    invoke-interface {p2, v7}, Landroidx/core/graphics/h$a;->a(Ljava/lang/Object;)Z

    move-result v9

    if-ne v9, p1, :cond_31

    move v9, v1

    goto :goto_32

    :cond_31
    move v9, v2

    :goto_32
    add-int/2addr v8, v9

    if-eqz v4, :cond_37

    if-le v6, v8, :cond_39

    :cond_37
    move-object v4, v7

    move v6, v8

    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_3c
    return-object v4
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .registers 6

    .line 187
    invoke-static {p1}, Landroidx/core/graphics/i;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_8

    return-object p1

    .line 192
    :cond_8
    :try_start_8
    invoke-static {p0, p2, p3}, Landroidx/core/graphics/i;->a(Ljava/io/File;Landroid/content/res/Resources;I)Z

    move-result p2
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_c} :catch_23
    .catchall {:try_start_8 .. :try_end_c} :catchall_1e

    if-nez p2, :cond_12

    .line 202
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-object p1

    .line 195
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_1a} :catch_23
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1e

    .line 202
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-object p2

    :catchall_1e
    move-exception p1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    throw p1

    :catch_23
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-object p1
.end method

.method public a(Landroid/content/Context;Landroidx/core/content/a/c$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .registers 7

    .line 2158
    iget-object v0, p2, Landroidx/core/content/a/c$b;->a:[Landroidx/core/content/a/c$c;

    .line 2153
    new-instance v1, Landroidx/core/graphics/h$2;

    invoke-direct {v1, p0}, Landroidx/core/graphics/h$2;-><init>(Landroidx/core/graphics/h;)V

    invoke-static {v0, p4, v1}, Landroidx/core/graphics/h;->a([Ljava/lang/Object;ILandroidx/core/graphics/h$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/content/a/c$c;

    if-nez v0, :cond_11

    const/4 p0, 0x0

    return-object p0

    .line 3143
    :cond_11
    iget v1, v0, Landroidx/core/content/a/c$c;->f:I

    .line 4123
    iget-object v0, v0, Landroidx/core/content/a/c$c;->a:Ljava/lang/String;

    .line 173
    invoke-static {p1, p3, v1, v0, p4}, Landroidx/core/graphics/c;->a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 4219
    invoke-static {p1}, Landroidx/core/graphics/h;->a(Landroid/graphics/Typeface;)J

    move-result-wide p3

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_2c

    .line 4221
    iget-object p0, p0, Landroidx/core/graphics/h;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    return-object p1
.end method

.method public a(Landroid/content/Context;[Landroidx/core/b/b$b;I)Landroid/graphics/Typeface;
    .registers 6

    .line 137
    array-length v0, p2

    const/4 v1, 0x0

    if-gtz v0, :cond_5

    return-object v1

    .line 140
    :cond_5
    invoke-virtual {p0, p2, p3}, Landroidx/core/graphics/h;->a([Landroidx/core/b/b$b;I)Landroidx/core/b/b$b;

    move-result-object p0

    .line 143
    :try_start_9
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 1358
    iget-object p0, p0, Landroidx/core/b/b$b;->a:Landroid/net/Uri;

    .line 143
    invoke-virtual {p2, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_13} :catch_23
    .catchall {:try_start_9 .. :try_end_13} :catchall_1e

    .line 144
    :try_start_13
    invoke-static {p1, p0}, Landroidx/core/graphics/h;->a(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;

    move-result-object p1
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_17} :catch_24
    .catchall {:try_start_13 .. :try_end_17} :catchall_1b

    .line 148
    invoke-static {p0}, Landroidx/core/graphics/i;->a(Ljava/io/Closeable;)V

    return-object p1

    :catchall_1b
    move-exception p1

    move-object v1, p0

    goto :goto_1f

    :catchall_1e
    move-exception p1

    :goto_1f
    invoke-static {v1}, Landroidx/core/graphics/i;->a(Ljava/io/Closeable;)V

    throw p1

    :catch_23
    move-object p0, v1

    :catch_24
    invoke-static {p0}, Landroidx/core/graphics/i;->a(Ljava/io/Closeable;)V

    return-object v1
.end method

.method protected final a([Landroidx/core/b/b$b;I)Landroidx/core/b/b$b;
    .registers 4

    .line 99
    new-instance v0, Landroidx/core/graphics/h$1;

    invoke-direct {v0, p0}, Landroidx/core/graphics/h$1;-><init>(Landroidx/core/graphics/h;)V

    invoke-static {p1, p2, v0}, Landroidx/core/graphics/h;->a([Ljava/lang/Object;ILandroidx/core/graphics/h$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/core/b/b$b;

    return-object p0
.end method
