.class final Lcom/x/plus/pro/base/BaseApp$1;
.super Ljava/lang/Object;
.source "BaseApp.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


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

    .line 106
    iput-object p1, p0, Lcom/x/plus/pro/base/BaseApp$1;->a:Lcom/x/plus/pro/base/BaseApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 109
    invoke-static {}, Lcom/x/plus/pro/base/BaseApp;->d()I

    .line 110
    iget-object p0, p0, Lcom/x/plus/pro/base/BaseApp$1;->a:Lcom/x/plus/pro/base/BaseApp;

    invoke-static {}, Lcom/x/plus/pro/base/BaseApp;->e()I

    move-result p1

    invoke-static {p0, p1}, Lcom/x/plus/pro/base/BaseApp;->a(Lcom/x/plus/pro/base/BaseApp;I)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    .line 139
    invoke-static {}, Lcom/x/plus/pro/base/BaseApp;->f()I

    .line 140
    iget-object p0, p0, Lcom/x/plus/pro/base/BaseApp$1;->a:Lcom/x/plus/pro/base/BaseApp;

    invoke-static {}, Lcom/x/plus/pro/base/BaseApp;->e()I

    move-result p1

    invoke-static {p0, p1}, Lcom/x/plus/pro/base/BaseApp;->a(Lcom/x/plus/pro/base/BaseApp;I)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    const/4 p0, 0x0

    .line 120
    sput-boolean p0, Lcom/x/plus/pro/base/BaseApp;->a:Z

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
