.class public Lcom/huawei/android/app/admin/HwMailProvider;
.super Ljava/lang/Object;
.source "HwMailProvider.java"


# instance fields
.field public domain:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public incomingfield:Ljava/lang/String;

.field public incominguri:Ljava/lang/String;

.field public incomingusername:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public outgoinguri:Ljava/lang/String;

.field public outgoingusername:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p0, p1}, Lcom/huawei/android/app/admin/HwMailProvider;->setId(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, p2}, Lcom/huawei/android/app/admin/HwMailProvider;->setLabel(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p3}, Lcom/huawei/android/app/admin/HwMailProvider;->setDomain(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, p4}, Lcom/huawei/android/app/admin/HwMailProvider;->setIncominguri(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, p5}, Lcom/huawei/android/app/admin/HwMailProvider;->setIncomingusername(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, p6}, Lcom/huawei/android/app/admin/HwMailProvider;->setIncomingfield(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, p7}, Lcom/huawei/android/app/admin/HwMailProvider;->setOutgoinguri(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, p8}, Lcom/huawei/android/app/admin/HwMailProvider;->setOutgoingusername(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/huawei/android/app/admin/HwMailProvider;->domain:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/huawei/android/app/admin/HwMailProvider;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getIncomingfield()Ljava/lang/String;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/huawei/android/app/admin/HwMailProvider;->incomingfield:Ljava/lang/String;

    return-object p0
.end method

.method public getIncominguri()Ljava/lang/String;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/huawei/android/app/admin/HwMailProvider;->incominguri:Ljava/lang/String;

    return-object p0
.end method

.method public getIncomingusername()Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/huawei/android/app/admin/HwMailProvider;->incomingusername:Ljava/lang/String;

    return-object p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/huawei/android/app/admin/HwMailProvider;->label:Ljava/lang/String;

    return-object p0
.end method

.method public getOutgoinguri()Ljava/lang/String;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/huawei/android/app/admin/HwMailProvider;->outgoinguri:Ljava/lang/String;

    return-object p0
.end method

.method public getOutgoingusername()Ljava/lang/String;
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/huawei/android/app/admin/HwMailProvider;->outgoingusername:Ljava/lang/String;

    return-object p0
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/huawei/android/app/admin/HwMailProvider;->domain:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/huawei/android/app/admin/HwMailProvider;->id:Ljava/lang/String;

    return-void
.end method

.method public setIncomingfield(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/huawei/android/app/admin/HwMailProvider;->incomingfield:Ljava/lang/String;

    return-void
.end method

.method public setIncominguri(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/huawei/android/app/admin/HwMailProvider;->incominguri:Ljava/lang/String;

    return-void
.end method

.method public setIncomingusername(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/huawei/android/app/admin/HwMailProvider;->incomingusername:Ljava/lang/String;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/huawei/android/app/admin/HwMailProvider;->label:Ljava/lang/String;

    return-void
.end method

.method public setOutgoinguri(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/huawei/android/app/admin/HwMailProvider;->outgoinguri:Ljava/lang/String;

    return-void
.end method

.method public setOutgoingusername(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/huawei/android/app/admin/HwMailProvider;->outgoingusername:Ljava/lang/String;

    return-void
.end method
