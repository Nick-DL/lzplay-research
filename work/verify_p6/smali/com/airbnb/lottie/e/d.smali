.class public final Lcom/airbnb/lottie/e/d;
.super Ljava/lang/Object;
.source "AnimatableValueParser.java"


# direct methods
.method public static a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Z)Lcom/airbnb/lottie/c/a/b;
    .locals 2

    .line 32
    new-instance v0, Lcom/airbnb/lottie/c/a/b;

    if-eqz p2, :cond_0

    .line 33
    invoke-static {}, Lcom/airbnb/lottie/f/f;->a()F

    move-result p2

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    sget-object v1, Lcom/airbnb/lottie/e/i;->a:Lcom/airbnb/lottie/e/i;

    invoke-static {p0, p2, p1, v1}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;FLcom/airbnb/lottie/d;Lcom/airbnb/lottie/e/af;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/c/a/b;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;I)Lcom/airbnb/lottie/c/a/c;
    .locals 2

    .line 70
    new-instance v0, Lcom/airbnb/lottie/c/a/c;

    new-instance v1, Lcom/airbnb/lottie/e/j;

    invoke-direct {v1, p2}, Lcom/airbnb/lottie/e/j;-><init>(I)V

    .line 71
    invoke-static {p0, p1, v1}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Lcom/airbnb/lottie/e/af;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/c/a/c;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/d;
    .locals 2

    .line 38
    new-instance v0, Lcom/airbnb/lottie/c/a/d;

    sget-object v1, Lcom/airbnb/lottie/e/m;->a:Lcom/airbnb/lottie/e/m;

    invoke-static {p0, p1, v1}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Lcom/airbnb/lottie/e/af;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/c/a/d;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static a(Landroid/util/JsonReader;FLcom/airbnb/lottie/d;Lcom/airbnb/lottie/e/af;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            "F",
            "Lcom/airbnb/lottie/d;",
            "Lcom/airbnb/lottie/e/af<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/g/a<",
            "TT;>;>;"
        }
    .end annotation

    .line 87
    invoke-static {p0, p2, p1, p3}, Lcom/airbnb/lottie/e/p;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;FLcom/airbnb/lottie/e/af;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Lcom/airbnb/lottie/e/af;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            "Lcom/airbnb/lottie/d;",
            "Lcom/airbnb/lottie/e/af<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/g/a<",
            "TT;>;>;"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    .line 79
    invoke-static {p0, p1, v0, p2}, Lcom/airbnb/lottie/e/p;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;FLcom/airbnb/lottie/e/af;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/f;
    .locals 3

    .line 43
    new-instance v0, Lcom/airbnb/lottie/c/a/f;

    .line 44
    invoke-static {}, Lcom/airbnb/lottie/f/f;->a()F

    move-result v1

    sget-object v2, Lcom/airbnb/lottie/e/v;->a:Lcom/airbnb/lottie/e/v;

    invoke-static {p0, v1, p1, v2}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;FLcom/airbnb/lottie/d;Lcom/airbnb/lottie/e/af;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/c/a/f;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static c(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/h;
    .locals 3

    .line 54
    new-instance v0, Lcom/airbnb/lottie/c/a/h;

    .line 55
    invoke-static {}, Lcom/airbnb/lottie/f/f;->a()F

    move-result v1

    sget-object v2, Lcom/airbnb/lottie/e/aa;->a:Lcom/airbnb/lottie/e/aa;

    invoke-static {p0, v1, p1, v2}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;FLcom/airbnb/lottie/d;Lcom/airbnb/lottie/e/af;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/c/a/h;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static d(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/a;
    .locals 2

    .line 65
    new-instance v0, Lcom/airbnb/lottie/c/a/a;

    sget-object v1, Lcom/airbnb/lottie/e/f;->a:Lcom/airbnb/lottie/e/f;

    invoke-static {p0, p1, v1}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Lcom/airbnb/lottie/e/af;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/c/a/a;-><init>(Ljava/util/List;)V

    return-object v0
.end method
