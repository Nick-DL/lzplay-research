.class final Landroidx/c/a/b;
.super Landroid/widget/Filter;
.source "CursorFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/c/a/b$a;
    }
.end annotation


# instance fields
.field a:Landroidx/c/a/b$a;


# direct methods
.method constructor <init>(Landroidx/c/a/b$a;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 40
    iput-object p1, p0, Landroidx/c/a/b;->a:Landroidx/c/a/b$a;

    return-void
.end method


# virtual methods
.method public final convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2

    .line 45
    iget-object p0, p0, Landroidx/c/a/b;->a:Landroidx/c/a/b$a;

    check-cast p1, Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroidx/c/a/b$a;->b(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method protected final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 3

    .line 50
    iget-object p0, p0, Landroidx/c/a/b;->a:Landroidx/c/a/b$a;

    invoke-interface {p0, p1}, Landroidx/c/a/b$a;->a(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object p0

    .line 52
    new-instance p1, Landroid/widget/Filter$FilterResults;

    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    if-eqz p0, :cond_16

    .line 54
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p1, Landroid/widget/Filter$FilterResults;->count:I

    .line 55
    iput-object p0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_1c

    :cond_16
    const/4 p0, 0x0

    .line 57
    iput p0, p1, Landroid/widget/Filter$FilterResults;->count:I

    const/4 p0, 0x0

    .line 58
    iput-object p0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :goto_1c
    return-object p1
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 4

    .line 65
    iget-object p1, p0, Landroidx/c/a/b;->a:Landroidx/c/a/b$a;

    invoke-interface {p1}, Landroidx/c/a/b$a;->a()Landroid/database/Cursor;

    move-result-object p1

    .line 67
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v0, :cond_17

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eq v0, p1, :cond_17

    .line 68
    iget-object p0, p0, Landroidx/c/a/b;->a:Landroidx/c/a/b$a;

    iget-object p1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p1, Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroidx/c/a/b$a;->a(Landroid/database/Cursor;)V

    :cond_17
    return-void
.end method
