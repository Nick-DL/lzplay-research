.class public final Lcom/x/plus/pro/f/c;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    const-string v0, "0"

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    const-string v7, "7"

    const-string v8, "8"

    const-string v9, "9"

    const-string v10, "a"

    const-string v11, "b"

    const-string v12, "c"

    const-string v13, "d"

    const-string v14, "e"

    const-string v15, "f"

    .line 165
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/x/plus/pro/f/c;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_39

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "file"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 136
    :try_start_24
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_38

    .line 138
    :cond_35
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_38} :catch_38

    :catch_38
    :cond_38
    return-object p0

    .line 145
    :cond_39
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_48

    .line 146
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 148
    :cond_48
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 90
    :try_start_6
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_32
    .catchall {:try_start_6 .. :try_end_17} :catchall_30

    .line 91
    :try_start_17
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 93
    :goto_1c
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_25} :catch_2d
    .catchall {:try_start_17 .. :try_end_25} :catchall_2a

    goto :goto_1c

    .line 99
    :cond_26
    invoke-static {v2}, Lcom/x/plus/pro/f/e;->a(Ljava/io/Closeable;)V

    goto :goto_39

    :catchall_2a
    move-exception p0

    move-object v1, v2

    goto :goto_46

    :catch_2d
    move-exception p0

    move-object v1, v2

    goto :goto_33

    :catchall_30
    move-exception p0

    goto :goto_46

    :catch_32
    move-exception p0

    .line 97
    :goto_33
    :try_start_33
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_30

    .line 99
    invoke-static {v1}, Lcom/x/plus/pro/f/e;->a(Ljava/io/Closeable;)V

    .line 101
    :goto_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\s*"

    const-string v0, ""

    .line 102
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 99
    :goto_46
    invoke-static {v1}, Lcom/x/plus/pro/f/e;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 110
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_a} :catch_52
    .catchall {:try_start_2 .. :try_end_a} :catchall_4f

    .line 111
    :try_start_a
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_27

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1a} :catch_4b
    .catchall {:try_start_a .. :try_end_1a} :catchall_49

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-lez p2, :cond_27

    .line 126
    invoke-static {p0}, Lcom/x/plus/pro/f/e;->a(Ljava/io/Closeable;)V

    .line 127
    invoke-static {v1}, Lcom/x/plus/pro/f/e;->a(Ljava/io/Closeable;)V

    return v2

    .line 115
    :cond_27
    :try_start_27
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2c} :catch_4b
    .catchall {:try_start_27 .. :try_end_2c} :catchall_49

    const/16 p1, 0x400

    .line 117
    :try_start_2e
    new-array p1, p1, [B

    .line 118
    :goto_30
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3b

    .line 119
    invoke-virtual {p2, p1, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_30

    .line 121
    :cond_3b
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_3e} :catch_47
    .catchall {:try_start_2e .. :try_end_3e} :catchall_45

    .line 126
    invoke-static {p0}, Lcom/x/plus/pro/f/e;->a(Ljava/io/Closeable;)V

    .line 127
    invoke-static {p2}, Lcom/x/plus/pro/f/e;->a(Ljava/io/Closeable;)V

    return v2

    :catchall_45
    move-exception p1

    goto :goto_60

    :catch_47
    move-exception p1

    goto :goto_4d

    :catchall_49
    move-exception p1

    goto :goto_61

    :catch_4b
    move-exception p1

    move-object p2, v1

    :goto_4d
    move-object v1, p0

    goto :goto_54

    :catchall_4f
    move-exception p1

    move-object p0, v1

    goto :goto_61

    :catch_52
    move-exception p1

    move-object p2, v1

    .line 124
    :goto_54
    :try_start_54
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_5e

    .line 126
    invoke-static {v1}, Lcom/x/plus/pro/f/e;->a(Ljava/io/Closeable;)V

    .line 127
    invoke-static {p2}, Lcom/x/plus/pro/f/e;->a(Ljava/io/Closeable;)V

    return v0

    :catchall_5e
    move-exception p1

    move-object p0, v1

    :goto_60
    move-object v1, p2

    .line 126
    :goto_61
    invoke-static {p0}, Lcom/x/plus/pro/f/e;->a(Ljava/io/Closeable;)V

    .line 127
    invoke-static {v1}, Lcom/x/plus/pro/f/e;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 3

    .line 154
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 157
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1e

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 159
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_1e
    return v1
.end method

.method private static a(Ljava/io/File;)[B
    .registers 6

    .line 23
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    const/16 v0, 0x1000

    .line 29
    :try_start_a
    new-array v0, v0, [B

    .line 30
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 32
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1b} :catch_32
    .catchall {:try_start_a .. :try_end_1b} :catchall_30

    .line 33
    :goto_1b
    :try_start_1b
    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result p0

    if-lez p0, :cond_26

    const/4 v4, 0x0

    .line 34
    invoke-virtual {v2, v0, v4, p0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1b

    .line 37
    :cond_26
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_2a} :catch_2e
    .catchall {:try_start_1b .. :try_end_2a} :catchall_3b

    .line 41
    invoke-static {v3}, Lcom/x/plus/pro/f/e;->a(Ljava/io/Closeable;)V

    return-object p0

    :catch_2e
    move-exception p0

    goto :goto_34

    :catchall_30
    move-exception p0

    goto :goto_3d

    :catch_32
    move-exception p0

    move-object v3, v1

    .line 39
    :goto_34
    :try_start_34
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3b

    .line 41
    invoke-static {v3}, Lcom/x/plus/pro/f/e;->a(Ljava/io/Closeable;)V

    return-object v1

    :catchall_3b
    move-exception p0

    move-object v1, v3

    :goto_3d
    invoke-static {v1}, Lcom/x/plus/pro/f/e;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static a(Ljava/io/InputStream;)[B
    .registers 6

    const/4 v0, 0x0

    .line 50
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_23
    .catchall {:try_start_1 .. :try_end_6} :catchall_20

    const/16 v2, 0x1000

    .line 51
    :try_start_8
    new-array v2, v2, [B

    .line 53
    :goto_a
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_16

    const/4 v4, 0x0

    .line 54
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_a

    .line 56
    :cond_16
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_1a} :catch_1e
    .catchall {:try_start_8 .. :try_end_1a} :catchall_2c

    .line 60
    invoke-static {v1}, Lcom/x/plus/pro/f/e;->a(Ljava/io/Closeable;)V

    return-object p0

    :catch_1e
    move-exception p0

    goto :goto_25

    :catchall_20
    move-exception p0

    move-object v1, v0

    goto :goto_2d

    :catch_23
    move-exception p0

    move-object v1, v0

    .line 58
    :goto_25
    :try_start_25
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_2c

    .line 60
    invoke-static {v1}, Lcom/x/plus/pro/f/e;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_2c
    move-exception p0

    :goto_2d
    invoke-static {v1}, Lcom/x/plus/pro/f/e;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 172
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 173
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 175
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_1c
    const-string v1, "MD5"

    .line 177
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 178
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/x/plus/pro/f/c;->a(Ljava/io/File;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    const/4 v1, 0x0

    .line 179
    :goto_30
    array-length v2, p0

    if-ge v1, v2, :cond_5a

    .line 180
    aget-byte v2, p0, v1

    if-gez v2, :cond_39

    add-int/lit16 v2, v2, 0x100

    .line 184
    :cond_39
    div-int/lit8 v3, v2, 0x10

    .line 185
    rem-int/lit8 v2, v2, 0x10

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/x/plus/pro/f/c;->a:[Ljava/lang/String;

    aget-object v3, v5, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/x/plus/pro/f/c;->a:[Ljava/lang/String;

    aget-object v2, v3, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_57
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1c .. :try_end_57} :catch_5f

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 192
    :cond_5a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_5f
    move-exception p0

    .line 189
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const-string p0, ""

    return-object p0

    :cond_66
    const-string p0, ""

    return-object p0
.end method
