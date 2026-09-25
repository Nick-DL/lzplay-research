.class public Lcom/huawei/android/app/admin/DeviceFirewallManager;
.super Ljava/lang/Object;
.source "DeviceFirewallManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceFirewallManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGlobalProxy(Landroid/content/ComponentName;)Ljava/util/List;
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

    .line 49
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPAC(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 0

    .line 75
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;ILjava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 38
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPAC(Landroid/content/ComponentName;Landroid/net/Uri;)Z
    .locals 0

    .line 64
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
