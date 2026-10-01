.class public final Lcom/liulishuo/filedownloader/services/c$a;
.super Ljava/lang/Object;
.source "DownloadMgrInitialParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/services/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/liulishuo/filedownloader/h/c$c;

.field public b:Ljava/lang/Integer;

.field public c:Lcom/liulishuo/filedownloader/h/c$e;

.field public d:Lcom/liulishuo/filedownloader/h/c$b;

.field public e:Lcom/liulishuo/filedownloader/h/c$a;

.field public f:Lcom/liulishuo/filedownloader/h/c$d;

.field public g:Lcom/liulishuo/filedownloader/services/i;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 5

    const-string v0, "component: database[%s], maxNetworkCount[%s], outputStream[%s], connection[%s], connectionCountAdapter[%s]"

    const/4 v1, 0x5

    .line 335
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/c$a;->a:Lcom/liulishuo/filedownloader/h/c$c;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/c$a;->b:Ljava/lang/Integer;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/c$a;->c:Lcom/liulishuo/filedownloader/h/c$e;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/c$a;->d:Lcom/liulishuo/filedownloader/h/c$b;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/c$a;->e:Lcom/liulishuo/filedownloader/h/c$a;

    const/4 v2, 0x4

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/h/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
