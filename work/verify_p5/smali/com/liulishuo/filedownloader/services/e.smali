.class public final Lcom/liulishuo/filedownloader/services/e;
.super Lcom/liulishuo/filedownloader/f/b$a;
.source "FDServiceSharedHandler.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/services/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/services/e$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/liulishuo/filedownloader/services/g;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/liulishuo/filedownloader/services/FileDownloadService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Lcom/liulishuo/filedownloader/services/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/liulishuo/filedownloader/services/FileDownloadService;",
            ">;",
            "Lcom/liulishuo/filedownloader/services/g;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/f/b$a;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/liulishuo/filedownloader/services/e;->b:Ljava/lang/ref/WeakReference;

    .line 40
    iput-object p2, p0, Lcom/liulishuo/filedownloader/services/e;->a:Lcom/liulishuo/filedownloader/services/g;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/e;->a:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/services/g;->a()V

    return-void
.end method

.method public final a(ILandroid/app/Notification;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/e;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;

    invoke-virtual {p0, p1, p2}, Lcom/liulishuo/filedownloader/services/FileDownloadService;->startForeground(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/liulishuo/filedownloader/f/a;)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)V
    .locals 10

    move-object v0, p0

    .line 61
    iget-object v0, v0, Lcom/liulishuo/filedownloader/services/e;->a:Lcom/liulishuo/filedownloader/services/g;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/liulishuo/filedownloader/services/g;->a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/e;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/liulishuo/filedownloader/services/FileDownloadService;

    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/services/FileDownloadService;->stopForeground(Z)V

    :cond_0
    return-void
.end method

.method public final a(I)Z
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/e;->a:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/services/g;->a(I)Z

    move-result p0

    return p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/e;->a:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {p0, p1, p2}, Lcom/liulishuo/filedownloader/services/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final b(Lcom/liulishuo/filedownloader/f/a;)V
    .locals 0

    return-void
.end method

.method public final b()Z
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/e;->a:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/services/g;->b()Z

    move-result p0

    return p0
.end method

.method public final b(I)Z
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/e;->a:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/services/g;->e(I)Z

    move-result p0

    return p0
.end method

.method public final c(I)J
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/e;->a:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/services/g;->b(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final c()V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/e;->a:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/services/g;->c()V

    return-void
.end method

.method public final d(I)J
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/e;->a:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/services/g;->c(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final d()V
    .locals 1

    .line 2043
    invoke-static {}, Lcom/liulishuo/filedownloader/n$a;->a()Lcom/liulishuo/filedownloader/n;

    move-result-object v0

    .line 1048
    iget-object v0, v0, Lcom/liulishuo/filedownloader/n;->a:Lcom/liulishuo/filedownloader/v;

    instance-of v0, v0, Lcom/liulishuo/filedownloader/o;

    if-eqz v0, :cond_0

    .line 3043
    invoke-static {}, Lcom/liulishuo/filedownloader/n$a;->a()Lcom/liulishuo/filedownloader/n;

    move-result-object v0

    .line 1049
    iget-object v0, v0, Lcom/liulishuo/filedownloader/n;->a:Lcom/liulishuo/filedownloader/v;

    check-cast v0, Lcom/liulishuo/filedownloader/services/e$a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 128
    :goto_0
    invoke-interface {v0, p0}, Lcom/liulishuo/filedownloader/services/e$a;->a(Lcom/liulishuo/filedownloader/services/e;)V

    return-void
.end method

.method public final e(I)B
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/e;->a:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/services/g;->d(I)B

    move-result p0

    return p0
.end method

.method public final e()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final f(I)Z
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/e;->a:Lcom/liulishuo/filedownloader/services/g;

    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/services/g;->f(I)Z

    move-result p0

    return p0
.end method
