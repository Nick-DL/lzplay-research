.class final Lcom/airbnb/lottie/e/ad;
.super Ljava/lang/Object;
.source "ShapeStrokeParser.java"


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/b/p;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 30
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v11, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 32
    :cond_12
    :goto_12
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_17b

    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/16 v15, 0x6f

    const/16 v16, -0x1

    if-eq v13, v15, :cond_84

    const/16 v2, 0x77

    if-eq v13, v2, :cond_7a

    const/16 v2, 0xd77

    if-eq v13, v2, :cond_70

    const/16 v2, 0xd7e

    if-eq v13, v2, :cond_66

    const/16 v2, 0xd9f

    if-eq v13, v2, :cond_5c

    const/16 v2, 0xdbf

    if-eq v13, v2, :cond_52

    packed-switch v13, :pswitch_data_18a

    goto :goto_8e

    :pswitch_3e
    const-string v2, "d"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    const/4 v2, 0x7

    goto :goto_90

    :pswitch_48
    const-string v2, "c"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    const/4 v2, 0x1

    goto :goto_90

    :cond_52
    const-string v2, "nm"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    const/4 v2, 0x0

    goto :goto_90

    :cond_5c
    const-string v2, "ml"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    const/4 v2, 0x6

    goto :goto_90

    :cond_66
    const-string v2, "lj"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    const/4 v2, 0x5

    goto :goto_90

    :cond_70
    const-string v2, "lc"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    const/4 v2, 0x4

    goto :goto_90

    :cond_7a
    const-string v2, "w"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    const/4 v2, 0x2

    goto :goto_90

    :cond_84
    const-string v2, "o"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    const/4 v2, 0x3

    goto :goto_90

    :cond_8e
    :goto_8e
    move/from16 v2, v16

    :goto_90
    packed-switch v2, :pswitch_data_192

    .line 94
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_12

    .line 56
    :pswitch_98
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 57
    :goto_9b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12b

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v2, 0x0

    const/4 v12, 0x0

    .line 62
    :goto_a6
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e7

    .line 63
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v15

    const/16 v14, 0x6e

    if-eq v15, v14, :cond_c7

    const/16 v14, 0x76

    if-eq v15, v14, :cond_bd

    goto :goto_d1

    :cond_bd
    const-string v14, "v"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d1

    const/4 v13, 0x1

    goto :goto_d3

    :cond_c7
    const-string v14, "n"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d1

    const/4 v13, 0x0

    goto :goto_d3

    :cond_d1
    :goto_d1
    move/from16 v13, v16

    :goto_d3
    packed-switch v13, :pswitch_data_1a6

    .line 71
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    :goto_d9
    const/16 v15, 0x6f

    goto :goto_a6

    :pswitch_dc
    const/4 v13, 0x1

    .line 2027
    invoke-static {v0, v1, v13}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Z)Lcom/airbnb/lottie/c/a/b;

    move-result-object v12

    goto :goto_d9

    .line 65
    :pswitch_e2
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    goto :goto_d9

    .line 74
    :cond_e7
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 76
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/16 v14, 0x64

    if-eq v13, v14, :cond_111

    const/16 v14, 0x67

    if-eq v13, v14, :cond_105

    const/16 v14, 0x6f

    if-eq v13, v14, :cond_fb

    goto :goto_11d

    :cond_fb
    const-string v13, "o"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11d

    const/4 v2, 0x0

    goto :goto_11f

    :cond_105
    const/16 v14, 0x6f

    const-string v13, "g"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11d

    const/4 v2, 0x2

    goto :goto_11f

    :cond_111
    const/16 v14, 0x6f

    const-string v13, "d"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11d

    const/4 v2, 0x1

    goto :goto_11f

    :cond_11d
    :goto_11d
    move/from16 v2, v16

    :goto_11f
    packed-switch v2, :pswitch_data_1ae

    goto :goto_128

    .line 82
    :pswitch_123
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_128

    :pswitch_127
    move-object v5, v12

    :goto_128
    move v15, v14

    goto/16 :goto_9b

    .line 86
    :cond_12b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    .line 88
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v12, 0x1

    if-ne v2, v12, :cond_12

    const/4 v2, 0x0

    .line 90
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12

    .line 53
    :pswitch_13f
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v11

    double-to-float v11, v11

    goto/16 :goto_12

    :pswitch_146
    const/4 v12, 0x1

    .line 50
    invoke-static {}, Lcom/airbnb/lottie/c/b/p$b;->values()[Lcom/airbnb/lottie/c/b/p$b;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v10

    sub-int/2addr v10, v12

    aget-object v10, v2, v10

    goto/16 :goto_12

    :pswitch_154
    const/4 v12, 0x1

    .line 47
    invoke-static {}, Lcom/airbnb/lottie/c/b/p$a;->values()[Lcom/airbnb/lottie/c/b/p$a;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v9

    sub-int/2addr v9, v12

    aget-object v9, v2, v9

    goto/16 :goto_12

    .line 44
    :pswitch_162
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/d;

    move-result-object v7

    goto/16 :goto_12

    :pswitch_168
    const/4 v12, 0x1

    .line 1027
    invoke-static {v0, v1, v12}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Z)Lcom/airbnb/lottie/c/a/b;

    move-result-object v8

    goto/16 :goto_12

    .line 38
    :pswitch_16f
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/e/d;->d(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/a;

    move-result-object v6

    goto/16 :goto_12

    .line 35
    :pswitch_175
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_12

    .line 98
    :cond_17b
    new-instance v12, Lcom/airbnb/lottie/c/b/p;

    move-object v0, v12

    move-object v1, v4

    move-object v2, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move v9, v11

    invoke-direct/range {v0 .. v9}, Lcom/airbnb/lottie/c/b/p;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/c/a/b;Ljava/util/List;Lcom/airbnb/lottie/c/a/a;Lcom/airbnb/lottie/c/a/d;Lcom/airbnb/lottie/c/a/b;Lcom/airbnb/lottie/c/b/p$a;Lcom/airbnb/lottie/c/b/p$b;F)V

    return-object v12

    :pswitch_data_18a
    .packed-switch 0x63
        :pswitch_48
        :pswitch_3e
    .end packed-switch

    :pswitch_data_192
    .packed-switch 0x0
        :pswitch_175
        :pswitch_16f
        :pswitch_168
        :pswitch_162
        :pswitch_154
        :pswitch_146
        :pswitch_13f
        :pswitch_98
    .end packed-switch

    :pswitch_data_1a6
    .packed-switch 0x0
        :pswitch_e2
        :pswitch_dc
    .end packed-switch

    :pswitch_data_1ae
    .packed-switch 0x0
        :pswitch_127
        :pswitch_123
        :pswitch_123
    .end packed-switch
.end method
