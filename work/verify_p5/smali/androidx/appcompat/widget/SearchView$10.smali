.class final Landroidx/appcompat/widget/SearchView$10;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/SearchView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/SearchView;)V
    .locals 0

    .line 1419
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$10;->a:Landroidx/appcompat/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1427
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$10;->a:Landroidx/appcompat/widget/SearchView;

    .line 2399
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->k:Landroidx/appcompat/widget/SearchView$d;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->k:Landroidx/appcompat/widget/SearchView$d;

    .line 2400
    invoke-interface {p1}, Landroidx/appcompat/widget/SearchView$d;->a()Z

    move-result p1

    if-nez p1, :cond_3

    .line 2444
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 2445
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->m:Landroidx/c/a/a;

    invoke-virtual {p2}, Landroidx/c/a/a;->a()Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 2449
    invoke-interface {p2, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 2451
    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->m:Landroidx/c/a/a;

    invoke-virtual {p3, p2}, Landroidx/c/a/a;->b(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2455
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    return-void

    .line 2458
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    return-void

    .line 2462
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
