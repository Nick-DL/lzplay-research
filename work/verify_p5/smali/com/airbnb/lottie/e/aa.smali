.class public final Lcom/airbnb/lottie/e/aa;
.super Ljava/lang/Object;
.source "ShapeDataParser.java"

# interfaces
.implements Lcom/airbnb/lottie/e/af;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/e/af<",
        "Lcom/airbnb/lottie/c/b/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/airbnb/lottie/e/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/airbnb/lottie/e/aa;

    invoke-direct {v0}, Lcom/airbnb/lottie/e/aa;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/e/aa;->a:Lcom/airbnb/lottie/e/aa;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .locals 11

    .line 1024
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object p0

    sget-object v0, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-ne p0, v0, :cond_0

    .line 1025
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 1032
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 p0, 0x0

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, v1

    move v3, v0

    .line 1034
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    .line 1035
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x63

    if-eq v7, v8, :cond_4

    const/16 v8, 0x69

    if-eq v7, v8, :cond_3

    const/16 v8, 0x6f

    if-eq v7, v8, :cond_2

    const/16 v8, 0x76

    if-eq v7, v8, :cond_1

    goto :goto_1

    :cond_1
    const-string v7, "v"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    goto :goto_2

    :cond_2
    const-string v5, "o"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x3

    goto :goto_2

    :cond_3
    const-string v5, "i"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x2

    goto :goto_2

    :cond_4
    const-string v5, "c"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v0

    goto :goto_2

    :cond_5
    :goto_1
    move v4, v6

    :goto_2
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 1046
    :pswitch_0
    invoke-static {p1, p2}, Lcom/airbnb/lottie/e/n;->a(Landroid/util/JsonReader;F)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 1043
    :pswitch_1
    invoke-static {p1, p2}, Lcom/airbnb/lottie/e/n;->a(Landroid/util/JsonReader;F)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 1040
    :pswitch_2
    invoke-static {p1, p2}, Lcom/airbnb/lottie/e/n;->a(Landroid/util/JsonReader;F)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 1037
    :pswitch_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v3

    goto :goto_0

    .line 1051
    :cond_6
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 1053
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object p2

    sget-object v4, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    if-ne p2, v4, :cond_7

    .line 1054
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    :cond_7
    if-eqz p0, :cond_b

    if-eqz v1, :cond_b

    if-eqz v2, :cond_b

    .line 1061
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1062
    new-instance p0, Lcom/airbnb/lottie/c/b/l;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/airbnb/lottie/c/b/l;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    return-object p0

    .line 1065
    :cond_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    .line 1066
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/PointF;

    .line 1068
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v5

    :goto_3
    if-ge v6, p1, :cond_9

    .line 1071
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    add-int/lit8 v8, v6, -0x1

    .line 1072
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/PointF;

    .line 1073
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    .line 1074
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    .line 1075
    invoke-static {v9, v8}, Lcom/airbnb/lottie/f/e;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v8

    .line 1076
    invoke-static {v7, v10}, Lcom/airbnb/lottie/f/e;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v9

    .line 1077
    new-instance v10, Lcom/airbnb/lottie/c/a;

    invoke-direct {v10, v8, v9, v7}, Lcom/airbnb/lottie/c/a;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_9
    if-eqz v3, :cond_a

    .line 1081
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    sub-int/2addr p1, v5

    .line 1082
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/PointF;

    .line 1083
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    .line 1084
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 1086
    invoke-static {p0, p1}, Lcom/airbnb/lottie/f/e;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    .line 1087
    invoke-static {v6, v0}, Lcom/airbnb/lottie/f/e;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 1089
    new-instance v0, Lcom/airbnb/lottie/c/a;

    invoke-direct {v0, p0, p1, v6}, Lcom/airbnb/lottie/c/a;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1091
    :cond_a
    new-instance p0, Lcom/airbnb/lottie/c/b/l;

    invoke-direct {p0, p2, v3, v4}, Lcom/airbnb/lottie/c/b/l;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    return-object p0

    .line 1058
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Shape data was missing information."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
