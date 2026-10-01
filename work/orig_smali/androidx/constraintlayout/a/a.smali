.class public final Landroidx/constraintlayout/a/a;
.super Ljava/lang/Object;
.source "ArrayLinkedVariables.java"


# instance fields
.field a:I

.field final b:Landroidx/constraintlayout/a/b;

.field final c:Landroidx/constraintlayout/a/c;

.field d:[I

.field e:[I

.field f:[F

.field g:I

.field private h:I

.field private i:Landroidx/constraintlayout/a/h;

.field private j:I

.field private k:Z


# direct methods
.method constructor <init>(Landroidx/constraintlayout/a/b;Landroidx/constraintlayout/a/c;)V
    .registers 5

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Landroidx/constraintlayout/a/a;->a:I

    const/16 v1, 0x8

    .line 48
    iput v1, p0, Landroidx/constraintlayout/a/a;->h:I

    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Landroidx/constraintlayout/a/a;->i:Landroidx/constraintlayout/a/h;

    .line 53
    iget v1, p0, Landroidx/constraintlayout/a/a;->h:I

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/constraintlayout/a/a;->d:[I

    .line 56
    iget v1, p0, Landroidx/constraintlayout/a/a;->h:I

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/constraintlayout/a/a;->e:[I

    .line 59
    iget v1, p0, Landroidx/constraintlayout/a/a;->h:I

    new-array v1, v1, [F

    iput-object v1, p0, Landroidx/constraintlayout/a/a;->f:[F

    const/4 v1, -0x1

    .line 62
    iput v1, p0, Landroidx/constraintlayout/a/a;->g:I

    .line 78
    iput v1, p0, Landroidx/constraintlayout/a/a;->j:I

    .line 81
    iput-boolean v0, p0, Landroidx/constraintlayout/a/a;->k:Z

    .line 101
    iput-object p1, p0, Landroidx/constraintlayout/a/a;->b:Landroidx/constraintlayout/a/b;

    .line 102
    iput-object p2, p0, Landroidx/constraintlayout/a/a;->c:Landroidx/constraintlayout/a/c;

    return-void
.end method

.method static a(Landroidx/constraintlayout/a/h;)Z
    .registers 2

    .line 491
    iget p0, p0, Landroidx/constraintlayout/a/h;->i:I

    const/4 v0, 0x1

    if-gt p0, v0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/a/h;Z)F
    .registers 11

    .line 345
    iget-object v0, p0, Landroidx/constraintlayout/a/a;->i:Landroidx/constraintlayout/a/h;

    if-ne v0, p1, :cond_7

    const/4 v0, 0x0

    .line 346
    iput-object v0, p0, Landroidx/constraintlayout/a/a;->i:Landroidx/constraintlayout/a/h;

    .line 348
    :cond_7
    iget v0, p0, Landroidx/constraintlayout/a/a;->g:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_e

    return v1

    .line 351
    :cond_e
    iget v0, p0, Landroidx/constraintlayout/a/a;->g:I

    const/4 v3, 0x0

    move v4, v2

    :goto_12
    if-eq v0, v2, :cond_5d

    .line 354
    iget v5, p0, Landroidx/constraintlayout/a/a;->a:I

    if-ge v3, v5, :cond_5d

    .line 355
    iget-object v5, p0, Landroidx/constraintlayout/a/a;->d:[I

    aget v5, v5, v0

    .line 356
    iget v6, p1, Landroidx/constraintlayout/a/h;->a:I

    if-ne v5, v6, :cond_53

    .line 357
    iget v1, p0, Landroidx/constraintlayout/a/a;->g:I

    if-ne v0, v1, :cond_2b

    .line 358
    iget-object v1, p0, Landroidx/constraintlayout/a/a;->e:[I

    aget v1, v1, v0

    iput v1, p0, Landroidx/constraintlayout/a/a;->g:I

    goto :goto_31

    .line 360
    :cond_2b
    iget-object v1, p0, Landroidx/constraintlayout/a/a;->e:[I

    aget v3, v1, v0

    aput v3, v1, v4

    :goto_31
    if-eqz p2, :cond_38

    .line 364
    iget-object p2, p0, Landroidx/constraintlayout/a/a;->b:Landroidx/constraintlayout/a/b;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/a/h;->b(Landroidx/constraintlayout/a/b;)V

    .line 366
    :cond_38
    iget p2, p1, Landroidx/constraintlayout/a/h;->i:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Landroidx/constraintlayout/a/h;->i:I

    .line 367
    iget p1, p0, Landroidx/constraintlayout/a/a;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/constraintlayout/a/a;->a:I

    .line 368
    iget-object p1, p0, Landroidx/constraintlayout/a/a;->d:[I

    aput v2, p1, v0

    .line 369
    iget-boolean p1, p0, Landroidx/constraintlayout/a/a;->k:Z

    if-eqz p1, :cond_4e

    .line 371
    iput v0, p0, Landroidx/constraintlayout/a/a;->j:I

    .line 373
    :cond_4e
    iget-object p0, p0, Landroidx/constraintlayout/a/a;->f:[F

    aget p0, p0, v0

    return p0

    .line 376
    :cond_53
    iget-object v4, p0, Landroidx/constraintlayout/a/a;->e:[I

    aget v4, v4, v0

    add-int/lit8 v3, v3, 0x1

    move v7, v4

    move v4, v0

    move v0, v7

    goto :goto_12

    :cond_5d
    return v1
.end method

.method final a(I)Landroidx/constraintlayout/a/h;
    .registers 5

    .line 724
    iget v0, p0, Landroidx/constraintlayout/a/a;->g:I

    const/4 v1, 0x0

    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1e

    .line 726
    iget v2, p0, Landroidx/constraintlayout/a/a;->a:I

    if-ge v1, v2, :cond_1e

    if-ne v1, p1, :cond_17

    .line 728
    iget-object p1, p0, Landroidx/constraintlayout/a/a;->c:Landroidx/constraintlayout/a/c;

    iget-object p1, p1, Landroidx/constraintlayout/a/c;->c:[Landroidx/constraintlayout/a/h;

    iget-object p0, p0, Landroidx/constraintlayout/a/a;->d:[I

    aget p0, p0, v0

    aget-object p0, p1, p0

    return-object p0

    .line 730
    :cond_17
    iget-object v2, p0, Landroidx/constraintlayout/a/a;->e:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method final a([ZLandroidx/constraintlayout/a/h;)Landroidx/constraintlayout/a/h;
    .registers 11

    .line 691
    iget v0, p0, Landroidx/constraintlayout/a/a;->g:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v1

    :goto_6
    const/4 v5, -0x1

    if-eq v0, v5, :cond_46

    .line 695
    iget v5, p0, Landroidx/constraintlayout/a/a;->a:I

    if-ge v2, v5, :cond_46

    .line 696
    iget-object v5, p0, Landroidx/constraintlayout/a/a;->f:[F

    aget v5, v5, v0

    cmpg-float v5, v5, v1

    if-gez v5, :cond_3f

    .line 700
    iget-object v5, p0, Landroidx/constraintlayout/a/a;->c:Landroidx/constraintlayout/a/c;

    iget-object v5, v5, Landroidx/constraintlayout/a/c;->c:[Landroidx/constraintlayout/a/h;

    iget-object v6, p0, Landroidx/constraintlayout/a/a;->d:[I

    aget v6, v6, v0

    aget-object v5, v5, v6

    if-eqz p1, :cond_27

    .line 701
    iget v6, v5, Landroidx/constraintlayout/a/h;->a:I

    aget-boolean v6, p1, v6

    if-nez v6, :cond_3f

    :cond_27
    if-eq v5, p2, :cond_3f

    .line 702
    iget v6, v5, Landroidx/constraintlayout/a/h;->f:I

    sget v7, Landroidx/constraintlayout/a/h$a;->SLACK$2fe29fa6:I

    if-eq v6, v7, :cond_35

    iget v6, v5, Landroidx/constraintlayout/a/h;->f:I

    sget v7, Landroidx/constraintlayout/a/h$a;->ERROR$2fe29fa6:I

    if-ne v6, v7, :cond_3f

    .line 704
    :cond_35
    iget-object v6, p0, Landroidx/constraintlayout/a/a;->f:[F

    aget v6, v6, v0

    cmpg-float v7, v6, v4

    if-gez v7, :cond_3f

    move-object v3, v5

    move v4, v6

    .line 712
    :cond_3f
    iget-object v5, p0, Landroidx/constraintlayout/a/a;->e:[I

    aget v0, v5, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_46
    return-object v3
.end method

.method public final a()V
    .registers 6

    .line 385
    iget v0, p0, Landroidx/constraintlayout/a/a;->g:I

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    const/4 v3, -0x1

    if-eq v0, v3, :cond_23

    .line 387
    iget v4, p0, Landroidx/constraintlayout/a/a;->a:I

    if-ge v2, v4, :cond_23

    .line 388
    iget-object v3, p0, Landroidx/constraintlayout/a/a;->c:Landroidx/constraintlayout/a/c;

    iget-object v3, v3, Landroidx/constraintlayout/a/c;->c:[Landroidx/constraintlayout/a/h;

    iget-object v4, p0, Landroidx/constraintlayout/a/a;->d:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    if-eqz v3, :cond_1c

    .line 390
    iget-object v4, p0, Landroidx/constraintlayout/a/a;->b:Landroidx/constraintlayout/a/b;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/a/h;->b(Landroidx/constraintlayout/a/b;)V

    .line 392
    :cond_1c
    iget-object v3, p0, Landroidx/constraintlayout/a/a;->e:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 395
    :cond_23
    iput v3, p0, Landroidx/constraintlayout/a/a;->g:I

    .line 396
    iput v3, p0, Landroidx/constraintlayout/a/a;->j:I

    .line 397
    iput-boolean v1, p0, Landroidx/constraintlayout/a/a;->k:Z

    .line 398
    iput v1, p0, Landroidx/constraintlayout/a/a;->a:I

    return-void
.end method

.method final a(Landroidx/constraintlayout/a/b;Landroidx/constraintlayout/a/b;)V
    .registers 11

    .line 583
    iget v0, p0, Landroidx/constraintlayout/a/a;->g:I

    const/4 v1, 0x0

    :goto_3
    move v2, v1

    :goto_4
    const/4 v3, -0x1

    if-eq v0, v3, :cond_56

    .line 585
    iget v4, p0, Landroidx/constraintlayout/a/a;->a:I

    if-ge v2, v4, :cond_56

    .line 586
    iget-object v4, p0, Landroidx/constraintlayout/a/a;->d:[I

    aget v4, v4, v0

    iget-object v5, p2, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    iget v5, v5, Landroidx/constraintlayout/a/h;->a:I

    if-ne v4, v5, :cond_4f

    .line 587
    iget-object v2, p0, Landroidx/constraintlayout/a/a;->f:[F

    aget v0, v2, v0

    .line 588
    iget-object v2, p2, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    invoke-virtual {p0, v2, v1}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;Z)F

    .line 590
    iget-object v2, p2, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    check-cast v2, Landroidx/constraintlayout/a/a;

    .line 591
    iget v4, v2, Landroidx/constraintlayout/a/a;->g:I

    move v5, v1

    :goto_25
    if-eq v4, v3, :cond_44

    .line 593
    iget v6, v2, Landroidx/constraintlayout/a/a;->a:I

    if-ge v5, v6, :cond_44

    .line 594
    iget-object v6, p0, Landroidx/constraintlayout/a/a;->c:Landroidx/constraintlayout/a/c;

    iget-object v6, v6, Landroidx/constraintlayout/a/c;->c:[Landroidx/constraintlayout/a/h;

    iget-object v7, v2, Landroidx/constraintlayout/a/a;->d:[I

    aget v7, v7, v4

    aget-object v6, v6, v7

    .line 596
    iget-object v7, v2, Landroidx/constraintlayout/a/a;->f:[F

    aget v7, v7, v4

    mul-float/2addr v7, v0

    .line 597
    invoke-virtual {p0, v6, v7, v1}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;FZ)V

    .line 598
    iget-object v6, v2, Landroidx/constraintlayout/a/a;->e:[I

    aget v4, v6, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 600
    :cond_44
    iget v2, p1, Landroidx/constraintlayout/a/b;->b:F

    iget v3, p2, Landroidx/constraintlayout/a/b;->b:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, p1, Landroidx/constraintlayout/a/b;->b:F

    .line 608
    iget v0, p0, Landroidx/constraintlayout/a/a;->g:I

    goto :goto_3

    .line 612
    :cond_4f
    iget-object v3, p0, Landroidx/constraintlayout/a/a;->e:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_56
    return-void
.end method

.method final a(Landroidx/constraintlayout/a/b;[Landroidx/constraintlayout/a/b;)V
    .registers 13

    .line 626
    iget v0, p0, Landroidx/constraintlayout/a/a;->g:I

    const/4 v1, 0x0

    :goto_3
    move v2, v1

    :goto_4
    const/4 v3, -0x1

    if-eq v0, v3, :cond_66

    .line 628
    iget v4, p0, Landroidx/constraintlayout/a/a;->a:I

    if-ge v2, v4, :cond_66

    .line 629
    iget-object v4, p0, Landroidx/constraintlayout/a/a;->c:Landroidx/constraintlayout/a/c;

    iget-object v4, v4, Landroidx/constraintlayout/a/c;->c:[Landroidx/constraintlayout/a/h;

    iget-object v5, p0, Landroidx/constraintlayout/a/a;->d:[I

    aget v5, v5, v0

    aget-object v4, v4, v5

    .line 630
    iget v5, v4, Landroidx/constraintlayout/a/h;->b:I

    if-eq v5, v3, :cond_5f

    .line 631
    iget-object v2, p0, Landroidx/constraintlayout/a/a;->f:[F

    aget v0, v2, v0

    const/4 v2, 0x1

    .line 632
    invoke-virtual {p0, v4, v2}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;Z)F

    .line 634
    iget v4, v4, Landroidx/constraintlayout/a/h;->b:I

    aget-object v4, p2, v4

    .line 635
    iget-boolean v5, v4, Landroidx/constraintlayout/a/b;->e:Z

    if-nez v5, :cond_4f

    .line 636
    iget-object v5, v4, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    check-cast v5, Landroidx/constraintlayout/a/a;

    .line 637
    iget v6, v5, Landroidx/constraintlayout/a/a;->g:I

    move v7, v1

    :goto_30
    if-eq v6, v3, :cond_4f

    .line 639
    iget v8, v5, Landroidx/constraintlayout/a/a;->a:I

    if-ge v7, v8, :cond_4f

    .line 640
    iget-object v8, p0, Landroidx/constraintlayout/a/a;->c:Landroidx/constraintlayout/a/c;

    iget-object v8, v8, Landroidx/constraintlayout/a/c;->c:[Landroidx/constraintlayout/a/h;

    iget-object v9, v5, Landroidx/constraintlayout/a/a;->d:[I

    aget v9, v9, v6

    aget-object v8, v8, v9

    .line 642
    iget-object v9, v5, Landroidx/constraintlayout/a/a;->f:[F

    aget v9, v9, v6

    mul-float/2addr v9, v0

    .line 643
    invoke-virtual {p0, v8, v9, v2}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;FZ)V

    .line 644
    iget-object v8, v5, Landroidx/constraintlayout/a/a;->e:[I

    aget v6, v8, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    .line 648
    :cond_4f
    iget v2, p1, Landroidx/constraintlayout/a/b;->b:F

    iget v3, v4, Landroidx/constraintlayout/a/b;->b:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, p1, Landroidx/constraintlayout/a/b;->b:F

    .line 649
    iget-object v0, v4, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/a/h;->b(Landroidx/constraintlayout/a/b;)V

    .line 654
    iget v0, p0, Landroidx/constraintlayout/a/a;->g:I

    goto :goto_3

    .line 658
    :cond_5f
    iget-object v3, p0, Landroidx/constraintlayout/a/a;->e:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_66
    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/h;F)V
    .registers 11

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 118
    invoke-virtual {p0, p1, v1}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;Z)F

    return-void

    .line 122
    :cond_a
    iget v0, p0, Landroidx/constraintlayout/a/a;->g:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_4e

    .line 123
    iput v2, p0, Landroidx/constraintlayout/a/a;->g:I

    .line 124
    iget-object v0, p0, Landroidx/constraintlayout/a/a;->f:[F

    iget v2, p0, Landroidx/constraintlayout/a/a;->g:I

    aput p2, v0, v2

    .line 125
    iget-object p2, p0, Landroidx/constraintlayout/a/a;->d:[I

    iget v0, p0, Landroidx/constraintlayout/a/a;->g:I

    iget v2, p1, Landroidx/constraintlayout/a/h;->a:I

    aput v2, p2, v0

    .line 126
    iget-object p2, p0, Landroidx/constraintlayout/a/a;->e:[I

    iget v0, p0, Landroidx/constraintlayout/a/a;->g:I

    aput v3, p2, v0

    .line 127
    iget p2, p1, Landroidx/constraintlayout/a/h;->i:I

    add-int/2addr p2, v1

    iput p2, p1, Landroidx/constraintlayout/a/h;->i:I

    .line 128
    iget-object p2, p0, Landroidx/constraintlayout/a/a;->b:Landroidx/constraintlayout/a/b;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/a/h;->a(Landroidx/constraintlayout/a/b;)V

    .line 129
    iget p1, p0, Landroidx/constraintlayout/a/a;->a:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/constraintlayout/a/a;->a:I

    .line 130
    iget-boolean p1, p0, Landroidx/constraintlayout/a/a;->k:Z

    if-nez p1, :cond_4d

    .line 132
    iget p1, p0, Landroidx/constraintlayout/a/a;->j:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/constraintlayout/a/a;->j:I

    .line 133
    iget p1, p0, Landroidx/constraintlayout/a/a;->j:I

    iget-object p2, p0, Landroidx/constraintlayout/a/a;->d:[I

    array-length p2, p2

    if-lt p1, p2, :cond_4d

    .line 134
    iput-boolean v1, p0, Landroidx/constraintlayout/a/a;->k:Z

    .line 135
    iget-object p1, p0, Landroidx/constraintlayout/a/a;->d:[I

    array-length p1, p1

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/constraintlayout/a/a;->j:I

    :cond_4d
    return-void

    .line 140
    :cond_4e
    iget v0, p0, Landroidx/constraintlayout/a/a;->g:I

    move v4, v2

    move v5, v3

    :goto_52
    if-eq v0, v3, :cond_75

    .line 143
    iget v6, p0, Landroidx/constraintlayout/a/a;->a:I

    if-ge v4, v6, :cond_75

    .line 144
    iget-object v6, p0, Landroidx/constraintlayout/a/a;->d:[I

    aget v6, v6, v0

    iget v7, p1, Landroidx/constraintlayout/a/h;->a:I

    if-ne v6, v7, :cond_65

    .line 145
    iget-object p0, p0, Landroidx/constraintlayout/a/a;->f:[F

    aput p2, p0, v0

    return-void

    .line 148
    :cond_65
    iget-object v6, p0, Landroidx/constraintlayout/a/a;->d:[I

    aget v6, v6, v0

    iget v7, p1, Landroidx/constraintlayout/a/h;->a:I

    if-ge v6, v7, :cond_6e

    move v5, v0

    .line 151
    :cond_6e
    iget-object v6, p0, Landroidx/constraintlayout/a/a;->e:[I

    aget v0, v6, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    .line 157
    :cond_75
    iget v0, p0, Landroidx/constraintlayout/a/a;->j:I

    add-int/2addr v0, v1

    .line 158
    iget-boolean v4, p0, Landroidx/constraintlayout/a/a;->k:Z

    if-eqz v4, :cond_8a

    .line 161
    iget-object v0, p0, Landroidx/constraintlayout/a/a;->d:[I

    iget v4, p0, Landroidx/constraintlayout/a/a;->j:I

    aget v0, v0, v4

    if-ne v0, v3, :cond_87

    .line 162
    iget v0, p0, Landroidx/constraintlayout/a/a;->j:I

    goto :goto_8a

    .line 164
    :cond_87
    iget-object v0, p0, Landroidx/constraintlayout/a/a;->d:[I

    array-length v0, v0

    .line 167
    :cond_8a
    :goto_8a
    iget-object v4, p0, Landroidx/constraintlayout/a/a;->d:[I

    array-length v4, v4

    if-lt v0, v4, :cond_a7

    .line 168
    iget v4, p0, Landroidx/constraintlayout/a/a;->a:I

    iget-object v6, p0, Landroidx/constraintlayout/a/a;->d:[I

    array-length v6, v6

    if-ge v4, v6, :cond_a7

    move v4, v2

    .line 170
    :goto_97
    iget-object v6, p0, Landroidx/constraintlayout/a/a;->d:[I

    array-length v6, v6

    if-ge v4, v6, :cond_a7

    .line 171
    iget-object v6, p0, Landroidx/constraintlayout/a/a;->d:[I

    aget v6, v6, v4

    if-ne v6, v3, :cond_a4

    move v0, v4

    goto :goto_a7

    :cond_a4
    add-int/lit8 v4, v4, 0x1

    goto :goto_97

    .line 179
    :cond_a7
    :goto_a7
    iget-object v4, p0, Landroidx/constraintlayout/a/a;->d:[I

    array-length v4, v4

    if-lt v0, v4, :cond_d9

    .line 180
    iget-object v0, p0, Landroidx/constraintlayout/a/a;->d:[I

    array-length v0, v0

    .line 181
    iget v4, p0, Landroidx/constraintlayout/a/a;->h:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, p0, Landroidx/constraintlayout/a/a;->h:I

    .line 182
    iput-boolean v2, p0, Landroidx/constraintlayout/a/a;->k:Z

    add-int/lit8 v2, v0, -0x1

    .line 183
    iput v2, p0, Landroidx/constraintlayout/a/a;->j:I

    .line 184
    iget-object v2, p0, Landroidx/constraintlayout/a/a;->f:[F

    iget v4, p0, Landroidx/constraintlayout/a/a;->h:I

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/a/a;->f:[F

    .line 185
    iget-object v2, p0, Landroidx/constraintlayout/a/a;->d:[I

    iget v4, p0, Landroidx/constraintlayout/a/a;->h:I

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/a/a;->d:[I

    .line 186
    iget-object v2, p0, Landroidx/constraintlayout/a/a;->e:[I

    iget v4, p0, Landroidx/constraintlayout/a/a;->h:I

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/a/a;->e:[I

    .line 190
    :cond_d9
    iget-object v2, p0, Landroidx/constraintlayout/a/a;->d:[I

    iget v4, p1, Landroidx/constraintlayout/a/h;->a:I

    aput v4, v2, v0

    .line 191
    iget-object v2, p0, Landroidx/constraintlayout/a/a;->f:[F

    aput p2, v2, v0

    if-eq v5, v3, :cond_f0

    .line 193
    iget-object p2, p0, Landroidx/constraintlayout/a/a;->e:[I

    aget v2, p2, v5

    aput v2, p2, v0

    .line 194
    iget-object p2, p0, Landroidx/constraintlayout/a/a;->e:[I

    aput v0, p2, v5

    goto :goto_f8

    .line 196
    :cond_f0
    iget-object p2, p0, Landroidx/constraintlayout/a/a;->e:[I

    iget v2, p0, Landroidx/constraintlayout/a/a;->g:I

    aput v2, p2, v0

    .line 197
    iput v0, p0, Landroidx/constraintlayout/a/a;->g:I

    .line 199
    :goto_f8
    iget p2, p1, Landroidx/constraintlayout/a/h;->i:I

    add-int/2addr p2, v1

    iput p2, p1, Landroidx/constraintlayout/a/h;->i:I

    .line 200
    iget-object p2, p0, Landroidx/constraintlayout/a/a;->b:Landroidx/constraintlayout/a/b;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/a/h;->a(Landroidx/constraintlayout/a/b;)V

    .line 201
    iget p1, p0, Landroidx/constraintlayout/a/a;->a:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/constraintlayout/a/a;->a:I

    .line 202
    iget-boolean p1, p0, Landroidx/constraintlayout/a/a;->k:Z

    if-nez p1, :cond_110

    .line 204
    iget p1, p0, Landroidx/constraintlayout/a/a;->j:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/constraintlayout/a/a;->j:I

    .line 206
    :cond_110
    iget p1, p0, Landroidx/constraintlayout/a/a;->a:I

    iget-object p2, p0, Landroidx/constraintlayout/a/a;->d:[I

    array-length p2, p2

    if-lt p1, p2, :cond_119

    .line 207
    iput-boolean v1, p0, Landroidx/constraintlayout/a/a;->k:Z

    .line 209
    :cond_119
    iget p1, p0, Landroidx/constraintlayout/a/a;->j:I

    iget-object p2, p0, Landroidx/constraintlayout/a/a;->d:[I

    array-length p2, p2

    if-lt p1, p2, :cond_128

    .line 210
    iput-boolean v1, p0, Landroidx/constraintlayout/a/a;->k:Z

    .line 211
    iget-object p1, p0, Landroidx/constraintlayout/a/a;->d:[I

    array-length p1, p1

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/constraintlayout/a/a;->j:I

    :cond_128
    return-void
.end method

.method final a(Landroidx/constraintlayout/a/h;FZ)V
    .registers 13

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_6

    return-void

    .line 229
    :cond_6
    iget v1, p0, Landroidx/constraintlayout/a/a;->g:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v1, v3, :cond_4b

    .line 230
    iput v2, p0, Landroidx/constraintlayout/a/a;->g:I

    .line 231
    iget-object p3, p0, Landroidx/constraintlayout/a/a;->f:[F

    iget v0, p0, Landroidx/constraintlayout/a/a;->g:I

    aput p2, p3, v0

    .line 232
    iget-object p2, p0, Landroidx/constraintlayout/a/a;->d:[I

    iget p3, p0, Landroidx/constraintlayout/a/a;->g:I

    iget v0, p1, Landroidx/constraintlayout/a/h;->a:I

    aput v0, p2, p3

    .line 233
    iget-object p2, p0, Landroidx/constraintlayout/a/a;->e:[I

    iget p3, p0, Landroidx/constraintlayout/a/a;->g:I

    aput v3, p2, p3

    .line 234
    iget p2, p1, Landroidx/constraintlayout/a/h;->i:I

    add-int/2addr p2, v4

    iput p2, p1, Landroidx/constraintlayout/a/h;->i:I

    .line 235
    iget-object p2, p0, Landroidx/constraintlayout/a/a;->b:Landroidx/constraintlayout/a/b;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/a/h;->a(Landroidx/constraintlayout/a/b;)V

    .line 236
    iget p1, p0, Landroidx/constraintlayout/a/a;->a:I

    add-int/2addr p1, v4

    iput p1, p0, Landroidx/constraintlayout/a/a;->a:I

    .line 237
    iget-boolean p1, p0, Landroidx/constraintlayout/a/a;->k:Z

    if-nez p1, :cond_4a

    .line 239
    iget p1, p0, Landroidx/constraintlayout/a/a;->j:I

    add-int/2addr p1, v4

    iput p1, p0, Landroidx/constraintlayout/a/a;->j:I

    .line 240
    iget p1, p0, Landroidx/constraintlayout/a/a;->j:I

    iget-object p2, p0, Landroidx/constraintlayout/a/a;->d:[I

    array-length p2, p2

    if-lt p1, p2, :cond_4a

    .line 241
    iput-boolean v4, p0, Landroidx/constraintlayout/a/a;->k:Z

    .line 242
    iget-object p1, p0, Landroidx/constraintlayout/a/a;->d:[I

    array-length p1, p1

    sub-int/2addr p1, v4

    iput p1, p0, Landroidx/constraintlayout/a/a;->j:I

    :cond_4a
    return-void

    .line 247
    :cond_4b
    iget v1, p0, Landroidx/constraintlayout/a/a;->g:I

    move v5, v2

    move v6, v3

    :goto_4f
    if-eq v1, v3, :cond_a5

    .line 250
    iget v7, p0, Landroidx/constraintlayout/a/a;->a:I

    if-ge v5, v7, :cond_a5

    .line 251
    iget-object v7, p0, Landroidx/constraintlayout/a/a;->d:[I

    aget v7, v7, v1

    .line 252
    iget v8, p1, Landroidx/constraintlayout/a/h;->a:I

    if-ne v7, v8, :cond_95

    .line 253
    iget-object v2, p0, Landroidx/constraintlayout/a/a;->f:[F

    aget v3, v2, v1

    add-float/2addr v3, p2

    aput v3, v2, v1

    .line 255
    iget-object p2, p0, Landroidx/constraintlayout/a/a;->f:[F

    aget p2, p2, v1

    cmpl-float p2, p2, v0

    if-nez p2, :cond_94

    .line 256
    iget p2, p0, Landroidx/constraintlayout/a/a;->g:I

    if-ne v1, p2, :cond_77

    .line 257
    iget-object p2, p0, Landroidx/constraintlayout/a/a;->e:[I

    aget p2, p2, v1

    iput p2, p0, Landroidx/constraintlayout/a/a;->g:I

    goto :goto_7d

    .line 259
    :cond_77
    iget-object p2, p0, Landroidx/constraintlayout/a/a;->e:[I

    aget v0, p2, v1

    aput v0, p2, v6

    :goto_7d
    if-eqz p3, :cond_84

    .line 262
    iget-object p2, p0, Landroidx/constraintlayout/a/a;->b:Landroidx/constraintlayout/a/b;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/a/h;->b(Landroidx/constraintlayout/a/b;)V

    .line 264
    :cond_84
    iget-boolean p2, p0, Landroidx/constraintlayout/a/a;->k:Z

    if-eqz p2, :cond_8a

    .line 266
    iput v1, p0, Landroidx/constraintlayout/a/a;->j:I

    .line 268
    :cond_8a
    iget p2, p1, Landroidx/constraintlayout/a/h;->i:I

    sub-int/2addr p2, v4

    iput p2, p1, Landroidx/constraintlayout/a/h;->i:I

    .line 269
    iget p1, p0, Landroidx/constraintlayout/a/a;->a:I

    sub-int/2addr p1, v4

    iput p1, p0, Landroidx/constraintlayout/a/a;->a:I

    :cond_94
    return-void

    .line 273
    :cond_95
    iget-object v7, p0, Landroidx/constraintlayout/a/a;->d:[I

    aget v7, v7, v1

    iget v8, p1, Landroidx/constraintlayout/a/h;->a:I

    if-ge v7, v8, :cond_9e

    move v6, v1

    .line 276
    :cond_9e
    iget-object v7, p0, Landroidx/constraintlayout/a/a;->e:[I

    aget v1, v7, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_4f

    .line 282
    :cond_a5
    iget p3, p0, Landroidx/constraintlayout/a/a;->j:I

    add-int/2addr p3, v4

    .line 283
    iget-boolean v0, p0, Landroidx/constraintlayout/a/a;->k:Z

    if-eqz v0, :cond_ba

    .line 286
    iget-object p3, p0, Landroidx/constraintlayout/a/a;->d:[I

    iget v0, p0, Landroidx/constraintlayout/a/a;->j:I

    aget p3, p3, v0

    if-ne p3, v3, :cond_b7

    .line 287
    iget p3, p0, Landroidx/constraintlayout/a/a;->j:I

    goto :goto_ba

    .line 289
    :cond_b7
    iget-object p3, p0, Landroidx/constraintlayout/a/a;->d:[I

    array-length p3, p3

    .line 292
    :cond_ba
    :goto_ba
    iget-object v0, p0, Landroidx/constraintlayout/a/a;->d:[I

    array-length v0, v0

    if-lt p3, v0, :cond_d7

    .line 293
    iget v0, p0, Landroidx/constraintlayout/a/a;->a:I

    iget-object v1, p0, Landroidx/constraintlayout/a/a;->d:[I

    array-length v1, v1

    if-ge v0, v1, :cond_d7

    move v0, v2

    .line 295
    :goto_c7
    iget-object v1, p0, Landroidx/constraintlayout/a/a;->d:[I

    array-length v1, v1

    if-ge v0, v1, :cond_d7

    .line 296
    iget-object v1, p0, Landroidx/constraintlayout/a/a;->d:[I

    aget v1, v1, v0

    if-ne v1, v3, :cond_d4

    move p3, v0

    goto :goto_d7

    :cond_d4
    add-int/lit8 v0, v0, 0x1

    goto :goto_c7

    .line 304
    :cond_d7
    :goto_d7
    iget-object v0, p0, Landroidx/constraintlayout/a/a;->d:[I

    array-length v0, v0

    if-lt p3, v0, :cond_109

    .line 305
    iget-object p3, p0, Landroidx/constraintlayout/a/a;->d:[I

    array-length p3, p3

    .line 306
    iget v0, p0, Landroidx/constraintlayout/a/a;->h:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/constraintlayout/a/a;->h:I

    .line 307
    iput-boolean v2, p0, Landroidx/constraintlayout/a/a;->k:Z

    add-int/lit8 v0, p3, -0x1

    .line 308
    iput v0, p0, Landroidx/constraintlayout/a/a;->j:I

    .line 309
    iget-object v0, p0, Landroidx/constraintlayout/a/a;->f:[F

    iget v1, p0, Landroidx/constraintlayout/a/a;->h:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/a/a;->f:[F

    .line 310
    iget-object v0, p0, Landroidx/constraintlayout/a/a;->d:[I

    iget v1, p0, Landroidx/constraintlayout/a/a;->h:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/a/a;->d:[I

    .line 311
    iget-object v0, p0, Landroidx/constraintlayout/a/a;->e:[I

    iget v1, p0, Landroidx/constraintlayout/a/a;->h:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/a/a;->e:[I

    .line 315
    :cond_109
    iget-object v0, p0, Landroidx/constraintlayout/a/a;->d:[I

    iget v1, p1, Landroidx/constraintlayout/a/h;->a:I

    aput v1, v0, p3

    .line 316
    iget-object v0, p0, Landroidx/constraintlayout/a/a;->f:[F

    aput p2, v0, p3

    if-eq v6, v3, :cond_120

    .line 318
    iget-object p2, p0, Landroidx/constraintlayout/a/a;->e:[I

    aget v0, p2, v6

    aput v0, p2, p3

    .line 319
    iget-object p2, p0, Landroidx/constraintlayout/a/a;->e:[I

    aput p3, p2, v6

    goto :goto_128

    .line 321
    :cond_120
    iget-object p2, p0, Landroidx/constraintlayout/a/a;->e:[I

    iget v0, p0, Landroidx/constraintlayout/a/a;->g:I

    aput v0, p2, p3

    .line 322
    iput p3, p0, Landroidx/constraintlayout/a/a;->g:I

    .line 324
    :goto_128
    iget p2, p1, Landroidx/constraintlayout/a/h;->i:I

    add-int/2addr p2, v4

    iput p2, p1, Landroidx/constraintlayout/a/h;->i:I

    .line 325
    iget-object p2, p0, Landroidx/constraintlayout/a/a;->b:Landroidx/constraintlayout/a/b;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/a/h;->a(Landroidx/constraintlayout/a/b;)V

    .line 326
    iget p1, p0, Landroidx/constraintlayout/a/a;->a:I

    add-int/2addr p1, v4

    iput p1, p0, Landroidx/constraintlayout/a/a;->a:I

    .line 327
    iget-boolean p1, p0, Landroidx/constraintlayout/a/a;->k:Z

    if-nez p1, :cond_140

    .line 329
    iget p1, p0, Landroidx/constraintlayout/a/a;->j:I

    add-int/2addr p1, v4

    iput p1, p0, Landroidx/constraintlayout/a/a;->j:I

    .line 331
    :cond_140
    iget p1, p0, Landroidx/constraintlayout/a/a;->j:I

    iget-object p2, p0, Landroidx/constraintlayout/a/a;->d:[I

    array-length p2, p2

    if-lt p1, p2, :cond_14f

    .line 332
    iput-boolean v4, p0, Landroidx/constraintlayout/a/a;->k:Z

    .line 333
    iget-object p1, p0, Landroidx/constraintlayout/a/a;->d:[I

    array-length p1, p1

    sub-int/2addr p1, v4

    iput p1, p0, Landroidx/constraintlayout/a/a;->j:I

    :cond_14f
    return-void
.end method

.method final b(I)F
    .registers 5

    .line 742
    iget v0, p0, Landroidx/constraintlayout/a/a;->g:I

    const/4 v1, 0x0

    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_18

    .line 744
    iget v2, p0, Landroidx/constraintlayout/a/a;->a:I

    if-ge v1, v2, :cond_18

    if-ne v1, p1, :cond_11

    .line 746
    iget-object p0, p0, Landroidx/constraintlayout/a/a;->f:[F

    aget p0, p0, v0

    return p0

    .line 748
    :cond_11
    iget-object v2, p0, Landroidx/constraintlayout/a/a;->e:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public final b(Landroidx/constraintlayout/a/h;)F
    .registers 6

    .line 759
    iget v0, p0, Landroidx/constraintlayout/a/a;->g:I

    const/4 v1, 0x0

    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1e

    .line 761
    iget v2, p0, Landroidx/constraintlayout/a/a;->a:I

    if-ge v1, v2, :cond_1e

    .line 762
    iget-object v2, p0, Landroidx/constraintlayout/a/a;->d:[I

    aget v2, v2, v0

    iget v3, p1, Landroidx/constraintlayout/a/h;->a:I

    if-ne v2, v3, :cond_17

    .line 763
    iget-object p0, p0, Landroidx/constraintlayout/a/a;->f:[F

    aget p0, p0, v0

    return p0

    .line 765
    :cond_17
    iget-object v2, p0, Landroidx/constraintlayout/a/a;->e:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    const-string v0, ""

    .line 799
    iget v1, p0, Landroidx/constraintlayout/a/a;->g:I

    const/4 v2, 0x0

    :goto_5
    const/4 v3, -0x1

    if-eq v1, v3, :cond_55

    .line 801
    iget v3, p0, Landroidx/constraintlayout/a/a;->a:I

    if-ge v2, v3, :cond_55

    .line 802
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 803
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/a/a;->f:[F

    aget v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 804
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/a/a;->c:Landroidx/constraintlayout/a/c;

    iget-object v0, v0, Landroidx/constraintlayout/a/c;->c:[Landroidx/constraintlayout/a/h;

    iget-object v4, p0, Landroidx/constraintlayout/a/a;->d:[I

    aget v4, v4, v1

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 805
    iget-object v3, p0, Landroidx/constraintlayout/a/a;->e:[I

    aget v1, v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_55
    return-object v0
.end method
