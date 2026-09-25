.class public final Landroidx/appcompat/widget/af;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroidx/appcompat/widget/p;


# instance fields
.field a:Landroidx/appcompat/widget/Toolbar;

.field b:Ljava/lang/CharSequence;

.field c:Landroid/view/Window$Callback;

.field d:Z

.field private e:I

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Z

.field private l:Ljava/lang/CharSequence;

.field private m:Ljava/lang/CharSequence;

.field private n:Landroidx/appcompat/widget/ActionMenuPresenter;

.field private o:I

.field private p:I

.field private q:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .locals 2

    .line 96
    sget v0, Landroidx/appcompat/R$string;->abc_action_bar_up_description:I

    sget v1, Landroidx/appcompat/R$drawable;->abc_ic_ab_back_material:I

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/af;-><init>(Landroidx/appcompat/widget/Toolbar;I)V

    return-void
.end method

.method private constructor <init>(Landroidx/appcompat/widget/Toolbar;I)V
    .locals 6

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Landroidx/appcompat/widget/af;->o:I

    .line 92
    iput v0, p0, Landroidx/appcompat/widget/af;->p:I

    .line 102
    iput-object p1, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    .line 103
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/af;->b:Ljava/lang/CharSequence;

    .line 104
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/af;->l:Ljava/lang/CharSequence;

    .line 105
    iget-object v1, p0, Landroidx/appcompat/widget/af;->b:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Landroidx/appcompat/widget/af;->k:Z

    .line 106
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/af;->j:Landroid/graphics/drawable/Drawable;

    .line 107
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Landroidx/appcompat/R$styleable;->ActionBar:[I

    sget v3, Landroidx/appcompat/R$attr;->actionBarStyle:I

    const/4 v4, 0x0

    invoke-static {p1, v4, v1, v3, v0}, Landroidx/appcompat/widget/ae;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/ae;

    move-result-object p1

    .line 109
    sget v1, Landroidx/appcompat/R$styleable;->ActionBar_homeAsUpIndicator:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ae;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/af;->q:Landroid/graphics/drawable/Drawable;

    .line 111
    sget v1, Landroidx/appcompat/R$styleable;->ActionBar_title:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ae;->c(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 112
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3255
    iput-boolean v2, p0, Landroidx/appcompat/widget/af;->k:Z

    .line 3256
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/af;->b(Ljava/lang/CharSequence;)V

    .line 116
    :cond_1
    sget v1, Landroidx/appcompat/R$styleable;->ActionBar_subtitle:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ae;->c(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 117
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3273
    iput-object v1, p0, Landroidx/appcompat/widget/af;->l:Ljava/lang/CharSequence;

    .line 3274
    iget v2, p0, Landroidx/appcompat/widget/af;->e:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    .line 3275
    iget-object v2, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 121
    :cond_2
    sget v1, Landroidx/appcompat/R$styleable;->ActionBar_logo:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ae;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 123
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/af;->b(Landroid/graphics/drawable/Drawable;)V

    .line 126
    :cond_3
    sget v1, Landroidx/appcompat/R$styleable;->ActionBar_icon:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ae;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 128
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/af;->a(Landroid/graphics/drawable/Drawable;)V

    .line 130
    :cond_4
    iget-object v1, p0, Landroidx/appcompat/widget/af;->j:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_5

    iget-object v1, p0, Landroidx/appcompat/widget/af;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 131
    iget-object v1, p0, Landroidx/appcompat/widget/af;->q:Landroid/graphics/drawable/Drawable;

    .line 3593
    iput-object v1, p0, Landroidx/appcompat/widget/af;->j:Landroid/graphics/drawable/Drawable;

    .line 3594
    invoke-direct {p0}, Landroidx/appcompat/widget/af;->s()V

    .line 133
    :cond_5
    sget v1, Landroidx/appcompat/R$styleable;->ActionBar_displayOptions:I

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/widget/ae;->a(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/af;->c(I)V

    .line 135
    sget v1, Landroidx/appcompat/R$styleable;->ActionBar_customNavigationLayout:I

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/widget/ae;->f(II)I

    move-result v1

    if-eqz v1, :cond_8

    .line 138
    iget-object v2, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2, v1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 4540
    iget-object v2, p0, Landroidx/appcompat/widget/af;->g:Landroid/view/View;

    if-eqz v2, :cond_6

    iget v2, p0, Landroidx/appcompat/widget/af;->e:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_6

    .line 4541
    iget-object v2, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v3, p0, Landroidx/appcompat/widget/af;->g:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 4543
    :cond_6
    iput-object v1, p0, Landroidx/appcompat/widget/af;->g:Landroid/view/View;

    if-eqz v1, :cond_7

    .line 4544
    iget v1, p0, Landroidx/appcompat/widget/af;->e:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_7

    .line 4545
    iget-object v1, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, p0, Landroidx/appcompat/widget/af;->g:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 140
    :cond_7
    iget v1, p0, Landroidx/appcompat/widget/af;->e:I

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/af;->c(I)V

    .line 143
    :cond_8
    sget v1, Landroidx/appcompat/R$styleable;->ActionBar_height:I

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/widget/ae;->e(II)I

    move-result v1

    if-lez v1, :cond_9

    .line 145
    iget-object v2, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 146
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 147
    iget-object v1, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    :cond_9
    sget v1, Landroidx/appcompat/R$styleable;->ActionBar_contentInsetStart:I

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/widget/ae;->c(II)I

    move-result v1

    .line 152
    sget v3, Landroidx/appcompat/R$styleable;->ActionBar_contentInsetEnd:I

    invoke-virtual {p1, v3, v2}, Landroidx/appcompat/widget/ae;->c(II)I

    move-result v2

    if-gez v1, :cond_a

    if-ltz v2, :cond_b

    .line 155
    :cond_a
    iget-object v3, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 156
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 5225
    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->h()V

    .line 5226
    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->k:Landroidx/appcompat/widget/y;

    invoke-virtual {v3, v1, v2}, Landroidx/appcompat/widget/y;->a(II)V

    .line 159
    :cond_b
    sget v1, Landroidx/appcompat/R$styleable;->ActionBar_titleTextStyle:I

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/widget/ae;->f(II)I

    move-result v1

    if-eqz v1, :cond_c

    .line 161
    iget-object v2, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v3, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 5845
    iput v1, v2, Landroidx/appcompat/widget/Toolbar;->h:I

    .line 5846
    iget-object v5, v2, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    if-eqz v5, :cond_c

    .line 5847
    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 164
    :cond_c
    sget v1, Landroidx/appcompat/R$styleable;->ActionBar_subtitleTextStyle:I

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/widget/ae;->f(II)I

    move-result v1

    if-eqz v1, :cond_d

    .line 167
    iget-object v2, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v3, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 5856
    iput v1, v2, Landroidx/appcompat/widget/Toolbar;->i:I

    .line 5857
    iget-object v5, v2, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    if-eqz v5, :cond_d

    .line 5858
    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 170
    :cond_d
    sget v1, Landroidx/appcompat/R$styleable;->ActionBar_popupTheme:I

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/widget/ae;->f(II)I

    move-result v0

    if-eqz v0, :cond_e

    .line 172
    iget-object v1, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V

    .line 6245
    :cond_e
    iget-object p1, p1, Landroidx/appcompat/widget/ae;->a:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 7196
    iget p1, p0, Landroidx/appcompat/widget/af;->p:I

    if-eq p2, p1, :cond_10

    .line 7199
    iput p2, p0, Landroidx/appcompat/widget/af;->p:I

    .line 7200
    iget-object p1, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 7201
    iget p1, p0, Landroidx/appcompat/widget/af;->p:I

    if-nez p1, :cond_f

    goto :goto_1

    .line 8222
    :cond_f
    iget-object p2, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p2}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 7626
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 8620
    :goto_1
    iput-object v4, p0, Landroidx/appcompat/widget/af;->m:Ljava/lang/CharSequence;

    .line 8621
    invoke-direct {p0}, Landroidx/appcompat/widget/af;->t()V

    .line 180
    :cond_10
    iget-object p1, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/af;->m:Ljava/lang/CharSequence;

    .line 182
    iget-object p1, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    new-instance p2, Landroidx/appcompat/widget/af$1;

    invoke-direct {p2, p0}, Landroidx/appcompat/widget/af$1;-><init>(Landroidx/appcompat/widget/af;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 317
    iput-object p1, p0, Landroidx/appcompat/widget/af;->i:Landroid/graphics/drawable/Drawable;

    .line 318
    invoke-direct {p0}, Landroidx/appcompat/widget/af;->r()V

    return-void
.end method

.method private b(Ljava/lang/CharSequence;)V
    .locals 1

    .line 260
    iput-object p1, p0, Landroidx/appcompat/widget/af;->b:Ljava/lang/CharSequence;

    .line 261
    iget v0, p0, Landroidx/appcompat/widget/af;->e:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 262
    iget-object p0, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private r()V
    .locals 1

    .line 323
    iget v0, p0, Landroidx/appcompat/widget/af;->e:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 324
    iget v0, p0, Landroidx/appcompat/widget/af;->e:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Landroidx/appcompat/widget/af;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/af;->i:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/af;->h:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 327
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/af;->h:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 330
    :goto_0
    iget-object p0, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private s()V
    .locals 2

    .line 611
    iget v0, p0, Landroidx/appcompat/widget/af;->e:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 612
    iget-object v0, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Landroidx/appcompat/widget/af;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/af;->j:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/af;->q:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 614
    :cond_1
    iget-object p0, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private t()V
    .locals 1

    .line 630
    iget v0, p0, Landroidx/appcompat/widget/af;->e:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Landroidx/appcompat/widget/af;->m:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    iget p0, p0, Landroidx/appcompat/widget/af;->p:I

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    return-void

    .line 634
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/af;->m:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/ViewGroup;
    .locals 0

    .line 217
    iget-object p0, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    return-object p0
.end method

.method public final a(IJ)Landroidx/core/e/u;
    .locals 2

    .line 566
    iget-object v0, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0}, Landroidx/core/e/r;->f(Landroid/view/View;)Landroidx/core/e/u;

    move-result-object v0

    if-nez p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 567
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/core/e/u;->a(F)Landroidx/core/e/u;

    move-result-object v0

    .line 568
    invoke-virtual {v0, p2, p3}, Landroidx/core/e/u;->a(J)Landroidx/core/e/u;

    move-result-object p2

    new-instance p3, Landroidx/appcompat/widget/af$2;

    invoke-direct {p3, p0, p1}, Landroidx/appcompat/widget/af$2;-><init>(Landroidx/appcompat/widget/af;I)V

    .line 569
    invoke-virtual {p2, p3}, Landroidx/core/e/u;->a(Landroidx/core/e/v;)Landroidx/core/e/u;

    move-result-object p0

    return-object p0
.end method

.method public final a(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 9222
    iget-object v0, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 301
    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/af;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 306
    iput-object p1, p0, Landroidx/appcompat/widget/af;->h:Landroid/graphics/drawable/Drawable;

    .line 307
    invoke-direct {p0}, Landroidx/appcompat/widget/af;->r()V

    return-void
.end method

.method public final a(Landroid/view/Menu;Landroidx/appcompat/view/menu/m$a;)V
    .locals 3

    .line 365
    iget-object v0, p0, Landroidx/appcompat/widget/af;->n:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-nez v0, :cond_0

    .line 366
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/af;->n:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 367
    iget-object v0, p0, Landroidx/appcompat/widget/af;->n:Landroidx/appcompat/widget/ActionMenuPresenter;

    sget v1, Landroidx/appcompat/R$id;->action_menu_presenter:I

    .line 13247
    iput v1, v0, Landroidx/appcompat/view/menu/b;->h:I

    .line 369
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/af;->n:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 14154
    iput-object p2, v0, Landroidx/appcompat/view/menu/b;->f:Landroidx/appcompat/view/menu/m$a;

    .line 370
    iget-object p2, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    check-cast p1, Landroidx/appcompat/view/menu/g;

    iget-object p0, p0, Landroidx/appcompat/widget/af;->n:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-nez p1, :cond_1

    .line 14555
    iget-object v0, p2, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_5

    .line 14559
    :cond_1
    invoke-virtual {p2}, Landroidx/appcompat/widget/Toolbar;->d()V

    .line 14560
    iget-object v0, p2, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 14682
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/g;

    if-eq v0, p1, :cond_5

    if-eqz v0, :cond_2

    .line 14566
    iget-object v1, p2, Landroidx/appcompat/widget/Toolbar;->n:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->b(Landroidx/appcompat/view/menu/m;)V

    .line 14567
    iget-object v1, p2, Landroidx/appcompat/widget/Toolbar;->o:Landroidx/appcompat/widget/Toolbar$a;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->b(Landroidx/appcompat/view/menu/m;)V

    .line 14570
    :cond_2
    iget-object v0, p2, Landroidx/appcompat/widget/Toolbar;->o:Landroidx/appcompat/widget/Toolbar$a;

    if-nez v0, :cond_3

    .line 14571
    new-instance v0, Landroidx/appcompat/widget/Toolbar$a;

    invoke-direct {v0, p2}, Landroidx/appcompat/widget/Toolbar$a;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v0, p2, Landroidx/appcompat/widget/Toolbar;->o:Landroidx/appcompat/widget/Toolbar$a;

    :cond_3
    const/4 v0, 0x1

    .line 15158
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->l:Z

    if-eqz p1, :cond_4

    .line 14576
    iget-object v0, p2, Landroidx/appcompat/widget/Toolbar;->f:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/m;Landroid/content/Context;)V

    .line 14577
    iget-object v0, p2, Landroidx/appcompat/widget/Toolbar;->o:Landroidx/appcompat/widget/Toolbar$a;

    iget-object v1, p2, Landroidx/appcompat/widget/Toolbar;->f:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/m;Landroid/content/Context;)V

    goto :goto_0

    .line 14579
    :cond_4
    iget-object p1, p2, Landroidx/appcompat/widget/Toolbar;->f:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->a(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V

    .line 14580
    iget-object p1, p2, Landroidx/appcompat/widget/Toolbar;->o:Landroidx/appcompat/widget/Toolbar$a;

    iget-object v2, p2, Landroidx/appcompat/widget/Toolbar;->f:Landroid/content/Context;

    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/widget/Toolbar$a;->a(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V

    .line 14581
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->a(Z)V

    .line 14582
    iget-object p1, p2, Landroidx/appcompat/widget/Toolbar;->o:Landroidx/appcompat/widget/Toolbar$a;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar$a;->a(Z)V

    .line 14584
    :goto_0
    iget-object p1, p2, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    iget v0, p2, Landroidx/appcompat/widget/Toolbar;->g:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setPopupTheme(I)V

    .line 14585
    iget-object p1, p2, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    .line 14586
    iput-object p0, p2, Landroidx/appcompat/widget/Toolbar;->n:Landroidx/appcompat/widget/ActionMenuPresenter;

    :cond_5
    return-void
.end method

.method public final a(Landroid/view/Window$Callback;)V
    .locals 0

    .line 237
    iput-object p1, p0, Landroidx/appcompat/widget/af;->c:Landroid/view/Window$Callback;

    return-void
.end method

.method public final a(Landroidx/appcompat/view/menu/m$a;Landroidx/appcompat/view/menu/g$a;)V
    .locals 1

    .line 672
    iget-object p0, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    .line 16280
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->p:Landroidx/appcompat/view/menu/m$a;

    .line 16281
    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar;->q:Landroidx/appcompat/view/menu/g$a;

    .line 16282
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 16283
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/ActionMenuView;->a(Landroidx/appcompat/view/menu/m$a;Landroidx/appcompat/view/menu/g$a;)V

    :cond_0
    return-void
.end method

.method public final a(Landroidx/appcompat/widget/ScrollingTabContainerView;)V
    .locals 3

    .line 422
    iget-object v0, p0, Landroidx/appcompat/widget/af;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/af;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    if-ne v0, v1, :cond_0

    .line 423
    iget-object v0, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Landroidx/appcompat/widget/af;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 425
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/af;->f:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 426
    iget v0, p0, Landroidx/appcompat/widget/af;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 427
    iget-object v0, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Landroidx/appcompat/widget/af;->f:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 428
    iget-object p0, p0, Landroidx/appcompat/widget/af;->f:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/Toolbar$b;

    const/4 v0, -0x2

    .line 429
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$b;->width:I

    .line 430
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$b;->height:I

    const v0, 0x800053

    .line 431
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$b;->a:I

    const/4 p0, 0x1

    .line 432
    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 243
    iget-boolean v0, p0, Landroidx/appcompat/widget/af;->k:Z

    if-nez v0, :cond_0

    .line 244
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/af;->b(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 448
    iget-object p0, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setCollapsible(Z)V

    return-void
.end method

.method public final b()Landroid/content/Context;
    .locals 0

    .line 222
    iget-object p0, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final b(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 10222
    iget-object v0, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 312
    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/af;->b(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final c(I)V
    .locals 3

    .line 385
    iget v0, p0, Landroidx/appcompat/widget/af;->e:I

    xor-int/2addr v0, p1

    .line 387
    iput p1, p0, Landroidx/appcompat/widget/af;->e:I

    if-eqz v0, :cond_6

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    .line 391
    invoke-direct {p0}, Landroidx/appcompat/widget/af;->t()V

    .line 393
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/widget/af;->s()V

    :cond_1
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_2

    .line 397
    invoke-direct {p0}, Landroidx/appcompat/widget/af;->r()V

    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_4

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    .line 402
    iget-object v1, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, p0, Landroidx/appcompat/widget/af;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v1, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, p0, Landroidx/appcompat/widget/af;->l:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 405
    :cond_3
    iget-object v1, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v1, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    .line 410
    iget-object v0, p0, Landroidx/appcompat/widget/af;->g:Landroid/view/View;

    if-eqz v0, :cond_6

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_5

    .line 412
    iget-object p1, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/af;->g:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;)V

    return-void

    .line 414
    :cond_5
    iget-object p1, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/af;->g:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    :cond_6
    return-void
.end method

.method public final c()Z
    .locals 1

    .line 227
    iget-object p0, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    .line 8709
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->o:Landroidx/appcompat/widget/Toolbar$a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->o:Landroidx/appcompat/widget/Toolbar$a;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar$a;->b:Landroidx/appcompat/view/menu/i;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d()V
    .locals 0

    .line 232
    iget-object p0, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->c()V

    return-void
.end method

.method public final d(I)V
    .locals 0

    .line 661
    iget-object p0, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    return-void
.end method

.method public final e()Ljava/lang/CharSequence;
    .locals 0

    .line 250
    iget-object p0, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final f()V
    .locals 1

    const-string p0, "ToolbarWidgetWrapper"

    const-string v0, "Progress display unsupported"

    .line 281
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final g()V
    .locals 1

    const-string p0, "ToolbarWidgetWrapper"

    const-string v0, "Progress display unsupported"

    .line 286
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final h()Z
    .locals 1

    .line 335
    iget-object p0, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    .line 10515
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 10572
    iget-boolean p0, p0, Landroidx/appcompat/widget/ActionMenuView;->b:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final i()Z
    .locals 0

    .line 340
    iget-object p0, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->a()Z

    move-result p0

    return p0
.end method

.method public final j()Z
    .locals 3

    .line 345
    iget-object p0, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    .line 11531
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 11716
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 12403
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->o:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v2

    :goto_1
    if-eqz p0, :cond_2

    move p0, v2

    goto :goto_2

    :cond_2
    move p0, v1

    :goto_2
    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public final k()Z
    .locals 0

    .line 350
    iget-object p0, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->b()Z

    move-result p0

    return p0
.end method

.method public final l()Z
    .locals 3

    .line 355
    iget-object p0, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    .line 12549
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 12700
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public final m()V
    .locals 1

    const/4 v0, 0x1

    .line 360
    iput-boolean v0, p0, Landroidx/appcompat/widget/af;->d:Z

    return-void
.end method

.method public final n()V
    .locals 1

    .line 375
    iget-object p0, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    .line 15593
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 15594
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->b()V

    :cond_0
    return-void
.end method

.method public final o()I
    .locals 0

    .line 380
    iget p0, p0, Landroidx/appcompat/widget/af;->e:I

    return p0
.end method

.method public final p()I
    .locals 0

    .line 458
    iget p0, p0, Landroidx/appcompat/widget/af;->o:I

    return p0
.end method

.method public final q()Landroid/view/Menu;
    .locals 0

    .line 677
    iget-object p0, p0, Landroidx/appcompat/widget/af;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object p0

    return-object p0
.end method
