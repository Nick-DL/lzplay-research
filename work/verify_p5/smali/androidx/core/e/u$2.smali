.class final Landroidx/core/e/u$2;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/e/u;->a(Landroidx/core/e/x;)Landroidx/core/e/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/e/x;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroidx/core/e/u;


# direct methods
.method constructor <init>(Landroidx/core/e/u;Landroidx/core/e/x;Landroid/view/View;)V
    .locals 0

    .line 777
    iput-object p1, p0, Landroidx/core/e/u$2;->c:Landroidx/core/e/u;

    iput-object p2, p0, Landroidx/core/e/u$2;->a:Landroidx/core/e/x;

    iput-object p3, p0, Landroidx/core/e/u$2;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 780
    iget-object p0, p0, Landroidx/core/e/u$2;->a:Landroidx/core/e/x;

    invoke-interface {p0}, Landroidx/core/e/x;->a()V

    return-void
.end method
