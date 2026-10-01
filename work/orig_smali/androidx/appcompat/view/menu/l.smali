.class public Landroidx/appcompat/view/menu/l;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"


# instance fields
.field protected a:Landroid/view/View;

.field protected b:I

.field private final c:Landroid/content/Context;

.field private final d:Landroidx/appcompat/view/menu/g;

.field private final e:Z

.field private final f:I

.field private final g:I

.field private h:Z

.field private i:Landroidx/appcompat/view/menu/m$a;

.field private j:Landroidx/appcompat/view/menu/k;

.field private k:Landroid/widget/PopupWindow$OnDismissListener;

.field private final l:Landroid/widget/PopupWindow$OnDismissListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroid/view/View;ZI)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 79
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/l;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroid/view/View;ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroid/view/View;ZII)V
    .registers 8

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x800003

    .line 60
    iput v0, p0, Landroidx/appcompat/view/menu/l;->b:I

    .line 334
    new-instance v0, Landroidx/appcompat/view/menu/l$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/l$1;-><init>(Landroidx/appcompat/view/menu/l;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/l;->l:Landroid/widget/PopupWindow$OnDismissListener;

    .line 85
    iput-object p1, p0, Landroidx/appcompat/view/menu/l;->c:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Landroidx/appcompat/view/menu/l;->d:Landroidx/appcompat/view/menu/g;

    .line 87
    iput-object p3, p0, Landroidx/appcompat/view/menu/l;->a:Landroid/view/View;

    .line 88
    iput-boolean p4, p0, Landroidx/appcompat/view/menu/l;->e:Z

    .line 89
    iput p5, p0, Landroidx/appcompat/view/menu/l;->f:I

    .line 90
    iput p6, p0, Landroidx/appcompat/view/menu/l;->g:I

    return-void
.end method


# virtual methods
.method public final a()Landroidx/appcompat/view/menu/k;
    .registers 15

    .line 156
    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->j:Landroidx/appcompat/view/menu/k;

    if-nez v0, :cond_82

    .line 1224
    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->c:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1226
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1227
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1229
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_21

    .line 1230
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_24

    .line 1232
    :cond_21
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1235
    :goto_24
    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1236
    iget-object v1, p0, Landroidx/appcompat/view/menu/l;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/appcompat/R$dimen;->abc_cascading_menus_min_smallest_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-lt v0, v1, :cond_3c

    const/4 v0, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v0, 0x0

    :goto_3d
    if-eqz v0, :cond_50

    .line 1242
    new-instance v0, Landroidx/appcompat/view/menu/d;

    iget-object v2, p0, Landroidx/appcompat/view/menu/l;->c:Landroid/content/Context;

    iget-object v3, p0, Landroidx/appcompat/view/menu/l;->a:Landroid/view/View;

    iget v4, p0, Landroidx/appcompat/view/menu/l;->f:I

    iget v5, p0, Landroidx/appcompat/view/menu/l;->g:I

    iget-boolean v6, p0, Landroidx/appcompat/view/menu/l;->e:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/appcompat/view/menu/d;-><init>(Landroid/content/Context;Landroid/view/View;IIZ)V

    goto :goto_62

    .line 1245
    :cond_50
    new-instance v0, Landroidx/appcompat/view/menu/q;

    iget-object v8, p0, Landroidx/appcompat/view/menu/l;->c:Landroid/content/Context;

    iget-object v9, p0, Landroidx/appcompat/view/menu/l;->d:Landroidx/appcompat/view/menu/g;

    iget-object v10, p0, Landroidx/appcompat/view/menu/l;->a:Landroid/view/View;

    iget v11, p0, Landroidx/appcompat/view/menu/l;->f:I

    iget v12, p0, Landroidx/appcompat/view/menu/l;->g:I

    iget-boolean v13, p0, Landroidx/appcompat/view/menu/l;->e:Z

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Landroidx/appcompat/view/menu/q;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroid/view/View;IIZ)V

    .line 1250
    :goto_62
    iget-object v1, p0, Landroidx/appcompat/view/menu/l;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/k;->a(Landroidx/appcompat/view/menu/g;)V

    .line 1251
    iget-object v1, p0, Landroidx/appcompat/view/menu/l;->l:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/k;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1254
    iget-object v1, p0, Landroidx/appcompat/view/menu/l;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/k;->a(Landroid/view/View;)V

    .line 1255
    iget-object v1, p0, Landroidx/appcompat/view/menu/l;->i:Landroidx/appcompat/view/menu/m$a;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/k;->a(Landroidx/appcompat/view/menu/m$a;)V

    .line 1256
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/l;->h:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/k;->b(Z)V

    .line 1257
    iget v1, p0, Landroidx/appcompat/view/menu/l;->b:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/k;->a(I)V

    .line 157
    iput-object v0, p0, Landroidx/appcompat/view/menu/l;->j:Landroidx/appcompat/view/menu/k;

    .line 159
    :cond_82
    iget-object p0, p0, Landroidx/appcompat/view/menu/l;->j:Landroidx/appcompat/view/menu/k;

    return-object p0
