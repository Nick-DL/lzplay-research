.class public Lcom/x/plus/pro/base/BaseApp;
.super Landroid/app/Application;
.source "BaseApp.java"


# static fields
.field public static a:Z = false

.field private static final b:Ljava/lang/String; = "BaseApp"

.field private static c:I

.field private static e:Landroid/content/Context;

.field private static f:Lcom/x/plus/pro/base/BaseApp;


# instance fields
.field private d:Landroid/os/Messenger;

.field private g:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 172
    new-instance v0, Lcom/x/plus/pro/base/BaseApp$2;

    invoke-direct {v0, p0}, Lcom/x/plus/pro/base/BaseApp$2;-><init>(Lcom/x/plus/pro/base/BaseApp;)V

    iput-object v0, p0, Lcom/x/plus/pro/base/BaseApp;->g:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/x/plus/pro/base/BaseApp;Landroid/os/Messenger;)Landroid/os/Messenger;
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/x/plus/pro/base/BaseApp;->d:Landroid/os/Messenger;

    return-object p1
.end method

.method public static a()Lcom/x/plus/pro/base/BaseApp;
    .registers 1

    .line 40
    sget-object v0, Lcom/x/plus/pro/base/BaseApp;->f:Lcom/x/plus/pro/base/BaseApp;

    return-object v0
.end method

.method static synthetic a(Lcom/x/plus/pro/base/BaseApp;I)V
    .registers 4

    .line 4149
    iget-object v0, p0, Lcom/x/plus/pro/base/BaseApp;->d:Landroid/os/Messenger;

    if-eqz v0, :cond_1e

    .line 4150
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "activity.lifecycle.callbacks"

    .line 4151
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x0

    const/16 v1, 0x3e9

    .line 4152
    invoke-static {p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 4153
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4155
    :try_start_18
    iget-object p0, p0, Lcom/x/plus/pro/base/BaseApp;->d:Landroid/os/Messenger;

    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    :cond_1e
    return-void
.end method

.method public static c()Landroid/content/Context;
    .registers 1

    .line 185
    sget-object v0, Lcom/x/plus/pro/base/BaseApp;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d()I
    .registers 2

    .line 30
    sget v0, Lcom/x/plus/pro/base/BaseApp;->c:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/x/plus/pro/base/BaseApp;->c:I

    return v0
.end method

.method static synthetic e()I
    .registers 1

    .line 30
    sget v0, Lcom/x/plus/pro/base/BaseApp;->c:I

    return v0
.end method

.method static synthetic f()I
    .registers 2

    .line 30
    sget v0, Lcom/x/plus/pro/base/BaseApp;->c:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/x/plus/pro/base/BaseApp;->c:I

    return v0
.end method


# virtual methods
.method public final b()V
    .registers 7

    const-string v0, "alarm"

    .line 78
    invoke-virtual {p0, v0}, Lcom/x/plus/pro/base/BaseApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v3, 0x1b77400

    add-long/2addr v1, v3

    .line 81
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/x/plus/pro/update/UpdateBroadcast;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.x.plus.pro.UpdateBroadcast"

    .line 82
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    .line 83
    invoke-static {p0, v4, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz v0, :cond_29

    const/4 v3, 0x2

    .line 85
    invoke-virtual {v0, v3, v1, v2, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_29
    return-void
.end method

.method public onCreate()V
    .registers 6

    .line 45
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 46
    sput-object p0, Lcom/x/plus/pro/base/BaseApp;->f:Lcom/x/plus/pro/base/BaseApp;

    .line 47
    invoke-virtual {p0}, Lcom/x/plus/pro/base/BaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/x/plus/pro/base/BaseApp;->e:Landroid/content/Context;

    .line 1090
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/x/plus/pro/messenger/MessengerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1091
    iget-object v1, p0, Lcom/x/plus/pro/base/BaseApp;->g:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/x/plus/pro/base/BaseApp;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1106
    new-instance v0, Lcom/x/plus/pro/base/BaseApp$1;

    invoke-direct {v0, p0}, Lcom/x/plus/pro/base/BaseApp$1;-><init>(Lcom/x/plus/pro/base/BaseApp;)V

    invoke-virtual {p0, v0}, Lcom/x/plus/pro/base/BaseApp;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x0

    .line 2095
    sput-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    .line 2096
    invoke-static {p0}, Lcom/x/plus/pro/f/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/liulishuo/filedownloader/h/f;->b(Ljava/lang/String;)V

    .line 2097
    invoke-static {p0}, Lcom/liulishuo/filedownloader/s;->a(Landroid/app/Application;)Lcom/liulishuo/filedownloader/services/c$a;

    move-result-object p0

    new-instance v1, Lcom/liulishuo/filedownloader/a/c$b;

    new-instance v2, Lcom/liulishuo/filedownloader/a/c$a;

    invoke-direct {v2}, Lcom/liulishuo/filedownloader/a/c$a;-><init>()V

    const/16 v3, 0x3a98

    .line 2200
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/liulishuo/filedownloader/a/c$a;->c:Ljava/lang/Integer;

    .line 3183
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/liulishuo/filedownloader/a/c$a;->b:Ljava/lang/Integer;

    .line 2101
    invoke-direct {v1, v2}, Lcom/liulishuo/filedownloader/a/c$b;-><init>(Lcom/liulishuo/filedownloader/a/c$a;)V

    .line 3315
    iput-object v1, p0, Lcom/liulishuo/filedownloader/services/c$a;->d:Lcom/liulishuo/filedownloader/h/c$b;

    .line 51
    sput v0, Lcom/x/plus/pro/base/BaseApp;->c:I

    return-void
.end method

.method public onTerminate()V
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/x/plus/pro/base/BaseApp;->g:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/x/plus/pro/base/BaseApp;->unbindService(Landroid/content/ServiceConnection;)V

    .line 57
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

.method public onTrimMemory(I)V
    .registers 2

    .line 62
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    const/16 p0, 0x14

    if-ne p1, p0, :cond_a

    const/4 p0, 0x1

    .line 67
    sput-boolean p0, Lcom/x/plus/pro/base/BaseApp;->a:Z

    :cond_a
    return-void
.end method
