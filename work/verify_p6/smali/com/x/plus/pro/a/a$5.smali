.class final Lcom/x/plus/pro/a/a$5;
.super Ljava/lang/Object;
.source "DeviceHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/x/plus/pro/a/a$5;->a:Lcom/x/plus/pro/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 160
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 161
    iget-object p0, p0, Lcom/x/plus/pro/a/a$5;->a:Lcom/x/plus/pro/a/a;

    .line 1025
    iget-object p0, p0, Lcom/x/plus/pro/a/a;->a:Lcom/x/plus/pro/SplashActivity;

    .line 161
    invoke-virtual {p0}, Lcom/x/plus/pro/SplashActivity;->finish()V

    return-void
.end method
