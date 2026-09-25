.class final Lcom/airbnb/lottie/e/l;
.super Ljava/lang/Object;
.source "GradientStrokeParser.java"


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/b/e;
    .locals 21

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
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_f

    .line 40
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v16

    const/16 v17, -0x1

    sparse-switch v16, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "nm"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto/16 :goto_2

    :sswitch_1
    const-string v2, "ml"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    goto :goto_2

    :sswitch_2
    const-string v2, "lj"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_2

    :sswitch_3
    const-string v2, "lc"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto :goto_2

    :sswitch_4
    const-string v2, "w"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto :goto_2

    :sswitch_5
    const-string v2, "t"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_2

    :sswitch_6
    const-string v2, "s"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_2

    :sswitch_7
    const-string v2, "o"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_2

    :sswitch_8
    const-string v2, "g"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_2

    :sswitch_9
    const-string v2, "e"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_2

    :sswitch_a
    const-string v2, "d"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    goto :goto_2

    :cond_0
    :goto_1
    move/from16 v2, v17

    :goto_2
    packed-switch v2, :pswitch_data_0

    move-object/from16 v20, v13

    move/from16 v19, v14

    .line 118
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_f

    .line 86
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 87
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 90
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 91
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    move-object/from16 v18, v15

    .line 92
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v15

    move/from16 v19, v14

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v14

    move-object/from16 v20, v13

    const/16 v13, 0x6e

    if-eq v14, v13, :cond_2

    const/16 v13, 0x76

    if-eq v14, v13, :cond_1

    goto :goto_5

    :cond_1
    const-string v13, "v"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    goto :goto_6

    :cond_2
    const-string v13, "n"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v13, 0x0

    goto :goto_6

    :cond_3
    :goto_5
    move/from16 v13, v17

    :goto_6
    packed-switch v13, :pswitch_data_1

    .line 100
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    :goto_7
    move-object/from16 v15, v18

    move/from16 v14, v19

    move-object/from16 v13, v20

    goto :goto_4

    :pswitch_1
    const/4 v13, 0x1

    .line 2027
    invoke-static {v0, v1, v13}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Z)Lcom/airbnb/lottie/c/a/b;

    move-result-object v2

    goto :goto_7

    .line 94
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_4
    move-object/from16 v20, v13

    move/from16 v19, v14

    move-object/from16 v18, v15

    .line 103
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    const-string v13, "o"

    .line 105
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    move-object v15, v2

    :goto_8
    move/from16 v14, v19

    move-object/from16 v13, v20

    goto :goto_3

    :cond_5
    const-string v13, "d"

    .line 107
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    const-string v13, "g"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 108
    :cond_6
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object/from16 v15, v18

    goto :goto_8

    :cond_8
    move-object/from16 v20, v13

    move/from16 v19, v14

    move-object/from16 v18, v15

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    .line 112
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    const/4 v13, 0x1

    if-ne v2, v13, :cond_9

    const/4 v2, 0x0

    .line 114
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    move-object/from16 v15, v18

    goto/16 :goto_f

    :pswitch_3
    move-object/from16 v20, v13

    const/4 v2, 0x0

    .line 83
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v13

    double-to-float v14, v13

    goto :goto_9

    :pswitch_4
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

    goto/16 :goto_0

    :pswitch_5
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

    goto :goto_9

    :pswitch_6
    move-object/from16 v20, v13

    move/from16 v19, v14

    const/4 v2, 0x0

    const/4 v13, 0x1

    .line 1027
    invoke-static {v0, v1, v13}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Z)Lcom/airbnb/lottie/c/a/b;

    move-result-object v10

    :goto_9
    move-object/from16 v13, v20

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v20, v13

    move/from16 v19, v14

    const/4 v2, 0x0

    .line 71
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/e/d;->b(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/f;

    move-result-object v9

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v20, v13

    move/from16 v19, v14

    const/4 v2, 0x0

    .line 68
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/e/d;->b(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/f;

    move-result-object v8

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v20, v13

    move/from16 v19, v14

    const/4 v2, 0x0

    const/4 v13, 0x1

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    if-ne v3, v13, :cond_a

    sget v3, Lcom/airbnb/lottie/c/b/f;->Linear$9a8e412:I

    :goto_a
    move v5, v3

    goto/16 :goto_f

    :cond_a
    sget v3, Lcom/airbnb/lottie/c/b/f;->Radial$9a8e412:I

    goto :goto_a

    :pswitch_a
    move-object/from16 v20, v13

    move/from16 v19, v14

    const/4 v2, 0x0

    .line 62
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/d;

    move-result-object v7

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v20, v13

    move/from16 v19, v14

    const/4 v2, 0x0

    const/4 v13, 0x1

    .line 46
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    move/from16 v3, v17

    .line 47
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 48
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v13, 0x6b

    if-eq v2, v13, :cond_c

    const/16 v13, 0x70

    if-eq v2, v13, :cond_b

    goto :goto_c

    :cond_b
    const-string v2, "p"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    goto :goto_d

    :cond_c
    const-string v2, "k"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    goto :goto_d

    :cond_d
    :goto_c
    move/from16 v2, v17

    :goto_d
    packed-switch v2, :pswitch_data_2

    .line 56
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    :goto_e
    const/4 v2, 0x0

    const/4 v13, 0x1

    goto :goto_b

    .line 53
    :pswitch_c
    invoke-static {v0, v1, v3}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;I)Lcom/airbnb/lottie/c/a/c;

    move-result-object v6

    goto :goto_e

    .line 50
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    goto :goto_e

    .line 59
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    goto :goto_f

    :pswitch_e
    move-object/from16 v20, v13

    move/from16 v19, v14

    .line 42
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :goto_f
    move/from16 v14, v19

    goto/16 :goto_9

    :cond_f
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

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_a
        0x65 -> :sswitch_9
        0x67 -> :sswitch_8
        0x6f -> :sswitch_7
        0x73 -> :sswitch_6
        0x74 -> :sswitch_5
        0x77 -> :sswitch_4
        0xd77 -> :sswitch_3
        0xd7e -> :sswitch_2
        0xd9f -> :sswitch_1
        0xdbf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method
