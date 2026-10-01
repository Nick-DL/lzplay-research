.class final Lcom/liulishuo/filedownloader/j$b;
.super Ljava/lang/Object;
.source "FileDownloadMessageStation.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .line 152
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/j$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 4

    .line 156
    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_d

    .line 157
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/liulishuo/filedownloader/u;

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/u;->b()V

    goto :goto_34

    .line 158
    :cond_d
    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_34

    .line 160
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    .line 1168
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liulishuo/filedownloader/u;

    .line 1169
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/u;->b()V

    goto :goto_1a

    .line 1172
    :cond_2a
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 161
    invoke-static {}, Lcom/liulishuo/filedownloader/j;->a()Lcom/liulishuo/filedownloader/j;

    move-result-object p0

    invoke-static {p0}, Lcom/liulishuo/filedownloader/j;->a(Lcom/liulishuo/filedownloader/j;)V

    :cond_34
    :goto_34
    return v0
.end method
