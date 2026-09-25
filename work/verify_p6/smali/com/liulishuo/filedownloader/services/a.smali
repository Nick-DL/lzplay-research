.class public abstract Lcom/liulishuo/filedownloader/services/a;
.super Ljava/lang/Object;
.source "BaseFileServiceUIGuard.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/liulishuo/filedownloader/v;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CA",
        "LLBACK:Landroid/os/Binder;",
        "INTERFACE::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/content/ServiceConnection;",
        "Lcom/liulishuo/filedownloader/v;"
    }
.end annotation


# instance fields
.field protected volatile a:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TINTERFACE;"
        }
    .end annotation
.end field

.field protected b:Z

.field private final c:Landroid/os/Binder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCA",
            "LLBACK;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/services/a;->b:Z

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/a;->e:Ljava/util/HashMap;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/a;->f:Ljava/util/List;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/a;->g:Ljava/util/ArrayList;

    .line 63
    iput-object p1, p0, Lcom/liulishuo/filedownloader/services/a;->d:Ljava/lang/Class;

    .line 64
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/services/a;->c()Landroid/os/Binder;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/filedownloader/services/a;->c:Landroid/os/Binder;

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TINTERFACE;"
        }
    .end annotation
.end method

.method public final a(Landroid/content/Context;)V
    .locals 5

    .line 2134
    invoke-static {p1}, Lcom/liulishuo/filedownloader/h/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2144
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, "bindStartByContext %s"

    .line 2145
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p0, v0, v3}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2148
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/liulishuo/filedownloader/services/a;->d:Ljava/lang/Class;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2155
    iget-object v3, p0, Lcom/liulishuo/filedownloader/services/a;->f:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2157
    iget-object v3, p0, Lcom/liulishuo/filedownloader/services/a;->f:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2160
    :cond_1
    invoke-static {p1}, Lcom/liulishuo/filedownloader/h/f;->c(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/liulishuo/filedownloader/services/a;->b:Z

    const-string v3, "is_foreground"

    .line 2161
    iget-boolean v4, p0, Lcom/liulishuo/filedownloader/services/a;->b:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2162
    invoke-virtual {p1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2163
    iget-boolean v2, p0, Lcom/liulishuo/filedownloader/services/a;->b:Z

    if-eqz v2, :cond_3

    .line 2164
    sget-boolean v2, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v2, :cond_2

    const-string v2, "start foreground service"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2165
    :cond_2
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p0, v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    .line 2167
    :cond_3
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_4
    return-void

    .line 2135
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Fatal-Exception: You can\'t bind the FileDownloadService in :filedownloader process.\n It\'s the invalid operation and is likely to cause unexpected problems.\n Maybe you want to use non-separate process mode for FileDownloader, More detail about non-separate mode, please move to wiki manually: https://github.com/lingochamp/FileDownloader/wiki/filedownloader.properties"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected abstract a(Landroid/os/IInterface;Landroid/os/Binder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TINTERFACE;TCA",
            "LLBACK;",
            ")V"
        }
    .end annotation
.end method

.method public final a()Z
    .locals 0

    .line 3059
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/a;->a:Landroid/os/IInterface;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b()Z
    .locals 0

    .line 195
    iget-boolean p0, p0, Lcom/liulishuo/filedownloader/services/a;->b:Z

    return p0
.end method

.method protected abstract c()Landroid/os/Binder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCA",
            "LLBACK;"
        }
    .end annotation
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 71
    invoke-virtual {p0, p2}, Lcom/liulishuo/filedownloader/services/a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p2

    iput-object p2, p0, Lcom/liulishuo/filedownloader/services/a;->a:Landroid/os/IInterface;

    .line 73
    sget-boolean p2, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz p2, :cond_0

    const-string p2, "onServiceConnected %s %s"

    const/4 v0, 0x2

    .line 74
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/a;->a:Landroid/os/IInterface;

    aput-object v1, v0, p1

    invoke-static {p0, p2, v0}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/liulishuo/filedownloader/services/a;->a:Landroid/os/IInterface;

    iget-object p2, p0, Lcom/liulishuo/filedownloader/services/a;->c:Landroid/os/Binder;

    invoke-virtual {p0, p1, p2}, Lcom/liulishuo/filedownloader/services/a;->a(Landroid/os/IInterface;Landroid/os/Binder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 80
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 83
    :goto_0
    iget-object p1, p0, Lcom/liulishuo/filedownloader/services/a;->g:Ljava/util/ArrayList;

    .line 84
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 85
    iget-object p2, p0, Lcom/liulishuo/filedownloader/services/a;->g:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 86
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    .line 87
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 1035
    :cond_1
    invoke-static {}, Lcom/liulishuo/filedownloader/f$a;->a()Lcom/liulishuo/filedownloader/f;

    move-result-object p1

    .line 90
    new-instance p2, Lcom/liulishuo/filedownloader/d/b;

    sget v0, Lcom/liulishuo/filedownloader/d/b$a;->connected$bef08b2:I

    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/a;->d:Ljava/lang/Class;

    invoke-direct {p2, v0, p0}, Lcom/liulishuo/filedownloader/d/b;-><init>(ILjava/lang/Class;)V

    .line 91
    invoke-virtual {p1, p2}, Lcom/liulishuo/filedownloader/f;->b(Lcom/liulishuo/filedownloader/d/c;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .line 98
    sget-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "onServiceDisconnected %s %s"

    const/4 v3, 0x2

    .line 99
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    iget-object p1, p0, Lcom/liulishuo/filedownloader/services/a;->a:Landroid/os/IInterface;

    aput-object p1, v3, v1

    invoke-static {p0, v0, v3}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1112
    :cond_0
    sget-boolean p1, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz p1, :cond_1

    const-string p1, "release connect resources %s"

    .line 1113
    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/a;->a:Landroid/os/IInterface;

    aput-object v1, v0, v2

    invoke-static {p0, p1, v0}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 p1, 0x0

    .line 1115
    iput-object p1, p0, Lcom/liulishuo/filedownloader/services/a;->a:Landroid/os/IInterface;

    .line 2035
    invoke-static {}, Lcom/liulishuo/filedownloader/f$a;->a()Lcom/liulishuo/filedownloader/f;

    move-result-object p1

    .line 1117
    new-instance v0, Lcom/liulishuo/filedownloader/d/b;

    sget v1, Lcom/liulishuo/filedownloader/d/b$a;->lost$bef08b2:I

    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/a;->d:Ljava/lang/Class;

    invoke-direct {v0, v1, p0}, Lcom/liulishuo/filedownloader/d/b;-><init>(ILjava/lang/Class;)V

    .line 1118
    invoke-virtual {p1, v0}, Lcom/liulishuo/filedownloader/f;->b(Lcom/liulishuo/filedownloader/d/c;)V

    return-void
.end method
