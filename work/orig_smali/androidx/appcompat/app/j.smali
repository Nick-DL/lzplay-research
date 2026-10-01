.class public Landroidx/appcompat/app/j;
.super Landroidx/appcompat/app/a;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroidx/appcompat/widget/ActionBarOverlayLayout$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/j$a;
    }
.end annotation


# static fields
.field static final synthetic s:Z

.field private static final t:Landroid/view/animation/Interpolator;

.field private static final u:Landroid/view/animation/Interpolator;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/app/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private D:Z

.field private E:I

.field private F:Z

.field private G:Z

.field private H:Z

.field a:Landroid/content/Context;

.field b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field c:Landroidx/appcompat/widget/ActionBarContainer;

.field d:Landroidx/appcompat/widget/p;

.field e:Landroidx/appcompat/widget/ActionBarContextView;

.field f:Landroid/view/View;

.field g:Landroidx/appcompat/widget/ScrollingTabContainerView;

.field h:Landroidx/appcompat/app/j$a;

.field i:Landroidx/appcompat/view/b;

.field j:Landroidx/appcompat/view/b$a;

.field k:Z

.field l:Z

.field m:Z

.field n:Landroidx/appcompat/view/h;

.field o:Z

.field final p:Landroidx/core/e/v;

.field final q:Landroidx/core/e/v;

.field final r:Landroidx/core/e/x;

.field private v:Landroid/content/Context;

.field private w:Landroid/app/Activity;

