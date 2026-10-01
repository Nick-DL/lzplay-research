.class public Landroidx/appcompat/widget/u;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroidx/appcompat/view/menu/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/u$c;,
        Landroidx/appcompat/widget/u$d;,
        Landroidx/appcompat/widget/u$e;,
        Landroidx/appcompat/widget/u$a;,
        Landroidx/appcompat/widget/u$b;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Ljava/lang/reflect/Method;


# instance fields
.field private A:Landroid/database/DataSetObserver;

.field private B:Landroid/graphics/drawable/Drawable;

.field private C:Landroid/widget/AdapterView$OnItemClickListener;

.field private D:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final E:Landroidx/appcompat/widget/u$d;

.field private final F:Landroidx/appcompat/widget/u$c;

.field private final G:Landroidx/appcompat/widget/u$a;

.field private H:Ljava/lang/Runnable;

.field private final I:Landroid/graphics/Rect;

.field private J:Landroid/graphics/Rect;

.field private d:Landroid/content/Context;

.field public e:Landroidx/appcompat/widget/r;

.field f:I

.field public g:I

.field public h:I

.field i:I

.field j:I

.field public k:Landroid/view/View;

.field final l:Landroidx/appcompat/widget/u$e;

.field final m:Landroid/os/Handler;

.field public n:Z

.field public o:Landroid/widget/PopupWindow;

.field private p:Landroid/widget/ListAdapter;

.field private q:I

