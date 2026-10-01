.class final Lcom/airbnb/lottie/e/ac;
.super Ljava/lang/Object;
.source "ShapePathParser.java"


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/b/o;
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move-object v3, v1

    .line 21
    :goto_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 22
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0xd68

    if-eq v6, v7, :cond_35

    const/16 v7, 0xdbf

    if-eq v6, v7, :cond_2b

    const v7, 0x197df

    if-eq v6, v7, :cond_21

    goto :goto_3f

    :cond_21
    const-string v6, "ind"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    const/4 v4, 0x1

    goto :goto_40

    :cond_2b
    const-string v6, "nm"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    move v4, v0

    goto :goto_40

    :cond_35
    const-string v6, "ks"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    const/4 v4, 0x2

    goto :goto_40

    :cond_3f
    :goto_3f
    move v4, v5

    :goto_40
    packed-switch v4, :pswitch_data_5c

    .line 33
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_4

    .line 30
    :pswitch_47
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/d;->c(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/h;

    move-result-object v3

    goto :goto_4

    .line 27
    :pswitch_4c
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    goto :goto_4

    .line 24
    :pswitch_51
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 37
    :cond_56
    new-instance p0, Lcom/airbnb/lottie/c/b/o;

    invoke-direct {p0, v1, v2, v3}, Lcom/airbnb/lottie/c/b/o;-><init>(Ljava/lang/String;ILcom/airbnb/lottie/c/a/h;)V

    return-object p0

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_51
        :pswitch_4c
        :pswitch_47
    .end packed-switch
.end method
