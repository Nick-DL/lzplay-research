.class public Lcom/x/plus/pro/beans/ApkBaseInfo;
.super Ljava/lang/Object;
.source "ApkBaseInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/x/plus/pro/beans/ApkBaseInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/c;
        a = "downUrl"
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/c;
        a = "fileMd5"
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/c;
        a = "verCode"
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/c;
        a = "pkgName"
    .end annotation
.end field

.field public e:J
    .annotation runtime Lcom/a/a/a/c;
        a = "fileSize"
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/c;
        a = "downloadPath"
    .end annotation
.end field

.field public g:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/c;
        a = "sign_1"
    .end annotation
.end field

.field public h:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/c;
        a = "sign_256"
    .end annotation
.end field

.field public i:I
    .annotation runtime Lcom/a/a/a/c;
        a = "number"
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/c;
        a = "description"
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/c;
        a = "desc_en"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 157
    new-instance v0, Lcom/x/plus/pro/beans/ApkBaseInfo$1;

    invoke-direct {v0}, Lcom/x/plus/pro/beans/ApkBaseInfo$1;-><init>()V

    sput-object v0, Lcom/x/plus/pro/beans/ApkBaseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/x/plus/pro/beans/ApkBaseInfo;->a:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/x/plus/pro/beans/ApkBaseInfo;->b:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/x/plus/pro/beans/ApkBaseInfo;->c:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/x/plus/pro/beans/ApkBaseInfo;->d:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/x/plus/pro/beans/ApkBaseInfo;->e:J

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/x/plus/pro/beans/ApkBaseInfo;->j:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/x/plus/pro/beans/ApkBaseInfo;->k:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/x/plus/pro/beans/ApkBaseInfo;->f:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/x/plus/pro/beans/ApkBaseInfo;->g:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/x/plus/pro/beans/ApkBaseInfo;->h:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/x/plus/pro/beans/ApkBaseInfo;->i:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 139
    iget-object p2, p0, Lcom/x/plus/pro/beans/ApkBaseInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object p2, p0, Lcom/x/plus/pro/beans/ApkBaseInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object p2, p0, Lcom/x/plus/pro/beans/ApkBaseInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object p2, p0, Lcom/x/plus/pro/beans/ApkBaseInfo;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-wide v0, p0, Lcom/x/plus/pro/beans/ApkBaseInfo;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 144
    iget-object p2, p0, Lcom/x/plus/pro/beans/ApkBaseInfo;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object p2, p0, Lcom/x/plus/pro/beans/ApkBaseInfo;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object p2, p0, Lcom/x/plus/pro/beans/ApkBaseInfo;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object p2, p0, Lcom/x/plus/pro/beans/ApkBaseInfo;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object p2, p0, Lcom/x/plus/pro/beans/ApkBaseInfo;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget p0, p0, Lcom/x/plus/pro/beans/ApkBaseInfo;->i:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
