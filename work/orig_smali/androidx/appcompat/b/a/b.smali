.class Landroidx/appcompat/b/a/b;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableContainer.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/b/a/b$a;,
        Landroidx/appcompat/b/a/b$b;
    }
.end annotation


# instance fields
.field a:Landroidx/appcompat/b/a/b$b;

.field b:I

.field private c:Landroid/graphics/Rect;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:I

.field private g:Z

.field private h:I

.field private i:Z

.field private j:Ljava/lang/Runnable;

.field private k:J

.field private l:J

.field private m:Landroidx/appcompat/b/a/b$a;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    .line 71
    iput v0, p0, Landroidx/appcompat/b/a/b;->f:I

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Landroidx/appcompat/b/a/b;->b:I

    .line 75
    iput v0, p0, Landroidx/appcompat/b/a/b;->h:I

    return-void
.end method

.method static a(Landroid/content/res/Resources;I)I
    .registers 2

    if-nez p0, :cond_3

    goto :goto_9

    .line 1204
    :cond_3
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    :goto_9
    if-nez p1, :cond_e

    const/16 p0, 0xa0

    return p0

    :cond_e
    return p1
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    .line 491
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->m:Landroidx/appcompat/b/a/b$a;

    if-nez v0, :cond_b

    .line 492
    new-instance v0, Landroidx/appcompat/b/a/b$a;

    invoke-direct {v0}, Landroidx/appcompat/b/a/b$a;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/b/a/b;->m:Landroidx/appcompat/b/a/b$a;

    .line 497
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->m:Landroidx/appcompat/b/a/b$a;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    .line 7173
    iput-object v1, v0, Landroidx/appcompat/b/a/b$a;->a:Landroid/graphics/drawable/Drawable$Callback;

    .line 497
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 499
    :try_start_16
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget v0, v0, Landroidx/appcompat/b/a/b$b;->C:I

    if-gtz v0, :cond_25

    iget-boolean v0, p0, Landroidx/appcompat/b/a/b;->g:Z

    if-eqz v0, :cond_25

    .line 500
    iget v0, p0, Landroidx/appcompat/b/a/b;->f:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 502
    :cond_25
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget-boolean v0, v0, Landroidx/appcompat/b/a/b$b;->G:Z

    if-eqz v0, :cond_33

    .line 504
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget-object v0, v0, Landroidx/appcompat/b/a/b$b;->F:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_4d

    .line 506
    :cond_33
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget-boolean v0, v0, Landroidx/appcompat/b/a/b$b;->J:Z

    if-eqz v0, :cond_40

    .line 507
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget-object v0, v0, Landroidx/appcompat/b/a/b$b;->H:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 509
    :cond_40
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget-boolean v0, v0, Landroidx/appcompat/b/a/b$b;->K:Z

    if-eqz v0, :cond_4d

    .line 510
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget-object v0, v0, Landroidx/appcompat/b/a/b$b;->I:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 513
    :cond_4d
    :goto_4d
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 514
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget-boolean v0, v0, Landroidx/appcompat/b/a/b$b;->z:Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 515
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 516
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 517
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 518
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_7e

    .line 519
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 521
    :cond_7e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_8b

    .line 522
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget-boolean v0, v0, Landroidx/appcompat/b/a/b$b;->E:Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 524
    :cond_8b
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/Rect;

    .line 525
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_a0

    if-eqz v0, :cond_a0

    .line 526
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V
    :try_end_a0
    .catchall {:try_start_16 .. :try_end_a0} :catchall_aa

    .line 530
    :cond_a0
    iget-object p0, p0, Landroidx/appcompat/b/a/b;->m:Landroidx/appcompat/b/a/b$a;

    invoke-virtual {p0}, Landroidx/appcompat/b/a/b$a;->a()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void

    :catchall_aa
    move-exception v0

    iget-object p0, p0, Landroidx/appcompat/b/a/b;->m:Landroidx/appcompat/b/a/b$a;

    invoke-virtual {p0}, Landroidx/appcompat/b/a/b$a;->a()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 531
    throw v0
.end method


