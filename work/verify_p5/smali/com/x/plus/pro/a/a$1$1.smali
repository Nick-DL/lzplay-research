.class final Lcom/x/plus/pro/a/a$1$1;
.super Ljava/lang/Object;
.source "DeviceHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/x/plus/pro/a/a$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/x/plus/pro/a/a$1;


# direct methods
.method constructor <init>(Lcom/x/plus/pro/a/a$1;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/x/plus/pro/a/a$1$1;->a:Lcom/x/plus/pro/a/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 52
    iget-object p0, p0, Lcom/x/plus/pro/a/a$1$1;->a:Lcom/x/plus/pro/a/a$1;

    iget-object p0, p0, Lcom/x/plus/pro/a/a$1;->a:Lcom/x/plus/pro/a/a;

    .line 1025
    iget-object p0, p0, Lcom/x/plus/pro/a/a;->a:Lcom/x/plus/pro/SplashActivity;

    .line 1060
    new-instance v0, Lcom/x/plus/pro/view/a$a;

    invoke-direct {v0, p0}, Lcom/x/plus/pro/view/a$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c003c

    .line 1061
    invoke-virtual {v0, v1}, Lcom/x/plus/pro/view/a$a;->a(I)Lcom/x/plus/pro/view/a$a;

    move-result-object v1

    new-instance v2, Lcom/x/plus/pro/SplashActivity$2;

    invoke-direct {v2, p0}, Lcom/x/plus/pro/SplashActivity$2;-><init>(Lcom/x/plus/pro/SplashActivity;)V

    const v3, 0x7f0c0040

    .line 1062
    invoke-virtual {v1, v3, v2}, Lcom/x/plus/pro/view/a$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/x/plus/pro/view/a$a;

    move-result-object v1

    new-instance v2, Lcom/x/plus/pro/SplashActivity$1;

    invoke-direct {v2, p0}, Lcom/x/plus/pro/SplashActivity$1;-><init>(Lcom/x/plus/pro/SplashActivity;)V

    const p0, 0x7f0c001e

    .line 1067
    invoke-virtual {v1, p0, v2}, Lcom/x/plus/pro/view/a$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/x/plus/pro/view/a$a;

    .line 1074
    invoke-virtual {v0}, Lcom/x/plus/pro/view/a$a;->a()Lcom/x/plus/pro/view/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/x/plus/pro/view/a;->show()V

    return-void
.end method
