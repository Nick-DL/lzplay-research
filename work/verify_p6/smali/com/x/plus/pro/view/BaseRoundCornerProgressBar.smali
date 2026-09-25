.class public abstract Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;
.super Landroid/widget/LinearLayout;
.source "BaseRoundCornerProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$a;,
        Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:F

.field private i:F

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    invoke-virtual {p0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-direct {p0, p1}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->a(Landroid/content/Context;)V

    return-void

    .line 77
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    invoke-virtual {p0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->isInEditMode()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 85
    invoke-direct {p0, p1}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->a(Landroid/content/Context;)V

    return-void

    .line 87
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(F)F
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 265
    invoke-virtual {p0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 266
    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit16 p0, p0, 0xa0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method private static a(I)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .line 209
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    .line 210
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 211
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method private a()V
    .locals 0

    .line 176
    invoke-direct {p0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->b()V

    .line 177
    invoke-direct {p0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->f()V

    .line 178
    invoke-direct {p0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->e()V

    .line 179
    invoke-direct {p0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->c()V

    .line 180
    invoke-direct {p0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->d()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    const/16 v0, 0x11

    .line 92
    invoke-virtual {p0, v0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->setGravity(I)V

    .line 93
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {p1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 95
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, -0x777778

    .line 99
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 100
    invoke-virtual {p0, v1}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->addView(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    invoke-virtual {p0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->removeAllViews()V

    .line 124
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0a002b

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f07007c

    .line 126
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->a:Landroid/widget/LinearLayout;

    const p1, 0x7f07007d

    .line 127
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->b:Landroid/widget/LinearLayout;

    const p1, 0x7f07007f

    .line 128
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->c:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic a(Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->c()V

    return-void
.end method

.method private b()V
    .locals 5

    .line 187
    iget v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->j:I

    invoke-static {v0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->a(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 188
    iget v1, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->d:I

    iget v2, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->e:I

    const/4 v3, 0x2

    div-int/2addr v2, v3

    sub-int/2addr v1, v2

    const/16 v2, 0x8

    .line 189
    new-array v2, v2, [F

    int-to-float v1, v1

    const/4 v4, 0x0

    aput v1, v2, v4

    const/4 v4, 0x1

    aput v1, v2, v4

    aput v1, v2, v3

    const/4 v3, 0x3

    aput v1, v2, v3

    const/4 v3, 0x4

    aput v1, v2, v3

    const/4 v3, 0x5

    aput v1, v2, v3

    const/4 v3, 0x6

    aput v1, v2, v3

    const/4 v3, 0x7

    aput v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 190
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 191
    iget-object p0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 193
    :cond_0
    iget-object p0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 135
    sget-object v0, Lcom/assist/playx/R$styleable;->RoundCornerProgress:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/high16 v0, 0x41f00000    # 30.0f

    .line 137
    invoke-direct {p0, v0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->a(F)F

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->d:I

    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, v0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->a(F)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 140
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->m:Z

    const/4 v2, 0x2

    const/high16 v3, 0x42c80000    # 100.0f

    .line 142
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->g:F

    const/4 v2, 0x3

    .line 143
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->h:F

    const/4 v2, 0x7

    .line 144
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->i:F

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f04005b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 147
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->j:I

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f04005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v1, 0x4

    .line 149
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->k:I

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f04005d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const/16 v0, 0x8

    .line 151
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->l:I

    .line 152
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic b(Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->d()V

    return-void
.end method

.method private c()V
    .locals 7

    .line 216
    iget-object v1, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->b:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->g:F

    iget v3, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->h:F

    iget v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->f:I

    int-to-float v4, v0

    iget v5, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->d:I

    iget v6, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->e:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->a(Landroid/widget/LinearLayout;FFFII)V

    return-void
.end method

.method private d()V
    .locals 7

    .line 220
    iget-object v1, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->c:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->g:F

    iget v3, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->i:F

    iget v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->f:I

    int-to-float v4, v0

    iget v5, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->d:I

    iget v6, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->e:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->a(Landroid/widget/LinearLayout;FFFII)V

    return-void
.end method

.method private e()V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->b:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->setupReverse(Landroid/widget/LinearLayout;)V

    .line 225
    iget-object v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->c:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->setupReverse(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method private f()V
    .locals 4

    .line 247
    iget-object v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->a:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->e:I

    iget v2, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->e:I

    iget v3, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->e:I

    iget p0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->e:I

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method private setupReverse(Landroid/widget/LinearLayout;)V
    .locals 7

    .line 230
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1252
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    const/16 v3, 0x15

    const/16 v4, 0x9

    const/16 v5, 0xb

    const/16 v6, 0x11

    if-lt v1, v6, :cond_0

    .line 1253
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1254
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1255
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1256
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1258
    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1259
    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 232
    :goto_0
    iget-boolean p0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->m:Z

    if-eqz p0, :cond_1

    .line 233
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 235
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v6, :cond_2

    .line 236
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 238
    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 240
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v6, :cond_2

    .line 241
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 243
    :cond_2
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/widget/LinearLayout;FFFII)V
.end method

.method public getLayoutWidth()F
    .locals 0

    .line 318
    iget p0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->f:I

    int-to-float p0, p0

    return p0
.end method

.method public getMax()F
    .locals 0

    .line 305
    iget p0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->g:F

    return p0
.end method

.method public getPadding()I
    .locals 0

    .line 293
    iget p0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->e:I

    return p0
.end method

.method public getProgress()F
    .locals 0

    .line 322
    iget p0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->h:F

    return p0
.end method

.method public getProgressBackgroundColor()I
    .locals 0

    .line 360
    iget p0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->j:I

    return p0
.end method

.method public getProgressColor()I
    .locals 0

    .line 369
    iget p0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->k:I

    return p0
.end method

.method public getRadius()I
    .locals 0

    .line 281
    iget p0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->d:I

    return p0
.end method

.method public getSecondaryProgress()F
    .locals 0

    .line 344
    iget p0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->i:F

    return p0
.end method

.method public getSecondaryProgressColor()I
    .locals 0

    .line 378
    iget p0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->l:I

    return p0
.end method

.method public getSecondaryProgressWidth()F
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 339
    iget-object p0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public invalidate()V
    .locals 0

    .line 392
    invoke-super {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 393
    invoke-direct {p0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->a()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 418
    instance-of v0, p1, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;

    if-nez v0, :cond_0

    .line 419
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 423
    :cond_0
    check-cast p1, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;

    .line 424
    invoke-virtual {p1}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 426
    iget v0, p1, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->d:I

    iput v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->d:I

    .line 427
    iget v0, p1, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->e:I

    iput v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->e:I

    .line 429
    iget v0, p1, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->f:I

    iput v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->j:I

    .line 430
    iget v0, p1, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->g:I

    iput v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->k:I

    .line 431
    iget v0, p1, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->h:I

    iput v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->l:I

    .line 433
    iget v0, p1, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->a:F

    iput v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->g:F

    .line 434
    iget v0, p1, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->b:F

    iput v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->h:F

    .line 435
    iget v0, p1, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->c:F

    iput v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->i:F

    .line 437
    iget-boolean p1, p1, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->i:Z

    iput-boolean p1, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->m:Z

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 398
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 399
    new-instance v1, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;

    invoke-direct {v1, v0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 401
    iget v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->d:I

    iput v0, v1, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->d:I

    .line 402
    iget v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->e:I

    iput v0, v1, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->e:I

    .line 404
    iget v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->j:I

    iput v0, v1, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->f:I

    .line 405
    iget v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->k:I

    iput v0, v1, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->g:I

    .line 406
    iget v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->l:I

    iput v0, v1, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->h:I

    .line 408
    iget v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->g:F

    iput v0, v1, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->a:F

    .line 409
    iget v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->h:F

    iput v0, v1, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->b:F

    .line 410
    iget v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->i:F

    iput v0, v1, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->c:F

    .line 412
    iget-boolean p0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->m:Z

    iput-boolean p0, v1, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$SavedState;->i:Z

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 161
    invoke-virtual {p0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->isInEditMode()Z

    move-result p2

    if-nez p2, :cond_0

    .line 162
    iput p1, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->f:I

    .line 163
    invoke-direct {p0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->a()V

    .line 164
    new-instance p1, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$1;

    invoke-direct {p1, p0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$1;-><init>(Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;)V

    const-wide/16 p2, 0x5

    invoke-virtual {p0, p1, p2, p3}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setMax(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 310
    iput p1, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->g:F

    .line 311
    :cond_0
    iget v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->h:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_1

    .line 312
    iput p1, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->h:F

    .line 313
    :cond_1
    invoke-direct {p0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->c()V

    .line 314
    invoke-direct {p0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->d()V

    return-void
.end method

.method public setOnProgressChangedListener(Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$a;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->n:Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$a;

    return-void
.end method

.method public setPadding(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 298
    iput p1, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->e:I

    .line 299
    :cond_0
    invoke-direct {p0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->f()V

    .line 300
    invoke-direct {p0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->c()V

    .line 301
    invoke-direct {p0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->d()V

    return-void
.end method

.method public setProgress(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .line 327
    iput v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->h:F

    goto :goto_0

    .line 328
    :cond_0
    iget v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->g:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 329
    iget p1, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->g:F

    iput p1, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->h:F

    goto :goto_0

    .line 331
    :cond_1
    iput p1, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->h:F

    .line 332
    :goto_0
    invoke-direct {p0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->c()V

    .line 333
    iget-object p1, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->n:Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$a;

    if-eqz p1, :cond_2

    .line 334
    invoke-virtual {p0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->getId()I

    :cond_2
    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 0

    .line 364
    iput p1, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->j:I

    .line 365
    invoke-direct {p0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->b()V

    return-void
.end method

.method public setProgressColor(I)V
    .locals 0

    .line 373
    iput p1, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->k:I

    .line 374
    invoke-direct {p0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->c()V

    return-void
.end method

.method public setRadius(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 286
    iput p1, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->d:I

    .line 287
    :cond_0
    invoke-direct {p0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->b()V

    .line 288
    invoke-direct {p0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->c()V

    .line 289
    invoke-direct {p0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->d()V

    return-void
.end method

.method public setReverse(Z)V
    .locals 0

    .line 274
    iput-boolean p1, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->m:Z

    .line 275
    invoke-direct {p0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->e()V

    .line 276
    invoke-direct {p0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->c()V

    .line 277
    invoke-direct {p0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->d()V

    return-void
.end method

.method public setSecondaryProgress(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .line 349
    iput v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->i:F

    goto :goto_0

    .line 350
    :cond_0
    iget v0, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->g:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 351
    iget p1, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->g:F

    iput p1, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->i:F

    goto :goto_0

    .line 353
    :cond_1
    iput p1, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->i:F

    .line 354
    :goto_0
    invoke-direct {p0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->d()V

    .line 355
    iget-object p1, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->n:Lcom/x/plus/pro/view/BaseRoundCornerProgressBar$a;

    if-eqz p1, :cond_2

    .line 356
    invoke-virtual {p0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->getId()I

    :cond_2
    return-void
.end method

.method public setSecondaryProgressColor(I)V
    .locals 0

    .line 382
    iput p1, p0, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->l:I

    .line 383
    invoke-direct {p0}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;->d()V

    return-void
.end method
