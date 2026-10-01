.class final Lcom/airbnb/lottie/e/l;
.super Ljava/lang/Object;
.source "GradientStrokeParser.java"


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/b/e;
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 37
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v14, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    .line 39
    :goto_15
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_21a

    .line 40
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v16

    const/16 v17, -0x1

    sparse-switch v16, :sswitch_data_232

    goto/16 :goto_9c

    :sswitch_2a
    const-string v2, "nm"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    const/4 v2, 0x0

    goto/16 :goto_9e

    :sswitch_35
    const-string v2, "ml"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    const/16 v2, 0x9

    goto :goto_9e

    :sswitch_40
    const-string v2, "lj"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    const/16 v2, 0x8

    goto :goto_9e

    :sswitch_4b
    const-string v2, "lc"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    const/4 v2, 0x7

    goto :goto_9e

    :sswitch_55
    const-string v2, "w"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    const/4 v2, 0x6

    goto :goto_9e

    :sswitch_5f
    const-string v2, "t"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    const/4 v2, 0x3

    goto :goto_9e

    :sswitch_69
    const-string v2, "s"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    const/4 v2, 0x4

    goto :goto_9e

    :sswitch_73
    const-string v2, "o"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    const/4 v2, 0x2

    goto :goto_9e

    :sswitch_7d
    const-string v2, "g"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    const/4 v2, 0x1

    goto :goto_9e

    :sswitch_87
    const-string v2, "e"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    const/4 v2, 0x5

    goto :goto_9e

    :sswitch_91
    const-string v2, "d"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    const/16 v2, 0xa

    goto :goto_9e

    :cond_9c
    :goto_9c
    move/from16 v2, v17

    :goto_9e
    packed-switch v2, :pswitch_data_260

    move-object/from16 v20, v13

    move/from16 v19, v14

    .line 118
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_216

    .line 86
    :pswitch_aa
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 87
    :goto_ad
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_130

    .line 90
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 91
    :goto_b8
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_103

    move-object/from16 v18, v15

    .line 92
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v15

    move/from16 v19, v14

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v14

    move-object/from16 v20, v13

    const/16 v13, 0x6e

    if-eq v14, v13, :cond_df

    const/16 v13, 0x76

    if-eq v14, v13, :cond_d5

    goto :goto_e9

    :cond_d5
    const-string v13, "v"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e9

    const/4 v13, 0x1

    goto :goto_eb

    :cond_df
    const-string v13, "n"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e9

    const/4 v13, 0x0

    goto :goto_eb

    :cond_e9
    :goto_e9
    move/from16 v13, v17

    :goto_eb
    packed-switch v13, :pswitch_data_27a

    .line 100
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    :goto_f1
    move-object/from16 v15, v18

    move/from16 v14, v19

    move-object/from16 v13, v20

    goto :goto_b8

    :pswitch_f8
    const/4 v13, 0x1

    .line 2027
    invoke-static {v0, v1, v13}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Z)Lcom/airbnb/lottie/c/a/b;

    move-result-object v2

    goto :goto_f1

    .line 94
    :pswitch_fe
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto :goto_f1

    :cond_103
    move-object/from16 v20, v13

    move/from16 v19, v14

    move-object/from16 v18, v15

    .line 103
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    const-string v13, "o"

    .line 105
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11a

    move-object v15, v2

    :goto_115
    move/from16 v14, v19

    move-object/from16 v13, v20

    goto :goto_ad

    :cond_11a
    const-string v13, "d"

    .line 107
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_12a

    const-string v13, "g"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12d

    .line 108
    :cond_12a
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12d
    move-object/from16 v15, v18

    goto :goto_115

    :cond_130
    move-object/from16 v20, v13

    move/from16 v19, v14

    move-object/from16 v18, v15

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    .line 112
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    const/4 v13, 0x1

    if-ne v2, v13, :cond_148

    const/4 v2, 0x0

    .line 114
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_148
    move-object/from16 v15, v18

    goto/16 :goto_216

    :pswitch_14c
    move-object/from16 v20, v13

    const/4 v2, 0x0

    .line 83
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v13

    double-to-float v14, v13

    goto :goto_184

    :pswitch_155
    move/from16 v19, v14

    const/4 v2, 0x0

    const/4 v13, 0x1

    .line 80
    invoke-static {}, Lcom/airbnb/lottie/c/b/p$b;->values()[Lcom/airbnb/lottie/c/b/p$b;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v14

    sub-int/2addr v14, v13

    aget-object v13, v3, v14

    move/from16 v14, v19

    goto/16 :goto_15

    :pswitch_168
    move-object/from16 v20, v13

    move/from16 v19, v14

    const/4 v2, 0x0

    const/4 v13, 0x1

    .line 77
    invoke-static {}, Lcom/airbnb/lottie/c/b/p$a;->values()[Lcom/airbnb/lottie/c/b/p$a;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v12

    sub-int/2addr v12, v13

    aget-object v12, v3, v12

    goto :goto_184

    :pswitch_17a
    move-object/from16 v20, v13

    move/from16 v19, v14

    const/4 v2, 0x0

    const/4 v13, 0x1

    .line 1027
    invoke-static {v0, v1, v13}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Z)Lcom/airbnb/lottie/c/a/b;

    move-result-object v10

    :goto_184
    move-object/from16 v13, v20

    goto/16 :goto_15

    :pswitch_188
    move-object/from16 v20, v13

    move/from16 v19, v14

    const/4 v2, 0x0

    .line 71
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/e/d;->b(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/f;

    move-result-object v9

    goto/16 :goto_15

    :pswitch_193
    move-object/from16 v20, v13

    move/from16 v19, v14

    const/4 v2, 0x0

    .line 68
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/e/d;->b(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/f;

    move-result-object v8

    goto/16 :goto_15

    :pswitch_19e
    move-object/from16 v20, v13

    move/from16 v19, v14

    const/4 v2, 0x0

    const/4 v13, 0x1

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    if-ne v3, v13, :cond_1af

    sget v3, Lcom/airbnb/lottie/c/b/f;->Linear$9a8e412:I

    :goto_1ac
    move v5, v3

    goto/16 :goto_216

    :cond_1af
    sget v3, Lcom/airbnb/lottie/c/b/f;->Radial$9a8e412:I

    goto :goto_1ac

    :pswitch_1b2
    move-object/from16 v20, v13

    move/from16 v19, v14

    const/4 v2, 0x0

    .line 62
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/d;

    move-result-object v7

    goto/16 :goto_15

    :pswitch_1bd
    move-object/from16 v20, v13

    move/from16 v19, v14

    const/4 v2, 0x0

    const/4 v13, 0x1

    .line 46
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    move/from16 v3, v17

    .line 47
    :goto_1c8
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_208

    .line 48
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v13, 0x6b

    if-eq v2, v13, :cond_1e9

    const/16 v13, 0x70

    if-eq v2, v13, :cond_1df

    goto :goto_1f3

    :cond_1df
    const-string v2, "p"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f3

    const/4 v2, 0x0

    goto :goto_1f5

    :cond_1e9
    const-string v2, "k"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f3

    const/4 v2, 0x1

    goto :goto_1f5

    :cond_1f3
    :goto_1f3
    move/from16 v2, v17

    :goto_1f5
    packed-switch v2, :pswitch_data_282

    .line 56
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    :goto_1fb
    const/4 v2, 0x0

    const/4 v13, 0x1

    goto :goto_1c8

    .line 53
    :pswitch_1fe
    invoke-static {v0, v1, v3}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;I)Lcom/airbnb/lottie/c/a/c;

    move-result-object v6

    goto :goto_1fb

    .line 50
    :pswitch_203
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    goto :goto_1fb

    .line 59
    :cond_208
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    goto :goto_216

    :pswitch_20c
    move-object/from16 v20, v13

    move/from16 v19, v14

    .line 42
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_15

    :goto_216
    move/from16 v14, v19

    goto/16 :goto_184

    :cond_21a
    move-object/from16 v20, v13

    move/from16 v19, v14

    .line 122
    new-instance v13, Lcom/airbnb/lottie/c/b/e;

    move-object v0, v13

    move-object v1, v4

    move v2, v5

    move-object v3, v6

    move-object v4, v7

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    move-object v8, v12

    move-object/from16 v9, v20

    move/from16 v10, v19

    move-object v12, v15

    invoke-direct/range {v0 .. v12}, Lcom/airbnb/lottie/c/b/e;-><init>(Ljava/lang/String;ILcom/airbnb/lottie/c/a/c;Lcom/airbnb/lottie/c/a/d;Lcom/airbnb/lottie/c/a/f;Lcom/airbnb/lottie/c/a/f;Lcom/airbnb/lottie/c/a/b;Lcom/airbnb/lottie/c/b/p$a;Lcom/airbnb/lottie/c/b/p$b;FLjava/util/List;Lcom/airbnb/lottie/c/a/b;)V

    return-object v13

    :sswitch_data_232
    .sparse-switch
        0x64 -> :sswitch_91
        0x65 -> :sswitch_87
        0x67 -> :sswitch_7d
        0x6f -> :sswitch_73
        0x73 -> :sswitch_69
        0x74 -> :sswitch_5f
        0x77 -> :sswitch_55
        0xd77 -> :sswitch_4b
        0xd7e -> :sswitch_40
        0xd9f -> :sswitch_35
        0xdbf -> :sswitch_2a
    .end sparse-switch

    :pswitch_data_260
    .packed-switch 0x0
        :pswitch_20c
        :pswitch_1bd
        :pswitch_1b2
        :pswitch_19e
        :pswitch_193
        :pswitch_188
        :pswitch_17a
        :pswitch_168
        :pswitch_155
        :pswitch_14c
        :pswitch_aa
    .end packed-switch

    :pswitch_data_27a
    .packed-switch 0x0
        :pswitch_fe
        :pswitch_f8
    .end packed-switch

    :pswitch_data_282
    .packed-switch 0x0
        :pswitch_203
        :pswitch_1fe
    .end packed-switch
.end method