.end method

.method final a(IIZZ)V
    .registers 7

    .line 263
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l;->a()Landroidx/appcompat/view/menu/k;

    move-result-object v0

    .line 264
    invoke-virtual {v0, p4}, Landroidx/appcompat/view/menu/k;->c(Z)V

    if-eqz p3, :cond_47

    .line 270
    iget p3, p0, Landroidx/appcompat/view/menu/l;->b:I

    iget-object p4, p0, Landroidx/appcompat/view/menu/l;->a:Landroid/view/View;

    .line 271
    invoke-static {p4}, Landroidx/core/e/r;->c(Landroid/view/View;)I

    move-result p4

    .line 270
    invoke-static {p3, p4}, Landroidx/core/e/c;->a(II)I

    move-result p3

    and-int/lit8 p3, p3, 0x7

    const/4 p4, 0x5

    if-ne p3, p4, :cond_21

    .line 273
    iget-object p3, p0, Landroidx/appcompat/view/menu/l;->a:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int/2addr p1, p3

    .line 276
    :cond_21
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/k;->b(I)V

    .line 277
    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/k;->c(I)V

    .line 283
    iget-object p0, p0, Landroidx/appcompat/view/menu/l;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x42400000    # 48.0f

    mul-float/2addr p0, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p0, p3

    float-to-int p0, p0

    .line 285
    new-instance p3, Landroid/graphics/Rect;

    sub-int p4, p1, p0

    sub-int v1, p2, p0

    add-int/2addr p1, p0

    add-int/2addr p2, p0

    invoke-direct {p3, p4, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2071
    iput-object p3, v0, Landroidx/appcompat/view/menu/k;->g:Landroid/graphics/Rect;

    .line 290
    :cond_47
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/k;->b_()V

    return-void
.end method

.method public final a(Landroidx/appcompat/view/menu/m$a;)V
    .registers 3

    .line 325
    iput-object p1, p0, Landroidx/appcompat/view/menu/l;->i:Landroidx/appcompat/view/menu/m$a;

    .line 326
    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->j:Landroidx/appcompat/view/menu/k;

    if-eqz v0, :cond_b

    .line 327
    iget-object p0, p0, Landroidx/appcompat/view/menu/l;->j:Landroidx/appcompat/view/menu/k;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/k;->a(Landroidx/appcompat/view/menu/m$a;)V

    :cond_b
    return-void
.end method

.method public final a(Z)V
    .registers 3

    .line 118
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/l;->h:Z

    .line 119
    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->j:Landroidx/appcompat/view/menu/k;

    if-eqz v0, :cond_b

    .line 120
    iget-object p0, p0, Landroidx/appcompat/view/menu/l;->j:Landroidx/appcompat/view/menu/k;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/k;->b(Z)V

    :cond_b
    return-void
.end method

.method public final b()Z
    .registers 4

    .line 169
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l;->e()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 173
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->a:Landroid/view/View;

    const/4 v2, 0x0

    if-nez v0, :cond_e

    return v2

    .line 177
    :cond_e
    invoke-virtual {p0, v2, v2, v2, v2}, Landroidx/appcompat/view/menu/l;->a(IIZZ)V

    return v1
.end method

.method public final c()V
    .registers 2

    .line 298
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l;->e()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 299
    iget-object p0, p0, Landroidx/appcompat/view/menu/l;->j:Landroidx/appcompat/view/menu/k;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/k;->c()V

    :cond_b
    return-void
.end method

.method protected d()V
    .registers 2

    const/4 v0, 0x0

    .line 312
    iput-object v0, p0, Landroidx/appcompat/view/menu/l;->j:Landroidx/appcompat/view/menu/k;

    .line 314
    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->k:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_c

    .line 315
    iget-object p0, p0, Landroidx/appcompat/view/menu/l;->k:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {p0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_c
    return-void
.end method

.method public final e()Z
    .registers 2

    .line 320
    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->j:Landroidx/appcompat/view/menu/k;

    if-eqz v0, :cond_e

    iget-object p0, p0, Landroidx/appcompat/view/menu/l;->j:Landroidx/appcompat/view/menu/k;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/k;->d()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2

    .line 94
    iput-object p1, p0, Landroidx/appcompat/view/menu/l;->k:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method
