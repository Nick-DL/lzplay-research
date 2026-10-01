.class public final Lcom/x/plus/pro/SplashActivity$2;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/plus/pro/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/x/plus/pro/SplashActivity;


# direct methods
.method public constructor <init>(Lcom/x/plus/pro/SplashActivity;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/x/plus/pro/SplashActivity$2;->a:Lcom/x/plus/pro/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 64
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 65
    iget-object p1, p0, Lcom/x/plus/pro/SplashActivity$2;->a:Lcom/x/plus/pro/SplashActivity;

    iget-object p0, p0, Lcom/x/plus/pro/SplashActivity$2;->a:Lcom/x/plus/pro/SplashActivity;

    .line 1056
    iget-object p0, p0, Lcom/x/plus/pro/SplashActivity;->k:Lcom/x/plus/pro/a/a;

    .line 65
    iget-object p0, p0, Lcom/x/plus/pro/a/a;->d:Lcom/x/plus/pro/update/b;

    invoke-static {p1, p0}, Lcom/x/plus/pro/update/e;->a(Landroid/content/Context;Lcom/x/plus/pro/update/b;)V

    return-void
.end method
