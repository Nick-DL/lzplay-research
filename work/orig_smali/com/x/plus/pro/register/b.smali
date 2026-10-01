.class public Lcom/x/plus/pro/register/b;
.super Landroid/webkit/WebViewClient;
.source "MyWebView.java"


# static fields
.field static volatile a:Z = false

.field private static final b:Ljava/lang/String; = "b"


# instance fields
.field private c:Lcom/x/plus/pro/register/a;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/x/plus/pro/register/a;)V
    .registers 2

    .line 22
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/x/plus/pro/register/b;->c:Lcom/x/plus/pro/register/a;

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .line 40
    sget-boolean v0, Lcom/x/plus/pro/register/b;->a:Z

    if-eqz v0, :cond_5

    return-void

    .line 43
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/x/plus/pro/register/b;->c:Lcom/x/plus/pro/register/a;

    if-eqz v0, :cond_11

    .line 48
    iget-object p0, p0, Lcom/x/plus/pro/register/b;->c:Lcom/x/plus/pro/register/a;

    invoke-interface {p0, p1, p2}, Lcom/x/plus/pro/register/a;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 28
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 33
    iget-object p1, p0, Lcom/x/plus/pro/register/b;->c:Lcom/x/plus/pro/register/a;

    if-eqz p1, :cond_c

    .line 34
    iget-object p0, p0, Lcom/x/plus/pro/register/b;->c:Lcom/x/plus/pro/register/a;

    invoke-interface {p0, p2}, Lcom/x/plus/pro/register/a;->a(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 4

    .line 58
    iget-object p1, p0, Lcom/x/plus/pro/register/b;->c:Lcom/x/plus/pro/register/a;

    if-eqz p1, :cond_c

    .line 59
    iget-object p0, p0, Lcom/x/plus/pro/register/b;->c:Lcom/x/plus/pro/register/a;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    invoke-interface {p0}, Lcom/x/plus/pro/register/a;->e_()V

    :cond_c
    return-void
.end method
