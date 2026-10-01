.class final Lcom/airbnb/lottie/e/y;
.super Ljava/lang/Object;
.source "RepeaterParser.java"


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/b/k;
    .registers 11

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    .line 23
    :goto_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_67

    .line 24
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0x63

    const/4 v8, 0x0

    if-eq v6, v7, :cond_43

    const/16 v7, 0x6f

    if-eq v6, v7, :cond_39

    const/16 v7, 0xdbf

    if-eq v6, v7, :cond_2f

    const/16 v7, 0xe7e

    if-eq v6, v7, :cond_25

    goto :goto_4c

    :cond_25
    const-string v6, "tr"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    const/4 v5, 0x3

    goto :goto_4c

    :cond_2f
    const-string v6, "nm"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    move v5, v8

    goto :goto_4c

    :cond_39
    const-string v6, "o"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    const/4 v5, 0x2

    goto :goto_4c

    :cond_43
    const-string v6, "c"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    const/4 v5, 0x1

    :cond_4c
    :goto_4c
    packed-switch v5, :pswitch_data_6e

    .line 38
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_4

    .line 35
    :pswitch_53
    invoke-static {p0, p1}, Lcom/airbnb/lottie/e/c;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;)Lcom/airbnb/lottie/c/a/l;

    move-result-object v3

    goto :goto_4

    .line 32
    :pswitch_58
    invoke-static {p0, p1, v8}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Z)Lcom/airbnb/lottie/c/a/b;

    move-result-object v2

    goto :goto_4

    .line 29
    :pswitch_5d
    invoke-static {p0, p1, v8}, Lcom/airbnb/lottie/e/d;->a(Landroid/util/JsonReader;Lcom/airbnb/lottie/d;Z)Lcom/airbnb/lottie/c/a/b;

    move-result-object v1

    goto :goto_4

    .line 26
    :pswitch_62
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 42
    :cond_67
    new-instance p0, Lcom/airbnb/lottie/c/b/k;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/airbnb/lottie/c/b/k;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/c/a/b;Lcom/airbnb/lottie/c/a/b;Lcom/airbnb/lottie/c/a/l;)V

    return-object p0

    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_62
        :pswitch_5d
        :pswitch_58
        :pswitch_53
    .end packed-switch
.end method