# virtual methods
.method a(Landroidx/appcompat/b/a/b$b;)V
    .registers 3

    .line 1152
    iput-object p1, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    .line 1154
    iget v0, p0, Landroidx/appcompat/b/a/b;->b:I

    if-ltz v0, :cond_17

    .line 1155
    iget v0, p0, Landroidx/appcompat/b/a/b;->b:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/b/a/b$b;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    .line 1156
    iget-object p1, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_17

    .line 1157
    iget-object p1, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Landroidx/appcompat/b/a/b;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_17
    const/4 p1, -0x1

    .line 1162
    iput p1, p0, Landroidx/appcompat/b/a/b;->h:I

    const/4 p1, 0x0

    .line 1163
    iput-object p1, p0, Landroidx/appcompat/b/a/b;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method final a(Z)V
    .registers 13

    const/4 v0, 0x1

    .line 535
    iput-boolean v0, p0, Landroidx/appcompat/b/a/b;->g:Z

    .line 536
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 538
    iget-object v3, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    const-wide/16 v4, 0xff

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    if-eqz v3, :cond_3c

    .line 539
    iget-wide v9, p0, Landroidx/appcompat/b/a/b;->k:J

    cmp-long v3, v9, v7

    if-eqz v3, :cond_3e

    .line 540
    iget-wide v9, p0, Landroidx/appcompat/b/a/b;->k:J

    cmp-long v3, v9, v1

    if-gtz v3, :cond_24

    .line 541
    iget-object v3, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    iget v9, p0, Landroidx/appcompat/b/a/b;->f:I

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_3c

    .line 544
    :cond_24
    iget-wide v9, p0, Landroidx/appcompat/b/a/b;->k:J

    sub-long/2addr v9, v1

    mul-long/2addr v9, v4

    long-to-int v3, v9

    iget-object v9, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget v9, v9, Landroidx/appcompat/b/a/b$b;->C:I

    div-int/2addr v3, v9

    .line 546
    iget-object v9, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    rsub-int v3, v3, 0xff

    iget v10, p0, Landroidx/appcompat/b/a/b;->f:I

    mul-int/2addr v3, v10

    div-int/lit16 v3, v3, 0xff

    invoke-virtual {v9, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move v3, v0

    goto :goto_3f

    .line 551
    :cond_3c
    :goto_3c
    iput-wide v7, p0, Landroidx/appcompat/b/a/b;->k:J

    :cond_3e
    move v3, v6

    .line 553
    :goto_3f
    iget-object v9, p0, Landroidx/appcompat/b/a/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_70

    .line 554
    iget-wide v9, p0, Landroidx/appcompat/b/a/b;->l:J

    cmp-long v9, v9, v7

    if-eqz v9, :cond_72

    .line 555
    iget-wide v9, p0, Landroidx/appcompat/b/a/b;->l:J

    cmp-long v9, v9, v1

    if-gtz v9, :cond_5b

    .line 556
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    const/4 v0, 0x0

    .line 557
    iput-object v0, p0, Landroidx/appcompat/b/a/b;->e:Landroid/graphics/drawable/Drawable;

    const/4 v0, -0x1

    .line 558
    iput v0, p0, Landroidx/appcompat/b/a/b;->h:I

    goto :goto_70

    .line 561
    :cond_5b
    iget-wide v6, p0, Landroidx/appcompat/b/a/b;->l:J

    sub-long/2addr v6, v1

    mul-long/2addr v6, v4

    long-to-int v3, v6

    iget-object v4, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget v4, v4, Landroidx/appcompat/b/a/b$b;->D:I

    div-int/2addr v3, v4

    .line 563
    iget-object v4, p0, Landroidx/appcompat/b/a/b;->e:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Landroidx/appcompat/b/a/b;->f:I

    mul-int/2addr v3, v5

    div-int/lit16 v3, v3, 0xff

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_73

    .line 568
    :cond_70
    :goto_70
    iput-wide v7, p0, Landroidx/appcompat/b/a/b;->l:J

    :cond_72
    move v0, v3

    :goto_73
    if-eqz p1, :cond_7f

    if-eqz v0, :cond_7f

    .line 571
    iget-object p1, p0, Landroidx/appcompat/b/a/b;->j:Ljava/lang/Runnable;

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, p1, v1, v2}, Landroidx/appcompat/b/a/b;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_7f
    return-void
.end method

