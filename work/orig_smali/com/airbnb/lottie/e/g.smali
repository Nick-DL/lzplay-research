.class final Lcom/airbnb/lottie/e/g;
.super Ljava/lang/Object;
.source "ContentModelParser.java"


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/b/b;
    .registers 11

    .line 22
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x2

    move v1, v0

    .line 28
    :goto_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_46

    .line 29
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x64

    if-eq v7, v8, :cond_2a

    const/16 v8, 0xe85

    if-eq v7, v8, :cond_20

    goto :goto_34

    :cond_20
    const-string v7, "ty"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    move v2, v3

    goto :goto_35

    :cond_2a
    const-string v7, "d"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    move v2, v4

    goto :goto_35

    :cond_34
    :goto_34
    move v2, v5

    :goto_35
    packed-switch v2, :pswitch_data_1a6

    .line 37
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_5

    .line 34
    :pswitch_3c
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    goto :goto_5

    .line 31
    :pswitch_41
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    goto :goto_47

    :cond_46
    move-object v2, v6

    :goto_47
    if-nez v2, :cond_4a

    return-object v6

    .line 46
    :cond_4a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_1ae

    goto/16 :goto_dc

    :sswitch_53
    const-string v0, "tr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    const/4 v0, 0x5

    goto/16 :goto_dd

    :sswitch_5e
    const-string v0, "tm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    const/16 v0, 0x9

    goto/16 :goto_dd

    :sswitch_6a
    const-string v0, "st"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    move v0, v4

    goto/16 :goto_dd

    :sswitch_75
    const-string v0, "sr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    const/16 v0, 0xa

    goto :goto_dd

    :sswitch_80
    const-string v0, "sh"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    const/4 v0, 0x6

    goto :goto_dd

    :sswitch_8a
    const-string v0, "rp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    const/16 v0, 0xc

    goto :goto_dd

    :sswitch_95
    const-string v0, "rc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    const/16 v0, 0x8

    goto :goto_dd

    :sswitch_a0
    const-string v0, "mm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    const/16 v0, 0xb

    goto :goto_dd

    :sswitch_ab
    const-string v7, "gs"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_dc

    goto :goto_dd

    :sswitch_b4
    const-string v0, "gr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    move v0, v3

    goto :goto_dd

    :sswitch_be
    const-string v0, "gf"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    const/4 v0, 0x4

    goto :goto_dd

    :sswitch_c8
    const-string v0, "fl"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    const/4 v0, 0x3

    goto :goto_dd

    :sswitch_d2
    const-string v0, "el"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    const/4 v0, 0x7

    goto :goto_dd

    :cond_dc
    :goto_dc
    move v0, v5

    :goto_dd
    packed-switch v0, :pswitch_data_1e4

    const-string p1, "LOTTIE"

    const-string v0, "Unknown shape type "

    .line 90
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_197

    .line 87
    :pswitch_f1
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/y;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/b/k;

    move-result-object v6

    goto/16 :goto_197

    .line 81
    :pswitch_f7
    invoke-static {p0}, Lcom/airbnb/lottie/e/t;->a(Landroid/util/JsonReader;)Lcom/airbnb/lottie/c/b/h;

    move-result-object v6

    const-string v0, "Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove()."

    .line 82
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    goto/16 :goto_197

    .line 78
    :pswitch_102
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/w;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/b/i;

    move-result-object v6

    goto/16 :goto_197

    .line 75
    :pswitch_108
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/ae;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/b/q;

    move-result-object v6

    goto/16 :goto_197

    .line 72
    :pswitch_10e
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/x;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/b/j;

    move-result-object v6

    goto/16 :goto_197

    .line 69
    :pswitch_114
    invoke-static {p0, p1, v1}, Lcom/airbnb/lottie/e/e;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;I)Lcom/airbnb/lottie/c/b/a;

    move-result-object v6

    goto/16 :goto_197

    .line 66
    :pswitch_11a
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/ac;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/b/o;

    move-result-object v6

    goto/16 :goto_197

    .line 63
    :pswitch_120
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/c;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/l;

    move-result-object v6

    goto/16 :goto_197

    .line 60
    :pswitch_126
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/k;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/b/d;

    move-result-object v6

    goto/16 :goto_197

    .line 57
    :pswitch_12c
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/ab;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/b/m;

    move-result-object v6

    goto/16 :goto_197

    .line 54
    :pswitch_132
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/l;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/b/e;

    move-result-object v6

    goto/16 :goto_197

    .line 51
    :pswitch_138
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/ad;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/b/p;

    move-result-object v6

    goto :goto_197

    .line 1020
    :pswitch_13d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1022
    :goto_142
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_191

    .line 1023
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v7, 0xd2b

    if-eq v2, v7, :cond_163

    const/16 v7, 0xdbf

    if-eq v2, v7, :cond_159

    goto :goto_16d

    :cond_159
    const-string v2, "nm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16d

    move v1, v3

    goto :goto_16e

    :cond_163
    const-string v2, "it"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16d

    move v1, v4

    goto :goto_16e

    :cond_16d
    :goto_16d
    move v1, v5

    :goto_16e
    packed-switch v1, :pswitch_data_202

    .line 1038
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_142

    .line 1028
    :pswitch_175
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 1029
    :cond_178
    :goto_178
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_188

    .line 1030
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/g;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/b/b;

    move-result-object v1

    if-eqz v1, :cond_178

    .line 1032
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_178

    .line 1035
    :cond_188
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    goto :goto_142

    .line 1025
    :pswitch_18c
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    goto :goto_142

    .line 1042
    :cond_191
    new-instance p1, Lcom/airbnb/lottie/c/b/n;

    invoke-direct {p1, v6, v0}, Lcom/airbnb/lottie/c/b/n;-><init>(Ljava/lang/String;Ljava/util/List;)V

    move-object v6, p1

    .line 93
    :goto_197
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1a1

    .line 94
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_197

    .line 96
    :cond_1a1
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    return-object v6

    nop

    :pswitch_data_1a6
    .packed-switch 0x0
        :pswitch_41
        :pswitch_3c
    .end packed-switch

    :sswitch_data_1ae
    .sparse-switch
        0xca7 -> :sswitch_d2
        0xcc6 -> :sswitch_c8
        0xcdf -> :sswitch_be
        0xceb -> :sswitch_b4
        0xcec -> :sswitch_ab
        0xda0 -> :sswitch_a0
        0xe31 -> :sswitch_95
        0xe3e -> :sswitch_8a
        0xe55 -> :sswitch_80
        0xe5f -> :sswitch_75
        0xe61 -> :sswitch_6a
        0xe79 -> :sswitch_5e
        0xe7e -> :sswitch_53
    .end sparse-switch

    :pswitch_data_1e4
    .packed-switch 0x0
        :pswitch_13d
        :pswitch_138
        :pswitch_132
        :pswitch_12c
        :pswitch_126
        :pswitch_120
        :pswitch_11a
        :pswitch_114
        :pswitch_10e
        :pswitch_108
        :pswitch_102
        :pswitch_f7
        :pswitch_f1
    .end packed-switch

    :pswitch_data_202
    .packed-switch 0x0
        :pswitch_18c
        :pswitch_175
    .end packed-switch
.end method
