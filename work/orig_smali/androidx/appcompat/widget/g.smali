.class final Landroidx/appcompat/widget/g;
.super Ljava/lang/Object;
.source "AppCompatHintHelper.java"


# direct methods
.method static a(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;
    .registers 4

    if-eqz p0, :cond_20

    .line 28
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    if-nez v0, :cond_20

    .line 31
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 32
    :goto_a
    instance-of v0, p2, Landroid/view/View;

    if-eqz v0, :cond_20

    .line 33
    instance-of v0, p2, Landroidx/appcompat/widget/al;

    if-eqz v0, :cond_1b

    .line 34
    check-cast p2, Landroidx/appcompat/widget/al;

    invoke-interface {p2}, Landroidx/appcompat/widget/al;->a()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    goto :goto_20

    .line 37
    :cond_1b
    invoke-interface {p2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_a

    :cond_20
    :goto_20
    return-object p0
.end method
