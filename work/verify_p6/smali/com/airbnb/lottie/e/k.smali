.class final Lcom/airbnb/lottie/e/k;
.super Ljava/lang/Object;
.source "GradientFillParser.java"


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/b/d;
    .locals 14

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
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 30
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v10, 0x65

    const/4 v11, -0x1

    const/4 v12, 0x1

    if-eq v2, v10, :cond_3

    const/16 v10, 0x67

    if-eq v2, v10, :cond_2

    const/16 v10, 0x6f

    if-eq v2, v10, :cond_1

    const/16 v10, 0xdbf

    if-eq v2, v10, :cond_0

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v2, "t"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    goto :goto_2

    :pswitch_1
    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    goto :goto_2

    :pswitch_2
    const-string v2, "r"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x6

    goto :goto_2

    :cond_0
    const-string v2, "nm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v0

    goto :goto_2

    :cond_1
    const-string v2, "o"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    goto :goto_2

    :cond_2
    const-string v2, "g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v12

    goto :goto_2

    :cond_3
    const-string v2, "e"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    goto :goto_2

    :cond_4
    :goto_1
    move v1, v11

    :goto_2
    packed-switch v1, :pswitch_data_1

    .line 67
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 64
    :pswitch_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    if-ne v1, v12, :cond_5

    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    :goto_3
    move-object v5, v1

    goto :goto_0

    :cond_5
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_3

    .line 61
    :pswitch_4
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/d;->b(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/f;

    move-result-object v9

    goto/16 :goto_0

    .line 58
    :pswitch_5
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/d;->b(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/f;

    move-result-object v8

    goto/16 :goto_0

    .line 55
    :pswitch_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    if-ne v1, v12, :cond_6

    sget v1, Lcom/airbnb/lottie/c/b/f;->Linear$9a8e412:I

    :goto_4
    move v4, v1

    goto/16 :goto_0

    :cond_6
    sget v1, Lcom/airbnb/lottie/c/b/f;->Radial$9a8e412:I

    goto :goto_4

    .line 52
    :pswitch_7
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/d;

    move-result-object v7

    goto/16 :goto_0

    .line 36
    :pswitch_8
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    move v1, v11

    .line 37
    :goto_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 38
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/16 v13, 0x6b

    if-eq v10, v13, :cond_8

    const/16 v13, 0x70

    if-eq v10, v13, :cond_7

    goto :goto_6

    :cond_7
    const-string v10, "p"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v0

    goto :goto_7

    :cond_8
    const-string v10, "k"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v12

    goto :goto_7

    :cond_9
    :goto_6
    move v2, v11

    :goto_7
    packed-switch v2, :pswitch_data_2

    .line 46
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_5

    .line 43
    :pswitch_9
    invoke-static {p0, p1, v1}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;I)Lcom/airbnb/lottie/c/a/c;

    move-result-object v6

    goto :goto_5

    .line 40
    :pswitch_a
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    goto :goto_5

    .line 49
    :cond_a
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_0

    .line 32
    :pswitch_b
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 71
    :cond_b
    new-instance p0, Lcom/airbnb/lottie/c/b/d;

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/airbnb/lottie/c/b/d;-><init>(Ljava/lang/String;ILandroid/graphics/Path$FillType;Lcom/airbnb/lottie/c/a/c;Lcom/airbnb/lottie/c/a/d;Lcom/airbnb/lottie/c/a/f;Lcom/airbnb/lottie/c/a/f;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x72
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method
