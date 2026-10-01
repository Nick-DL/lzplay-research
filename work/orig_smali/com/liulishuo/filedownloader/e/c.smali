.class public final Lcom/liulishuo/filedownloader/e/c;
.super Lcom/liulishuo/filedownloader/e/a;
.source "FileDownloadNetworkPolicyException.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "Only allows downloading this task on the wifi network type"

    .line 29
    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/e/a;-><init>(Ljava/lang/String;)V

    return-void
.end method
