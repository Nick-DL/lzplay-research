.class public Lcom/x/plus/pro/SplashActivity;
.super Lcom/x/plus/pro/base/BaseActivity;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/plus/pro/SplashActivity$NoUnderLineSpan;
    }
.end annotation


# instance fields
.field public k:Lcom/x/plus/pro/a/a;

.field private l:Landroid/content/SharedPreferences;

.field private m:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/x/plus/pro/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 42
    invoke-super {p0, p1}, Lcom/x/plus/pro/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a0020

    .line 43
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/SplashActivity;->setContentView(I)V

    .line 1049
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const v0, 0x3e99999a    # 0.3f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x3e8

    .line 1051
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const v0, 0x7f0700b6

    .line 1052
    invoke-virtual {p0, v0}, Lcom/x/plus/pro/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const-string p1, "com.x.plus.pro"

    const/4 v0, 0x0

    .line 1078
    invoke-virtual {p0, p1, v0}, Lcom/x/plus/pro/SplashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/x/plus/pro/SplashActivity;->l:Landroid/content/SharedPreferences;

    .line 1084
    new-instance p1, Lcom/x/plus/pro/a/a;

    invoke-direct {p1, p0}, Lcom/x/plus/pro/a/a;-><init>(Lcom/x/plus/pro/SplashActivity;)V

    iput-object p1, p0, Lcom/x/plus/pro/SplashActivity;->k:Lcom/x/plus/pro/a/a;

    .line 1085
    iget-object p0, p0, Lcom/x/plus/pro/SplashActivity;->k:Lcom/x/plus/pro/a/a;

    .line 1100
    iget-object p1, p0, Lcom/x/plus/pro/a/a;->a:Lcom/x/plus/pro/SplashActivity;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/x/plus/pro/a/a;->a:Lcom/x/plus/pro/SplashActivity;

    invoke-virtual {p1}, Lcom/x/plus/pro/SplashActivity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1103
    :cond_0
    iget-object p1, p0, Lcom/x/plus/pro/a/a;->b:Lcom/x/plus/pro/a/b;

    new-instance v1, Lcom/x/plus/pro/a/a$2;

    invoke-direct {v1, p0}, Lcom/x/plus/pro/a/a$2;-><init>(Lcom/x/plus/pro/a/a;)V

    .line 2049
    new-instance p0, Lcom/x/plus/pro/a/b$a;

    iget-object v2, p1, Lcom/x/plus/pro/a/b;->a:Landroid/app/Activity;

    invoke-direct {p0, v2, v1, v0}, Lcom/x/plus/pro/a/b$a;-><init>(Landroid/app/Activity;Lcom/x/plus/pro/a/c;B)V

    iput-object p0, p1, Lcom/x/plus/pro/a/b;->b:Lcom/x/plus/pro/a/b$a;

    .line 2051
    iget-object p0, p1, Lcom/x/plus/pro/a/b;->a:Landroid/app/Activity;

    invoke-static {p0}, Lcom/x/plus/pro/a/b;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2052
    iget-object p0, p1, Lcom/x/plus/pro/a/b;->a:Landroid/app/Activity;

    invoke-static {p0}, Lcom/x/plus/pro/update/e;->e(Landroid/content/Context;)V

    .line 2053
    iget-object p0, p1, Lcom/x/plus/pro/a/b;->a:Landroid/app/Activity;

    invoke-static {p0}, Lcom/x/plus/pro/update/e;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    iput-object p0, p1, Lcom/x/plus/pro/a/b;->c:Ljava/util/List;

    .line 2054
    iget-object p0, p1, Lcom/x/plus/pro/a/b;->c:Ljava/util/List;

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/x/plus/pro/a/b;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    .line 2055
    invoke-virtual {p1}, Lcom/x/plus/pro/a/b;->a()V

    return-void

    .line 2061
    :cond_1
    iget-object p0, p1, Lcom/x/plus/pro/a/b;->b:Lcom/x/plus/pro/a/b$a;

    const/16 p1, 0x65

    const-wide/16 v0, 0xa

    invoke-virtual {p0, p1, v0, v1}, Lcom/x/plus/pro/a/b$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 166
    invoke-super {p0}, Lcom/x/plus/pro/base/BaseActivity;->onDestroy()V

    .line 167
    iget-object v0, p0, Lcom/x/plus/pro/SplashActivity;->k:Lcom/x/plus/pro/a/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/x/plus/pro/SplashActivity;->k:Lcom/x/plus/pro/a/a;

    .line 2190
    iget-object v2, v0, Lcom/x/plus/pro/a/a;->b:Lcom/x/plus/pro/a/b;

    if-eqz v2, :cond_1

    .line 3036
    iget-object v2, v0, Lcom/x/plus/pro/a/a;->c:Lcom/x/plus/pro/a/a$a;

    if-eqz v2, :cond_0

    .line 3037
    iget-object v2, v0, Lcom/x/plus/pro/a/a;->c:Lcom/x/plus/pro/a/a$a;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/x/plus/pro/a/a$a;->removeMessages(I)V

    .line 2192
    :cond_0
    iget-object v2, v0, Lcom/x/plus/pro/a/a;->b:Lcom/x/plus/pro/a/b;

    .line 3154
    iget-object v2, v2, Lcom/x/plus/pro/a/b;->d:Lcom/x/plus/pro/update/b;

    invoke-static {v2}, Lcom/x/plus/pro/update/e;->a(Lcom/x/plus/pro/update/b;)V

    .line 2193
    iput-object v1, v0, Lcom/x/plus/pro/a/a;->b:Lcom/x/plus/pro/a/b;

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/x/plus/pro/SplashActivity;->m:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/x/plus/pro/SplashActivity;->m:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 172
    iput-object v1, p0, Lcom/x/plus/pro/SplashActivity;->m:Landroid/app/Dialog;

    :cond_2
    return-void
.end method
