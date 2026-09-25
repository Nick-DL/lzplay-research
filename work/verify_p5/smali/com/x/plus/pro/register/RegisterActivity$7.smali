.class final Lcom/x/plus/pro/register/RegisterActivity$7;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/x/plus/pro/register/RegisterActivity;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/x/plus/pro/register/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/x/plus/pro/register/RegisterActivity;I)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/x/plus/pro/register/RegisterActivity$7;->b:Lcom/x/plus/pro/register/RegisterActivity;

    iput p2, p0, Lcom/x/plus/pro/register/RegisterActivity$7;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 404
    iget v0, p0, Lcom/x/plus/pro/register/RegisterActivity$7;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 405
    iget-object v0, p0, Lcom/x/plus/pro/register/RegisterActivity$7;->b:Lcom/x/plus/pro/register/RegisterActivity;

    invoke-static {v0}, Lcom/x/plus/pro/register/RegisterActivity;->a(Lcom/x/plus/pro/register/RegisterActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/x/plus/pro/register/RegisterActivity$7;->b:Lcom/x/plus/pro/register/RegisterActivity;

    invoke-static {v0}, Lcom/x/plus/pro/register/RegisterActivity;->g(Lcom/x/plus/pro/register/RegisterActivity;)Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lcom/x/plus/pro/register/RegisterActivity$7;->a:I

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v2, v3, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/x/plus/pro/register/RegisterActivity$7;->b:Lcom/x/plus/pro/register/RegisterActivity;

    invoke-static {v0}, Lcom/x/plus/pro/register/RegisterActivity;->h(Lcom/x/plus/pro/register/RegisterActivity;)Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lcom/x/plus/pro/register/RegisterActivity$7;->a:I

    if-ne v2, v1, :cond_2

    move v1, v5

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/x/plus/pro/register/RegisterActivity$7;->b:Lcom/x/plus/pro/register/RegisterActivity;

    invoke-static {v0}, Lcom/x/plus/pro/register/RegisterActivity;->i(Lcom/x/plus/pro/register/RegisterActivity;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/x/plus/pro/register/RegisterActivity$7;->a:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    move v1, v5

    goto :goto_2

    :cond_3
    move v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/x/plus/pro/register/RegisterActivity$7;->b:Lcom/x/plus/pro/register/RegisterActivity;

    invoke-static {v0}, Lcom/x/plus/pro/register/RegisterActivity;->j(Lcom/x/plus/pro/register/RegisterActivity;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/x/plus/pro/register/RegisterActivity$7;->a:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    move v1, v5

    goto :goto_3

    :cond_4
    move v1, v4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/x/plus/pro/register/RegisterActivity$7;->b:Lcom/x/plus/pro/register/RegisterActivity;

    invoke-static {v0}, Lcom/x/plus/pro/register/RegisterActivity;->k(Lcom/x/plus/pro/register/RegisterActivity;)Landroid/view/View;

    move-result-object v0

    iget p0, p0, Lcom/x/plus/pro/register/RegisterActivity$7;->a:I

    const/4 v1, 0x5

    if-ne p0, v1, :cond_5

    move v4, v5

    :cond_5
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
