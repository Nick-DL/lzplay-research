.class public final Lcom/airbnb/lottie/e/r;
.super Ljava/lang/Object;
.source "LottieCompositionParser.java"


# direct methods
.method public static a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Landroidx/b/h;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Lcom/airbnb/lottie/d;",
            "Landroidx/b/h<",
            "Lcom/airbnb/lottie/c/d;",
            ">;)V"
        }
    .end annotation

    .line 199
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 200
    :goto_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 7024
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7026
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x0

    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    move-object v8, v0

    move-object v9, v8

    move-wide v6, v3

    move-wide v4, v6

    move v3, v1

    .line 7027
    :goto_1a
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 7028
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    const/4 v10, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v12, -0x6f471c96

    if-eq v11, v12, :cond_78

    const/16 v12, 0x77

    if-eq v11, v12, :cond_6e

    const/16 v12, 0xc65

    if-eq v11, v12, :cond_64

    const v12, 0x2eefaa

    if-eq v11, v12, :cond_5a

    const v12, 0x35e001

    if-eq v11, v12, :cond_50

    const v12, 0x68b1db1

    if-eq v11, v12, :cond_46

    goto :goto_82

    :cond_46
    const-string v11, "style"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    const/4 v0, 0x3

    goto :goto_83

    :cond_50
    const-string v11, "size"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    const/4 v0, 0x1

    goto :goto_83

    :cond_5a
    const-string v11, "data"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    const/4 v0, 0x5

    goto :goto_83

    :cond_64
    const-string v11, "ch"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    move v0, v1

    goto :goto_83

    :cond_6e
    const-string v11, "w"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    const/4 v0, 0x2

    goto :goto_83

    :cond_78
    const-string v11, "fFamily"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    const/4 v0, 0x4

    goto :goto_83

    :cond_82
    :goto_82
    move v0, v10

    :goto_83
    packed-switch v0, :pswitch_data_f8

    .line 7060
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1a

    .line 7045
    :pswitch_8a
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 7046
    :goto_8d
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ba

    const-string v0, "shapes"

    .line 7047
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 7048
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 7049
    :goto_a2
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 7050
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/g;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/b/b;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/c/b/n;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a2

    .line 7052
    :cond_b2
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    goto :goto_8d

    .line 7054
    :cond_b6
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_8d

    .line 7057
    :cond_ba
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_1a

    .line 7042
    :pswitch_bf
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1a

    .line 7039
    :pswitch_c5
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1a

    .line 7036
    :pswitch_cb
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v6

    goto/16 :goto_1a

    .line 7033
    :pswitch_d1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    goto/16 :goto_1a

    .line 7030
    :pswitch_d7
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto/16 :goto_1a

    .line 7063
    :cond_e1
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 7065
    new-instance v0, Lcom/airbnb/lottie/c/d;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/airbnb/lottie/c/d;-><init>(Ljava/util/List;CDDLjava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0}, Lcom/airbnb/lottie/c/d;->hashCode()I

    move-result v1

    invoke-virtual {p2, v1, v0}, Landroidx/b/h;->b(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 204
    :cond_f3
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    return-void

    nop

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_d7
        :pswitch_d1
        :pswitch_cb
        :pswitch_c5
        :pswitch_bf
        :pswitch_8a
    .end packed-switch
.end method

.method public static a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Ljava/util/List;Landroidx/b/d;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Lcom/airbnb/lottie/d;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/c/c/d;",
            ">;",
            "Landroidx/b/d<",
            "Lcom/airbnb/lottie/c/c/d;",
            ">;)V"
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    const/4 v0, 0x0

    .line 103
    :cond_4
    :goto_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 104
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/q;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/c/d;

    move-result-object v1

    .line 1129
    iget-object v2, v1, Lcom/airbnb/lottie/c/c/d;->e:Lcom/airbnb/lottie/c/c/d$a;

    .line 105
    sget-object v3, Lcom/airbnb/lottie/c/c/d$a;->Image:Lcom/airbnb/lottie/c/c/d$a;

    if-ne v2, v3, :cond_16

    add-int/lit8 v0, v0, 0x1

    .line 108
    :cond_16
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2105
    iget-wide v2, v1, Lcom/airbnb/lottie/c/c/d;->d:J

    .line 109
    invoke-virtual {p3, v2, v3, v1}, Landroidx/b/d;->b(JLjava/lang/Object;)V

    const/4 v1, 0x4

    if-le v0, v1, :cond_4

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "You have "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)V

    goto :goto_4

    .line 117
    :cond_38
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    return-void
.end method

