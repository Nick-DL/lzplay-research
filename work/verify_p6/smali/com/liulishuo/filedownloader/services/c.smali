.class public final Lcom/liulishuo/filedownloader/services/c;
.super Ljava/lang/Object;
.source "DownloadMgrInitialParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/services/c$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/liulishuo/filedownloader/services/c$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    return-void
.end method

.method public constructor <init>(Lcom/liulishuo/filedownloader/services/c$a;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    return-void
.end method
