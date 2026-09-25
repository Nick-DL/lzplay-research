.class final Lcom/x/plus/pro/beans/config/ApkInfo$1;
.super Ljava/lang/Object;
.source "ApkInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/plus/pro/beans/config/ApkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/x/plus/pro/beans/config/ApkInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 2097
    new-instance p0, Lcom/x/plus/pro/beans/config/ApkInfo;

    invoke-direct {p0, p1}, Lcom/x/plus/pro/beans/config/ApkInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1102
    new-array p0, p1, [Lcom/x/plus/pro/beans/config/ApkInfo;

    return-object p0
.end method