.method public static a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Ljava/util/Map;Ljava/util/Map;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Lcom/airbnb/lottie/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/c/c/d;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/g;",
            ">;)V"
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 123
    :goto_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    new-instance v1, Landroidx/b/d;

    invoke-direct {v1}, Landroidx/b/d;-><init>()V

    .line 133
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move v6, v5

    move-object v7, v3

    move-object v8, v7

    move-object v9, v8

    .line 134
    :goto_1d
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 135
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, -0x42252abe

    if-eq v10, v11, :cond_78

    const/16 v11, 0x68

    if-eq v10, v11, :cond_6e

    const/16 v11, 0x70

    if-eq v10, v11, :cond_64

    const/16 v11, 0x75

    if-eq v10, v11, :cond_5a

    const/16 v11, 0x77

    if-eq v10, v11, :cond_50

    const/16 v11, 0xd1b

    if-eq v10, v11, :cond_46

    goto :goto_82

    :cond_46
    const-string v10, "id"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    move v3, v2

    goto :goto_83

    :cond_50
    const-string v10, "w"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    const/4 v3, 0x2

    goto :goto_83

    :cond_5a
    const-string v10, "u"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    const/4 v3, 0x5

    goto :goto_83

    :cond_64
    const-string v10, "p"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    const/4 v3, 0x4

    goto :goto_83

    :cond_6e
    const-string v10, "h"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    const/4 v3, 0x3

    goto :goto_83

    :cond_78
    const-string v10, "layers"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    const/4 v3, 0x1

    goto :goto_83

    :cond_82
    :goto_82
    move v3, v4

    :goto_83
    packed-switch v3, :pswitch_data_dc

    .line 161
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1d

    .line 158
    :pswitch_8a
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1d

    .line 155
    :pswitch_8f
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1d

    .line 152
    :pswitch_94
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v6

    goto :goto_1d

    .line 149
    :pswitch_99
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v5

    goto/16 :goto_1d

    .line 140
    :pswitch_9f
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 141
    :goto_a2
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 142
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/q;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/c/d;

    move-result-object v3

    .line 3105
    iget-wide v10, v3, Lcom/airbnb/lottie/c/c/d;->d:J

    .line 143
    invoke-virtual {v1, v10, v11, v3}, Landroidx/b/d;->b(JLjava/lang/Object;)V

    .line 144
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a2

    .line 146
    :cond_b5
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_1d

    .line 137
    :pswitch_ba
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1d

    .line 164
    :cond_c0
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    if-eqz v8, :cond_d2

    .line 166
    new-instance v0, Lcom/airbnb/lottie/g;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/airbnb/lottie/g;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4037
    iget-object v1, v0, Lcom/airbnb/lottie/g;->a:Ljava/lang/String;

    .line 168
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 170
    :cond_d2
    invoke-interface {p2, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 173
    :cond_d7
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    return-void

    nop

    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_ba
        :pswitch_9f
        :pswitch_99
        :pswitch_94
        :pswitch_8f
        :pswitch_8a
    .end packed-switch
.end method

.method public static a(Landroid/util/JsonReader;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/c/c;",
            ">;)V"
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 179
    :goto_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 180
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x32b09e

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v1, v2, :cond_19

    goto :goto_23

    :cond_19
    const-string v1, "list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    move v0, v3

    goto :goto_24

    :cond_23
    :goto_23
    move v0, v4

    :goto_24
    if-eqz v0, :cond_2a

    .line 190
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_3

    .line 182
    :cond_2a
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 183
    :goto_2d
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b2

    const/4 v0, 0x0

    .line 5019
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v1, 0x0

    move v5, v0

    move-object v0, v1

    move-object v2, v0

    .line 5020
    :goto_3b
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a3

    .line 5021
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x6f471c96

    if-eq v7, v8, :cond_7c

    const v8, -0x53f6d326

    if-eq v7, v8, :cond_72

    const v8, -0x4d298315

    if-eq v7, v8, :cond_68

    const v8, 0x5c24c11

    if-eq v7, v8, :cond_5e

    goto :goto_86

    :cond_5e
    const-string v7, "fName"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_86

    const/4 v6, 0x1

    goto :goto_87

    :cond_68
    const-string v7, "fStyle"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_86

    const/4 v6, 0x2

    goto :goto_87

    :cond_72
    const-string v7, "ascent"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_86

    const/4 v6, 0x3

    goto :goto_87

    :cond_7c
    const-string v7, "fFamily"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_86

    move v6, v3

    goto :goto_87

    :cond_86
    :goto_86
    move v6, v4

    :goto_87
    packed-switch v6, :pswitch_data_bc

    .line 5035
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_3b

    .line 5032
    :pswitch_8e
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    double-to-float v5, v5

    goto :goto_3b

    .line 5029
    :pswitch_94
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3b

    .line 5026
    :pswitch_99
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    .line 5023
    :pswitch_9e
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3b

    .line 5038
    :cond_a3
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 5040
    new-instance v6, Lcom/airbnb/lottie/c/c;

    invoke-direct {v6, v1, v0, v2, v5}, Lcom/airbnb/lottie/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    .line 6027
    iget-object v0, v6, Lcom/airbnb/lottie/c/c;->b:Ljava/lang/String;

    .line 185
    invoke-interface {p1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2d

    .line 187
    :cond_b2
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_3

    .line 193
    :cond_b7
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    return-void

    nop

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_9e
        :pswitch_99
        :pswitch_94
        :pswitch_8e
    .end packed-switch
.end method
