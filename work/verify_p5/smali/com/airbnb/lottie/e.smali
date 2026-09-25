.class public final Lcom/airbnb/lottie/e;
.super Ljava/lang/Object;
.source "LottieCompositionFactory.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/k<",
            "Lcom/airbnb/lottie/d;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/e;->a:Ljava/util/Map;

    return-void
.end method

.method private static a(Lcom/airbnb/lottie/d;Ljava/lang/String;)Lcom/airbnb/lottie/g;
    .locals 2

    .line 7139
    iget-object p0, p0, Lcom/airbnb/lottie/d;->c:Ljava/util/Map;

    .line 310
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/g;

    .line 8041
    iget-object v1, v0, Lcom/airbnb/lottie/g;->b:Ljava/lang/String;

    .line 311
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/j;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/j<",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 3027
    :try_start_0
    invoke-static {}, Lcom/airbnb/lottie/f/f;->a()F

    move-result v1

    .line 3031
    new-instance v2, Landroidx/b/d;

    invoke-direct {v2}, Landroidx/b/d;-><init>()V

    .line 3032
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3035
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 3036
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 3037
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 3038
    new-instance v7, Landroidx/b/h;

    invoke-direct {v7}, Landroidx/b/h;-><init>()V

    .line 3040
    new-instance v8, Lcom/airbnb/lottie/d;

    invoke-direct {v8}, Lcom/airbnb/lottie/d;-><init>()V

    .line 3042
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v9, 0x0

    move v12, v9

    move v13, v12

    move v14, v13

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 3043
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 3044
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, -0x1

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v17

    const/16 v18, 0x2

    const/16 v19, 0x1

    sparse-switch v17, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v10, "fonts"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0x8

    goto/16 :goto_2

    :sswitch_1
    const-string v10, "chars"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0x9

    goto :goto_2

    :sswitch_2
    const-string v10, "op"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x3

    goto :goto_2

    :sswitch_3
    const-string v10, "ip"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move/from16 v10, v18

    goto :goto_2

    :sswitch_4
    const-string v10, "fr"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x4

    goto :goto_2

    :sswitch_5
    const-string v10, "w"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    goto :goto_2

    :sswitch_6
    const-string v10, "v"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x5

    goto :goto_2

    :sswitch_7
    const-string v10, "h"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move/from16 v10, v19

    goto :goto_2

    :sswitch_8
    const-string v10, "layers"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x6

    goto :goto_2

    :sswitch_9
    const-string v10, "assets"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x7

    goto :goto_2

    :cond_0
    :goto_1
    move/from16 v10, v16

    :goto_2
    packed-switch v10, :pswitch_data_0

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .line 3084
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_4

    .line 3081
    :pswitch_0
    invoke-static {v0, v8, v7}, Lcom/airbnb/lottie/e/r;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Landroidx/b/h;)V

    goto :goto_3

    .line 3078
    :pswitch_1
    invoke-static {v0, v6}, Lcom/airbnb/lottie/e/r;->a(Landroid/util/JsonReader;Ljava/util/Map;)V

    goto :goto_3

    .line 3075
    :pswitch_2
    invoke-static {v0, v8, v4, v5}, Lcom/airbnb/lottie/e/r;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_3

    .line 3072
    :pswitch_3
    invoke-static {v0, v8, v3, v2}, Lcom/airbnb/lottie/e/r;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Ljava/util/List;Landroidx/b/d;)V

    :cond_1
    :goto_3
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    goto :goto_4

    .line 3061
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    const-string v15, "\\."

    .line 3062
    invoke-virtual {v10, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v15, 0x0

    .line 3063
    aget-object v16, v10, v15

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 3064
    aget-object v16, v10, v19

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3065
    aget-object v10, v10, v18

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 3066
    invoke-static {v15, v0, v10}, Lcom/airbnb/lottie/f/f;->a(III)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Lottie only supports bodymovin >= 4.4.0"

    .line 3068
    invoke-virtual {v8, v0}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 3058
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v14

    double-to-float v14, v14

    goto :goto_5

    :pswitch_6
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .line 3055
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v0, v6

    const v6, 0x3c23d70a    # 0.01f

    sub-float v13, v0, v6

    goto :goto_4

    :pswitch_7
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .line 3052
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v12, v6

    goto :goto_4

    :pswitch_8
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .line 3049
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v11

    goto :goto_4

    :pswitch_9
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .line 3046
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v9

    :goto_4
    move-object/from16 v6, v20

    move-object/from16 v7, v21

    :goto_5
    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_2
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .line 3087
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    int-to-float v0, v9

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v6, v11

    mul-float/2addr v6, v1

    float-to-int v1, v6

    .line 3091
    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4059
    iput-object v6, v8, Lcom/airbnb/lottie/d;->h:Landroid/graphics/Rect;

    .line 4060
    iput v12, v8, Lcom/airbnb/lottie/d;->i:F

    .line 4061
    iput v13, v8, Lcom/airbnb/lottie/d;->j:F

    .line 4062
    iput v14, v8, Lcom/airbnb/lottie/d;->k:F

    .line 4063
    iput-object v3, v8, Lcom/airbnb/lottie/d;->g:Ljava/util/List;

    .line 4064
    iput-object v2, v8, Lcom/airbnb/lottie/d;->f:Landroidx/b/d;

    .line 4065
    iput-object v4, v8, Lcom/airbnb/lottie/d;->b:Ljava/util/Map;

    .line 4066
    iput-object v5, v8, Lcom/airbnb/lottie/d;->c:Ljava/util/Map;

    move-object/from16 v0, v21

    .line 4067
    iput-object v0, v8, Lcom/airbnb/lottie/d;->e:Landroidx/b/h;

    move-object/from16 v0, v20

    .line 4068
    iput-object v0, v8, Lcom/airbnb/lottie/d;->d:Ljava/util/Map;

    .line 230
    invoke-static {}, Lcom/airbnb/lottie/c/g;->a()Lcom/airbnb/lottie/c/g;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8}, Lcom/airbnb/lottie/c/g;->a(Ljava/lang/String;Lcom/airbnb/lottie/d;)V

    .line 231
    new-instance v0, Lcom/airbnb/lottie/j;

    invoke-direct {v0, v8}, Lcom/airbnb/lottie/j;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 233
    new-instance v1, Lcom/airbnb/lottie/j;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/j;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x53ef8c7d -> :sswitch_9
        -0x42252abe -> :sswitch_8
        0x68 -> :sswitch_7
        0x76 -> :sswitch_6
        0x77 -> :sswitch_5
        0xccc -> :sswitch_4
        0xd27 -> :sswitch_3
        0xde1 -> :sswitch_2
        0x5a3d7dd -> :sswitch_1
        0x5d17e04 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/j<",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 157
    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/e;->a(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/airbnb/lottie/j;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/airbnb/lottie/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/airbnb/lottie/j<",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation

    .line 163
    :try_start_0
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v0, p1}, Lcom/airbnb/lottie/e;->a(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/j;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 166
    invoke-static {p0}, Lcom/airbnb/lottie/f/f;->a(Ljava/io/Closeable;)V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_1

    invoke-static {p0}, Lcom/airbnb/lottie/f/f;->a(Ljava/io/Closeable;)V

    .line 168
    :cond_1
    throw p1
.end method

.method public static a(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/j<",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation

    .line 253
    :try_start_0
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e;->b(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/j;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    invoke-static {p0}, Lcom/airbnb/lottie/f/f;->a(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lcom/airbnb/lottie/f/f;->a(Ljava/io/Closeable;)V

    .line 256
    throw p1
.end method

.method public static a(Landroid/content/Context;I)Lcom/airbnb/lottie/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/airbnb/lottie/k<",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 114
    invoke-static {p1}, Lcom/airbnb/lottie/e;->a(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/airbnb/lottie/e$3;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/e$3;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v1}, Lcom/airbnb/lottie/e;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/k;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/k<",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation

    .line 1033
    new-instance v0, Lcom/airbnb/lottie/d/c;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/lottie/d/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1047
    new-instance p0, Lcom/airbnb/lottie/k;

    new-instance p1, Lcom/airbnb/lottie/d/c$1;

    invoke-direct {p1, v0}, Lcom/airbnb/lottie/d/c$1;-><init>(Lcom/airbnb/lottie/d/c;)V

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/k;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p0
.end method

.method public static a(Landroid/util/JsonReader;)Lcom/airbnb/lottie/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            ")",
            "Lcom/airbnb/lottie/k<",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation

    .line 216
    new-instance v0, Lcom/airbnb/lottie/e$4;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/e$4;-><init>(Landroid/util/JsonReader;)V

    const/4 p0, 0x0

    invoke-static {p0, v0}, Lcom/airbnb/lottie/e;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/k;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "Lcom/airbnb/lottie/j<",
            "Lcom/airbnb/lottie/d;",
            ">;>;)",
            "Lcom/airbnb/lottie/k<",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation

    .line 325
    invoke-static {}, Lcom/airbnb/lottie/c/g;->a()Lcom/airbnb/lottie/c/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/c/g;->a(Ljava/lang/String;)Lcom/airbnb/lottie/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 327
    new-instance p0, Lcom/airbnb/lottie/k;

    new-instance p1, Lcom/airbnb/lottie/e$5;

    invoke-direct {p1, v0}, Lcom/airbnb/lottie/e$5;-><init>(Lcom/airbnb/lottie/d;)V

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/k;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p0

    .line 335
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/e;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    sget-object p1, Lcom/airbnb/lottie/e;->a:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/k;

    return-object p0

    .line 339
    :cond_1
    new-instance v0, Lcom/airbnb/lottie/k;

    invoke-direct {v0, p1}, Lcom/airbnb/lottie/k;-><init>(Ljava/util/concurrent/Callable;)V

    .line 340
    new-instance p1, Lcom/airbnb/lottie/e$6;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/e$6;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/k;->a(Lcom/airbnb/lottie/h;)Lcom/airbnb/lottie/k;

    .line 348
    new-instance p1, Lcom/airbnb/lottie/e$2;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/e$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/k;->c(Lcom/airbnb/lottie/h;)Lcom/airbnb/lottie/k;

    .line 353
    sget-object p1, Lcom/airbnb/lottie/e;->a:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    const-string v0, "rawRes_"

    .line 136
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    .line 39
    sget-object v0, Lcom/airbnb/lottie/e;->a:Ljava/util/Map;

    return-object v0
.end method

.method public static b(Landroid/content/Context;I)Lcom/airbnb/lottie/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/airbnb/lottie/j<",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation

    .line 129
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p1}, Lcom/airbnb/lottie/e;->a(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 2157
    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/e;->a(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/airbnb/lottie/j;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 131
    new-instance p1, Lcom/airbnb/lottie/j;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/j;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method private static b(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/j;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/j<",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation

    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 265
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 267
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "__MACOSX"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 269
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    .line 270
    invoke-static {p0, p1, v1}, Lcom/airbnb/lottie/e;->a(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/airbnb/lottie/j;

    move-result-object v1

    .line 5029
    iget-object v1, v1, Lcom/airbnb/lottie/j;->a:Ljava/lang/Object;

    .line 270
    check-cast v1, Lcom/airbnb/lottie/d;

    move-object v2, v1

    goto :goto_1

    .line 271
    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 272
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 273
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v1, v3

    .line 274
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 276
    :cond_1
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 279
    :goto_1
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    .line 287
    new-instance p0, Lcom/airbnb/lottie/j;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to parse composition"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/j;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 290
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 291
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/airbnb/lottie/e;->a(Lcom/airbnb/lottie/d;Ljava/lang/String;)Lcom/airbnb/lottie/g;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 293
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 5059
    iput-object v0, v1, Lcom/airbnb/lottie/g;->c:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 5139
    :cond_5
    iget-object p0, v2, Lcom/airbnb/lottie/d;->c:Ljava/util/Map;

    .line 298
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 299
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/g;

    .line 6052
    iget-object v1, v1, Lcom/airbnb/lottie/g;->c:Landroid/graphics/Bitmap;

    if-nez v1, :cond_6

    .line 300
    new-instance p0, Lcom/airbnb/lottie/j;

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "There is no image for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/g;

    .line 7041
    iget-object v0, v0, Lcom/airbnb/lottie/g;->b:Ljava/lang/String;

    .line 300
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/j;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 304
    :cond_7
    invoke-static {}, Lcom/airbnb/lottie/c/g;->a()Lcom/airbnb/lottie/c/g;

    move-result-object p0

    invoke-virtual {p0, p1, v2}, Lcom/airbnb/lottie/c/g;->a(Ljava/lang/String;Lcom/airbnb/lottie/d;)V

    .line 305
    new-instance p0, Lcom/airbnb/lottie/j;

    invoke-direct {p0, v2}, Lcom/airbnb/lottie/j;-><init>(Ljava/lang/Object;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 282
    new-instance p1, Lcom/airbnb/lottie/j;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/j;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/k<",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 79
    new-instance v0, Lcom/airbnb/lottie/e$1;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/lottie/e$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/airbnb/lottie/e;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/k;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/j<",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "asset_"

    .line 96
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".zip"

    .line 97
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, v0}, Lcom/airbnb/lottie/e;->a(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/j;

    move-result-object p0

    return-object p0

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    const/4 p1, 0x1

    .line 1157
    invoke-static {p0, v0, p1}, Lcom/airbnb/lottie/e;->a(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/airbnb/lottie/j;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 102
    new-instance p1, Lcom/airbnb/lottie/j;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/j;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method
