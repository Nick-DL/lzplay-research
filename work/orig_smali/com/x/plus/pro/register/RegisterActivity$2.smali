.class final Lcom/x/plus/pro/register/RegisterActivity$2;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/x/plus/pro/register/RegisterActivity;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/x/plus/pro/register/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/x/plus/pro/register/RegisterActivity;Ljava/lang/String;)V
    .registers 3

    .line 260
    iput-object p1, p0, Lcom/x/plus/pro/register/RegisterActivity$2;->b:Lcom/x/plus/pro/register/RegisterActivity;

    iput-object p2, p0, Lcom/x/plus/pro/register/RegisterActivity$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 263
    iget-object v0, p0, Lcom/x/plus/pro/register/RegisterActivity$2;->b:Lcom/x/plus/pro/register/RegisterActivity;

    invoke-static {v0}, Lcom/x/plus/pro/register/RegisterActivity;->a(Lcom/x/plus/pro/register/RegisterActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/x/plus/pro/register/RegisterActivity$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 265
    iget-object p0, p0, Lcom/x/plus/pro/register/RegisterActivity$2;->b:Lcom/x/plus/pro/register/RegisterActivity;

    invoke-static {p0}, Lcom/x/plus/pro/register/RegisterActivity;->b(Lcom/x/plus/pro/register/RegisterActivity;)V

    return-void
.end method
