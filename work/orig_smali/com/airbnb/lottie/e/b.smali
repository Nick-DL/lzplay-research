.class public final Lcom/airbnb/lottie/e/b;
.super Ljava/lang/Object;
.source "AnimatableTextPropertiesParser.java"


# direct methods
.method public static a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/k;
    .registers 13

    .line 20
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x0

    move-object v1, v0

    .line 21
    :goto_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 22
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x61

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eq v3, v4, :cond_1a

    goto :goto_24

    :cond_1a
    const-string v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    move v2, v5

    goto :goto_25

    :cond_24
    :goto_24
    move v2, v6

    :goto_25
    if-eqz v2, :cond_2b

    .line 27
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_5

    .line 1045
    :cond_2b
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    .line 1046
    :goto_32
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_96

    .line 1047
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0x74

    const/4 v10, 0x1

    if-eq v8, v9, :cond_70

    const/16 v9, 0xcbd

    if-eq v8, v9, :cond_66

    const/16 v9, 0xe50

    if-eq v8, v9, :cond_5c

    const/16 v9, 0xe64

    if-eq v8, v9, :cond_52

    goto :goto_7a

    :cond_52
    const-string v8, "sw"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7a

    const/4 v7, 0x2

    goto :goto_7b

    :cond_5c
    const-string v8, "sc"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7a

    move v7, v10

    goto :goto_7b

    :cond_66
    const-string v8, "fc"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7a

    move v7, v5

    goto :goto_7b

    :cond_70
    const-string v8, "t"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7a

    const/4 v7, 0x3

    goto :goto_7b

    :cond_7a
    :goto_7a
    move v7, v6

    :goto_7b
    packed-switch v7, :pswitch_data_ae

    .line 1061
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_32

    .line 3027
    :pswitch_82
    invoke-static {p0, p1, v10}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Z)Lcom/airbnb/lottie/c/a/b;

    move-result-object v4

    goto :goto_32

    .line 2027
    :pswitch_87
    invoke-static {p0, p1, v10}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Z)Lcom/airbnb/lottie/c/a/b;

    move-result-object v3

    goto :goto_32

    .line 1052
    :pswitch_8c
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/d;->d(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/a;

    move-result-object v2

    goto :goto_32

    .line 1049
    :pswitch_91
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/d;->d(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/a;

    move-result-object v1

    goto :goto_32

    .line 1064
    :cond_96
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 1066
    new-instance v5, Lcom/airbnb/lottie/c/a/k;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/airbnb/lottie/c/a/k;-><init>(Lcom/airbnb/lottie/c/a/a;Lcom/airbnb/lottie/c/a/a;Lcom/airbnb/lottie/c/a/b;Lcom/airbnb/lottie/c/a/b;)V

    move-object v1, v5

    goto/16 :goto_5

    .line 30
    :cond_a1
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    if-nez v1, :cond_ac

    .line 33
    new-instance p0, Lcom/airbnb/lottie/c/a/k;

    invoke-direct {p0, v0, v0, v0, v0}, Lcom/airbnb/lottie/c/a/k;-><init>(Lcom/airbnb/lottie/c/a/a;Lcom/airbnb/lottie/c/a/a;Lcom/airbnb/lottie/c/a/b;Lcom/airbnb/lottie/c/a/b;)V

    return-object p0

    :cond_ac
    return-object v1

    nop

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_91
        :pswitch_8c
        :pswitch_87
        :pswitch_82
    .end packed-switch
.end method
