.class public Landroidx/core/graphics/f;
.super Landroidx/core/graphics/d;
.source "TypefaceCompatApi26Impl.java"


# instance fields
.field protected final a:Ljava/lang/Class;

.field protected final b:Ljava/lang/reflect/Constructor;

.field protected final c:Ljava/lang/reflect/Method;

.field protected final d:Ljava/lang/reflect/Method;

.field protected final e:Ljava/lang/reflect/Method;

.field protected final f:Ljava/lang/reflect/Method;

.field protected final g:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .registers 14

    .line 74
    invoke-direct {p0}, Landroidx/core/graphics/d;-><init>()V

    const/4 v0, 0x0

    :try_start_4
    const-string v1, "android.graphics.FontFamily"

    .line 1317
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    .line 1321
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const-string v4, "addFontFromAssetManager"

    const/16 v5, 0x8

    .line 1326
    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Landroid/content/res/AssetManager;

    aput-object v6, v5, v2

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v6, v5, v9

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x4

    aput-object v6, v5, v10

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x5

    aput-object v6, v5, v11

    const/4 v6, 0x6

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v5, v6

    const/4 v6, 0x7

    const-class v12, [Landroid/graphics/fonts/FontVariationAxis;

    aput-object v12, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v5, "addFontFromBuffer"

    .line 1332
    new-array v6, v11, [Ljava/lang/Class;

    const-class v11, Ljava/nio/ByteBuffer;

    aput-object v11, v6, v2

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v6, v7

    const-class v7, [Landroid/graphics/fonts/FontVariationAxis;

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v9

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v10

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v6, "freeze"

    .line 1338
    new-array v7, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const-string v7, "abortCreation"

    .line 1342
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v7, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 89
    invoke-virtual {p0, v1}, Landroidx/core/graphics/f;->a(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7
    :try_end_72
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_72} :catch_74
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_72} :catch_74

    move-object v0, v1

    goto :goto_96

    :catch_74
    move-exception v1

    const-string v2, "TypefaceCompatApi26Impl"

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to collect necessary methods for class "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    .line 101
    :goto_96
    iput-object v0, p0, Landroidx/core/graphics/f;->a:Ljava/lang/Class;

    .line 102
    iput-object v3, p0, Landroidx/core/graphics/f;->b:Ljava/lang/reflect/Constructor;

    .line 103
    iput-object v4, p0, Landroidx/core/graphics/f;->c:Ljava/lang/reflect/Method;

    .line 104
    iput-object v5, p0, Landroidx/core/graphics/f;->d:Ljava/lang/reflect/Method;

    .line 105
    iput-object v6, p0, Landroidx/core/graphics/f;->e:Ljava/lang/reflect/Method;

    .line 106
    iput-object v2, p0, Landroidx/core/graphics/f;->f:Ljava/lang/reflect/Method;

    .line 107
    iput-object v7, p0, Landroidx/core/graphics/f;->g:Ljava/lang/reflect/Method;

    return-void
.end method

.method private a()Z
    .registers 3

    .line 114
    iget-object v0, p0, Landroidx/core/graphics/f;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_b

    const-string v0, "TypefaceCompatApi26Impl"

    const-string v1, "Unable to collect necessary private methods. Fallback to legacy implementation."

    .line 115
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_b
    iget-object p0, p0, Landroidx/core/graphics/f;->c:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method private a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III[Landroid/graphics/fonts/FontVariationAxis;)Z
    .registers 10

    const/4 v0, 0x0

    .line 140
    :try_start_1
    iget-object p0, p0, Landroidx/core/graphics/f;->c:Ljava/lang/reflect/Method;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    aput-object p1, v1, v0

    const/4 p1, 0x1

    aput-object p3, v1, p1

    const/4 p1, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p1

    const/4 p1, 0x3

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p3, v1, p1

    const/4 p1, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p1

    const/4 p1, 0x5

    .line 142
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p1

    const/4 p1, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p1

    const/4 p1, 0x7

    aput-object p7, v1, p1

    .line 140
    invoke-virtual {p0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_3e
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_3e} :catch_3f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_3e} :catch_3f

    return p0

    :catch_3f
    return v0
.end method

.method private a(Ljava/lang/Object;Ljava/nio/ByteBuffer;III)Z
    .registers 8

    const/4 v0, 0x0

    .line 155
    :try_start_1
    iget-object p0, p0, Landroidx/core/graphics/f;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const/4 p2, 0x1

    .line 156
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p2

    const/4 p2, 0x2

    const/4 p3, 0x0

    aput-object p3, v1, p2

    const/4 p2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p2

    const/4 p2, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p2

    .line 155
    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_2b} :catch_2c

    return p0

    :catch_2c
    return v0
.end method

