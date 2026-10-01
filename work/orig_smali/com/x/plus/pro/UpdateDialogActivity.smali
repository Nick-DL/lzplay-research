.class public Lcom/x/plus/pro/UpdateDialogActivity;
.super Landroid/app/Activity;
.source "UpdateDialogActivity.java"


# instance fields
.field a:Landroid/widget/Button;

.field b:Landroid/widget/Button;

.field c:Landroid/widget/ProgressBar;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/x/plus/pro/UpdateDialogActivity;)Landroid/widget/ProgressBar;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/x/plus/pro/UpdateDialogActivity;->c:Landroid/widget/ProgressBar;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a0021

    .line 31
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/UpdateDialogActivity;->setContentView(I)V

    const p1, 0x7f070089

    .line 32
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/x/plus/pro/UpdateDialogActivity;->c:Landroid/widget/ProgressBar;

    const p1, 0x7f070046

    .line 33
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/x/plus/pro/UpdateDialogActivity;->b:Landroid/widget/Button;

    const p1, 0x7f070044

    .line 34
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/x/plus/pro/UpdateDialogActivity;->a:Landroid/widget/Button;

    const p1, 0x7f0700d9

    .line 35
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/x/plus/pro/UpdateDialogActivity;->d:Landroid/widget/TextView;

    const p1, 0x7f0700dc

    .line 36
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/x/plus/pro/UpdateDialogActivity;->e:Landroid/widget/TextView;

    .line 1049
    invoke-static {p0}, Lcom/x/plus/pro/update/e;->d(Landroid/content/Context;)Lcom/x/plus/pro/beans/upgrade/b;

    move-result-object p1

    .line 1050
    iget-object v0, p0, Lcom/x/plus/pro/UpdateDialogActivity;->d:Landroid/widget/TextView;

    .line 2016
    iget-object v1, p1, Lcom/x/plus/pro/beans/upgrade/b;->b:Ljava/lang/String;

    .line 1050
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-virtual {p0}, Lcom/x/plus/pro/UpdateDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5c

    .line 3016
    :cond_5a
    iget-object v1, p1, Lcom/x/plus/pro/beans/upgrade/b;->b:Ljava/lang/String;

    .line 1050
    :goto_5c
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1051
    iget-object v0, p0, Lcom/x/plus/pro/UpdateDialogActivity;->b:Landroid/widget/Button;

    .line 3024
    iget-object v1, p1, Lcom/x/plus/pro/beans/upgrade/b;->c:Ljava/lang/String;

    .line 1051
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-virtual {p0}, Lcom/x/plus/pro/UpdateDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0c004b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_77

    .line 4024
    :cond_75
    iget-object p1, p1, Lcom/x/plus/pro/beans/upgrade/b;->c:Ljava/lang/String;

    .line 1051
    :goto_77
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1053
    iget-object p1, p0, Lcom/x/plus/pro/UpdateDialogActivity;->b:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1054
    iget-object p1, p0, Lcom/x/plus/pro/UpdateDialogActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1055
    iget-object p1, p0, Lcom/x/plus/pro/UpdateDialogActivity;->a:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1056
    iget-object p1, p0, Lcom/x/plus/pro/UpdateDialogActivity;->c:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1057
    iget-object p1, p0, Lcom/x/plus/pro/UpdateDialogActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1058
    iget-object p1, p0, Lcom/x/plus/pro/UpdateDialogActivity;->b:Landroid/widget/Button;

    new-instance v1, Lcom/x/plus/pro/UpdateDialogActivity$1;

    invoke-direct {v1, p0}, Lcom/x/plus/pro/UpdateDialogActivity$1;-><init>(Lcom/x/plus/pro/UpdateDialogActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/x/plus/pro/UpdateDialogActivity;->setFinishOnTouchOutside(Z)V

    return-void
.end method
