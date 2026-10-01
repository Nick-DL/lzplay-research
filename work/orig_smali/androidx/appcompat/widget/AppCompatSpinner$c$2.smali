.class final Landroidx/appcompat/widget/AppCompatSpinner$c$2;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/AppCompatSpinner$c;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/AppCompatSpinner$c;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner$c;)V
    .registers 2

    .line 1061
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$c$2;->a:Landroidx/appcompat/widget/AppCompatSpinner$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .registers 4

    .line 1064
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c$2;->a:Landroidx/appcompat/widget/AppCompatSpinner$c;

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner$c$2;->a:Landroidx/appcompat/widget/AppCompatSpinner$c;

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 2092
    invoke-static {v1}, Landroidx/core/e/r;->p(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatSpinner$c;->c:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    if-nez v0, :cond_1f

    .line 1065
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c$2;->a:Landroidx/appcompat/widget/AppCompatSpinner$c;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$c;->c()V

    return-void

    .line 1067
    :cond_1f
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c$2;->a:Landroidx/appcompat/widget/AppCompatSpinner$c;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner$c;->g()V

    .line 1071
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c$2;->a:Landroidx/appcompat/widget/AppCompatSpinner$c;

    invoke-static {p0}, Landroidx/appcompat/widget/AppCompatSpinner$c;->a(Landroidx/appcompat/widget/AppCompatSpinner$c;)V

    return-void
.end method
