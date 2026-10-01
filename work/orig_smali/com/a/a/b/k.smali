.class public final Lcom/a/a/b/k;
.super Ljava/lang/Object;
.source "Streams.java"


# direct methods
.method public static a(Lcom/a/a/d/a;)Lcom/a/a/i;
    .registers 3

    .line 46
    :try_start_0
    invoke-virtual {p0}, Lcom/a/a/d/a;->f()Lcom/a/a/d/b;
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_3} :catch_24
    .catch Lcom/a/a/d/d; {:try_start_0 .. :try_end_3} :catch_1d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_16
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_f

    const/4 v0, 0x0

    .line 48
    :try_start_4
    sget-object v1, Lcom/a/a/b/a/n;->X:Lcom/a/a/r;

    invoke-virtual {v1, p0}, Lcom/a/a/r;->a(Lcom/a/a/d/a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/a/a/i;
    :try_end_c
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_c} :catch_d
    .catch Lcom/a/a/d/d; {:try_start_4 .. :try_end_c} :catch_1d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_16
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_c} :catch_f

    return-object p0

    :catch_d
    move-exception p0

    goto :goto_26

    :catch_f
    move-exception p0

    .line 64
    new-instance v0, Lcom/a/a/p;

    invoke-direct {v0, p0}, Lcom/a/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_16
    move-exception p0

    .line 62
    new-instance v0, Lcom/a/a/j;

    invoke-direct {v0, p0}, Lcom/a/a/j;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1d
    move-exception p0

    .line 60
    new-instance v0, Lcom/a/a/p;

    invoke-direct {v0, p0}, Lcom/a/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_24
    move-exception p0

    const/4 v0, 0x1

    :goto_26
    if-eqz v0, :cond_2b

    .line 55
    sget-object p0, Lcom/a/a/k;->a:Lcom/a/a/k;

    return-object p0

    .line 58
    :cond_2b
    new-instance v0, Lcom/a/a/p;

    invoke-direct {v0, p0}, Lcom/a/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Lcom/a/a/i;Lcom/a/a/d/c;)V
    .registers 3

    .line 72
    sget-object v0, Lcom/a/a/b/a/n;->X:Lcom/a/a/r;

    invoke-virtual {v0, p1, p0}, Lcom/a/a/r;->a(Lcom/a/a/d/c;Ljava/lang/Object;)V

    return-void
.end method
