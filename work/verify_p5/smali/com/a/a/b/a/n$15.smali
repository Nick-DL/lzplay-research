.class final Lcom/a/a/b/a/n$15;
.super Lcom/a/a/r;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/b/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/r<",
        "Ljava/net/URI;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 502
    invoke-direct {p0}, Lcom/a/a/r;-><init>()V

    return-void
.end method

.method private static b(Lcom/a/a/d/a;)Ljava/net/URI;
    .locals 3

    .line 505
    invoke-virtual {p0}, Lcom/a/a/d/a;->f()Lcom/a/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/a/a/d/b;->NULL:Lcom/a/a/d/b;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/a/a/d/a;->k()V

    return-object v2

    .line 510
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/a/a/d/a;->i()Ljava/lang/String;

    move-result-object p0

    const-string v0, "null"

    .line 511
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v2

    :cond_1
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 513
    new-instance v0, Lcom/a/a/j;

    invoke-direct {v0, p0}, Lcom/a/a/j;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final synthetic a(Lcom/a/a/d/a;)Ljava/lang/Object;
    .locals 0

    .line 502
    invoke-static {p1}, Lcom/a/a/b/a/n$15;->b(Lcom/a/a/d/a;)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic a(Lcom/a/a/d/c;Ljava/lang/Object;)V
    .locals 0

    .line 502
    check-cast p2, Ljava/net/URI;

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1518
    :cond_0
    invoke-virtual {p2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/a/a/d/c;->b(Ljava/lang/String;)Lcom/a/a/d/c;

    return-void
.end method
