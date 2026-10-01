.class final Lcom/liulishuo/filedownloader/p;
.super Lcom/liulishuo/filedownloader/services/a;
.source "FileDownloadServiceUIGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liulishuo/filedownloader/services/a<",
        "Lcom/liulishuo/filedownloader/p$a;",
        "Lcom/liulishuo/filedownloader/f/b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .line 52
    const-class v0, Lcom/liulishuo/filedownloader/services/FileDownloadService$SeparateProcessService;

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/services/a;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 2

    .line 5062
    invoke-static {p1}, Lcom/liulishuo/filedownloader/f/b$a;->a(Landroid/os/IBinder;)Lcom/liulishuo/filedownloader/f/b;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a(Landroid/os/IInterface;Landroid/os/Binder;)V
    .registers 3

    .line 47
    check-cast p1, Lcom/liulishuo/filedownloader/f/b;

    check-cast p2, Lcom/liulishuo/filedownloader/p$a;

    .line 4069
    invoke-interface {p1, p2}, Lcom/liulishuo/filedownloader/f/b;->a(Lcom/liulishuo/filedownloader/f/a;)V

    return-void
.end method

.method public final a(Z)V
    .registers 4

    .line 243
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/p;->a()Z

    move-result v0

    if-nez v0, :cond_a

    .line 244
    invoke-static {p1}, Lcom/liulishuo/filedownloader/h/a;->a(Z)V

    return-void

    :cond_a
    const/4 v0, 0x0

    .line 4059
    :try_start_b
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/a;->a:Landroid/os/IInterface;

    .line 249
    check-cast v1, Lcom/liulishuo/filedownloader/f/b;

    invoke-interface {v1, p1}, Lcom/liulishuo/filedownloader/f/b;->a(Z)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_17
    .catchall {:try_start_b .. :try_end_12} :catchall_15

    .line 253
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/p;->b:Z

    return-void

    :catchall_15
    move-exception p1

    goto :goto_1e

    :catch_17
    move-exception p1

    .line 251
    :try_start_18
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_15

    .line 253
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/p;->b:Z

    return-void

    :goto_1e
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/p;->b:Z

    throw p1
.end method

.method public final a(I)Z
    .registers 3

    .line 119
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/p;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 120
    invoke-static {p1}, Lcom/liulishuo/filedownloader/h/a;->a(I)Z

    move-result p0

    return p0

    .line 2059
    :cond_b
    :try_start_b
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/a;->a:Landroid/os/IInterface;

    .line 124
    check-cast p0, Lcom/liulishuo/filedownloader/f/b;

    invoke-interface {p0, p1}, Lcom/liulishuo/filedownloader/f/b;->a(I)Z

    move-result p0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_13} :catch_14

    return p0

    :catch_14
    move-exception p0

    .line 126
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)Z
    .registers 21

    .line 101
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/p;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 102
    invoke-static {p1, p2, p3}, Lcom/liulishuo/filedownloader/h/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_b
    move-object v0, p0

    .line 1059
    :try_start_c
    iget-object v0, v0, Lcom/liulishuo/filedownloader/services/a;->a:Landroid/os/IInterface;

    .line 106
    move-object v1, v0

    check-cast v1, Lcom/liulishuo/filedownloader/f/b;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lcom/liulishuo/filedownloader/f/b;->a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_22} :catch_24

    const/4 v0, 0x1

    return v0

    :catch_24
    move-exception v0

    .line 110
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public final b(I)B
    .registers 3

    .line 181
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/p;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 182
    invoke-static {p1}, Lcom/liulishuo/filedownloader/h/a;->b(I)B

    move-result p0

    return p0

    :cond_b
    const/4 v0, 0x0

    .line 3059
    :try_start_c
    iget-object p0, p0, Lcom/liulishuo/filedownloader/services/a;->a:Landroid/os/IInterface;

    .line 187
    check-cast p0, Lcom/liulishuo/filedownloader/f/b;

    invoke-interface {p0, p1}, Lcom/liulishuo/filedownloader/f/b;->e(I)B

    move-result p0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15

    goto :goto_1a

    :catch_15
    move-exception p0

    .line 189
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    move p0, v0

    :goto_1a
    return p0
.end method

.method public final synthetic c()Landroid/os/Binder;
    .registers 1

    .line 6057
    new-instance p0, Lcom/liulishuo/filedownloader/p$a;

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/p$a;-><init>()V

    return-object p0
.end method