.method final a(I)Z
    .registers 10

    .line 427
    iget v0, p0, Landroidx/appcompat/b/a/b;->b:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_6

    return v1

    .line 430
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 436
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget v0, v0, Landroidx/appcompat/b/a/b$b;->D:I

    const/4 v4, -0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    if-lez v0, :cond_39

    .line 437
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1d

    .line 438
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 440
    :cond_1d
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_32

    .line 441
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroidx/appcompat/b/a/b;->e:Landroid/graphics/drawable/Drawable;

    .line 442
    iget v0, p0, Landroidx/appcompat/b/a/b;->b:I

    iput v0, p0, Landroidx/appcompat/b/a/b;->h:I

    .line 443
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget v0, v0, Landroidx/appcompat/b/a/b$b;->D:I

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/appcompat/b/a/b;->l:J

    goto :goto_42

    .line 445
    :cond_32
    iput-object v5, p0, Landroidx/appcompat/b/a/b;->e:Landroid/graphics/drawable/Drawable;

    .line 446
    iput v4, p0, Landroidx/appcompat/b/a/b;->h:I

    .line 447
    iput-wide v6, p0, Landroidx/appcompat/b/a/b;->l:J

    goto :goto_42

    .line 449
    :cond_39
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_42

    .line 450
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_42
    :goto_42
    if-ltz p1, :cond_68

    .line 452
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget v0, v0, Landroidx/appcompat/b/a/b$b;->j:I

    if-ge p1, v0, :cond_68

    .line 453
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    invoke-virtual {v0, p1}, Landroidx/appcompat/b/a/b$b;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 454
    iput-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    .line 455
    iput p1, p0, Landroidx/appcompat/b/a/b;->b:I

    if-eqz v0, :cond_6c

    .line 457
    iget-object p1, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget p1, p1, Landroidx/appcompat/b/a/b$b;->C:I

    if-lez p1, :cond_64

    .line 458
    iget-object p1, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget p1, p1, Landroidx/appcompat/b/a/b$b;->C:I

    int-to-long v4, p1

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/appcompat/b/a/b;->k:J

    .line 460
    :cond_64
    invoke-direct {p0, v0}, Landroidx/appcompat/b/a/b;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6c

    .line 463
    :cond_68
    iput-object v5, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    .line 464
    iput v4, p0, Landroidx/appcompat/b/a/b;->b:I

    .line 466
    :cond_6c
    :goto_6c
    iget-wide v0, p0, Landroidx/appcompat/b/a/b;->k:J

    cmp-long p1, v0, v6

    const/4 v0, 0x1

    if-nez p1, :cond_79

    iget-wide v1, p0, Landroidx/appcompat/b/a/b;->l:J

    cmp-long p1, v1, v6

    if-eqz p1, :cond_8d

    .line 467
    :cond_79
    iget-object p1, p0, Landroidx/appcompat/b/a/b;->j:Ljava/lang/Runnable;

    if-nez p1, :cond_85

    .line 468
    new-instance p1, Landroidx/appcompat/b/a/b$1;

    invoke-direct {p1, p0}, Landroidx/appcompat/b/a/b$1;-><init>(Landroidx/appcompat/b/a/b;)V

    iput-object p1, p0, Landroidx/appcompat/b/a/b;->j:Ljava/lang/Runnable;

    goto :goto_8a

    .line 476
    :cond_85
    iget-object p1, p0, Landroidx/appcompat/b/a/b;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroidx/appcompat/b/a/b;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 479
    :goto_8a
    invoke-virtual {p0, v0}, Landroidx/appcompat/b/a/b;->a(Z)V

    .line 481
    :cond_8d
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b;->invalidateSelf()V

    return v0
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 7

    .line 595
    iget-object p0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    if-eqz p1, :cond_34

    .line 7896
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b$b;->c()V

    .line 7897
    iget v0, p0, Landroidx/appcompat/b/a/b$b;->j:I

    .line 7898
    iget-object v1, p0, Landroidx/appcompat/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_2d

    .line 7900
    aget-object v3, v1, v2

    if-eqz v3, :cond_2a

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 7901
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 7903
    iget v3, p0, Landroidx/appcompat/b/a/b$b;->g:I

    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p0, Landroidx/appcompat/b/a/b$b;->g:I

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 7906
    :cond_2d
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/b/a/b$b;->a(Landroid/content/res/Resources;)V

    :cond_34
    return-void
.end method

.method b()Landroidx/appcompat/b/a/b$b;
    .registers 1

    .line 632
    iget-object p0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    return-object p0
.end method

