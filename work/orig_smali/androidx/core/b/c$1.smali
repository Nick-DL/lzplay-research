.class final Landroidx/core/b/c$1;
.super Ljava/lang/Object;
.source "SelfDestructiveThread.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/b/c;


# direct methods
.method constructor <init>(Landroidx/core/b/c;)V
    .registers 2

    .line 58
    iput-object p1, p0, Landroidx/core/b/c$1;->a:Landroidx/core/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 7

    .line 61
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_4a

    return v1

    .line 63
    :pswitch_7
    iget-object p0, p0, Landroidx/core/b/c$1;->a:Landroidx/core/b/c;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    .line 1214
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1215
    iget-object p1, p0, Landroidx/core/b/c;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 1216
    :try_start_13
    iget-object v0, p0, Landroidx/core/b/c;->c:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1217
    iget-object v0, p0, Landroidx/core/b/c;->c:Landroid/os/Handler;

    iget-object v3, p0, Landroidx/core/b/c;->c:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget p0, p0, Landroidx/core/b/c;->d:I

    int-to-long v3, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1219
    monitor-exit p1

    return v1

    :catchall_29
    move-exception p0

    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_13 .. :try_end_2b} :catchall_29

    throw p0

    .line 66
    :pswitch_2c
    iget-object p0, p0, Landroidx/core/b/c$1;->a:Landroidx/core/b/c;

    .line 1223
    iget-object p1, p0, Landroidx/core/b/c;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 1224
    :try_start_31
    iget-object v0, p0, Landroidx/core/b/c;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1227
    monitor-exit p1

    goto :goto_46

    .line 1229
    :cond_3b
    iget-object v0, p0, Landroidx/core/b/c;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    .line 1230
    iput-object v0, p0, Landroidx/core/b/c;->b:Landroid/os/HandlerThread;

    .line 1231
    iput-object v0, p0, Landroidx/core/b/c;->c:Landroid/os/Handler;

    .line 1232
    monitor-exit p1

    :goto_46
    return v1

    :catchall_47
    move-exception p0

    monitor-exit p1
    :try_end_49
    .catchall {:try_start_31 .. :try_end_49} :catchall_47

    throw p0

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_7
    .end packed-switch
.end method
