.class final Landroidx/versionedparcelable/b;
.super Landroidx/versionedparcelable/a;
.source "VersionedParcelParcel.java"


# instance fields
.field private final d:Landroid/util/SparseIntArray;

.field private final e:Landroid/os/Parcel;

.field private final f:I

.field private final g:I

.field private final h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    const-string v4, ""

    new-instance v5, Landroidx/b/a;

    invoke-direct {v5}, Landroidx/b/a;-><init>()V

    new-instance v6, Landroidx/b/a;

    invoke-direct {v6}, Landroidx/b/a;-><init>()V

    new-instance v7, Landroidx/b/a;

    invoke-direct {v7}, Landroidx/b/a;-><init>()V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroidx/versionedparcelable/b;-><init>(Landroid/os/Parcel;IILjava/lang/String;Landroidx/b/a;Landroidx/b/a;Landroidx/b/a;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;IILjava/lang/String;Landroidx/b/a;Landroidx/b/a;Landroidx/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "II",
            "Ljava/lang/String;",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p5, p6, p7}, Landroidx/versionedparcelable/a;-><init>(Landroidx/b/a;Landroidx/b/a;Landroidx/b/a;)V

    .line 41
    new-instance p5, Landroid/util/SparseIntArray;

    invoke-direct {p5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p5, p0, Landroidx/versionedparcelable/b;->d:Landroid/util/SparseIntArray;

    const/4 p5, -0x1

    .line 46
    iput p5, p0, Landroidx/versionedparcelable/b;->i:I

    const/4 p6, 0x0

    .line 47
    iput p6, p0, Landroidx/versionedparcelable/b;->j:I

    .line 48
    iput p5, p0, Landroidx/versionedparcelable/b;->k:I

    .line 61
    iput-object p1, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    .line 62
    iput p2, p0, Landroidx/versionedparcelable/b;->f:I

    .line 63
    iput p3, p0, Landroidx/versionedparcelable/b;->g:I

    .line 64
    iget p1, p0, Landroidx/versionedparcelable/b;->f:I

    iput p1, p0, Landroidx/versionedparcelable/b;->j:I

    .line 65
    iput-object p4, p0, Landroidx/versionedparcelable/b;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 99
    iget v0, p0, Landroidx/versionedparcelable/b;->i:I

    if-ltz v0, :cond_0

    .line 100
    iget-object v0, p0, Landroidx/versionedparcelable/b;->d:Landroid/util/SparseIntArray;

    iget v1, p0, Landroidx/versionedparcelable/b;->i:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 101
    iget-object v1, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    sub-int v2, v1, v0

    .line 107
    iget-object v3, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 108
    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object p0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 0

    .line 146
    iget-object p0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public final a(Landroid/os/Parcelable;)V
    .locals 1

    .line 176
    iget-object p0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

.method protected final a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 196
    iget-object p0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 166
    iget-object p0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 181
    iget-object p0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public final a([B)V
    .locals 2

    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    array-length v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget-object p0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void

    .line 130
    :cond_0
    iget-object p0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method protected final b()Landroidx/versionedparcelable/a;
    .locals 9

    .line 119
    new-instance v8, Landroidx/versionedparcelable/b;

    iget-object v1, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    iget v0, p0, Landroidx/versionedparcelable/b;->j:I

    iget v3, p0, Landroidx/versionedparcelable/b;->f:I

    if-ne v0, v3, :cond_0

    iget v0, p0, Landroidx/versionedparcelable/b;->g:I

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    iget v0, p0, Landroidx/versionedparcelable/b;->j:I

    goto :goto_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroidx/versionedparcelable/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroidx/versionedparcelable/b;->a:Landroidx/b/a;

    iget-object v6, p0, Landroidx/versionedparcelable/b;->b:Landroidx/b/a;

    iget-object v7, p0, Landroidx/versionedparcelable/b;->c:Landroidx/b/a;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroidx/versionedparcelable/b;-><init>(Landroid/os/Parcel;IILjava/lang/String;Landroidx/b/a;Landroidx/b/a;Landroidx/b/a;)V

    return-object v8
.end method

.method public final b(I)Z
    .locals 4

    .line 70
    :goto_0
    iget v0, p0, Landroidx/versionedparcelable/b;->j:I

    iget v1, p0, Landroidx/versionedparcelable/b;->g:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_2

    .line 71
    iget v0, p0, Landroidx/versionedparcelable/b;->k:I

    if-ne v0, p1, :cond_0

    return v3

    .line 74
    :cond_0
    iget v0, p0, Landroidx/versionedparcelable/b;->k:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    return v2

    .line 77
    :cond_1
    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    iget v1, p0, Landroidx/versionedparcelable/b;->j:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    iget-object v1, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroidx/versionedparcelable/b;->k:I

    .line 82
    iget v1, p0, Landroidx/versionedparcelable/b;->j:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/versionedparcelable/b;->j:I

    goto :goto_0

    .line 84
    :cond_2
    iget p0, p0, Landroidx/versionedparcelable/b;->k:I

    if-ne p0, p1, :cond_3

    return v3

    :cond_3
    return v2
.end method

.method public final c()I
    .locals 0

    .line 206
    iget-object p0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    return p0
.end method

.method public final c(I)V
    .locals 2

    .line 89
    invoke-virtual {p0}, Landroidx/versionedparcelable/b;->a()V

    .line 90
    iput p1, p0, Landroidx/versionedparcelable/b;->i:I

    .line 91
    iget-object v0, p0, Landroidx/versionedparcelable/b;->d:Landroid/util/SparseIntArray;

    iget-object v1, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/b;->a(I)V

    .line 94
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/b;->a(I)V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    .line 226
    iget-object p0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final e()[B
    .locals 1

    .line 236
    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 240
    :cond_0
    new-array v0, v0, [B

    .line 241
    iget-object p0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readByteArray([B)V

    return-object v0
.end method

.method protected final f()Ljava/lang/CharSequence;
    .locals 1

    .line 201
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    iget-object p0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final g()Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public final h()Z
    .locals 0

    .line 258
    iget-object p0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
