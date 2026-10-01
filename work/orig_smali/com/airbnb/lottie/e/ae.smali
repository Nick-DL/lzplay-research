.class final Lcom/airbnb/lottie/e/ae;
.super Ljava/lang/Object;
.source "ShapeTrimPathParser.java"


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/b/q;
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move v4, v1

    .line 23
    :goto_7
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 24
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0x65

    if-eq v8, v9, :cond_53

    const/16 v9, 0x6d

    if-eq v8, v9, :cond_49

    const/16 v9, 0x6f

    if-eq v8, v9, :cond_3f

    const/16 v9, 0x73

    if-eq v8, v9, :cond_35

    const/16 v9, 0xdbf

    if-eq v8, v9, :cond_2b

    goto :goto_5d

    :cond_2b
    const-string v8, "nm"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const/4 v0, 0x3

    goto :goto_5e

    :cond_35
    const-string v8, "s"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    move v0, v1

    goto :goto_5e

    :cond_3f
    const-string v8, "o"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const/4 v0, 0x2

    goto :goto_5e

    :cond_49
    const-string v8, "m"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const/4 v0, 0x4

    goto :goto_5e

    :cond_53
    const-string v8, "e"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const/4 v0, 0x1

    goto :goto_5e

    :cond_5d
    :goto_5d
    move v0, v2

    :goto_5e
    packed-switch v0, :pswitch_data_8a

    .line 41
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_7

    .line 38
    :pswitch_65
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    invoke-static {v0}, Lcom/airbnb/lottie/c/b/q$a;->forId$7bafa50a(I)I

    move-result v4

    goto :goto_7

    .line 35
    :pswitch_6e
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 32
    :pswitch_73
    invoke-static {p0, p1, v1}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Z)Lcom/airbnb/lottie/c/a/b;

    move-result-object v7

    goto :goto_7

    .line 29
    :pswitch_78
    invoke-static {p0, p1, v1}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Z)Lcom/airbnb/lottie/c/a/b;

    move-result-object v6

    goto :goto_7

    .line 26
    :pswitch_7d
    invoke-static {p0, p1, v1}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Z)Lcom/airbnb/lottie/c/a/b;

    move-result-object v5

    goto :goto_7

    .line 45
    :cond_82
    new-instance p0, Lcom/airbnb/lottie/c/b/q;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/airbnb/lottie/c/b/q;-><init>(Ljava/lang/String;ILcom/airbnb/lottie/c/a/b;Lcom/airbnb/lottie/c/a/b;Lcom/airbnb/lottie/c/a/b;)V

    return-object p0

    nop

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_65
    .end packed-switch
.end method
