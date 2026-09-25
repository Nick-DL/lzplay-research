.class final Landroidx/appcompat/app/AppCompatDelegateImpl;
.super Landroidx/appcompat/app/d;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;
.implements Landroidx/appcompat/view/menu/g$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/AppCompatDelegateImpl$d;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$f;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$e;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$c;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$g;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$a;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$h;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$b;
    }
.end annotation


# static fields
.field private static A:Z

.field private static final B:Z

.field private static final x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final y:Z

.field private static final z:[I


# instance fields
.field private C:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

.field private D:Ljava/lang/CharSequence;

.field private E:Landroidx/appcompat/widget/o;

.field private F:Landroidx/appcompat/app/AppCompatDelegateImpl$a;

.field private G:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

.field private H:Z

.field private I:Landroid/view/ViewGroup;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/view/View;

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

.field private P:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:I

.field private V:I

.field private W:Z

.field private X:Z

.field private Y:Landroidx/appcompat/app/AppCompatDelegateImpl$e;

.field private Z:Landroidx/appcompat/app/AppCompatDelegateImpl$e;

.field private final aa:Ljava/lang/Runnable;

.field private ab:Z

.field private ac:Landroid/graphics/Rect;

.field private ad:Landroid/graphics/Rect;

.field private ae:Landroidx/appcompat/app/AppCompatViewInflater;

.field final d:Ljava/lang/Object;

.field final e:Landroid/content/Context;

.field f:Landroid/view/Window;

.field final g:Landroidx/appcompat/app/c;

.field h:Landroidx/appcompat/app/a;

.field i:Landroid/view/MenuInflater;

.field j:Landroidx/appcompat/view/b;

.field k:Landroidx/appcompat/widget/ActionBarContextView;

.field l:Landroid/widget/PopupWindow;

.field m:Ljava/lang/Runnable;

.field n:Landroidx/core/e/u;

.field o:Z

.field p:Z

.field q:Z

.field r:Z

.field s:Z

.field t:Z

.field u:Z

.field v:Z

.field w:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 130
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    sput-object v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->x:Ljava/util/Map;

    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Z

    .line 135
    new-array v0, v3, [I

    const v4, 0x1010054

    aput v4, v0, v2

    sput-object v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:[I

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_1

    move v2, v3

    :cond_1
    sput-boolean v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->B:Z

    .line 154
    sget-boolean v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Z

    if-nez v0, :cond_2

    .line 156
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 158
    new-instance v1, Landroidx/appcompat/app/AppCompatDelegateImpl$1;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$1;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 183
    sput-boolean v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Z

    :cond_2
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroidx/appcompat/app/c;)V
    .locals 1

    const/4 v0, 0x0

    .line 278
    invoke-direct {p0, p1, v0, p2, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;-><init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/c;Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Landroid/app/Dialog;Landroidx/appcompat/app/c;)V
    .locals 2

    .line 282
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;-><init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/c;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/c;Ljava/lang/Object;)V
    .locals 3

    .line 294
    invoke-direct {p0}, Landroidx/appcompat/app/d;-><init>()V

    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroidx/core/e/u;

    const/4 v1, 0x1

    .line 208
    iput-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->o:Z

    const/16 v1, -0x64

    .line 244
    iput v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->U:I

    .line 256
    new-instance v2, Landroidx/appcompat/app/AppCompatDelegateImpl$2;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$2;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    iput-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->aa:Ljava/lang/Runnable;

    .line 295
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    .line 296
    iput-object p3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->g:Landroidx/appcompat/app/c;

    .line 297
    iput-object p4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    .line 299
    iget p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->U:I

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    instance-of p1, p1, Landroid/app/Dialog;

    if-eqz p1, :cond_2

    .line 2470
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    :goto_0
    if-eqz p1, :cond_1

    .line 2472
    instance-of p3, p1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz p3, :cond_0

    .line 2473
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_1

    .line 2475
    :cond_0
    instance-of p3, p1, Landroid/content/ContextWrapper;

    if-eqz p3, :cond_1

    .line 2476
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 307
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/d;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->m()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->U:I

    .line 310
    :cond_2
    iget p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->U:I

    if-ne p1, v1, :cond_3

    .line 312
    sget-object p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->x:Ljava/util/Map;

    iget-object p3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    .line 314
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->U:I

    .line 316
    sget-object p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->x:Ljava/util/Map;

    iget-object p3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p2, :cond_4

    .line 321
    invoke-direct {p0, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroid/view/Window;)V

    .line 328
    :cond_4
    invoke-static {}, Landroidx/appcompat/widget/f;->a()V

    return-void
.end method

.method private A()I
    .locals 2

    .line 2232
    iget v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->U:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    iget p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->U:I

    return p0

    .line 34571
    :cond_0
    sget p0, Landroidx/appcompat/app/d;->a:I

    return p0
.end method

.method private B()Landroidx/appcompat/app/AppCompatDelegateImpl$e;
    .locals 2

    .line 2390
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Y:Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    if-nez v0, :cond_0

    .line 2391
    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl$f;

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    .line 2392
    invoke-static {v1}, Landroidx/appcompat/app/i;->a(Landroid/content/Context;)Landroidx/appcompat/app/i;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$f;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroidx/appcompat/app/i;)V

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Y:Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    .line 2394
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Y:Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    return-object p0
.end method

.method private C()Landroidx/appcompat/app/AppCompatDelegateImpl$e;
    .locals 2

    .line 2398
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Z:Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    if-nez v0, :cond_0

    .line 2399
    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl$d;

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$d;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Z:Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    .line 2401
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Z:Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    return-object p0
.end method

.method private D()Z
    .locals 6

    .line 2405
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->X:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 2406
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 2413
    :cond_0
    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    .line 2414
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2413
    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2415
    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->W:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "AppCompatDelegate"

    const-string v4, "Exception while getting ActivityInfo"

    .line 2420
    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2421
    iput-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->W:Z

    .line 2425
    :cond_2
    :goto_1
    iput-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->X:Z

    .line 2427
    iget-boolean p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->W:Z

    return p0
.end method

