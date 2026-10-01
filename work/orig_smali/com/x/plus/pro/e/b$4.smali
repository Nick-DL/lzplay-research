.class final Lcom/x/plus/pro/e/b$4;
.super Lcom/liulishuo/filedownloader/m;
.source "InitializeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/plus/pro/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/x/plus/pro/e/b;


# direct methods
.method constructor <init>(Lcom/x/plus/pro/e/b;)V
    .registers 2

    .line 449
    iput-object p1, p0, Lcom/x/plus/pro/e/b$4;->a:Lcom/x/plus/pro/e/b;

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/liulishuo/filedownloader/a;)V
    .registers 4

    .line 497
    invoke-super {p0, p1}, Lcom/liulishuo/filedownloader/m;->a(Lcom/liulishuo/filedownloader/a;)V

    .line 498
    iget-object p1, p0, Lcom/x/plus/pro/e/b$4;->a:Lcom/x/plus/pro/e/b;

    invoke-static {p1}, Lcom/x/plus/pro/e/b;->h(Lcom/x/plus/pro/e/b;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/x/plus/pro/beans/config/ApkInfo;

    if-eqz p1, :cond_35

    .line 1090
    iget-object v0, p1, Lcom/x/plus/pro/beans/ApkBaseInfo;->f:Ljava/lang/String;

    .line 500
    invoke-static {v0}, Lcom/x/plus/pro/f/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 504
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 2042
    iget-object v1, p1, Lcom/x/plus/pro/beans/ApkBaseInfo;->b:Ljava/lang/String;

    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 505
    iget-object p0, p0, Lcom/x/plus/pro/e/b$4;->a:Lcom/x/plus/pro/e/b;

    invoke-static {p0}, Lcom/x/plus/pro/e/b;->i(Lcom/x/plus/pro/e/b;)V

    return-void

    .line 2090
    :cond_2b
    iget-object p1, p1, Lcom/x/plus/pro/beans/ApkBaseInfo;->f:Ljava/lang/String;

    .line 507
    invoke-static {p1}, Lcom/x/plus/pro/f/c;->a(Ljava/lang/String;)Z

    .line 508
    iget-object p0, p0, Lcom/x/plus/pro/e/b$4;->a:Lcom/x/plus/pro/e/b;

    invoke-static {p0}, Lcom/x/plus/pro/e/b;->g(Lcom/x/plus/pro/e/b;)V

    :cond_35
    return-void
.end method

.method public final a(Lcom/liulishuo/filedownloader/a;II)V
    .registers 4

    .line 453
    invoke-super {p0, p1, p2, p3}, Lcom/liulishuo/filedownloader/m;->a(Lcom/liulishuo/filedownloader/a;II)V

    int-to-float p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    .line 455
    iget-object p2, p0, Lcom/x/plus/pro/e/b$4;->a:Lcom/x/plus/pro/e/b;

    invoke-static {p2}, Lcom/x/plus/pro/e/b;->e(Lcom/x/plus/pro/e/b;)J

    move-result-wide p2

    long-to-float p2, p2

    div-float/2addr p1, p2

    .line 460
    iget-object p2, p0, Lcom/x/plus/pro/e/b$4;->a:Lcom/x/plus/pro/e/b;

    invoke-static {p2}, Lcom/x/plus/pro/e/b;->f(Lcom/x/plus/pro/e/b;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    const/4 p3, 0x0

    .line 462
    iput p3, p2, Landroid/os/Message;->what:I

    float-to-int p1, p1

    .line 463
    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 464
    iget-object p0, p0, Lcom/x/plus/pro/e/b$4;->a:Lcom/x/plus/pro/e/b;

    invoke-static {p0}, Lcom/x/plus/pro/e/b;->f(Lcom/x/plus/pro/e/b;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Lcom/liulishuo/filedownloader/a;Ljava/lang/Throwable;)V
    .registers 3

    .line 469
    invoke-super {p0, p1, p2}, Lcom/liulishuo/filedownloader/m;->a(Lcom/liulishuo/filedownloader/a;Ljava/lang/Throwable;)V

    .line 479
    iget-object p0, p0, Lcom/x/plus/pro/e/b$4;->a:Lcom/x/plus/pro/e/b;

    invoke-static {p0}, Lcom/x/plus/pro/e/b;->g(Lcom/x/plus/pro/e/b;)V

    return-void
.end method

.method public final b(Lcom/liulishuo/filedownloader/a;II)V
    .registers 4

    .line 484
    invoke-super {p0, p1, p2, p3}, Lcom/liulishuo/filedownloader/m;->b(Lcom/liulishuo/filedownloader/a;II)V

    .line 492
    iget-object p0, p0, Lcom/x/plus/pro/e/b$4;->a:Lcom/x/plus/pro/e/b;

    invoke-static {p0}, Lcom/x/plus/pro/e/b;->g(Lcom/x/plus/pro/e/b;)V

    return-void
.end method
