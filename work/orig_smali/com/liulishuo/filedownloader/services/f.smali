.class public final Lcom/liulishuo/filedownloader/services/f;
.super Ljava/lang/Object;
.source "FileDownloadBroadcastHandler.java"


# direct methods
.method public static a(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .registers 3

    if-eqz p0, :cond_21

    .line 52
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c()B

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_1b

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v1, "filedownloader.intent.action.completed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "model"

    .line 55
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1051
    sget-object p0, Lcom/liulishuo/filedownloader/h/c;->a:Landroid/content/Context;

    .line 57
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 52
    :cond_1b
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 51
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
