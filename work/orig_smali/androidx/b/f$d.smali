.class final Landroidx/b/f$d;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Z

.field final synthetic d:Landroidx/b/f;


# direct methods
.method constructor <init>(Landroidx/b/f;)V
    .registers 3

    .line 79
    iput-object p1, p0, Landroidx/b/f$d;->d:Landroidx/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Landroidx/b/f$d;->c:Z

    .line 80
    invoke-virtual {p1}, Landroidx/b/f;->a()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/b/f$d;->a:I

    const/4 p1, -0x1

    .line 81
    iput p1, p0, Landroidx/b/f$d;->b:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 137
    iget-boolean v0, p0, Landroidx/b/f$d;->c:Z

    if-eqz v0, :cond_33

    .line 141
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 144
    :cond_a
    check-cast p1, Ljava/util/Map$Entry;

    .line 145
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Landroidx/b/f$d;->d:Landroidx/b/f;

    iget v3, p0, Landroidx/b/f$d;->b:I

    invoke-virtual {v2, v3, v1}, Landroidx/b/f;->a(II)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 146
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Landroidx/b/f$d;->d:Landroidx/b/f;

    iget p0, p0, Landroidx/b/f$d;->b:I

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Landroidx/b/f;->a(II)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_32

    return v2

    :cond_32
    return v1

    .line 138
    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This container does not support retaining Map.Entry objects"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getKey()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 110
    iget-boolean v0, p0, Landroidx/b/f$d;->c:Z

    if-eqz v0, :cond_e

    .line 114
    iget-object v0, p0, Landroidx/b/f$d;->d:Landroidx/b/f;

    iget p0, p0, Landroidx/b/f$d;->b:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/b/f;->a(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 111
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This container does not support retaining Map.Entry objects"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 119
    iget-boolean v0, p0, Landroidx/b/f$d;->c:Z

    if-eqz v0, :cond_e

    .line 123
    iget-object v0, p0, Landroidx/b/f$d;->d:Landroidx/b/f;

    iget p0, p0, Landroidx/b/f$d;->b:I

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroidx/b/f;->a(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 120
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This container does not support retaining Map.Entry objects"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hasNext()Z
    .registers 2

    .line 86
    iget v0, p0, Landroidx/b/f$d;->b:I

    iget p0, p0, Landroidx/b/f$d;->a:I

    if-ge v0, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .registers 5

    .line 151
    iget-boolean v0, p0, Landroidx/b/f$d;->c:Z

    if-eqz v0, :cond_28

    .line 155
    iget-object v0, p0, Landroidx/b/f$d;->d:Landroidx/b/f;

    iget v1, p0, Landroidx/b/f$d;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/b/f;->a(II)Ljava/lang/Object;

    move-result-object v0

    .line 156
    iget-object v1, p0, Landroidx/b/f$d;->d:Landroidx/b/f;

    iget p0, p0, Landroidx/b/f$d;->b:I

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v3}, Landroidx/b/f;->a(II)Ljava/lang/Object;

    move-result-object p0

    if-nez v0, :cond_1a

    move v0, v2

    goto :goto_1e

    .line 157
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1e
    if-nez p0, :cond_21

    goto :goto_25

    .line 158
    :cond_21
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_25
    xor-int p0, v0, v2

    return p0

    .line 152
    :cond_28
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This container does not support retaining Map.Entry objects"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 3

    .line 1091
    invoke-virtual {p0}, Landroidx/b/f$d;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1092
    iget v0, p0, Landroidx/b/f$d;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/b/f$d;->b:I

    .line 1093
    iput-boolean v1, p0, Landroidx/b/f$d;->c:Z

    return-object p0

    .line 1091
    :cond_f
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .registers 3

    .line 99
    iget-boolean v0, p0, Landroidx/b/f$d;->c:Z

    if-eqz v0, :cond_1b

    .line 102
    iget-object v0, p0, Landroidx/b/f$d;->d:Landroidx/b/f;

    iget v1, p0, Landroidx/b/f$d;->b:I

    invoke-virtual {v0, v1}, Landroidx/b/f;->a(I)V

    .line 103
    iget v0, p0, Landroidx/b/f$d;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/b/f$d;->b:I

    .line 104
    iget v0, p0, Landroidx/b/f$d;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/b/f$d;->a:I

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Landroidx/b/f$d;->c:Z

    return-void

    .line 100
    :cond_1b
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 128
    iget-boolean v0, p0, Landroidx/b/f$d;->c:Z

    if-eqz v0, :cond_d

    .line 132
    iget-object v0, p0, Landroidx/b/f$d;->d:Landroidx/b/f;

    iget p0, p0, Landroidx/b/f$d;->b:I

    invoke-virtual {v0, p0, p1}, Landroidx/b/f;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 129
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This container does not support retaining Map.Entry objects"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/b/f$d;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/b/f$d;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
