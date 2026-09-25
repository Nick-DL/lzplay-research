.class public Lcom/liulishuo/filedownloader/services/FileDownloadService;
.super Landroid/app/Service;
.source "FileDownloadService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/services/FileDownloadService$SeparateProcessService;,
        Lcom/liulishuo/filedownloader/services/FileDownloadService$SharedMainProcessService;
    }
.end annotation


# instance fields
.field private a:Lcom/liulishuo/filedownloader/services/j;

.field private b:Lcom/liulishuo/filedownloader/ac;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->a:Lcom/liulishuo/filedownloader/services/j;

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/services/j;->e()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    .line 54
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1047
    sput-object p0, Lcom/liulishuo/filedownloader/h/c;->a:Landroid/content/Context;

    .line 59
    :try_start_0
    invoke-static {}, Lcom/liulishuo/filedownloader/h/e;->a()Lcom/liulishuo/filedownloader/h/e;

    move-result-object v0

    iget v0, v0, Lcom/liulishuo/filedownloader/h/e;->a:I

    .line 58
    invoke-static {v0}, Lcom/liulishuo/filedownloader/h/f;->a(I)V

    .line 61
    invoke-static {}, Lcom/liulishuo/filedownloader/h/e;->a()Lcom/liulishuo/filedownloader/h/e;

    move-result-object v0

    iget-wide v0, v0, Lcom/liulishuo/filedownloader/h/e;->b:J

    .line 60
    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/h/f;->a(J)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 66
    :goto_0
    new-instance v0, Lcom/liulishuo/filedownloader/services/g;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/services/g;-><init>()V

    .line 68
    invoke-static {}, Lcom/liulishuo/filedownloader/h/e;->a()Lcom/liulishuo/filedownloader/h/e;

    move-result-object v1

    iget-boolean v1, v1, Lcom/liulishuo/filedownloader/h/e;->d:Z

    if-eqz v1, :cond_0

    .line 69
    new-instance v1, Lcom/liulishuo/filedownloader/services/e;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v0}, Lcom/liulishuo/filedownloader/services/e;-><init>(Ljava/lang/ref/WeakReference;Lcom/liulishuo/filedownloader/services/g;)V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->a:Lcom/liulishuo/filedownloader/services/j;

    goto :goto_1

    .line 71
    :cond_0
    new-instance v1, Lcom/liulishuo/filedownloader/services/d;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v0}, Lcom/liulishuo/filedownloader/services/d;-><init>(Ljava/lang/ref/WeakReference;Lcom/liulishuo/filedownloader/services/g;)V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->a:Lcom/liulishuo/filedownloader/services/j;

    .line 74
    :goto_1
    invoke-static {}, Lcom/liulishuo/filedownloader/ac;->a()V

    .line 75
    new-instance v0, Lcom/liulishuo/filedownloader/ac;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->a:Lcom/liulishuo/filedownloader/services/j;

    check-cast v1, Lcom/liulishuo/filedownloader/f/b;

    invoke-direct {v0, v1}, Lcom/liulishuo/filedownloader/ac;-><init>(Lcom/liulishuo/filedownloader/f/b;)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->b:Lcom/liulishuo/filedownloader/ac;

    .line 76
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->b:Lcom/liulishuo/filedownloader/ac;

    .line 1085
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PauseAllChecker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/ac;->b:Landroid/os/HandlerThread;

    .line 1086
    iget-object v0, p0, Lcom/liulishuo/filedownloader/ac;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1087
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/ac;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/ac;->c:Landroid/os/Handler;

    .line 1088
    iget-object p0, p0, Lcom/liulishuo/filedownloader/ac;->c:Landroid/os/Handler;

    const/4 v0, 0x0

    sget-object v1, Lcom/liulishuo/filedownloader/ac;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->b:Lcom/liulishuo/filedownloader/ac;

    .line 6092
    iget-object v1, v0, Lcom/liulishuo/filedownloader/ac;->c:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 6093
    iget-object v0, v0, Lcom/liulishuo/filedownloader/ac;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x1

    .line 114
    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/services/FileDownloadService;->stopForeground(Z)V

    .line 115
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .line 81
    iget-object p2, p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;->a:Lcom/liulishuo/filedownloader/services/j;

    invoke-interface {p2}, Lcom/liulishuo/filedownloader/services/j;->d()V

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    const-string p3, "is_foreground"

    const/4 v0, 0x0

    .line 2088
    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3052
    invoke-static {}, Lcom/liulishuo/filedownloader/c/c$a;->a()Lcom/liulishuo/filedownloader/c/c;

    move-result-object p1

    .line 2091
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/c/c;->c()Lcom/liulishuo/filedownloader/services/i;

    move-result-object p1

    .line 3064
    iget-boolean p3, p1, Lcom/liulishuo/filedownloader/services/i;->e:Z

    if-eqz p3, :cond_0

    .line 2092
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p3, v1, :cond_0

    .line 2094
    new-instance p3, Landroid/app/NotificationChannel;

    .line 4046
    iget-object v1, p1, Lcom/liulishuo/filedownloader/services/i;->b:Ljava/lang/String;

    .line 4050
    iget-object v2, p1, Lcom/liulishuo/filedownloader/services/i;->c:Ljava/lang/String;

    const/4 v3, 0x2

    .line 2096
    invoke-direct {p3, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v1, "notification"

    .line 2100
    invoke-virtual {p0, v1}, Lcom/liulishuo/filedownloader/services/FileDownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    if-eqz v1, :cond_3

    .line 2102
    invoke-virtual {v1, p3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 5042
    :cond_0
    iget p3, p1, Lcom/liulishuo/filedownloader/services/i;->a:I

    .line 5054
    iget-object v1, p1, Lcom/liulishuo/filedownloader/services/i;->d:Landroid/app/Notification;

    if-nez v1, :cond_2

    .line 5055
    sget-boolean v1, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "build default notification"

    .line 5056
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5088
    :cond_1
    sget v1, Lcom/liulishuo/filedownloader/R$string;->default_filedownloader_notification_title:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5089
    sget v2, Lcom/liulishuo/filedownloader/R$string;->default_filedownloader_notification_content:I

    .line 5090
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5091
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p1, Lcom/liulishuo/filedownloader/services/i;->b:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 5092
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x1080002

    .line 5093
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 5094
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 5058
    iput-object v1, p1, Lcom/liulishuo/filedownloader/services/i;->d:Landroid/app/Notification;

    .line 5060
    :cond_2
    iget-object v1, p1, Lcom/liulishuo/filedownloader/services/i;->d:Landroid/app/Notification;

    .line 2104
    invoke-virtual {p0, p3, v1}, Lcom/liulishuo/filedownloader/services/FileDownloadService;->startForeground(ILandroid/app/Notification;)V

    .line 2105
    sget-boolean p3, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz p3, :cond_3

    const-string p3, "run service foreground with config: %s"

    .line 2106
    new-array v1, p2, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {p0, p3, v1}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return p2
.end method
