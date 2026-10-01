.class final Lcom/airbnb/lottie/e/ab;
.super Ljava/lang/Object;
.source "ShapeFillParser.java"


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/b/m;
    .registers 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v5, v0

    move-object v4, v2

    move-object v7, v4

    move-object v8, v7

    move v2, v1

    .line 25
    :goto_8
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_80

    .line 26
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x179b7bc2

    if-eq v9, v10, :cond_55

    const/16 v10, 0x63

    if-eq v9, v10, :cond_4b

    const/16 v10, 0x6f

    if-eq v9, v10, :cond_41

    const/16 v10, 0x72

    if-eq v9, v10, :cond_37

    const/16 v10, 0xdbf

    if-eq v9, v10, :cond_2d

    goto :goto_5f

    :cond_2d
    const-string v9, "nm"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    move v3, v0

    goto :goto_60

    :cond_37
    const-string v9, "r"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    const/4 v3, 0x4

    goto :goto_60

    :cond_41
    const-string v9, "o"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    const/4 v3, 0x2

    goto :goto_60

    :cond_4b
    const-string v9, "c"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    move v3, v1

    goto :goto_60

    :cond_55
    const-string v9, "fillEnabled"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    const/4 v3, 0x3

    goto :goto_60

    :cond_5f
    :goto_5f
    move v3, v6

    :goto_60
    packed-switch v3, :pswitch_data_90

    .line 43
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_8

    .line 40
    :pswitch_67
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    goto :goto_8

    .line 37
    :pswitch_6c
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v5

    goto :goto_8

    .line 34
    :pswitch_71
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/d;

    move-result-object v8

    goto :goto_8

    .line 31
    :pswitch_76
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/d;->d(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/a;

    move-result-object v7

    goto :goto_8

    .line 28
    :pswitch_7b
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_80
    if-ne v2, v1, :cond_86

    .line 47
    sget-object p0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    :goto_84
    move-object v6, p0

    goto :goto_89

    :cond_86
    sget-object p0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_84

    .line 48
    :goto_89
    new-instance p0, Lcom/airbnb/lottie/c/b/m;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/airbnb/lottie/c/b/m;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/airbnb/lottie/c/a/a;Lcom/airbnb/lottie/c/a/d;)V

    return-object p0

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_7b
        :pswitch_76
        :pswitch_71
        :pswitch_6c
        :pswitch_67
    .end packed-switch
.end method
