.class public Lcom/huawei/android/app/admin/EmailAccount;
.super Ljava/lang/Object;
.source "EmailAccount.java"


# instance fields
.field public mEmailAddress:Ljava/lang/String;

.field public mInComingPathPrefix:Ljava/lang/String;

.field public mInComingProtocol:Ljava/lang/String;

.field public mInComingServerAcceptAllCertificates:Z

.field public mInComingServerAddress:Ljava/lang/String;

.field public mInComingServerLogin:Ljava/lang/String;

.field public mInComingServerPassword:Ljava/lang/String;

.field public mInComingServerPort:I

.field public mInComingServerUseSSL:Z

.field public mInComingServerUseTLS:Z

.field public mIsDefault:Z

.field public mOutGoingPathPrefix:Ljava/lang/String;

.field public mOutGoingProtocol:Ljava/lang/String;

.field public mOutGoingServerAcceptAllCertificates:Z

.field public mOutGoingServerAddress:Ljava/lang/String;

.field public mOutGoingServerLogin:Ljava/lang/String;

.field public mOutGoingServerPassword:Ljava/lang/String;

.field public mOutGoingServerPort:I

.field public mOutGoingServerUseSSL:Z

.field public mOutGoingServerUseTLS:Z

.field public mSenderName:Ljava/lang/String;

.field public mSignature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance p0, Lcom/huawei/android/util/NoExtAPIException;

    const-string p1, "method not supported."

    invoke-direct {p0, p1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
