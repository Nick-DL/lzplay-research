.class public final Lcom/x/plus/pro/f/d$f;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/plus/pro/f/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# static fields
.field static final a:I

.field static final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 260
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/x/plus/pro/f/d$f;->a:I

    .line 262
    sget v0, Lcom/x/plus/pro/f/d$f;->a:I

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/x/plus/pro/f/d$f;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static a(Lcom/x/plus/pro/f/d$d;)V
    .registers 3

    .line 265
    sget-object v0, Lcom/x/plus/pro/f/d$f;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/x/plus/pro/f/d$f$1;

    invoke-direct {v1, p0}, Lcom/x/plus/pro/f/d$f$1;-><init>(Lcom/x/plus/pro/f/d$d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "\r\n"

    const-string v2, "--"

    const-string v3, "******"

    const/high16 v4, 0x20000

    .line 385
    invoke-virtual {p0, v4}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    const/4 v4, 0x0

    .line 386
    invoke-virtual {p0, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v5, "Charset"

    const-string v6, "UTF-8"

    .line 389
    invoke-virtual {p0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Content-Type"

    const-string v6, "multipart/form-data;boundary="

    .line 390
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {v5, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2f} :catch_b0
    .catchall {:try_start_1 .. :try_end_2f} :catchall_ad

    .line 395
    :try_start_2f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 396
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v6, "Content-Disposition: form-data; name=\"uploadedfile\"; filename=\""

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    .line 397
    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 396
    invoke-virtual {v5, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 401
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_71} :catch_ab
    .catchall {:try_start_2f .. :try_end_71} :catchall_b9

    const/16 p1, 0x2000

    .line 403
    :try_start_73
    new-array p1, p1, [B

    .line 406
    :goto_75
    invoke-virtual {p0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_80

    .line 407
    invoke-virtual {v5, p1, v4, v0}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_75

    .line 410
    :cond_80
    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 411
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_9e} :catch_a8
    .catchall {:try_start_73 .. :try_end_9e} :catchall_a5

    .line 416
    invoke-static {p0}, Lcom/x/plus/pro/f/e;->a(Ljava/io/Closeable;)V

    .line 417
    :goto_a1
    invoke-static {v5}, Lcom/x/plus/pro/f/e;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_a5
    move-exception p1

    move-object v0, p0

    goto :goto_ba

    :catch_a8
    move-exception p1

    move-object v0, p0

    goto :goto_b2

    :catch_ab
    move-exception p1

    goto :goto_b2

    :catchall_ad
    move-exception p1

    move-object v5, v0

    goto :goto_ba

    :catch_b0
    move-exception p1

    move-object v5, v0

    .line 414
    :goto_b2
    :try_start_b2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_b9

    .line 416
    invoke-static {v0}, Lcom/x/plus/pro/f/e;->a(Ljava/io/Closeable;)V

    goto :goto_a1

    :catchall_b9
    move-exception p1

    :goto_ba
    invoke-static {v0}, Lcom/x/plus/pro/f/e;->a(Ljava/io/Closeable;)V

    .line 417
    invoke-static {v5}, Lcom/x/plus/pro/f/e;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method static b(Lcom/x/plus/pro/f/d$d;)Lcom/x/plus/pro/f/d$e;
    .registers 8

    .line 282
    new-instance v0, Lcom/x/plus/pro/f/d$e;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/x/plus/pro/f/d$e;-><init>(Ljava/util/Map;)V

    const/4 v1, 0x0

    .line 285
    :try_start_b
    new-instance v2, Ljava/net/URL;

    .line 1157
    iget-object v3, p0, Lcom/x/plus/pro/f/d$d;->a:Ljava/lang/String;

    .line 285
    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_18} :catch_d0
    .catchall {:try_start_b .. :try_end_18} :catchall_cc

    .line 1161
    :try_start_18
    iget-object v3, p0, Lcom/x/plus/pro/f/d$d;->b:Ljava/util/Map;

    .line 288
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 289
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    .line 1181
    :cond_3e
    iget v3, p0, Lcom/x/plus/pro/f/d$d;->f:I

    .line 2181
    iget v4, p0, Lcom/x/plus/pro/f/d$d;->f:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_48

    .line 294
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 2189
    :cond_48
    iget v3, p0, Lcom/x/plus/pro/f/d$d;->g:I

    if-eq v3, v5, :cond_4f

    .line 299
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 3153
    :cond_4f
    iget-object v3, p0, Lcom/x/plus/pro/f/d$d;->c:Lcom/x/plus/pro/f/d$c;

    .line 303
    invoke-virtual {v3}, Lcom/x/plus/pro/f/d$c;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 304
    sget-object v4, Lcom/x/plus/pro/f/d$c;->POST:Lcom/x/plus/pro/f/d$c;

    const/4 v5, 0x1

    if-ne v3, v4, :cond_5f

    move v3, v5

    goto :goto_60

    :cond_5f
    const/4 v3, 0x0

    :goto_60
    if-eqz v3, :cond_65

    .line 306
    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    :cond_65
    if-eqz v3, :cond_7d

    .line 3165
    iget-object v3, p0, Lcom/x/plus/pro/f/d$d;->d:[B

    if-eqz v3, :cond_76

    .line 312
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_6f} :catch_c7
    .catchall {:try_start_18 .. :try_end_6f} :catchall_c4

    .line 313
    :try_start_6f
    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write([B)V

    .line 314
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_75} :catch_c1
    .catchall {:try_start_6f .. :try_end_75} :catchall_be

    goto :goto_7e

    .line 3169
    :cond_76
    :try_start_76
    iget-object v3, p0, Lcom/x/plus/pro/f/d$d;->e:Ljava/lang/String;

    if-eqz v3, :cond_7d

    .line 318
    invoke-static {v2, v3}, Lcom/x/plus/pro/f/d$f;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_7d} :catch_c7
    .catchall {:try_start_76 .. :try_end_7d} :catchall_c4

    :cond_7d
    move-object v4, v1

    .line 323
    :goto_7e
    :try_start_7e
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 326
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    const/16 v6, 0xc8

    if-ne v3, v6, :cond_98

    .line 328
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_8e} :catch_c1
    .catchall {:try_start_7e .. :try_end_8e} :catchall_be

    .line 329
    :try_start_8e
    invoke-static {v6}, Lcom/x/plus/pro/f/c;->a(Ljava/io/InputStream;)[B

    move-result-object v1
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_92} :catch_96
    .catchall {:try_start_8e .. :try_end_92} :catchall_93

    goto :goto_a0

    :catchall_93
    move-exception p0

    goto/16 :goto_ef

    :catch_96
    move-exception v3

    goto :goto_ca

    .line 331
    :cond_98
    :try_start_98
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_98 .. :try_end_9c} :catch_c1
    .catchall {:try_start_98 .. :try_end_9c} :catchall_be

    .line 332
    :try_start_9c
    invoke-static {v6}, Lcom/x/plus/pro/f/c;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 3231
    :goto_a0
    iput v3, v0, Lcom/x/plus/pro/f/d$e;->a:I

    .line 3247
    iput-object v1, v0, Lcom/x/plus/pro/f/d$e;->b:[B

    .line 4239
    iput-object v5, v0, Lcom/x/plus/pro/f/d$e;->c:Ljava/util/Map;

    .line 5197
    iget-object v1, p0, Lcom/x/plus/pro/f/d$d;->h:Lcom/x/plus/pro/f/d$b;

    if-eqz v1, :cond_b2

    .line 341
    new-instance v3, Lcom/x/plus/pro/f/d$f$2;

    invoke-direct {v3, v0, v1}, Lcom/x/plus/pro/f/d$f$2;-><init>(Lcom/x/plus/pro/f/d$e;Lcom/x/plus/pro/f/d$b;)V

    .line 6007
    invoke-static {v3}, Lcom/x/plus/pro/f/b;->a(Lcom/x/plus/pro/f/b$a;)Ljava/lang/Object;
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_b2} :catch_96
    .catchall {:try_start_9c .. :try_end_b2} :catchall_93

    .line 367
    :cond_b2
    invoke-static {v4}, Lcom/x/plus/pro/f/e;->a(Ljava/io/Closeable;)V

    .line 368
    invoke-static {v6}, Lcom/x/plus/pro/f/e;->a(Ljava/io/Closeable;)V

    if-eqz v2, :cond_ec

    .line 370
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_ec

    :catchall_be
    move-exception p0

    move-object v6, v1

    goto :goto_ef

    :catch_c1
    move-exception v3

    move-object v6, v1

    goto :goto_ca

    :catchall_c4
    move-exception p0

    move-object v6, v1

    goto :goto_f0

    :catch_c7
    move-exception v3

    move-object v4, v1

    move-object v6, v4

    :goto_ca
    move-object v1, v2

    goto :goto_d3

    :catchall_cc
    move-exception p0

    move-object v2, v1

    move-object v6, v2

    goto :goto_f0

    :catch_d0
    move-exception v3

    move-object v4, v1

    move-object v6, v4

    .line 6255
    :goto_d3
    :try_start_d3
    iput-object v3, v0, Lcom/x/plus/pro/f/d$e;->d:Ljava/lang/Throwable;

    .line 7197
    iget-object p0, p0, Lcom/x/plus/pro/f/d$d;->h:Lcom/x/plus/pro/f/d$b;

    if-eqz p0, :cond_e1

    .line 358
    new-instance v2, Lcom/x/plus/pro/f/d$f$3;

    invoke-direct {v2, p0, v0}, Lcom/x/plus/pro/f/d$f$3;-><init>(Lcom/x/plus/pro/f/d$b;Lcom/x/plus/pro/f/d$e;)V

    .line 8007
    invoke-static {v2}, Lcom/x/plus/pro/f/b;->a(Lcom/x/plus/pro/f/b$a;)Ljava/lang/Object;
    :try_end_e1
    .catchall {:try_start_d3 .. :try_end_e1} :catchall_ed

    .line 367
    :cond_e1
    invoke-static {v4}, Lcom/x/plus/pro/f/e;->a(Ljava/io/Closeable;)V

    .line 368
    invoke-static {v6}, Lcom/x/plus/pro/f/e;->a(Ljava/io/Closeable;)V

    if-eqz v1, :cond_ec

    .line 370
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_ec
    :goto_ec
    return-object v0

    :catchall_ed
    move-exception p0

    move-object v2, v1

    :goto_ef
    move-object v1, v4

    .line 367
    :goto_f0
    invoke-static {v1}, Lcom/x/plus/pro/f/e;->a(Ljava/io/Closeable;)V

    .line 368
    invoke-static {v6}, Lcom/x/plus/pro/f/e;->a(Ljava/io/Closeable;)V

    if-eqz v2, :cond_fb

    .line 370
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_fb
    throw p0
.end method
