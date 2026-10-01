.class final Lcom/x/plus/pro/beans/ApkBaseInfo$1;
.super Ljava/lang/Object;
.source "ApkBaseInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/plus/pro/beans/ApkBaseInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/x/plus/pro/beans/ApkBaseInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 2160
    new-instance p0, Lcom/x/plus/pro/beans/ApkBaseInfo;

    invoke-direct {p0, p1}, Lcom/x/plus/pro/beans/ApkBaseInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1165
    new-array p0, p1, [Lcom/x/plus/pro/beans/ApkBaseInfo;

    return-object p0
.end method
