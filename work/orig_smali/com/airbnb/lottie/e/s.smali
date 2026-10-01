.class final Lcom/airbnb/lottie/e/s;
.super Ljava/lang/Object;
.source "MaskParser.java"


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/b/g;
    .registers 12

    .line 24
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move-object v3, v2

    move v0, v1

    .line 25
    :goto_8
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ba

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

    if-eq v5, v6, :cond_3b

    const/16 v6, 0xe04

    if-eq v5, v6, :cond_31

    const v6, 0x3339a3

    if-eq v5, v6, :cond_27

    goto :goto_45

    :cond_27
    const-string v5, "mode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    move v5, v1

    goto :goto_46

    :cond_31
    const-string v5, "pt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    move v5, v7

    goto :goto_46

    :cond_3b
    const-string v5, "o"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    move v5, v8

    goto :goto_46

    :cond_45
    :goto_45
    move v5, v9

    :goto_46
    packed-switch v5, :pswitch_data_c4

    .line 53
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_8

    .line 50
    :pswitch_4d
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/d;

    move-result-object v3

    goto :goto_8

    .line 47
    :pswitch_52
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/d;->c(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/h;

    move-result-object v2

    goto :goto_8

    .line 29
    :pswitch_57
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x61

    if-eq v5, v6, :cond_7f

    const/16 v6, 0x69

    if-eq v5, v6, :cond_75

    const/16 v6, 0x73

    if-eq v5, v6, :cond_6c

    goto :goto_89

    :cond_6c
    const-string v5, "s"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    goto :goto_8a

    :cond_75
    const-string v5, "i"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    move v7, v8

    goto :goto_8a

    :cond_7f
    const-string v5, "a"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    move v7, v1

    goto :goto_8a

    :cond_89
    :goto_89
    move v7, v9

    :goto_8a
    packed-switch v7, :pswitch_data_ce

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

    goto/16 :goto_8

    :pswitch_a9
    const-string v0, "Animation contains intersect masks. They are not supported but will be treated like add masks."

    .line 37
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    .line 39
    sget v0, Lcom/airbnb/lottie/c/b/g$a;->MaskModeIntersect$2eee3dc9:I

    goto/16 :goto_8

    .line 34
    :pswitch_b2
    sget v0, Lcom/airbnb/lottie/c/b/g$a;->MaskModeSubtract$2eee3dc9:I

    goto/16 :goto_8

    .line 31
    :pswitch_b6
    sget v0, Lcom/airbnb/lottie/c/b/g$a;->MaskModeAdd$2eee3dc9:I

    goto/16 :goto_8

    .line 56
    :cond_ba
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 58
    new-instance p0, Lcom/airbnb/lottie/c/b/g;

    invoke-direct {p0, v0, v2, v3}, Lcom/airbnb/lottie/c/b/g;-><init>(ILcom/airbnb/lottie/c/a/h;Lcom/airbnb/lottie/c/a/d;)V

    return-object p0

    nop

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_57
        :pswitch_52
        :pswitch_4d
    .end packed-switch

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_b6
        :pswitch_b2
        :pswitch_a9
    .end packed-switch
.end method
