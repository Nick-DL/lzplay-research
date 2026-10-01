.class Landroidx/core/graphics/d;
.super Landroidx/core/graphics/h;
.source "TypefaceCompatApi21Impl.java"


# static fields
.field private static a:Ljava/lang/Class; = null

.field private static b:Ljava/lang/reflect/Constructor; = null

.field private static c:Ljava/lang/reflect/Method; = null

.field private static d:Ljava/lang/reflect/Method; = null

.field private static e:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Landroidx/core/graphics/h;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .registers 5

    .line 123
    invoke-static {}, Landroidx/core/graphics/d;->a()V

    .line 125
    :try_start_3
    sget-object v0, Landroidx/core/graphics/d;->a:Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    .line 126
    invoke-static {v0, v2, p0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 127
    sget-object p0, Landroidx/core/graphics/d;->d:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;
    :try_end_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_1b} :catch_1c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_1b} :catch_1c

    return-object p0

    :catch_1c
    move-exception p0

    .line 130
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static a(Landroid/os/ParcelFileDescriptor;)Ljava/io/File;
    .registers 4

    const/4 v0, 0x0

    .line 101
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/proc/self/fd/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 103
    invoke-static {p0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    iget v1, v1, Landroid/system/StructStat;->st_mode:I

    invoke-static {v1}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 104
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_28
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_28} :catch_2a

    return-object v1

    :cond_29
    return-object v0

    :catch_2a
    return-object v0
.end method

