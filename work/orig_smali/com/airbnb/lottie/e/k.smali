.class final Lcom/airbnb/lottie/e/k;
.super Ljava/lang/Object;
.source "GradientFillParser.java"


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/b/d;
    .registers 16

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v4, v0

    move-object v3, v1

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    .line 29
    :goto_9
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f4

    .line 30
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v10, 0x65

    const/4 v11, -0x1

    const/4 v12, 0x1

    if-eq v2, v10, :cond_69

    const/16 v10, 0x67

    if-eq v2, v10, :cond_5f

    const/16 v10, 0x6f

    if-eq v2, v10, :cond_55

    const/16 v10, 0xdbf

    if-eq v2, v10, :cond_4b

    packed-switch v2, :pswitch_data_fc

    goto :goto_73

    :pswitch_2d
    const-string v2, "t"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    const/4 v1, 0x3

    goto :goto_74

    :pswitch_37
    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    const/4 v1, 0x4

    goto :goto_74

    :pswitch_41
    const-string v2, "r"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    const/4 v1, 0x6

    goto :goto_74

    :cond_4b
    const-string v2, "nm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    move v1, v0

    goto :goto_74

    :cond_55
    const-string v2, "o"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    const/4 v1, 0x2

    goto :goto_74

    :cond_5f
    const-string v2, "g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    move v1, v12

    goto :goto_74

    :cond_69
    const-string v2, "e"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    const/4 v1, 0x5

    goto :goto_74

    :cond_73
    :goto_73
    move v1, v11

    :goto_74
    packed-switch v1, :pswitch_data_106

    .line 67
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_9

    .line 64
    :pswitch_7b
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    if-ne v1, v12, :cond_85

    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    :goto_83
    move-object v5, v1

    goto :goto_9

    :cond_85
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_83

    .line 61
    :pswitch_88
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/d;->b(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/f;

    move-result-object v9

    goto/16 :goto_9

    .line 58
    :pswitch_8e
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/d;->b(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/f;

    move-result-object v8

    goto/16 :goto_9

    .line 55
    :pswitch_94
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    if-ne v1, v12, :cond_9f

    sget v1, Lcom/airbnb/lottie/c/b/f;->Linear$9a8e412:I

    :goto_9c
    move v4, v1

    goto/16 :goto_9

    :cond_9f
    sget v1, Lcom/airbnb/lottie/c/b/f;->Radial$9a8e412:I

    goto :goto_9c

    .line 52
    :pswitch_a2
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/d;

    move-result-object v7

    goto/16 :goto_9

    .line 36
    :pswitch_a8
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    move v1, v11

    .line 37
    :goto_ac
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 38
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/16 v13, 0x6b

    if-eq v10, v13, :cond_cd

    const/16 v13, 0x70

    if-eq v10, v13, :cond_c3

    goto :goto_d7

    :cond_c3
    const-string v10, "p"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    move v2, v0

    goto :goto_d8

    :cond_cd
    const-string v10, "k"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    move v2, v12

    goto :goto_d8

    :cond_d7
    :goto_d7
    move v2, v11

    :goto_d8
    packed-switch v2, :pswitch_data_118

    .line 46
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_ac

    .line 43
    :pswitch_df
    invoke-static {p0, p1, v1}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;I)Lcom/airbnb/lottie/c/a/c;

    move-result-object v6

    goto :goto_ac

    .line 40
    :pswitch_e4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    goto :goto_ac

    .line 49
    :cond_e9
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_9

    .line 32
    :pswitch_ee
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_9

    .line 71
    :cond_f4
    new-instance p0, Lcom/airbnb/lottie/c/b/d;

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/airbnb/lottie/c/b/d;-><init>(Ljava/lang/String;ILandroid/graphics/Path$FillType;Lcom/airbnb/lottie/c/a/c;Lcom/airbnb/lottie/c/a/d;Lcom/airbnb/lottie/c/a/f;Lcom/airbnb/lottie/c/a/f;)V

    return-object p0

    nop

    :pswitch_data_fc
    .packed-switch 0x72
        :pswitch_41
        :pswitch_37
        :pswitch_2d
    .end packed-switch

    :pswitch_data_106
    .packed-switch 0x0
        :pswitch_ee
        :pswitch_a8
        :pswitch_a2
        :pswitch_94
        :pswitch_8e
        :pswitch_88
        :pswitch_7b
    .end packed-switch

    :pswitch_data_118
    .packed-switch 0x0
        :pswitch_e4
        :pswitch_df
    .end packed-switch
.end method
