.class final Lcom/airbnb/lottie/e/e;
.super Ljava/lang/Object;
.source "CircleShapeParser.java"


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;I)Lcom/airbnb/lottie/c/b/a;
    .registers 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne p2, v2, :cond_7

    move p2, v1

    goto :goto_8

    :cond_7
    move p2, v0

    :goto_8
    const/4 v3, 0x0

    move v5, p2

    move-object p2, v3

    move-object v4, p2

    .line 24
    :goto_c
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_75

    .line 25
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0x64

    if-eq v8, v9, :cond_4a

    const/16 v9, 0x70

    if-eq v8, v9, :cond_40

    const/16 v9, 0x73

    if-eq v8, v9, :cond_36

    const/16 v9, 0xdbf

    if-eq v8, v9, :cond_2c

    goto :goto_54

    :cond_2c
    const-string v8, "nm"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    move v6, v0

    goto :goto_55

    :cond_36
    const-string v8, "s"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    const/4 v6, 0x2

    goto :goto_55

    :cond_40
    const-string v8, "p"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    move v6, v1

    goto :goto_55

    :cond_4a
    const-string v8, "d"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    move v6, v2

    goto :goto_55

    :cond_54
    :goto_54
    move v6, v7

    :goto_55
    packed-switch v6, :pswitch_data_7c

    .line 40
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_c

    .line 37
    :pswitch_5c
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v5

    if-ne v5, v2, :cond_64

    move v5, v1

    goto :goto_c

    :cond_64
    move v5, v0

    goto :goto_c

    .line 33
    :pswitch_66
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/d;->b(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/f;

    move-result-object v4

    goto :goto_c

    .line 30
    :pswitch_6b
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/a;->b(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/m;

    move-result-object p2

    goto :goto_c

    .line 27
    :pswitch_70
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto :goto_c

    .line 44
    :cond_75
    new-instance p0, Lcom/airbnb/lottie/c/b/a;

    invoke-direct {p0, v3, p2, v4, v5}, Lcom/airbnb/lottie/c/b/a;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/c/a/m;Lcom/airbnb/lottie/c/a/f;Z)V

    return-object p0

    nop

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_70
        :pswitch_6b
        :pswitch_66
        :pswitch_5c
    .end packed-switch
.end method
