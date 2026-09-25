.class public final Lcom/airbnb/lottie/e/h;
.super Ljava/lang/Object;
.source "DocumentDataParser.java"

# interfaces
.implements Lcom/airbnb/lottie/e/af;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/e/af<",
        "Lcom/airbnb/lottie/c/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/airbnb/lottie/e/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/airbnb/lottie/e/h;

    invoke-direct {v0}, Lcom/airbnb/lottie/e/h;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/e/h;->a:Lcom/airbnb/lottie/e/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .locals 21

    .line 1027
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move/from16 v20, v0

    move-object v6, v1

    move-object v7, v6

    move-wide v8, v2

    move-wide v12, v8

    move-wide v14, v12

    move-wide/from16 v18, v14

    move v10, v4

    move v11, v10

    move/from16 v16, v11

    move/from16 v17, v16

    .line 1028
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1029
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v5, 0x66

    if-eq v3, v5, :cond_8

    const/16 v5, 0x6a

    if-eq v3, v5, :cond_7

    const/16 v5, 0xcbd

    if-eq v3, v5, :cond_6

    const/16 v5, 0xd7c

    if-eq v3, v5, :cond_5

    const/16 v5, 0xd87

    if-eq v3, v5, :cond_4

    const/16 v5, 0xdd7

    if-eq v3, v5, :cond_3

    const/16 v5, 0xe50

    if-eq v3, v5, :cond_2

    const/16 v5, 0xe64

    if-eq v3, v5, :cond_1

    const/16 v5, 0xe7e

    if-eq v3, v5, :cond_0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-string v3, "t"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v4

    goto/16 :goto_2

    :pswitch_1
    const-string v3, "s"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x2

    goto/16 :goto_2

    :cond_0
    const-string v3, "tr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x4

    goto :goto_2

    :cond_1
    const-string v3, "sw"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x9

    goto :goto_2

    :cond_2
    const-string v3, "sc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x8

    goto :goto_2

    :cond_3
    const-string v3, "of"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0xa

    goto :goto_2

    :cond_4
    const-string v3, "ls"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x6

    goto :goto_2

    :cond_5
    const-string v3, "lh"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x5

    goto :goto_2

    :cond_6
    const-string v3, "fc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x7

    goto :goto_2

    :cond_7
    const-string v3, "j"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x3

    goto :goto_2

    :cond_8
    const-string v3, "f"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v0

    goto :goto_2

    :cond_9
    :goto_1
    move v1, v2

    :goto_2
    packed-switch v1, :pswitch_data_1

    .line 1064
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 1061
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v20

    goto/16 :goto_0

    .line 1058
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v18

    goto/16 :goto_0

    .line 1055
    :pswitch_4
    invoke-static/range {p1 .. p1}, Lcom/airbnb/lottie/e/n;->a(Landroid/util/JsonReader;)I

    move-result v17

    goto/16 :goto_0

    .line 1052
    :pswitch_5
    invoke-static/range {p1 .. p1}, Lcom/airbnb/lottie/e/n;->a(Landroid/util/JsonReader;)I

    move-result v16

    goto/16 :goto_0

    .line 1049
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v14

    goto/16 :goto_0

    .line 1046
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v12

    goto/16 :goto_0

    .line 1043
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v11

    goto/16 :goto_0

    .line 1040
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v10

    goto/16 :goto_0

    .line 1037
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v8

    goto/16 :goto_0

    .line 1034
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 1031
    :pswitch_c
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 1067
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endObject()V

    .line 1069
    new-instance v0, Lcom/airbnb/lottie/c/b;

    move-object v5, v0

    invoke-direct/range {v5 .. v20}, Lcom/airbnb/lottie/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;DIIDDIIDZ)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x73
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