.method public canApplyTheme()Z
    .registers 1

    .line 601
    iget-object p0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    invoke-virtual {p0}, Landroidx/appcompat/b/a/b$b;->canApplyTheme()Z

    move-result p0

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 87
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 88
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 90
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    .line 91
    iget-object p0, p0, Landroidx/appcompat/b/a/b;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_12
    return-void
.end method

.method public getAlpha()I
    .registers 1

    .line 154
    iget p0, p0, Landroidx/appcompat/b/a/b;->f:I

    return p0
.end method

.method public getChangingConfigurations()I
    .registers 2

    .line 97
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object p0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    .line 98
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b$b;->getChangingConfigurations()I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    .line 606
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    invoke-virtual {v0}, Landroidx/appcompat/b/a/b$b;->e()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 607
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    invoke-virtual {p0}, Landroidx/appcompat/b/a/b;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroidx/appcompat/b/a/b$b;->f:I

    .line 608
    iget-object p0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 578
    iget-object p0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 296
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/Rect;

    if-eqz v0, :cond_a

    .line 297
    iget-object p0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    .line 299
    :cond_a
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 342
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    .line 5000
    iget-boolean v0, v0, Landroidx/appcompat/b/a/b$b;->n:Z

    if-eqz v0, :cond_12

    .line 343
    iget-object p0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    .line 5017
    iget-boolean v0, p0, Landroidx/appcompat/b/a/b$b;->o:Z

    if-nez v0, :cond_f

    .line 5018
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b$b;->d()V

    .line 5020
    :cond_f
    iget p0, p0, Landroidx/appcompat/b/a/b$b;->q:I

    return p0

    .line 345
    :cond_12
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1d

    iget-object p0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    return p0

    :cond_1d
    const/4 p0, -0x1

    return p0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 334
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    .line 4000
    iget-boolean v0, v0, Landroidx/appcompat/b/a/b$b;->n:Z

    if-eqz v0, :cond_12

    .line 335
    iget-object p0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    .line 4007
    iget-boolean v0, p0, Landroidx/appcompat/b/a/b$b;->o:Z

    if-nez v0, :cond_f

    .line 4008
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b$b;->d()V

    .line 4010
    :cond_f
    iget p0, p0, Landroidx/appcompat/b/a/b$b;->p:I

    return p0

    .line 337
    :cond_12
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1d

    iget-object p0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    return p0

    :cond_1d
    const/4 p0, -0x1

    return p0
.end method

