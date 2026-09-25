.class final Lcom/a/a/b/a/n$12;
.super Lcom/a/a/r;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/b/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/r<",
        "Ljava/util/BitSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/a/a/r;-><init>()V

    return-void
.end method

.method private static b(Lcom/a/a/d/a;)Ljava/util/BitSet;
    .locals 6

    .line 86
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 87
    invoke-virtual {p0}, Lcom/a/a/d/a;->a()V

    .line 89
    invoke-virtual {p0}, Lcom/a/a/d/a;->f()Lcom/a/a/d/b;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 90
    :goto_0
    sget-object v4, Lcom/a/a/d/b;->END_ARRAY:Lcom/a/a/d/b;

    if-eq v1, v4, :cond_2

    .line 92
    sget-object v4, Lcom/a/a/b/a/n$29;->a:[I

    invoke-virtual {v1}, Lcom/a/a/d/b;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_0

    .line 109
    new-instance p0, Lcom/a/a/p;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid bitset value type: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/p;-><init>(Ljava/lang/String;)V

    throw p0

    .line 100
    :pswitch_0
    invoke-virtual {p0}, Lcom/a/a/d/a;->i()Ljava/lang/String;

    move-result-object v1

    .line 102
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move v5, v2

    goto :goto_1

    .line 104
    :catch_0
    new-instance p0, Lcom/a/a/p;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error: Expecting: bitset number value (1, 0), Found: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/p;-><init>(Ljava/lang/String;)V

    throw p0

    .line 97
    :pswitch_1
    invoke-virtual {p0}, Lcom/a/a/d/a;->j()Z

    move-result v5

    goto :goto_1

    .line 94
    :pswitch_2
    invoke-virtual {p0}, Lcom/a/a/d/a;->n()I

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    if-eqz v5, :cond_1

    .line 112
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 115
    invoke-virtual {p0}, Lcom/a/a/d/a;->f()Lcom/a/a/d/b;

    move-result-object v1

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {p0}, Lcom/a/a/d/a;->b()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final synthetic a(Lcom/a/a/d/a;)Ljava/lang/Object;
    .locals 0

    .line 84
    invoke-static {p1}, Lcom/a/a/b/a/n$12;->b(Lcom/a/a/d/a;)Ljava/util/BitSet;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic a(Lcom/a/a/d/c;Ljava/lang/Object;)V
    .locals 3

    .line 84
    check-cast p2, Ljava/util/BitSet;

    .line 1122
    invoke-virtual {p1}, Lcom/a/a/d/c;->a()Lcom/a/a/d/c;

    .line 1123
    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 1124
    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    int-to-long v1, v1

    .line 1125
    invoke-virtual {p1, v1, v2}, Lcom/a/a/d/c;->a(J)Lcom/a/a/d/c;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1127
    :cond_0
    invoke-virtual {p1}, Lcom/a/a/d/c;->b()Lcom/a/a/d/c;

    return-void
.end method
