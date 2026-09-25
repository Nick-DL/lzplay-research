.class public final Lcom/airbnb/lottie/e/c;
.super Ljava/lang/Object;
.source "AnimatableTransformParser.java"


# direct methods
.method public static a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/l;
    .locals 14

    .line 34
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v0

    sget-object v1, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    :cond_1
    const/4 v1, 0x0

    move-object v4, v1

    move-object v5, v4

    move-object v8, v5

    move-object v10, v8

    move-object v12, v10

    move-object v13, v12

    .line 38
    :goto_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 39
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v9, "so"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x6

    goto :goto_3

    :sswitch_1
    const-string v9, "rz"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x3

    goto :goto_3

    :sswitch_2
    const-string v9, "eo"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x7

    goto :goto_3

    :sswitch_3
    const-string v9, "s"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x2

    goto :goto_3

    :sswitch_4
    const-string v9, "r"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x4

    goto :goto_3

    :sswitch_5
    const-string v9, "p"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v2

    goto :goto_3

    :sswitch_6
    const-string v9, "o"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x5

    goto :goto_3

    :sswitch_7
    const-string v9, "a"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v3

    goto :goto_3

    :cond_2
    :goto_2
    move v6, v7

    :goto_3
    packed-switch v6, :pswitch_data_0

    .line 73
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 70
    :pswitch_0
    invoke-static {p0, p1, v3}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Z)Lcom/airbnb/lottie/c/a/b;

    move-result-object v13

    goto :goto_1

    .line 67
    :pswitch_1
    invoke-static {p0, p1, v3}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Z)Lcom/airbnb/lottie/c/a/b;

    move-result-object v12

    goto :goto_1

    .line 64
    :pswitch_2
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/d;

    move-result-object v5

    goto :goto_1

    :pswitch_3
    const-string v6, "Lottie doesn\'t support 3D layers."

    .line 59
    invoke-virtual {p1, v6}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    .line 61
    :pswitch_4
    invoke-static {p0, p1, v3}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Z)Lcom/airbnb/lottie/c/a/b;

    move-result-object v10

    goto/16 :goto_1

    .line 1049
    :pswitch_5
    new-instance v4, Lcom/airbnb/lottie/c/a/g;

    sget-object v6, Lcom/airbnb/lottie/e/z;->a:Lcom/airbnb/lottie/e/z;

    invoke-static {p0, p1, v6}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Lcom/airbnb/lottie/e/af;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/airbnb/lottie/c/a/g;-><init>(Ljava/util/List;)V

    goto/16 :goto_1

    .line 53
    :pswitch_6
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/a;->b(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/m;

    move-result-object v8

    goto/16 :goto_1

    .line 41
    :pswitch_7
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 42
    :goto_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 43
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "k"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 44
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/a;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/e;

    move-result-object v1

    goto :goto_4

    .line 46
    :cond_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_4

    .line 49
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_1

    :cond_5
    if-eqz v0, :cond_6

    .line 77
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    :cond_6
    if-nez v1, :cond_7

    const-string p0, "LOTTIE"

    const-string p1, "Layer has no transform property. You may be using an unsupported layer type such as a camera."

    .line 83
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v1, Lcom/airbnb/lottie/c/a/e;

    invoke-direct {v1}, Lcom/airbnb/lottie/c/a/e;-><init>()V

    :cond_7
    move-object v7, v1

    if-nez v4, :cond_8

    .line 90
    new-instance v4, Lcom/airbnb/lottie/c/a/g;

    new-instance p0, Lcom/airbnb/lottie/g/d;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p1}, Lcom/airbnb/lottie/g/d;-><init>(FF)V

    invoke-direct {v4, p0}, Lcom/airbnb/lottie/c/a/g;-><init>(Lcom/airbnb/lottie/g/d;)V

    :cond_8
    move-object v9, v4

    if-nez v5, :cond_9

    .line 95
    new-instance v5, Lcom/airbnb/lottie/c/a/d;

    invoke-direct {v5}, Lcom/airbnb/lottie/c/a/d;-><init>()V

    :cond_9
    move-object v11, v5

    .line 98
    new-instance p0, Lcom/airbnb/lottie/c/a/l;

    move-object v6, p0

    invoke-direct/range {v6 .. v13}, Lcom/airbnb/lottie/c/a/l;-><init>(Lcom/airbnb/lottie/c/a/e;Lcom/airbnb/lottie/c/a/m;Lcom/airbnb/lottie/c/a/g;Lcom/airbnb/lottie/c/a/b;Lcom/airbnb/lottie/c/a/d;Lcom/airbnb/lottie/c/a/b;Lcom/airbnb/lottie/c/a/b;)V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_7
        0x6f -> :sswitch_6
        0x70 -> :sswitch_5
        0x72 -> :sswitch_4
        0x73 -> :sswitch_3
        0xcaa -> :sswitch_2
        0xe48 -> :sswitch_1
        0xe5c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