.method private static a()V
    .registers 9

    .line 68
    sget-boolean v0, Landroidx/core/graphics/d;->e:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 71
    sput-boolean v0, Landroidx/core/graphics/d;->e:Z

    const/4 v1, 0x0

    :try_start_9
    const-string v2, "android.graphics.FontFamily"

    .line 78
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    .line 79
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const-string v5, "addFontWeightStyle"

    const/4 v6, 0x3

    .line 80
    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v0

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 82
    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    .line 83
    const-class v7, Landroid/graphics/Typeface;

    const-string v8, "createFromFamiliesWithDefault"

    new-array v0, v0, [Ljava/lang/Class;

    .line 85
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v0, v3

    .line 84
    invoke-virtual {v7, v8, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_40
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_40} :catch_42
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_40} :catch_42

    move-object v1, v4

    goto :goto_53

    :catch_42
    move-exception v0

    const-string v2, "TypefaceCompatApi21Impl"

    .line 87
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    move-object v2, v0

    move-object v5, v2

    .line 93
    :goto_53
    sput-object v1, Landroidx/core/graphics/d;->b:Ljava/lang/reflect/Constructor;

    .line 94
    sput-object v2, Landroidx/core/graphics/d;->a:Ljava/lang/Class;

    .line 95
    sput-object v5, Landroidx/core/graphics/d;->c:Ljava/lang/reflect/Method;

    .line 96
    sput-object v0, Landroidx/core/graphics/d;->d:Ljava/lang/reflect/Method;

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;IZ)Z
    .registers 7

    .line 136
    invoke-static {}, Landroidx/core/graphics/d;->a()V

    .line 138
    :try_start_3
    sget-object v0, Landroidx/core/graphics/d;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    .line 139
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v1, p1

    .line 138
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 140
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_23} :catch_24
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_23} :catch_24

    return p0

    :catch_24
    move-exception p0

    .line 142
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static b()Ljava/lang/Object;
    .registers 2

    .line 114
    invoke-static {}, Landroidx/core/graphics/d;->a()V

    .line 116
    :try_start_3
    sget-object v0, Landroidx/core/graphics/d;->b:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_c} :catch_d
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_c} :catch_d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    .line 118
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroidx/core/content/a/c$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .registers 11

    .line 176
    invoke-static {}, Landroidx/core/graphics/d;->b()Ljava/lang/Object;

    move-result-object p0

    .line 2158
    iget-object p2, p2, Landroidx/core/content/a/c$b;->a:[Landroidx/core/content/a/c$c;

    .line 177
    array-length p4, p2

    const/4 v0, 0x0

    :goto_8
    if-ge v0, p4, :cond_41

    aget-object v1, p2, v0

    .line 178
    invoke-static {p1}, Landroidx/core/graphics/i;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_14

    return-object v3

    .line 3143
    :cond_14
    :try_start_14
    iget v4, v1, Landroidx/core/content/a/c$c;->f:I

    .line 183
    invoke-static {v2, p3, v4}, Landroidx/core/graphics/i;->a(Ljava/io/File;Landroid/content/res/Resources;I)Z

    move-result v4
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_1a} :catch_3d
    .catchall {:try_start_14 .. :try_end_1a} :catchall_38

    if-nez v4, :cond_20

    .line 196
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    return-object v3

    .line 187
    :cond_20
    :try_start_20
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 4127
    iget v5, v1, Landroidx/core/content/a/c$c;->b:I

    .line 4131
    iget-boolean v1, v1, Landroidx/core/content/a/c$c;->c:Z

    .line 187
    invoke-static {p0, v4, v5, v1}, Landroidx/core/graphics/d;->a(Ljava/lang/Object;Ljava/lang/String;IZ)Z

    move-result v1
    :try_end_2c
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_2c} :catch_3d
    .catchall {:try_start_20 .. :try_end_2c} :catchall_38

    if-nez v1, :cond_32

    .line 196
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    return-object v3

    :cond_32
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :catchall_38
    move-exception p0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw p0

    :catch_3d
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    return-object v3

    .line 199
    :cond_41
    invoke-static {p0}, Landroidx/core/graphics/d;->a(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/content/Context;[Landroidx/core/b/b$b;I)Landroid/graphics/Typeface;
    .registers 7

    .line 149
    array-length v0, p2

    const/4 v1, 0x0

    if-gtz v0, :cond_5

    return-object v1

    .line 152
    :cond_5
    invoke-virtual {p0, p2, p3}, Landroidx/core/graphics/d;->a([Landroidx/core/b/b$b;I)Landroidx/core/b/b$b;

    move-result-object p0

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 1358
    :try_start_d
    iget-object p0, p0, Landroidx/core/b/b$b;->a:Landroid/net/Uri;

    const-string p3, "r"

    .line 155
    invoke-virtual {p2, p0, p3, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-nez p0, :cond_1d

    if-eqz p0, :cond_1c

    .line 168
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1c} :catch_7c

    :cond_1c
    return-object v1

    .line 159
    :cond_1d
    :try_start_1d
    invoke-static {p0}, Landroidx/core/graphics/d;->a(Landroid/os/ParcelFileDescriptor;)Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_34

    .line 160
    invoke-virtual {p2}, Ljava/io/File;->canRead()Z

    move-result p3

    if-nez p3, :cond_2a

    goto :goto_34

    .line 167
    :cond_2a
    invoke-static {p2}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object p1
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_2e} :catch_65
    .catchall {:try_start_1d .. :try_end_2e} :catchall_62

    if-eqz p0, :cond_33

    .line 168
    :try_start_30
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_7c

    :cond_33
    return-object p1

    .line 163
    :cond_34
    :goto_34
    :try_start_34
    new-instance p2, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_3d} :catch_65
    .catchall {:try_start_34 .. :try_end_3d} :catchall_62

    .line 164
    :try_start_3d
    invoke-static {p1, p2}, Landroidx/core/graphics/h;->a(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;

    move-result-object p1
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_41} :catch_4d
    .catchall {:try_start_3d .. :try_end_41} :catchall_4a

    .line 165
    :try_start_41
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_44} :catch_65
    .catchall {:try_start_41 .. :try_end_44} :catchall_62

    if-eqz p0, :cond_49

    .line 168
    :try_start_46
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_7c

    :cond_49
    return-object p1

    :catchall_4a
    move-exception p1

    move-object p3, v1

    goto :goto_53

    :catch_4d
    move-exception p1

    .line 163
    :try_start_4e
    throw p1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4f

    :catchall_4f
    move-exception p3

    move-object v2, p3

    move-object p3, p1

    move-object p1, v2

    :goto_53
    if-eqz p3, :cond_5e

    .line 165
    :try_start_55
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_58} :catch_59
    .catchall {:try_start_55 .. :try_end_58} :catchall_62

    goto :goto_61

    :catch_59
    move-exception p2

    :try_start_5a
    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_61

    :cond_5e
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    :goto_61
    throw p1
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_62} :catch_65
    .catchall {:try_start_5a .. :try_end_62} :catchall_62

    :catchall_62
    move-exception p1

    move-object p2, v1

    goto :goto_6b

    :catch_65
    move-exception p1

    .line 154
    :try_start_66
    throw p1
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_67

    :catchall_67
    move-exception p2

    move-object v2, p2

    move-object p2, p1

    move-object p1, v2

    :goto_6b
    if-eqz p0, :cond_7b

    if-eqz p2, :cond_78

    .line 168
    :try_start_6f
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_72} :catch_73
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_7c

    goto :goto_7b

    :catch_73
    move-exception p0

    :try_start_74
    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7b

    :cond_78
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_7b
    :goto_7b
    throw p1
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_7c} :catch_7c

    :catch_7c
    return-object v1
.end method
