.class final Landroidx/appcompat/widget/AppCompatSpinner$b;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/widget/SpinnerAdapter;

.field private b:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V
    .locals 1

    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->a:Landroid/widget/SpinnerAdapter;

    .line 696
    instance-of v0, p1, Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 697
    move-object v0, p1

    check-cast v0, Landroid/widget/ListAdapter;

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->b:Landroid/widget/ListAdapter;

    :cond_0
    if-eqz p2, :cond_1

    .line 701
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p0, v0, :cond_1

    instance-of p0, p1, Landroid/widget/ThemedSpinnerAdapter;

    if-eqz p0, :cond_1

    .line 703
    check-cast p1, Landroid/widget/ThemedSpinnerAdapter;

    .line 705
    invoke-interface {p1}, Landroid/widget/ThemedSpinnerAdapter;->getDropDownViewTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    if-eq p0, p2, :cond_1

    .line 706
    invoke-interface {p1, p2}, Landroid/widget/ThemedSpinnerAdapter;->setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    .locals 0

    .line 768
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->b:Landroid/widget/ListAdapter;

    if-eqz p0, :cond_0

    .line 770
    invoke-interface {p0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getCount()I
    .locals 1

    .line 719
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->a:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {p0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result p0

    return p0
.end method

.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 739
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->a:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->a:Landroid/widget/SpinnerAdapter;

    .line 740
    invoke-interface {p0, p1, p2, p3}, Landroid/widget/SpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .line 724
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->a:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {p0, p1}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getItemId(I)J
    .locals 1

    .line 729
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->a:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {p0, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getItemViewType(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 734
    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatSpinner$b;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getViewTypeCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final hasStableIds()Z
    .locals 1

    .line 745
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {p0}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    .line 802
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$b;->getCount()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isEnabled(I)Z
    .locals 0

    .line 782
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->b:Landroid/widget/ListAdapter;

    if-eqz p0, :cond_0

    .line 784
    invoke-interface {p0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 750
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    .line 751
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {p0, p1}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method public final unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 757
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    .line 758
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner$b;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {p0, p1}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method