.field private r:I

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x1c

    if-gt v0, v3, :cond_38

    .line 86
    :try_start_8
    const-class v0, Landroid/widget/PopupWindow;

    const-string v3, "setClipToScreenEnabled"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/u;->a:Ljava/lang/reflect/Method;
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_18} :catch_19

    goto :goto_20

    :catch_19
    const-string v0, "ListPopupWindow"

    const-string v3, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    .line 89
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_20
    :try_start_20
    const-class v0, Landroid/widget/PopupWindow;

    const-string v3, "setEpicenterBounds"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/u;->c:Ljava/lang/reflect/Method;
    :try_end_30
    .catch Ljava/lang/NoSuchMethodException; {:try_start_20 .. :try_end_30} :catch_31

    goto :goto_38

    :catch_31
    const-string v0, "ListPopupWindow"

    const-string v3, "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well."

    .line 96
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_38
    :goto_38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-gt v0, v3, :cond_60

    .line 102
    :try_start_3e
    const-class v0, Landroid/widget/PopupWindow;

    const-string v3, "getMaxAvailableHeight"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    aput-object v5, v4, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v4, v2

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/u;->b:Ljava/lang/reflect/Method;
    :try_end_58
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3e .. :try_end_58} :catch_59

    return-void

    :catch_59
    const-string v0, "ListPopupWindow"

    const-string v1, "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well."

    .line 105
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 225
    sget v0, Landroidx/appcompat/R$attr;->listPopupWindowStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroidx/appcompat/widget/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 249
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 115
    iput v0, p0, Landroidx/appcompat/widget/u;->q:I

    .line 116
    iput v0, p0, Landroidx/appcompat/widget/u;->f:I

    const/16 v0, 0x3ea

    .line 119
    iput v0, p0, Landroidx/appcompat/widget/u;->s:I

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Landroidx/appcompat/widget/u;->u:Z

    const/4 v1, 0x0

    .line 125
    iput v1, p0, Landroidx/appcompat/widget/u;->h:I

    .line 127
    iput-boolean v1, p0, Landroidx/appcompat/widget/u;->x:Z

    .line 128
    iput-boolean v1, p0, Landroidx/appcompat/widget/u;->y:Z

    const v2, 0x7fffffff

    .line 129
    iput v2, p0, Landroidx/appcompat/widget/u;->i:I

    .line 132
    iput v1, p0, Landroidx/appcompat/widget/u;->j:I

    .line 143
    new-instance v2, Landroidx/appcompat/widget/u$e;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/u$e;-><init>(Landroidx/appcompat/widget/u;)V

    iput-object v2, p0, Landroidx/appcompat/widget/u;->l:Landroidx/appcompat/widget/u$e;

    .line 144
    new-instance v2, Landroidx/appcompat/widget/u$d;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/u$d;-><init>(Landroidx/appcompat/widget/u;)V

    iput-object v2, p0, Landroidx/appcompat/widget/u;->E:Landroidx/appcompat/widget/u$d;

    .line 145
    new-instance v2, Landroidx/appcompat/widget/u$c;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/u$c;-><init>(Landroidx/appcompat/widget/u;)V

    iput-object v2, p0, Landroidx/appcompat/widget/u;->F:Landroidx/appcompat/widget/u$c;

    .line 146
    new-instance v2, Landroidx/appcompat/widget/u$a;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/u$a;-><init>(Landroidx/appcompat/widget/u;)V

    iput-object v2, p0, Landroidx/appcompat/widget/u;->G:Landroidx/appcompat/widget/u$a;

    .line 151
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroidx/appcompat/widget/u;->I:Landroid/graphics/Rect;

    .line 263
    iput-object p1, p0, Landroidx/appcompat/widget/u;->d:Landroid/content/Context;

    .line 264
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Landroidx/appcompat/widget/u;->m:Landroid/os/Handler;

    .line 266
    sget-object v2, Landroidx/appcompat/R$styleable;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 268
    sget v3, Landroidx/appcompat/R$styleable;->ListPopupWindow_android_dropDownHorizontalOffset:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/appcompat/widget/u;->g:I

    .line 270
    sget v3, Landroidx/appcompat/R$styleable;->ListPopupWindow_android_dropDownVerticalOffset:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/u;->r:I

    .line 272
    iget v1, p0, Landroidx/appcompat/widget/u;->r:I

    if-eqz v1, :cond_69

    .line 273
    iput-boolean v0, p0, Landroidx/appcompat/widget/u;->t:Z

    .line 275
    :cond_69
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 277
    new-instance v1, Landroidx/appcompat/widget/i;

    invoke-direct {v1, p1, p2, p3, p4}, Landroidx/appcompat/widget/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    .line 278
    iget-object p0, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method private a(Landroid/view/View;IZ)I
    .registers 9

    .line 1446
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_3b

    .line 1447
    sget-object v0, Landroidx/appcompat/widget/u;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_34

    .line 1449
    :try_start_a
    sget-object v0, Landroidx/appcompat/widget/u;->b:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 1450
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, v2, v3

    .line 1449
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2c} :catch_2d

    return p3

    :catch_2d
    const-string p3, "ListPopupWindow"

    const-string v0, "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version."

    .line 1452
    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    :cond_34
    iget-object p0, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    invoke-virtual {p0, p1, p2}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result p0

    return p0

    .line 1458
    :cond_3b
    iget-object p0, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result p0

    return p0
.end method

.method private a()V
    .registers 3

    .line 790
    iget-object v0, p0, Landroidx/appcompat/widget/u;->z:Landroid/view/View;

    if-eqz v0, :cond_15

    .line 791
    iget-object v0, p0, Landroidx/appcompat/widget/u;->z:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 792
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_15

    .line 793
    check-cast v0, Landroid/view/ViewGroup;

    .line 794
    iget-object p0, p0, Landroidx/appcompat/widget/u;->z:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_15
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Z)Landroidx/appcompat/widget/r;
    .registers 3

    .line 951
    new-instance p0, Landroidx/appcompat/widget/r;

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/r;-><init>(Landroid/content/Context;Z)V

    return-object p0
.end method

.method public final a(I)V
    .registers 2

    .line 506
    iput p1, p0, Landroidx/appcompat/widget/u;->r:I

    const/4 p1, 0x1

    .line 507
    iput-boolean p1, p0, Landroidx/appcompat/widget/u;->t:Z

    return-void
.end method

