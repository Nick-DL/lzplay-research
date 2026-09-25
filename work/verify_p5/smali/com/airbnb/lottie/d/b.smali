.class final Lcom/airbnb/lottie/d/b;
.super Ljava/lang/Object;
.source "NetworkCache.java"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/d/b;->a:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/airbnb/lottie/d/b;->b:Ljava/lang/String;

    return-void
.end method

.method static a(Ljava/lang/String;Lcom/airbnb/lottie/d/a;Z)Ljava/lang/String;
    .locals 3

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lottie_cache_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\\W+"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    iget-object p0, p1, Lcom/airbnb/lottie/d/a;->extension:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/d/a;->tempExtension()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final a()Landroidx/core/d/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/d/d<",
            "Lcom/airbnb/lottie/d/a;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/airbnb/lottie/d/b;->b:Ljava/lang/String;

    .line 1119
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/airbnb/lottie/d/b;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    sget-object v4, Lcom/airbnb/lottie/d/a;->Json:Lcom/airbnb/lottie/d/a;

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/airbnb/lottie/d/b;->a(Ljava/lang/String;Lcom/airbnb/lottie/d/a;Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1120
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1123
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/airbnb/lottie/d/b;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    sget-object v4, Lcom/airbnb/lottie/d/a;->Zip:Lcom/airbnb/lottie/d/a;

    invoke-static {v1, v4, v5}, Lcom/airbnb/lottie/d/b;->a(Ljava/lang/String;Lcom/airbnb/lottie/d/a;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1124
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    if-nez v2, :cond_2

    return-object v0

    .line 52
    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".zip"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    sget-object v0, Lcom/airbnb/lottie/d/a;->Zip:Lcom/airbnb/lottie/d/a;

    goto :goto_1

    .line 61
    :cond_3
    sget-object v0, Lcom/airbnb/lottie/d/a;->Json:Lcom/airbnb/lottie/d/a;

    .line 64
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cache hit for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/airbnb/lottie/d/b;->b:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " at "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)V

    .line 65
    new-instance p0, Landroidx/core/d/d;

    invoke-direct {p0, v0, v1}, Landroidx/core/d/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :catch_0
    return-object v0

    :catch_1
    return-object v0
.end method

.method final a(Ljava/io/InputStream;Lcom/airbnb/lottie/d/a;)Ljava/io/File;
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/airbnb/lottie/d/b;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/airbnb/lottie/d/b;->a(Ljava/lang/String;Lcom/airbnb/lottie/d/a;Z)Ljava/lang/String;

    move-result-object p2

    .line 75
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/airbnb/lottie/d/b;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p2, 0x400

    .line 80
    :try_start_1
    new-array p2, p2, [B

    .line 83
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 84
    invoke-virtual {p0, p2, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 92
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_0
    move-exception p2

    .line 89
    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 90
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 92
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 93
    throw p0
.end method
