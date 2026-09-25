.class final Landroidx/appcompat/widget/AppCompatSpinner$a;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroidx/appcompat/widget/AppCompatSpinner$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroidx/appcompat/app/b;

.field final synthetic b:Landroidx/appcompat/widget/AppCompatSpinner;

.field private c:Landroid/widget/ListAdapter;

.field private d:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner;)V
    .locals 0

    .line 848
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$a;->b:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/CharSequence;
    .locals 0

    .line 879
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner$a;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final a(I)V
    .locals 0

    const-string p0, "AppCompatSpinner"

    const-string p1, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    .line 917
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(II)V
    .locals 4

    .line 884
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$a;->c:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    return-void

    .line 887
    :cond_0
    new-instance v0, Landroidx/appcompat/app/b$a;

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner$a;->b:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatSpinner;->getPopupContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    .line 888
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner$a;->d:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 889
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner$a;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/b$a;->a(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    .line 891
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner$a;->c:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatSpinner$a;->b:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 892
    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatSpinner;->getSelectedItemPosition()I

    move-result v2

    .line 1853
    iget-object v3, v0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$a;

    iput-object v1, v3, Landroidx/appcompat/app/AlertController$a;->w:Landroid/widget/ListAdapter;

    .line 1854
    iget-object v1, v0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$a;

    iput-object p0, v1, Landroidx/appcompat/app/AlertController$a;->x:Landroid/content/DialogInterface$OnClickListener;

    .line 1855
    iget-object v1, v0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$a;

    iput v2, v1, Landroidx/appcompat/app/AlertController$a;->I:I

    .line 1856
    iget-object v1, v0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$a;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/appcompat/app/AlertController$a;->H:Z

    .line 892
    invoke-virtual {v0}, Landroidx/appcompat/app/b$a;->a()Landroidx/appcompat/app/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$a;->a:Landroidx/appcompat/app/b;

    .line 893
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$a;->a:Landroidx/appcompat/app/b;

    .line 2140
    iget-object v0, v0, Landroidx/appcompat/app/b;->a:Landroidx/appcompat/app/AlertController;

    .line 2404
    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    .line 894
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2

    .line 895
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 896
    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    .line 898
    :cond_2
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner$a;->a:Landroidx/appcompat/app/b;

    invoke-virtual {p0}, Landroidx/appcompat/app/b;->show()V

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const-string p0, "AppCompatSpinner"

    const-string p1, "Cannot set popup background for MODE_DIALOG, ignoring"

    .line 912
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 869
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$a;->c:Landroid/widget/ListAdapter;

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 0

    .line 874
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$a;->d:Ljava/lang/CharSequence;

    return-void
.end method

.method public final a_()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(I)V
    .locals 0

    const-string p0, "AppCompatSpinner"

    const-string p1, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    .line 922
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final c()V
    .locals 1

    .line 856
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$a;->a:Landroidx/appcompat/app/b;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$a;->a:Landroidx/appcompat/app/b;

    invoke-virtual {v0}, Landroidx/appcompat/app/b;->dismiss()V

    const/4 v0, 0x0

    .line 858
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$a;->a:Landroidx/appcompat/app/b;

    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 0

    const-string p0, "AppCompatSpinner"

    const-string p1, "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring"

    .line 942
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final d()Z
    .locals 1

    .line 864
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$a;->a:Landroidx/appcompat/app/b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner$a;->a:Landroidx/appcompat/app/b;

    invoke-virtual {p0}, Landroidx/appcompat/app/b;->isShowing()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 903
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$a;->b:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatSpinner;->setSelection(I)V

    .line 904
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$a;->b:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatSpinner;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 905
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$a;->b:Landroidx/appcompat/widget/AppCompatSpinner;

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner$a;->c:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {p1, v0, p2, v1, v2}, Landroidx/appcompat/widget/AppCompatSpinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 907
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$a;->c()V

    return-void
.end method
