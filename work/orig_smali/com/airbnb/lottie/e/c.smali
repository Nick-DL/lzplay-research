.class public final Lcom/airbnb/lottie/e/c;
.super Ljava/lang/Object;
.source "AnimatableTransformParser.java"


# direct methods
.method public static a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/l;
    .registers 16

    .line 34
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v0

    sget-object v1, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v3

    :goto_d
    if-eqz v0, :cond_12

    .line 36
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    :cond_12
    const/4 v1, 0x0

    move-object v4, v1

    move-object v5, v4

    move-object v8, v5

    move-object v10, v8

    move-object v12, v10

    move-object v13, v12

    .line 38
    :goto_19
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d4

    .line 39
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_106

    goto :goto_7c

    :sswitch_2c
    const-string v9, "so"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7c

    const/4 v6, 0x6

    goto :goto_7d

    :sswitch_36
    const-string v9, "rz"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7c

    const/4 v6, 0x3

    goto :goto_7d

    :sswitch_40
    const-string v9, "eo"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7c

    const/4 v6, 0x7

    goto :goto_7d

    :sswitch_4a
    const-string v9, "s"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7c

    const/4 v6, 0x2

    goto :goto_7d

    :sswitch_54
    const-string v9, "r"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7c

    const/4 v6, 0x4

    goto :goto_7d

    :sswitch_5e
    const-string v9, "p"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7c

    move v6, v2

    goto :goto_7d

    :sswitch_68
    const-string v9, "o"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7c

    const/4 v6, 0x5

    goto :goto_7d

    :sswitch_72
    const-string v9, "a"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7c

    move v6, v3

    goto :goto_7d

    :cond_7c
    :goto_7c
    move v6, v7

    :goto_7d
    packed-switch v6, :pswitch_data_128

    .line 73
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_19

    .line 70
    :pswitch_84
    invoke-static {p0, p1, v3}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Z)Lcom/airbnb/lottie/c/a/b;

    move-result-object v13

    goto :goto_19

    .line 67
    :pswitch_89
    invoke-static {p0, p1, v3}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Z)Lcom/airbnb/lottie/c/a/b;

    move-result-object v12

    goto :goto_19

    .line 64
    :pswitch_8e
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/d;

    move-result-object v5

    goto :goto_19

    :pswitch_93
    const-string v6, "Lottie doesn\'t support 3D layers."

    .line 59
    invoke-virtual {p1, v6}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    .line 61
    :pswitch_98
    invoke-static {p0, p1, v3}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Z)Lcom/airbnb/lottie/c/a/b;

    move-result-object v10

    goto/16 :goto_19

    .line 1049
    :pswitch_9e
    new-instance v4, Lcom/airbnb/lottie/c/a/g;

    sget-object v6, Lcom/airbnb/lottie/e/z;->a:Lcom/airbnb/lottie/e/z;

    invoke-static {p0, p1, v6}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Lcom/airbnb/lottie/e/af;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/airbnb/lottie/c/a/g;-><init>(Ljava/util/List;)V

    goto/16 :goto_19

    .line 53
    :pswitch_ab
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/a;->b(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/m;

    move-result-object v8

    goto/16 :goto_19

    .line 41
    :pswitch_b1
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 42
    :goto_b4
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_cf

    .line 43
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "k"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cb

    .line 44
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/a;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/e;

    move-result-object v1

    goto :goto_b4

    .line 46
    :cond_cb
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_b4

    .line 49
    :cond_cf
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_19

    :cond_d4
    if-eqz v0, :cond_d9

    .line 77
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    :cond_d9
    if-nez v1, :cond_e7

    const-string p0, "LOTTIE"

    const-string p1, "Layer has no transform property. You may be using an unsupported layer type such as a camera."

    .line 83
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v1, Lcom/airbnb/lottie/c/a/e;

    invoke-direct {v1}, Lcom/airbnb/lottie/c/a/e;-><init>()V

    :cond_e7
    move-object v7, v1

    if-nez v4, :cond_f6

    .line 90
    new-instance v4, Lcom/airbnb/lottie/c/a/g;

    new-instance p0, Lcom/airbnb/lottie/g/d;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p1}, Lcom/airbnb/lottie/g/d;-><init>(FF)V

    invoke-direct {v4, p0}, Lcom/airbnb/lottie/c/a/g;-><init>(Lcom/airbnb/lottie/g/d;)V

    :cond_f6
    move-object v9, v4

    if-nez v5, :cond_fe

    .line 95
    new-instance v5, Lcom/airbnb/lottie/c/a/d;

    invoke-direct {v5}, Lcom/airbnb/lottie/c/a/d;-><init>()V

    :cond_fe
    move-object v11, v5

    .line 98
    new-instance p0, Lcom/airbnb/lottie/c/a/l;

    move-object v6, p0

    invoke-direct/range {v6 .. v13}, Lcom/airbnb/lottie/c/a/l;-><init>(Lcom/airbnb/lottie/c/a/e;Lcom/airbnb/lottie/c/a/m;Lcom/airbnb/lottie/c/a/g;Lcom/airbnb/lottie/c/a/b;Lcom/airbnb/lottie/c/a/d;Lcom/airbnb/lottie/c/a/b;Lcom/airbnb/lottie/c/a/b;)V

    return-object p0

    :sswitch_data_106
    .sparse-switch
        0x61 -> :sswitch_72
        0x6f -> :sswitch_68
        0x70 -> :sswitch_5e
        0x72 -> :sswitch_54
        0x73 -> :sswitch_4a
        0xcaa -> :sswitch_40
        0xe48 -> :sswitch_36
        0xe5c -> :sswitch_2c
    .end sparse-switch

    :pswitch_data_128
    .packed-switch 0x0
        :pswitch_b1
        :pswitch_ab
        :pswitch_9e
        :pswitch_93
        :pswitch_98
        :pswitch_8e
        :pswitch_89
        :pswitch_84
    .end packed-switch
.end method
