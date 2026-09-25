.class public Lcom/liulishuo/filedownloader/model/FileDownloadModel;
.super Ljava/lang/Object;
.source "FileDownloadModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/liulishuo/filedownloader/model/FileDownloadModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Ljava/lang/String;

.field public final f:Ljava/util/concurrent/atomic/AtomicLong;

.field public g:J

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:I

.field public k:Z

.field private final l:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 313
    new-instance v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel$1;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel$1;-><init>()V

    sput-object v0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 295
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b:Ljava/lang/String;

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c:Ljava/lang/String;

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->d:Z

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e:Ljava/lang/String;

    .line 304
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 305
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g:J

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->h:Ljava/lang/String;

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->i:Ljava/lang/String;

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j:I

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->k:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 1125
    iget-object v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c:Ljava/lang/String;

    .line 1187
    iget-boolean v1, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->d:Z

    .line 1191
    iget-object p0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e:Ljava/lang/String;

    .line 140
    invoke-static {v0, v1, p0}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a(B)V
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public final a(J)V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c:Ljava/lang/String;

    .line 90
    iput-boolean p2, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->d:Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 144
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/liulishuo/filedownloader/h/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b(J)V
    .locals 2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 106
    :goto_0
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->k:Z

    .line 107
    iput-wide p1, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g:J

    return-void
.end method

.method public final c()B
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public final d()Z
    .locals 4

    .line 163
    iget-wide v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final e()Landroid/content/ContentValues;
    .locals 4

    .line 210
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_id"

    .line 2111
    iget v2, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 211
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "url"

    .line 2115
    iget-object v2, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b:Ljava/lang/String;

    .line 212
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "path"

    .line 2125
    iget-object v2, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c:Ljava/lang/String;

    .line 213
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "status"

    .line 214
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    const-string v1, "sofar"

    .line 2155
    iget-object v2, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 215
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "total"

    .line 2159
    iget-wide v2, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g:J

    .line 216
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "errMsg"

    .line 2175
    iget-object v2, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->h:Ljava/lang/String;

    .line 217
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "etag"

    .line 3167
    iget-object v2, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->i:Ljava/lang/String;

    .line 218
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "connectionCount"

    .line 3199
    iget v2, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j:I

    .line 219
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "pathAsDirectory"

    .line 4187
    iget-boolean v2, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->d:Z

    .line 220
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5187
    iget-boolean v1, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->d:Z

    if-eqz v1, :cond_0

    .line 5191
    iget-object v1, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "filename"

    .line 6191
    iget-object p0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e:Ljava/lang/String;

    .line 222
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "id[%d], url[%s], path[%s], status[%d], sofar[%s], total[%d], etag[%s], %s"

    const/16 v1, 0x8

    .line 265
    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    .line 267
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->i:Ljava/lang/String;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 268
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x7

    aput-object p0, v1, v2

    .line 265
    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 279
    iget p2, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    iget-object p2, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    iget-object p2, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget-boolean p2, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->d:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 283
    iget-object p2, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    iget-object p2, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 285
    iget-object p2, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 286
    iget-wide v0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 287
    iget-object p2, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    iget-object p2, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 289
    iget p2, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget-boolean p0, p0, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->k:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
