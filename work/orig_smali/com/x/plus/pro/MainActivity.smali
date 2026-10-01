.class public Lcom/x/plus/pro/MainActivity;
.super Lcom/x/plus/pro/base/BaseActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static k:I = 0x1

.field public static l:I = 0x2

.field private static final m:Ljava/lang/String; = "MainActivity"


# instance fields
.field private n:Lcom/x/plus/pro/b;

.field private o:Lcom/x/plus/pro/a;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 18
    invoke-direct {p0}, Lcom/x/plus/pro/base/BaseActivity;-><init>()V

    const-wide/16 v0, 0x0

    .line 129
    iput-wide v0, p0, Lcom/x/plus/pro/MainActivity;->r:J

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 95
    invoke-super {p0, p1, p2, p3}, Lcom/x/plus/pro/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 101
    sget p2, Lcom/x/plus/pro/MainActivity;->l:I

    if-ne p1, p2, :cond_1e

    .line 102
    iget-object p1, p0, Lcom/x/plus/pro/MainActivity;->n:Lcom/x/plus/pro/b;

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Lcom/x/plus/pro/MainActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1e

    .line 103
    iget-object p0, p0, Lcom/x/plus/pro/MainActivity;->n:Lcom/x/plus/pro/b;

    .line 1082
    iget-object p1, p0, Lcom/x/plus/pro/b;->W:Lcom/x/plus/pro/e/b;

    invoke-virtual {p1}, Lcom/x/plus/pro/e/b;->e()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 1083
    invoke-virtual {p0}, Lcom/x/plus/pro/b;->Q()V

    :cond_1e
    return-void
.end method

.method public onBackPressed()V
    .registers 5

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/x/plus/pro/MainActivity;->r:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_23

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/x/plus/pro/MainActivity;->r:J

    const v0, 0x7f0c0024

    .line 135
    invoke-virtual {p0, v0}, Lcom/x/plus/pro/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 137
    :cond_23
    invoke-super {p0}, Lcom/x/plus/pro/base/BaseActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f070075

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4f

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_5a

    goto :goto_59

    .line 79
    :pswitch_f
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 80
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 81
    iget-object p1, p0, Lcom/x/plus/pro/MainActivity;->o:Lcom/x/plus/pro/a;

    invoke-virtual {p0}, Lcom/x/plus/pro/MainActivity;->h()Landroidx/fragment/app/f;

    move-result-object v0

    const-class v3, Lcom/x/plus/pro/a;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/x/plus/pro/a;->a(Landroidx/fragment/app/f;Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/x/plus/pro/MainActivity;->p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 84
    iget-object p0, p0, Lcom/x/plus/pro/MainActivity;->p:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setEnabled(Z)V

    return-void

    .line 71
    :pswitch_2f
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 72
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 73
    iget-object p1, p0, Lcom/x/plus/pro/MainActivity;->n:Lcom/x/plus/pro/b;

    invoke-virtual {p0}, Lcom/x/plus/pro/MainActivity;->h()Landroidx/fragment/app/f;

    move-result-object v0

    const-class v3, Lcom/x/plus/pro/b;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/x/plus/pro/b;->a(Landroidx/fragment/app/f;Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/x/plus/pro/MainActivity;->q:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 76
    iget-object p0, p0, Lcom/x/plus/pro/MainActivity;->q:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setEnabled(Z)V

    return-void

    .line 87
    :cond_4f
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/x/plus/pro/SettingActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1, v2}, Lcom/x/plus/pro/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_59
    return-void

    :pswitch_data_5a
    .packed-switch 0x7f070087
        :pswitch_2f
        :pswitch_f
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 31
    invoke-super {p0, p1}, Lcom/x/plus/pro/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a001d

    .line 32
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/MainActivity;->setContentView(I)V

    .line 34
    invoke-static {}, Lcom/x/plus/pro/b;->P()Lcom/x/plus/pro/b;

    move-result-object p1

    iput-object p1, p0, Lcom/x/plus/pro/MainActivity;->n:Lcom/x/plus/pro/b;

    .line 35
    invoke-static {}, Lcom/x/plus/pro/a;->P()Lcom/x/plus/pro/a;

    move-result-object p1

    iput-object p1, p0, Lcom/x/plus/pro/MainActivity;->o:Lcom/x/plus/pro/a;

    .line 37
    iget-object p1, p0, Lcom/x/plus/pro/MainActivity;->n:Lcom/x/plus/pro/b;

    invoke-virtual {p0}, Lcom/x/plus/pro/MainActivity;->h()Landroidx/fragment/app/f;

    move-result-object v0

    const-class v1, Lcom/x/plus/pro/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/x/plus/pro/b;->a(Landroidx/fragment/app/f;Ljava/lang/String;)V

    const p1, 0x7f070087

    .line 39
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/x/plus/pro/MainActivity;->p:Landroid/view/View;

    const p1, 0x7f070088

    .line 40
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/x/plus/pro/MainActivity;->q:Landroid/view/View;

    const p1, 0x7f070075

    .line 41
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 43
    iget-object v0, p0, Lcom/x/plus/pro/MainActivity;->p:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 44
    iget-object v0, p0, Lcom/x/plus/pro/MainActivity;->p:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 46
    iget-object v0, p0, Lcom/x/plus/pro/MainActivity;->p:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/x/plus/pro/MainActivity;->q:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-static {p0}, Lcom/x/plus/pro/dm/DeviceManageReceiver;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_72

    .line 50
    invoke-static {}, Lcom/x/plus/pro/update/e;->a()Z

    move-result p1

    if-eqz p1, :cond_72

    invoke-static {p0}, Lcom/x/plus/pro/update/e;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_72

    .line 51
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/x/plus/pro/UpdateDialogActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/x/plus/pro/MainActivity;->startActivity(Landroid/content/Intent;)V

    :cond_72
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 3

    .line 58
    invoke-super {p0, p1}, Lcom/x/plus/pro/base/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 59
    invoke-static {p0}, Lcom/x/plus/pro/dm/DeviceManageReceiver;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 60
    invoke-static {}, Lcom/x/plus/pro/update/e;->a()Z

    move-result p1

    if-eqz p1, :cond_1f

    invoke-static {p0}, Lcom/x/plus/pro/update/e;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 61
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/x/plus/pro/UpdateDialogActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/x/plus/pro/MainActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1f
    return-void
.end method
