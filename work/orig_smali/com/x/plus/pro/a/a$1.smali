.class final Lcom/x/plus/pro/a/a$1;
.super Ljava/lang/Object;
.source "DeviceHelper.java"

# interfaces
.implements Lcom/x/plus/pro/update/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/plus/pro/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/x/plus/pro/a/a;


# direct methods
.method constructor <init>(Lcom/x/plus/pro/a/a;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/x/plus/pro/a/a$1;->a:Lcom/x/plus/pro/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/x/plus/pro/a/a$1;->a:Lcom/x/plus/pro/a/a;

    .line 1025
    iget-object v0, v0, Lcom/x/plus/pro/a/a;->a:Lcom/x/plus/pro/SplashActivity;

    if-nez v0, :cond_7

    return-void

    .line 49
    :cond_7
    iget-object v0, p0, Lcom/x/plus/pro/a/a$1;->a:Lcom/x/plus/pro/a/a;

    .line 2025
    iget-object v0, v0, Lcom/x/plus/pro/a/a;->a:Lcom/x/plus/pro/SplashActivity;

    .line 49
    new-instance v1, Lcom/x/plus/pro/a/a$1$1;

    invoke-direct {v1, p0}, Lcom/x/plus/pro/a/a$1$1;-><init>(Lcom/x/plus/pro/a/a$1;)V

    invoke-virtual {v0, v1}, Lcom/x/plus/pro/SplashActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .registers 5

    .line 59
    iget-object v0, p0, Lcom/x/plus/pro/a/a$1;->a:Lcom/x/plus/pro/a/a;

    .line 3025
    iget-object v0, v0, Lcom/x/plus/pro/a/a;->a:Lcom/x/plus/pro/SplashActivity;

    if-nez v0, :cond_7

    return-void

    .line 62
    :cond_7
    iget-object v0, p0, Lcom/x/plus/pro/a/a$1;->a:Lcom/x/plus/pro/a/a;

    .line 4025
    iget-object v0, v0, Lcom/x/plus/pro/a/a;->a:Lcom/x/plus/pro/SplashActivity;

    .line 62
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/x/plus/pro/a/a$1;->a:Lcom/x/plus/pro/a/a;

    .line 5025
    iget-object v2, v2, Lcom/x/plus/pro/a/a;->a:Lcom/x/plus/pro/SplashActivity;

    .line 62
    const-class v3, Lcom/x/plus/pro/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/x/plus/pro/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 63
    iget-object p0, p0, Lcom/x/plus/pro/a/a$1;->a:Lcom/x/plus/pro/a/a;

    .line 6025
    iget-object p0, p0, Lcom/x/plus/pro/a/a;->a:Lcom/x/plus/pro/SplashActivity;

    .line 63
    invoke-virtual {p0}, Lcom/x/plus/pro/SplashActivity;->finish()V

    return-void
.end method
