.class final Landroidx/appcompat/widget/af$2;
.super Landroidx/core/e/w;
.source "ToolbarWidgetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/af;->a(IJ)Landroidx/core/e/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroidx/appcompat/widget/af;

.field private c:Z


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/af;I)V
    .locals 0

    .line 569
    iput-object p1, p0, Landroidx/appcompat/widget/af$2;->b:Landroidx/appcompat/widget/af;

    iput p2, p0, Landroidx/appcompat/widget/af$2;->a:I

    invoke-direct {p0}, Landroidx/core/e/w;-><init>()V

    const/4 p1, 0x0

    .line 570
    iput-boolean p1, p0, Landroidx/appcompat/widget/af$2;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    .line 574
    iget-object p0, p0, Landroidx/appcompat/widget/af$2;->b:Landroidx/appcompat/widget/af;

    iget-object p0, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 0

    .line 579
    iget-boolean p1, p0, Landroidx/appcompat/widget/af$2;->c:Z

    if-nez p1, :cond_0

    .line 580
    iget-object p1, p0, Landroidx/appcompat/widget/af$2;->b:Landroidx/appcompat/widget/af;

    iget-object p1, p1, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    iget p0, p0, Landroidx/appcompat/widget/af$2;->a:I

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 586
    iput-boolean p1, p0, Landroidx/appcompat/widget/af$2;->c:Z

    return-void
.end method
