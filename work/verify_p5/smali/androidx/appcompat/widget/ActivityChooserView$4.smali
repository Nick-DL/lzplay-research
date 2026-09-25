.class final Landroidx/appcompat/widget/ActivityChooserView$4;
.super Landroidx/appcompat/widget/t;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActivityChooserView;Landroid/view/View;)V
    .locals 0

    .line 262
    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$4;->a:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/t;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/appcompat/view/menu/p;
    .locals 0

    .line 265
    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView$4;->a:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView;->getListPopupWindow()Landroidx/appcompat/widget/u;

    move-result-object p0

    return-object p0
.end method

.method protected final b()Z
    .locals 0

    .line 270
    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView$4;->a:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView;->a()Z

    const/4 p0, 0x1

    return p0
.end method

.method protected final c()Z
    .locals 0

    .line 276
    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView$4;->a:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView;->b()Z

    const/4 p0, 0x1

    return p0
.end method