.field private x:Landroid/app/Dialog;

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 79
    const-class v0, Landroidx/appcompat/app/j;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Landroidx/appcompat/app/j;->s:Z

    .line 84
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/app/j;->t:Landroid/view/animation/Interpolator;

    .line 85
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/app/j;->u:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .registers 4

    .line 169
    invoke-direct {p0}, Landroidx/appcompat/app/a;-><init>()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/j;->y:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 102
    iput v0, p0, Landroidx/appcompat/app/j;->z:I

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/j;->C:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Landroidx/appcompat/app/j;->E:I

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Landroidx/appcompat/app/j;->k:Z

    .line 129
    iput-boolean v0, p0, Landroidx/appcompat/app/j;->G:Z

    .line 135
    new-instance v0, Landroidx/appcompat/app/j$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/j$1;-><init>(Landroidx/appcompat/app/j;)V

    iput-object v0, p0, Landroidx/appcompat/app/j;->p:Landroidx/core/e/v;

    .line 152
    new-instance v0, Landroidx/appcompat/app/j$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/j$2;-><init>(Landroidx/appcompat/app/j;)V

    iput-object v0, p0, Landroidx/appcompat/app/j;->q:Landroidx/core/e/v;

    .line 160
    new-instance v0, Landroidx/appcompat/app/j$3;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/j$3;-><init>(Landroidx/appcompat/app/j;)V

    iput-object v0, p0, Landroidx/appcompat/app/j;->r:Landroidx/core/e/x;

    .line 170
    iput-object p1, p0, Landroidx/appcompat/app/j;->w:Landroid/app/Activity;

    .line 171
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 172
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 173
    invoke-direct {p0, p1}, Landroidx/appcompat/app/j;->a(Landroid/view/View;)V

    if-nez p2, :cond_49

    const p2, 0x1020002

    .line 175
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/j;->f:Landroid/view/View;

    :cond_49
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .registers 3

    .line 179
    invoke-direct {p0}, Landroidx/appcompat/app/a;-><init>()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/j;->y:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 102
    iput v0, p0, Landroidx/appcompat/app/j;->z:I

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/j;->C:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Landroidx/appcompat/app/j;->E:I

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Landroidx/appcompat/app/j;->k:Z

    .line 129
    iput-boolean v0, p0, Landroidx/appcompat/app/j;->G:Z

    .line 135
    new-instance v0, Landroidx/appcompat/app/j$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/j$1;-><init>(Landroidx/appcompat/app/j;)V

    iput-object v0, p0, Landroidx/appcompat/app/j;->p:Landroidx/core/e/v;

    .line 152
    new-instance v0, Landroidx/appcompat/app/j$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/j$2;-><init>(Landroidx/appcompat/app/j;)V

    iput-object v0, p0, Landroidx/appcompat/app/j;->q:Landroidx/core/e/v;

    .line 160
    new-instance v0, Landroidx/appcompat/app/j$3;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/j$3;-><init>(Landroidx/appcompat/app/j;)V

    iput-object v0, p0, Landroidx/appcompat/app/j;->r:Landroidx/core/e/x;

    .line 180
    iput-object p1, p0, Landroidx/appcompat/app/j;->x:Landroid/app/Dialog;

    .line 181
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/j;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 6

    .line 195
    sget v0, Landroidx/appcompat/R$id;->decor_content_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Landroidx/appcompat/app/j;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 196
    iget-object v0, p0, Landroidx/appcompat/app/j;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_13

    .line 197
    iget-object v0, p0, Landroidx/appcompat/app/j;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroidx/appcompat/widget/ActionBarOverlayLayout$a;)V

    .line 199
    :cond_13
    sget v0, Landroidx/appcompat/R$id;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/j;->b(Landroid/view/View;)Landroidx/appcompat/widget/p;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/j;->d:Landroidx/appcompat/widget/p;

    .line 200
    sget v0, Landroidx/appcompat/R$id;->action_context_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Landroidx/appcompat/app/j;->e:Landroidx/appcompat/widget/ActionBarContextView;

    .line 202
    sget v0, Landroidx/appcompat/R$id;->action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object p1, p0, Landroidx/appcompat/app/j;->c:Landroidx/appcompat/widget/ActionBarContainer;

    .line 205
    iget-object p1, p0, Landroidx/appcompat/app/j;->d:Landroidx/appcompat/widget/p;

    if-eqz p1, :cond_90

    iget-object p1, p0, Landroidx/appcompat/app/j;->e:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz p1, :cond_90

    iget-object p1, p0, Landroidx/appcompat/app/j;->c:Landroidx/appcompat/widget/ActionBarContainer;

    if-eqz p1, :cond_90

    .line 210
    iget-object p1, p0, Landroidx/appcompat/app/j;->d:Landroidx/appcompat/widget/p;

    invoke-interface {p1}, Landroidx/appcompat/widget/p;->b()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/j;->a:Landroid/content/Context;

    .line 213
    iget-object p1, p0, Landroidx/appcompat/app/j;->d:Landroidx/appcompat/widget/p;

    invoke-interface {p1}, Landroidx/appcompat/widget/p;->o()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_55

    move p1, v0

    goto :goto_56

    :cond_55
    move p1, v1

    :goto_56
    if-eqz p1, :cond_5a

    .line 216
    iput-boolean v0, p0, Landroidx/appcompat/app/j;->A:Z

    .line 219
    :cond_5a
    iget-object p1, p0, Landroidx/appcompat/app/j;->a:Landroid/content/Context;

    invoke-static {p1}, Landroidx/appcompat/view/a;->a(Landroid/content/Context;)Landroidx/appcompat/view/a;

    move-result-object p1

    .line 220
    invoke-virtual {p1}, Landroidx/appcompat/view/a;->d()Z

    .line 221
    invoke-virtual {p1}, Landroidx/appcompat/view/a;->b()Z

    move-result p1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/j;->f(Z)V

    .line 223
    iget-object p1, p0, Landroidx/appcompat/app/j;->a:Landroid/content/Context;

    const/4 v0, 0x0

    sget-object v2, Landroidx/appcompat/R$styleable;->ActionBar:[I

    sget v3, Landroidx/appcompat/R$attr;->actionBarStyle:I

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 226
    sget v0, Landroidx/appcompat/R$styleable;->ActionBar_hideOnContentScroll:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 227
    invoke-virtual {p0}, Landroidx/appcompat/app/j;->c()V

    .line 229
    :cond_80
    sget v0, Landroidx/appcompat/R$styleable;->ActionBar_elevation:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_8c

    int-to-float v0, v0

    .line 231
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/j;->a(F)V

    .line 233
    :cond_8c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 206
    :cond_90
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " can only be used with a compatible window decor layout"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static a(ZZZ)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    return v0

    :cond_4
    if-nez p0, :cond_a

    if-eqz p1, :cond_9

    goto :goto_a

    :cond_9
    return v0

    :cond_a
    :goto_a
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Landroid/view/View;)Landroidx/appcompat/widget/p;
    .registers 4

    .line 237
    instance-of v0, p0, Landroidx/appcompat/widget/p;

    if-eqz v0, :cond_7

    .line 238
    check-cast p0, Landroidx/appcompat/widget/p;

    return-object p0

    .line 239
    :cond_7
    instance-of v0, p0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_12

    .line 240
    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Landroidx/appcompat/widget/p;

    move-result-object p0

    return-object p0

    .line 242
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_26

    .line 243
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    goto :goto_28

    :cond_26
    const-string p0, "null"

    :goto_28
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private f(Z)V
    .registers 6

    .line 263
    iput-boolean p1, p0, Landroidx/appcompat/app/j;->D:Z

    .line 265
    iget-boolean p1, p0, Landroidx/appcompat/app/j;->D:Z

    const/4 v0, 0x0

    if-nez p1, :cond_14

    .line 266
    iget-object p1, p0, Landroidx/appcompat/app/j;->d:Landroidx/appcompat/widget/p;

    invoke-interface {p1, v0}, Landroidx/appcompat/widget/p;->a(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    .line 267
    iget-object p1, p0, Landroidx/appcompat/app/j;->c:Landroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, p0, Landroidx/appcompat/app/j;->g:Landroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    goto :goto_20

    .line 269
    :cond_14
    iget-object p1, p0, Landroidx/appcompat/app/j;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    .line 270
    iget-object p1, p0, Landroidx/appcompat/app/j;->d:Landroidx/appcompat/widget/p;

    iget-object v0, p0, Landroidx/appcompat/app/j;->g:Landroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-interface {p1, v0}, Landroidx/appcompat/widget/p;->a(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    .line 272
    :goto_20
    invoke-direct {p0}, Landroidx/appcompat/app/j;->l()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2b

    move p1, v1

    goto :goto_2c

    :cond_2b
    move p1, v2

    .line 273
    :goto_2c
    iget-object v0, p0, Landroidx/appcompat/app/j;->g:Landroidx/appcompat/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_48

    if-eqz p1, :cond_41

    .line 275
    iget-object v0, p0, Landroidx/appcompat/app/j;->g:Landroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Landroidx/appcompat/app/j;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_48

    .line 277
    iget-object v0, p0, Landroidx/appcompat/app/j;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Landroidx/core/e/r;->j(Landroid/view/View;)V

    goto :goto_48

    .line 280
    :cond_41
    iget-object v0, p0, Landroidx/appcompat/app/j;->g:Landroidx/appcompat/widget/ScrollingTabContainerView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 283
    :cond_48
    :goto_48
    iget-object v0, p0, Landroidx/appcompat/app/j;->d:Landroidx/appcompat/widget/p;

    iget-boolean v3, p0, Landroidx/appcompat/app/j;->D:Z

    if-nez v3, :cond_52

    if-eqz p1, :cond_52

    move v3, v1

    goto :goto_53

    :cond_52
    move v3, v2

    :goto_53
    invoke-interface {v0, v3}, Landroidx/appcompat/widget/p;->a(Z)V

    .line 284
    iget-object v0, p0, Landroidx/appcompat/app/j;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean p0, p0, Landroidx/appcompat/app/j;->D:Z

    if-nez p0, :cond_5f

    if-eqz p1, :cond_5f

    goto :goto_60

    :cond_5f
    move v1, v2

    :goto_60
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void
.end method

.method private g(Z)V
    .registers 5

    .line 771
    iget-boolean v0, p0, Landroidx/appcompat/app/j;->l:Z

    iget-boolean v1, p0, Landroidx/appcompat/app/j;->m:Z

    iget-boolean v2, p0, Landroidx/appcompat/app/j;->F:Z

    invoke-static {v0, v1, v2}, Landroidx/appcompat/app/j;->a(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 775
    iget-boolean v0, p0, Landroidx/appcompat/app/j;->G:Z

    if-nez v0, :cond_21

    const/4 v0, 0x1

    .line 776
    iput-boolean v0, p0, Landroidx/appcompat/app/j;->G:Z

    .line 777
    invoke-direct {p0, p1}, Landroidx/appcompat/app/j;->h(Z)V

    return-void

    .line 780
    :cond_17
    iget-boolean v0, p0, Landroidx/appcompat/app/j;->G:Z

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    .line 781
    iput-boolean v0, p0, Landroidx/appcompat/app/j;->G:Z

    .line 782
    invoke-direct {p0, p1}, Landroidx/appcompat/app/j;->i(Z)V

    :cond_21
    return-void
.end method

.method private h(Z)V
    .registers 6

    .line 788
    iget-object v0, p0, Landroidx/appcompat/app/j;->n:Landroidx/appcompat/view/h;

    if-eqz v0, :cond_9

    .line 789
    iget-object v0, p0, Landroidx/appcompat/app/j;->n:Landroidx/appcompat/view/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/h;->b()V

    .line 791
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/app/j;->c:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 793
    iget v0, p0, Landroidx/appcompat/app/j;->E:I

    const/4 v1, 0x0

    if-nez v0, :cond_82

    iget-boolean v0, p0, Landroidx/appcompat/app/j;->H:Z

    if-nez v0, :cond_1a

    if-eqz p1, :cond_82

    .line 795
    :cond_1a
    iget-object v0, p0, Landroidx/appcompat/app/j;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setTranslationY(F)V

    .line 796
    iget-object v0, p0, Landroidx/appcompat/app/j;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContainer;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_39

    const/4 p1, 0x2

    .line 798
    new-array p1, p1, [I

    fill-array-data p1, :array_ac

    .line 799
    iget-object v2, p0, Landroidx/appcompat/app/j;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/ActionBarContainer;->getLocationInWindow([I)V

    const/4 v2, 0x1

    .line 800
    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 802
    :cond_39
    iget-object p1, p0, Landroidx/appcompat/app/j;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTranslationY(F)V

    .line 803
    new-instance p1, Landroidx/appcompat/view/h;

    invoke-direct {p1}, Landroidx/appcompat/view/h;-><init>()V

    .line 804
    iget-object v2, p0, Landroidx/appcompat/app/j;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v2}, Landroidx/core/e/r;->f(Landroid/view/View;)Landroidx/core/e/u;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/core/e/u;->b(F)Landroidx/core/e/u;

    move-result-object v2

    .line 805
    iget-object v3, p0, Landroidx/appcompat/app/j;->r:Landroidx/core/e/x;

    invoke-virtual {v2, v3}, Landroidx/core/e/u;->a(Landroidx/core/e/x;)Landroidx/core/e/u;

    .line 806
    invoke-virtual {p1, v2}, Landroidx/appcompat/view/h;->a(Landroidx/core/e/u;)Landroidx/appcompat/view/h;

    .line 807
    iget-boolean v2, p0, Landroidx/appcompat/app/j;->k:Z

    if-eqz v2, :cond_6f

    iget-object v2, p0, Landroidx/appcompat/app/j;->f:Landroid/view/View;

    if-eqz v2, :cond_6f

    .line 808
    iget-object v2, p0, Landroidx/appcompat/app/j;->f:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 809
    iget-object v0, p0, Landroidx/appcompat/app/j;->f:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/e/r;->f(Landroid/view/View;)Landroidx/core/e/u;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/core/e/u;->b(F)Landroidx/core/e/u;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/h;->a(Landroidx/core/e/u;)Landroidx/appcompat/view/h;

    .line 811
    :cond_6f
    sget-object v0, Landroidx/appcompat/app/j;->u:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/h;->a(Landroid/view/animation/Interpolator;)Landroidx/appcompat/view/h;

    .line 812
    invoke-virtual {p1}, Landroidx/appcompat/view/h;->c()Landroidx/appcompat/view/h;

    .line 820
    iget-object v0, p0, Landroidx/appcompat/app/j;->q:Landroidx/core/e/v;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/h;->a(Landroidx/core/e/v;)Landroidx/appcompat/view/h;

    .line 821
    iput-object p1, p0, Landroidx/appcompat/app/j;->n:Landroidx/appcompat/view/h;

    .line 822
    invoke-virtual {p1}, Landroidx/appcompat/view/h;->a()V

    goto :goto_a1

    .line 824
    :cond_82
    iget-object p1, p0, Landroidx/appcompat/app/j;->c:Landroidx/appcompat/widget/ActionBarContainer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setAlpha(F)V

    .line 825
    iget-object p1, p0, Landroidx/appcompat/app/j;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setTranslationY(F)V

    .line 826
    iget-boolean p1, p0, Landroidx/appcompat/app/j;->k:Z

    if-eqz p1, :cond_9b

    iget-object p1, p0, Landroidx/appcompat/app/j;->f:Landroid/view/View;

    if-eqz p1, :cond_9b

    .line 827
    iget-object p1, p0, Landroidx/appcompat/app/j;->f:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 829
    :cond_9b
    iget-object p1, p0, Landroidx/appcompat/app/j;->q:Landroidx/core/e/v;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroidx/core/e/v;->b(Landroid/view/View;)V

    .line 831
    :goto_a1
    iget-object p1, p0, Landroidx/appcompat/app/j;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_aa

    .line 832
    iget-object p0, p0, Landroidx/appcompat/app/j;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-static {p0}, Landroidx/core/e/r;->j(Landroid/view/View;)V

    :cond_aa
    return-void

    nop

    :array_ac
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private i(Z)V
    .registers 6

    .line 837
    iget-object v0, p0, Landroidx/appcompat/app/j;->n:Landroidx/appcompat/view/h;

    if-eqz v0, :cond_9

    .line 838
    iget-object v0, p0, Landroidx/appcompat/app/j;->n:Landroidx/appcompat/view/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/h;->b()V

    .line 841
    :cond_9
    iget v0, p0, Landroidx/appcompat/app/j;->E:I

    if-nez v0, :cond_78

    iget-boolean v0, p0, Landroidx/appcompat/app/j;->H:Z

    if-nez v0, :cond_13

    if-eqz p1, :cond_78

    .line 842
    :cond_13
    iget-object v0, p0, Landroidx/appcompat/app/j;->c:Landroidx/appcompat/widget/ActionBarContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setAlpha(F)V

    .line 843
    iget-object v0, p0, Landroidx/appcompat/app/j;->c:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 844
    new-instance v0, Landroidx/appcompat/view/h;

    invoke-direct {v0}, Landroidx/appcompat/view/h;-><init>()V

    .line 845
    iget-object v2, p0, Landroidx/appcompat/app/j;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContainer;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    if-eqz p1, :cond_3e

    const/4 p1, 0x2

    .line 847
    new-array p1, p1, [I

    fill-array-data p1, :array_80

    .line 848
    iget-object v3, p0, Landroidx/appcompat/app/j;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3, p1}, Landroidx/appcompat/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 849
    aget p1, p1, v1

    int-to-float p1, p1

    sub-float/2addr v2, p1

    .line 851
    :cond_3e
    iget-object p1, p0, Landroidx/appcompat/app/j;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p1}, Landroidx/core/e/r;->f(Landroid/view/View;)Landroidx/core/e/u;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/core/e/u;->b(F)Landroidx/core/e/u;

    move-result-object p1

    .line 852
    iget-object v1, p0, Landroidx/appcompat/app/j;->r:Landroidx/core/e/x;

    invoke-virtual {p1, v1}, Landroidx/core/e/u;->a(Landroidx/core/e/x;)Landroidx/core/e/u;

    .line 853
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/h;->a(Landroidx/core/e/u;)Landroidx/appcompat/view/h;

    .line 854
    iget-boolean p1, p0, Landroidx/appcompat/app/j;->k:Z

    if-eqz p1, :cond_65

    iget-object p1, p0, Landroidx/appcompat/app/j;->f:Landroid/view/View;

    if-eqz p1, :cond_65

    .line 855
    iget-object p1, p0, Landroidx/appcompat/app/j;->f:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/e/r;->f(Landroid/view/View;)Landroidx/core/e/u;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/core/e/u;->b(F)Landroidx/core/e/u;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/h;->a(Landroidx/core/e/u;)Landroidx/appcompat/view/h;

    .line 857
    :cond_65
    sget-object p1, Landroidx/appcompat/app/j;->t:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/h;->a(Landroid/view/animation/Interpolator;)Landroidx/appcompat/view/h;

    .line 858
    invoke-virtual {v0}, Landroidx/appcompat/view/h;->c()Landroidx/appcompat/view/h;

    .line 859
    iget-object p1, p0, Landroidx/appcompat/app/j;->p:Landroidx/core/e/v;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/h;->a(Landroidx/core/e/v;)Landroidx/appcompat/view/h;

    .line 860
    iput-object v0, p0, Landroidx/appcompat/app/j;->n:Landroidx/appcompat/view/h;

    .line 861
    invoke-virtual {v0}, Landroidx/appcompat/view/h;->a()V

    return-void

    .line 863
    :cond_78
    iget-object p0, p0, Landroidx/appcompat/app/j;->p:Landroidx/core/e/v;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroidx/core/e/v;->b(Landroid/view/View;)V

    return-void

    nop

    :array_80
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private l()I
    .registers 1

    .line 513
    iget-object p0, p0, Landroidx/appcompat/app/j;->d:Landroidx/appcompat/widget/p;

    invoke-interface {p0}, Landroidx/appcompat/widget/p;->p()I

    move-result p0

    return p0
.end method

.method private m()V
    .registers 3

    .line 686
    iget-boolean v0, p0, Landroidx/appcompat/app/j;->F:Z

    if-nez v0, :cond_14

    const/4 v0, 0x1

    .line 687
    iput-boolean v0, p0, Landroidx/appcompat/app/j;->F:Z

    .line 688
    iget-object v1, p0, Landroidx/appcompat/app/j;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_10

    .line 689
    iget-object v1, p0, Landroidx/appcompat/app/j;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_10
    const/4 v0, 0x0

    .line 691
    invoke-direct {p0, v0}, Landroidx/appcompat/app/j;->g(Z)V

    :cond_14
    return-void
.end method

.method private n()V
    .registers 3

    .line 712
    iget-boolean v0, p0, Landroidx/appcompat/app/j;->F:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    .line 713
    iput-boolean v0, p0, Landroidx/appcompat/app/j;->F:Z

    .line 714
    iget-object v1, p0, Landroidx/appcompat/app/j;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_10

    .line 715
    iget-object v1, p0, Landroidx/appcompat/app/j;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 717
    :cond_10
    invoke-direct {p0, v0}, Landroidx/appcompat/app/j;->g(Z)V

    :cond_13
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 1

    .line 518
    iget-object p0, p0, Landroidx/appcompat/app/j;->d:Landroidx/appcompat/widget/p;

    invoke-interface {p0}, Landroidx/appcompat/widget/p;->o()I

    move-result p0

    return p0
.end method

.method public final a(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;
    .registers 4

    .line 523
    iget-object v0, p0, Landroidx/appcompat/app/j;->h:Landroidx/appcompat/app/j$a;

    if-eqz v0, :cond_9

    .line 524
    iget-object v0, p0, Landroidx/appcompat/app/j;->h:Landroidx/appcompat/app/j$a;

    invoke-virtual {v0}, Landroidx/appcompat/app/j$a;->c()V

    .line 527
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/app/j;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 528
    iget-object v0, p0, Landroidx/appcompat/app/j;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->c()V

    .line 529
    new-instance v0, Landroidx/appcompat/app/j$a;

    iget-object v1, p0, Landroidx/appcompat/app/j;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroidx/appcompat/app/j$a;-><init>(Landroidx/appcompat/app/j;Landroid/content/Context;Landroidx/appcompat/view/b$a;)V

    .line 530
    invoke-virtual {v0}, Landroidx/appcompat/app/j$a;->e()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 533
    iput-object v0, p0, Landroidx/appcompat/app/j;->h:Landroidx/appcompat/app/j$a;

    .line 534
    invoke-virtual {v0}, Landroidx/appcompat/app/j$a;->d()V

    .line 535
    iget-object p1, p0, Landroidx/appcompat/app/j;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->a(Landroidx/appcompat/view/b;)V

    const/4 p1, 0x1

    .line 536
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/j;->e(Z)V

    .line 537
    iget-object p0, p0, Landroidx/appcompat/app/j;->e:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    return-object v0

    :cond_3b
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(F)V
    .registers 2

    .line 249
    iget-object p0, p0, Landroidx/appcompat/app/j;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p0, p1}, Landroidx/core/e/r;->a(Landroid/view/View;F)V

    return-void
.end method

.method public final a(I)V
    .registers 2

    .line 321
    iput p1, p0, Landroidx/appcompat/app/j;->E:I

    return-void
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .registers 2

    .line 259
    iget-object p1, p0, Landroidx/appcompat/app/j;->a:Landroid/content/Context;

    invoke-static {p1}, Landroidx/appcompat/view/a;->a(Landroid/content/Context;)Landroidx/appcompat/view/a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/a;->b()Z

    move-result p1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/j;->f(Z)V

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .registers 2

    .line 446
    iget-object p0, p0, Landroidx/appcompat/app/j;->d:Landroidx/appcompat/widget/p;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/p;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Z)V
    .registers 5

    .line 1395
    iget-boolean v0, p0, Landroidx/appcompat/app/j;->A:Z

    if-nez v0, :cond_1c

    const/4 v0, 0x4

    if-eqz p1, :cond_9

    move p1, v0

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    .line 3474
    :goto_a
    iget-object v1, p0, Landroidx/appcompat/app/j;->d:Landroidx/appcompat/widget/p;

    invoke-interface {v1}, Landroidx/appcompat/widget/p;->o()I

    move-result v1

    const/4 v2, 0x1

    .line 3476
    iput-boolean v2, p0, Landroidx/appcompat/app/j;->A:Z

    .line 3478
    iget-object p0, p0, Landroidx/appcompat/app/j;->d:Landroidx/appcompat/widget/p;

    and-int/2addr p1, v0

    and-int/lit8 v0, v1, -0x5

    or-int/2addr p1, v0

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/p;->c(I)V

    :cond_1c
    return-void
.end method

.method public final a(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 1402
    iget-object v0, p0, Landroidx/appcompat/app/j;->h:Landroidx/appcompat/app/j$a;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1405
    :cond_6
    iget-object p0, p0, Landroidx/appcompat/app/j;->h:Landroidx/appcompat/app/j$a;

    .line 4008
    iget-object p0, p0, Landroidx/appcompat/app/j$a;->a:Landroidx/appcompat/view/menu/g;

    if-eqz p0, :cond_29

    if-eqz p2, :cond_13

    .line 1408
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, -0x1

    .line 1407
    :goto_14
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 1409
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_20

    goto :goto_21

    :cond_20
    move v2, v1

    :goto_21
    invoke-interface {p0, v2}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 1410
    invoke-interface {p0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p0

    return p0

    :cond_29
    return v1
.end method

.method public addOnMenuVisibilityListener(Landroidx/appcompat/app/a$b;)V
    .registers 2

    .line 341
    iget-object p0, p0, Landroidx/appcompat/app/j;->C:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Landroid/content/Context;
    .registers 5

    .line 921
    iget-object v0, p0, Landroidx/appcompat/app/j;->v:Landroid/content/Context;

    if-nez v0, :cond_27

    .line 922
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 923
    iget-object v1, p0, Landroidx/appcompat/app/j;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 924
    sget v2, Landroidx/appcompat/R$attr;->actionBarWidgetTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 925
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_23

    .line 928
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Landroidx/appcompat/app/j;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroidx/appcompat/app/j;->v:Landroid/content/Context;

    goto :goto_27

    .line 930
    :cond_23
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroid/content/Context;

    iput-object v0, p0, Landroidx/appcompat/app/j;->v:Landroid/content/Context;

    .line 933
    :cond_27
    :goto_27
    iget-object p0, p0, Landroidx/appcompat/app/j;->v:Landroid/content/Context;

    return-object p0
.end method

.method public final b(Z)V
    .registers 2

    .line 333
    iput-boolean p1, p0, Landroidx/appcompat/app/j;->H:Z

    if-nez p1, :cond_d

    .line 334
    iget-object p1, p0, Landroidx/appcompat/app/j;->n:Landroidx/appcompat/view/h;

    if-eqz p1, :cond_d

    .line 335
    iget-object p0, p0, Landroidx/appcompat/app/j;->n:Landroidx/appcompat/view/h;

    invoke-virtual {p0}, Landroidx/appcompat/view/h;->b()V

    :cond_d
    return-void
.end method

.method public final c()V
    .registers 2

    .line 731
    iget-object v0, p0, Landroidx/appcompat/app/j;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 2195
    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->b:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    .line 735
    iput-boolean v0, p0, Landroidx/appcompat/app/j;->o:Z

    .line 736
    iget-object p0, p0, Landroidx/appcompat/app/j;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    return-void

    .line 732
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Z)V
    .registers 4

    .line 351
    iget-boolean v0, p0, Landroidx/appcompat/app/j;->B:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 354
    :cond_5
    iput-boolean p1, p0, Landroidx/appcompat/app/j;->B:Z

    .line 356
    iget-object p1, p0, Landroidx/appcompat/app/j;->C:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_e
    if-ge v0, p1, :cond_18

    .line 358
    iget-object v1, p0, Landroidx/appcompat/app/j;->C:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_18
    return-void
.end method

.method public final d(Z)V
    .registers 2

    .line 674
    iput-boolean p1, p0, Landroidx/appcompat/app/j;->k:Z

    return-void
.end method

.method public final e(Z)V
    .registers 11

    if-eqz p1, :cond_6

    .line 876
    invoke-direct {p0}, Landroidx/appcompat/app/j;->m()V

    goto :goto_9

    .line 878
    :cond_6
    invoke-direct {p0}, Landroidx/appcompat/app/j;->n()V

    .line 2916
    :goto_9
    iget-object v0, p0, Landroidx/appcompat/app/j;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v0}, Landroidx/core/e/r;->o(Landroid/view/View;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v0, :cond_43

    const-wide/16 v4, 0xc8

    const-wide/16 v6, 0x64

    if-eqz p1, :cond_2b

    .line 888
    iget-object p1, p0, Landroidx/appcompat/app/j;->d:Landroidx/appcompat/widget/p;

    invoke-interface {p1, v2, v6, v7}, Landroidx/appcompat/widget/p;->a(IJ)Landroidx/core/e/u;

    move-result-object p1

    .line 890
    iget-object p0, p0, Landroidx/appcompat/app/j;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v3, v4, v5}, Landroidx/appcompat/widget/ActionBarContextView;->a(IJ)Landroidx/core/e/u;

    move-result-object p0

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    goto :goto_37

    .line 893
    :cond_2b
    iget-object p1, p0, Landroidx/appcompat/app/j;->d:Landroidx/appcompat/widget/p;

    invoke-interface {p1, v3, v4, v5}, Landroidx/appcompat/widget/p;->a(IJ)Landroidx/core/e/u;

    move-result-object p1

    .line 895
    iget-object p0, p0, Landroidx/appcompat/app/j;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v1, v6, v7}, Landroidx/appcompat/widget/ActionBarContextView;->a(IJ)Landroidx/core/e/u;

    move-result-object p0

    .line 898
    :goto_37
    new-instance v0, Landroidx/appcompat/view/h;

    invoke-direct {v0}, Landroidx/appcompat/view/h;-><init>()V

    .line 899
    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/view/h;->a(Landroidx/core/e/u;Landroidx/core/e/u;)Landroidx/appcompat/view/h;

    .line 900
    invoke-virtual {v0}, Landroidx/appcompat/view/h;->a()V

    return-void

    :cond_43
    if-eqz p1, :cond_50

    .line 903
    iget-object p1, p0, Landroidx/appcompat/app/j;->d:Landroidx/appcompat/widget/p;

    invoke-interface {p1, v2}, Landroidx/appcompat/widget/p;->d(I)V

    .line 904
    iget-object p0, p0, Landroidx/appcompat/app/j;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void

    .line 906
    :cond_50
    iget-object p1, p0, Landroidx/appcompat/app/j;->d:Landroidx/appcompat/widget/p;

    invoke-interface {p1, v3}, Landroidx/appcompat/widget/p;->d(I)V

    .line 907
    iget-object p0, p0, Landroidx/appcompat/app/j;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method

.method public final g()Z
    .registers 2

    .line 975
    iget-object v0, p0, Landroidx/appcompat/app/j;->d:Landroidx/appcompat/widget/p;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroidx/appcompat/app/j;->d:Landroidx/appcompat/widget/p;

    invoke-interface {v0}, Landroidx/appcompat/widget/p;->c()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 976
    iget-object p0, p0, Landroidx/appcompat/app/j;->d:Landroidx/appcompat/widget/p;

    invoke-interface {p0}, Landroidx/appcompat/widget/p;->d()V

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public final i()V
    .registers 2

    .line 697
    iget-boolean v0, p0, Landroidx/appcompat/app/j;->m:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    .line 698
    iput-boolean v0, p0, Landroidx/appcompat/app/j;->m:Z

    const/4 v0, 0x1

    .line 699
    invoke-direct {p0, v0}, Landroidx/appcompat/app/j;->g(Z)V

    :cond_b
    return-void
.end method

.method public final j()V
    .registers 2

    .line 723
    iget-boolean v0, p0, Landroidx/appcompat/app/j;->m:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 724
    iput-boolean v0, p0, Landroidx/appcompat/app/j;->m:Z

    .line 725
    invoke-direct {p0, v0}, Landroidx/appcompat/app/j;->g(Z)V

    :cond_a
    return-void
.end method

.method public final k()V
    .registers 2

    .line 963
    iget-object v0, p0, Landroidx/appcompat/app/j;->n:Landroidx/appcompat/view/h;

    if-eqz v0, :cond_c

    .line 964
    iget-object v0, p0, Landroidx/appcompat/app/j;->n:Landroidx/appcompat/view/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/h;->b()V

    const/4 v0, 0x0

    .line 965
    iput-object v0, p0, Landroidx/appcompat/app/j;->n:Landroidx/appcompat/view/h;

    :cond_c
    return-void
.end method

.method public removeOnMenuVisibilityListener(Landroidx/appcompat/app/a$b;)V
    .registers 2

    .line 346
    iget-object p0, p0, Landroidx/appcompat/app/j;->C:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
