.class final Lcom/a/a/b/a/n$10;
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
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 428
    invoke-direct {p0}, Lcom/a/a/r;-><init>()V

    return-void
.end method

.method private static b(Lcom/a/a/d/a;)Ljava/math/BigInteger;
    .registers 3

    .line 430
    invoke-virtual {p0}, Lcom/a/a/d/a;->f()Lcom/a/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/a/a/d/b;->NULL:Lcom/a/a/d/b;

    if-ne v0, v1, :cond_d

    .line 431
    invoke-virtual {p0}, Lcom/a/a/d/a;->k()V

    const/4 p0, 0x0

    return-object p0

    .line 435
    :cond_d
    :try_start_d
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/a/a/d/a;->i()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception p0

    .line 437
    new-instance v0, Lcom/a/a/p;

    invoke-direct {v0, p0}, Lcom/a/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final synthetic a(Lcom/a/a/d/a;)Ljava/lang/Object;
    .registers 2

    .line 428
    invoke-static {p1}, Lcom/a/a/b/a/n$10;->b(Lcom/a/a/d/a;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a(Lcom/a/a/d/c;Ljava/lang/Object;)V
    .registers 3

    .line 428
    check-cast p2, Ljava/math/BigInteger;

    .line 1442
    invoke-virtual {p1, p2}, Lcom/a/a/d/c;->a(Ljava/lang/Number;)Lcom/a/a/d/c;

    return-void
.end method
