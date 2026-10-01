.class final Landroidx/appcompat/view/menu/d;
.super Landroidx/appcompat/view/menu/k;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroidx/appcompat/view/menu/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/d$a;
    }
.end annotation


# static fields
.field private static final h:I


# instance fields
.field private A:Landroidx/appcompat/view/menu/m$a;

.field private B:Landroid/widget/PopupWindow$OnDismissListener;

.field final a:Landroid/os/Handler;

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/appcompat/view/menu/d$a;",
            ">;"
        }
    .end annotation
.end field

.field final c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field d:Landroid/view/View;

.field e:Landroid/view/ViewTreeObserver;

.field f:Z

.field private final i:Landroid/content/Context;

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:Z

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/appcompat/view/menu/g;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Landroid/view/View$OnAttachStateChangeListener;

.field private final p:Landroidx/appcompat/widget/v;

.field private q:I

.field private r:I

.field private s:Landroid/view/View;

.field private t:I

.field private u:Z

.field private v:Z

.field private w:I

.field private x:I

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 66
    sget v0, Landroidx/appcompat/R$layout;->abc_cascading_menu_item_layout:I

    sput v0, Landroidx/appcompat/view/menu/d;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .registers 7

    .line 222
    invoke-direct {p0}, Landroidx/appcompat/view/menu/k;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->n:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    .line 97
    new-instance v0, Landroidx/appcompat/view/menu/d$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/d$1;-><init>(Landroidx/appcompat/view/menu/d;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 119
    new-instance v0, Landroidx/appcompat/view/menu/d$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/d$2;-><init>(Landroidx/appcompat/view/menu/d;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->o:Landroid/view/View$OnAttachStateChangeListener;

    .line 137
    new-instance v0, Landroidx/appcompat/view/menu/d$3;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/d$3;-><init>(Landroidx/appcompat/view/menu/d;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->p:Landroidx/appcompat/widget/v;

    const/4 v0, 0x0

    .line 197
    iput v0, p0, Landroidx/appcompat/view/menu/d;->q:I

    .line 198
    iput v0, p0, Landroidx/appcompat/view/menu/d;->r:I

    .line 223
    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->i:Landroid/content/Context;

    .line 224
    iput-object p2, p0, Landroidx/appcompat/view/menu/d;->s:Landroid/view/View;

    .line 225
    iput p3, p0, Landroidx/appcompat/view/menu/d;->k:I

    .line 226
    iput p4, p0, Landroidx/appcompat/view/menu/d;->l:I

    .line 227
    iput-boolean p5, p0, Landroidx/appcompat/view/menu/d;->m:Z

    .line 229
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/d;->y:Z

    .line 230
    invoke-direct {p0}, Landroidx/appcompat/view/menu/d;->h()I

    move-result p2

    iput p2, p0, Landroidx/appcompat/view/menu/d;->t:I

    .line 232
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 233
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p2, p2, 0x2

    sget p3, Landroidx/appcompat/R$dimen;->abc_config_prefDialogWidth:I

    .line 234
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 233
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/d;->j:I

    .line 236
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->a:Landroid/os/Handler;

    return-void
.end method

.method private static a(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/g;)Landroid/view/MenuItem;
    .registers 6

    .line 516
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1b

    .line 517
    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 518
    invoke-interface {v2}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    if-ne p1, v3, :cond_18

    return-object v2

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroidx/appcompat/view/menu/d$a;Landroidx/appcompat/view/menu/g;)Landroid/view/View;
    .registers 9

    .line 537
    iget-object v0, p0, Landroidx/appcompat/view/menu/d$a;->b:Landroidx/appcompat/view/menu/g;

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/d;->a(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/g;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return-object v0

    .line 10807
    :cond_a
    iget-object p0, p0, Landroidx/appcompat/view/menu/d$a;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 10947
    iget-object p0, p0, Landroidx/appcompat/widget/u;->e:Landroidx/appcompat/widget/r;

    .line 547
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 548
    instance-of v2, v1, Landroid/widget/HeaderViewListAdapter;

    const/4 v3, 0x0

    if-eqz v2, :cond_24

    .line 549
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .line 550
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 551
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/f;

    goto :goto_27

    .line 554
    :cond_24
    check-cast v1, Landroidx/appcompat/view/menu/f;

    move v2, v3

    .line 559
    :goto_27
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/f;->getCount()I

    move-result v4

    :goto_2b
    const/4 v5, -0x1

    if-ge v3, v4, :cond_38

    .line 560
    invoke-virtual {v1, v3}, Landroidx/appcompat/view/menu/f;->a(I)Landroidx/appcompat/view/menu/i;

    move-result-object v6

    if-ne p1, v6, :cond_35

    goto :goto_39

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_38
    move v3, v5

    :goto_39
    if-ne v3, v5, :cond_3c

    return-object v0

    :cond_3c
    add-int/2addr v3, v2

    .line 574
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p1

    sub-int/2addr v3, p1

    if-ltz v3, :cond_50

    .line 575
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result p1

    if-lt v3, p1, :cond_4b

    goto :goto_50

    .line 580
    :cond_4b
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_50
    :goto_50
    return-object v0
.end method

.method private c(Landroidx/appcompat/view/menu/g;)V
    .registers 16

    .line 369
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 370
    new-instance v1, Landroidx/appcompat/view/menu/f;

    iget-boolean v2, p0, Landroidx/appcompat/view/menu/d;->m:Z

    sget v3, Landroidx/appcompat/view/menu/d;->h:I

    invoke-direct {v1, p1, v0, v2, v3}, Landroidx/appcompat/view/menu/f;-><init>(Landroidx/appcompat/view/menu/g;Landroid/view/LayoutInflater;ZI)V

    .line 376
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/d;->d()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1d

    iget-boolean v2, p0, Landroidx/appcompat/view/menu/d;->y:Z

    if-eqz v2, :cond_1d

    .line 4057
    iput-boolean v3, v1, Landroidx/appcompat/view/menu/f;->b:Z

    goto :goto_29

    .line 379
    :cond_1d
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/d;->d()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 381
    invoke-static {p1}, Landroidx/appcompat/view/menu/k;->b(Landroidx/appcompat/view/menu/g;)Z

    move-result v2

    .line 5057
    iput-boolean v2, v1, Landroidx/appcompat/view/menu/f;->b:Z

    .line 385
    :cond_29
    :goto_29
    iget-object v2, p0, Landroidx/appcompat/view/menu/d;->i:Landroid/content/Context;

    iget v4, p0, Landroidx/appcompat/view/menu/d;->j:I

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4}, Landroidx/appcompat/view/menu/d;->a(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v2

    .line 386
    invoke-direct {p0}, Landroidx/appcompat/view/menu/d;->g()Landroidx/appcompat/widget/MenuPopupWindow;

    move-result-object v4

    .line 387
    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/MenuPopupWindow;->a(Landroid/widget/ListAdapter;)V

    .line 388
    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/MenuPopupWindow;->d(I)V

    .line 389
    iget v1, p0, Landroidx/appcompat/view/menu/d;->r:I

    .line 5539
    iput v1, v4, Landroidx/appcompat/widget/u;->h:I

    .line 393
    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5c

    .line 394
    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    iget-object v6, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/d$a;

    .line 395
    invoke-static {v1, p1}, Landroidx/appcompat/view/menu/d;->a(Landroidx/appcompat/view/menu/d$a;Landroidx/appcompat/view/menu/g;)Landroid/view/View;

    move-result-object v6

    goto :goto_5e

    :cond_5c
    move-object v1, v5

    move-object v6, v1

    :goto_5e
    const/4 v7, 0x0

    if-eqz v6, :cond_d1

    .line 403
    invoke-virtual {v4}, Landroidx/appcompat/widget/MenuPopupWindow;->g()V

    .line 404
    invoke-virtual {v4}, Landroidx/appcompat/widget/MenuPopupWindow;->a()V

    .line 406
    invoke-direct {p0, v2}, Landroidx/appcompat/view/menu/d;->d(I)I

    move-result v8

    if-ne v8, v3, :cond_6f

    move v9, v3

    goto :goto_70

    :cond_6f
    move v9, v7

    .line 408
    :goto_70
    iput v8, p0, Landroidx/appcompat/view/menu/d;->t:I

    .line 412
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1a

    const/4 v11, 0x5

    if-lt v8, v10, :cond_7e

    .line 6471
    iput-object v6, v4, Landroidx/appcompat/widget/u;->k:Landroid/view/View;

    move v3, v7

    move v12, v3

    goto :goto_b0

    :cond_7e
    const/4 v8, 0x2

    .line 428
    new-array v10, v8, [I

    .line 429
    iget-object v12, p0, Landroidx/appcompat/view/menu/d;->s:Landroid/view/View;

    invoke-virtual {v12, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 431
    new-array v8, v8, [I

    .line 432
    invoke-virtual {v6, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 438
    iget v12, p0, Landroidx/appcompat/view/menu/d;->r:I

    and-int/lit8 v12, v12, 0x7

    if-ne v12, v11, :cond_a5

    .line 439
    aget v12, v10, v7

    iget-object v13, p0, Landroidx/appcompat/view/menu/d;->s:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    aput v12, v10, v7

    .line 440
    aget v12, v8, v7

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    aput v12, v8, v7

    .line 445
    :cond_a5
    aget v12, v8, v7

    aget v13, v10, v7

    sub-int/2addr v12, v13

    .line 446
    aget v8, v8, v3

    aget v3, v10, v3

    sub-int v3, v8, v3

    .line 454
    :goto_b0
    iget v8, p0, Landroidx/appcompat/view/menu/d;->r:I

    and-int/2addr v8, v11

    if-ne v8, v11, :cond_bf

    if-eqz v9, :cond_b9

    add-int/2addr v12, v2

    goto :goto_c8

    .line 458
    :cond_b9
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v12, v2

    goto :goto_c8

    :cond_bf
    if-eqz v9, :cond_c7

    .line 462
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v12, v2

    goto :goto_c8

    :cond_c7
    sub-int/2addr v12, v2

    .line 6487
    :goto_c8
    iput v12, v4, Landroidx/appcompat/widget/u;->g:I

    .line 470
    invoke-virtual {v4}, Landroidx/appcompat/widget/MenuPopupWindow;->l()V

    .line 471
    invoke-virtual {v4, v3}, Landroidx/appcompat/widget/MenuPopupWindow;->a(I)V

    goto :goto_e7

    .line 473
    :cond_d1
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/d;->u:Z

    if-eqz v2, :cond_d9

    .line 474
    iget v2, p0, Landroidx/appcompat/view/menu/d;->w:I

    .line 7487
    iput v2, v4, Landroidx/appcompat/widget/u;->g:I

    .line 476
    :cond_d9
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/d;->v:Z

    if-eqz v2, :cond_e2

    .line 477
    iget v2, p0, Landroidx/appcompat/view/menu/d;->x:I

    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/MenuPopupWindow;->a(I)V

    .line 8078
    :cond_e2
    iget-object v2, p0, Landroidx/appcompat/view/menu/k;->g:Landroid/graphics/Rect;

    .line 480
    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/MenuPopupWindow;->a(Landroid/graphics/Rect;)V

    .line 483
    :goto_e7
    new-instance v2, Landroidx/appcompat/view/menu/d$a;

    iget v3, p0, Landroidx/appcompat/view/menu/d;->t:I

    invoke-direct {v2, v4, p1, v3}, Landroidx/appcompat/view/menu/d$a;-><init>(Landroidx/appcompat/widget/MenuPopupWindow;Landroidx/appcompat/view/menu/g;I)V

    .line 484
    iget-object v3, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    invoke-virtual {v4}, Landroidx/appcompat/widget/MenuPopupWindow;->b_()V

    .line 8947
    iget-object v2, v4, Landroidx/appcompat/widget/u;->e:Landroidx/appcompat/widget/r;

    .line 489
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-nez v1, :cond_124

    .line 492
    iget-boolean p0, p0, Landroidx/appcompat/view/menu/d;->z:Z

    if-eqz p0, :cond_124

    .line 9318
    iget-object p0, p1, Landroidx/appcompat/view/menu/g;->f:Ljava/lang/CharSequence;

    if-eqz p0, :cond_124

    .line 493
    sget p0, Landroidx/appcompat/R$layout;->abc_popup_menu_header_item_layout:I

    invoke-virtual {v0, p0, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    const v0, 0x1020016

    .line 495
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 496
    invoke-virtual {p0, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 10318
    iget-object p1, p1, Landroidx/appcompat/view/menu/g;->f:Ljava/lang/CharSequence;

    .line 497
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    invoke-virtual {v2, p0, v5, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 501
    invoke-virtual {v4}, Landroidx/appcompat/widget/MenuPopupWindow;->b_()V

    :cond_124
    return-void
.end method

.method private d(I)I
    .registers 7

    .line 329
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/d$a;

    .line 3807
    iget-object v0, v0, Landroidx/appcompat/view/menu/d$a;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 3947
    iget-object v0, v0, Landroidx/appcompat/widget/u;->e:Landroidx/appcompat/widget/r;

    const/4 v1, 0x2

    .line 331
    new-array v1, v1, [I

    .line 332
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 334
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 335
    iget-object v4, p0, Landroidx/appcompat/view/menu/d;->d:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 337
    iget p0, p0, Landroidx/appcompat/view/menu/d;->t:I

    const/4 v4, 0x0

    if-ne p0, v2, :cond_37

    .line 338
    aget p0, v1, v4

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    add-int/2addr p0, v0

    add-int/2addr p0, p1

    .line 339
    iget p1, v3, Landroid/graphics/Rect;->right:I

    if-le p0, p1, :cond_36

    return v4

    :cond_36
    return v2

    .line 344
    :cond_37
    aget p0, v1, v4

    sub-int/2addr p0, p1

    if-gez p0, :cond_3d

    return v2

    :cond_3d
    return v4
.end method

.method private g()Landroidx/appcompat/widget/MenuPopupWindow;
    .registers 5

    .line 245
    new-instance v0, Landroidx/appcompat/widget/MenuPopupWindow;

    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->i:Landroid/content/Context;

    iget v2, p0, Landroidx/appcompat/view/menu/d;->k:I

    iget v3, p0, Landroidx/appcompat/view/menu/d;->l:I

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/MenuPopupWindow;-><init>(Landroid/content/Context;II)V

    .line 247
    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->p:Landroidx/appcompat/widget/v;

    .line 2095
    iput-object v1, v0, Landroidx/appcompat/widget/MenuPopupWindow;->a:Landroidx/appcompat/widget/v;

    .line 248
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/MenuPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 249
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/MenuPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 250
    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->s:Landroid/view/View;

    .line 2471
    iput-object v1, v0, Landroidx/appcompat/widget/u;->k:Landroid/view/View;

    .line 251
    iget p0, p0, Landroidx/appcompat/view/menu/d;->r:I

    .line 2539
    iput p0, v0, Landroidx/appcompat/widget/u;->h:I

    .line 252
    invoke-virtual {v0}, Landroidx/appcompat/widget/MenuPopupWindow;->h()V

    .line 253
    invoke-virtual {v0}, Landroidx/appcompat/widget/MenuPopupWindow;->i()V

    return-object v0
.end method

.method private h()I
    .registers 2

    .line 315
    iget-object p0, p0, Landroidx/appcompat/view/menu/d;->s:Landroid/view/View;

    invoke-static {p0}, Landroidx/core/e/r;->c(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    return v0
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    .line 740
    iget v0, p0, Landroidx/appcompat/view/menu/d;->q:I

    if-eq v0, p1, :cond_12

    .line 741
    iput p1, p0, Landroidx/appcompat/view/menu/d;->q:I

    .line 742
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->s:Landroid/view/View;

    .line 743
    invoke-static {v0}, Landroidx/core/e/r;->c(Landroid/view/View;)I

    move-result v0

    .line 742
    invoke-static {p1, v0}, Landroidx/core/e/c;->a(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/d;->r:I

    :cond_12
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .registers 3

    .line 749
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->s:Landroid/view/View;

    if-eq v0, p1, :cond_14

    .line 750
    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->s:Landroid/view/View;

    .line 753
    iget p1, p0, Landroidx/appcompat/view/menu/d;->q:I

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->s:Landroid/view/View;

    .line 754
    invoke-static {v0}, Landroidx/core/e/r;->c(Landroid/view/View;)I

    move-result v0

    .line 753
    invoke-static {p1, v0}, Landroidx/core/e/c;->a(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/d;->r:I

    :cond_14
    return-void
.end method

.method public final a(Landroidx/appcompat/view/menu/g;)V
    .registers 3

    .line 354
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/m;Landroid/content/Context;)V

    .line 356
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/d;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 357
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/d;->c(Landroidx/appcompat/view/menu/g;)V

    return-void

    .line 359
    :cond_f
    iget-object p0, p0, Landroidx/appcompat/view/menu/d;->n:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Landroidx/appcompat/view/menu/g;Z)V
    .registers 9

    .line 15655
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1a

    .line 15656
    iget-object v3, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/d$a;

    .line 15657
    iget-object v3, v3, Landroidx/appcompat/view/menu/d$a;->b:Landroidx/appcompat/view/menu/g;

    if-ne p1, v3, :cond_17

    goto :goto_1b

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1a
    const/4 v2, -0x1

    :goto_1b
    if-gez v2, :cond_1e

    return-void

    :cond_1e
    add-int/lit8 v0, v2, 0x1

    .line 674
    iget-object v3, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_35

    .line 675
    iget-object v3, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/d$a;

    .line 676
    iget-object v0, v0, Landroidx/appcompat/view/menu/d$a;->b:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->a(Z)V

    .line 680
    :cond_35
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/d$a;

    .line 681
    iget-object v2, v0, Landroidx/appcompat/view/menu/d$a;->b:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v2, p0}, Landroidx/appcompat/view/menu/g;->b(Landroidx/appcompat/view/menu/m;)V

    .line 682
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/d;->f:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_5b

    .line 684
    iget-object v2, v0, Landroidx/appcompat/view/menu/d$a;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 16089
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_54

    .line 16090
    iget-object v2, v2, Landroidx/appcompat/widget/MenuPopupWindow;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 685
    :cond_54
    iget-object v2, v0, Landroidx/appcompat/view/menu/d$a;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 16442
    iget-object v2, v2, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 687
    :cond_5b
    iget-object v0, v0, Landroidx/appcompat/view/menu/d$a;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/MenuPopupWindow;->c()V

    .line 689
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_77

    .line 691
    iget-object v2, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/d$a;

    iget v2, v2, Landroidx/appcompat/view/menu/d$a;->c:I

    iput v2, p0, Landroidx/appcompat/view/menu/d;->t:I

    goto :goto_7d

    .line 693
    :cond_77
    invoke-direct {p0}, Landroidx/appcompat/view/menu/d;->h()I

    move-result v2

    iput v2, p0, Landroidx/appcompat/view/menu/d;->t:I

    :goto_7d
    if-nez v0, :cond_ae

    .line 698
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/d;->c()V

    .line 700
    iget-object p2, p0, Landroidx/appcompat/view/menu/d;->A:Landroidx/appcompat/view/menu/m$a;

    if-eqz p2, :cond_8c

    .line 701
    iget-object p2, p0, Landroidx/appcompat/view/menu/d;->A:Landroidx/appcompat/view/menu/m$a;

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Landroidx/appcompat/view/menu/m$a;->a(Landroidx/appcompat/view/menu/g;Z)V

    .line 704
    :cond_8c
    iget-object p1, p0, Landroidx/appcompat/view/menu/d;->e:Landroid/view/ViewTreeObserver;

    if-eqz p1, :cond_a1

    .line 705
    iget-object p1, p0, Landroidx/appcompat/view/menu/d;->e:Landroid/view/ViewTreeObserver;

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_9f

    .line 706
    iget-object p1, p0, Landroidx/appcompat/view/menu/d;->e:Landroid/view/ViewTreeObserver;

    iget-object p2, p0, Landroidx/appcompat/view/menu/d;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 708
    :cond_9f
    iput-object v3, p0, Landroidx/appcompat/view/menu/d;->e:Landroid/view/ViewTreeObserver;

    .line 710
    :cond_a1
    iget-object p1, p0, Landroidx/appcompat/view/menu/d;->d:Landroid/view/View;

    iget-object p2, p0, Landroidx/appcompat/view/menu/d;->o:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 714
    iget-object p0, p0, Landroidx/appcompat/view/menu/d;->B:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {p0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    return-void

    :cond_ae
    if-eqz p2, :cond_bd

    .line 719
    iget-object p0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/d$a;

    .line 720
    iget-object p0, p0, Landroidx/appcompat/view/menu/d$a;->b:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/g;->a(Z)V

    :cond_bd
    return-void
.end method

.method public final a(Landroidx/appcompat/view/menu/m$a;)V
    .registers 2

    .line 623
    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->A:Landroidx/appcompat/view/menu/m$a;

    return-void
.end method

.method public final a(Z)V
    .registers 2

    .line 616
    iget-object p0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/d$a;

    .line 13807
    iget-object p1, p1, Landroidx/appcompat/view/menu/d$a;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 13947
    iget-object p1, p1, Landroidx/appcompat/widget/u;->e:Landroidx/appcompat/widget/r;

    .line 617
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/d;->a(Landroid/widget/ListAdapter;)Landroidx/appcompat/view/menu/f;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/f;->notifyDataSetChanged()V

    goto :goto_6

    :cond_22
    return-void
.end method

.method public final a()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final a(Landroidx/appcompat/view/menu/r;)Z
    .registers 6

    .line 629
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/d$a;

    .line 630
    iget-object v3, v1, Landroidx/appcompat/view/menu/d$a;->b:Landroidx/appcompat/view/menu/g;

    if-ne p1, v3, :cond_6

    .line 14807
    iget-object p0, v1, Landroidx/appcompat/view/menu/d$a;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 14947
    iget-object p0, p0, Landroidx/appcompat/widget/u;->e:Landroidx/appcompat/widget/r;

    .line 632
    invoke-virtual {p0}, Landroid/widget/ListView;->requestFocus()Z

    return v2

    .line 637
    :cond_1f
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/r;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 638
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/d;->a(Landroidx/appcompat/view/menu/g;)V

    .line 640
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->A:Landroidx/appcompat/view/menu/m$a;

    if-eqz v0, :cond_31

    .line 641
    iget-object p0, p0, Landroidx/appcompat/view/menu/d;->A:Landroidx/appcompat/view/menu/m$a;

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/m$a;->a(Landroidx/appcompat/view/menu/g;)Z

    :cond_31
    return v2

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method public final b(I)V
    .registers 3

    const/4 v0, 0x1

    .line 772
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/d;->u:Z

    .line 773
    iput p1, p0, Landroidx/appcompat/view/menu/d;->w:I

    return-void
.end method

.method public final b(Z)V
    .registers 2

    .line 241
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/d;->y:Z

    return-void
.end method

.method public final b_()V
    .registers 3

    .line 259
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/d;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 264
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/g;

    .line 265
    invoke-direct {p0, v1}, Landroidx/appcompat/view/menu/d;->c(Landroidx/appcompat/view/menu/g;)V

    goto :goto_d

    .line 267
    :cond_1d
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 269
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->s:Landroid/view/View;

    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->d:Landroid/view/View;

    .line 271
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->d:Landroid/view/View;

    if-eqz v0, :cond_49

    .line 272
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->e:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_30

    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    .line 273
    :goto_31
    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/view/menu/d;->e:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_42

    .line 275
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->e:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 277
    :cond_42
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->d:Landroid/view/View;

    iget-object p0, p0, Landroidx/appcompat/view/menu/d;->o:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_49
    return-void
.end method

.method public final c()V
    .registers 4

    .line 287
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2a

    .line 289
    iget-object p0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    new-array v1, v0, [Landroidx/appcompat/view/menu/d$a;

    .line 290
    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroidx/appcompat/view/menu/d$a;

    add-int/lit8 v0, v0, -0x1

    :goto_14
    if-ltz v0, :cond_2a

    .line 292
    aget-object v1, p0, v0

    .line 293
    iget-object v2, v1, Landroidx/appcompat/view/menu/d$a;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 2861
    iget-object v2, v2, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 294
    iget-object v1, v1, Landroidx/appcompat/view/menu/d$a;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v1}, Landroidx/appcompat/widget/MenuPopupWindow;->c()V

    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    :cond_2a
    return-void
.end method

.method public final c(I)V
    .registers 3

    const/4 v0, 0x1

    .line 778
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/d;->v:Z

    .line 779
    iput p1, p0, Landroidx/appcompat/view/menu/d;->x:I

    return-void
.end method

.method public final c(Z)V
    .registers 2

    .line 784
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/d;->z:Z

    return-void
.end method

.method public final d()Z
    .registers 3

    .line 588
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1d

    iget-object p0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/d$a;

    iget-object p0, p0, Landroidx/appcompat/view/menu/d$a;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 11861
    iget-object p0, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    return v1
.end method

.method public final e()Landroid/widget/ListView;
    .registers 2

    .line 765
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    iget-object p0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    .line 767
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/d$a;

    .line 16807
    iget-object p0, p0, Landroidx/appcompat/view/menu/d$a;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 16947
    iget-object p0, p0, Landroidx/appcompat/widget/u;->e:Landroidx/appcompat/widget/r;

    return-object p0
.end method

.method protected final f()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final onDismiss()V
    .registers 6

    .line 599
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_20

    .line 600
    iget-object v3, p0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/d$a;

    .line 601
    iget-object v4, v3, Landroidx/appcompat/view/menu/d$a;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 12861
    iget-object v4, v4, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_1d

    goto :goto_21

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_20
    const/4 v3, 0x0

    :goto_21
    if-eqz v3, :cond_28

    .line 610
    iget-object p0, v3, Landroidx/appcompat/view/menu/d$a;->b:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/g;->a(Z)V

    :cond_28
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 302
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_f

    const/16 p1, 0x52

    if-ne p2, p1, :cond_f

    .line 303
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/d;->c()V

    return p3

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2

    .line 760
    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->B:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method
