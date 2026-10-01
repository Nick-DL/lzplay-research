.class final Landroidx/appcompat/widget/d;
.super Ljava/lang/Object;
.source "AppCompatBackgroundHelper.java"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroidx/appcompat/widget/f;

.field private c:I

.field private d:Landroidx/appcompat/widget/ac;

.field private e:Landroidx/appcompat/widget/ac;

.field private f:Landroidx/appcompat/widget/ac;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Landroidx/appcompat/widget/d;->c:I

    .line 42
    iput-object p1, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    .line 43
    invoke-static {}, Landroidx/appcompat/widget/f;->b()Landroidx/appcompat/widget/f;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/d;->b:Landroidx/appcompat/widget/f;

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Z
    .registers 5

    .line 173
    iget-object v0, p0, Landroidx/appcompat/widget/d;->f:Landroidx/appcompat/widget/ac;

    if-nez v0, :cond_b

    .line 174
    new-instance v0, Landroidx/appcompat/widget/ac;

    invoke-direct {v0}, Landroidx/appcompat/widget/ac;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/d;->f:Landroidx/appcompat/widget/ac;

    .line 176
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/d;->f:Landroidx/appcompat/widget/ac;

    .line 177
    invoke-virtual {v0}, Landroidx/appcompat/widget/ac;->a()V

    .line 179
    iget-object v1, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    invoke-static {v1}, Landroidx/core/e/r;->l(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    .line 181
    iput-boolean v2, v0, Landroidx/appcompat/widget/ac;->d:Z

    .line 182
    iput-object v1, v0, Landroidx/appcompat/widget/ac;->a:Landroid/content/res/ColorStateList;

    .line 184
    :cond_1d
    iget-object v1, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    invoke-static {v1}, Landroidx/core/e/r;->m(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 186
    iput-boolean v2, v0, Landroidx/appcompat/widget/ac;->c:Z

    .line 187
    iput-object v1, v0, Landroidx/appcompat/widget/ac;->b:Landroid/graphics/PorterDuff$Mode;

    .line 190
    :cond_29
    iget-boolean v1, v0, Landroidx/appcompat/widget/ac;->d:Z

    if-nez v1, :cond_34

    iget-boolean v1, v0, Landroidx/appcompat/widget/ac;->c:Z

    if-eqz v1, :cond_32

    goto :goto_34

    :cond_32
    const/4 p0, 0x0

    return p0

    .line 191
    :cond_34
    :goto_34
    iget-object p0, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-static {p1, v0, p0}, Landroidx/appcompat/widget/f;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/ac;[I)V

    return v2
.end method

.method private b(Landroid/content/res/ColorStateList;)V
    .registers 3

    if-eqz p1, :cond_17

    .line 139
    iget-object v0, p0, Landroidx/appcompat/widget/d;->d:Landroidx/appcompat/widget/ac;

    if-nez v0, :cond_d

    .line 140
    new-instance v0, Landroidx/appcompat/widget/ac;

    invoke-direct {v0}, Landroidx/appcompat/widget/ac;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/d;->d:Landroidx/appcompat/widget/ac;

    .line 142
    :cond_d
    iget-object v0, p0, Landroidx/appcompat/widget/d;->d:Landroidx/appcompat/widget/ac;

    iput-object p1, v0, Landroidx/appcompat/widget/ac;->a:Landroid/content/res/ColorStateList;

    .line 143
    iget-object p1, p0, Landroidx/appcompat/widget/d;->d:Landroidx/appcompat/widget/ac;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/appcompat/widget/ac;->d:Z

    goto :goto_1a

    :cond_17
    const/4 p1, 0x0

    .line 145
    iput-object p1, p0, Landroidx/appcompat/widget/d;->d:Landroidx/appcompat/widget/ac;

    .line 147
    :goto_1a
    invoke-virtual {p0}, Landroidx/appcompat/widget/d;->d()V

    return-void
.end method

.method private e()Z
    .registers 5

    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x15

    if-le v0, v3, :cond_e

    .line 155
    iget-object p0, p0, Landroidx/appcompat/widget/d;->d:Landroidx/appcompat/widget/ac;

    if-eqz p0, :cond_d

    return v2

    :cond_d
    return v1

    :cond_e
    if-ne v0, v3, :cond_11

    return v2

    :cond_11
    return v1
.end method


# virtual methods
.method final a()V
    .registers 2

    const/4 v0, -0x1

    .line 84
    iput v0, p0, Landroidx/appcompat/widget/d;->c:I

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/d;->b(Landroid/content/res/ColorStateList;)V

    .line 87
    invoke-virtual {p0}, Landroidx/appcompat/widget/d;->d()V

    return-void
.end method

.method final a(I)V
    .registers 4

    .line 75
    iput p1, p0, Landroidx/appcompat/widget/d;->c:I

    .line 77
    iget-object v0, p0, Landroidx/appcompat/widget/d;->b:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroidx/appcompat/widget/d;->b:Landroidx/appcompat/widget/f;

    iget-object v1, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    .line 78
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/widget/f;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    .line 77
    :goto_14
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/d;->b(Landroid/content/res/ColorStateList;)V

    .line 80
    invoke-virtual {p0}, Landroidx/appcompat/widget/d;->d()V

    return-void
.end method

.method final a(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 91
    iget-object v0, p0, Landroidx/appcompat/widget/d;->e:Landroidx/appcompat/widget/ac;

    if-nez v0, :cond_b

    .line 92
    new-instance v0, Landroidx/appcompat/widget/ac;

    invoke-direct {v0}, Landroidx/appcompat/widget/ac;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/d;->e:Landroidx/appcompat/widget/ac;

    .line 94
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/d;->e:Landroidx/appcompat/widget/ac;

    iput-object p1, v0, Landroidx/appcompat/widget/ac;->a:Landroid/content/res/ColorStateList;

    .line 95
    iget-object p1, p0, Landroidx/appcompat/widget/d;->e:Landroidx/appcompat/widget/ac;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/appcompat/widget/ac;->d:Z

    .line 96
    invoke-virtual {p0}, Landroidx/appcompat/widget/d;->d()V

    return-void
.end method

.method final a(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 104
    iget-object v0, p0, Landroidx/appcompat/widget/d;->e:Landroidx/appcompat/widget/ac;

    if-nez v0, :cond_b

    .line 105
    new-instance v0, Landroidx/appcompat/widget/ac;

    invoke-direct {v0}, Landroidx/appcompat/widget/ac;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/d;->e:Landroidx/appcompat/widget/ac;

    .line 107
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/d;->e:Landroidx/appcompat/widget/ac;

    iput-object p1, v0, Landroidx/appcompat/widget/ac;->b:Landroid/graphics/PorterDuff$Mode;

    .line 108
    iget-object p1, p0, Landroidx/appcompat/widget/d;->e:Landroidx/appcompat/widget/ac;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/appcompat/widget/ac;->c:Z

    .line 110
    invoke-virtual {p0}, Landroidx/appcompat/widget/d;->d()V

    return-void
.end method

.method final a(Landroid/util/AttributeSet;I)V
    .registers 6

    .line 47
    iget-object v0, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/appcompat/widget/ae;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/ae;

    move-result-object p1

    .line 50
    :try_start_d
    sget p2, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ae;->f(I)Z

    move-result p2

    const/4 v0, -0x1

    if-eqz p2, :cond_31

    .line 51
    sget p2, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/ae;->f(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/d;->c:I

    .line 53
    iget-object p2, p0, Landroidx/appcompat/widget/d;->b:Landroidx/appcompat/widget/f;

    iget-object v1, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    .line 54
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroidx/appcompat/widget/d;->c:I

    invoke-virtual {p2, v1, v2}, Landroidx/appcompat/widget/f;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_31

    .line 56
    invoke-direct {p0, p2}, Landroidx/appcompat/widget/d;->b(Landroid/content/res/ColorStateList;)V

    .line 59
    :cond_31
    sget p2, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ae;->f(I)Z

    move-result p2

    if-eqz p2, :cond_44

    .line 60
    iget-object p2, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    sget v1, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    .line 61
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ae;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 60
    invoke-static {p2, v1}, Landroidx/core/e/r;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 63
    :cond_44
    sget p2, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ae;->f(I)Z

    move-result p2

    if-eqz p2, :cond_5c

    .line 64
    iget-object p0, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    sget p2, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    .line 66
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/ae;->a(II)I

    move-result p2

    const/4 v0, 0x0

    .line 65
    invoke-static {p2, v0}, Landroidx/appcompat/widget/q;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    .line 64
    invoke-static {p0, p2}, Landroidx/core/e/r;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_5c
    .catchall {:try_start_d .. :try_end_5c} :catchall_62

    .line 1245
    :cond_5c
    iget-object p0, p1, Landroidx/appcompat/widget/ae;->a:Landroid/content/res/TypedArray;

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_62
    move-exception p0

    .line 2245
    iget-object p1, p1, Landroidx/appcompat/widget/ae;->a:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    throw p0
.end method

.method final b()Landroid/content/res/ColorStateList;
    .registers 2

    .line 100
    iget-object v0, p0, Landroidx/appcompat/widget/d;->e:Landroidx/appcompat/widget/ac;

    if-eqz v0, :cond_9

    iget-object p0, p0, Landroidx/appcompat/widget/d;->e:Landroidx/appcompat/widget/ac;

    iget-object p0, p0, Landroidx/appcompat/widget/ac;->a:Landroid/content/res/ColorStateList;

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method final c()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 114
    iget-object v0, p0, Landroidx/appcompat/widget/d;->e:Landroidx/appcompat/widget/ac;

    if-eqz v0, :cond_9

    iget-object p0, p0, Landroidx/appcompat/widget/d;->e:Landroidx/appcompat/widget/ac;

    iget-object p0, p0, Landroidx/appcompat/widget/ac;->b:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method final d()V
    .registers 3

    .line 118
    iget-object v0, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 120
    invoke-direct {p0}, Landroidx/appcompat/widget/d;->e()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 121
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/d;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_15

    return-void

    .line 127
    :cond_15
    iget-object v1, p0, Landroidx/appcompat/widget/d;->e:Landroidx/appcompat/widget/ac;

    if-eqz v1, :cond_25

    .line 128
    iget-object v1, p0, Landroidx/appcompat/widget/d;->e:Landroidx/appcompat/widget/ac;

    iget-object p0, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    .line 128
    invoke-static {v0, v1, p0}, Landroidx/appcompat/widget/f;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/ac;[I)V

    return-void

    .line 130
    :cond_25
    iget-object v1, p0, Landroidx/appcompat/widget/d;->d:Landroidx/appcompat/widget/ac;

    if-eqz v1, :cond_34

    .line 131
    iget-object v1, p0, Landroidx/appcompat/widget/d;->d:Landroidx/appcompat/widget/ac;

    iget-object p0, p0, Landroidx/appcompat/widget/d;->a:Landroid/view/View;

    .line 132
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    .line 131
    invoke-static {v0, v1, p0}, Landroidx/appcompat/widget/f;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/ac;[I)V

    :cond_34
    return-void
.end method
