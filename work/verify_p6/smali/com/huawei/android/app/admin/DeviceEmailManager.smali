.class public Lcom/huawei/android/app/admin/DeviceEmailManager;
.super Ljava/lang/Object;
.source "DeviceEmailManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceEmailManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configEmailAccount(Landroid/content/ComponentName;Lcom/huawei/android/app/admin/EmailAccount;)V
    .locals 0

    .line 99
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public configExchangeAccount(Landroid/content/ComponentName;Lcom/huawei/android/app/admin/ExchangeAccount;)V
    .locals 0

    .line 111
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public configExchangeMailProvider(Landroid/content/ComponentName;Lcom/huawei/android/app/admin/HwMailProvider;)V
    .locals 0

    .line 125
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAccountsBlackListAllowingAddition(Landroid/content/ComponentName;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 173
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAccountsBlackListAllowingDeletion(Landroid/content/ComponentName;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 208
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAccountsWhiteListDisablingAddition(Landroid/content/ComponentName;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 161
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAccountsWhiteListDisablingDeletion(Landroid/content/ComponentName;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 196
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getMailProviderForDomain(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/huawei/android/app/admin/HwMailProvider;
    .locals 0

    .line 135
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isAccountAddedByMDM(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 0

    .line 301
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isAccountAdditionDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    .line 87
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isAccountAdditionDisabled(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 0

    .line 184
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isAccountDeletionDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    .line 40
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isAccountDeletionDisabled(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 0

    .line 218
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isAccountForceSync(Landroid/content/Context;Ljava/lang/String;II)Z
    .locals 0

    .line 289
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isAppDataClearanceDisabled(Landroid/content/Context;)Z
    .locals 0

    .line 256
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isForceSMIMECertificateAlias(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    .line 326
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isForceSMIMEMessages(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 0

    .line 350
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isPop3ImapDisabled(Landroid/content/ComponentName;)Z
    .locals 0

    .line 63
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAccountAdditionDisabled(Landroid/content/ComponentName;Z)Z
    .locals 0

    .line 76
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAccountDeletionDisabled(Landroid/content/ComponentName;Z)Z
    .locals 0

    .line 29
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAccountSync(Landroid/content/Context;Ljava/lang/String;III)V
    .locals 0

    .line 274
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setEmailForwardingDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 0

    .line 149
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setExceptionListForAccountAddition(Landroid/content/ComponentName;ZLjava/util/ArrayList;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 233
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setExceptionListForAccountDeletion(Landroid/content/ComponentName;ZLjava/util/ArrayList;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 248
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setForceRequiredSMIMEAndCertificateAlias(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 0

    .line 363
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setForceSMIMECertificateAlias(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    .line 314
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setForceSMIMEMessages(Landroid/content/ComponentName;Ljava/lang/String;ZI)Z
    .locals 0

    .line 339
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPop3ImapDisabled(Landroid/content/ComponentName;Z)Z
    .locals 0

    .line 52
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
