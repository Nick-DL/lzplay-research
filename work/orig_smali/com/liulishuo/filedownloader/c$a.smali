.class final Lcom/liulishuo/filedownloader/c$a;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/liulishuo/filedownloader/c;


# direct methods
.method private constructor <init>(Lcom/liulishuo/filedownloader/c;)V
    .registers 2

    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 670
    iput-object p1, p0, Lcom/liulishuo/filedownloader/c$a;->a:Lcom/liulishuo/filedownloader/c;

    .line 671
    iget-object p0, p0, Lcom/liulishuo/filedownloader/c$a;->a:Lcom/liulishuo/filedownloader/c;

    const/4 p1, 0x1

    .line 1035
    iput-boolean p1, p0, Lcom/liulishuo/filedownloader/c;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/liulishuo/filedownloader/c;B)V
    .registers 3

    .line 666
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/c$a;-><init>(Lcom/liulishuo/filedownloader/c;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 6

    .line 676
    iget-object v0, p0, Lcom/liulishuo/filedownloader/c$a;->a:Lcom/liulishuo/filedownloader/c;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/c;->l()I

    move-result v0

    .line 678
    sget-boolean v1, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v1, :cond_19

    const-string v1, "add the task[%d] to the queue"

    const/4 v2, 0x1

    .line 679
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1038
    :cond_19
    invoke-static {}, Lcom/liulishuo/filedownloader/h$a;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object v1

    .line 682
    iget-object p0, p0, Lcom/liulishuo/filedownloader/c$a;->a:Lcom/liulishuo/filedownloader/c;

    invoke-virtual {v1, p0}, Lcom/liulishuo/filedownloader/h;->c(Lcom/liulishuo/filedownloader/a$a;)V

    return v0
.end method
