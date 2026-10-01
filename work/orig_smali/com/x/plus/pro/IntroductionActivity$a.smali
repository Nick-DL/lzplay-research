.class final Lcom/x/plus/pro/IntroductionActivity$a;
.super Landroidx/viewpager/widget/a;
.source "IntroductionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/plus/pro/IntroductionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/x/plus/pro/IntroductionActivity;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/x/plus/pro/IntroductionActivity;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/x/plus/pro/IntroductionActivity$a;->a:Lcom/x/plus/pro/IntroductionActivity;

    invoke-direct {p0}, Landroidx/viewpager/widget/a;-><init>()V

    .line 134
    iput-object p2, p0, Lcom/x/plus/pro/IntroductionActivity$a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/x/plus/pro/IntroductionActivity$a;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 4

    .line 139
    iget-object v0, p0, Lcom/x/plus/pro/IntroductionActivity$a;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 140
    iget-object p0, p0, Lcom/x/plus/pro/IntroductionActivity$a;->b:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p2, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public final b(Landroid/view/ViewGroup;I)V
    .registers 3

    .line 145
    iget-object p0, p0, Lcom/x/plus/pro/IntroductionActivity$a;->b:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
