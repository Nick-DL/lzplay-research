.class final Lcom/airbnb/lottie/e/x;
.super Ljava/lang/Object;
.source "RectangleShapeParser.java"


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/b/j;
    .registers 11

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    .line 25
    :goto_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_62

    .line 26
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0x70

    const/4 v8, 0x1

    if-eq v6, v7, :cond_3e

    const/16 v7, 0xdbf

    if-eq v6, v7, :cond_34

    packed-switch v6, :pswitch_data_68

    goto :goto_47

    :pswitch_20
    const-string v6, "s"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    const/4 v5, 0x2

    goto :goto_47

    :pswitch_2a
    const-string v6, "r"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    const/4 v5, 0x3

    goto :goto_47

    :cond_34
    const-string v6, "nm"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    const/4 v5, 0x0

    goto :goto_47

    :cond_3e
    const-string v6, "p"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    move v5, v8

    :cond_47
    :goto_47
    packed-switch v5, :pswitch_data_70

    .line 41
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_4

    .line 1027
    :pswitch_4e
    invoke-static {p0, p1, v8}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Z)Lcom/airbnb/lottie/c/a/b;

    move-result-object v3

    goto :goto_4

    .line 35
    :pswitch_53
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/d;->b(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/f;

    move-result-object v2

    goto :goto_4

    .line 32
    :pswitch_58
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/a;->b(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/m;

    move-result-object v1

    goto :goto_4

    .line 28
    :pswitch_5d
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 45
    :cond_62
    new-instance p0, Lcom/airbnb/lottie/c/b/j;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/airbnb/lottie/c/b/j;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/c/a/m;Lcom/airbnb/lottie/c/a/f;Lcom/airbnb/lottie/c/a/b;)V

    return-object p0

    :pswitch_data_68
    .packed-switch 0x72
        :pswitch_2a
        :pswitch_20
    .end packed-switch

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_58
        :pswitch_53
        :pswitch_4e
    .end packed-switch
.end method
