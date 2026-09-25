.class public final Lcom/x/plus/pro/f/d;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/plus/pro/f/d$f;,
        Lcom/x/plus/pro/f/d$e;,
        Lcom/x/plus/pro/f/d$d;,
        Lcom/x/plus/pro/f/d$a;,
        Lcom/x/plus/pro/f/d$g;,
        Lcom/x/plus/pro/f/d$b;,
        Lcom/x/plus/pro/f/d$c;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 7

    .line 424
    invoke-static {p0}, Lcom/x/plus/pro/f/h;->a(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    :goto_0
    if-lez p0, :cond_1

    .line 429
    :try_start_0
    new-instance v2, Ljava/net/URL;

    const-string v3, "https://www.google.com"

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    const-string v3, "GET"

    .line 431
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 432
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 433
    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v3, 0x3a98

    .line 434
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 435
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x0

    .line 439
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 440
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 441
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 449
    :try_start_3
    invoke-static {v4}, Lcom/x/plus/pro/f/e;->a(Ljava/io/Closeable;)V

    .line 452
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_0

    const/16 v3, 0x190

    if-ge v2, v3, :cond_0

    goto :goto_3

    :catchall_0
    move-exception v2

    move-object v3, v4

    goto :goto_1

    :catch_0
    move-object v3, v4

    goto :goto_2

    :catchall_1
    move-exception v2

    .line 449
    :goto_1
    invoke-static {v3}, Lcom/x/plus/pro/f/e;->a(Ljava/io/Closeable;)V

    throw v2

    :catch_1
    :goto_2
    add-int/lit8 p0, p0, -0x1

    invoke-static {v3}, Lcom/x/plus/pro/f/e;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    :cond_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_3
    return v0
.end method
