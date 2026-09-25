.class final Lcom/airbnb/lottie/e/w;
.super Ljava/lang/Object;
.source "PolystarShapeParser.java"


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/b/i;
    .locals 14

    const/4 v0, 0x0

    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    .line 29
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    sparse-switch v11, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v11, "sy"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v12

    goto :goto_1

    :sswitch_1
    const-string v11, "pt"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v11, "os"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_3
    const-string v11, "or"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_4
    const-string v11, "nm"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v13

    goto :goto_1

    :sswitch_5
    const-string v11, "is"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_6
    const-string v11, "ir"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_7
    const-string v11, "r"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_8
    const-string v11, "p"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    :cond_0
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 59
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 56
    :pswitch_0
    invoke-static {p0, p1, v13}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Z)Lcom/airbnb/lottie/c/a/b;

    move-result-object v9

    goto :goto_0

    .line 2027
    :pswitch_1
    invoke-static {p0, p1, v12}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Z)Lcom/airbnb/lottie/c/a/b;

    move-result-object v7

    goto :goto_0

    .line 50
    :pswitch_2
    invoke-static {p0, p1, v13}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Z)Lcom/airbnb/lottie/c/a/b;

    move-result-object v10

    goto/16 :goto_0

    .line 1027
    :pswitch_3
    invoke-static {p0, p1, v12}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Z)Lcom/airbnb/lottie/c/a/b;

    move-result-object v8

    goto/16 :goto_0

    .line 44
    :pswitch_4
    invoke-static {p0, p1, v13}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Z)Lcom/airbnb/lottie/c/a/b;

    move-result-object v6

    goto/16 :goto_0

    .line 41
    :pswitch_5
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/a;->b(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/m;

    move-result-object v5

    goto/16 :goto_0

    .line 38
    :pswitch_6
    invoke-static {p0, p1, v13}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Z)Lcom/airbnb/lottie/c/a/b;

    move-result-object v4

    goto/16 :goto_0

    .line 35
    :pswitch_7
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    invoke-static {v0}, Lcom/airbnb/lottie/c/b/i$a;->forValue(I)Lcom/airbnb/lottie/c/b/i$a;

    move-result-object v3

    goto/16 :goto_0

    .line 32
    :pswitch_8
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 63
    :cond_1
    new-instance p0, Lcom/airbnb/lottie/c/b/i;

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/airbnb/lottie/c/b/i;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/c/b/i$a;Lcom/airbnb/lottie/c/a/b;Lcom/airbnb/lottie/c/a/m;Lcom/airbnb/lottie/c/a/b;Lcom/airbnb/lottie/c/a/b;Lcom/airbnb/lottie/c/a/b;Lcom/airbnb/lottie/c/a/b;Lcom/airbnb/lottie/c/a/b;)V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x70 -> :sswitch_8
        0x72 -> :sswitch_7
        0xd29 -> :sswitch_6
        0xd2a -> :sswitch_5
        0xdbf -> :sswitch_4
        0xde3 -> :sswitch_3
        0xde4 -> :sswitch_2
        0xe04 -> :sswitch_1
        0xe66 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