.method public final a(Landroid/graphics/Rect;)V
    .registers 3

    if-eqz p1, :cond_8

    .line 518
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-object v0, p0, Landroidx/appcompat/widget/u;->J:Landroid/graphics/Rect;

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 433
    iget-object p0, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .registers 4

    .line 288
    iget-object v0, p0, Landroidx/appcompat/widget/u;->A:Landroid/database/DataSetObserver;

    if-nez v0, :cond_c

    .line 289
    new-instance v0, Landroidx/appcompat/widget/u$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/u$b;-><init>(Landroidx/appcompat/widget/u;)V

    iput-object v0, p0, Landroidx/appcompat/widget/u;->A:Landroid/database/DataSetObserver;

    goto :goto_17

    .line 290
    :cond_c
    iget-object v0, p0, Landroidx/appcompat/widget/u;->p:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_17

    .line 291
    iget-object v0, p0, Landroidx/appcompat/widget/u;->p:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroidx/appcompat/widget/u;->A:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 293
    :cond_17
    :goto_17
    iput-object p1, p0, Landroidx/appcompat/widget/u;->p:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_20

    .line 295
    iget-object v0, p0, Landroidx/appcompat/widget/u;->A:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 298
    :cond_20
    iget-object p1, p0, Landroidx/appcompat/widget/u;->e:Landroidx/appcompat/widget/r;

    if-eqz p1, :cond_2b

    .line 299
    iget-object p1, p0, Landroidx/appcompat/widget/u;->e:Landroidx/appcompat/widget/r;

    iget-object p0, p0, Landroidx/appcompat/widget/u;->p:Landroid/widget/ListAdapter;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/r;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_2b
    return-void
.end method

.method public final a_()I
    .registers 2

    .line 494
    iget-boolean v0, p0, Landroidx/appcompat/widget/u;->t:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 497
    :cond_6
    iget p0, p0, Landroidx/appcompat/widget/u;->r:I

    return p0
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 424
    iget-object p0, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final b(I)V
    .registers 2

    .line 487
    iput p1, p0, Landroidx/appcompat/widget/u;->g:I

    return-void
.end method

