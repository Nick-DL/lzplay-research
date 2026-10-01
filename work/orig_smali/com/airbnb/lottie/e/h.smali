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
    .registers 1

    .line 10
    new-instance v0, Lcom/airbnb/lottie/e/h;

    invoke-direct {v0}, Lcom/airbnb/lottie/e/h;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/e/h;->a:Lcom/airbnb/lottie/e/h;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .registers 24

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
    :goto_17
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10d

    .line 1029
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v5, 0x66

    if-eq v3, v5, :cond_b8

    const/16 v5, 0x6a

    if-eq v3, v5, :cond_ae

    const/16 v5, 0xcbd

    if-eq v3, v5, :cond_a4

    const/16 v5, 0xd7c

    if-eq v3, v5, :cond_9a

    const/16 v5, 0xd87

    if-eq v3, v5, :cond_90

    const/16 v5, 0xdd7

    if-eq v3, v5, :cond_85

    const/16 v5, 0xe50

    if-eq v3, v5, :cond_7a

    const/16 v5, 0xe64

    if-eq v3, v5, :cond_6f

    const/16 v5, 0xe7e

    if-eq v3, v5, :cond_65

    packed-switch v3, :pswitch_data_118

    goto/16 :goto_c2

    :pswitch_4f
    const-string v3, "t"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c2

    move v1, v4

    goto/16 :goto_c3

    :pswitch_5a
    const-string v3, "s"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c2

    const/4 v1, 0x2

    goto/16 :goto_c3

    :cond_65
    const-string v3, "tr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c2

    const/4 v1, 0x4

    goto :goto_c3

    :cond_6f
    const-string v3, "sw"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c2

    const/16 v1, 0x9

    goto :goto_c3

    :cond_7a
    const-string v3, "sc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c2

    const/16 v1, 0x8

    goto :goto_c3

    :cond_85
    const-string v3, "of"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c2

    const/16 v1, 0xa

    goto :goto_c3

    :cond_90
    const-string v3, "ls"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c2

    const/4 v1, 0x6

    goto :goto_c3

    :cond_9a
    const-string v3, "lh"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c2

    const/4 v1, 0x5

    goto :goto_c3

    :cond_a4
    const-string v3, "fc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c2

    const/4 v1, 0x7

    goto :goto_c3

    :cond_ae
    const-string v3, "j"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c2

    const/4 v1, 0x3

    goto :goto_c3

    :cond_b8
    const-string v3, "f"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c2

    move v1, v0

    goto :goto_c3

    :cond_c2
    :goto_c2
    move v1, v2

    :goto_c3
    packed-switch v1, :pswitch_data_120

    .line 1064
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_17

    .line 1061
    :pswitch_cb
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v20

    goto/16 :goto_17

    .line 1058
    :pswitch_d1
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v18

    goto/16 :goto_17

    .line 1055
    :pswitch_d7
    invoke-static/range {p1 .. p1}, Lcom/airbnb/lottie/e/n;->a(Landroid/util/JsonReader;)I

    move-result v17

    goto/16 :goto_17

    .line 1052
    :pswitch_dd
    invoke-static/range {p1 .. p1}, Lcom/airbnb/lottie/e/n;->a(Landroid/util/JsonReader;)I

    move-result v16

    goto/16 :goto_17

    .line 1049
    :pswitch_e3
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v14

    goto/16 :goto_17

    .line 1046
    :pswitch_e9
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v12

    goto/16 :goto_17

    .line 1043
    :pswitch_ef
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v11

    goto/16 :goto_17

    .line 1040
    :pswitch_f5
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v10

    goto/16 :goto_17

    .line 1037
    :pswitch_fb
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v8

    goto/16 :goto_17

    .line 1034
    :pswitch_101
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_17

    .line 1031
    :pswitch_107
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_17

    .line 1067
    :cond_10d
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endObject()V

    .line 1069
    new-instance v0, Lcom/airbnb/lottie/c/b;

    move-object v5, v0

    invoke-direct/range {v5 .. v20}, Lcom/airbnb/lottie/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;DIIDDIIDZ)V

    return-object v0

    nop

    :pswitch_data_118
    .packed-switch 0x73
        :pswitch_5a
        :pswitch_4f
    .end packed-switch

    :pswitch_data_120
    .packed-switch 0x0
        :pswitch_107
        :pswitch_101
        :pswitch_fb
        :pswitch_f5
        :pswitch_ef
        :pswitch_e9
        :pswitch_e3
        :pswitch_dd
        :pswitch_d7
        :pswitch_d1
        :pswitch_cb
    .end packed-switch
.end method
