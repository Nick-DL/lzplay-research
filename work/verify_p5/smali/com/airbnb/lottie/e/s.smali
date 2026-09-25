.class final Lcom/airbnb/lottie/e/s;
.super Ljava/lang/Object;
.source "MaskParser.java"


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/b/g;
    .locals 10

    .line 24
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move-object v3, v2

    move v0, v1

    .line 25
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 26
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    .line 27
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x6f

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, -0x1

    if-eq v5, v6, :cond_2

    const/16 v6, 0xe04

    if-eq v5, v6, :cond_1

    const v6, 0x3339a3

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "mode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v1

    goto :goto_2

    :cond_1
    const-string v5, "pt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v7

    goto :goto_2

    :cond_2
    const-string v5, "o"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v8

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v9

    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 53
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 50
    :pswitch_0
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/d;

    move-result-object v3

    goto :goto_0

    .line 47
    :pswitch_1
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/d;->c(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/h;

    move-result-object v2

    goto :goto_0

    .line 29
    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x61

    if-eq v5, v6, :cond_6

    const/16 v6, 0x69

    if-eq v5, v6, :cond_5

    const/16 v6, 0x73

    if-eq v5, v6, :cond_4

    goto :goto_3

    :cond_4
    const-string v5, "s"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_5
    const-string v5, "i"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v7, v8

    goto :goto_4

    :cond_6
    const-string v5, "a"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v7, v1

    goto :goto_4

    :cond_7
    :goto_3
    move v7, v9

    :goto_4
    packed-switch v7, :pswitch_data_1

    const-string v0, "LOTTIE"

    .line 42
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknown mask mode "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Defaulting to Add."

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    sget v0, Lcom/airbnb/lottie/c/b/g$a;->MaskModeAdd$2eee3dc9:I

    goto/16 :goto_0

    :pswitch_3
    const-string v0, "Animation contains intersect masks. They are not supported but will be treated like add masks."

    .line 37
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    .line 39
    sget v0, Lcom/airbnb/lottie/c/b/g$a;->MaskModeIntersect$2eee3dc9:I

    goto/16 :goto_0

    .line 34
    :pswitch_4
    sget v0, Lcom/airbnb/lottie/c/b/g$a;->MaskModeSubtract$2eee3dc9:I

    goto/16 :goto_0

    .line 31
    :pswitch_5
    sget v0, Lcom/airbnb/lottie/c/b/g$a;->MaskModeAdd$2eee3dc9:I

    goto/16 :goto_0

    .line 56
    :cond_8
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 58
    new-instance p0, Lcom/airbnb/lottie/c/b/g;

    invoke-direct {p0, v0, v2, v3}, Lcom/airbnb/lottie/c/b/g;-><init>(ILcom/airbnb/lottie/c/a/h;Lcom/airbnb/lottie/c/a/d;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
