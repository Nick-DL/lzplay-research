.class final Lcom/x/plus/pro/register/RegisterActivity$1;
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

    .line 185
    iput-object p1, p0, Lcom/x/plus/pro/register/RegisterActivity$1;->a:Lcom/x/plus/pro/register/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 188
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 191
    iget-object p0, p0, Lcom/x/plus/pro/register/RegisterActivity$1;->a:Lcom/x/plus/pro/register/RegisterActivity;

    invoke-virtual {p0}, Lcom/x/plus/pro/register/RegisterActivity;->finish()V

    return-void
.end method
