.class public final Lcom/liulishuo/filedownloader/a/c;
.super Ljava/lang/Object;
.source "FileDownloadUrlConnection.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/a/c$a;,
        Lcom/liulishuo/filedownloader/a/c$b;
    }
.end annotation


# instance fields
.field protected a:Ljava/net/URLConnection;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/liulishuo/filedownloader/a/c$a;)V
    .registers 4

    .line 40
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/liulishuo/filedownloader/a/c;-><init>(Ljava/net/URL;Lcom/liulishuo/filedownloader/a/c$a;)V

    return-void
.end method

.method private constructor <init>(Ljava/net/URL;Lcom/liulishuo/filedownloader/a/c$a;)V
    .registers 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_12

    .line 1151
    iget-object v0, p2, Lcom/liulishuo/filedownloader/a/c$a;->a:Ljava/net/Proxy;

    if-eqz v0, :cond_12

    .line 2151
    iget-object v0, p2, Lcom/liulishuo/filedownloader/a/c$a;->a:Ljava/net/Proxy;

    .line 45
    invoke-virtual {p1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/filedownloader/a/c;->a:Ljava/net/URLConnection;

    goto :goto_18

    .line 47
    :cond_12
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/filedownloader/a/c;->a:Ljava/net/URLConnection;

    :goto_18
    if-eqz p2, :cond_38

    .line 3151
    iget-object p1, p2, Lcom/liulishuo/filedownloader/a/c$a;->b:Ljava/lang/Integer;

    if-eqz p1, :cond_29

    .line 52
    iget-object p1, p0, Lcom/liulishuo/filedownloader/a/c;->a:Ljava/net/URLConnection;

    .line 4151
    iget-object v0, p2, Lcom/liulishuo/filedownloader/a/c$a;->b:Ljava/lang/Integer;

    .line 52
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 5151
    :cond_29
    iget-object p1, p2, Lcom/liulishuo/filedownloader/a/c$a;->c:Ljava/lang/Integer;

    if-eqz p1, :cond_38

    .line 56
    iget-object p0, p0, Lcom/liulishuo/filedownloader/a/c;->a:Ljava/net/URLConnection;

    .line 6151
    iget-object p1, p2, Lcom/liulishuo/filedownloader/a/c$a;->c:Ljava/lang/Integer;

    .line 56
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    :cond_38
    return-void
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/liulishuo/filedownloader/a/c;->a:Ljava/net/URLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 92
    iget-object p0, p0, Lcom/liulishuo/filedownloader/a/c;->a:Ljava/net/URLConnection;

    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 67
    iget-object p0, p0, Lcom/liulishuo/filedownloader/a/c;->a:Ljava/net/URLConnection;

    invoke-virtual {p0, p1, p2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 82
    iget-object p0, p0, Lcom/liulishuo/filedownloader/a/c;->a:Ljava/net/URLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Z
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/liulishuo/filedownloader/a/c;->a:Ljava/net/URLConnection;

    instance-of v0, v0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_f

    .line 97
    iget-object p0, p0, Lcom/liulishuo/filedownloader/a/c;->a:Ljava/net/URLConnection;

    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final c()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 87
    iget-object p0, p0, Lcom/liulishuo/filedownloader/a/c;->a:Ljava/net/URLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final d()V
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/liulishuo/filedownloader/a/c;->a:Ljava/net/URLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    return-void
.end method

.method public final e()I
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/liulishuo/filedownloader/a/c;->a:Ljava/net/URLConnection;

    instance-of v0, v0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_f

    .line 112
    iget-object p0, p0, Lcom/liulishuo/filedownloader/a/c;->a:Ljava/net/URLConnection;

    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final f()V
    .registers 1

    .line 121
    :try_start_0
    iget-object p0, p0, Lcom/liulishuo/filedownloader/a/c;->a:Ljava/net/URLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    return-void
.end method
