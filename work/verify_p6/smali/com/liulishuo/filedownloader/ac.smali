.class public Lcom/liulishuo/filedownloader/ac;
.super Ljava/lang/Object;
.source "PauseAllMarker.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final a:Ljava/lang/Long;

.field private static d:Ljava/io/File;


# instance fields
.field public b:Landroid/os/HandlerThread;

.field public c:Landroid/os/Handler;

.field private final e:Lcom/liulishuo/filedownloader/f/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 36
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/liulishuo/filedownloader/ac;->a:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Lcom/liulishuo/filedownloader/f/b;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/liulishuo/filedownloader/ac;->e:Lcom/liulishuo/filedownloader/f/b;

    return-void
.end method

.method public static a()V
    .locals 4

    .line 78
    invoke-static {}, Lcom/liulishuo/filedownloader/ac;->b()Ljava/io/File;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const-class v1, Lcom/liulishuo/filedownloader/ac;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete marker file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static b()Ljava/io/File;
    .locals 3

    .line 65
    sget-object v0, Lcom/liulishuo/filedownloader/ac;->d:Ljava/io/File;

    if-nez v0, :cond_0

    .line 1051
    sget-object v0, Lcom/liulishuo/filedownloader/h/c;->a:Landroid/content/Context;

    .line 67
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".filedownloader_pause_all_marker.b"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/liulishuo/filedownloader/ac;->d:Ljava/io/File;

    .line 69
    :cond_0
    sget-object v0, Lcom/liulishuo/filedownloader/ac;->d:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1073
    invoke-static {}, Lcom/liulishuo/filedownloader/ac;->b()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 101
    :try_start_0
    iget-object p1, p0, Lcom/liulishuo/filedownloader/ac;->e:Lcom/liulishuo/filedownloader/f/b;

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/f/b;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :goto_0
    invoke-static {}, Lcom/liulishuo/filedownloader/ac;->a()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "pause all failed"

    .line 103
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v1, v2}, Lcom/liulishuo/filedownloader/h/d;->a(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 105
    :goto_1
    invoke-static {}, Lcom/liulishuo/filedownloader/ac;->a()V

    throw p0

    .line 108
    :cond_0
    :goto_2
    iget-object p0, p0, Lcom/liulishuo/filedownloader/ac;->c:Landroid/os/Handler;

    sget-object p1, Lcom/liulishuo/filedownloader/ac;->a:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 p0, 0x1

    return p0
.end method
