.class public Lcom/huawei/android/app/admin/DeviceVpnManager;
.super Ljava/lang/Object;
.source "DeviceVpnManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceVpnManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteVpnProfile(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 0

    .line 61
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getVpnList(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isInsecureVpnDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    .line 103
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isVpnDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    .line 45
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setInsecureVpnDisabled(Landroid/content/ComponentName;Z)Z
    .locals 0

    .line 88
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setVpnDisabled(Landroid/content/ComponentName;Z)Z
    .locals 0

    .line 32
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
