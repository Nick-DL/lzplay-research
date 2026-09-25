.class final Lcom/x/plus/pro/register/RegisterActivity$3;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/plus/pro/register/RegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/x/plus/pro/register/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/x/plus/pro/register/RegisterActivity;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/x/plus/pro/register/RegisterActivity$3;->a:Lcom/x/plus/pro/register/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 310
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 311
    iget-object p0, p0, Lcom/x/plus/pro/register/RegisterActivity$3;->a:Lcom/x/plus/pro/register/RegisterActivity;

    invoke-static {p0}, Lcom/x/plus/pro/register/RegisterActivity;->e(Lcom/x/plus/pro/register/RegisterActivity;)Lcom/x/plus/pro/register/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/x/plus/pro/register/c;->a()V

    return-void
.end method
