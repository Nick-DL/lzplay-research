.class final Lcom/x/plus/pro/IntroductionActivity$2;
.super Ljava/lang/Object;
.source "IntroductionActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/plus/pro/IntroductionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/x/plus/pro/IntroductionActivity;


# direct methods
.method constructor <init>(Lcom/x/plus/pro/IntroductionActivity;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/x/plus/pro/IntroductionActivity$2;->a:Lcom/x/plus/pro/IntroductionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 85
    iget-object p1, p0, Lcom/x/plus/pro/IntroductionActivity$2;->a:Lcom/x/plus/pro/IntroductionActivity;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/x/plus/pro/IntroductionActivity$2;->a:Lcom/x/plus/pro/IntroductionActivity;

    const-class v1, Lcom/x/plus/pro/MainActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lcom/x/plus/pro/IntroductionActivity;->startActivity(Landroid/content/Intent;)V

    .line 86
    iget-object p0, p0, Lcom/x/plus/pro/IntroductionActivity$2;->a:Lcom/x/plus/pro/IntroductionActivity;

    invoke-virtual {p0}, Lcom/x/plus/pro/IntroductionActivity;->finish()V

    const/4 p0, 0x0

    return p0
.end method
