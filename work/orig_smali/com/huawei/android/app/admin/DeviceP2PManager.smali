.class public Lcom/huawei/android/app/admin/DeviceP2PManager;
.super Ljava/lang/Object;
.source "DeviceP2PManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isWifiP2PDisabled(Landroid/content/ComponentName;)Z
    .registers 2

    .line 23
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setWifiP2PDisabled(Landroid/content/ComponentName;Z)Z
    .registers 3

    .line 19
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