.method public getMinimumHeight()I
    .registers 2

    .line 358
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    .line 7000
    iget-boolean v0, v0, Landroidx/appcompat/b/a/b$b;->n:Z

    if-eqz v0, :cond_12

    .line 359
    iget-object p0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    .line 7037
    iget-boolean v0, p0, Landroidx/appcompat/b/a/b$b;->o:Z

    if-nez v0, :cond_f

    .line 7038
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b$b;->d()V

    .line 7040
    :cond_f
    iget p0, p0, Landroidx/appcompat/b/a/b$b;->s:I

    return p0

    .line 361
    :cond_12
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1d

    iget-object p0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p0

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public getMinimumWidth()I
    .registers 2

    .line 350
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    .line 6000
    iget-boolean v0, v0, Landroidx/appcompat/b/a/b$b;->n:Z

    if-eqz v0, :cond_12

    .line 351
    iget-object p0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    .line 6027
    iget-boolean v0, p0, Landroidx/appcompat/b/a/b$b;->o:Z

    if-nez v0, :cond_f

    .line 6028
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b$b;->d()V

    .line 6030
    :cond_f
    iget p0, p0, Landroidx/appcompat/b/a/b$b;->r:I

    return p0

    .line 353
    :cond_12
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1d

    iget-object p0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p0

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public getOpacity()I
    .registers 7

    .line 405
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    const/4 v1, -0x2

    if-eqz v0, :cond_3e

    iget-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_3e

    :cond_e
    iget-object p0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    .line 7083
    iget-boolean v0, p0, Landroidx/appcompat/b/a/b$b;->t:Z

    if-eqz v0, :cond_17

    .line 7084
    iget p0, p0, Landroidx/appcompat/b/a/b$b;->u:I

    return p0

    .line 7086
    :cond_17
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b$b;->c()V

    .line 7087
    iget v0, p0, Landroidx/appcompat/b/a/b$b;->j:I

    .line 7088
    iget-object v2, p0, Landroidx/appcompat/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    if-lez v0, :cond_27

    const/4 v1, 0x0

    .line 7089
    aget-object v1, v2, v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    :cond_27
    const/4 v3, 0x1

    move v4, v1

    move v1, v3

    :goto_2a
    if-ge v1, v0, :cond_39

    .line 7091
    aget-object v5, v2, v1

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 7093
    :cond_39
    iput v4, p0, Landroidx/appcompat/b/a/b$b;->u:I

    .line 7094
    iput-boolean v3, p0, Landroidx/appcompat/b/a/b$b;->t:Z

    return v4

    :cond_3e
    :goto_3e
    return v1
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 3

    .line 132
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 133
    iget-object p0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    :cond_9
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 12

    .line 108
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    .line 1968
    iget-boolean v1, v0, Landroidx/appcompat/b/a/b$b;->k:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_a

    goto :goto_65

    .line 1971
    :cond_a
    iget-object v1, v0, Landroidx/appcompat/b/a/b$b;->m:Landroid/graphics/Rect;

    if-nez v1, :cond_63

    iget-boolean v1, v0, Landroidx/appcompat/b/a/b$b;->l:Z

    if-eqz v1, :cond_13

    goto :goto_63

    .line 1974
    :cond_13
    invoke-virtual {v0}, Landroidx/appcompat/b/a/b$b;->c()V

    .line 1976
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1977
    iget v5, v0, Landroidx/appcompat/b/a/b$b;->j:I

    .line 1978
    iget-object v6, v0, Landroidx/appcompat/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    move-object v7, v2

    move v2, v4

    :goto_21
    if-ge v2, v5, :cond_5d

    .line 1980
    aget-object v8, v6, v2

    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_5a

    if-nez v7, :cond_32

    .line 1981
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1982
    :cond_32
    iget v8, v1, Landroid/graphics/Rect;->left:I

    iget v9, v7, Landroid/graphics/Rect;->left:I

    if-le v8, v9, :cond_3c

    iget v8, v1, Landroid/graphics/Rect;->left:I

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 1983
    :cond_3c
    iget v8, v1, Landroid/graphics/Rect;->top:I

    iget v9, v7, Landroid/graphics/Rect;->top:I

    if-le v8, v9, :cond_46

    iget v8, v1, Landroid/graphics/Rect;->top:I

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 1984
    :cond_46
    iget v8, v1, Landroid/graphics/Rect;->right:I

    iget v9, v7, Landroid/graphics/Rect;->right:I

    if-le v8, v9, :cond_50

    iget v8, v1, Landroid/graphics/Rect;->right:I

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 1985
    :cond_50
    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    if-le v8, v9, :cond_5a

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 1988
    :cond_5d
    iput-boolean v3, v0, Landroidx/appcompat/b/a/b$b;->l:Z

    .line 1989
    iput-object v7, v0, Landroidx/appcompat/b/a/b$b;->m:Landroid/graphics/Rect;

    move-object v2, v7

    goto :goto_65

    .line 1972
    :cond_63
    :goto_63
    iget-object v2, v0, Landroidx/appcompat/b/a/b$b;->m:Landroid/graphics/Rect;

    :goto_65
    if-eqz v2, :cond_7b

    .line 111
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 112
    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v1, v2, Landroid/graphics/Rect;->top:I

    or-int/2addr v0, v1

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    or-int/2addr v0, v1

    iget v1, v2, Landroid/graphics/Rect;->right:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_79

    move v0, v3

    goto :goto_8a

    :cond_79
    move v0, v4

    goto :goto_8a

    .line 114
    :cond_7b
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_86

    .line 115
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_8a

    .line 117
    :cond_86
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    .line 2102
    :goto_8a
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b;->isAutoMirrored()Z

    move-result v1

    if-eqz v1, :cond_97

    .line 2103
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    if-ne p0, v3, :cond_97

    goto :goto_98

    :cond_97
    move v3, v4

    :goto_98
    if-eqz v3, :cond_a2

    .line 121
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 122
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 123
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 124
    iput p0, p1, Landroid/graphics/Rect;->right:I

    :cond_a2
    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 369
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    if-eqz v0, :cond_9

    .line 370
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    invoke-virtual {v0}, Landroidx/appcompat/b/a/b$b;->b()V

    .line 372
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1a

    invoke-virtual {p0}, Landroidx/appcompat/b/a/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 373
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1a
    return-void
