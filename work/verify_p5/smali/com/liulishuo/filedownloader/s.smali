.class public final Lcom/liulishuo/filedownloader/s;
.super Ljava/lang/Object;
.source "FileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/s$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final c:Ljava/lang/Object;


# instance fields
.field private b:Lcom/liulishuo/filedownloader/x;

.field private d:Lcom/liulishuo/filedownloader/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 732
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/liulishuo/filedownloader/s;->a:Ljava/lang/Object;

    .line 746
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/liulishuo/filedownloader/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/liulishuo/filedownloader/a;
    .locals 1

    .line 217
    new-instance v0, Lcom/liulishuo/filedownloader/c;

    invoke-direct {v0, p0}, Lcom/liulishuo/filedownloader/c;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a()Lcom/liulishuo/filedownloader/s;
    .locals 1

    .line 134
    invoke-static {}, Lcom/liulishuo/filedownloader/s$a;->a()Lcom/liulishuo/filedownloader/s;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Application;)Lcom/liulishuo/filedownloader/services/c$a;
    .locals 2

    .line 88
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 1047
    sput-object p0, Lcom/liulishuo/filedownloader/h/c;->a:Landroid/content/Context;

    .line 91
    new-instance p0, Lcom/liulishuo/filedownloader/services/c$a;

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/c$a;-><init>()V

    .line 1052
    invoke-static {}, Lcom/liulishuo/filedownloader/c/c$a;->a()Lcom/liulishuo/filedownloader/c/c;

    move-result-object v0

    .line 1056
    monitor-enter v0

    .line 1057
    :try_start_0
    new-instance v1, Lcom/liulishuo/filedownloader/services/c;

    invoke-direct {v1, p0}, Lcom/liulishuo/filedownloader/services/c;-><init>(Lcom/liulishuo/filedownloader/services/c$a;)V

    iput-object v1, v0, Lcom/liulishuo/filedownloader/c/c;->a:Lcom/liulishuo/filedownloader/services/c;

    const/4 v1, 0x0

    .line 1058
    iput-object v1, v0, Lcom/liulishuo/filedownloader/c/c;->b:Lcom/liulishuo/filedownloader/h/c$b;

    .line 1059
    iput-object v1, v0, Lcom/liulishuo/filedownloader/c/c;->c:Lcom/liulishuo/filedownloader/h/c$e;

    .line 1060
    iput-object v1, v0, Lcom/liulishuo/filedownloader/c/c;->d:Lcom/liulishuo/filedownloader/b/a;

    .line 1061
    iput-object v1, v0, Lcom/liulishuo/filedownloader/c/c;->e:Lcom/liulishuo/filedownloader/h/c$d;

    .line 1062
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static b()Z
    .locals 1

    .line 2043
    invoke-static {}, Lcom/liulishuo/filedownloader/n$a;->a()Lcom/liulishuo/filedownloader/n;

    move-result-object v0

    .line 543
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/n;->a()Z

    move-result v0

    return v0
.end method

.method public static c()V
    .locals 2

    .line 3043
    invoke-static {}, Lcom/liulishuo/filedownloader/n$a;->a()Lcom/liulishuo/filedownloader/n;

    move-result-object v0

    const/4 v1, 0x1

    .line 607
    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/n;->a(Z)V

    return-void
.end method


# virtual methods
.method final d()Lcom/liulishuo/filedownloader/x;
    .locals 2

    .line 736
    iget-object v0, p0, Lcom/liulishuo/filedownloader/s;->b:Lcom/liulishuo/filedownloader/x;

    if-nez v0, :cond_1

    .line 737
    sget-object v0, Lcom/liulishuo/filedownloader/s;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 738
    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/s;->b:Lcom/liulishuo/filedownloader/x;

    if-nez v1, :cond_0

    .line 739
    new-instance v1, Lcom/liulishuo/filedownloader/ad;

    invoke-direct {v1}, Lcom/liulishuo/filedownloader/ad;-><init>()V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/s;->b:Lcom/liulishuo/filedownloader/x;

    .line 741
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 743
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/liulishuo/filedownloader/s;->b:Lcom/liulishuo/filedownloader/x;

    return-object p0
.end method

.method final e()Lcom/liulishuo/filedownloader/w;
    .locals 4

    .line 750
    iget-object v0, p0, Lcom/liulishuo/filedownloader/s;->d:Lcom/liulishuo/filedownloader/w;

    if-nez v0, :cond_1

    .line 751
    sget-object v0, Lcom/liulishuo/filedownloader/s;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 752
    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/s;->d:Lcom/liulishuo/filedownloader/w;

    if-nez v1, :cond_0

    .line 753
    new-instance v1, Lcom/liulishuo/filedownloader/aa;

    invoke-direct {v1}, Lcom/liulishuo/filedownloader/aa;-><init>()V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/s;->d:Lcom/liulishuo/filedownloader/w;

    .line 754
    iget-object v1, p0, Lcom/liulishuo/filedownloader/s;->d:Lcom/liulishuo/filedownloader/w;

    check-cast v1, Lcom/liulishuo/filedownloader/e;

    .line 4035
    invoke-static {}, Lcom/liulishuo/filedownloader/f$a;->a()Lcom/liulishuo/filedownloader/f;

    move-result-object v2

    const-string v3, "event.service.connect.changed"

    .line 3554
    invoke-virtual {v2, v3, v1}, Lcom/liulishuo/filedownloader/f;->a(Ljava/lang/String;Lcom/liulishuo/filedownloader/d/d;)Z

    .line 756
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 759
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/liulishuo/filedownloader/s;->d:Lcom/liulishuo/filedownloader/w;

    return-object p0
.end method
