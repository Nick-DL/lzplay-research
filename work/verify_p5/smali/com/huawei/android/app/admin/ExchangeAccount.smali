.class public Lcom/huawei/android/app/admin/ExchangeAccount;
.super Ljava/lang/Object;
.source "ExchangeAccount.java"


# instance fields
.field public mAcceptAllCertificates:Z

.field public mCalendarPeriod:I

.field public mDisplayHtmlDisabled:Z

.field public mDisplayName:Ljava/lang/String;

.field public mEasDomain:Ljava/lang/String;

.field public mEasUser:Ljava/lang/String;

.field public mEmailAddress:Ljava/lang/String;

.field public mForwardEmailDisabled:Z

.field public mIsDefault:Z

.field public mProtocolVersion:Ljava/lang/String;

.field public mScreenShotDisabled:Z

.field public mSenderName:Ljava/lang/String;

.field public mServerAddress:Ljava/lang/String;

.field public mServerPassword:Ljava/lang/String;

.field public mServerPathPrefix:Ljava/lang/String;

.field public mSignature:Ljava/lang/String;

.field public mSyncInterval:I

.field public mSyncLookback:I

.field public mUseSSL:Z

.field public mUseTLS:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;IZZZ)V
    .locals 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;IZZZII)V
    .locals 2

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
