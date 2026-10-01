.class final Landroidx/appcompat/widget/m;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/m$a;
    }
.end annotation


# instance fields
.field final a:Landroid/widget/TextView;

.field b:Landroidx/appcompat/widget/ac;

.field final c:Landroidx/appcompat/widget/n;

.field d:Landroid/graphics/Typeface;

.field e:Z

.field private f:Landroidx/appcompat/widget/ac;

.field private g:Landroidx/appcompat/widget/ac;

.field private h:Landroidx/appcompat/widget/ac;

.field private i:Landroidx/appcompat/widget/ac;

.field private j:Landroidx/appcompat/widget/ac;

.field private k:Landroidx/appcompat/widget/ac;

.field private l:I

.field private m:I


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Landroidx/appcompat/widget/m;->l:I

    const/4 v0, -0x1

    .line 70
    iput v0, p0, Landroidx/appcompat/widget/m;->m:I

    .line 75
    iput-object p1, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    .line 76
    new-instance p1, Landroidx/appcompat/widget/n;

    iget-object v0, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-direct {p1, v0}, Landroidx/appcompat/widget/n;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/m;->c:Landroidx/appcompat/widget/n;

    return-void
.end method

.method private static a(Landroid/content/Context;Landroidx/appcompat/widget/f;I)Landroidx/appcompat/widget/ac;
    .registers 3

    .line 561
    invoke-virtual {p1, p0, p2}, Landroidx/appcompat/widget/f;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 563
    new-instance p1, Landroidx/appcompat/widget/ac;

    invoke-direct {p1}, Landroidx/appcompat/widget/ac;-><init>()V

    const/4 p2, 0x1

    .line 564
    iput-boolean p2, p1, Landroidx/appcompat/widget/ac;->d:Z

    .line 565
    iput-object p0, p1, Landroidx/appcompat/widget/ac;->a:Landroid/content/res/ColorStateList;

    return-object p1

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Landroid/content/Context;Landroidx/appcompat/widget/ae;)V
    .registers 10

    .line 407
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textStyle:I

    iget v1, p0, Landroidx/appcompat/widget/m;->l:I

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/ae;->a(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/m;->l:I

    .line 409
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_25

    .line 410
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textFontWeight:I

    invoke-virtual {p2, v0, v2}, Landroidx/appcompat/widget/ae;->a(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/m;->m:I

    .line 412
    iget v0, p0, Landroidx/appcompat/widget/m;->m:I

    if-eq v0, v2, :cond_25

    .line 413
    iget v0, p0, Landroidx/appcompat/widget/m;->l:I

    and-int/lit8 v0, v0, 0x2

    or-int/2addr v0, v3

    iput v0, p0, Landroidx/appcompat/widget/m;->l:I

    .line 417
    :cond_25
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/ae;->f(I)Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_5b

    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    .line 418
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/ae;->f(I)Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_5b

    .line 464
    :cond_37
    sget p1, Landroidx/appcompat/R$styleable;->TextAppearance_android_typeface:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/ae;->f(I)Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 466
    iput-boolean v3, p0, Landroidx/appcompat/widget/m;->e:Z

    .line 467
    sget p1, Landroidx/appcompat/R$styleable;->TextAppearance_android_typeface:I

    invoke-virtual {p2, p1, v4}, Landroidx/appcompat/widget/ae;->a(II)I

    move-result p1

    packed-switch p1, :pswitch_data_da

    goto :goto_5a

    .line 478
    :pswitch_4b
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/appcompat/widget/m;->d:Landroid/graphics/Typeface;

    goto :goto_5a

    .line 474
    :pswitch_50
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/appcompat/widget/m;->d:Landroid/graphics/Typeface;

    return-void

    .line 470
    :pswitch_55
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/appcompat/widget/m;->d:Landroid/graphics/Typeface;

    return-void

    :cond_5a
    :goto_5a
    return-void

    :cond_5b
    :goto_5b
    const/4 v0, 0x0

    .line 419
    iput-object v0, p0, Landroidx/appcompat/widget/m;->d:Landroid/graphics/Typeface;

    .line 420
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/ae;->f(I)Z

    move-result v0

    if-eqz v0, :cond_69

    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    goto :goto_6b

    :cond_69
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    .line 423
    :goto_6b
    iget v5, p0, Landroidx/appcompat/widget/m;->m:I

    .line 424
    iget v6, p0, Landroidx/appcompat/widget/m;->l:I

    .line 425
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result p1

    if-nez p1, :cond_ab

    .line 426
    new-instance p1, Landroidx/appcompat/widget/m$a;

    invoke-direct {p1, p0, v5, v6}, Landroidx/appcompat/widget/m$a;-><init>(Landroidx/appcompat/widget/m;II)V

    .line 430
    :try_start_7a
    iget v5, p0, Landroidx/appcompat/widget/m;->l:I

    invoke-virtual {p2, v0, v5, p1}, Landroidx/appcompat/widget/ae;->a(IILandroidx/core/content/a/f$a;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_a2

    .line 432
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v1, :cond_a0

    iget v5, p0, Landroidx/appcompat/widget/m;->m:I

    if-eq v5, v2, :cond_a0

    .line 435
    invoke-static {p1, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget v5, p0, Landroidx/appcompat/widget/m;->m:I

    iget v6, p0, Landroidx/appcompat/widget/m;->l:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_98

    move v6, v4

    goto :goto_99

    :cond_98
    move v6, v3

    .line 434
    :goto_99
    invoke-static {p1, v5, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/m;->d:Landroid/graphics/Typeface;

    goto :goto_a2

    .line 438
    :cond_a0
    iput-object p1, p0, Landroidx/appcompat/widget/m;->d:Landroid/graphics/Typeface;

    .line 442
    :cond_a2
    :goto_a2
    iget-object p1, p0, Landroidx/appcompat/widget/m;->d:Landroid/graphics/Typeface;

    if-nez p1, :cond_a8

    move p1, v4

    goto :goto_a9

    :cond_a8
    move p1, v3

    :goto_a9
    iput-boolean p1, p0, Landroidx/appcompat/widget/m;->e:Z
    :try_end_ab
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7a .. :try_end_ab} :catch_ab
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7a .. :try_end_ab} :catch_ab

    .line 447
    :catch_ab
    :cond_ab
    iget-object p1, p0, Landroidx/appcompat/widget/m;->d:Landroid/graphics/Typeface;

    if-nez p1, :cond_d9

    .line 449
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/ae;->d(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d9

    .line 451
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v1, :cond_d1

    iget p2, p0, Landroidx/appcompat/widget/m;->m:I

    if-eq p2, v2, :cond_d1

    .line 454
    invoke-static {p1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget p2, p0, Landroidx/appcompat/widget/m;->m:I

    iget v0, p0, Landroidx/appcompat/widget/m;->l:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_ca

    move v3, v4

    .line 453
    :cond_ca
    invoke-static {p1, p2, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/m;->d:Landroid/graphics/Typeface;

    return-void

    .line 457
    :cond_d1
    iget p2, p0, Landroidx/appcompat/widget/m;->l:I

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/m;->d:Landroid/graphics/Typeface;

    :cond_d9
    return-void

    :pswitch_data_da
    .packed-switch 0x1
        :pswitch_55
        :pswitch_50
        :pswitch_4b
    .end packed-switch
.end method

.method private a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 13

    .line 685
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-lt v0, v1, :cond_2e

    if-nez p5, :cond_e

    if-eqz p6, :cond_2e

    .line 686
    :cond_e
    iget-object p1, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 687
    iget-object p0, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    if-eqz p5, :cond_19

    goto :goto_1b

    :cond_19
    aget-object p5, p1, v5

    :goto_1b
    if-eqz p2, :cond_1e

    goto :goto_20

    :cond_1e
    aget-object p2, p1, v3

    :goto_20
    if-eqz p6, :cond_23

    goto :goto_25

    :cond_23
    aget-object p6, p1, v4

    :goto_25
    if-eqz p4, :cond_28

    goto :goto_2a

    :cond_28
    aget-object p4, p1, v2

    :goto_2a
    invoke-virtual {p0, p5, p2, p6, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_2e
    if-nez p1, :cond_36

    if-nez p2, :cond_36

    if-nez p3, :cond_36

    if-eqz p4, :cond_7b

    .line 696
    :cond_36
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p5, v1, :cond_5c

    .line 697
    iget-object p5, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p5

    .line 698
    aget-object p6, p5, v5

    if-nez p6, :cond_48

    aget-object p6, p5, v4

    if-eqz p6, :cond_5c

    .line 699
    :cond_48
    iget-object p0, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    aget-object p1, p5, v5

    if-eqz p2, :cond_4f

    goto :goto_51

    :cond_4f
    aget-object p2, p5, v3

    :goto_51
    aget-object p3, p5, v4

    if-eqz p4, :cond_56

    goto :goto_58

    :cond_56
    aget-object p4, p5, v2

    :goto_58
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 709
    :cond_5c
    iget-object p5, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p5

    .line 710
    iget-object p0, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_67

    goto :goto_69

    :cond_67
    aget-object p1, p5, v5

    :goto_69
    if-eqz p2, :cond_6c

    goto :goto_6e

    :cond_6c
    aget-object p2, p5, v3

    :goto_6e
    if-eqz p3, :cond_71

    goto :goto_73

    :cond_71
    aget-object p3, p5, v4

    :goto_73
    if-eqz p4, :cond_76

    goto :goto_78

    :cond_76
    aget-object p4, p5, v2

    :goto_78
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_7b
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/ac;)V
    .registers 3

    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    .line 555
    iget-object p0, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object p0

    invoke-static {p1, p2, p0}, Landroidx/appcompat/widget/f;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/ac;[I)V

    :cond_d
    return-void
.end method

.method private b(IF)V
    .registers 3

    .line 602
    iget-object p0, p0, Landroidx/appcompat/widget/m;->c:Landroidx/appcompat/widget/n;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/n;->a(IF)V

    return-void
.end method


# virtual methods
.method final a()V
    .registers 6

    .line 536
    iget-object v0, p0, Landroidx/appcompat/widget/m;->f:Landroidx/appcompat/widget/ac;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/appcompat/widget/m;->g:Landroidx/appcompat/widget/ac;

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/appcompat/widget/m;->h:Landroidx/appcompat/widget/ac;

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/appcompat/widget/m;->i:Landroidx/appcompat/widget/ac;

    if-eqz v0, :cond_36

    .line 538
    :cond_12
    iget-object v0, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 539
    aget-object v3, v0, v2

    iget-object v4, p0, Landroidx/appcompat/widget/m;->f:Landroidx/appcompat/widget/ac;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/m;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/ac;)V

    const/4 v3, 0x1

    .line 540
    aget-object v3, v0, v3

    iget-object v4, p0, Landroidx/appcompat/widget/m;->g:Landroidx/appcompat/widget/ac;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/m;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/ac;)V

    .line 541
    aget-object v3, v0, v1

    iget-object v4, p0, Landroidx/appcompat/widget/m;->h:Landroidx/appcompat/widget/ac;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/m;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/ac;)V

    const/4 v3, 0x3

    .line 542
    aget-object v0, v0, v3

    iget-object v3, p0, Landroidx/appcompat/widget/m;->i:Landroidx/appcompat/widget/ac;

    invoke-direct {p0, v0, v3}, Landroidx/appcompat/widget/m;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/ac;)V

    .line 544
    :cond_36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_58

    .line 545
    iget-object v0, p0, Landroidx/appcompat/widget/m;->j:Landroidx/appcompat/widget/ac;

    if-nez v0, :cond_44

    iget-object v0, p0, Landroidx/appcompat/widget/m;->k:Landroidx/appcompat/widget/ac;

    if-eqz v0, :cond_58

    .line 546
    :cond_44
    iget-object v0, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 547
    aget-object v2, v0, v2

    iget-object v3, p0, Landroidx/appcompat/widget/m;->j:Landroidx/appcompat/widget/ac;

    invoke-direct {p0, v2, v3}, Landroidx/appcompat/widget/m;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/ac;)V

    .line 548
    aget-object v0, v0, v1

    iget-object v1, p0, Landroidx/appcompat/widget/m;->k:Landroidx/appcompat/widget/ac;

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/m;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/ac;)V

    :cond_58
    return-void
