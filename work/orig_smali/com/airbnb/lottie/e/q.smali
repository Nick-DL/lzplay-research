.class public final Lcom/airbnb/lottie/e/q;
.super Ljava/lang/Object;
.source "LayerParser.java"


# direct methods
.method public static a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/c/d;
    .registers 38

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const-string v1, "UNSET"

    .line 56
    sget v2, Lcom/airbnb/lottie/c/c/d$b;->None$f97b8e:I

    .line 62
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 63
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v3, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v12, -0x1

    move/from16 v30, v2

    move-object v14, v3

    move-object/from16 v20, v14

    move-object/from16 v21, v20

    move-object/from16 v28, v21

    move-object/from16 v29, v28

    move-object/from16 v31, v29

    move/from16 v22, v4

    move/from16 v23, v22

    move/from16 v24, v23

    move/from16 v26, v24

    move/from16 v27, v26

    move-wide/from16 v16, v5

    move v2, v11

    move/from16 v25, v2

    move-wide/from16 v18, v12

    const/high16 v15, 0x3f800000    # 1.0f

    move-object v12, v1

    move-object/from16 v13, v31

    move/from16 v1, v25

    .line 66
    :goto_41
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f2

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x1

    const/16 v32, -0x1

    sparse-switch v5, :sswitch_data_3a8

    goto/16 :goto_14e

    :sswitch_57
    const-string v5, "masksProperties"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14e

    const/16 v3, 0xa

    goto/16 :goto_150

    :sswitch_63
    const-string v5, "refId"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14e

    const/4 v3, 0x2

    goto/16 :goto_150

    :sswitch_6e
    const-string v5, "ind"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14e

    move v3, v6

    goto/16 :goto_150

    :sswitch_79
    const-string v5, "ty"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14e

    const/4 v3, 0x3

    goto/16 :goto_150

    :sswitch_84
    const-string v5, "tt"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14e

    const/16 v3, 0x9

    goto/16 :goto_150

    :sswitch_90
    const-string v5, "tm"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14e

    const/16 v3, 0x14

    goto/16 :goto_150

    :sswitch_9c
    const-string v5, "sw"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14e

    const/4 v3, 0x5

    goto/16 :goto_150

    :sswitch_a7
    const-string v5, "st"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14e

    const/16 v3, 0xf

    goto/16 :goto_150

    :sswitch_b3
    const-string v5, "sr"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14e

    const/16 v3, 0xe

    goto/16 :goto_150

    :sswitch_bf
    const-string v5, "sh"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14e

    const/4 v3, 0x6

    goto/16 :goto_150

    :sswitch_ca
    const-string v5, "sc"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14e

    const/4 v3, 0x7

    goto/16 :goto_150

    :sswitch_d5
    const-string v5, "op"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14e

    const/16 v3, 0x13

    goto/16 :goto_150

    :sswitch_e1
    const-string v5, "nm"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14e

    move v3, v4

    goto/16 :goto_150

    :sswitch_ec
    const-string v5, "ks"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14e

    const/16 v3, 0x8

    goto :goto_150

    :sswitch_f7
    const-string v5, "ip"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14e

    const/16 v3, 0x12

    goto :goto_150

    :sswitch_102
    const-string v5, "ef"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14e

    const/16 v3, 0xd

    goto :goto_150

    :sswitch_10d
    const-string v5, "cl"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14e

    const/16 v3, 0x15

    goto :goto_150

    :sswitch_118
    const-string v5, "w"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14e

    const/16 v3, 0x10

    goto :goto_150

    :sswitch_123
    const-string v5, "t"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14e

    const/16 v3, 0xc

    goto :goto_150

    :sswitch_12e
    const-string v5, "h"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14e

    const/16 v3, 0x11

    goto :goto_150

    :sswitch_139
    const-string v5, "shapes"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14e

    const/16 v3, 0xb

    goto :goto_150

    :sswitch_144
    const-string v5, "parent"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14e

    const/4 v3, 0x4

    goto :goto_150

    :cond_14e
    :goto_14e
    move/from16 v3, v32

    :goto_150
    packed-switch v3, :pswitch_data_402

    .line 190
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_2ef

    .line 187
    :pswitch_158
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_41

    .line 184
    :pswitch_15e
    invoke-static {v0, v7, v4}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Z)Lcom/airbnb/lottie/c/a/b;

    move-result-object v31

    goto/16 :goto_41

    .line 181
    :pswitch_164
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v2, v2

    goto/16 :goto_41

    .line 178
    :pswitch_16b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    double-to-float v1, v5

    goto/16 :goto_41

    .line 175
    :pswitch_172
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/airbnb/lottie/f/f;->a()F

    move-result v5

    mul-float/2addr v3, v5

    float-to-int v3, v3

    move/from16 v27, v3

    goto/16 :goto_41

    .line 172
    :pswitch_181
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/airbnb/lottie/f/f;->a()F

    move-result v5

    mul-float/2addr v3, v5

    float-to-int v3, v3

    move/from16 v26, v3

    goto/16 :goto_41

    .line 169
    :pswitch_190
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    double-to-float v3, v5

    move/from16 v25, v3

    goto/16 :goto_41

    .line 166
    :pswitch_199
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    double-to-float v15, v5

    goto/16 :goto_41

    .line 144
    :pswitch_1a0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 145
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 146
    :goto_1a8
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e4

    .line 147
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 148
    :goto_1b1
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1df

    .line 149
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v4, 0xdbf

    if-eq v6, v4, :cond_1c4

    goto :goto_1ce

    :cond_1c4
    const-string v4, "nm"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ce

    const/4 v4, 0x0

    goto :goto_1d0

    :cond_1ce
    :goto_1ce
    move/from16 v4, v32

    :goto_1d0
    if-eqz v4, :cond_1d7

    .line 154
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    :goto_1d5
    const/4 v4, 0x0

    goto :goto_1b1

    .line 151
    :cond_1d7
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d5

    .line 158
    :cond_1df
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    const/4 v4, 0x0

    goto :goto_1a8

    .line 160
    :cond_1e4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    const-string v4, "Lottie doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: "

    .line 161
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    goto/16 :goto_2ef

    .line 121
    :pswitch_1f6
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 122
    :goto_1f9
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_258

    .line 123
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x61

    if-eq v4, v5, :cond_21a

    const/16 v5, 0x64

    if-eq v4, v5, :cond_210

    goto :goto_224

    :cond_210
    const-string v4, "d"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_224

    const/4 v3, 0x0

    goto :goto_226

    :cond_21a
    const-string v4, "a"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_224

    move v3, v6

    goto :goto_226

    :cond_224
    :goto_224
    move/from16 v3, v32

    :goto_226
    packed-switch v3, :pswitch_data_432

    .line 138
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1f9

    .line 128
    :pswitch_22d
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 129
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23c

    .line 130
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/e/b;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/k;

    move-result-object v3

    move-object/from16 v29, v3

    .line 132
    :cond_23c
    :goto_23c
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_246

    .line 133
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_23c

    .line 135
    :cond_246
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    goto :goto_1f9

    .line 2060
    :pswitch_24a
    new-instance v3, Lcom/airbnb/lottie/c/a/j;

    sget-object v4, Lcom/airbnb/lottie/e/h;->a:Lcom/airbnb/lottie/e/h;

    invoke-static {v0, v7, v4}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Lcom/airbnb/lottie/e/af;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/c/a/j;-><init>(Ljava/util/List;)V

    move-object/from16 v28, v3

    goto :goto_1f9

    .line 141
    :cond_258
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_2ef

    .line 111
    :pswitch_25d
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 112
    :cond_260
    :goto_260
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_270

    .line 113
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/e/g;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/b/b;

    move-result-object v3

    if-eqz v3, :cond_260

    .line 115
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_260

    .line 118
    :cond_270
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_2ef

    .line 104
    :pswitch_275
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 105
    :goto_278
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_286

    .line 106
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/e/s;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/b/g;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_278

    .line 108
    :cond_286
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_2ef

    .line 101
    :pswitch_28b
    invoke-static {}, Lcom/airbnb/lottie/c/c/d$b;->values$3b8ca4d4()[I

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    aget v30, v3, v4

    goto :goto_2ef

    .line 98
    :pswitch_296
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/e/c;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/l;

    move-result-object v21

    goto :goto_2ef

    .line 95
    :pswitch_29b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v24

    goto :goto_2ef

    .line 92
    :pswitch_2a4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/airbnb/lottie/f/f;->a()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move/from16 v23, v3

    goto :goto_2ef

    .line 89
    :pswitch_2b2
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/airbnb/lottie/f/f;->a()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move/from16 v22, v3

    goto :goto_2ef

    .line 86
    :pswitch_2c0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    int-to-long v3, v3

    move-wide/from16 v18, v3

    goto :goto_2ef

    .line 78
    :pswitch_2c8
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    .line 79
    sget-object v4, Lcom/airbnb/lottie/c/c/d$a;->Unknown:Lcom/airbnb/lottie/c/c/d$a;

    invoke-virtual {v4}, Lcom/airbnb/lottie/c/c/d$a;->ordinal()I

    move-result v4

    if-ge v3, v4, :cond_2db

    .line 80
    invoke-static {}, Lcom/airbnb/lottie/c/c/d$a;->values()[Lcom/airbnb/lottie/c/c/d$a;

    move-result-object v4

    aget-object v14, v4, v3

    goto :goto_2ef

    .line 82
    :cond_2db
    sget-object v14, Lcom/airbnb/lottie/c/c/d$a;->Unknown:Lcom/airbnb/lottie/c/c/d$a;

    goto :goto_2ef

    .line 75
    :pswitch_2de
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v20

    goto :goto_2ef

    .line 72
    :pswitch_2e3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    int-to-long v3, v3

    move-wide/from16 v16, v3

    goto :goto_2ef

    .line 69
    :pswitch_2eb
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v12

    :goto_2ef
    const/4 v4, 0x0

    goto/16 :goto_41

    .line 193
    :cond_2f2
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    div-float v32, v1, v15

    div-float v33, v2, v15

    .line 201
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    cmpl-float v0, v32, v11

    if-lez v0, :cond_323

    .line 204
    new-instance v5, Lcom/airbnb/lottie/g/a;

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v34, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v35

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v9, v5

    move/from16 v5, v34

    move-object v11, v6

    move-object/from16 v6, v35

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/g/a;-><init>(Lcom/airbnb/lottie/d;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 205
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_324

    :cond_323
    move-object v11, v6

    :goto_324
    const/4 v0, 0x0

    cmpl-float v1, v33, v0

    if-lez v1, :cond_32a

    goto :goto_32e

    .line 2109
    :cond_32a
    iget v0, v7, Lcom/airbnb/lottie/d;->j:F

    move/from16 v33, v0

    .line 210
    :goto_32e
    new-instance v9, Lcom/airbnb/lottie/g/a;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 211
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v0, v9

    move-object/from16 v1, p1

    move/from16 v5, v32

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/g/a;-><init>(Lcom/airbnb/lottie/d;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 212
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v9, Lcom/airbnb/lottie/g/a;

    const/4 v0, 0x0

    .line 215
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v0, v9

    move/from16 v5, v33

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/g/a;-><init>(Lcom/airbnb/lottie/d;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 216
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, ".ai"

    .line 218
    invoke-virtual {v12, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_375

    const-string v0, "ai"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37a

    :cond_375
    const-string v0, "Convert your Illustrator layers to shape layers."

    .line 219
    invoke-virtual {v7, v0}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    .line 222
    :cond_37a
    new-instance v32, Lcom/airbnb/lottie/c/c/d;

    move-object/from16 v0, v32

    move-object v1, v8

    move-object/from16 v2, p1

    move-object v3, v12

    move-wide/from16 v4, v16

    move-object v6, v14

    move-wide/from16 v7, v18

    move-object/from16 v9, v20

    move-object/from16 v33, v11

    move-object/from16 v11, v21

    move/from16 v12, v22

    move/from16 v13, v23

    move/from16 v14, v24

    move/from16 v16, v25

    move/from16 v17, v26

    move/from16 v18, v27

    move-object/from16 v19, v28

    move-object/from16 v20, v29

    move-object/from16 v21, v33

    move/from16 v22, v30

    move-object/from16 v23, v31

    invoke-direct/range {v0 .. v23}, Lcom/airbnb/lottie/c/c/d;-><init>(Ljava/util/List;Lcom/airbnb/lottie/d;Ljava/lang/String;JLcom/airbnb/lottie/c/c/d$a;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/c/a/l;IIIFFIILcom/airbnb/lottie/c/a/j;Lcom/airbnb/lottie/c/a/k;Ljava/util/List;ILcom/airbnb/lottie/c/a/b;)V

    return-object v32

    nop

    :sswitch_data_3a8
    .sparse-switch
        -0x3b54f756 -> :sswitch_144
        -0x35db5b0e -> :sswitch_139
        0x68 -> :sswitch_12e
        0x74 -> :sswitch_123
        0x77 -> :sswitch_118
        0xc69 -> :sswitch_10d
        0xca1 -> :sswitch_102
        0xd27 -> :sswitch_f7
        0xd68 -> :sswitch_ec
        0xdbf -> :sswitch_e1
        0xde1 -> :sswitch_d5
        0xe50 -> :sswitch_ca
        0xe55 -> :sswitch_bf
        0xe5f -> :sswitch_b3
        0xe61 -> :sswitch_a7
        0xe64 -> :sswitch_9c
        0xe79 -> :sswitch_90
        0xe80 -> :sswitch_84
        0xe85 -> :sswitch_79
        0x197df -> :sswitch_6e
        0x675e90e -> :sswitch_63
        0x55ed639a -> :sswitch_57
    .end sparse-switch

    :pswitch_data_402
    .packed-switch 0x0
        :pswitch_2eb
        :pswitch_2e3
        :pswitch_2de
        :pswitch_2c8
        :pswitch_2c0
        :pswitch_2b2
        :pswitch_2a4
        :pswitch_29b
        :pswitch_296
        :pswitch_28b
        :pswitch_275
        :pswitch_25d
        :pswitch_1f6
        :pswitch_1a0
        :pswitch_199
        :pswitch_190
        :pswitch_181
        :pswitch_172
        :pswitch_16b
        :pswitch_164
        :pswitch_15e
        :pswitch_158
    .end packed-switch

    :pswitch_data_432
    .packed-switch 0x0
        :pswitch_24a
        :pswitch_22d
    .end packed-switch
.end method

.method public static a(Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/c/d;
    .registers 26

    move-object/from16 v2, p0

    move-object/from16 v0, p0

    .line 1095
    iget-object v4, v0, Lcom/airbnb/lottie/d;->h:Landroid/graphics/Rect;

    .line 29
    new-instance v24, Lcom/airbnb/lottie/c/c/d;

    move-object/from16 v0, v24

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const-string v3, "__container"

    sget-object v6, Lcom/airbnb/lottie/c/c/d$a;->PreComp:Lcom/airbnb/lottie/c/c/d$a;

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    new-instance v5, Lcom/airbnb/lottie/c/a/l;

    move-object v11, v5

    invoke-direct {v5}, Lcom/airbnb/lottie/c/a/l;-><init>()V

    .line 33
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v17

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v18

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v21

    sget v22, Lcom/airbnb/lottie/c/c/d$b;->None$f97b8e:I

    const-wide/16 v4, -0x1

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v0 .. v23}, Lcom/airbnb/lottie/c/c/d;-><init>(Ljava/util/List;Lcom/airbnb/lottie/d;Ljava/lang/String;JLcom/airbnb/lottie/c/c/d$a;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/c/a/l;IIIFFIILcom/airbnb/lottie/c/a/j;Lcom/airbnb/lottie/c/a/k;Ljava/util/List;ILcom/airbnb/lottie/c/a/b;)V

    return-object v24
.end method
