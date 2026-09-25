.class final Lcom/liulishuo/filedownloader/model/FileDownloadTaskAtom$1;
.super Ljava/lang/Object;
.source "FileDownloadTaskAtom.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/model/FileDownloadTaskAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/liulishuo/filedownloader/model/FileDownloadTaskAtom;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 2100
    new-instance p0, Lcom/liulishuo/filedownloader/model/FileDownloadTaskAtom;

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/model/FileDownloadTaskAtom;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1105
    new-array p0, p1, [Lcom/liulishuo/filedownloader/model/FileDownloadTaskAtom;

    return-object p0
.end method