.end method

.method final a(I)V
    .registers 2

    .line 606
    iget-object p0, p0, Landroidx/appcompat/widget/m;->c:Landroidx/appcompat/widget/n;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/n;->a(I)V

    return-void
.end method

.method final a(IF)V
    .registers 4

    .line 582
    sget-boolean v0, Landroidx/core/widget/b;->d:Z

    if-nez v0, :cond_f

    .line 7598
    iget-object v0, p0, Landroidx/appcompat/widget/m;->c:Landroidx/appcompat/widget/n;

    invoke-virtual {v0}, Landroidx/appcompat/widget/n;->b()Z

    move-result v0

    if-nez v0, :cond_f

    .line 584
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/m;->b(IF)V

    :cond_f
    return-void
.end method

.method final a(IIII)V
    .registers 5

    .line 614
    iget-object p0, p0, Landroidx/appcompat/widget/m;->c:Landroidx/appcompat/widget/n;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/n;->a(IIII)V

    return-void
.end method

.method final a(Landroid/content/Context;I)V
    .registers 6

    .line 485
    sget-object v0, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/ae;->a(Landroid/content/Context;I[I)Landroidx/appcompat/widget/ae;

    move-result-object p2

    .line 487
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/ae;->f(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 492
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/ae;->a(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/m;->a(Z)V

    .line 494
    :cond_18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_33

    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 495
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/ae;->f(I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 498
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 499
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/ae;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 501
    iget-object v2, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 505
    :cond_33
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/ae;->f(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 506
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroidx/appcompat/widget/ae;->d(II)I

    move-result v0

    if-nez v0, :cond_4a

    .line 507
    iget-object v0, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 511
    :cond_4a
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/m;->a(Landroid/content/Context;Landroidx/appcompat/widget/ae;)V

    .line 513
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_68

    sget p1, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 514
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/ae;->f(I)Z

    move-result p1

    if-eqz p1, :cond_68

    .line 515
    sget p1, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/ae;->d(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_68

    .line 518
    iget-object v0, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 7245
    :cond_68
    iget-object p1, p2, Landroidx/appcompat/widget/ae;->a:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 522
    iget-object p1, p0, Landroidx/appcompat/widget/m;->d:Landroid/graphics/Typeface;

    if-eqz p1, :cond_7a

    .line 523
    iget-object p1, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    iget-object p2, p0, Landroidx/appcompat/widget/m;->d:Landroid/graphics/Typeface;

    iget p0, p0, Landroidx/appcompat/widget/m;->l:I

    invoke-virtual {p1, p2, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_7a
    return-void
.end method

.method final a(Landroid/util/AttributeSet;I)V
    .registers 21
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move/from16 v1, p2

    .line 81
    iget-object v2, v7, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 82
    invoke-static {}, Landroidx/appcompat/widget/f;->b()Landroidx/appcompat/widget/f;

    move-result-object v3

    .line 85
    sget-object v4, Landroidx/appcompat/R$styleable;->AppCompatTextHelper:[I

    const/4 v5, 0x0

    invoke-static {v2, v0, v4, v1, v5}, Landroidx/appcompat/widget/ae;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/ae;

    move-result-object v4

    .line 87
    sget v6, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_textAppearance:I

    const/4 v8, -0x1

    invoke-virtual {v4, v6, v8}, Landroidx/appcompat/widget/ae;->f(II)I

    move-result v6

    .line 89
    sget v9, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v4, v9}, Landroidx/appcompat/widget/ae;->f(I)Z

    move-result v9

    if-eqz v9, :cond_32

    .line 90
    sget v9, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    .line 91
    invoke-virtual {v4, v9, v5}, Landroidx/appcompat/widget/ae;->f(II)I

    move-result v9

    .line 90
    invoke-static {v2, v3, v9}, Landroidx/appcompat/widget/m;->a(Landroid/content/Context;Landroidx/appcompat/widget/f;I)Landroidx/appcompat/widget/ac;

    move-result-object v9

    iput-object v9, v7, Landroidx/appcompat/widget/m;->f:Landroidx/appcompat/widget/ac;

    .line 93
    :cond_32
    sget v9, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v4, v9}, Landroidx/appcompat/widget/ae;->f(I)Z

    move-result v9

    if-eqz v9, :cond_46

    .line 94
    sget v9, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    .line 95
    invoke-virtual {v4, v9, v5}, Landroidx/appcompat/widget/ae;->f(II)I

    move-result v9

    .line 94
    invoke-static {v2, v3, v9}, Landroidx/appcompat/widget/m;->a(Landroid/content/Context;Landroidx/appcompat/widget/f;I)Landroidx/appcompat/widget/ac;

    move-result-object v9

    iput-object v9, v7, Landroidx/appcompat/widget/m;->g:Landroidx/appcompat/widget/ac;

    .line 97
    :cond_46
    sget v9, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v4, v9}, Landroidx/appcompat/widget/ae;->f(I)Z

    move-result v9

    if-eqz v9, :cond_5a

    .line 98
    sget v9, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    .line 99
    invoke-virtual {v4, v9, v5}, Landroidx/appcompat/widget/ae;->f(II)I

    move-result v9

    .line 98
    invoke-static {v2, v3, v9}, Landroidx/appcompat/widget/m;->a(Landroid/content/Context;Landroidx/appcompat/widget/f;I)Landroidx/appcompat/widget/ac;

    move-result-object v9

    iput-object v9, v7, Landroidx/appcompat/widget/m;->h:Landroidx/appcompat/widget/ac;

    .line 101
    :cond_5a
    sget v9, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v4, v9}, Landroidx/appcompat/widget/ae;->f(I)Z

    move-result v9

    if-eqz v9, :cond_6e

    .line 102
    sget v9, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    .line 103
    invoke-virtual {v4, v9, v5}, Landroidx/appcompat/widget/ae;->f(II)I

    move-result v9

    .line 102
    invoke-static {v2, v3, v9}, Landroidx/appcompat/widget/m;->a(Landroid/content/Context;Landroidx/appcompat/widget/f;I)Landroidx/appcompat/widget/ac;

    move-result-object v9

    iput-object v9, v7, Landroidx/appcompat/widget/m;->i:Landroidx/appcompat/widget/ac;

    .line 106
    :cond_6e
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x11

    if-lt v9, v10, :cond_9c

    .line 107
    sget v9, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    invoke-virtual {v4, v9}, Landroidx/appcompat/widget/ae;->f(I)Z

    move-result v9

    if-eqz v9, :cond_88

    .line 108
    sget v9, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    .line 109
    invoke-virtual {v4, v9, v5}, Landroidx/appcompat/widget/ae;->f(II)I

    move-result v9

    .line 108
    invoke-static {v2, v3, v9}, Landroidx/appcompat/widget/m;->a(Landroid/content/Context;Landroidx/appcompat/widget/f;I)Landroidx/appcompat/widget/ac;

    move-result-object v9

    iput-object v9, v7, Landroidx/appcompat/widget/m;->j:Landroidx/appcompat/widget/ac;

    .line 111
    :cond_88
    sget v9, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    invoke-virtual {v4, v9}, Landroidx/appcompat/widget/ae;->f(I)Z

    move-result v9

    if-eqz v9, :cond_9c

    .line 112
    sget v9, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    .line 113
    invoke-virtual {v4, v9, v5}, Landroidx/appcompat/widget/ae;->f(II)I

    move-result v9

    .line 112
    invoke-static {v2, v3, v9}, Landroidx/appcompat/widget/m;->a(Landroid/content/Context;Landroidx/appcompat/widget/f;I)Landroidx/appcompat/widget/ac;

    move-result-object v9

    iput-object v9, v7, Landroidx/appcompat/widget/m;->k:Landroidx/appcompat/widget/ac;

    .line 1245
    :cond_9c
    iget-object v4, v4, Landroidx/appcompat/widget/ae;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 122
    iget-object v4, v7, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    .line 123
    invoke-virtual {v4}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    instance-of v4, v4, Landroid/text/method/PasswordTransformationMethod;

    const/16 v9, 0x1a

    const/16 v11, 0x17

    if-eq v6, v8, :cond_134

    .line 134
    sget-object v13, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v2, v6, v13}, Landroidx/appcompat/widget/ae;->a(Landroid/content/Context;I[I)Landroidx/appcompat/widget/ae;

    move-result-object v6

    if-nez v4, :cond_c8

    .line 135
    sget v13, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v6, v13}, Landroidx/appcompat/widget/ae;->f(I)Z

    move-result v13

    if-eqz v13, :cond_c8

    .line 137
    sget v13, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v6, v13, v5}, Landroidx/appcompat/widget/ae;->a(IZ)Z

    move-result v13

    move v14, v13

    const/4 v13, 0x1

    goto :goto_ca

    :cond_c8
    move v13, v5

    move v14, v13

    .line 140
    :goto_ca
    invoke-direct {v7, v2, v6}, Landroidx/appcompat/widget/m;->a(Landroid/content/Context;Landroidx/appcompat/widget/ae;)V

    .line 141
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v15, v11, :cond_107

    .line 144
    sget v15, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v6, v15}, Landroidx/appcompat/widget/ae;->f(I)Z

    move-result v15

    if-eqz v15, :cond_e0

    .line 145
    sget v15, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v6, v15}, Landroidx/appcompat/widget/ae;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    goto :goto_e1

    :cond_e0
    const/4 v15, 0x0

    .line 147
    :goto_e1
    sget v10, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v6, v10}, Landroidx/appcompat/widget/ae;->f(I)Z

    move-result v10

    if-eqz v10, :cond_f0

    .line 148
    sget v10, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v6, v10}, Landroidx/appcompat/widget/ae;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    goto :goto_f1

    :cond_f0
    const/4 v10, 0x0

    .line 151
    :goto_f1
    sget v12, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v6, v12}, Landroidx/appcompat/widget/ae;->f(I)Z

    move-result v12

    if-eqz v12, :cond_105

    .line 152
    sget v12, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v6, v12}, Landroidx/appcompat/widget/ae;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    move-object/from16 v17, v15

    move-object v15, v12

    move-object/from16 v12, v17

    goto :goto_10a

    :cond_105
    move-object v12, v15

    goto :goto_109

    :cond_107
    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_109
    const/4 v15, 0x0

    .line 156
    :goto_10a
    sget v8, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v6, v8}, Landroidx/appcompat/widget/ae;->f(I)Z

    move-result v8

    if-eqz v8, :cond_119

    .line 157
    sget v8, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v6, v8}, Landroidx/appcompat/widget/ae;->d(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_11a

    :cond_119
    const/4 v8, 0x0

    .line 159
    :goto_11a
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v9, :cond_12d

    sget v11, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 160
    invoke-virtual {v6, v11}, Landroidx/appcompat/widget/ae;->f(I)Z

    move-result v11

    if-eqz v11, :cond_12d

    .line 161
    sget v11, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v6, v11}, Landroidx/appcompat/widget/ae;->d(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_12e

    :cond_12d
    const/4 v11, 0x0

    .line 2245
    :goto_12e
    iget-object v6, v6, Landroidx/appcompat/widget/ae;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_13b

    :cond_134
    move v13, v5

    move v14, v13

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    .line 167
    :goto_13b
    sget-object v6, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v2, v0, v6, v1, v5}, Landroidx/appcompat/widget/ae;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/ae;

    move-result-object v6

    if-nez v4, :cond_152

    .line 169
    sget v9, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v6, v9}, Landroidx/appcompat/widget/ae;->f(I)Z

    move-result v9

    if-eqz v9, :cond_152

    .line 171
    sget v9, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v6, v9, v5}, Landroidx/appcompat/widget/ae;->a(IZ)Z

    move-result v14

    const/4 v13, 0x1

    .line 173
    :cond_152
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v9, v5, :cond_184

    .line 176
    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/ae;->f(I)Z

    move-result v5

    if-eqz v5, :cond_167

    .line 177
    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/ae;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    move-object v12, v5

    .line 179
    :cond_167
    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/ae;->f(I)Z

    move-result v5

    if-eqz v5, :cond_176

    .line 180
    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/ae;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    move-object v10, v5

    .line 183
    :cond_176
    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/ae;->f(I)Z

    move-result v5

    if-eqz v5, :cond_184

    .line 184
    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/ae;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    .line 188
    :cond_184
    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/ae;->f(I)Z

    move-result v5

    if-eqz v5, :cond_192

    .line 189
    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/ae;->d(I)Ljava/lang/String;

    move-result-object v8

    .line 192
    :cond_192
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1a

    if-lt v5, v9, :cond_1a6

    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 193
    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/ae;->f(I)Z

    move-result v5

    if-eqz v5, :cond_1a6

    .line 194
    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/ae;->d(I)Ljava/lang/String;

    move-result-object v11

    .line 197
    :cond_1a6
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1c

    if-lt v5, v9, :cond_1c7

    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    .line 198
    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/ae;->f(I)Z

    move-result v5

    if-eqz v5, :cond_1c7

    .line 199
    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/4 v9, -0x1

    invoke-virtual {v6, v5, v9}, Landroidx/appcompat/widget/ae;->d(II)I

    move-result v5

    if-nez v5, :cond_1c7

    .line 200
    iget-object v5, v7, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    const/4 v9, 0x0

    move-object/from16 v16, v3

    const/4 v3, 0x0

    invoke-virtual {v5, v3, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1c9

    :cond_1c7
    move-object/from16 v16, v3

    .line 204
    :goto_1c9
    invoke-direct {v7, v2, v6}, Landroidx/appcompat/widget/m;->a(Landroid/content/Context;Landroidx/appcompat/widget/ae;)V

    .line 3245
    iget-object v3, v6, Landroidx/appcompat/widget/ae;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v12, :cond_1d8

    .line 208
    iget-object v3, v7, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1d8
    if-eqz v10, :cond_1df

    .line 211
    iget-object v3, v7, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1df
    if-eqz v15, :cond_1e6

    .line 214
    iget-object v3, v7, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1e6
    if-nez v4, :cond_1ed

    if-eqz v13, :cond_1ed

    .line 217
    invoke-virtual {v7, v14}, Landroidx/appcompat/widget/m;->a(Z)V

    .line 219
    :cond_1ed
    iget-object v3, v7, Landroidx/appcompat/widget/m;->d:Landroid/graphics/Typeface;

    if-eqz v3, :cond_207

    .line 220
    iget v3, v7, Landroidx/appcompat/widget/m;->m:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_200

    .line 221
    iget-object v3, v7, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    iget-object v4, v7, Landroidx/appcompat/widget/m;->d:Landroid/graphics/Typeface;

    iget v5, v7, Landroidx/appcompat/widget/m;->l:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_207

    .line 223
    :cond_200
    iget-object v3, v7, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    iget-object v4, v7, Landroidx/appcompat/widget/m;->d:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_207
    :goto_207
    if-eqz v11, :cond_20e

    .line 227
    iget-object v3, v7, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    :cond_20e
    if-eqz v8, :cond_23a

    .line 230
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_220

    .line 231
    iget-object v3, v7, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextLocales(Landroid/os/LocaleList;)V

    goto :goto_23a

    .line 232
    :cond_220
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_23a

    const/16 v3, 0x2c

    .line 234
    invoke-virtual {v8, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v8, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 235
    iget-object v4, v7, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 239
    :cond_23a
    :goto_23a
    iget-object v3, v7, Landroidx/appcompat/widget/m;->c:Landroidx/appcompat/widget/n;

    invoke-virtual {v3, v0, v1}, Landroidx/appcompat/widget/n;->a(Landroid/util/AttributeSet;I)V

    .line 241
    sget-boolean v1, Landroidx/core/widget/b;->d:Z

    if-eqz v1, :cond_282

    .line 243
    iget-object v1, v7, Landroidx/appcompat/widget/m;->c:Landroidx/appcompat/widget/n;

    .line 3364
    iget v1, v1, Landroidx/appcompat/widget/n;->a:I

    if-eqz v1, :cond_282

    .line 245
    iget-object v1, v7, Landroidx/appcompat/widget/m;->c:Landroidx/appcompat/widget/n;

    .line 3423
    iget-object v1, v1, Landroidx/appcompat/widget/n;->e:[I

    .line 247
    array-length v3, v1

    if-lez v3, :cond_282

    .line 248
    iget-object v3, v7, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_27c

    .line 251
    iget-object v1, v7, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    iget-object v3, v7, Landroidx/appcompat/widget/m;->c:Landroidx/appcompat/widget/n;

    .line 4394
    iget v3, v3, Landroidx/appcompat/widget/n;->c:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 252
    iget-object v4, v7, Landroidx/appcompat/widget/m;->c:Landroidx/appcompat/widget/n;

    .line 4410
    iget v4, v4, Landroidx/appcompat/widget/n;->d:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 253
    iget-object v5, v7, Landroidx/appcompat/widget/m;->c:Landroidx/appcompat/widget/n;

    .line 5378
    iget v5, v5, Landroidx/appcompat/widget/n;->b:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/4 v6, 0x0

    .line 251
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_282

    :cond_27c
    const/4 v6, 0x0

    .line 257
    iget-object v3, v7, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v6}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 265
    :cond_282
    :goto_282
    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    invoke-static {v2, v0, v1}, Landroidx/appcompat/widget/ae;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/ae;

    move-result-object v8

    .line 270
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableLeftCompat:I

    const/4 v1, -0x1

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/ae;->f(II)I

    move-result v0

    if-eq v0, v1, :cond_299

    move-object/from16 v3, v16

    .line 273
    invoke-virtual {v3, v2, v0}, Landroidx/appcompat/widget/f;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v4, v0

    goto :goto_29c

    :cond_299
    move-object/from16 v3, v16

    const/4 v4, 0x0

    .line 275
    :goto_29c
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTopCompat:I

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/ae;->f(II)I

    move-result v0

    if-eq v0, v1, :cond_2aa

    .line 278
    invoke-virtual {v3, v2, v0}, Landroidx/appcompat/widget/f;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v5, v0

    goto :goto_2ab

    :cond_2aa
    const/4 v5, 0x0

    .line 280
    :goto_2ab
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableRightCompat:I

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/ae;->f(II)I

    move-result v0

    if-eq v0, v1, :cond_2b9

    .line 283
    invoke-virtual {v3, v2, v0}, Landroidx/appcompat/widget/f;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v6, v0

    goto :goto_2ba

    :cond_2b9
    const/4 v6, 0x0

    .line 285
    :goto_2ba
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableBottomCompat:I

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/ae;->f(II)I

    move-result v0

    if-eq v0, v1, :cond_2c8

    .line 288
    invoke-virtual {v3, v2, v0}, Landroidx/appcompat/widget/f;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v9, v0

    goto :goto_2c9

    :cond_2c8
    const/4 v9, 0x0

    .line 290
    :goto_2c9
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableStartCompat:I

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/ae;->f(II)I

    move-result v0

    if-eq v0, v1, :cond_2d7

    .line 293
    invoke-virtual {v3, v2, v0}, Landroidx/appcompat/widget/f;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v10, v0

    goto :goto_2d8

    :cond_2d7
    const/4 v10, 0x0

    .line 295
    :goto_2d8
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableEndCompat:I

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/ae;->f(II)I

    move-result v0

    if-eq v0, v1, :cond_2e6

    .line 298
    invoke-virtual {v3, v2, v0}, Landroidx/appcompat/widget/f;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v11, v0

    goto :goto_2e7

    :cond_2e6
    const/4 v11, 0x0

    :goto_2e7
    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    move-object v3, v6

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    .line 300
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/m;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 303
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTint:I

    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/ae;->f(I)Z

    move-result v0

    if-eqz v0, :cond_305

    .line 304
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTint:I

    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/ae;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 306
    iget-object v1, v7, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-static {v1, v0}, Landroidx/core/widget/h;->a(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 308
    :cond_305
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTintMode:I

    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/ae;->f(I)Z

    move-result v0

    if-eqz v0, :cond_31f

    .line 309
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTintMode:I

    const/4 v1, -0x1

    .line 310
    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/ae;->a(II)I

    move-result v0

    const/4 v2, 0x0

    .line 309
    invoke-static {v0, v2}, Landroidx/appcompat/widget/q;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 311
    iget-object v2, v7, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-static {v2, v0}, Landroidx/core/widget/h;->a(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_320

    :cond_31f
    const/4 v1, -0x1

    .line 314
    :goto_320
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_firstBaselineToTopHeight:I

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/ae;->d(II)I

    move-result v0

    .line 316
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextView_lastBaselineToBottomHeight:I

    invoke-virtual {v8, v2, v1}, Landroidx/appcompat/widget/ae;->d(II)I

    move-result v2

    .line 318
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_lineHeight:I

    invoke-virtual {v8, v3, v1}, Landroidx/appcompat/widget/ae;->d(II)I

    move-result v3

    .line 6245
    iget-object v4, v8, Landroidx/appcompat/widget/ae;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v0, v1, :cond_33e

    .line 323
    iget-object v4, v7, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-static {v4, v0}, Landroidx/core/widget/h;->b(Landroid/widget/TextView;I)V

    :cond_33e
    if-eq v2, v1, :cond_345

    .line 326
    iget-object v0, v7, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-static {v0, v2}, Landroidx/core/widget/h;->c(Landroid/widget/TextView;I)V

    :cond_345
    if-eq v3, v1, :cond_34c

    .line 329
    iget-object v0, v7, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-static {v0, v3}, Landroidx/core/widget/h;->d(Landroid/widget/TextView;I)V

    :cond_34c
    return-void
.end method

.method final a(Z)V
    .registers 2

    .line 528
    iget-object p0, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    return-void
.end method

.method final a([II)V
    .registers 3

    .line 620
    iget-object p0, p0, Landroidx/appcompat/widget/m;->c:Landroidx/appcompat/widget/n;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/n;->a([II)V

    return-void
.end method

.method final b()V
    .registers 2

    .line 574
    sget-boolean v0, Landroidx/core/widget/b;->d:Z

    if-nez v0, :cond_9

    .line 7592
    iget-object p0, p0, Landroidx/appcompat/widget/m;->c:Landroidx/appcompat/widget/n;

    invoke-virtual {p0}, Landroidx/appcompat/widget/n;->a()V

    :cond_9
    return-void
.end method

.method final c()V
    .registers 2

    .line 673
    iget-object v0, p0, Landroidx/appcompat/widget/m;->b:Landroidx/appcompat/widget/ac;

    iput-object v0, p0, Landroidx/appcompat/widget/m;->f:Landroidx/appcompat/widget/ac;

    .line 674
    iget-object v0, p0, Landroidx/appcompat/widget/m;->b:Landroidx/appcompat/widget/ac;

    iput-object v0, p0, Landroidx/appcompat/widget/m;->g:Landroidx/appcompat/widget/ac;

    .line 675
    iget-object v0, p0, Landroidx/appcompat/widget/m;->b:Landroidx/appcompat/widget/ac;

    iput-object v0, p0, Landroidx/appcompat/widget/m;->h:Landroidx/appcompat/widget/ac;

    .line 676
    iget-object v0, p0, Landroidx/appcompat/widget/m;->b:Landroidx/appcompat/widget/ac;

    iput-object v0, p0, Landroidx/appcompat/widget/m;->i:Landroidx/appcompat/widget/ac;

    .line 677
    iget-object v0, p0, Landroidx/appcompat/widget/m;->b:Landroidx/appcompat/widget/ac;

    iput-object v0, p0, Landroidx/appcompat/widget/m;->j:Landroidx/appcompat/widget/ac;

    .line 678
    iget-object v0, p0, Landroidx/appcompat/widget/m;->b:Landroidx/appcompat/widget/ac;

    iput-object v0, p0, Landroidx/appcompat/widget/m;->k:Landroidx/appcompat/widget/ac;

    return-void
.end method