.method private b()Ljava/lang/Object;
    .registers 2

    .line 127
    :try_start_0
    iget-object p0, p0, Landroidx/core/graphics/f;->b:Ljava/lang/reflect/Constructor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    const/4 p0, 0x0

    return-object p0
.end method

.method private b(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    .line 183
    :try_start_1
    iget-object p0, p0, Landroidx/core/graphics/f;->e:Ljava/lang/reflect/Method;

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_f} :catch_10
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_f} :catch_10

    return p0

    :catch_10
    return v0
.end method

.method private c(Ljava/lang/Object;)V
    .registers 3

    .line 194
    :try_start_0
    iget-object p0, p0, Landroidx/core/graphics/f;->f:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .registers 14

    .line 292
    invoke-direct {p0}, Landroidx/core/graphics/f;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 293
    invoke-super/range {p0 .. p5}, Landroidx/core/graphics/d;->a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 295
    :cond_b
    invoke-direct {p0}, Landroidx/core/graphics/f;->b()Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x0

    if-nez p2, :cond_13

    return-object p3

    :cond_13
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    .line 299
    invoke-direct/range {v0 .. v7}, Landroidx/core/graphics/f;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III[Landroid/graphics/fonts/FontVariationAxis;)Z

    move-result p1

    if-nez p1, :cond_25

    .line 302
    invoke-direct {p0, p2}, Landroidx/core/graphics/f;->c(Ljava/lang/Object;)V

    return-object p3

    .line 305
    :cond_25
    invoke-direct {p0, p2}, Landroidx/core/graphics/f;->b(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    return-object p3

    .line 308
    :cond_2c
    invoke-virtual {p0, p2}, Landroidx/core/graphics/f;->a(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public final a(Landroid/content/Context;Landroidx/core/content/a/c$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .registers 15

    .line 204
    invoke-direct {p0}, Landroidx/core/graphics/f;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 205
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/core/graphics/d;->a(Landroid/content/Context;Landroidx/core/content/a/c$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 207
    :cond_b
    invoke-direct {p0}, Landroidx/core/graphics/f;->b()Ljava/lang/Object;

    move-result-object p3

    const/4 p4, 0x0

    if-nez p3, :cond_13

    return-object p4

    .line 2158
    :cond_13
    iget-object p2, p2, Landroidx/core/content/a/c$b;->a:[Landroidx/core/content/a/c$c;

    .line 211
    array-length v8, p2

    const/4 v0, 0x0

    move v9, v0

    :goto_18
    if-ge v9, v8, :cond_3a

    aget-object v0, p2, v9

    .line 3123
    iget-object v3, v0, Landroidx/core/content/a/c$c;->a:Ljava/lang/String;

    .line 3139
    iget v4, v0, Landroidx/core/content/a/c$c;->e:I

    .line 4127
    iget v5, v0, Landroidx/core/content/a/c$c;->b:I

    .line 4131
    iget-boolean v6, v0, Landroidx/core/content/a/c$c;->c:Z

    .line 4135
    iget-object v0, v0, Landroidx/core/content/a/c$c;->d:Ljava/lang/String;

    .line 214
    invoke-static {v0}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    .line 212
    invoke-direct/range {v0 .. v7}, Landroidx/core/graphics/f;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III[Landroid/graphics/fonts/FontVariationAxis;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 215
    invoke-direct {p0, p3}, Landroidx/core/graphics/f;->c(Ljava/lang/Object;)V

    return-object p4

    :cond_37
    add-int/lit8 v9, v9, 0x1

    goto :goto_18

    .line 219
    :cond_3a
    invoke-direct {p0, p3}, Landroidx/core/graphics/f;->b(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_41

    return-object p4

    .line 222
    :cond_41
    invoke-virtual {p0, p3}, Landroidx/core/graphics/f;->a(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public final a(Landroid/content/Context;[Landroidx/core/b/b$b;I)Landroid/graphics/Typeface;
    .registers 15

    .line 230
    array-length v0, p2

    const/4 v1, 0x0

    if-gtz v0, :cond_5

    return-object v1

    .line 233
    :cond_5
    invoke-direct {p0}, Landroidx/core/graphics/f;->a()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 236
    invoke-virtual {p0, p2, p3}, Landroidx/core/graphics/f;->a([Landroidx/core/b/b$b;I)Landroidx/core/b/b$b;

    move-result-object p0

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 4358
    :try_start_13
    iget-object p2, p0, Landroidx/core/b/b$b;->a:Landroid/net/Uri;

    const-string p3, "r"

    .line 239
    invoke-virtual {p1, p2, p3, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    if-nez p1, :cond_23

    if-eqz p1, :cond_22

    .line 247
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_22} :catch_5c

    :cond_22
    return-object v1

    .line 243
    :cond_23
    :try_start_23
    new-instance p2, Landroid/graphics/Typeface$Builder;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/io/FileDescriptor;)V

    .line 4372
    iget p3, p0, Landroidx/core/b/b$b;->c:I

    .line 244
    invoke-virtual {p2, p3}, Landroid/graphics/Typeface$Builder;->setWeight(I)Landroid/graphics/Typeface$Builder;

    move-result-object p2

    .line 4379
    iget-boolean p0, p0, Landroidx/core/b/b$b;->d:Z

    .line 245
    invoke-virtual {p2, p0}, Landroid/graphics/Typeface$Builder;->setItalic(Z)Landroid/graphics/Typeface$Builder;

    move-result-object p0

    .line 246
    invoke-virtual {p0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object p0
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_3c} :catch_45
    .catchall {:try_start_23 .. :try_end_3c} :catchall_42

    if-eqz p1, :cond_41

    .line 247
    :try_start_3e
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_5c

    :cond_41
    return-object p0

    :catchall_42
    move-exception p0

    move-object p2, v1

    goto :goto_4b

    :catch_45
    move-exception p0

    .line 238
    :try_start_46
    throw p0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception p2

    move-object v10, p2

    move-object p2, p0

    move-object p0, v10

    :goto_4b
    if-eqz p1, :cond_5b

    if-eqz p2, :cond_58

    .line 247
    :try_start_4f
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_52} :catch_53
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_5c

    goto :goto_5b

    :catch_53
    move-exception p1

    :try_start_54
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5b

    :cond_58
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_5b
    :goto_5b
    throw p0
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_5c} :catch_5c

    :catch_5c
    return-object v1

    .line 251
    :cond_5d
    invoke-static {p1, p2}, Landroidx/core/b/b;->a(Landroid/content/Context;[Landroidx/core/b/b$b;)Ljava/util/Map;

    move-result-object p1

    .line 253
    invoke-direct {p0}, Landroidx/core/graphics/f;->b()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_68

    return-object v1

    .line 258
    :cond_68
    array-length v8, p2

    const/4 v2, 0x0

    move v9, v2

    :goto_6b
    if-ge v9, v8, :cond_8f

    aget-object v3, p2, v9

    .line 5358
    iget-object v4, v3, Landroidx/core/b/b$b;->a:Landroid/net/Uri;

    .line 259
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_8c

    .line 5365
    iget v5, v3, Landroidx/core/b/b$b;->b:I

    .line 5372
    iget v6, v3, Landroidx/core/b/b$b;->c:I

    .line 5379
    iget-boolean v7, v3, Landroidx/core/b/b$b;->d:Z

    move-object v2, p0

    move-object v3, v0

    .line 263
    invoke-direct/range {v2 .. v7}, Landroidx/core/graphics/f;->a(Ljava/lang/Object;Ljava/nio/ByteBuffer;III)Z

    move-result v2

    if-nez v2, :cond_8b

    .line 266
    invoke-direct {p0, v0}, Landroidx/core/graphics/f;->c(Ljava/lang/Object;)V

    return-object v1

    :cond_8b
    const/4 v2, 0x1

    :cond_8c
    add-int/lit8 v9, v9, 0x1

    goto :goto_6b

    :cond_8f
    if-nez v2, :cond_95

    .line 272
    invoke-direct {p0, v0}, Landroidx/core/graphics/f;->c(Ljava/lang/Object;)V

    return-object v1

    .line 275
    :cond_95
    invoke-direct {p0, v0}, Landroidx/core/graphics/f;->b(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9c

    return-object v1

    .line 278
    :cond_9c
    invoke-virtual {p0, v0}, Landroidx/core/graphics/f;->a(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object p0

    if-nez p0, :cond_a3

    return-object v1

    .line 282
    :cond_a3
    invoke-static {p0, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method protected a(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .registers 6

    const/4 v0, 0x0

    .line 169
    :try_start_1
    iget-object v1, p0, Landroidx/core/graphics/f;->a:Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    .line 170
    invoke-static {v1, v3, p1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 171
    iget-object p0, p0, Landroidx/core/graphics/f;->g:Ljava/lang/reflect/Method;

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v1, p1, v3

    const/4 v1, -0x1

    .line 172
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v2

    const/4 v2, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v2

    .line 171
    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;
    :try_end_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_27} :catch_28
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_27} :catch_28

    return-object p0

    :catch_28
    return-object v0
.end method

.method protected a(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6

    const/4 p0, 0x1

    .line 347
    invoke-static {p1, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    .line 348
    const-class v0, Landroid/graphics/Typeface;

    const-string v1, "createFromFamiliesWithDefault"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    .line 349
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p1, v2, p0

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    aput-object p1, v2, v3

    .line 348
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 350
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-object p1
.end method
