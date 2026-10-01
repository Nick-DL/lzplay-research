.class public final Lcom/airbnb/lottie/c/e;
.super Ljava/lang/Object;
.source "KeyPath.java"


# instance fields
.field public a:Lcom/airbnb/lottie/c/f;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/airbnb/lottie/c/e;)V
    .registers 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/airbnb/lottie/c/e;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/airbnb/lottie/c/e;->b:Ljava/util/List;

    .line 57
    iget-object p1, p1, Lcom/airbnb/lottie/c/e;->a:Lcom/airbnb/lottie/c/f;

    iput-object p1, p0, Lcom/airbnb/lottie/c/e;->a:Lcom/airbnb/lottie/c/f;

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/c/e;->b:Ljava/util/List;

    return-void
.end method

.method private a()Z
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/airbnb/lottie/c/e;->b:Ljava/util/List;

    iget-object p0, p0, Lcom/airbnb/lottie/c/e;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/airbnb/lottie/c/f;)Lcom/airbnb/lottie/c/e;
    .registers 3

    .line 80
    new-instance v0, Lcom/airbnb/lottie/c/e;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/c/e;-><init>(Lcom/airbnb/lottie/c/e;)V

    .line 81
    iput-object p1, v0, Lcom/airbnb/lottie/c/e;->a:Lcom/airbnb/lottie/c/f;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/airbnb/lottie/c/e;
    .registers 3

    .line 70
    new-instance v0, Lcom/airbnb/lottie/c/e;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/c/e;-><init>(Lcom/airbnb/lottie/c/e;)V

    .line 71
    iget-object p0, v0, Lcom/airbnb/lottie/c/e;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final a(Ljava/lang/String;I)Z
    .registers 6

    const-string v0, "__container"

    .line 1199
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 105
    :cond_a
    iget-object v0, p0, Lcom/airbnb/lottie/c/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-lt p2, v0, :cond_14

    return v2

    .line 108
    :cond_14
    iget-object v0, p0, Lcom/airbnb/lottie/c/e;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_44

    iget-object p1, p0, Lcom/airbnb/lottie/c/e;->b:Ljava/util/List;

    .line 109
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "**"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_44

    iget-object p0, p0, Lcom/airbnb/lottie/c/e;->b:Ljava/util/List;

    .line 110
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string p1, "*"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_43

    goto :goto_44

    :cond_43
    return v2

    :cond_44
    :goto_44
    return v1
.end method

.method public final b(Ljava/lang/String;I)I
    .registers 6

    const-string v0, "__container"

    .line 2199
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 129
    :cond_a
    iget-object v0, p0, Lcom/airbnb/lottie/c/e;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "**"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1c

    return v2

    .line 133
    :cond_1c
    iget-object v0, p0, Lcom/airbnb/lottie/c/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-ne p2, v0, :cond_26

    return v1

    .line 137
    :cond_26
    iget-object p0, p0, Lcom/airbnb/lottie/c/e;->b:Ljava/util/List;

    add-int/2addr p2, v2

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    const/4 p0, 0x2

    return p0

    :cond_37
    return v1
.end method

.method public final c(Ljava/lang/String;I)Z
    .registers 8

    .line 150
    iget-object v0, p0, Lcom/airbnb/lottie/c/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lt p2, v0, :cond_a

    return v1

    .line 153
    :cond_a
    iget-object v0, p0, Lcom/airbnb/lottie/c/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ne p2, v0, :cond_16

    move v0, v2

    goto :goto_17

    :cond_16
    move v0, v1

    .line 154
    :goto_17
    iget-object v3, p0, Lcom/airbnb/lottie/c/e;->b:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "**"

    .line 155
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 158
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    const-string p1, "*"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    goto :goto_38

    :cond_36
    move p1, v1

    goto :goto_39

    :cond_38
    :goto_38
    move p1, v2

    :goto_39
    if-nez v0, :cond_4b

    .line 159
    iget-object v0, p0, Lcom/airbnb/lottie/c/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ne p2, v0, :cond_4e

    invoke-direct {p0}, Lcom/airbnb/lottie/c/e;->a()Z

    move-result p0

    if-eqz p0, :cond_4e

    :cond_4b
    if-eqz p1, :cond_4e

    return v2

    :cond_4e
    return v1

    :cond_4f
    if-nez v0, :cond_63

    .line 162
    iget-object v3, p0, Lcom/airbnb/lottie/c/e;->b:Ljava/util/List;

    add-int/lit8 v4, p2, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    move v3, v2

    goto :goto_64

    :cond_63
    move v3, v1

    :goto_64
    if-eqz v3, :cond_83

    .line 164
    iget-object p1, p0, Lcom/airbnb/lottie/c/e;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    if-eq p2, p1, :cond_82

    iget-object p1, p0, Lcom/airbnb/lottie/c/e;->b:Ljava/util/List;

    .line 165
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x3

    if-ne p2, p1, :cond_81

    invoke-direct {p0}, Lcom/airbnb/lottie/c/e;->a()Z

    move-result p0

    if-eqz p0, :cond_81

    goto :goto_82

    :cond_81
    return v1

    :cond_82
    :goto_82
    return v2

    :cond_83
    if-eqz v0, :cond_86

    return v2

    :cond_86
    add-int/2addr p2, v2

    .line 171
    iget-object v0, p0, Lcom/airbnb/lottie/c/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-ge p2, v0, :cond_91

    return v1

    .line 177
    :cond_91
    iget-object p0, p0, Lcom/airbnb/lottie/c/e;->b:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final d(Ljava/lang/String;I)Z
    .registers 4

    const-string v0, "__container"

    .line 188
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_a

    return v0

    .line 191
    :cond_a
    iget-object p1, p0, Lcom/airbnb/lottie/c/e;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v0

    if-lt p2, p1, :cond_26

    iget-object p0, p0, Lcom/airbnb/lottie/c/e;->b:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string p1, "**"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    goto :goto_26

    :cond_24
    const/4 p0, 0x0

    return p0

    :cond_26
    :goto_26
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KeyPath{keys="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/airbnb/lottie/c/e;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",resolved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/airbnb/lottie/c/e;->a:Lcom/airbnb/lottie/c/f;

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
