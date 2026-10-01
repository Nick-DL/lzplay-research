.class public final Lcom/liulishuo/filedownloader/o;
.super Ljava/lang/Object;
.source "FileDownloadServiceSharedTransmit.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/services/e$a;
.implements Lcom/liulishuo/filedownloader/v;


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Z

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/liulishuo/filedownloader/services/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    const-class v0, Lcom/liulishuo/filedownloader/services/FileDownloadService$SharedMainProcessService;

    sput-object v0, Lcom/liulishuo/filedownloader/o;->a:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/o;->b:Z

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/o;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 5

    .line 1150
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/liulishuo/filedownloader/o;->a:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1151
    invoke-static {p1}, Lcom/liulishuo/filedownloader/h/f;->c(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/o;->b:Z

    const-string v1, "is_foreground"

    .line 1152
    iget-boolean v2, p0, Lcom/liulishuo/filedownloader/o;->b:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1153
    iget-boolean v1, p0, Lcom/liulishuo/filedownloader/o;->b:Z

    if-eqz v1, :cond_2e

    .line 1154
    sget-boolean v1, Lcom/liulishuo/filedownloader/h/d;->a:Z

    if-eqz v1, :cond_24

    const-string v1, "start foreground service"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/h/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1155
    :cond_24
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p0, v1, :cond_31

    invoke-virtual {p1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    .line 1157
    :cond_2e
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_31
    return-void
.end method

.method public final a(Lcom/liulishuo/filedownloader/services/e;)V
    .registers 4

    .line 225
    iput-object p1, p0, Lcom/liulishuo/filedownloader/o;->d:Lcom/liulishuo/filedownloader/services/e;

    .line 226
    iget-object p1, p0, Lcom/liulishuo/filedownloader/o;->c:Ljava/util/ArrayList;

    .line 227
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 228
    iget-object p0, p0, Lcom/liulishuo/filedownloader/o;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 229
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    .line 230
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_13

    .line 2035
    :cond_23
    invoke-static {}, Lcom/liulishuo/filedownloader/f$a;->a()Lcom/liulishuo/filedownloader/f;

    move-result-object p0

    .line 233
    new-instance p1, Lcom/liulishuo/filedownloader/d/b;

    sget v0, Lcom/liulishuo/filedownloader/d/b$a;->connected$bef08b2:I

    sget-object v1, Lcom/liulishuo/filedownloader/o;->a:Ljava/lang/Class;

    invoke-direct {p1, v0, v1}, Lcom/liulishuo/filedownloader/d/b;-><init>(ILjava/lang/Class;)V

    .line 234
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/f;->b(Lcom/liulishuo/filedownloader/d/c;)V

    return-void
.end method

.method public final a(Z)V
    .registers 3

    .line 180
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/o;->a()Z

    move-result v0

    if-nez v0, :cond_a

    .line 181
    invoke-static {p1}, Lcom/liulishuo/filedownloader/h/a;->a(Z)V

    return-void

    .line 185
    :cond_a
    iget-object v0, p0, Lcom/liulishuo/filedownloader/o;->d:Lcom/liulishuo/filedownloader/services/e;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/e;->a(Z)V

    const/4 p1, 0x0

    .line 186
    iput-boolean p1, p0, Lcom/liulishuo/filedownloader/o;->b:Z

    return-void
.end method

.method public final a()Z
    .registers 1

    .line 133
    iget-object p0, p0, Lcom/liulishuo/filedownloader/o;->d:Lcom/liulishuo/filedownloader/services/e;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final a(I)Z
    .registers 3

    .line 69
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/o;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 70
    invoke-static {p1}, Lcom/liulishuo/filedownloader/h/a;->a(I)Z

    move-result p0

    return p0

    .line 73
    :cond_b
    iget-object p0, p0, Lcom/liulishuo/filedownloader/o;->d:Lcom/liulishuo/filedownloader/services/e;

    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/services/e;->a(I)Z

    move-result p0

    return p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)Z
    .registers 20

    .line 57
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/o;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 58
    invoke-static {p1, p2, p3}, Lcom/liulishuo/filedownloader/h/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_b
    move-object v0, p0

    .line 61
    iget-object v0, v0, Lcom/liulishuo/filedownloader/o;->d:Lcom/liulishuo/filedownloader/services/e;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/liulishuo/filedownloader/services/e;->a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public final b(I)B
    .registers 3

    .line 105
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/o;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 106
    invoke-static {p1}, Lcom/liulishuo/filedownloader/h/a;->b(I)B

    move-result p0

    return p0

    .line 109
    :cond_b
    iget-object p0, p0, Lcom/liulishuo/filedownloader/o;->d:Lcom/liulishuo/filedownloader/services/e;

    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/services/e;->e(I)B

    move-result p0

    return p0
.end method

.method public final b()Z
    .registers 1

    .line 218
    iget-boolean p0, p0, Lcom/liulishuo/filedownloader/o;->b:Z

    return p0
.end method