.end method

.method public isAutoMirrored()Z
    .registers 1

    .line 244
    iget-object p0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget-boolean p0, p0, Landroidx/appcompat/b/a/b$b;->E:Z

    return p0
.end method

.method public isStateful()Z
    .registers 7

    .line 228
    iget-object p0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    .line 3102
    iget-boolean v0, p0, Landroidx/appcompat/b/a/b$b;->v:Z

    if-eqz v0, :cond_9

    .line 3103
    iget-boolean p0, p0, Landroidx/appcompat/b/a/b$b;->w:Z

    return p0

    .line 3105
    :cond_9
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b$b;->c()V

    .line 3106
    iget v0, p0, Landroidx/appcompat/b/a/b$b;->j:I

    .line 3107
    iget-object v1, p0, Landroidx/appcompat/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    const/4 v4, 0x1

    if-ge v3, v0, :cond_22

    .line 3110
    aget-object v5, v1, v3

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_1f

    move v2, v4

    goto :goto_22

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 3115
    :cond_22
    :goto_22
    iput-boolean v2, p0, Landroidx/appcompat/b/a/b$b;->w:Z

    .line 3116
    iput-boolean v4, p0, Landroidx/appcompat/b/a/b$b;->v:Z

    return v2
.end method

.method public jumpToCurrentState()V
    .registers 7

    .line 250
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->e:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    .line 251
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    const/4 v0, 0x0

    .line 252
    iput-object v0, p0, Landroidx/appcompat/b/a/b;->e:Landroid/graphics/drawable/Drawable;

    const/4 v0, -0x1

    .line 253
    iput v0, p0, Landroidx/appcompat/b/a/b;->h:I

    move v0, v1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 256
    :goto_13
    iget-object v2, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_27

    .line 257
    iget-object v2, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 258
    iget-boolean v2, p0, Landroidx/appcompat/b/a/b;->g:Z

    if-eqz v2, :cond_27

    .line 259
    iget-object v2, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroidx/appcompat/b/a/b;->f:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 262
    :cond_27
    iget-wide v2, p0, Landroidx/appcompat/b/a/b;->l:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_32

    .line 263
    iput-wide v4, p0, Landroidx/appcompat/b/a/b;->l:J

    move v0, v1

    .line 266
    :cond_32
    iget-wide v2, p0, Landroidx/appcompat/b/a/b;->k:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3b

    .line 267
    iput-wide v4, p0, Landroidx/appcompat/b/a/b;->k:J

    move v0, v1

    :cond_3b
    if-eqz v0, :cond_40

    .line 271
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b;->invalidateSelf()V

    :cond_40
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 616
    iget-boolean v0, p0, Landroidx/appcompat/b/a/b;->i:Z

    if-nez v0, :cond_17

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_17

    .line 617
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b;->b()Landroidx/appcompat/b/a/b$b;

    move-result-object v0

    .line 618
    invoke-virtual {v0}, Landroidx/appcompat/b/a/b$b;->a()V

    .line 619
    invoke-virtual {p0, v0}, Landroidx/appcompat/b/a/b;->a(Landroidx/appcompat/b/a/b$b;)V

    const/4 v0, 0x1

    .line 620
    iput-boolean v0, p0, Landroidx/appcompat/b/a/b;->i:Z

    :cond_17
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    .line 218
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 219
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 221
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    .line 222
    iget-object p0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_12
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .registers 10

    .line 329
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    .line 3414
    iget p0, p0, Landroidx/appcompat/b/a/b;->b:I

    .line 3855
    iget v1, v0, Landroidx/appcompat/b/a/b$b;->j:I

    .line 3856
    iget-object v2, v0, Landroidx/appcompat/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_b
    if-ge v4, v1, :cond_25

    .line 3858
    aget-object v6, v2, v4

    if-eqz v6, :cond_22

    .line 3860
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_1e

    .line 3861
    aget-object v6, v2, v4

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v6

    goto :goto_1f

    :cond_1e
    move v6, v3

    :goto_1f
    if-ne v4, p0, :cond_22

    move v5, v6

    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 3868
    :cond_25
    iput p1, v0, Landroidx/appcompat/b/a/b$b;->B:I

    return v5
.end method

