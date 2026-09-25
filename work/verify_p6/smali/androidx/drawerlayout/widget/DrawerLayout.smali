.class public Landroidx/drawerlayout/widget/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/drawerlayout/widget/DrawerLayout$b;,
        Landroidx/drawerlayout/widget/DrawerLayout$a;,
        Landroidx/drawerlayout/widget/DrawerLayout$d;,
        Landroidx/drawerlayout/widget/DrawerLayout$e;,
        Landroidx/drawerlayout/widget/DrawerLayout$SavedState;,
        Landroidx/drawerlayout/widget/DrawerLayout$c;
    }
.end annotation


# static fields
.field static final a:[I

.field static final b:Z

.field private static final l:[I

.field private static final m:Z


# instance fields
.field private A:I

.field private B:Z

.field private C:Landroidx/drawerlayout/widget/DrawerLayout$c;

.field private D:F

.field private E:F

.field private F:Landroid/graphics/drawable/Drawable;

.field private G:Landroid/graphics/drawable/Drawable;

.field private H:Landroid/graphics/drawable/Drawable;

.field private I:Landroid/graphics/drawable/Drawable;

.field private J:Landroid/graphics/drawable/Drawable;

.field private K:Landroid/graphics/drawable/Drawable;

.field private L:Landroid/graphics/drawable/Drawable;

.field private final M:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private N:Landroid/graphics/Rect;

.field private O:Landroid/graphics/Matrix;

.field final c:Landroidx/customview/a/a;

.field final d:Landroidx/customview/a/a;

.field e:I

.field f:Z

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/drawerlayout/widget/DrawerLayout$c;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/lang/CharSequence;

.field i:Ljava/lang/CharSequence;

.field j:Ljava/lang/Object;

.field k:Z

.field private final n:Landroidx/drawerlayout/widget/DrawerLayout$b;

.field private o:F

.field private p:I

.field private q:I

.field private r:F

.field private s:Landroid/graphics/Paint;

.field private final t:Landroidx/drawerlayout/widget/DrawerLayout$e;

.field private final u:Landroidx/drawerlayout/widget/DrawerLayout$e;

.field private v:Z

.field private w:Z

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    .line 104
    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x1010434

    aput v3, v1, v2

    sput-object v1, Landroidx/drawerlayout/widget/DrawerLayout;->l:[I

    .line 184
    new-array v1, v0, [I

    const v3, 0x10100b3

    aput v3, v1, v2

    sput-object v1, Landroidx/drawerlayout/widget/DrawerLayout;->a:[I

    .line 189
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput-boolean v1, Landroidx/drawerlayout/widget/DrawerLayout;->b:Z

    .line 192
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->m:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 306
    invoke-direct {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 310
    invoke-direct {p0, p1, p2, v0}, Landroidx/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 314
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 195
    new-instance p2, Landroidx/drawerlayout/widget/DrawerLayout$b;

    invoke-direct {p2}, Landroidx/drawerlayout/widget/DrawerLayout$b;-><init>()V

    iput-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->n:Landroidx/drawerlayout/widget/DrawerLayout$b;

    const/high16 p2, -0x67000000

    .line 201
    iput p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->q:I

    .line 203
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->s:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 211
    iput-boolean p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->w:Z

    const/4 p3, 0x3

    .line 213
    iput p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->x:I

    .line 214
    iput p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->y:I

    .line 215
    iput p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->z:I

    .line 216
    iput p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->A:I

    const/4 v0, 0x0

    .line 238
    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->I:Landroid/graphics/drawable/Drawable;

    .line 239
    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->J:Landroid/graphics/drawable/Drawable;

    .line 240
    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->K:Landroid/graphics/drawable/Drawable;

    .line 241
    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->L:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x40000

    .line 315
    invoke-virtual {p0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDescendantFocusability(I)V

    .line 316
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42800000    # 64.0f

    mul-float/2addr v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 317
    iput v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->p:I

    const/high16 v2, 0x43c80000    # 400.0f

    mul-float/2addr v2, v1

    .line 320
    new-instance v3, Landroidx/drawerlayout/widget/DrawerLayout$e;

    invoke-direct {v3, p0, p3}, Landroidx/drawerlayout/widget/DrawerLayout$e;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;I)V

    iput-object v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->t:Landroidx/drawerlayout/widget/DrawerLayout$e;

    .line 321
    new-instance p3, Landroidx/drawerlayout/widget/DrawerLayout$e;

    const/4 v3, 0x5

    invoke-direct {p3, p0, v3}, Landroidx/drawerlayout/widget/DrawerLayout$e;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;I)V

    iput-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->u:Landroidx/drawerlayout/widget/DrawerLayout$e;

    .line 323
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->t:Landroidx/drawerlayout/widget/DrawerLayout$e;

    invoke-static {p0, p3}, Landroidx/customview/a/a;->a(Landroid/view/ViewGroup;Landroidx/customview/a/a$a;)Landroidx/customview/a/a;

    move-result-object p3

    iput-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->c:Landroidx/customview/a/a;

    .line 324
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->c:Landroidx/customview/a/a;

    .line 2447
    iput p2, p3, Landroidx/customview/a/a;->k:I

    .line 325
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->c:Landroidx/customview/a/a;

    .line 3411
    iput v2, p3, Landroidx/customview/a/a;->i:F

    .line 326
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->t:Landroidx/drawerlayout/widget/DrawerLayout$e;

    iget-object v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->c:Landroidx/customview/a/a;

    .line 4157
    iput-object v3, p3, Landroidx/drawerlayout/widget/DrawerLayout$e;->b:Landroidx/customview/a/a;

    .line 328
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->u:Landroidx/drawerlayout/widget/DrawerLayout$e;

    invoke-static {p0, p3}, Landroidx/customview/a/a;->a(Landroid/view/ViewGroup;Landroidx/customview/a/a$a;)Landroidx/customview/a/a;

    move-result-object p3

    iput-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->d:Landroidx/customview/a/a;

    .line 329
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->d:Landroidx/customview/a/a;

    const/4 v3, 0x2

    .line 4447
    iput v3, p3, Landroidx/customview/a/a;->k:I

    .line 330
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->d:Landroidx/customview/a/a;

    .line 5411
    iput v2, p3, Landroidx/customview/a/a;->i:F

    .line 331
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->u:Landroidx/drawerlayout/widget/DrawerLayout$e;

    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->d:Landroidx/customview/a/a;

    .line 6157
    iput-object v2, p3, Landroidx/drawerlayout/widget/DrawerLayout$e;->b:Landroidx/customview/a/a;

    .line 334
    invoke-virtual {p0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->setFocusableInTouchMode(Z)V

    .line 336
    invoke-static {p0, p2}, Landroidx/core/e/r;->a(Landroid/view/View;I)V

    .line 339
    new-instance p2, Landroidx/drawerlayout/widget/DrawerLayout$a;

    invoke-direct {p2, p0}, Landroidx/drawerlayout/widget/DrawerLayout$a;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;)V

    invoke-static {p0, p2}, Landroidx/core/e/r;->a(Landroid/view/View;Landroidx/core/e/a;)V

    const/4 p2, 0x0

    .line 340
    invoke-virtual {p0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->setMotionEventSplittingEnabled(Z)V

    .line 341
    invoke-static {p0}, Landroidx/core/e/r;->k(Landroid/view/View;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 342
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt p3, v2, :cond_0

    .line 343
    new-instance p3, Landroidx/drawerlayout/widget/DrawerLayout$1;

    invoke-direct {p3, p0}, Landroidx/drawerlayout/widget/DrawerLayout$1;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;)V

    invoke-virtual {p0, p3}, Landroidx/drawerlayout/widget/DrawerLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const/16 p3, 0x500

    .line 351
    invoke-virtual {p0, p3}, Landroidx/drawerlayout/widget/DrawerLayout;->setSystemUiVisibility(I)V

    .line 353
    sget-object p3, Landroidx/drawerlayout/widget/DrawerLayout;->l:[I

    invoke-virtual {p1, p3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 355
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->F:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0

    .line 360
    :cond_0
    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->F:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_0
    const/high16 p1, 0x41200000    # 10.0f

    mul-float/2addr v1, p1

    .line 364
    iput v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->o:F

    .line 366
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->M:Ljava/util/ArrayList;

    return-void
.end method

.method private a(II)V
    .locals 3

    .line 577
    invoke-static {p0}, Landroidx/core/e/r;->c(Landroid/view/View;)I

    move-result v0

    .line 576
    invoke-static {p2, v0}, Landroidx/core/e/c;->a(II)I

    move-result v0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_3

    const/4 v2, 0x5

    if-eq p2, v2, :cond_2

    const v2, 0x800003

    if-eq p2, v2, :cond_1

    const v2, 0x800005

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 590
    :cond_0
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->A:I

    goto :goto_0

    .line 587
    :cond_1
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->z:I

    goto :goto_0

    .line 584
    :cond_2
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->y:I

    goto :goto_0

    .line 581
    :cond_3
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->x:I

    :goto_0
    if-eqz p1, :cond_5

    if-ne v0, v1, :cond_4

    .line 596
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->c:Landroidx/customview/a/a;

    goto :goto_1

    :cond_4
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->d:Landroidx/customview/a/a;

    .line 597
    :goto_1
    invoke-virtual {p2}, Landroidx/customview/a/a;->a()V

    :cond_5
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 601
    :pswitch_0
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 7678
    invoke-direct {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->h(Landroid/view/View;)V

    return-void

    .line 607
    :pswitch_1
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 7747
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->e(Landroid/view/View;)V

    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Z)V
    .locals 9

    .line 1642
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_3

    .line 1644
    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1645
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/drawerlayout/widget/DrawerLayout$d;

    .line 1647
    invoke-static {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz p1, :cond_0

    iget-boolean v6, v5, Landroidx/drawerlayout/widget/DrawerLayout$d;->c:Z

    if-eqz v6, :cond_2

    .line 1651
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    const/4 v7, 0x3

    .line 1653
    invoke-virtual {p0, v4, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1654
    iget-object v7, p0, Landroidx/drawerlayout/widget/DrawerLayout;->c:Landroidx/customview/a/a;

    neg-int v6, v6

    .line 1655
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1654
    invoke-virtual {v7, v4, v6, v8}, Landroidx/customview/a/a;->a(Landroid/view/View;II)Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_1

    .line 1657
    :cond_1
    iget-object v6, p0, Landroidx/drawerlayout/widget/DrawerLayout;->d:Landroidx/customview/a/a;

    .line 1658
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1657
    invoke-virtual {v6, v4, v7, v8}, Landroidx/customview/a/a;->a(Landroid/view/View;II)Z

    move-result v4

    or-int/2addr v3, v4

    .line 1661
    :goto_1
    iput-boolean v1, v5, Landroidx/drawerlayout/widget/DrawerLayout$d;->c:Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1664
    :cond_3
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->t:Landroidx/drawerlayout/widget/DrawerLayout$e;

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout$e;->b()V

    .line 1665
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->u:Landroidx/drawerlayout/widget/DrawerLayout$e;

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout$e;->b()V

    if-eqz v3, :cond_4

    .line 1668
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    :cond_4
    return-void
.end method

.method private static a(Landroid/graphics/drawable/Drawable;I)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 1208
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1212
    :cond_0
    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;I)Z

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method static b(Landroid/view/View;)F
    .locals 0

    .line 937
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/drawerlayout/widget/DrawerLayout$d;

    iget p0, p0, Landroidx/drawerlayout/widget/DrawerLayout$d;->b:F

    return p0
.end method

.method private b()Landroid/view/View;
    .locals 5

    .line 955
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 957
    invoke-virtual {p0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 958
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/drawerlayout/widget/DrawerLayout$d;

    .line 959
    iget v3, v3, Landroidx/drawerlayout/widget/DrawerLayout$d;->d:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static d(Landroid/view/View;)Z
    .locals 2

    .line 1468
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$d;

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$d;->a:I

    .line 1470
    invoke-static {p0}, Landroidx/core/e/r;->c(Landroid/view/View;)I

    move-result p0

    .line 1469
    invoke-static {v0, p0}, Landroidx/core/e/c;->a(II)I

    move-result p0

    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 p0, p0, 0x5

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static f(Landroid/view/View;)Z
    .locals 2

    .line 2085
    invoke-static {p0}, Landroidx/core/e/r;->b(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2087
    invoke-static {p0}, Landroidx/core/e/r;->b(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static g(Landroid/view/View;)Z
    .locals 0

    .line 1464
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/drawerlayout/widget/DrawerLayout$d;

    iget p0, p0, Landroidx/drawerlayout/widget/DrawerLayout$d;->a:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private h(Landroid/view/View;)V
    .locals 3

    .line 1688
    invoke-static {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1692
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$d;

    .line 1693
    iget-boolean v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->w:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1694
    iput v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$d;->b:F

    const/4 v1, 0x1

    .line 1695
    iput v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$d;->d:I

    .line 1697
    invoke-virtual {p0, p1, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;Z)V

    goto :goto_0

    .line 1699
    :cond_0
    iget v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$d;->d:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$d;->d:I

    const/4 v0, 0x3

    .line 1701
    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1702
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->c:Landroidx/customview/a/a;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroidx/customview/a/a;->a(Landroid/view/View;II)Z

    goto :goto_0

    .line 1704
    :cond_1
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->d:Landroidx/customview/a/a;

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1705
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1704
    invoke-virtual {v0, p1, v1, v2}, Landroidx/customview/a/a;->a(Landroid/view/View;II)Z

    .line 1712
    :goto_0
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    return-void

    .line 1689
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "View "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a sliding drawer"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Landroid/view/View;)I
    .locals 3

    .line 709
    invoke-static {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 712
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$d;

    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$d;->a:I

    .line 8652
    invoke-static {p0}, Landroidx/core/e/r;->c(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_9

    const/4 v2, 0x5

    if-eq p1, v2, :cond_6

    const v2, 0x800003

    if-eq p1, v2, :cond_3

    const v2, 0x800005

    if-eq p1, v2, :cond_0

    goto :goto_4

    .line 8686
    :cond_0
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->A:I

    if-eq p1, v1, :cond_1

    .line 8687
    iget p0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->A:I

    return p0

    :cond_1
    if-nez v0, :cond_2

    .line 8689
    iget p0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->y:I

    goto :goto_0

    :cond_2
    iget p0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->x:I

    :goto_0
    if-eq p0, v1, :cond_c

    return p0

    .line 8676
    :cond_3
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->z:I

    if-eq p1, v1, :cond_4

    .line 8677
    iget p0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->z:I

    return p0

    :cond_4
    if-nez v0, :cond_5

    .line 8679
    iget p0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->x:I

    goto :goto_1

    :cond_5
    iget p0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->y:I

    :goto_1
    if-eq p0, v1, :cond_c

    return p0

    .line 8666
    :cond_6
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->y:I

    if-eq p1, v1, :cond_7

    .line 8667
    iget p0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->y:I

    return p0

    :cond_7
    if-nez v0, :cond_8

    .line 8669
    iget p0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->A:I

    goto :goto_2

    :cond_8
    iget p0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->z:I

    :goto_2
    if-eq p0, v1, :cond_c

    return p0

    .line 8656
    :cond_9
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->x:I

    if-eq p1, v1, :cond_a

    .line 8657
    iget p0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->x:I

    return p0

    :cond_a
    if-nez v0, :cond_b

    .line 8659
    iget p0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->z:I

    goto :goto_3

    :cond_b
    iget p0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->A:I

    :goto_3
    if-eq p0, v1, :cond_c

    return p0

    :cond_c
    :goto_4
    const/4 p0, 0x0

    return p0

    .line 710
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "View "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a drawer"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method final a()Landroid/view/View;
    .locals 6

    .line 1949
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 1951
    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1952
    invoke-static {v3}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 13852
    invoke-static {v3}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 13855
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/drawerlayout/widget/DrawerLayout$d;

    iget v4, v4, Landroidx/drawerlayout/widget/DrawerLayout$d;->b:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    if-eqz v4, :cond_2

    return-object v3

    .line 13853
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "View "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not a drawer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method final a(I)Landroid/view/View;
    .locals 4

    .line 986
    invoke-static {p0}, Landroidx/core/e/r;->c(Landroid/view/View;)I

    move-result v0

    .line 985
    invoke-static {p1, v0}, Landroidx/core/e/c;->a(II)I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    .line 987
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 989
    invoke-virtual {p0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 990
    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->c(Landroid/view/View;)I

    move-result v3

    and-int/lit8 v3, v3, 0x7

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method final a(Landroid/view/View;F)V
    .locals 1

    .line 927
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$d;

    .line 928
    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$d;->b:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    return-void

    .line 932
    :cond_0
    iput p2, p1, Landroidx/drawerlayout/widget/DrawerLayout$d;->b:F

    .line 8916
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->g:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 8919
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 8921
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->g:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method final a(Landroid/view/View;Z)V
    .locals 4

    .line 900
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 902
    invoke-virtual {p0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez p2, :cond_0

    .line 903
    invoke-static {v2}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    if-ne v2, p1, :cond_2

    :cond_1
    const/4 v3, 0x1

    .line 906
    invoke-static {v2, v3}, Landroidx/core/e/r;->a(Landroid/view/View;I)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x4

    .line 909
    invoke-static {v2, v3}, Landroidx/core/e/r;->a(Landroid/view/View;I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method final a(Landroid/view/View;I)Z
    .locals 0

    .line 950
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->c(Landroid/view/View;)I

    move-result p0

    and-int/2addr p0, p2

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 1911
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    return-void

    .line 1917
    :cond_0
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_5

    .line 1920
    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1921
    invoke-static {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 13819
    invoke-static {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 13822
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/drawerlayout/widget/DrawerLayout$d;

    .line 13823
    iget v5, v5, Landroidx/drawerlayout/widget/DrawerLayout$d;->d:I

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    if-eqz v5, :cond_4

    .line 1924
    invoke-virtual {v4, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    move v3, v6

    goto :goto_2

    .line 13820
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "View "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not a drawer"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1927
    :cond_3
    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->M:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_7

    .line 1932
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    if-ge v1, v0, :cond_7

    .line 1934
    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->M:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1935
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6

    .line 1936
    invoke-virtual {v2, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1941
    :cond_7
    iget-object p0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->M:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 2057
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2059
    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->b()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1

    .line 2060
    invoke-static {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 2068
    invoke-static {p1, p2}, Landroidx/core/e/r;->a(Landroid/view/View;I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x4

    .line 2063
    invoke-static {p1, p2}, Landroidx/core/e/r;->a(Landroid/view/View;I)V

    .line 2074
    :goto_1
    sget-boolean p2, Landroidx/drawerlayout/widget/DrawerLayout;->b:Z

    if-nez p2, :cond_2

    .line 2075
    iget-object p0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->n:Landroidx/drawerlayout/widget/DrawerLayout$b;

    invoke-static {p1, p0}, Landroidx/core/e/r;->a(Landroid/view/View;Landroidx/core/e/a;)V

    :cond_2
    return-void
.end method

.method final c(Landroid/view/View;)I
    .locals 0

    .line 945
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$d;

    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$d;->a:I

    .line 946
    invoke-static {p0}, Landroidx/core/e/r;->c(Landroid/view/View;)I

    move-result p0

    invoke-static {p1, p0}, Landroidx/core/e/c;->a(II)I

    move-result p0

    return p0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1901
    instance-of v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$d;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public computeScroll()V
    .locals 4

    .line 1309
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1312
    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/drawerlayout/widget/DrawerLayout$d;

    iget v3, v3, Landroidx/drawerlayout/widget/DrawerLayout$d;->b:F

    .line 1313
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1315
    :cond_0
    iput v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->r:F

    .line 1317
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->c:Landroidx/customview/a/a;

    invoke-virtual {v0}, Landroidx/customview/a/a;->b()Z

    move-result v0

    .line 1318
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->d:Landroidx/customview/a/a;

    invoke-virtual {v1}, Landroidx/customview/a/a;->b()Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 1320
    :cond_1
    invoke-static {p0}, Landroidx/core/e/r;->a(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1536
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    .line 1537
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->r:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto/16 :goto_2

    .line 1542
    :cond_0
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_6

    .line 1544
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1545
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    :goto_0
    if-ltz v0, :cond_6

    .line 1549
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 12761
    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->N:Landroid/graphics/Rect;

    if-nez v5, :cond_1

    .line 12762
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->N:Landroid/graphics/Rect;

    .line 12764
    :cond_1
    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->N:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 12765
    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->N:Landroid/graphics/Rect;

    float-to-int v6, v1

    float-to-int v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1553
    invoke-static {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 12774
    invoke-virtual {v4}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 12775
    invoke-virtual {v5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v5

    if-nez v5, :cond_4

    .line 12794
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getScrollX()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 12795
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getScrollY()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 12796
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    .line 12797
    invoke-virtual {v7, v5, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 12798
    invoke-virtual {v4}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 12799
    invoke-virtual {v5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v6

    if-nez v6, :cond_3

    .line 12800
    iget-object v6, p0, Landroidx/drawerlayout/widget/DrawerLayout;->O:Landroid/graphics/Matrix;

    if-nez v6, :cond_2

    .line 12801
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, p0, Landroidx/drawerlayout/widget/DrawerLayout;->O:Landroid/graphics/Matrix;

    .line 12803
    :cond_2
    iget-object v6, p0, Landroidx/drawerlayout/widget/DrawerLayout;->O:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 12804
    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->O:Landroid/graphics/Matrix;

    invoke-virtual {v7, v5}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 12777
    :cond_3
    invoke-virtual {v4, v7}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 12778
    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1

    .line 12780
    :cond_4
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getScrollX()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 12781
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getScrollY()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 12782
    invoke-virtual {p1, v5, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 12783
    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    neg-float v5, v5

    neg-float v6, v6

    .line 12784
    invoke-virtual {p1, v5, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :goto_1
    if-eqz v4, :cond_5

    return v3

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_6
    const/4 p0, 0x0

    return p0

    .line 1539
    :cond_7
    :goto_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1401
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getHeight()I

    move-result v3

    .line 1402
    invoke-static/range {p2 .. p2}, Landroidx/drawerlayout/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v4

    .line 1403
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v5

    .line 1405
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eqz v4, :cond_4

    .line 1407
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v9

    move v11, v5

    move v5, v8

    move v10, v5

    :goto_0
    if-ge v5, v9, :cond_3

    .line 1409
    invoke-virtual {p0, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    if-eq v12, v2, :cond_2

    .line 1410
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_2

    .line 9325
    invoke-virtual {v12}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 9327
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_0

    const/4 v13, 0x1

    goto :goto_1

    :cond_0
    move v13, v8

    :goto_1
    if-eqz v13, :cond_2

    .line 1411
    invoke-static {v12}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1412
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v13

    if-lt v13, v3, :cond_2

    .line 1416
    invoke-virtual {p0, v12, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1417
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v12

    if-le v12, v10, :cond_2

    move v10, v12

    goto :goto_2

    .line 1420
    :cond_1
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v12

    if-ge v12, v11, :cond_2

    move v11, v12

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1424
    :cond_3
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getHeight()I

    move-result v3

    invoke-virtual {v1, v10, v8, v11, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move v8, v10

    goto :goto_3

    :cond_4
    move v11, v5

    .line 1426
    :goto_3
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v9

    .line 1427
    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1429
    iget v3, v0, Landroidx/drawerlayout/widget/DrawerLayout;->r:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_5

    if-eqz v4, :cond_5

    .line 1430
    iget v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;->q:I

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    ushr-int/lit8 v2, v2, 0x18

    int-to-float v2, v2

    .line 1431
    iget v3, v0, Landroidx/drawerlayout/widget/DrawerLayout;->r:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x18

    .line 1432
    iget v3, v0, Landroidx/drawerlayout/widget/DrawerLayout;->q:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 1433
    iget-object v3, v0, Landroidx/drawerlayout/widget/DrawerLayout;->s:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v8

    const/4 v3, 0x0

    int-to-float v4, v11

    .line 1435
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Landroidx/drawerlayout/widget/DrawerLayout;->s:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 1436
    :cond_5
    iget-object v3, v0, Landroidx/drawerlayout/widget/DrawerLayout;->G:Landroid/graphics/drawable/Drawable;

    const/high16 v4, 0x437f0000    # 255.0f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v3, :cond_6

    .line 1437
    invoke-virtual {p0, v2, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1438
    iget-object v3, v0, Landroidx/drawerlayout/widget/DrawerLayout;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 1439
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v7

    .line 1440
    iget-object v8, v0, Landroidx/drawerlayout/widget/DrawerLayout;->c:Landroidx/customview/a/a;

    .line 9459
    iget v8, v8, Landroidx/customview/a/a;->j:I

    int-to-float v10, v7

    int-to-float v8, v8

    div-float/2addr v10, v8

    .line 1442
    invoke-static {v10, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1443
    iget-object v6, v0, Landroidx/drawerlayout/widget/DrawerLayout;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v8

    add-int/2addr v3, v7

    .line 1444
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1443
    invoke-virtual {v6, v7, v8, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1445
    iget-object v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;->G:Landroid/graphics/drawable/Drawable;

    mul-float/2addr v5, v4

    float-to-int v3, v5

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1446
    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 1447
    :cond_6
    iget-object v3, v0, Landroidx/drawerlayout/widget/DrawerLayout;->H:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_7

    const/4 v3, 0x5

    .line 1448
    invoke-virtual {p0, v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1449
    iget-object v3, v0, Landroidx/drawerlayout/widget/DrawerLayout;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 1450
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 1451
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v8

    sub-int/2addr v8, v7

    .line 1452
    iget-object v10, v0, Landroidx/drawerlayout/widget/DrawerLayout;->d:Landroidx/customview/a/a;

    .line 10459
    iget v10, v10, Landroidx/customview/a/a;->j:I

    int-to-float v8, v8

    int-to-float v10, v10

    div-float/2addr v8, v10

    .line 1454
    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1455
    iget-object v6, v0, Landroidx/drawerlayout/widget/DrawerLayout;->H:Landroid/graphics/drawable/Drawable;

    sub-int v3, v7, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1456
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1455
    invoke-virtual {v6, v3, v8, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1457
    iget-object v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;->H:Landroid/graphics/drawable/Drawable;

    mul-float/2addr v5, v4

    float-to-int v3, v5

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1458
    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    :goto_4
    return v9
.end method

.method public final e(Landroid/view/View;)V
    .locals 3

    .line 1757
    invoke-static {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1761
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$d;

    .line 1762
    iget-boolean v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->w:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 1763
    iput p1, v0, Landroidx/drawerlayout/widget/DrawerLayout$d;->b:F

    const/4 p1, 0x0

    .line 1764
    iput p1, v0, Landroidx/drawerlayout/widget/DrawerLayout$d;->d:I

    goto :goto_0

    .line 1766
    :cond_0
    iget v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$d;->d:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$d;->d:I

    const/4 v0, 0x3

    .line 1768
    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1769
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->c:Landroidx/customview/a/a;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    .line 1770
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1769
    invoke-virtual {v0, p1, v1, v2}, Landroidx/customview/a/a;->a(Landroid/view/View;II)Z

    goto :goto_0

    .line 1772
    :cond_1
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->d:Landroidx/customview/a/a;

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroidx/customview/a/a;->a(Landroid/view/View;II)Z

    .line 1779
    :goto_0
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    return-void

    .line 1758
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "View "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a sliding drawer"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1887
    new-instance p0, Landroidx/drawerlayout/widget/DrawerLayout$d;

    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout$d;-><init>()V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1906
    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$d;

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout$d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1892
    instance-of p0, p1, Landroidx/drawerlayout/widget/DrawerLayout$d;

    if-eqz p0, :cond_0

    new-instance p0, Landroidx/drawerlayout/widget/DrawerLayout$d;

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$d;

    invoke-direct {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout$d;-><init>(Landroidx/drawerlayout/widget/DrawerLayout$d;)V

    return-object p0

    :cond_0
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_1

    new-instance p0, Landroidx/drawerlayout/widget/DrawerLayout$d;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout$d;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    :cond_1
    new-instance p0, Landroidx/drawerlayout/widget/DrawerLayout$d;

    invoke-direct {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout$d;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getDrawerElevation()F
    .locals 1

    .line 393
    sget-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->m:Z

    if-eqz v0, :cond_0

    .line 394
    iget p0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->o:F

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getStatusBarBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1350
    iget-object p0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->F:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1022
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 1023
    iput-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->w:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1016
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    .line 1017
    iput-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->w:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1383
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1384
    iget-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->F:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1386
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 1387
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->j:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->j:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    .line 1388
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-lez v0, :cond_1

    .line 1393
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->F:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1394
    iget-object p0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->F:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1485
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1488
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->c:Landroidx/customview/a/a;

    invoke-virtual {v1, p1}, Landroidx/customview/a/a;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->d:Landroidx/customview/a/a;

    .line 1489
    invoke-virtual {v2, p1}, Landroidx/customview/a/a;->a(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 1512
    :pswitch_0
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->c:Landroidx/customview/a/a;

    .line 11334
    iget-object v0, p1, Landroidx/customview/a/a;->d:[F

    array-length v0, v0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_2

    .line 11359
    invoke-virtual {p1, v4}, Landroidx/customview/a/a;->a(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 11366
    iget-object v5, p1, Landroidx/customview/a/a;->f:[F

    aget v5, v5, v4

    iget-object v6, p1, Landroidx/customview/a/a;->d:[F

    aget v6, v6, v4

    sub-float/2addr v5, v6

    .line 11367
    iget-object v6, p1, Landroidx/customview/a/a;->g:[F

    aget v6, v6, v4

    iget-object v7, p1, Landroidx/customview/a/a;->e:[F

    aget v7, v7, v4

    sub-float/2addr v6, v7

    mul-float/2addr v5, v5

    mul-float/2addr v6, v6

    add-float/2addr v5, v6

    .line 11370
    iget v6, p1, Landroidx/customview/a/a;->b:I

    iget v7, p1, Landroidx/customview/a/a;->b:I

    mul-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    move v5, v2

    goto :goto_1

    :cond_0
    move v5, v3

    :goto_1
    if-eqz v5, :cond_1

    move p1, v2

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move p1, v3

    :goto_2
    if-eqz p1, :cond_4

    .line 1513
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->t:Landroidx/drawerlayout/widget/DrawerLayout$e;

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout$e;->b()V

    .line 1514
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->u:Landroidx/drawerlayout/widget/DrawerLayout$e;

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout$e;->b()V

    goto :goto_4

    .line 1521
    :pswitch_1
    invoke-direct {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Z)V

    .line 1522
    iput-boolean v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->B:Z

    .line 1523
    iput-boolean v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->f:Z

    goto :goto_4

    .line 1495
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1496
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1497
    iput v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->D:F

    .line 1498
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->E:F

    .line 1499
    iget v4, p0, Landroidx/drawerlayout/widget/DrawerLayout;->r:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 1500
    iget-object v4, p0, Landroidx/drawerlayout/widget/DrawerLayout;->c:Landroidx/customview/a/a;

    float-to-int v0, v0

    float-to-int p1, p1

    invoke-virtual {v4, v0, p1}, Landroidx/customview/a/a;->a(II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1501
    invoke-static {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_3

    :cond_3
    move p1, v3

    .line 1505
    :goto_3
    iput-boolean v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->B:Z

    .line 1506
    iput-boolean v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->f:Z

    goto :goto_5

    :cond_4
    :goto_4
    move p1, v3

    :goto_5
    if-nez v1, :cond_8

    if-nez p1, :cond_8

    .line 11875
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result p1

    move v0, v3

    :goto_6
    if-ge v0, p1, :cond_6

    .line 11877
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/drawerlayout/widget/DrawerLayout$d;

    .line 11878
    iget-boolean v1, v1, Landroidx/drawerlayout/widget/DrawerLayout$d;->c:Z

    if-eqz v1, :cond_5

    move p1, v2

    goto :goto_7

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    move p1, v3

    :goto_7
    if-nez p1, :cond_8

    .line 1527
    iget-boolean p0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->f:Z

    if-eqz p0, :cond_7

    goto :goto_8

    :cond_7
    return v3

    :cond_8
    :goto_8
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 13945
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->a()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1977
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    return v1

    .line 1980
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1986
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->a()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 1987
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 14637
    invoke-direct {p0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Z)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return p2

    .line 1992
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 15

    move-object v0, p0

    const/4 v2, 0x1

    .line 1218
    iput-boolean v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;->v:Z

    sub-int v3, p4, p2

    .line 1220
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_a

    .line 1222
    invoke-virtual {p0, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1224
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_9

    .line 1228
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/drawerlayout/widget/DrawerLayout$d;

    .line 1230
    invoke-static {v7}, Landroidx/drawerlayout/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1231
    iget v9, v8, Landroidx/drawerlayout/widget/DrawerLayout$d;->leftMargin:I

    iget v10, v8, Landroidx/drawerlayout/widget/DrawerLayout$d;->topMargin:I

    iget v11, v8, Landroidx/drawerlayout/widget/DrawerLayout$d;->leftMargin:I

    .line 1232
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v11, v12

    iget v8, v8, Landroidx/drawerlayout/widget/DrawerLayout$d;->topMargin:I

    .line 1233
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v8, v12

    .line 1231
    invoke-virtual {v7, v9, v10, v11, v8}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_6

    .line 1235
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1236
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    const/4 v11, 0x3

    .line 1240
    invoke-virtual {p0, v7, v11}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v11

    if-eqz v11, :cond_1

    neg-int v11, v9

    int-to-float v12, v9

    .line 1241
    iget v13, v8, Landroidx/drawerlayout/widget/DrawerLayout$d;->b:F

    mul-float/2addr v13, v12

    float-to-int v13, v13

    add-int/2addr v11, v13

    add-int v13, v9, v11

    int-to-float v13, v13

    div-float/2addr v13, v12

    goto :goto_1

    :cond_1
    int-to-float v11, v9

    .line 1244
    iget v12, v8, Landroidx/drawerlayout/widget/DrawerLayout$d;->b:F

    mul-float/2addr v12, v11

    float-to-int v12, v12

    sub-int v12, v3, v12

    sub-int v13, v3, v12

    int-to-float v13, v13

    div-float/2addr v13, v11

    move v11, v12

    .line 1248
    :goto_1
    iget v12, v8, Landroidx/drawerlayout/widget/DrawerLayout$d;->b:F

    cmpl-float v12, v13, v12

    if-eqz v12, :cond_2

    move v12, v2

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    .line 1250
    :goto_2
    iget v14, v8, Landroidx/drawerlayout/widget/DrawerLayout$d;->a:I

    and-int/lit8 v14, v14, 0x70

    const/16 v2, 0x10

    if-eq v14, v2, :cond_4

    const/16 v2, 0x50

    if-eq v14, v2, :cond_3

    .line 1255
    iget v2, v8, Landroidx/drawerlayout/widget/DrawerLayout$d;->topMargin:I

    add-int/2addr v9, v11

    iget v14, v8, Landroidx/drawerlayout/widget/DrawerLayout$d;->topMargin:I

    add-int/2addr v14, v10

    invoke-virtual {v7, v11, v2, v9, v14}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    :cond_3
    sub-int v2, p5, p3

    .line 1262
    iget v10, v8, Landroidx/drawerlayout/widget/DrawerLayout$d;->bottomMargin:I

    sub-int v10, v2, v10

    .line 1263
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v10, v14

    add-int/2addr v9, v11

    iget v14, v8, Landroidx/drawerlayout/widget/DrawerLayout$d;->bottomMargin:I

    sub-int/2addr v2, v14

    .line 1262
    invoke-virtual {v7, v11, v10, v9, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    :cond_4
    sub-int v2, p5, p3

    sub-int v14, v2, v10

    .line 1271
    div-int/lit8 v14, v14, 0x2

    .line 1275
    iget v5, v8, Landroidx/drawerlayout/widget/DrawerLayout$d;->topMargin:I

    if-ge v14, v5, :cond_5

    .line 1276
    iget v14, v8, Landroidx/drawerlayout/widget/DrawerLayout$d;->topMargin:I

    goto :goto_3

    :cond_5
    add-int v5, v14, v10

    .line 1277
    iget v1, v8, Landroidx/drawerlayout/widget/DrawerLayout$d;->bottomMargin:I

    sub-int v1, v2, v1

    if-le v5, v1, :cond_6

    .line 1278
    iget v1, v8, Landroidx/drawerlayout/widget/DrawerLayout$d;->bottomMargin:I

    sub-int/2addr v2, v1

    sub-int v14, v2, v10

    :cond_6
    :goto_3
    add-int/2addr v9, v11

    add-int/2addr v10, v14

    .line 1280
    invoke-virtual {v7, v11, v14, v9, v10}, Landroid/view/View;->layout(IIII)V

    :goto_4
    if-eqz v12, :cond_7

    .line 1287
    invoke-virtual {p0, v7, v13}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;F)V

    .line 1290
    :cond_7
    iget v1, v8, Landroidx/drawerlayout/widget/DrawerLayout$d;->b:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    const/4 v5, 0x0

    goto :goto_5

    :cond_8
    const/4 v5, 0x4

    .line 1291
    :goto_5
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v5, :cond_9

    .line 1292
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    :goto_6
    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x0

    .line 1296
    iput-boolean v1, v0, Landroidx/drawerlayout/widget/DrawerLayout;->v:Z

    .line 1297
    iput-boolean v1, v0, Landroidx/drawerlayout/widget/DrawerLayout;->w:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 17
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1029
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1030
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1031
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 1032
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    const/16 v5, 0x12c

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v1, v6, :cond_0

    if-eq v2, v6, :cond_2

    .line 1035
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/drawerlayout/widget/DrawerLayout;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_16

    const/high16 v7, -0x80000000

    if-eq v1, v7, :cond_1

    if-nez v1, :cond_1

    move v3, v5

    :cond_1
    if-eq v2, v7, :cond_2

    if-nez v2, :cond_2

    move v4, v5

    .line 1058
    :cond_2
    invoke-virtual {v0, v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->setMeasuredDimension(II)V

    .line 1060
    iget-object v1, v0, Landroidx/drawerlayout/widget/DrawerLayout;->j:Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    invoke-static/range {p0 .. p0}, Landroidx/core/e/r;->k(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v5

    .line 1061
    :goto_0
    invoke-static/range {p0 .. p0}, Landroidx/core/e/r;->c(Landroid/view/View;)I

    move-result v7

    .line 1067
    invoke-virtual/range {p0 .. p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v8

    move v9, v5

    move v10, v9

    move v11, v10

    :goto_1
    if-ge v9, v8, :cond_15

    .line 1069
    invoke-virtual {v0, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1071
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_14

    .line 1075
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroidx/drawerlayout/widget/DrawerLayout$d;

    const/4 v15, 0x3

    if-eqz v1, :cond_9

    .line 1078
    iget v2, v13, Landroidx/drawerlayout/widget/DrawerLayout$d;->a:I

    invoke-static {v2, v7}, Landroidx/core/e/c;->a(II)I

    move-result v2

    .line 1079
    invoke-static {v12}, Landroidx/core/e/r;->k(Landroid/view/View;)Z

    move-result v16

    const/16 v6, 0x15

    if-eqz v16, :cond_6

    .line 1080
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v14, v6, :cond_9

    .line 1081
    iget-object v6, v0, Landroidx/drawerlayout/widget/DrawerLayout;->j:Ljava/lang/Object;

    check-cast v6, Landroid/view/WindowInsets;

    if-ne v2, v15, :cond_4

    .line 1083
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    .line 1084
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v14

    .line 1085
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v15

    .line 1083
    invoke-virtual {v6, v2, v14, v5, v15}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v6

    goto :goto_2

    :cond_4
    const/4 v14, 0x5

    if-ne v2, v14, :cond_5

    .line 1087
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 1088
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v14

    .line 1089
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v15

    .line 1087
    invoke-virtual {v6, v5, v2, v14, v15}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v6

    .line 1091
    :cond_5
    :goto_2
    invoke-virtual {v12, v6}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    goto :goto_4

    .line 1094
    :cond_6
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v14, v6, :cond_9

    .line 1095
    iget-object v6, v0, Landroidx/drawerlayout/widget/DrawerLayout;->j:Ljava/lang/Object;

    check-cast v6, Landroid/view/WindowInsets;

    const/4 v14, 0x3

    if-ne v2, v14, :cond_7

    .line 1097
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    .line 1098
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v14

    .line 1099
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v15

    .line 1097
    invoke-virtual {v6, v2, v14, v5, v15}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v6

    goto :goto_3

    :cond_7
    const/4 v14, 0x5

    if-ne v2, v14, :cond_8

    .line 1101
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 1102
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v14

    .line 1103
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v15

    .line 1101
    invoke-virtual {v6, v5, v2, v14, v15}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v6

    .line 1105
    :cond_8
    :goto_3
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    iput v2, v13, Landroidx/drawerlayout/widget/DrawerLayout$d;->leftMargin:I

    .line 1106
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    iput v2, v13, Landroidx/drawerlayout/widget/DrawerLayout$d;->topMargin:I

    .line 1107
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    iput v2, v13, Landroidx/drawerlayout/widget/DrawerLayout$d;->rightMargin:I

    .line 1108
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v13, Landroidx/drawerlayout/widget/DrawerLayout$d;->bottomMargin:I

    .line 1113
    :cond_9
    :goto_4
    invoke-static {v12}, Landroidx/drawerlayout/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1115
    iget v2, v13, Landroidx/drawerlayout/widget/DrawerLayout$d;->leftMargin:I

    sub-int v2, v3, v2

    iget v6, v13, Landroidx/drawerlayout/widget/DrawerLayout$d;->rightMargin:I

    sub-int/2addr v2, v6

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1117
    iget v14, v13, Landroidx/drawerlayout/widget/DrawerLayout$d;->topMargin:I

    sub-int v14, v4, v14

    iget v13, v13, Landroidx/drawerlayout/widget/DrawerLayout$d;->bottomMargin:I

    sub-int/2addr v14, v13

    invoke-static {v14, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1119
    invoke-virtual {v12, v2, v13}, Landroid/view/View;->measure(II)V

    goto/16 :goto_8

    :cond_a
    const/high16 v6, 0x40000000    # 2.0f

    .line 1120
    invoke-static {v12}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1121
    sget-boolean v2, Landroidx/drawerlayout/widget/DrawerLayout;->m:Z

    if-eqz v2, :cond_b

    .line 1122
    invoke-static {v12}, Landroidx/core/e/r;->g(Landroid/view/View;)F

    move-result v2

    iget v14, v0, Landroidx/drawerlayout/widget/DrawerLayout;->o:F

    cmpl-float v2, v2, v14

    if-eqz v2, :cond_b

    .line 1123
    iget v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;->o:F

    invoke-static {v12, v2}, Landroidx/core/e/r;->a(Landroid/view/View;F)V

    .line 1127
    :cond_b
    invoke-virtual {v0, v12}, Landroidx/drawerlayout/widget/DrawerLayout;->c(Landroid/view/View;)I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    const/4 v14, 0x3

    if-ne v2, v14, :cond_c

    const/4 v14, 0x1

    goto :goto_5

    :cond_c
    move v14, v5

    :goto_5
    if-eqz v14, :cond_d

    if-nez v10, :cond_e

    :cond_d
    if-nez v14, :cond_11

    if-eqz v11, :cond_11

    .line 1133
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Child drawer has absolute gravity "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit8 v3, v2, 0x3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_10

    and-int/lit8 v3, v2, 0x5

    const/4 v4, 0x5

    if-ne v3, v4, :cond_f

    const-string v2, "RIGHT"

    goto :goto_6

    .line 9011
    :cond_f
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_10
    const-string v2, "LEFT"

    .line 1134
    :goto_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but this DrawerLayout already has a drawer view along that edge"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    if-eqz v14, :cond_12

    const/4 v10, 0x1

    goto :goto_7

    :cond_12
    const/4 v11, 0x1

    .line 1142
    :goto_7
    iget v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;->p:I

    iget v14, v13, Landroidx/drawerlayout/widget/DrawerLayout$d;->leftMargin:I

    add-int/2addr v2, v14

    iget v14, v13, Landroidx/drawerlayout/widget/DrawerLayout$d;->rightMargin:I

    add-int/2addr v2, v14

    iget v14, v13, Landroidx/drawerlayout/widget/DrawerLayout$d;->width:I

    move/from16 v15, p1

    invoke-static {v15, v2, v14}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v2

    .line 1145
    iget v14, v13, Landroidx/drawerlayout/widget/DrawerLayout$d;->topMargin:I

    iget v5, v13, Landroidx/drawerlayout/widget/DrawerLayout$d;->bottomMargin:I

    add-int/2addr v14, v5

    iget v5, v13, Landroidx/drawerlayout/widget/DrawerLayout$d;->height:I

    move/from16 v13, p2

    invoke-static {v13, v14, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v5

    .line 1148
    invoke-virtual {v12, v2, v5}, Landroid/view/View;->measure(II)V

    goto :goto_9

    .line 1150
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Child "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_8
    move/from16 v15, p1

    move/from16 v13, p2

    :goto_9
    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_15
    return-void

    .line 1053
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1997
    instance-of v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;

    if-nez v0, :cond_0

    .line 1998
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 2002
    :cond_0
    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;

    .line 15075
    iget-object v0, p1, Landroidx/customview/view/AbsSavedState;->d:Landroid/os/Parcelable;

    .line 2003
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2005
    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->a:I

    if-eqz v0, :cond_1

    .line 2006
    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->a:I

    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 15678
    invoke-direct {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->h(Landroid/view/View;)V

    .line 2012
    :cond_1
    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->b:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 2013
    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->b:I

    invoke-direct {p0, v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->a(II)V

    .line 2015
    :cond_2
    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->e:I

    if-eq v0, v1, :cond_3

    .line 2016
    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->e:I

    const/4 v2, 0x5

    invoke-direct {p0, v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->a(II)V

    .line 2018
    :cond_3
    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->f:I

    if-eq v0, v1, :cond_4

    .line 2019
    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->f:I

    const v2, 0x800003

    invoke-direct {p0, v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->a(II)V

    .line 2021
    :cond_4
    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->g:I

    if-eq v0, v1, :cond_5

    .line 2022
    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->g:I

    const v0, 0x800005

    invoke-direct {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(II)V

    :cond_5
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 9158
    sget-boolean p1, Landroidx/drawerlayout/widget/DrawerLayout;->m:Z

    if-nez p1, :cond_4

    .line 9166
    invoke-static {p0}, Landroidx/core/e/r;->c(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_0

    .line 9169
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->I:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 9171
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->I:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/graphics/drawable/Drawable;I)Z

    .line 9172
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->I:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 9175
    :cond_0
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->J:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 9177
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->J:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/graphics/drawable/Drawable;I)Z

    .line 9178
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->J:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 9181
    :cond_1
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->K:Landroid/graphics/drawable/Drawable;

    .line 9161
    :goto_0
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->G:Landroid/graphics/drawable/Drawable;

    .line 9185
    invoke-static {p0}, Landroidx/core/e/r;->c(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_2

    .line 9187
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->J:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 9189
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->J:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/graphics/drawable/Drawable;I)Z

    .line 9190
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->J:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 9193
    :cond_2
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->I:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 9195
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->I:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/graphics/drawable/Drawable;I)Z

    .line 9196
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->I:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 9199
    :cond_3
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->L:Landroid/graphics/drawable/Drawable;

    .line 9162
    :goto_1
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->H:Landroid/graphics/drawable/Drawable;

    :cond_4
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 9

    .line 2028
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2029
    new-instance v1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;

    invoke-direct {v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2031
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    .line 2033
    invoke-virtual {p0, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2034
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/drawerlayout/widget/DrawerLayout$d;

    .line 2036
    iget v5, v4, Landroidx/drawerlayout/widget/DrawerLayout$d;->d:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    move v5, v6

    goto :goto_1

    :cond_0
    move v5, v2

    .line 2038
    :goto_1
    iget v7, v4, Landroidx/drawerlayout/widget/DrawerLayout$d;->d:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    goto :goto_2

    :cond_1
    move v6, v2

    :goto_2
    if-nez v5, :cond_3

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2042
    :cond_3
    :goto_3
    iget v0, v4, Landroidx/drawerlayout/widget/DrawerLayout$d;->a:I

    iput v0, v1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->a:I

    .line 2047
    :cond_4
    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->x:I

    iput v0, v1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->b:I

    .line 2048
    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->y:I

    iput v0, v1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->e:I

    .line 2049
    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->z:I

    iput v0, v1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->f:I

    .line 2050
    iget p0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->A:I

    iput p0, v1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->g:I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1569
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->c:Landroidx/customview/a/a;

    invoke-virtual {v0, p1}, Landroidx/customview/a/a;->b(Landroid/view/MotionEvent;)V

    .line 1570
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->d:Landroidx/customview/a/a;

    invoke-virtual {v0, p1}, Landroidx/customview/a/a;->b(Landroid/view/MotionEvent;)V

    .line 1572
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1587
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1588
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1590
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->c:Landroidx/customview/a/a;

    float-to-int v4, v0

    float-to-int v5, p1

    invoke-virtual {v1, v4, v5}, Landroidx/customview/a/a;->a(II)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1591
    invoke-static {v1}, Landroidx/drawerlayout/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1592
    iget v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->D:F

    sub-float/2addr v0, v1

    .line 1593
    iget v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->E:F

    sub-float/2addr p1, v1

    .line 1594
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->c:Landroidx/customview/a/a;

    .line 13503
    iget v1, v1, Landroidx/customview/a/a;->b:I

    mul-float/2addr v0, v0

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    mul-int/2addr v1, v1

    int-to-float p1, v1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_1

    .line 1597
    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->b()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1599
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v2

    .line 1603
    :goto_1
    invoke-direct {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Z)V

    .line 1604
    iput-boolean v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->B:Z

    goto :goto_2

    .line 1577
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1578
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1579
    iput v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->D:F

    .line 1580
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->E:F

    .line 1581
    iput-boolean v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->B:Z

    .line 1582
    iput-boolean v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->f:Z

    goto :goto_2

    .line 1609
    :cond_2
    invoke-direct {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Z)V

    .line 1610
    iput-boolean v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->B:Z

    .line 1611
    iput-boolean v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->f:Z

    :goto_2
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 1625
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1627
    iput-boolean p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->B:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1629
    invoke-direct {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Z)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1302
    iget-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->v:Z

    if-nez v0, :cond_0

    .line 1303
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setDrawerElevation(F)V
    .locals 2

    .line 376
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->o:F

    const/4 p1, 0x0

    .line 377
    :goto_0
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 378
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 379
    invoke-static {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    iget v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->o:F

    invoke-static {v0, v1}, Landroidx/core/e/r;->a(Landroid/view/View;F)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$c;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 493
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->C:Landroidx/drawerlayout/widget/DrawerLayout$c;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->C:Landroidx/drawerlayout/widget/DrawerLayout$c;

    if-eqz v0, :cond_0

    .line 6531
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->g:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 6535
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p1, :cond_2

    .line 7514
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->g:Ljava/util/List;

    if-nez v0, :cond_1

    .line 7515
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->g:Ljava/util/List;

    .line 7517
    :cond_1
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_2
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->C:Landroidx/drawerlayout/widget/DrawerLayout$c;

    return-void
.end method

.method public setDrawerLockMode(I)V
    .locals 1

    const/4 v0, 0x3

    .line 552
    invoke-direct {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(II)V

    const/4 v0, 0x5

    .line 553
    invoke-direct {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(II)V

    return-void
.end method

.method public setScrimColor(I)V
    .locals 0

    .line 474
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->q:I

    .line 475
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    return-void
.end method

.method public setStatusBarBackground(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1360
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->F:Landroid/graphics/drawable/Drawable;

    .line 1361
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1339
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->F:Landroid/graphics/drawable/Drawable;

    .line 1340
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 1

    .line 1372
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->F:Landroid/graphics/drawable/Drawable;

    .line 1373
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    return-void
.end method