.method private a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 7

    .line 1375
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->ae:Landroidx/appcompat/app/AppCompatViewInflater;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1376
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    sget-object v2, Landroidx/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1377
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_viewInflaterClass:I

    .line 1378
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1379
    const-class v2, Landroidx/appcompat/app/AppCompatViewInflater;

    .line 1380
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1386
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1387
    new-array v3, v1, [Ljava/lang/Class;

    .line 1388
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 1389
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/AppCompatViewInflater;

    iput-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->ae:Landroidx/appcompat/app/AppCompatViewInflater;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "AppCompatDelegate"

    .line 1391
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to instantiate custom view inflater "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Falling back to default."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1393
    new-instance v0, Landroidx/appcompat/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroidx/appcompat/app/AppCompatViewInflater;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->ae:Landroidx/appcompat/app/AppCompatViewInflater;

    goto :goto_1

    .line 1383
    :cond_1
    :goto_0
    new-instance v0, Landroidx/appcompat/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroidx/appcompat/app/AppCompatViewInflater;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->ae:Landroidx/appcompat/app/AppCompatViewInflater;

    .line 1399
    :cond_2
    :goto_1
    sget-boolean v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 1400
    instance-of v0, p4, Lorg/xmlpull/v1/XmlPullParser;

    if-eqz v0, :cond_3

    move-object v0, p4

    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    .line 1402
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v2, :cond_4

    move v0, v2

    goto :goto_2

    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    .line 1404
    invoke-direct {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroid/view/ViewParent;)Z

    move-result v0

    goto :goto_2

    :cond_4
    move v0, v1

    .line 1407
    :goto_2
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->ae:Landroidx/appcompat/app/AppCompatViewInflater;

    sget-boolean v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Z

    .line 1410
    invoke-static {}, Landroidx/appcompat/widget/aj;->a()Z

    move-result v4

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 17088
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_3

    :cond_5
    move-object p1, p3

    .line 17348
    :goto_3
    sget-object v0, Landroidx/appcompat/R$styleable;->View:[I

    invoke-virtual {p1, p4, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    if-eqz v3, :cond_6

    .line 17352
    sget v3, Landroidx/appcompat/R$styleable;->View_android_theme:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    goto :goto_4

    :cond_6
    move v3, v1

    :goto_4
    if-nez v3, :cond_7

    .line 17356
    sget v3, Landroidx/appcompat/R$styleable;->View_theme:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_7

    const-string v5, "AppCompatViewInflater"

    const-string v6, "app:theme is now deprecated. Please move to using android:theme instead."

    .line 17359
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17363
    :cond_7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v3, :cond_9

    .line 17365
    instance-of v0, p1, Landroidx/appcompat/view/d;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Landroidx/appcompat/view/d;

    .line 18137
    iget v0, v0, Landroidx/appcompat/view/d;->a:I

    if-eq v0, v3, :cond_9

    .line 17369
    :cond_8
    new-instance v0, Landroidx/appcompat/view/d;

    invoke-direct {v0, p1, v3}, Landroidx/appcompat/view/d;-><init>(Landroid/content/Context;I)V

    move-object p1, v0

    :cond_9
    if-eqz v4, :cond_a

    .line 17095
    invoke-static {p1}, Landroidx/appcompat/widget/ab;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    :cond_a
    const/4 v0, -0x1

    .line 17101
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    const-string v2, "Button"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v0, 0x2

    goto/16 :goto_5

    :sswitch_1
    const-string v2, "EditText"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v0, 0x3

    goto/16 :goto_5

    :sswitch_2
    const-string v2, "CheckBox"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v0, 0x6

    goto/16 :goto_5

    :sswitch_3
    const-string v2, "AutoCompleteTextView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v0, 0x9

    goto/16 :goto_5

    :sswitch_4
    const-string v3, "ImageView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v0, v2

    goto :goto_5

    :sswitch_5
    const-string v2, "ToggleButton"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v0, 0xd

    goto :goto_5

    :sswitch_6
    const-string v2, "RadioButton"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v0, 0x7

    goto :goto_5

    :sswitch_7
    const-string v2, "Spinner"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v0, 0x4

    goto :goto_5

    :sswitch_8
    const-string v2, "SeekBar"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v0, 0xc

    goto :goto_5

    :sswitch_9
    const-string v2, "ImageButton"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v0, 0x5

    goto :goto_5

    :sswitch_a
    const-string v2, "TextView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move v0, v1

    goto :goto_5

    :sswitch_b
    const-string v2, "MultiAutoCompleteTextView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v0, 0xa

    goto :goto_5

    :sswitch_c
    const-string v2, "CheckedTextView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v0, 0x8

    goto :goto_5

    :sswitch_d
    const-string v2, "RatingBar"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v0, 0xb

    :cond_b
    :goto_5
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_6

    .line 31249
    :pswitch_0
    new-instance v0, Landroidx/appcompat/widget/AppCompatToggleButton;

    invoke-direct {v0, p1, p4}, Landroidx/appcompat/widget/AppCompatToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_6

    .line 30244
    :pswitch_1
    new-instance v0, Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-direct {v0, p1, p4}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_6

    .line 29239
    :pswitch_2
    new-instance v0, Landroidx/appcompat/widget/AppCompatRatingBar;

    invoke-direct {v0, p1, p4}, Landroidx/appcompat/widget/AppCompatRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_6

    .line 28234
    :pswitch_3
    new-instance v0, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;

    invoke-direct {v0, p1, p4}, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_6

    .line 27228
    :pswitch_4
    new-instance v0, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    invoke-direct {v0, p1, p4}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_6

    .line 26222
    :pswitch_5
    new-instance v0, Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-direct {v0, p1, p4}, Landroidx/appcompat/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_6

    .line 25217
    :pswitch_6
    new-instance v0, Landroidx/appcompat/widget/AppCompatRadioButton;

    invoke-direct {v0, p1, p4}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_6

    .line 24212
    :pswitch_7
    new-instance v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-direct {v0, p1, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_6

    .line 23207
    :pswitch_8
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-direct {v0, p1, p4}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_6

    .line 22202
    :pswitch_9
    new-instance v0, Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-direct {v0, p1, p4}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_6

    .line 21197
    :pswitch_a
    new-instance v0, Landroidx/appcompat/widget/AppCompatEditText;

    invoke-direct {v0, p1, p4}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_6

    .line 20192
    :pswitch_b
    new-instance v0, Landroidx/appcompat/widget/AppCompatButton;

    invoke-direct {v0, p1, p4}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_6

    .line 19187
    :pswitch_c
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {v0, p1, p4}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_6

    .line 18182
    :pswitch_d
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v0, p1, p4}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_6
    if-nez v0, :cond_c

    if-eq p3, p1, :cond_c

    .line 17169
    invoke-virtual {p0, p1, p2, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->a(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    :cond_c
    if-eqz v0, :cond_f

    .line 31301
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 31303
    instance-of p1, p0, Landroid/content/ContextWrapper;

    if-eqz p1, :cond_f

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0xf

    if-lt p1, p2, :cond_d

    .line 31304
    invoke-static {v0}, Landroidx/core/e/r;->q(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_7

    .line 31311
    :cond_d
    sget-object p1, Landroidx/appcompat/app/AppCompatViewInflater;->a:[I

    invoke-virtual {p0, p4, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 31312
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 31314
    new-instance p2, Landroidx/appcompat/app/AppCompatViewInflater$a;

    invoke-direct {p2, v0, p1}, Landroidx/appcompat/app/AppCompatViewInflater$a;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31316
    :cond_e
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_f
    :goto_7
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_d
        -0x56c015e7 -> :sswitch_c
        -0x503aa7ad -> :sswitch_b
        -0x37f7066e -> :sswitch_a
        -0x37e04bb3 -> :sswitch_9
        -0x274065a5 -> :sswitch_8
        -0x1440b607 -> :sswitch_7
        0x2e46a6ed -> :sswitch_6
        0x2fa453c6 -> :sswitch_5
        0x431b5280 -> :sswitch_4
        0x5445f9ba -> :sswitch_3
        0x5f7507c3 -> :sswitch_2
        0x63577677 -> :sswitch_1
        0x77471352 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/view/Window;)V
    .locals 3

    .line 631
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    if-nez v0, :cond_2

    .line 636
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 637
    instance-of v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    if-nez v1, :cond_1

    .line 641
    new-instance v1, Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$c;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    .line 643
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 645
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:[I

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ae;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/ae;

    move-result-object v0

    const/4 v1, 0x0

    .line 647
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ae;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 650
    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8245
    :cond_0
    iget-object v0, v0, Landroidx/appcompat/widget/ae;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 654
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    return-void

    .line 638
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "AppCompat has already installed itself into the Window"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 632
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "AppCompat has already installed itself into the Window"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)V
    .locals 13

    .line 1486
    iget-boolean v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->u:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 1492
    :cond_0
    iget v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 1493
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1494
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    return-void

    .line 31392
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1502
    iget v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroidx/appcompat/view/menu/g;

    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1504
    invoke-virtual {p0, p1, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    return-void

    .line 1508
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_4

    return-void

    .line 1514
    :cond_4
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->b(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    .line 1519
    :cond_5
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/ViewGroup;

    const/4 v3, -0x1

    const/4 v4, -0x2

    if-eqz p2, :cond_7

    iget-boolean p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->q:Z

    if-eqz p2, :cond_6

    goto :goto_1

    .line 1555
    :cond_6
    iget-object p0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->i:Landroid/view/View;

    if-eqz p0, :cond_d

    .line 1558
    iget-object p0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->i:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 1559
    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne p0, v3, :cond_d

    move v6, v3

    goto :goto_2

    .line 1520
    :cond_7
    :goto_1
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/ViewGroup;

    if-nez p2, :cond_8

    .line 1522
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;)Z

    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/ViewGroup;

    if-nez p2, :cond_9

    return-void

    .line 1524
    :cond_8
    iget-boolean p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->q:Z

    if-eqz p2, :cond_9

    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_9

    .line 1526
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1530
    :cond_9
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->c(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;)Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a()Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_3

    .line 1534
    :cond_a
    iget-object p0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-nez p0, :cond_b

    .line 1536
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1539
    :cond_b
    iget p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->b:I

    .line 1540
    iget-object v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-virtual {v3, p2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1542
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 1543
    instance-of v3, p2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_c

    .line 1544
    check-cast p2, Landroid/view/ViewGroup;

    iget-object v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1546
    :cond_c
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/ViewGroup;

    iget-object v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {p2, v3, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1552
    iget-object p0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result p0

    if-nez p0, :cond_d

    .line 1553
    iget-object p0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_d
    move v6, v4

    .line 1564
    :goto_2
    iput-boolean v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->n:Z

    .line 1566
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    const/4 v7, -0x2

    iget v8, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->d:I

    iget v9, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->e:I

    const/16 v10, 0x3ea

    const/high16 v11, 0x820000

    const/4 v12, -0x3

    move-object v5, p0

    invoke-direct/range {v5 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 1573
    iget p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->c:I

    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1574
    iget p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->f:I

    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1576
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-interface {v0, p2, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1577
    iput-boolean v2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    return-void

    :cond_e
    :goto_3
    return-void

    :cond_f
    :goto_4
    return-void
.end method

.method private a(IZ)Z
    .locals 7

    .line 2247
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2248
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    packed-switch p1, :pswitch_data_0

    move p1, v0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x20

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x10

    .line 2266
    :goto_0
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->D()Z

    move-result v1

    .line 2268
    sget-boolean v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->B:Z

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_0

    if-eq p1, v0, :cond_1

    :cond_0
    if-nez v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_1

    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->R:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    instance-of v0, v0, Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_1

    .line 2274
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 2275
    iget v2, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, -0x31

    or-int/2addr v2, p1

    iput v2, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 2281
    :try_start_0
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    check-cast v2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v2, v0}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "AppCompatDelegate"

    const-string v6, "updateForNightMode. Calling applyOverrideConfiguration() failed with an exception. Will fall back to using Resources.updateConfiguration()"

    .line 2287
    invoke-static {v2, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2294
    :cond_1
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    if-nez v4, :cond_3

    if-eq v0, p1, :cond_3

    if-eqz p2, :cond_3

    if-nez v1, :cond_3

    .line 2297
    iget-boolean p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->R:Z

    if-eqz p2, :cond_3

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p2, v3, :cond_2

    iget-boolean p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->S:Z

    if-eqz p2, :cond_3

    :cond_2
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    instance-of p2, p2, Landroid/app/Activity;

    if-eqz p2, :cond_3

    .line 2311
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    check-cast p2, Landroid/app/Activity;

    invoke-static {p2}, Landroidx/core/app/a;->b(Landroid/app/Activity;)V

    move v4, v5

    :cond_3
    if-nez v4, :cond_10

    if-eq v0, p1, :cond_10

    .line 35341
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 35342
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 35344
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, -0x31

    or-int/2addr p1, v2

    iput p1, v0, Landroid/content/res/Configuration;->uiMode:I

    const/4 p1, 0x0

    .line 35345
    invoke-virtual {p2, v0, p1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 35348
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    const/16 v4, 0x17

    if-ge v2, v3, :cond_c

    .line 36046
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-ge v2, v3, :cond_c

    .line 36049
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_7

    .line 36113
    sget-boolean v2, Landroidx/appcompat/app/f;->d:Z

    if-nez v2, :cond_4

    .line 36115
    :try_start_1
    const-class v2, Landroid/content/res/Resources;

    const-string v3, "mResourcesImpl"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 36116
    sput-object v2, Landroidx/appcompat/app/f;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    const-string v3, "ResourcesFlusher"

    const-string v6, "Could not retrieve Resources#mResourcesImpl field"

    .line 36118
    invoke-static {v3, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36120
    :goto_2
    sput-boolean v5, Landroidx/appcompat/app/f;->d:Z

    .line 36123
    :cond_4
    sget-object v2, Landroidx/appcompat/app/f;->c:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_c

    .line 36130
    :try_start_2
    sget-object v2, Landroidx/appcompat/app/f;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p2

    const-string v2, "ResourcesFlusher"

    const-string v3, "Could not retrieve value from Resources#mResourcesImpl"

    .line 36132
    invoke-static {v2, v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p2, p1

    :goto_3
    if-eqz p2, :cond_c

    .line 36140
    sget-boolean v2, Landroidx/appcompat/app/f;->b:Z

    if-nez v2, :cond_5

    .line 36142
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mDrawableCache"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 36143
    sput-object v2, Landroidx/appcompat/app/f;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v2

    const-string v3, "ResourcesFlusher"

    const-string v6, "Could not retrieve ResourcesImpl#mDrawableCache field"

    .line 36145
    invoke-static {v3, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36147
    :goto_4
    sput-boolean v5, Landroidx/appcompat/app/f;->b:Z

    .line 36151
    :cond_5
    sget-object v2, Landroidx/appcompat/app/f;->a:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_6

    .line 36153
    :try_start_4
    sget-object v2, Landroidx/appcompat/app/f;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4

    move-object p1, p2

    goto :goto_5

    :catch_4
    move-exception p2

    const-string v2, "ResourcesFlusher"

    const-string v3, "Could not retrieve value from ResourcesImpl#mDrawableCache"

    .line 36155
    invoke-static {v2, v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_5
    if-eqz p1, :cond_c

    .line 36160
    invoke-static {p1}, Landroidx/appcompat/app/f;->a(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 36051
    :cond_7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_a

    .line 37084
    sget-boolean v2, Landroidx/appcompat/app/f;->b:Z

    if-nez v2, :cond_8

    .line 37086
    :try_start_5
    const-class v2, Landroid/content/res/Resources;

    const-string v3, "mDrawableCache"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 37087
    sput-object v2, Landroidx/appcompat/app/f;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_6

    :catch_5
    move-exception v2

    const-string v3, "ResourcesFlusher"

    const-string v6, "Could not retrieve Resources#mDrawableCache field"

    .line 37089
    invoke-static {v3, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37091
    :goto_6
    sput-boolean v5, Landroidx/appcompat/app/f;->b:Z

    .line 37095
    :cond_8
    sget-object v2, Landroidx/appcompat/app/f;->a:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_9

    .line 37097
    :try_start_6
    sget-object v2, Landroidx/appcompat/app/f;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_6

    move-object p1, p2

    goto :goto_7

    :catch_6
    move-exception p2

    const-string v2, "ResourcesFlusher"

    const-string v3, "Could not retrieve value from Resources#mDrawableCache"

    .line 37099
    invoke-static {v2, v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_7
    if-eqz p1, :cond_c

    .line 37108
    invoke-static {p1}, Landroidx/appcompat/app/f;->a(Ljava/lang/Object;)V

    goto :goto_a

    .line 36053
    :cond_a
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_c

    .line 38060
    sget-boolean v2, Landroidx/appcompat/app/f;->b:Z

    if-nez v2, :cond_b

    .line 38062
    :try_start_7
    const-class v2, Landroid/content/res/Resources;

    const-string v3, "mDrawableCache"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 38063
    sput-object v2, Landroidx/appcompat/app/f;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_8

    :catch_7
    move-exception v2

    const-string v3, "ResourcesFlusher"

    const-string v6, "Could not retrieve Resources#mDrawableCache field"

    .line 38065
    invoke-static {v3, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38067
    :goto_8
    sput-boolean v5, Landroidx/appcompat/app/f;->b:Z

    .line 38069
    :cond_b
    sget-object v2, Landroidx/appcompat/app/f;->a:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_c

    .line 38072
    :try_start_8
    sget-object v2, Landroidx/appcompat/app/f;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_8

    move-object p1, p2

    goto :goto_9

    :catch_8
    move-exception p2

    const-string v2, "ResourcesFlusher"

    const-string v3, "Could not retrieve value from Resources#mDrawableCache"

    .line 38074
    invoke-static {v2, v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    if-eqz p1, :cond_c

    .line 38077
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 35352
    :cond_c
    :goto_a
    iget p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->V:I

    if-eqz p1, :cond_d

    .line 35355
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    iget p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->V:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->setTheme(I)V

    .line 35357
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v4, :cond_d

    .line 35363
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    iget p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->V:I

    invoke-virtual {p1, p2, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_d
    if-eqz v1, :cond_f

    .line 35367
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_f

    .line 35368
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    check-cast p1, Landroid/app/Activity;

    .line 35369
    instance-of p2, p1, Landroidx/lifecycle/h;

    if-eqz p2, :cond_e

    .line 35371
    move-object p0, p1

    check-cast p0, Landroidx/lifecycle/h;

    invoke-interface {p0}, Landroidx/lifecycle/h;->a()Landroidx/lifecycle/e;

    move-result-object p0

    .line 35372
    invoke-virtual {p0}, Landroidx/lifecycle/e;->a()Landroidx/lifecycle/e$b;

    move-result-object p0

    sget-object p2, Landroidx/lifecycle/e$b;->STARTED:Landroidx/lifecycle/e$b;

    invoke-virtual {p0, p2}, Landroidx/lifecycle/e$b;->isAtLeast(Landroidx/lifecycle/e$b;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 35373
    invoke-virtual {p1, v0}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_b

    .line 35377
    :cond_e
    iget-boolean p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->T:Z

    if-eqz p0, :cond_f

    .line 35378
    invoke-virtual {p1, v0}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_f
    :goto_b
    move v4, v5

    :cond_10
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/view/ViewParent;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1419
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    :goto_0
    if-nez p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    if-eq p1, p0, :cond_3

    .line 1427
    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    .line 1428
    invoke-static {v1}, Landroidx/core/e/r;->p(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 1435
    :cond_2
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method private a(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;)Z
    .locals 2

    .line 1581
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->s()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a(Landroid/content/Context;)V

    .line 1582
    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;

    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->l:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$g;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroid/content/Context;)V

    iput-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/ViewGroup;

    const/16 p0, 0x51

    .line 1583
    iput p0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->c:I

    const/4 p0, 0x1

    return p0
.end method

.method private a(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1972
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1980
    :cond_0
    iget-boolean v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->b(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    iget-object p0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroidx/appcompat/view/menu/g;

    if-eqz p0, :cond_2

    .line 1982
    iget-object p0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroidx/appcompat/view/menu/g;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p3, p1}, Landroidx/appcompat/view/menu/g;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_2
    return v1
.end method

.method private b(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;)Z
    .locals 6

    .line 1632
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    .line 1635
    iget v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_4

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroidx/appcompat/widget/o;

    if-eqz v1, :cond_4

    .line 1637
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1638
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1639
    sget v4, Landroidx/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/4 v4, 0x0

    .line 1642
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_1

    .line 1643
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 1644
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1645
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1646
    sget v5, Landroidx/appcompat/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v4, v5, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_0

    .line 1649
    :cond_1
    sget v5, Landroidx/appcompat/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v3, v5, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1653
    :goto_0
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_3

    if-nez v4, :cond_2

    .line 1655
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 1656
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1658
    :cond_2
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_3
    if-eqz v4, :cond_4

    .line 1662
    new-instance v1, Landroidx/appcompat/view/d;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Landroidx/appcompat/view/d;-><init>(Landroid/content/Context;I)V

    .line 1663
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v0, v1

    .line 1667
    :cond_4
    new-instance v1, Landroidx/appcompat/view/menu/g;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/g;-><init>(Landroid/content/Context;)V

    .line 1668
    invoke-virtual {v1, p0}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/g$a;)V

    .line 1669
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a(Landroidx/appcompat/view/menu/g;)V

    return v2
.end method

.method private b(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .locals 8

    .line 1696
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->u:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1701
    :cond_0
    iget-boolean v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 1705
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->P:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->P:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eq v0, p1, :cond_2

    .line 1707
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->P:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    .line 32392
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1713
    iget v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->i:Landroid/view/View;

    .line 1716
    :cond_3
    iget v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    if-eqz v3, :cond_5

    iget v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    const/16 v4, 0x6c

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    move v3, v1

    goto :goto_1

    :cond_5
    :goto_0
    move v3, v2

    :goto_1
    if-eqz v3, :cond_6

    .line 1719
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroidx/appcompat/widget/o;

    if-eqz v4, :cond_6

    .line 1722
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroidx/appcompat/widget/o;

    invoke-interface {v4}, Landroidx/appcompat/widget/o;->g()V

    .line 1725
    :cond_6
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->i:Landroid/view/View;

    if-nez v4, :cond_14

    if-eqz v3, :cond_7

    .line 33388
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Landroidx/appcompat/app/a;

    .line 1726
    instance-of v4, v4, Landroidx/appcompat/app/g;

    if-nez v4, :cond_14

    .line 1729
    :cond_7
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroidx/appcompat/view/menu/g;

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    iget-boolean v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->r:Z

    if-eqz v4, :cond_e

    .line 1730
    :cond_8
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroidx/appcompat/view/menu/g;

    if-nez v4, :cond_9

    .line 1731
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->b(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;)Z

    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroidx/appcompat/view/menu/g;

    if-nez v4, :cond_9

    return v1

    :cond_9
    if-eqz v3, :cond_b

    .line 1736
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroidx/appcompat/widget/o;

    if-eqz v4, :cond_b

    .line 1737
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Landroidx/appcompat/app/AppCompatDelegateImpl$a;

    if-nez v4, :cond_a

    .line 1738
    new-instance v4, Landroidx/appcompat/app/AppCompatDelegateImpl$a;

    invoke-direct {v4, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$a;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    iput-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Landroidx/appcompat/app/AppCompatDelegateImpl$a;

    .line 1740
    :cond_a
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroidx/appcompat/widget/o;

    iget-object v6, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroidx/appcompat/view/menu/g;

    iget-object v7, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Landroidx/appcompat/app/AppCompatDelegateImpl$a;

    invoke-interface {v4, v6, v7}, Landroidx/appcompat/widget/o;->a(Landroid/view/Menu;Landroidx/appcompat/view/menu/m$a;)V

    .line 1745
    :cond_b
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/g;->e()V

    .line 1746
    iget v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    iget-object v6, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroidx/appcompat/view/menu/g;

    invoke-interface {v0, v4, v6}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1748
    invoke-virtual {p1, v5}, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a(Landroidx/appcompat/view/menu/g;)V

    if-eqz v3, :cond_c

    .line 1750
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroidx/appcompat/widget/o;

    if-eqz p1, :cond_c

    .line 1752
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroidx/appcompat/widget/o;

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Landroidx/appcompat/app/AppCompatDelegateImpl$a;

    invoke-interface {p1, v5, p0}, Landroidx/appcompat/widget/o;->a(Landroid/view/Menu;Landroidx/appcompat/view/menu/m$a;)V

    :cond_c
    return v1

    .line 1758
    :cond_d
    iput-boolean v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->r:Z

    .line 1763
    :cond_e
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/g;->e()V

    .line 1767
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->s:Landroid/os/Bundle;

    if-eqz v4, :cond_f

    .line 1768
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroidx/appcompat/view/menu/g;

    iget-object v6, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->s:Landroid/os/Bundle;

    invoke-virtual {v4, v6}, Landroidx/appcompat/view/menu/g;->b(Landroid/os/Bundle;)V

    .line 1769
    iput-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->s:Landroid/os/Bundle;

    .line 1773
    :cond_f
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->i:Landroid/view/View;

    iget-object v6, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroidx/appcompat/view/menu/g;

    invoke-interface {v0, v1, v4, v6}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_11

    if-eqz v3, :cond_10

    .line 1774
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroidx/appcompat/widget/o;

    if-eqz p2, :cond_10

    .line 1777
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroidx/appcompat/widget/o;

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Landroidx/appcompat/app/AppCompatDelegateImpl$a;

    invoke-interface {p2, v5, p0}, Landroidx/appcompat/widget/o;->a(Landroid/view/Menu;Landroidx/appcompat/view/menu/m$a;)V

    .line 1779
    :cond_10
    iget-object p0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->f()V

    return v1

    :cond_11
    if-eqz p2, :cond_12

    .line 1785
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_2

    :cond_12
    const/4 p2, -0x1

    .line 1784
    :goto_2
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    .line 1786
    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_13

    move p2, v2

    goto :goto_3

    :cond_13
    move p2, v1

    :goto_3
    iput-boolean p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->p:Z

    .line 1787
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroidx/appcompat/view/menu/g;

    iget-boolean v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->p:Z

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/g;->setQwertyMode(Z)V

    .line 1788
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/g;->f()V

    .line 1792
    :cond_14
    iput-boolean v2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    .line 1793
    iput-boolean v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->n:Z

    .line 1794
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->P:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    return v2
.end method

.method private c(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;)Z
    .locals 3

    .line 1675
    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->i:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1676
    iget-object p0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->i:Landroid/view/View;

    iput-object p0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroid/view/View;

    return v1

    .line 1680
    :cond_0
    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroidx/appcompat/view/menu/g;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 1684
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->G:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    if-nez v0, :cond_2

    .line 1685
    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$h;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->G:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    .line 1688
    :cond_2
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->G:Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a(Landroidx/appcompat/view/menu/m$a;)Landroidx/appcompat/view/menu/n;

    move-result-object p0

    .line 1690
    check-cast p0, Landroid/view/View;

    iput-object p0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroid/view/View;

    .line 1692
    iget-object p0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroid/view/View;

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method private i(I)V
    .locals 2

    .line 1996
    iget v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->w:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->w:I

    .line 1998
    iget-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Z

    if-nez p1, :cond_0

    .line 1999
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->aa:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Landroidx/core/e/r;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 2000
    iput-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Z

    :cond_0
    return-void
.end method

.method private static j(I)I
    .locals 1

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    const-string p0, "AppCompatDelegate"

    const-string v0, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    .line 2116
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x6c

    return p0

    :cond_0
    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    const-string p0, "AppCompatDelegate"

    const-string v0, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    .line 2120
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x6d

    return p0

    :cond_1
    return p0
.end method

.method private k(I)I
    .locals 2

    const/16 v0, -0x64

    const/4 v1, -0x1

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 2225
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2220
    :pswitch_0
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->C()Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$e;->a()I

    move-result p0

    return p0

    .line 2210
    :pswitch_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    .line 2211
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager;

    .line 2212
    invoke-virtual {p1}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p1

    if-nez p1, :cond_0

    return v1

    .line 2218
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->B()Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$e;->a()I

    move-result p0

    return p0

    :pswitch_2
    return p1

    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private r()V
    .locals 3

    .line 396
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->v()V

    .line 398
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Landroidx/appcompat/app/a;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 402
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 403
    new-instance v0, Landroidx/appcompat/app/j;

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Z

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/j;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Landroidx/appcompat/app/a;

    goto :goto_0

    .line 404
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 405
    new-instance v0, Landroidx/appcompat/app/j;

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    check-cast v1, Landroid/app/Dialog;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/j;-><init>(Landroid/app/Dialog;)V

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Landroidx/appcompat/app/a;

    .line 407
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Landroidx/appcompat/app/a;

    if-eqz v0, :cond_3

    .line 408
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Landroidx/appcompat/app/a;

    iget-boolean p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->ab:Z

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/a;->a(Z)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private s()Landroid/content/Context;
    .locals 1

    .line 453
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->b()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 459
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    :cond_1
    return-object v0
.end method

.method private t()V
    .locals 1

    .line 606
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Y:Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Y:Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$e;->e()V

    .line 609
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Z:Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    if-eqz v0, :cond_1

    .line 610
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Z:Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$e;->e()V

    :cond_1
    return-void
.end method

.method private u()V
    .locals 1

    .line 622
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroid/view/Window;)V

    .line 625
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    if-eqz p0, :cond_1

    return-void

    .line 626
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "We have not been given a Window"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private v()V
    .locals 2

    .line 658
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Z

    if-nez v0, :cond_4

    .line 659
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->w()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->I:Landroid/view/ViewGroup;

    .line 662
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->y()Ljava/lang/CharSequence;

    move-result-object v0

    .line 663
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 664
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroidx/appcompat/widget/o;

    if-eqz v1, :cond_0

    .line 665
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroidx/appcompat/widget/o;

    invoke-interface {v1, v0}, Landroidx/appcompat/widget/o;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8388
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Landroidx/appcompat/app/a;

    if-eqz v1, :cond_1

    .line 9388
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Landroidx/appcompat/app/a;

    .line 667
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/a;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 668
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->J:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 669
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->J:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    :cond_2
    :goto_0
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->x()V

    const/4 v0, 0x1

    .line 677
    iput-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Z

    const/4 v0, 0x0

    .line 684
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->f(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    .line 685
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->u:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroidx/appcompat/view/menu/g;

    if-nez v0, :cond_4

    :cond_3
    const/16 v0, 0x6c

    .line 686
    invoke-direct {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->i(I)V

    :cond_4
    return-void
.end method

.method private w()Landroid/view/ViewGroup;
    .locals 7

    .line 692
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 694
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 700
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowNoTitle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 701
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->d(I)Z

    goto :goto_0

    .line 702
    :cond_0
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x6c

    .line 704
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->d(I)Z

    .line 706
    :cond_1
    :goto_0
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v4, 0x6d

    if-eqz v1, :cond_2

    .line 707
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->d(I)Z

    .line 709
    :cond_2
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowActionModeOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    .line 710
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->d(I)Z

    .line 712
    :cond_3
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTheme_android_windowIsFloating:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->s:Z

    .line 713
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 716
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->u()V

    .line 717
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 719
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 723
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->t:Z

    const/4 v5, 0x0

    if-nez v1, :cond_9

    .line 724
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->s:Z

    if-eqz v1, :cond_4

    .line 726
    sget v1, Landroidx/appcompat/R$layout;->abc_dialog_title_material:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 730
    iput-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Z

    iput-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Z

    goto/16 :goto_3

    .line 731
    :cond_4
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Z

    if-eqz v0, :cond_8

    .line 737
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 738
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v6, Landroidx/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v1, v6, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 741
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_5

    .line 742
    new-instance v1, Landroidx/appcompat/view/d;

    iget-object v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, v3, v0}, Landroidx/appcompat/view/d;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    .line 744
    :cond_5
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    .line 748
    :goto_1
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$layout;->abc_screen_toolbar:I

    .line 749
    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 751
    sget v1, Landroidx/appcompat/R$id;->decor_content_parent:I

    .line 752
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/o;

    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroidx/appcompat/widget/o;

    .line 753
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroidx/appcompat/widget/o;

    .line 9392
    iget-object v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v3

    .line 753
    invoke-interface {v1, v3}, Landroidx/appcompat/widget/o;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 758
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Z

    if-eqz v1, :cond_6

    .line 759
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroidx/appcompat/widget/o;

    invoke-interface {v1, v4}, Landroidx/appcompat/widget/o;->a(I)V

    .line 761
    :cond_6
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->L:Z

    if-eqz v1, :cond_7

    .line 762
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroidx/appcompat/widget/o;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroidx/appcompat/widget/o;->a(I)V

    .line 764
    :cond_7
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->M:Z

    if-eqz v1, :cond_c

    .line 765
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroidx/appcompat/widget/o;

    const/4 v3, 0x5

    invoke-interface {v1, v3}, Landroidx/appcompat/widget/o;->a(I)V

    goto :goto_3

    :cond_8
    move-object v0, v5

    goto :goto_3

    .line 769
    :cond_9
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->r:Z

    if-eqz v1, :cond_a

    .line 770
    sget v1, Landroidx/appcompat/R$layout;->abc_screen_simple_overlay_action_mode:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_2

    .line 773
    :cond_a
    sget v1, Landroidx/appcompat/R$layout;->abc_screen_simple:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 776
    :goto_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_b

    .line 779
    new-instance v1, Landroidx/appcompat/app/AppCompatDelegateImpl$3;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$3;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    invoke-static {v0, v1}, Landroidx/core/e/r;->a(Landroid/view/View;Landroidx/core/e/o;)V

    goto :goto_3

    .line 801
    :cond_b
    move-object v1, v0

    check-cast v1, Landroidx/appcompat/widget/s;

    new-instance v3, Landroidx/appcompat/app/AppCompatDelegateImpl$4;

    invoke-direct {v3, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$4;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    invoke-interface {v1, v3}, Landroidx/appcompat/widget/s;->setOnFitSystemWindowsListener(Landroidx/appcompat/widget/s$a;)V

    :cond_c
    :goto_3
    if-eqz v0, :cond_10

    .line 822
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroidx/appcompat/widget/o;

    if-nez v1, :cond_d

    .line 823
    sget v1, Landroidx/appcompat/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->J:Landroid/widget/TextView;

    .line 827
    :cond_d
    invoke-static {v0}, Landroidx/appcompat/widget/ak;->b(Landroid/view/View;)V

    .line 829
    sget v1, Landroidx/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 832
    iget-object v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_f

    .line 836
    :goto_4
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_e

    .line 837
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 838
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 839
    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/ContentFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_e
    const/4 v2, -0x1

    .line 844
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setId(I)V

    .line 845
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/ContentFrameLayout;->setId(I)V

    .line 849
    instance-of v2, v3, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_f

    .line 850
    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 855
    :cond_f
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 857
    new-instance v2, Landroidx/appcompat/app/AppCompatDelegateImpl$5;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$5;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Landroidx/appcompat/widget/ContentFrameLayout$a;)V

    return-object v0

    .line 812
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->s:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->r:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->t:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 695
    :cond_11
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 696
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private x()V
    .locals 5

    .line 873
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->I:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 879
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 880
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 881
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 882
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 880
    invoke-virtual {v0, v2, v3, v4, v1}, Landroidx/appcompat/widget/ContentFrameLayout;->a(IIII)V

    .line 884
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {p0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 885
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMajor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 886
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMinor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 888
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 889
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    .line 890
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v2

    .line 889
    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 892
    :cond_0
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 893
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    .line 894
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v2

    .line 893
    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 896
    :cond_1
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 897
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    .line 898
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v2

    .line 897
    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 900
    :cond_2
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 901
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    .line 902
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v2

    .line 901
    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 904
    :cond_3
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 906
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->requestLayout()V

    return-void
.end method

.method private y()Ljava/lang/CharSequence;
    .locals 1

    .line 992
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 993
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 996
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->D:Ljava/lang/CharSequence;

    return-object p0
.end method

.method private z()V
    .locals 1

    .line 2108
    iget-boolean p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Z

    if-nez p0, :cond_0

    return-void

    .line 2109
    :cond_0
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Window feature must be requested before adding content"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method final a(Landroid/view/Menu;)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    .locals 4

    .line 1942
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->O:[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1943
    array-length v1, p0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 1945
    aget-object v2, p0, v0

    if-eqz v2, :cond_1

    .line 1946
    iget-object v3, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroidx/appcompat/view/menu/g;

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a()Landroidx/appcompat/app/a;
    .locals 0

    .line 383
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->r()V

    .line 384
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Landroidx/appcompat/app/a;

    return-object p0
.end method

.method public final a(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;
    .locals 7

    .line 1047
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/view/b;

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/view/b;

    invoke-virtual {v0}, Landroidx/appcompat/view/b;->c()V

    .line 1051
    :cond_0
    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl$b;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$b;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroidx/appcompat/view/b$a;)V

    .line 1053
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a()Landroidx/appcompat/app/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1055
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->a(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/view/b;

    .line 1061
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/view/b;

    if-nez p1, :cond_b

    .line 13078
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->o()V

    .line 13079
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/view/b;

    if-eqz p1, :cond_2

    .line 13080
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/view/b;

    invoke-virtual {p1}, Landroidx/appcompat/view/b;->c()V

    .line 13100
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_5

    .line 13101
    iget-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->s:Z

    if-eqz p1, :cond_4

    .line 13103
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 13104
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 13105
    sget v5, Landroidx/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v4, v5, p1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 13108
    iget v5, p1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_3

    .line 13109
    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 13110
    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 13111
    iget v4, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v4, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 13113
    new-instance v4, Landroidx/appcompat/view/d;

    iget-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-direct {v4, v6, v2}, Landroidx/appcompat/view/d;-><init>(Landroid/content/Context;I)V

    .line 13114
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_0

    .line 13116
    :cond_3
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    .line 13119
    :goto_0
    new-instance v5, Landroidx/appcompat/widget/ActionBarContextView;

    invoke-direct {v5, v4}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Landroidx/appcompat/widget/ActionBarContextView;

    .line 13120
    new-instance v5, Landroid/widget/PopupWindow;

    sget v6, Landroidx/appcompat/R$attr;->actionModePopupWindowStyle:I

    invoke-direct {v5, v4, v1, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Landroid/widget/PopupWindow;

    .line 13122
    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Landroid/widget/PopupWindow;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroidx/core/widget/g;->a(Landroid/widget/PopupWindow;I)V

    .line 13124
    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Landroid/widget/PopupWindow;

    iget-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 13125
    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 13127
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, Landroidx/appcompat/R$attr;->actionBarSize:I

    invoke-virtual {v5, v6, p1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 13129
    iget p1, p1, Landroid/util/TypedValue;->data:I

    .line 13130
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 13129
    invoke-static {p1, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p1

    .line 13131
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    .line 13132
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 13133
    new-instance p1, Landroidx/appcompat/app/AppCompatDelegateImpl$6;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$6;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Ljava/lang/Runnable;

    goto :goto_1

    .line 13164
    :cond_4
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->I:Landroid/view/ViewGroup;

    sget v4, Landroidx/appcompat/R$id;->action_mode_bar_stub:I

    .line 13165
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ViewStubCompat;

    if-eqz p1, :cond_5

    .line 13168
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->s()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 13169
    invoke-virtual {p1}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Landroidx/appcompat/widget/ActionBarContextView;

    .line 13174
    :cond_5
    :goto_1
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz p1, :cond_a

    .line 13175
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->o()V

    .line 13176
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->c()V

    .line 13177
    new-instance p1, Landroidx/appcompat/view/e;

    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Landroid/widget/PopupWindow;

    if-nez v6, :cond_6

    goto :goto_2

    :cond_6
    move v3, v2

    :goto_2
    invoke-direct {p1, v4, v5, v0, v3}, Landroidx/appcompat/view/e;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Landroidx/appcompat/view/b$a;Z)V

    .line 13179
    invoke-virtual {p1}, Landroidx/appcompat/view/b;->b()Landroid/view/Menu;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Landroidx/appcompat/view/b$a;->a(Landroidx/appcompat/view/b;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 13180
    invoke-virtual {p1}, Landroidx/appcompat/view/b;->d()V

    .line 13181
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->a(Landroidx/appcompat/view/b;)V

    .line 13182
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/view/b;

    .line 13184
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->n()Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_7

    .line 13185
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setAlpha(F)V

    .line 13186
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {p1}, Landroidx/core/e/r;->f(Landroid/view/View;)Landroidx/core/e/u;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/core/e/u;->a(F)Landroidx/core/e/u;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroidx/core/e/u;

    .line 13187
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroidx/core/e/u;

    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl$7;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$7;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    invoke-virtual {p1, v0}, Landroidx/core/e/u;->a(Landroidx/core/e/v;)Landroidx/core/e/u;

    goto :goto_3

    .line 13206
    :cond_7
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setAlpha(F)V

    .line 13207
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 13208
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 13210
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_8

    .line 13211
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroidx/core/e/r;->j(Landroid/view/View;)V

    .line 13215
    :cond_8
    :goto_3
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_a

    .line 13216
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 13219
    :cond_9
    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/view/b;

    .line 13226
    :cond_a
    :goto_4
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/view/b;

    .line 1063
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/view/b;

    .line 1066
    :cond_b
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/view/b;

    return-object p0
.end method

.method public final a(I)V
    .locals 0

    .line 616
    iput p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->V:I

    return-void
.end method

.method final a(ILandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/Menu;)V
    .locals 1

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    if-ltz p1, :cond_0

    .line 1918
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->O:[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1919
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->O:[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    aget-object p2, p2, p1

    :cond_0
    if-eqz p2, :cond_1

    .line 1925
    iget-object p3, p2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroidx/appcompat/view/menu/g;

    :cond_1
    if-eqz p2, :cond_2

    .line 1930
    iget-boolean p2, p2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    if-nez p2, :cond_2

    return-void

    .line 1933
    :cond_2
    iget-boolean p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->u:Z

    if-nez p2, :cond_3

    .line 1937
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    .line 34188
    iget-object p0, p0, Landroidx/appcompat/view/i;->b:Landroid/view/Window$Callback;

    .line 1937
    invoke-interface {p0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_3
    return-void
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 1

    .line 487
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Z

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->a(Landroid/content/res/Configuration;)V

    .line 497
    :cond_0
    invoke-static {}, Landroidx/appcompat/widget/f;->b()Landroidx/appcompat/widget/f;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/f;->a(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 501
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Z)Z

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    .line 543
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->v()V

    .line 544
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->I:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 545
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 546
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 547
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    .line 5188
    iget-object p0, p0, Landroidx/appcompat/view/i;->b:Landroid/view/Window$Callback;

    .line 547
    invoke-interface {p0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 561
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->v()V

    .line 562
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->I:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 563
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 564
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 565
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    .line 7188
    iget-object p0, p0, Landroidx/appcompat/view/i;->b:Landroid/view/Window$Callback;

    .line 565
    invoke-interface {p0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method final a(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V
    .locals 3

    if-eqz p2, :cond_0

    .line 1818
    iget v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroidx/appcompat/widget/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroidx/appcompat/widget/o;

    .line 1819
    invoke-interface {v0}, Landroidx/appcompat/widget/o;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1820
    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->b(Landroidx/appcompat/view/menu/g;)V

    return-void

    .line 1824
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1825
    iget-boolean v2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 1826
    iget-object v2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_1

    .line 1829
    iget p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    invoke-virtual {p0, p2, p1, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(ILandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/Menu;)V

    :cond_1
    const/4 p2, 0x0

    .line 1833
    iput-boolean p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    .line 1834
    iput-boolean p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->n:Z

    .line 1835
    iput-boolean p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    .line 1838
    iput-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroid/view/View;

    const/4 p2, 0x1

    .line 1842
    iput-boolean p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->q:Z

    .line 1844
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->P:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    if-ne p2, p1, :cond_2

    .line 1845
    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->P:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    :cond_2
    return-void
.end method

.method public final a(Landroidx/appcompat/view/menu/g;)V
    .locals 5

    .line 11588
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroidx/appcompat/widget/o;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroidx/appcompat/widget/o;

    invoke-interface {p1}, Landroidx/appcompat/widget/o;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    .line 11589
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroidx/appcompat/widget/o;

    .line 11590
    invoke-interface {p1}, Landroidx/appcompat/widget/o;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12392
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    .line 11594
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroidx/appcompat/widget/o;

    invoke-interface {v2}, Landroidx/appcompat/widget/o;->c()Z

    move-result v2

    const/16 v3, 0x6c

    if-nez v2, :cond_3

    if-eqz p1, :cond_4

    .line 11595
    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->u:Z

    if-nez v2, :cond_4

    .line 11597
    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->w:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 11599
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->aa:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11600
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->aa:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 11603
    :cond_1
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->f(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    .line 11607
    iget-object v2, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroidx/appcompat/view/menu/g;

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->r:Z

    if-nez v2, :cond_2

    iget-object v2, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->i:Landroid/view/View;

    iget-object v4, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroidx/appcompat/view/menu/g;

    .line 11608
    invoke-interface {p1, v1, v2, v4}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11609
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroidx/appcompat/view/menu/g;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 11610
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroidx/appcompat/widget/o;

    invoke-interface {p0}, Landroidx/appcompat/widget/o;->e()Z

    :cond_2
    return-void

    .line 11614
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroidx/appcompat/widget/o;

    invoke-interface {v0}, Landroidx/appcompat/widget/o;->f()Z

    .line 11615
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->u:Z

    if-nez v0, :cond_4

    .line 11616
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->f(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object p0

    .line 11617
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroidx/appcompat/view/menu/g;

    invoke-interface {p1, v3, p0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_4
    return-void

    .line 11623
    :cond_5
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->f(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object p1

    .line 11625
    iput-boolean v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->q:Z

    .line 11626
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    const/4 v0, 0x0

    .line 11628
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)V

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 979
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->D:Ljava/lang/CharSequence;

    .line 981
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroidx/appcompat/widget/o;

    if-eqz v0, :cond_0

    .line 982
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroidx/appcompat/widget/o;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/o;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void

    .line 10388
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Landroidx/appcompat/app/a;

    if-eqz v0, :cond_1

    .line 11388
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Landroidx/appcompat/app/a;

    .line 984
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a;->a(Ljava/lang/CharSequence;)V

    return-void

    .line 985
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->J:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 986
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->J:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method final a(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1270
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1271
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/a;->a(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    .line 1277
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->P:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eqz p1, :cond_2

    .line 1278
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->P:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1281
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->P:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eqz p1, :cond_1

    .line 1282
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->P:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    iput-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->n:Z

    :cond_1
    return v1

    .line 1292
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->P:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 1293
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->f(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object p1

    .line 1294
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->b(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 1295
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-direct {p0, p1, v2, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;ILandroid/view/KeyEvent;)Z

    move-result p0

    .line 1296
    iput-boolean v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method final a(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1307
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    instance-of v0, v0, Landroidx/core/e/d$a;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    instance-of v0, v0, Landroidx/appcompat/app/e;

    if-eqz v0, :cond_1

    .line 1308
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1309
    invoke-static {v0, p1}, Landroidx/core/e/d;->a(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1314
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x52

    if-ne v0, v2, :cond_2

    .line 1316
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    .line 14188
    iget-object v0, v0, Landroidx/appcompat/view/i;->b:Landroid/view/Window$Callback;

    .line 1316
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 1321
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1322
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_0

    :cond_3
    move v3, v4

    :goto_0
    const/4 v5, 0x4

    if-eqz v3, :cond_8

    if-eq v0, v5, :cond_6

    if-eq v0, v2, :cond_4

    goto :goto_2

    .line 14850
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 14851
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->f(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    .line 14852
    iget-boolean v2, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    if-nez v2, :cond_5

    .line 14853
    invoke-direct {p0, v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->b(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    :cond_5
    return v1

    .line 14366
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    move v1, v4

    :goto_1
    iput-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Q:Z

    :goto_2
    return v4

    :cond_8
    if-eq v0, v5, :cond_12

    if-eq v0, v2, :cond_9

    goto/16 :goto_9

    .line 15861
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/view/b;

    if-nez v0, :cond_11

    .line 15866
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->f(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    .line 15867
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroidx/appcompat/widget/o;

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroidx/appcompat/widget/o;

    .line 15868
    invoke-interface {v2}, Landroidx/appcompat/widget/o;->b()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    .line 15869
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    if-nez v2, :cond_b

    .line 15870
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroidx/appcompat/widget/o;

    invoke-interface {v2}, Landroidx/appcompat/widget/o;->c()Z

    move-result v2

    if-nez v2, :cond_a

    .line 15871
    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->u:Z

    if-nez v2, :cond_e

    invoke-direct {p0, v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->b(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 15872
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroidx/appcompat/widget/o;

    invoke-interface {p1}, Landroidx/appcompat/widget/o;->e()Z

    move-result p1

    goto :goto_5

    .line 15875
    :cond_a
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroidx/appcompat/widget/o;

    invoke-interface {p1}, Landroidx/appcompat/widget/o;->f()Z

    move-result p1

    goto :goto_5

    .line 15878
    :cond_b
    iget-boolean v2, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    if-nez v2, :cond_f

    iget-boolean v2, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->n:Z

    if-eqz v2, :cond_c

    goto :goto_4

    .line 15884
    :cond_c
    iget-boolean v2, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    if-eqz v2, :cond_e

    .line 15886
    iget-boolean v2, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->r:Z

    if-eqz v2, :cond_d

    .line 15889
    iput-boolean v4, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    .line 15890
    invoke-direct {p0, v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->b(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_3

    :cond_d
    move v2, v1

    :goto_3
    if-eqz v2, :cond_e

    .line 15895
    invoke-direct {p0, v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)V

    move p1, v1

    goto :goto_5

    :cond_e
    move p1, v4

    goto :goto_5

    .line 15881
    :cond_f
    :goto_4
    iget-boolean p1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    .line 15883
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    :goto_5
    if-eqz p1, :cond_11

    .line 15902
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    const-string p1, "audio"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz p0, :cond_10

    .line 15905
    invoke-virtual {p0, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_6

    :cond_10
    const-string p0, "AppCompatDelegate"

    const-string p1, "Couldn\'t get audio manager"

    .line 15907
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_6
    return v1

    .line 15334
    :cond_12
    iget-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Q:Z

    .line 15335
    iput-boolean v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Q:Z

    .line 15337
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->f(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 15338
    iget-boolean v2, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    if-eqz v2, :cond_14

    if-nez p1, :cond_13

    .line 15343
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    :cond_13
    return v1

    .line 16253
    :cond_14
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/view/b;

    if-eqz p1, :cond_15

    .line 16254
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->j:Landroidx/appcompat/view/b;

    invoke-virtual {p0}, Landroidx/appcompat/view/b;->c()V

    :goto_7
    move p0, v1

    goto :goto_8

    .line 16259
    :cond_15
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a()Landroidx/appcompat/app/a;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 16260
    invoke-virtual {p0}, Landroidx/appcompat/app/a;->g()Z

    move-result p0

    if-eqz p0, :cond_16

    goto :goto_7

    :cond_16
    move p0, v4

    :goto_8
    if-eqz p0, :cond_17

    return v1

    :cond_17
    :goto_9
    return v4
.end method

.method public final a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z
    .locals 2

    .line 11392
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1027
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->u:Z

    if-nez v1, :cond_0

    .line 1028
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->l()Landroidx/appcompat/view/menu/g;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroid/view/Menu;)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1030
    iget p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    invoke-interface {v0, p0, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method final a(Z)Z
    .locals 2

    .line 2163
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->u:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2168
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->A()I

    move-result v0

    .line 2169
    invoke-direct {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->k(I)I

    move-result v1

    .line 2170
    invoke-direct {p0, v1, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(IZ)Z

    move-result p1

    if-nez v0, :cond_1

    .line 2173
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->B()Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$e;->d()V

    goto :goto_0

    .line 2174
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Y:Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    if-eqz v1, :cond_2

    .line 2176
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Y:Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$e;->e()V

    :cond_2
    :goto_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 2179
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->C()Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$e;->d()V

    goto :goto_1

    .line 2180
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Z:Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    if-eqz v0, :cond_4

    .line 2182
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Z:Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$e;->e()V

    :cond_4
    :goto_1
    return p1
.end method

.method public final b()Landroid/view/MenuInflater;
    .locals 2

    .line 467
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->i:Landroid/view/MenuInflater;

    if-nez v0, :cond_1

    .line 468
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->r()V

    .line 469
    new-instance v0, Landroidx/appcompat/view/g;

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Landroidx/appcompat/app/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Landroidx/appcompat/app/a;

    .line 470
    invoke-virtual {v1}, Landroidx/appcompat/app/a;->b()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    :goto_0
    invoke-direct {v0, v1}, Landroidx/appcompat/view/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->i:Landroid/view/MenuInflater;

    .line 472
    :cond_1
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->i:Landroid/view/MenuInflater;

    return-object p0
.end method

.method public final b(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 479
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->v()V

    .line 480
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 570
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->v()V

    .line 571
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->I:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 572
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    .line 8188
    iget-object p0, p0, Landroidx/appcompat/view/i;->b:Landroid/view/Window$Callback;

    .line 573
    invoke-interface {p0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method final b(Landroidx/appcompat/view/menu/g;)V
    .locals 2

    .line 1800
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->N:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1804
    iput-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->N:Z

    .line 1805
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroidx/appcompat/widget/o;

    invoke-interface {v0}, Landroidx/appcompat/widget/o;->h()V

    .line 33392
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1807
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->u:Z

    if-nez v1, :cond_1

    const/16 v1, 0x6c

    .line 1808
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 p1, 0x0

    .line 1810
    iput-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->N:Z

    return-void
.end method

.method public final c()V
    .locals 3

    const/4 v0, 0x1

    .line 342
    iput-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->R:Z

    const/4 v1, 0x0

    .line 346
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Z)Z

    .line 350
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->u()V

    .line 352
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 355
    :try_start_0
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Landroidx/core/app/c;->b(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :catch_0
    if-eqz v1, :cond_1

    .line 3388
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Landroidx/appcompat/app/a;

    if-nez v1, :cond_0

    .line 363
    iput-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->ab:Z

    goto :goto_0

    .line 365
    :cond_0
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/a;->a(Z)V

    .line 370
    :cond_1
    :goto_0
    iput-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->S:Z

    return-void
.end method

.method public final c(I)V
    .locals 2

    .line 552
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->v()V

    .line 553
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->I:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 554
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 555
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 556
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    .line 6188
    iget-object p0, p0, Landroidx/appcompat/view/i;->b:Landroid/view/Window$Callback;

    .line 556
    invoke-interface {p0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final d()V
    .locals 0

    .line 376
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->v()V

    return-void
.end method

.method public final d(I)Z
    .locals 3

    .line 911
    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->j(I)I

    move-result p1

    .line 913
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->t:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x6c

    if-ne p1, v0, :cond_0

    return v1

    .line 916
    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne p1, v2, :cond_1

    .line 918
    iput-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Z

    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 948
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p0

    return p0

    .line 927
    :sswitch_0
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->z()V

    .line 928
    iput-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Z

    return v2

    .line 923
    :sswitch_1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->z()V

    .line 924
    iput-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Z

    return v2

    .line 931
    :sswitch_2
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->z()V

    .line 932
    iput-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->r:Z

    return v2

    .line 939
    :sswitch_3
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->z()V

    .line 940
    iput-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->M:Z

    return v2

    .line 935
    :sswitch_4
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->z()V

    .line 936
    iput-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->L:Z

    return v2

    .line 943
    :sswitch_5
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->z()V

    .line 944
    iput-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->t:Z

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x5 -> :sswitch_3
        0xa -> :sswitch_2
        0x6c -> :sswitch_1
        0x6d -> :sswitch_0
    .end sparse-switch
.end method

.method public final e()V
    .locals 3

    const/4 v0, 0x1

    .line 506
    iput-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->T:Z

    .line 4159
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Z)Z

    .line 4622
    sget-object v0, Landroidx/appcompat/app/d;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 4625
    :try_start_0
    invoke-static {p0}, Landroidx/appcompat/app/d;->b(Landroidx/appcompat/app/d;)V

    .line 4627
    sget-object v1, Landroidx/appcompat/app/d;->b:Landroidx/b/b;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/b/b;->add(Ljava/lang/Object;)Z

    .line 4628
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method final e(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x6c

    if-ne p1, v1, :cond_1

    .line 1001
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a()Landroidx/appcompat/app/a;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1003
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/a;->c(Z)V

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 1008
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->f(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object p1

    .line 1009
    iget-boolean v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    if-eqz v1, :cond_2

    .line 1010
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    :cond_2
    return-void
.end method

.method protected final f(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    .locals 4

    .line 1955
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->O:[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 1956
    new-array v1, v1, [Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eqz v0, :cond_1

    .line 1958
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1960
    :cond_1
    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->O:[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-object v0, v1

    .line 1963
    :cond_2
    aget-object p0, v0, p1

    if-nez p0, :cond_3

    .line 1965
    new-instance p0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;-><init>(I)V

    aput-object p0, v0, p1

    :cond_3
    return-object p0
.end method

.method public final f()V
    .locals 2

    const/4 v0, 0x0

    .line 517
    iput-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->T:Z

    .line 519
    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroidx/appcompat/app/d;)V

    .line 521
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a()Landroidx/appcompat/app/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 523
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/a;->b(Z)V

    .line 526
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 529
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->t()V

    :cond_1
    return-void
.end method

.method public final g()V
    .locals 1

    .line 535
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a()Landroidx/appcompat/app/a;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 537
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/a;->b(Z)V

    :cond_0
    return-void
.end method

.method final g(I)V
    .locals 3

    .line 2005
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->f(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    .line 2007
    iget-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroidx/appcompat/view/menu/g;

    if-eqz v1, :cond_1

    .line 2008
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2009
    iget-object v2, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/g;->a(Landroid/os/Bundle;)V

    .line 2010
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2011
    iput-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->s:Landroid/os/Bundle;

    .line 2014
    :cond_0
    iget-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/g;->e()V

    .line 2015
    iget-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/g;->clear()V

    :cond_1
    const/4 v1, 0x1

    .line 2017
    iput-boolean v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->r:Z

    .line 2018
    iput-boolean v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->q:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    .line 2021
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroidx/appcompat/widget/o;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 2023
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->f(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2025
    iput-boolean p1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    const/4 p1, 0x0

    .line 2026
    invoke-direct {p0, v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->b(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method final h(I)I
    .locals 7

    .line 2040
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 2041
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_9

    .line 2042
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Landroidx/appcompat/widget/ActionBarContextView;

    .line 2043
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2046
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContextView;->isShown()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    .line 2047
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->ac:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    .line 2048
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->ac:Landroid/graphics/Rect;

    .line 2049
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->ad:Landroid/graphics/Rect;

    .line 2051
    :cond_0
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->ac:Landroid/graphics/Rect;

    .line 2052
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->ad:Landroid/graphics/Rect;

    .line 2053
    invoke-virtual {v2, v1, p1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2055
    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->I:Landroid/view/ViewGroup;

    invoke-static {v5, v2, v4}, Landroidx/appcompat/widget/ak;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2056
    iget v2, v4, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_1

    move v2, p1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 2057
    :goto_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v2, :cond_4

    .line 2059
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2061
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->K:Landroid/view/View;

    if-nez v2, :cond_2

    .line 2062
    new-instance v2, Landroid/view/View;

    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->K:Landroid/view/View;

    .line 2063
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->K:Landroid/view/View;

    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroidx/appcompat/R$color;->abc_input_method_navigation_guard:I

    .line 2064
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 2063
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2065
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->I:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->K:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 2069
    :cond_2
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->K:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 2070
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, p1, :cond_3

    .line 2071
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2072
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->K:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_1
    move v2, v3

    goto :goto_2

    :cond_4
    move v2, v1

    .line 2079
    :goto_2
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->K:Landroid/view/View;

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    move v3, v1

    .line 2085
    :goto_3
    iget-boolean v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->r:Z

    if-nez v4, :cond_8

    if-eqz v3, :cond_8

    move p1, v1

    goto :goto_4

    .line 2090
    :cond_6
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v2, :cond_7

    .line 2092
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v2, v3

    move v3, v1

    goto :goto_4

    :cond_7
    move v2, v1

    move v3, v2

    :cond_8
    :goto_4
    if-eqz v2, :cond_a

    .line 2096
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_9
    move v3, v1

    .line 2100
    :cond_a
    :goto_5
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->K:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 2101
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->K:Landroid/view/View;

    if-eqz v3, :cond_b

    goto :goto_6

    :cond_b
    const/16 v1, 0x8

    :goto_6
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    return p1
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x0

    .line 334
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Z)Z

    const/4 v0, 0x1

    .line 335
    iput-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->R:Z

    return-void
.end method

.method public final i()V
    .locals 1

    .line 1071
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1072
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1074
    invoke-direct {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->i(I)V

    return-void
.end method

.method public final j()V
    .locals 2

    .line 587
    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroidx/appcompat/app/d;)V

    .line 589
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Z

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->aa:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    .line 593
    iput-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->T:Z

    const/4 v0, 0x1

    .line 594
    iput-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->u:Z

    .line 596
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Landroidx/appcompat/app/a;

    if-eqz v0, :cond_1

    .line 597
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Landroidx/appcompat/app/a;

    invoke-virtual {v0}, Landroidx/appcompat/app/a;->h()V

    .line 601
    :cond_1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->t()V

    return-void
.end method

.method public final k()V
    .locals 2

    .line 1441
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1442
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1443
    invoke-static {v0, p0}, Landroidx/core/e/e;->a(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    return-void

    .line 1445
    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object p0

    instance-of p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    if-nez p0, :cond_1

    const-string p0, "AppCompatDelegate"

    const-string v0, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    .line 1446
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final l()V
    .locals 2

    .line 578
    iget v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->U:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    .line 580
    sget-object v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->x:Ljava/util/Map;

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->U:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final m()I
    .locals 0

    .line 2198
    iget p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->U:I

    return p0
.end method

.method final n()Z
    .locals 1

    .line 1232
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->I:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->I:Landroid/view/ViewGroup;

    invoke-static {p0}, Landroidx/core/e/r;->o(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method final o()V
    .locals 1

    .line 1246
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroidx/core/e/u;

    if-eqz v0, :cond_0

    .line 1247
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroidx/core/e/u;

    invoke-virtual {p0}, Landroidx/core/e/u;->b()V

    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 1457
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 1465
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method final p()V
    .locals 2

    const/4 v0, 0x0

    .line 1814
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->f(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    return-void
.end method

.method final q()V
    .locals 2

    .line 2133
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroidx/appcompat/widget/o;

    if-eqz v0, :cond_0

    .line 2134
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroidx/appcompat/widget/o;

    invoke-interface {v0}, Landroidx/appcompat/widget/o;->h()V

    .line 2137
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 2138
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2139
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2141
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    .line 2147
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Landroid/widget/PopupWindow;

    .line 2149
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->o()V

    const/4 v0, 0x0

    .line 2151
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->f(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 2152
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_3

    .line 2153
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->close()V

    :cond_3
    return-void
.end method
