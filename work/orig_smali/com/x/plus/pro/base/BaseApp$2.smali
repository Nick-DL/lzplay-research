.class final Lcom/x/plus/pro/base/BaseApp$2;
.super Ljava/lang/Object;
.source "BaseApp.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/plus/pro/base/BaseApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/x/plus/pro/base/BaseApp;


# direct methods
.method constructor <init>(Lcom/x/plus/pro/base/BaseApp;)V
    .registers 2

    .line 172
    iput-object p1, p0, Lcom/x/plus/pro/base/BaseApp$2;->a:Lcom/x/plus/pro/base/BaseApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 175
    iget-object p0, p0, Lcom/x/plus/pro/base/BaseApp$2;->a:Lcom/x/plus/pro/base/BaseApp;

    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p0, p1}, Lcom/x/plus/pro/base/BaseApp;->a(Lcom/x/plus/pro/base/BaseApp;Landroid/os/Messenger;)Landroid/os/Messenger;

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
