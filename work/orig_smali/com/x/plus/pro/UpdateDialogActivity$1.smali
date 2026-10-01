.class final Lcom/x/plus/pro/UpdateDialogActivity$1;
.super Ljava/lang/Object;
.source "UpdateDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/plus/pro/UpdateDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/x/plus/pro/UpdateDialogActivity;


# direct methods
.method constructor <init>(Lcom/x/plus/pro/UpdateDialogActivity;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/x/plus/pro/UpdateDialogActivity$1;->a:Lcom/x/plus/pro/UpdateDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .line 61
    iget-object p0, p0, Lcom/x/plus/pro/UpdateDialogActivity$1;->a:Lcom/x/plus/pro/UpdateDialogActivity;

    .line 1067
    iget-object p1, p0, Lcom/x/plus/pro/UpdateDialogActivity;->d:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1068
    iget-object p1, p0, Lcom/x/plus/pro/UpdateDialogActivity;->b:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1069
    iget-object p1, p0, Lcom/x/plus/pro/UpdateDialogActivity;->a:Landroid/widget/Button;

    const v0, 0x7f0c0023

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 1070
    iget-object p1, p0, Lcom/x/plus/pro/UpdateDialogActivity;->a:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1071
    iget-object p1, p0, Lcom/x/plus/pro/UpdateDialogActivity;->c:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1072
    iget-object p1, p0, Lcom/x/plus/pro/UpdateDialogActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f0c0035

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1073
    iget-object p1, p0, Lcom/x/plus/pro/UpdateDialogActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1074
    iget-object p1, p0, Lcom/x/plus/pro/UpdateDialogActivity;->a:Landroid/widget/Button;

    new-instance v0, Lcom/x/plus/pro/UpdateDialogActivity$2;

    invoke-direct {v0, p0}, Lcom/x/plus/pro/UpdateDialogActivity$2;-><init>(Lcom/x/plus/pro/UpdateDialogActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1080
    new-instance p1, Lcom/x/plus/pro/UpdateDialogActivity$3;

    invoke-direct {p1, p0}, Lcom/x/plus/pro/UpdateDialogActivity$3;-><init>(Lcom/x/plus/pro/UpdateDialogActivity;)V

    invoke-static {p0, p1}, Lcom/x/plus/pro/update/e;->a(Landroid/content/Context;Lcom/x/plus/pro/update/c$a;)V

    return-void
.end method
