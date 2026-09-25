.class final Landroidx/core/e/u$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/e/u;->a(Landroid/view/View;Landroidx/core/e/v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/e/v;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroidx/core/e/u;


# direct methods
.method constructor <init>(Landroidx/core/e/u;Landroidx/core/e/v;Landroid/view/View;)V
    .locals 0

    .line 739
    iput-object p1, p0, Landroidx/core/e/u$1;->c:Landroidx/core/e/u;

    iput-object p2, p0, Landroidx/core/e/u$1;->a:Landroidx/core/e/v;

    iput-object p3, p0, Landroidx/core/e/u$1;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 742
    iget-object p1, p0, Landroidx/core/e/u$1;->a:Landroidx/core/e/v;

    iget-object p0, p0, Landroidx/core/e/u$1;->b:Landroid/view/View;

    invoke-interface {p1, p0}, Landroidx/core/e/v;->c(Landroid/view/View;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 747
    iget-object p1, p0, Landroidx/core/e/u$1;->a:Landroidx/core/e/v;

    iget-object p0, p0, Landroidx/core/e/u$1;->b:Landroid/view/View;

    invoke-interface {p1, p0}, Landroidx/core/e/v;->b(Landroid/view/View;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 752
    iget-object p1, p0, Landroidx/core/e/u$1;->a:Landroidx/core/e/v;

    iget-object p0, p0, Landroidx/core/e/u$1;->b:Landroid/view/View;

    invoke-interface {p1, p0}, Landroidx/core/e/v;->a(Landroid/view/View;)V

    return-void
.end method
