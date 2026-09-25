.class final Landroidx/appcompat/widget/ActivityChooserView$1;
.super Landroid/database/DataSetObserver;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActivityChooserView;)V
    .locals 0

    .line 135
    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$1;->a:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 0

    .line 139
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 140
    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView$1;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$a;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView$a;->notifyDataSetChanged()V

    return-void
.end method

.method public final onInvalidated()V
    .locals 0

    .line 144
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 145
    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView$1;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$a;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView$a;->notifyDataSetInvalidated()V

    return-void
.end method
