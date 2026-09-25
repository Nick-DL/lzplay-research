.class final Landroidx/core/e/u$a;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Landroidx/core/e/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/e/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroidx/core/e/u;

.field b:Z


# direct methods
.method constructor <init>(Landroidx/core/e/u;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroidx/core/e/u$a;->a:Landroidx/core/e/u;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Landroidx/core/e/u$a;->b:Z

    .line 53
    iget-object v0, p0, Landroidx/core/e/u$a;->a:Landroidx/core/e/u;

    iget v0, v0, Landroidx/core/e/u;->c:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x2

    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 56
    :cond_0
    iget-object v0, p0, Landroidx/core/e/u$a;->a:Landroidx/core/e/u;

    iget-object v0, v0, Landroidx/core/e/u;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Landroidx/core/e/u$a;->a:Landroidx/core/e/u;

    iget-object v0, v0, Landroidx/core/e/u;->a:Ljava/lang/Runnable;

    .line 58
    iget-object p0, p0, Landroidx/core/e/u$a;->a:Landroidx/core/e/u;

    iput-object v1, p0, Landroidx/core/e/u;->a:Ljava/lang/Runnable;

    .line 59
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    const/high16 p0, 0x7e000000

    .line 61
    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    .line 63
    instance-of v0, p0, Landroidx/core/e/v;

    if-eqz v0, :cond_2

    .line 64
    move-object v1, p0

    check-cast v1, Landroidx/core/e/v;

    :cond_2
    if-eqz v1, :cond_3

    .line 67
    invoke-interface {v1, p1}, Landroidx/core/e/v;->a(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 3

    .line 73
    iget-object v0, p0, Landroidx/core/e/u$a;->a:Landroidx/core/e/u;

    iget v0, v0, Landroidx/core/e/u;->c:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 74
    iget-object v0, p0, Landroidx/core/e/u$a;->a:Landroidx/core/e/u;

    iget v0, v0, Landroidx/core/e/u;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 75
    iget-object v0, p0, Landroidx/core/e/u$a;->a:Landroidx/core/e/u;

    const/4 v2, -0x1

    iput v2, v0, Landroidx/core/e/u;->c:I

    .line 77
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v0, v2, :cond_1

    iget-boolean v0, p0, Landroidx/core/e/u$a;->b:Z

    if-nez v0, :cond_5

    .line 80
    :cond_1
    iget-object v0, p0, Landroidx/core/e/u$a;->a:Landroidx/core/e/u;

    iget-object v0, v0, Landroidx/core/e/u;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Landroidx/core/e/u$a;->a:Landroidx/core/e/u;

    iget-object v0, v0, Landroidx/core/e/u;->b:Ljava/lang/Runnable;

    .line 82
    iget-object v2, p0, Landroidx/core/e/u$a;->a:Landroidx/core/e/u;

    iput-object v1, v2, Landroidx/core/e/u;->b:Ljava/lang/Runnable;

    .line 83
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    const/high16 v0, 0x7e000000

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 87
    instance-of v2, v0, Landroidx/core/e/v;

    if-eqz v2, :cond_3

    .line 88
    move-object v1, v0

    check-cast v1, Landroidx/core/e/v;

    :cond_3
    if-eqz v1, :cond_4

    .line 91
    invoke-interface {v1, p1}, Landroidx/core/e/v;->b(Landroid/view/View;)V

    :cond_4
    const/4 p1, 0x1

    .line 93
    iput-boolean p1, p0, Landroidx/core/e/u$a;->b:Z

    :cond_5
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 1

    const/high16 p0, 0x7e000000

    .line 99
    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    .line 101
    instance-of v0, p0, Landroidx/core/e/v;

    if-eqz v0, :cond_0

    .line 102
    check-cast p0, Landroidx/core/e/v;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 105
    invoke-interface {p0, p1}, Landroidx/core/e/v;->c(Landroid/view/View;)V

    :cond_1
    return-void
.end method
