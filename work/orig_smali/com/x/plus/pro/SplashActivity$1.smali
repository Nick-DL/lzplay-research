.class public final Lcom/x/plus/pro/SplashActivity$1;
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

    .line 67
    iput-object p1, p0, Lcom/x/plus/pro/SplashActivity$1;->a:Lcom/x/plus/pro/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 70
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 71
    iget-object p0, p0, Lcom/x/plus/pro/SplashActivity$1;->a:Lcom/x/plus/pro/SplashActivity;

    invoke-virtual {p0}, Lcom/x/plus/pro/SplashActivity;->finish()V

    return-void
.end method
