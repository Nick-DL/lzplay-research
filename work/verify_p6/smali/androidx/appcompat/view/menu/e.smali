.class public final Landroidx/appcompat/view/menu/e;
.super Ljava/lang/Object;
.source "ListMenuPresenter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroidx/appcompat/view/menu/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/e$a;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/view/LayoutInflater;

.field c:Landroidx/appcompat/view/menu/g;

.field d:Landroidx/appcompat/view/menu/ExpandedMenuView;

.field e:I

.field f:I

.field g:I

.field public h:Landroidx/appcompat/view/menu/m$a;

.field i:Landroidx/appcompat/view/menu/e$a;


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Landroidx/appcompat/view/menu/e;->g:I

    const/4 p1, 0x0

    .line 83
    iput p1, p0, Landroidx/appcompat/view/menu/e;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p2}, Landroidx/appcompat/view/menu/e;-><init>(I)V

    .line 72
    iput-object p1, p0, Landroidx/appcompat/view/menu/e;->a:Landroid/content/Context;

    .line 73
    iget-object p1, p0, Landroidx/appcompat/view/menu/e;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/e;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/n;
    .locals 3

    .line 105
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->b:Landroid/view/LayoutInflater;

    sget v1, Landroidx/appcompat/R$layout;->abc_expanded_menu_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object p1, p0, Landroidx/appcompat/view/menu/e;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 108
    iget-object p1, p0, Landroidx/appcompat/view/menu/e;->i:Landroidx/appcompat/view/menu/e$a;

    if-nez p1, :cond_0

    .line 109
    new-instance p1, Landroidx/appcompat/view/menu/e$a;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/e$a;-><init>(Landroidx/appcompat/view/menu/e;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/e;->i:Landroidx/appcompat/view/menu/e$a;

    .line 111
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/e;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->i:Landroidx/appcompat/view/menu/e$a;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/ExpandedMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    iget-object p1, p0, Landroidx/appcompat/view/menu/e;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 114
    :cond_1
    iget-object p0, p0, Landroidx/appcompat/view/menu/e;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    return-object p0
.end method

.method public final a(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V
    .locals 2

    .line 88
    iget v0, p0, Landroidx/appcompat/view/menu/e;->f:I

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, Landroidx/appcompat/view/menu/e;->f:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/e;->a:Landroid/content/Context;

    .line 90
    iget-object p1, p0, Landroidx/appcompat/view/menu/e;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/e;->b:Landroid/view/LayoutInflater;

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 92
    iput-object p1, p0, Landroidx/appcompat/view/menu/e;->a:Landroid/content/Context;

    .line 93
    iget-object p1, p0, Landroidx/appcompat/view/menu/e;->b:Landroid/view/LayoutInflater;

    if-nez p1, :cond_1

    .line 94
    iget-object p1, p0, Landroidx/appcompat/view/menu/e;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/e;->b:Landroid/view/LayoutInflater;

    .line 97
    :cond_1
    :goto_0
    iput-object p2, p0, Landroidx/appcompat/view/menu/e;->c:Landroidx/appcompat/view/menu/g;

    .line 98
    iget-object p1, p0, Landroidx/appcompat/view/menu/e;->i:Landroidx/appcompat/view/menu/e$a;

    if-eqz p1, :cond_2

    .line 99
    iget-object p0, p0, Landroidx/appcompat/view/menu/e;->i:Landroidx/appcompat/view/menu/e$a;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/e$a;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public final a(Landroidx/appcompat/view/menu/g;Z)V
    .locals 1

    .line 155
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->h:Landroidx/appcompat/view/menu/m$a;

    if-eqz v0, :cond_0

    .line 156
    iget-object p0, p0, Landroidx/appcompat/view/menu/e;->h:Landroidx/appcompat/view/menu/m$a;

    invoke-interface {p0, p1, p2}, Landroidx/appcompat/view/menu/m$a;->a(Landroidx/appcompat/view/menu/g;Z)V

    :cond_0
    return-void
.end method

.method public final a(Landroidx/appcompat/view/menu/m$a;)V
    .locals 0

    .line 138
    iput-object p1, p0, Landroidx/appcompat/view/menu/e;->h:Landroidx/appcompat/view/menu/m$a;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 133
    iget-object p1, p0, Landroidx/appcompat/view/menu/e;->i:Landroidx/appcompat/view/menu/e$a;

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/appcompat/view/menu/e;->i:Landroidx/appcompat/view/menu/e$a;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/e$a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final a(Landroidx/appcompat/view/menu/r;)Z
    .locals 6

    .line 143
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/r;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 146
    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/h;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/h;-><init>(Landroidx/appcompat/view/menu/g;)V

    .line 2053
    iget-object v1, v0, Landroidx/appcompat/view/menu/h;->a:Landroidx/appcompat/view/menu/g;

    .line 2056
    new-instance v2, Landroidx/appcompat/app/b$a;

    .line 2836
    iget-object v3, v1, Landroidx/appcompat/view/menu/g;->a:Landroid/content/Context;

    .line 2056
    invoke-direct {v2, v3}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    .line 2058
    new-instance v3, Landroidx/appcompat/view/menu/e;

    .line 3358
    iget-object v4, v2, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$a;

    iget-object v4, v4, Landroidx/appcompat/app/AlertController$a;->a:Landroid/content/Context;

    .line 2058
    sget v5, Landroidx/appcompat/R$layout;->abc_list_menu_item_layout:I

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/view/menu/e;-><init>(Landroid/content/Context;I)V

    iput-object v3, v0, Landroidx/appcompat/view/menu/h;->c:Landroidx/appcompat/view/menu/e;

    .line 2061
    iget-object v3, v0, Landroidx/appcompat/view/menu/h;->c:Landroidx/appcompat/view/menu/e;

    .line 4138
    iput-object v0, v3, Landroidx/appcompat/view/menu/e;->h:Landroidx/appcompat/view/menu/m$a;

    .line 2062
    iget-object v3, v0, Landroidx/appcompat/view/menu/h;->a:Landroidx/appcompat/view/menu/g;

    iget-object v4, v0, Landroidx/appcompat/view/menu/h;->c:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/m;)V

    .line 2063
    iget-object v3, v0, Landroidx/appcompat/view/menu/h;->c:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/e;->b()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 4659
    iget-object v4, v2, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$a;

    iput-object v3, v4, Landroidx/appcompat/app/AlertController$a;->w:Landroid/widget/ListAdapter;

    .line 4660
    iget-object v3, v2, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$a;

    iput-object v0, v3, Landroidx/appcompat/app/AlertController$a;->x:Landroid/content/DialogInterface$OnClickListener;

    .line 5326
    iget-object v3, v1, Landroidx/appcompat/view/menu/g;->h:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 5398
    iget-object v1, v2, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$a;

    iput-object v3, v1, Landroidx/appcompat/app/AlertController$a;->g:Landroid/view/View;

    goto :goto_0

    .line 6322
    :cond_1
    iget-object v3, v1, Landroidx/appcompat/view/menu/g;->g:Landroid/graphics/drawable/Drawable;

    .line 6445
    iget-object v4, v2, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$a;

    iput-object v3, v4, Landroidx/appcompat/app/AlertController$a;->d:Landroid/graphics/drawable/Drawable;

    .line 7318
    iget-object v1, v1, Landroidx/appcompat/view/menu/g;->f:Ljava/lang/CharSequence;

    .line 2072
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/b$a;->a(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    .line 7620
    :goto_0
    iget-object v1, v2, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$a;

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$a;->u:Landroid/content/DialogInterface$OnKeyListener;

    .line 2079
    invoke-virtual {v2}, Landroidx/appcompat/app/b$a;->a()Landroidx/appcompat/app/b;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/view/menu/h;->b:Landroidx/appcompat/app/b;

    .line 2080
    iget-object v1, v0, Landroidx/appcompat/view/menu/h;->b:Landroidx/appcompat/app/b;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/b;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2082
    iget-object v1, v0, Landroidx/appcompat/view/menu/h;->b:Landroidx/appcompat/app/b;

    invoke-virtual {v1}, Landroidx/appcompat/app/b;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x3eb

    .line 2083
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2087
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2089
    iget-object v0, v0, Landroidx/appcompat/view/menu/h;->b:Landroidx/appcompat/app/b;

    invoke-virtual {v0}, Landroidx/appcompat/app/b;->show()V

    .line 147
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->h:Landroidx/appcompat/view/menu/m$a;

    if-eqz v0, :cond_2

    .line 148
    iget-object p0, p0, Landroidx/appcompat/view/menu/e;->h:Landroidx/appcompat/view/menu/m$a;

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/m$a;->a(Landroidx/appcompat/view/menu/g;)Z

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final b()Landroid/widget/ListAdapter;
    .locals 1

    .line 125
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->i:Landroidx/appcompat/view/menu/e$a;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Landroidx/appcompat/view/menu/e$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/e$a;-><init>(Landroidx/appcompat/view/menu/e;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/e;->i:Landroidx/appcompat/view/menu/e$a;

    .line 128
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/view/menu/e;->i:Landroidx/appcompat/view/menu/e$a;

    return-object p0
.end method

.method public final b(Landroidx/appcompat/view/menu/i;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final c(Landroidx/appcompat/view/menu/i;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    .line 173
    iget-object p1, p0, Landroidx/appcompat/view/menu/e;->c:Landroidx/appcompat/view/menu/g;

    iget-object p2, p0, Landroidx/appcompat/view/menu/e;->i:Landroidx/appcompat/view/menu/e$a;

    invoke-virtual {p2, p3}, Landroidx/appcompat/view/menu/e$a;->a(I)Landroidx/appcompat/view/menu/i;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Landroidx/appcompat/view/menu/g;->a(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/m;I)Z

    return-void
.end method