.method public final b_()V
    .registers 14

    .line 2159
    iget-object v0, p0, Landroidx/appcompat/widget/u;->e:Landroidx/appcompat/widget/r;

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-nez v0, :cond_c2

    .line 2160
    iget-object v0, p0, Landroidx/appcompat/widget/u;->d:Landroid/content/Context;

    .line 2168
    new-instance v5, Landroidx/appcompat/widget/u$1;

    invoke-direct {v5, p0}, Landroidx/appcompat/widget/u$1;-><init>(Landroidx/appcompat/widget/u;)V

    iput-object v5, p0, Landroidx/appcompat/widget/u;->H:Ljava/lang/Runnable;

    .line 2179
    iget-boolean v5, p0, Landroidx/appcompat/widget/u;->n:Z

    xor-int/2addr v5, v2

    invoke-virtual {p0, v0, v5}, Landroidx/appcompat/widget/u;->a(Landroid/content/Context;Z)Landroidx/appcompat/widget/r;

    move-result-object v5

    iput-object v5, p0, Landroidx/appcompat/widget/u;->e:Landroidx/appcompat/widget/r;

    .line 2180
    iget-object v5, p0, Landroidx/appcompat/widget/u;->B:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_26

    .line 2181
    iget-object v5, p0, Landroidx/appcompat/widget/u;->e:Landroidx/appcompat/widget/r;

    iget-object v6, p0, Landroidx/appcompat/widget/u;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/r;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2183
    :cond_26
    iget-object v5, p0, Landroidx/appcompat/widget/u;->e:Landroidx/appcompat/widget/r;

    iget-object v6, p0, Landroidx/appcompat/widget/u;->p:Landroid/widget/ListAdapter;

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/r;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2184
    iget-object v5, p0, Landroidx/appcompat/widget/u;->e:Landroidx/appcompat/widget/r;

    iget-object v6, p0, Landroidx/appcompat/widget/u;->C:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/r;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2185
    iget-object v5, p0, Landroidx/appcompat/widget/u;->e:Landroidx/appcompat/widget/r;

    invoke-virtual {v5, v2}, Landroidx/appcompat/widget/r;->setFocusable(Z)V

    .line 2186
    iget-object v5, p0, Landroidx/appcompat/widget/u;->e:Landroidx/appcompat/widget/r;

    invoke-virtual {v5, v2}, Landroidx/appcompat/widget/r;->setFocusableInTouchMode(Z)V

    .line 2187
    iget-object v5, p0, Landroidx/appcompat/widget/u;->e:Landroidx/appcompat/widget/r;

    new-instance v6, Landroidx/appcompat/widget/u$2;

    invoke-direct {v6, p0}, Landroidx/appcompat/widget/u$2;-><init>(Landroidx/appcompat/widget/u;)V

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/r;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 2205
    iget-object v5, p0, Landroidx/appcompat/widget/u;->e:Landroidx/appcompat/widget/r;

    iget-object v6, p0, Landroidx/appcompat/widget/u;->F:Landroidx/appcompat/widget/u$c;

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/r;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 2207
    iget-object v5, p0, Landroidx/appcompat/widget/u;->D:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v5, :cond_5a

    .line 2208
    iget-object v5, p0, Landroidx/appcompat/widget/u;->e:Landroidx/appcompat/widget/r;

    iget-object v6, p0, Landroidx/appcompat/widget/u;->D:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/r;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 2211
    :cond_5a
    iget-object v5, p0, Landroidx/appcompat/widget/u;->e:Landroidx/appcompat/widget/r;

    .line 2213
    iget-object v6, p0, Landroidx/appcompat/widget/u;->z:Landroid/view/View;

    if-eqz v6, :cond_bb

    .line 2217
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2218
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2220
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 2224
    iget v8, p0, Landroidx/appcompat/widget/u;->j:I

    packed-switch v8, :pswitch_data_2f6

    const-string v0, "ListPopupWindow"

    .line 2236
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Invalid hint position "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Landroidx/appcompat/widget/u;->j:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    .line 2226
    :pswitch_8a
    invoke-virtual {v7, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2227
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_97

    .line 2231
    :pswitch_91
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2232
    invoke-virtual {v7, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2244
    :goto_97
    iget v0, p0, Landroidx/appcompat/widget/u;->f:I

    if-ltz v0, :cond_9f

    .line 2246
    iget v0, p0, Landroidx/appcompat/widget/u;->f:I

    move v5, v1

    goto :goto_a1

    :cond_9f
    move v0, v3

    move v5, v0

    .line 2251
    :goto_a1
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2253
    invoke-virtual {v6, v0, v3}, Landroid/view/View;->measure(II)V

    .line 2255
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2256
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v0

    move v0, v5

    move-object v5, v7

    goto :goto_bc

    :cond_bb
    move v0, v3

    .line 2262
    :goto_bc
    iget-object v6, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_dd

    .line 2264
    :cond_c2
    iget-object v0, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 2265
    iget-object v0, p0, Landroidx/appcompat/widget/u;->z:Landroid/view/View;

    if-eqz v0, :cond_dc

    .line 2268
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 2269
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v6

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v5

    goto :goto_dd

    :cond_dc
    move v0, v3

    .line 2277
    :goto_dd
    iget-object v5, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_ff

    .line 2279
    iget-object v6, p0, Landroidx/appcompat/widget/u;->I:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2280
    iget-object v5, p0, Landroidx/appcompat/widget/u;->I:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroidx/appcompat/widget/u;->I:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    .line 2284
    iget-boolean v6, p0, Landroidx/appcompat/widget/u;->t:Z

    if-nez v6, :cond_105

    .line 2285
    iget-object v6, p0, Landroidx/appcompat/widget/u;->I:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    iput v6, p0, Landroidx/appcompat/widget/u;->r:I

    goto :goto_105

    .line 2288
    :cond_ff
    iget-object v5, p0, Landroidx/appcompat/widget/u;->I:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    move v5, v3

    .line 2293
    :cond_105
    :goto_105
    iget-object v6, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    .line 2294
    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_110

    move v6, v2

    goto :goto_111

    :cond_110
    move v6, v3

    .line 2461
    :goto_111
    iget-object v7, p0, Landroidx/appcompat/widget/u;->k:Landroid/view/View;

    .line 2295
    iget v8, p0, Landroidx/appcompat/widget/u;->r:I

    invoke-direct {p0, v7, v8, v6}, Landroidx/appcompat/widget/u;->a(Landroid/view/View;IZ)I

    move-result v6

    .line 2297
    iget-boolean v7, p0, Landroidx/appcompat/widget/u;->x:Z

    if-nez v7, :cond_185

    iget v7, p0, Landroidx/appcompat/widget/u;->q:I

    if-ne v7, v4, :cond_122

    goto :goto_185

    .line 2302
    :cond_122
    iget v7, p0, Landroidx/appcompat/widget/u;->f:I

    const/high16 v8, 0x40000000    # 2.0f

    packed-switch v7, :pswitch_data_2fe

    .line 2316
    iget v1, p0, Landroidx/appcompat/widget/u;->f:I

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_12f
    move v8, v1

    goto :goto_167

    .line 2310
    :pswitch_131
    iget-object v1, p0, Landroidx/appcompat/widget/u;->d:Landroid/content/Context;

    .line 2311
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Landroidx/appcompat/widget/u;->I:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Landroidx/appcompat/widget/u;->I:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v9

    sub-int/2addr v1, v7

    .line 2310
    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_12f

    .line 2304
    :pswitch_14c
    iget-object v7, p0, Landroidx/appcompat/widget/u;->d:Landroid/content/Context;

    .line 2305
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Landroidx/appcompat/widget/u;->I:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Landroidx/appcompat/widget/u;->I:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    sub-int/2addr v7, v8

    .line 2304
    invoke-static {v7, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_12f

    .line 2322
    :goto_167
    iget-object v7, p0, Landroidx/appcompat/widget/u;->e:Landroidx/appcompat/widget/r;

    const/4 v9, 0x0

    const/4 v10, -0x1

    sub-int v11, v6, v0

    const/4 v12, -0x1

    invoke-virtual/range {v7 .. v12}, Landroidx/appcompat/widget/r;->a(IIIII)I

    move-result v1

    if-lez v1, :cond_183

    .line 2325
    iget-object v6, p0, Landroidx/appcompat/widget/u;->e:Landroidx/appcompat/widget/r;

    invoke-virtual {v6}, Landroidx/appcompat/widget/r;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Landroidx/appcompat/widget/u;->e:Landroidx/appcompat/widget/r;

    .line 2326
    invoke-virtual {v7}, Landroidx/appcompat/widget/r;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    :cond_183
    add-int/2addr v1, v0

    goto :goto_187

    :cond_185
    :goto_185
    add-int/2addr v6, v5

    move v1, v6

    .line 666
    :goto_187
    invoke-virtual {p0}, Landroidx/appcompat/widget/u;->k()Z

    move-result v0

    .line 667
    iget-object v5, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    iget v6, p0, Landroidx/appcompat/widget/u;->s:I

    invoke-static {v5, v6}, Landroidx/core/widget/g;->a(Landroid/widget/PopupWindow;I)V

    .line 669
    iget-object v5, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    const/4 v6, -0x2

    if-eqz v5, :cond_211

    .line 3461
    iget-object v5, p0, Landroidx/appcompat/widget/u;->k:Landroid/view/View;

    .line 670
    invoke-static {v5}, Landroidx/core/e/r;->p(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_1a4

    return-void

    .line 675
    :cond_1a4
    iget v5, p0, Landroidx/appcompat/widget/u;->f:I

    if-ne v5, v4, :cond_1aa

    move v5, v4

    goto :goto_1b7

    .line 679
    :cond_1aa
    iget v5, p0, Landroidx/appcompat/widget/u;->f:I

    if-ne v5, v6, :cond_1b5

    .line 4461
    iget-object v5, p0, Landroidx/appcompat/widget/u;->k:Landroid/view/View;

    .line 680
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    goto :goto_1b7

    .line 682
    :cond_1b5
    iget v5, p0, Landroidx/appcompat/widget/u;->f:I

    .line 686
    :goto_1b7
    iget v7, p0, Landroidx/appcompat/widget/u;->q:I

    if-ne v7, v4, :cond_1e5

    if-eqz v0, :cond_1be

    goto :goto_1bf

    :cond_1be
    move v1, v4

    :goto_1bf
    if-eqz v0, :cond_1d3

    .line 691
    iget-object v0, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    iget v6, p0, Landroidx/appcompat/widget/u;->f:I

    if-ne v6, v4, :cond_1c9

    move v6, v4

    goto :goto_1ca

    :cond_1c9
    move v6, v3

    :goto_1ca
    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 693
    iget-object v0, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_1ec

    .line 695
    :cond_1d3
    iget-object v0, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    iget v6, p0, Landroidx/appcompat/widget/u;->f:I

    if-ne v6, v4, :cond_1db

    move v6, v4

    goto :goto_1dc

    :cond_1db
    move v6, v3

    :goto_1dc
    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 697
    iget-object v0, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_1ec

    .line 699
    :cond_1e5
    iget v0, p0, Landroidx/appcompat/widget/u;->q:I

    if-eq v0, v6, :cond_1ec

    .line 702
    iget v0, p0, Landroidx/appcompat/widget/u;->q:I

    move v1, v0

    .line 705
    :cond_1ec
    :goto_1ec
    iget-object v0, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    iget-boolean v6, p0, Landroidx/appcompat/widget/u;->y:Z

    if-nez v6, :cond_1f7

    iget-boolean v6, p0, Landroidx/appcompat/widget/u;->x:Z

    if-nez v6, :cond_1f7

    goto :goto_1f8

    :cond_1f7
    move v2, v3

    :goto_1f8
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 707
    iget-object v6, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    .line 5461
    iget-object v7, p0, Landroidx/appcompat/widget/u;->k:Landroid/view/View;

    .line 707
    iget v8, p0, Landroidx/appcompat/widget/u;->g:I

    iget v9, p0, Landroidx/appcompat/widget/u;->r:I

    if-gez v5, :cond_207

    move v10, v4

    goto :goto_208

    :cond_207
    move v10, v5

    :goto_208
    if-gez v1, :cond_20c

    move v11, v4

    goto :goto_20d

    :cond_20c
    move v11, v1

    :goto_20d
    invoke-virtual/range {v6 .. v11}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    return-void

    .line 712
    :cond_211
    iget v0, p0, Landroidx/appcompat/widget/u;->f:I

    if-ne v0, v4, :cond_217

    move v0, v4

    goto :goto_224

    .line 715
    :cond_217
    iget v0, p0, Landroidx/appcompat/widget/u;->f:I

    if-ne v0, v6, :cond_222

    .line 6461
    iget-object v0, p0, Landroidx/appcompat/widget/u;->k:Landroid/view/View;

    .line 716
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_224

    .line 718
    :cond_222
    iget v0, p0, Landroidx/appcompat/widget/u;->f:I

    .line 723
    :goto_224
    iget v5, p0, Landroidx/appcompat/widget/u;->q:I

    if-ne v5, v4, :cond_22a

    move v1, v4

    goto :goto_230

    .line 726
    :cond_22a
    iget v5, p0, Landroidx/appcompat/widget/u;->q:I

    if-eq v5, v6, :cond_230

    .line 729
    iget v1, p0, Landroidx/appcompat/widget/u;->q:I

    .line 733
    :cond_230
    :goto_230
    iget-object v5, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 734
    iget-object v0, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 7432
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_25a

    .line 7433
    sget-object v0, Landroidx/appcompat/widget/u;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_25f

    .line 7435
    :try_start_244
    sget-object v0, Landroidx/appcompat/widget/u;->a:Ljava/lang/reflect/Method;

    iget-object v5, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    new-array v6, v2, [Ljava/lang/Object;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v7, v6, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_251
    .catch Ljava/lang/Exception; {:try_start_244 .. :try_end_251} :catch_252

    goto :goto_25f

    :catch_252
    const-string v0, "ListPopupWindow"

    const-string v5, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    .line 7437
    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25f

    .line 7441
    :cond_25a
    iget-object v0, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setIsClippedToScreen(Z)V

    .line 739
    :cond_25f
    :goto_25f
    iget-object v0, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    iget-boolean v5, p0, Landroidx/appcompat/widget/u;->y:Z

    if-nez v5, :cond_26b

    iget-boolean v5, p0, Landroidx/appcompat/widget/u;->x:Z

    if-nez v5, :cond_26b

    move v5, v2

    goto :goto_26c

    :cond_26b
    move v5, v3

    :goto_26c
    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 740
    iget-object v0, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    iget-object v5, p0, Landroidx/appcompat/widget/u;->E:Landroidx/appcompat/widget/u$d;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 741
    iget-boolean v0, p0, Landroidx/appcompat/widget/u;->w:Z

    if-eqz v0, :cond_281

    .line 742
    iget-object v0, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    iget-boolean v5, p0, Landroidx/appcompat/widget/u;->v:Z

    invoke-static {v0, v5}, Landroidx/core/widget/g;->a(Landroid/widget/PopupWindow;Z)V

    .line 744
    :cond_281
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_2a0

    .line 745
    sget-object v0, Landroidx/appcompat/widget/u;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2a7

    .line 747
    :try_start_289
    sget-object v0, Landroidx/appcompat/widget/u;->c:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Landroidx/appcompat/widget/u;->J:Landroid/graphics/Rect;

    aput-object v5, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_296
    .catch Ljava/lang/Exception; {:try_start_289 .. :try_end_296} :catch_297

    goto :goto_2a7

    :catch_297
    move-exception v0

    const-string v1, "ListPopupWindow"

    const-string v2, "Could not invoke setEpicenterBounds on PopupWindow"

    .line 749
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a7

    .line 753
    :cond_2a0
    iget-object v0, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroidx/appcompat/widget/u;->J:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 755
    :cond_2a7
    :goto_2a7
    iget-object v0, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    .line 7461
    iget-object v1, p0, Landroidx/appcompat/widget/u;->k:Landroid/view/View;

    .line 755
    iget v2, p0, Landroidx/appcompat/widget/u;->g:I

    iget v3, p0, Landroidx/appcompat/widget/u;->r:I

    iget v5, p0, Landroidx/appcompat/widget/u;->h:I

    .line 8068
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v6, v7, :cond_2bb

    .line 8069
    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    goto :goto_2d5

    .line 8073
    :cond_2bb
    invoke-static {v1}, Landroidx/core/e/r;->c(Landroid/view/View;)I

    move-result v6

    .line 8072
    invoke-static {v5, v6}, Landroidx/core/e/c;->a(II)I

    move-result v5

    and-int/lit8 v5, v5, 0x7

    const/4 v6, 0x5

    if-ne v5, v6, :cond_2d2

    .line 8077
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v2, v5

    .line 8079
    :cond_2d2
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 757
    :goto_2d5
    iget-object v0, p0, Landroidx/appcompat/widget/u;->e:Landroidx/appcompat/widget/r;

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/r;->setSelection(I)V

    .line 759
    iget-boolean v0, p0, Landroidx/appcompat/widget/u;->n:Z

    if-eqz v0, :cond_2e6

    iget-object v0, p0, Landroidx/appcompat/widget/u;->e:Landroidx/appcompat/widget/r;

    invoke-virtual {v0}, Landroidx/appcompat/widget/r;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2e9

    .line 760
    :cond_2e6
    invoke-virtual {p0}, Landroidx/appcompat/widget/u;->j()V

    .line 762
    :cond_2e9
    iget-boolean v0, p0, Landroidx/appcompat/widget/u;->n:Z

    if-nez v0, :cond_2f4

    .line 763
    iget-object v0, p0, Landroidx/appcompat/widget/u;->m:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/appcompat/widget/u;->G:Landroidx/appcompat/widget/u$a;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2f4
    return-void

    nop

    :pswitch_data_2f6
    .packed-switch 0x0
        :pswitch_91
        :pswitch_8a
    .end packed-switch

    :pswitch_data_2fe
    .packed-switch -0x2
        :pswitch_14c
        :pswitch_131
    .end packed-switch
.end method

.method public final c()V
    .registers 3

    .line 773
    iget-object v0, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 774
    invoke-direct {p0}, Landroidx/appcompat/widget/u;->a()V

    .line 775
    iget-object v0, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 776
    iput-object v1, p0, Landroidx/appcompat/widget/u;->e:Landroidx/appcompat/widget/r;

    .line 777
    iget-object v0, p0, Landroidx/appcompat/widget/u;->m:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/appcompat/widget/u;->l:Landroidx/appcompat/widget/u$e;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(I)V
    .registers 4

    .line 566
    iget-object v0, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 568
    iget-object v1, p0, Landroidx/appcompat/widget/u;->I:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 569
    iget-object v0, p0, Landroidx/appcompat/widget/u;->I:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroidx/appcompat/widget/u;->I:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/appcompat/widget/u;->f:I

    return-void

    .line 1556
    :cond_1a
    iput p1, p0, Landroidx/appcompat/widget/u;->f:I

    return-void
.end method

.method public final d()Z
    .registers 1

    .line 861
    iget-object p0, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    return p0
.end method

.method public final e()Landroid/widget/ListView;
    .registers 1

    .line 947
    iget-object p0, p0, Landroidx/appcompat/widget/u;->e:Landroidx/appcompat/widget/r;

    return-object p0
.end method

.method public final f()I
    .registers 1

    .line 478
    iget p0, p0, Landroidx/appcompat/widget/u;->g:I

    return p0
.end method

.method public final h()V
    .registers 2

    const/4 v0, 0x1

    .line 336
    iput-boolean v0, p0, Landroidx/appcompat/widget/u;->n:Z

    .line 337
    iget-object p0, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method public final i()V
    .registers 2

    .line 812
    iget-object p0, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method public final j()V
    .registers 2

    .line 847
    iget-object p0, p0, Landroidx/appcompat/widget/u;->e:Landroidx/appcompat/widget/r;

    if-eqz p0, :cond_b

    const/4 v0, 0x1

    .line 850
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/r;->setListSelectionHidden(Z)V

    .line 852
    invoke-virtual {p0}, Landroidx/appcompat/widget/r;->requestLayout()V

    :cond_b
    return-void
.end method

.method public final k()Z
    .registers 2

    .line 869
    iget-object p0, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public final l()V
    .registers 2

    const/4 v0, 0x1

    .line 1339
    iput-boolean v0, p0, Landroidx/appcompat/widget/u;->w:Z

    .line 1340
    iput-boolean v0, p0, Landroidx/appcompat/widget/u;->v:Z

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2

    .line 786
    iget-object p0, p0, Landroidx/appcompat/widget/u;->o:Landroid/widget/PopupWindow;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2

    .line 620
    iput-object p1, p0, Landroidx/appcompat/widget/u;->C:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 2

    .line 631
    iput-object p1, p0, Landroidx/appcompat/widget/u;->D:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method
