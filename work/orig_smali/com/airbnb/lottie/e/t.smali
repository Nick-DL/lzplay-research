.class final Lcom/airbnb/lottie/e/t;
.super Ljava/lang/Object;
.source "MergePathsParser.java"


# direct methods
.method static a(Landroid/util/JsonReader;)Lcom/airbnb/lottie/c/b/h;
    .registers 7

    const/4 v0, 0x0

    move-object v1, v0

    .line 17
    :goto_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 18
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0xda0

    if-eq v4, v5, :cond_24

    const/16 v5, 0xdbf

    if-eq v4, v5, :cond_1a

    goto :goto_2d

    :cond_1a
    const-string v4, "nm"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const/4 v3, 0x0

    goto :goto_2d

    :cond_24
    const-string v4, "mm"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const/4 v3, 0x1

    :cond_2d
    :goto_2d
    packed-switch v3, :pswitch_data_48

    .line 26
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_2

    .line 23
    :pswitch_34
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-static {v1}, Lcom/airbnb/lottie/c/b/h$a;->forId(I)Lcom/airbnb/lottie/c/b/h$a;

    move-result-object v1

    goto :goto_2

    .line 20
    :pswitch_3d
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 30
    :cond_42
    new-instance p0, Lcom/airbnb/lottie/c/b/h;

    invoke-direct {p0, v0, v1}, Lcom/airbnb/lottie/c/b/h;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/c/b/h$a;)V

    return-object p0

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_34
    .end packed-switch
.end method