.method protected onLevelChange(I)Z
    .registers 3

    .line 316
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 317
    iget-object p0, p0, Landroidx/appcompat/b/a/b;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p0

    return p0

    .line 319
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    .line 320
    iget-object p0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p0

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method protected onStateChange([I)Z
    .registers 3

    .line 305
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 306
    iget-object p0, p0, Landroidx/appcompat/b/a/b;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p0

    return p0

    .line 308
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    .line 309
    iget-object p0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p0

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6

    .line 379
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_11

    invoke-virtual {p0}, Landroidx/appcompat/b/a/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 380
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_11
    return-void
.end method

.method public setAlpha(I)V
    .registers 6

    .line 139
    iget-boolean v0, p0, Landroidx/appcompat/b/a/b;->g:Z

    if-eqz v0, :cond_8

    iget v0, p0, Landroidx/appcompat/b/a/b;->f:I

    if-eq v0, p1, :cond_23

    :cond_8
    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Landroidx/appcompat/b/a/b;->g:Z

    .line 141
    iput p1, p0, Landroidx/appcompat/b/a/b;->f:I

    .line 142
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_23

    .line 143
    iget-wide v0, p0, Landroidx/appcompat/b/a/b;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1f

    .line 144
    iget-object p0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    :cond_1f
    const/4 p1, 0x0

    .line 146
    invoke-virtual {p0, p1}, Landroidx/appcompat/b/a/b;->a(Z)V

    :cond_23
    return-void
.end method

.method public setAutoMirrored(Z)V
    .registers 3

    .line 233
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget-boolean v0, v0, Landroidx/appcompat/b/a/b$b;->E:Z

    if-eq v0, p1, :cond_17

    .line 234
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iput-boolean p1, v0, Landroidx/appcompat/b/a/b$b;->E:Z

    .line 235
    iget-object p1, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_17

    .line 236
    iget-object p1, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget-boolean p0, p0, Landroidx/appcompat/b/a/b$b;->E:Z

    invoke-static {p1, p0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Z)V

    :cond_17
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 4

    .line 169
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/b/a/b$b;->G:Z

    .line 170
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget-object v0, v0, Landroidx/appcompat/b/a/b$b;->F:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_18

    .line 171
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iput-object p1, v0, Landroidx/appcompat/b/a/b$b;->F:Landroid/graphics/ColorFilter;

    .line 172
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_18

    .line 173
    iget-object p0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_18
    return-void
.end method

.method public setDither(Z)V
    .registers 3

    .line 159
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget-boolean v0, v0, Landroidx/appcompat/b/a/b$b;->z:Z

    if-eq v0, p1, :cond_17

    .line 160
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iput-boolean p1, v0, Landroidx/appcompat/b/a/b$b;->z:Z

    .line 161
    iget-object p1, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_17

    .line 162
    iget-object p1, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget-boolean p0, p0, Landroidx/appcompat/b/a/b$b;->z:Z

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_17
    return-void
.end method

.method public setHotspot(FF)V
    .registers 4

    .line 277
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 278
    iget-object p0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1, p2}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;FF)V

    :cond_9
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .registers 6

    .line 284
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/Rect;

    if-nez v0, :cond_c

    .line 285
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/Rect;

    goto :goto_11

    .line 287
    :cond_c
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 289
    :goto_11
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1a

    .line 290
    iget-object p0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_1a
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 4

    .line 180
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/b/a/b$b;->J:Z

    .line 181
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget-object v0, v0, Landroidx/appcompat/b/a/b$b;->H:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_14

    .line 182
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iput-object p1, v0, Landroidx/appcompat/b/a/b$b;->H:Landroid/content/res/ColorStateList;

    .line 183
    iget-object p0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_14
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    .line 189
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/b/a/b$b;->K:Z

    .line 190
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget-object v0, v0, Landroidx/appcompat/b/a/b$b;->I:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_14

    .line 191
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iput-object p1, v0, Landroidx/appcompat/b/a/b$b;->I:Landroid/graphics/PorterDuff$Mode;

    .line 192
    iget-object p0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_14
    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 5

    .line 393
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 394
    iget-object v1, p0, Landroidx/appcompat/b/a/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_d

    .line 395
    iget-object v1, p0, Landroidx/appcompat/b/a/b;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 397
    :cond_d
    iget-object v1, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_16

    .line 398
    iget-object p0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_16
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 4

    .line 386
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_11

    invoke-virtual {p0}, Landroidx/appcompat/b/a/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 387
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_11
    return-void
.end method
