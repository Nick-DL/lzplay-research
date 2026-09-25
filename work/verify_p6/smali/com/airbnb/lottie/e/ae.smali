.class final Lcom/airbnb/lottie/e/ae;
.super Ljava/lang/Object;
.source "ShapeTrimPathParser.java"


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/b/q;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move v4, v1

    .line 23
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0x65

    if-eq v8, v9, :cond_4

    const/16 v9, 0x6d

    if-eq v8, v9, :cond_3

    const/16 v9, 0x6f

    if-eq v8, v9, :cond_2

    const/16 v9, 0x73

    if-eq v8, v9, :cond_1

    const/16 v9, 0xdbf

    if-eq v8, v9, :cond_0

    goto :goto_1

    :cond_0
    const-string v8, "nm"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    goto :goto_2

    :cond_1
    const-string v8, "s"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_2

    :cond_2
    const-string v8, "o"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    goto :goto_2

    :cond_3
    const-string v8, "m"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    goto :goto_2

    :cond_4
    const-string v8, "e"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    :goto_1
    move v0, v2

    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 41
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 38
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    invoke-static {v0}, Lcom/airbnb/lottie/c/b/q$a;->forId$7bafa50a(I)I

    move-result v4

    goto :goto_0

    .line 35
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 32
    :pswitch_2
    invoke-static {p0, p1, v1}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Z)Lcom/airbnb/lottie/c/a/b;

    move-result-object v7

    goto :goto_0

    .line 29
    :pswitch_3
    invoke-static {p0, p1, v1}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Z)Lcom/airbnb/lottie/c/a/b;

    move-result-object v6

    goto :goto_0

    .line 26
    :pswitch_4
    invoke-static {p0, p1, v1}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Z)Lcom/airbnb/lottie/c/a/b;

    move-result-object v5

    goto :goto_0

    .line 45
    :cond_6
    new-instance p0, Lcom/airbnb/lottie/c/b/q;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/airbnb/lottie/c/b/q;-><init>(Ljava/lang/String;ILcom/airbnb/lottie/c/a/b;Lcom/airbnb/lottie/c/a/b;Lcom/airbnb/lottie/c/a/b;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
