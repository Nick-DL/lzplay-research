.class final Lcom/x/plus/pro/IntroductionActivity$1;
.super Ljava/lang/Object;
.source "IntroductionActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$f;


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

    .line 59
    iput-object p1, p0, Lcom/x/plus/pro/IntroductionActivity$1;->a:Lcom/x/plus/pro/IntroductionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    const/4 v0, 0x0

    .line 68
    :goto_0
    iget-object v1, p0, Lcom/x/plus/pro/IntroductionActivity$1;->a:Lcom/x/plus/pro/IntroductionActivity;

    invoke-static {v1}, Lcom/x/plus/pro/IntroductionActivity;->a(Lcom/x/plus/pro/IntroductionActivity;)[Landroid/widget/ImageView;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/x/plus/pro/IntroductionActivity$1;->a:Lcom/x/plus/pro/IntroductionActivity;

    invoke-static {v1}, Lcom/x/plus/pro/IntroductionActivity;->a(Lcom/x/plus/pro/IntroductionActivity;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, p1

    const v2, 0x7f0b0004

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    if-eq p1, v0, :cond_0

    .line 71
    iget-object v1, p0, Lcom/x/plus/pro/IntroductionActivity$1;->a:Lcom/x/plus/pro/IntroductionActivity;

    invoke-static {v1}, Lcom/x/plus/pro/IntroductionActivity;->a(Lcom/x/plus/pro/IntroductionActivity;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, v0

    const v2, 0x7f0b0007

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(IF)V
    .locals 0

    return-void
.end method

.method public final b(I)V
    .locals 0

    return-void
.end method
