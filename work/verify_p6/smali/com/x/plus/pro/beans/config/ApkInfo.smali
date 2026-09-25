.class public Lcom/x/plus/pro/beans/config/ApkInfo;
.super Lcom/x/plus/pro/beans/ApkBaseInfo;
.source "ApkInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/plus/pro/beans/config/ApkInfo$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/x/plus/pro/beans/config/ApkInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public j:I

.field public k:I

.field private l:I

.field private m:Lcom/x/plus/pro/beans/config/ApkInfo$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    new-instance v0, Lcom/x/plus/pro/beans/config/ApkInfo$1;

    invoke-direct {v0}, Lcom/x/plus/pro/beans/config/ApkInfo$1;-><init>()V

    sput-object v0, Lcom/x/plus/pro/beans/config/ApkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 88
    invoke-direct {p0, p1}, Lcom/x/plus/pro/beans/ApkBaseInfo;-><init>(Landroid/os/Parcel;)V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/x/plus/pro/beans/config/ApkInfo;->j:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/x/plus/pro/beans/config/ApkInfo;->k:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/x/plus/pro/beans/config/ApkInfo;->l:I

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    .line 123
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1058
    iget-object v2, p0, Lcom/x/plus/pro/beans/ApkBaseInfo;->d:Ljava/lang/String;

    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x1d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/liulishuo/filedownloader/h/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-static {p1, v1, v2}, Lcom/x/plus/pro/f/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 127
    invoke-static {v2}, Lcom/x/plus/pro/f/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2042
    iget-object v1, p0, Lcom/x/plus/pro/beans/ApkBaseInfo;->b:Ljava/lang/String;

    .line 128
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    move v0, p1

    :cond_0
    if-eqz v0, :cond_1

    .line 2094
    iput-object v2, p0, Lcom/x/plus/pro/beans/ApkBaseInfo;->f:Ljava/lang/String;

    goto :goto_0

    .line 132
    :cond_1
    invoke-static {v2}, Lcom/x/plus/pro/f/c;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/x/plus/pro/beans/config/ApkInfo;->m:Lcom/x/plus/pro/beans/config/ApkInfo$a;

    if-eqz p1, :cond_3

    .line 139
    iget-object p1, p0, Lcom/x/plus/pro/beans/config/ApkInfo;->m:Lcom/x/plus/pro/beans/config/ApkInfo$a;

    invoke-interface {p1, v0, p0}, Lcom/x/plus/pro/beans/config/ApkInfo$a;->a(ZLcom/x/plus/pro/beans/config/ApkInfo;)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/x/plus/pro/beans/config/ApkInfo;Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/x/plus/pro/beans/config/ApkInfo;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/x/plus/pro/beans/config/ApkInfo$a;)V
    .locals 1

    .line 107
    iput-object p2, p0, Lcom/x/plus/pro/beans/config/ApkInfo;->m:Lcom/x/plus/pro/beans/config/ApkInfo$a;

    .line 108
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 109
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/x/plus/pro/beans/config/ApkInfo$2;

    invoke-direct {v0, p0, p1}, Lcom/x/plus/pro/beans/config/ApkInfo$2;-><init>(Lcom/x/plus/pro/beans/config/ApkInfo;Landroid/content/Context;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 114
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void

    .line 116
    :cond_0
    invoke-direct {p0, p1}, Lcom/x/plus/pro/beans/config/ApkInfo;->a(Landroid/content/Context;)V

    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 81
    invoke-super {p0, p1, p2}, Lcom/x/plus/pro/beans/ApkBaseInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 82
    iget p2, p0, Lcom/x/plus/pro/beans/config/ApkInfo;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget p2, p0, Lcom/x/plus/pro/beans/config/ApkInfo;->k:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget p0, p0, Lcom/x/plus/pro/beans/config/ApkInfo;->l:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
