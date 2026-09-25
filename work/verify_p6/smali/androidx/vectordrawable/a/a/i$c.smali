.class final Landroidx/vectordrawable/a/a/i$c;
.super Landroidx/vectordrawable/a/a/i$d;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field final a:Landroid/graphics/Matrix;

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/vectordrawable/a/a/i$d;",
            ">;"
        }
    .end annotation
.end field

.field c:F

.field d:F

.field e:F

.field f:F

.field g:F

.field h:F

.field i:F

.field final j:Landroid/graphics/Matrix;

.field k:I

.field l:[I

.field m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 1506
    invoke-direct {p0, v0}, Landroidx/vectordrawable/a/a/i$d;-><init>(B)V

    .line 1445
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i$c;->a:Landroid/graphics/Matrix;

    .line 1449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i$c;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 1451
    iput v0, p0, Landroidx/vectordrawable/a/a/i$c;->c:F

    .line 1452
    iput v0, p0, Landroidx/vectordrawable/a/a/i$c;->d:F

    .line 1453
    iput v0, p0, Landroidx/vectordrawable/a/a/i$c;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1454
    iput v1, p0, Landroidx/vectordrawable/a/a/i$c;->f:F

    .line 1455
    iput v1, p0, Landroidx/vectordrawable/a/a/i$c;->g:F

    .line 1456
    iput v0, p0, Landroidx/vectordrawable/a/a/i$c;->h:F

    .line 1457
    iput v0, p0, Landroidx/vectordrawable/a/a/i$c;->i:F

    .line 1461
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i$c;->j:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 1464
    iput-object v0, p0, Landroidx/vectordrawable/a/a/i$c;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/vectordrawable/a/a/i$c;Landroidx/b/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/vectordrawable/a/a/i$c;",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1466
    invoke-direct {p0, v0}, Landroidx/vectordrawable/a/a/i$d;-><init>(B)V

    .line 1445
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroidx/vectordrawable/a/a/i$c;->a:Landroid/graphics/Matrix;

    .line 1449
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/vectordrawable/a/a/i$c;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1451
    iput v1, p0, Landroidx/vectordrawable/a/a/i$c;->c:F

    .line 1452
    iput v1, p0, Landroidx/vectordrawable/a/a/i$c;->d:F

    .line 1453
    iput v1, p0, Landroidx/vectordrawable/a/a/i$c;->e:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1454
    iput v2, p0, Landroidx/vectordrawable/a/a/i$c;->f:F

    .line 1455
    iput v2, p0, Landroidx/vectordrawable/a/a/i$c;->g:F

    .line 1456
    iput v1, p0, Landroidx/vectordrawable/a/a/i$c;->h:F

    .line 1457
    iput v1, p0, Landroidx/vectordrawable/a/a/i$c;->i:F

    .line 1461
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroidx/vectordrawable/a/a/i$c;->j:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    .line 1464
    iput-object v1, p0, Landroidx/vectordrawable/a/a/i$c;->m:Ljava/lang/String;

    .line 1467
    iget v1, p1, Landroidx/vectordrawable/a/a/i$c;->c:F

    iput v1, p0, Landroidx/vectordrawable/a/a/i$c;->c:F

    .line 1468
    iget v1, p1, Landroidx/vectordrawable/a/a/i$c;->d:F

    iput v1, p0, Landroidx/vectordrawable/a/a/i$c;->d:F

    .line 1469
    iget v1, p1, Landroidx/vectordrawable/a/a/i$c;->e:F

    iput v1, p0, Landroidx/vectordrawable/a/a/i$c;->e:F

    .line 1470
    iget v1, p1, Landroidx/vectordrawable/a/a/i$c;->f:F

    iput v1, p0, Landroidx/vectordrawable/a/a/i$c;->f:F

    .line 1471
    iget v1, p1, Landroidx/vectordrawable/a/a/i$c;->g:F

    iput v1, p0, Landroidx/vectordrawable/a/a/i$c;->g:F

    .line 1472
    iget v1, p1, Landroidx/vectordrawable/a/a/i$c;->h:F

    iput v1, p0, Landroidx/vectordrawable/a/a/i$c;->h:F

    .line 1473
    iget v1, p1, Landroidx/vectordrawable/a/a/i$c;->i:F

    iput v1, p0, Landroidx/vectordrawable/a/a/i$c;->i:F

    .line 1474
    iget-object v1, p1, Landroidx/vectordrawable/a/a/i$c;->l:[I

    iput-object v1, p0, Landroidx/vectordrawable/a/a/i$c;->l:[I

    .line 1475
    iget-object v1, p1, Landroidx/vectordrawable/a/a/i$c;->m:Ljava/lang/String;

    iput-object v1, p0, Landroidx/vectordrawable/a/a/i$c;->m:Ljava/lang/String;

    .line 1476
    iget v1, p1, Landroidx/vectordrawable/a/a/i$c;->k:I

    iput v1, p0, Landroidx/vectordrawable/a/a/i$c;->k:I

    .line 1477
    iget-object v1, p0, Landroidx/vectordrawable/a/a/i$c;->m:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1478
    iget-object v1, p0, Landroidx/vectordrawable/a/a/i$c;->m:Ljava/lang/String;

    invoke-virtual {p2, v1, p0}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1481
    :cond_0
    iget-object v1, p0, Landroidx/vectordrawable/a/a/i$c;->j:Landroid/graphics/Matrix;

    iget-object v2, p1, Landroidx/vectordrawable/a/a/i$c;->j:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1483
    iget-object p1, p1, Landroidx/vectordrawable/a/a/i$c;->b:Ljava/util/ArrayList;

    .line 1484
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 1485
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1486
    instance-of v2, v1, Landroidx/vectordrawable/a/a/i$c;

    if-eqz v2, :cond_1

    .line 1487
    check-cast v1, Landroidx/vectordrawable/a/a/i$c;

    .line 1488
    iget-object v2, p0, Landroidx/vectordrawable/a/a/i$c;->b:Ljava/util/ArrayList;

    new-instance v3, Landroidx/vectordrawable/a/a/i$c;

    invoke-direct {v3, v1, p2}, Landroidx/vectordrawable/a/a/i$c;-><init>(Landroidx/vectordrawable/a/a/i$c;Landroidx/b/a;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1491
    :cond_1
    instance-of v2, v1, Landroidx/vectordrawable/a/a/i$b;

    if-eqz v2, :cond_2

    .line 1492
    new-instance v2, Landroidx/vectordrawable/a/a/i$b;

    check-cast v1, Landroidx/vectordrawable/a/a/i$b;

    invoke-direct {v2, v1}, Landroidx/vectordrawable/a/a/i$b;-><init>(Landroidx/vectordrawable/a/a/i$b;)V

    goto :goto_1

    .line 1493
    :cond_2
    instance-of v2, v1, Landroidx/vectordrawable/a/a/i$a;

    if-eqz v2, :cond_4

    .line 1494
    new-instance v2, Landroidx/vectordrawable/a/a/i$a;

    check-cast v1, Landroidx/vectordrawable/a/a/i$a;

    invoke-direct {v2, v1}, Landroidx/vectordrawable/a/a/i$a;-><init>(Landroidx/vectordrawable/a/a/i$a;)V

    .line 1498
    :goto_1
    iget-object v1, p0, Landroidx/vectordrawable/a/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1499
    iget-object v1, v2, Landroidx/vectordrawable/a/a/i$e;->m:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1500
    iget-object v1, v2, Landroidx/vectordrawable/a/a/i$e;->m:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1496
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown object in the tree!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    .line 1563
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i$c;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1564
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i$c;->j:Landroid/graphics/Matrix;

    iget v1, p0, Landroidx/vectordrawable/a/a/i$c;->d:F

    neg-float v1, v1

    iget v2, p0, Landroidx/vectordrawable/a/a/i$c;->e:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1565
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i$c;->j:Landroid/graphics/Matrix;

    iget v1, p0, Landroidx/vectordrawable/a/a/i$c;->f:F

    iget v2, p0, Landroidx/vectordrawable/a/a/i$c;->g:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1566
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i$c;->j:Landroid/graphics/Matrix;

    iget v1, p0, Landroidx/vectordrawable/a/a/i$c;->c:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1567
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i$c;->j:Landroid/graphics/Matrix;

    iget v1, p0, Landroidx/vectordrawable/a/a/i$c;->h:F

    iget v2, p0, Landroidx/vectordrawable/a/a/i$c;->d:F

    add-float/2addr v1, v2

    iget v2, p0, Landroidx/vectordrawable/a/a/i$c;->i:F

    iget p0, p0, Landroidx/vectordrawable/a/a/i$c;->e:F

    add-float/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public final a([I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1675
    :goto_0
    iget-object v2, p0, Landroidx/vectordrawable/a/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1676
    iget-object v2, p0, Landroidx/vectordrawable/a/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/vectordrawable/a/a/i$d;

    invoke-virtual {v2, p1}, Landroidx/vectordrawable/a/a/i$d;->a([I)Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final b()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1664
    :goto_0
    iget-object v2, p0, Landroidx/vectordrawable/a/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1665
    iget-object v2, p0, Landroidx/vectordrawable/a/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/vectordrawable/a/a/i$d;

    invoke-virtual {v2}, Landroidx/vectordrawable/a/a/i$d;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final getGroupName()Ljava/lang/String;
    .locals 0

    .line 1510
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i$c;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final getLocalMatrix()Landroid/graphics/Matrix;
    .locals 0

    .line 1514
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i$c;->j:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final getPivotX()F
    .locals 0

    .line 1586
    iget p0, p0, Landroidx/vectordrawable/a/a/i$c;->d:F

    return p0
.end method

.method public final getPivotY()F
    .locals 0

    .line 1599
    iget p0, p0, Landroidx/vectordrawable/a/a/i$c;->e:F

    return p0
.end method

.method public final getRotation()F
    .locals 0

    .line 1573
    iget p0, p0, Landroidx/vectordrawable/a/a/i$c;->c:F

    return p0
.end method

.method public final getScaleX()F
    .locals 0

    .line 1612
    iget p0, p0, Landroidx/vectordrawable/a/a/i$c;->f:F

    return p0
.end method

.method public final getScaleY()F
    .locals 0

    .line 1625
    iget p0, p0, Landroidx/vectordrawable/a/a/i$c;->g:F

    return p0
.end method

.method public final getTranslateX()F
    .locals 0

    .line 1638
    iget p0, p0, Landroidx/vectordrawable/a/a/i$c;->h:F

    return p0
.end method

.method public final getTranslateY()F
    .locals 0

    .line 1651
    iget p0, p0, Landroidx/vectordrawable/a/a/i$c;->i:F

    return p0
.end method

.method public final setPivotX(F)V
    .locals 1

    .line 1591
    iget v0, p0, Landroidx/vectordrawable/a/a/i$c;->d:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1592
    iput p1, p0, Landroidx/vectordrawable/a/a/i$c;->d:F

    .line 1593
    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/i$c;->a()V

    :cond_0
    return-void
.end method

.method public final setPivotY(F)V
    .locals 1

    .line 1604
    iget v0, p0, Landroidx/vectordrawable/a/a/i$c;->e:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1605
    iput p1, p0, Landroidx/vectordrawable/a/a/i$c;->e:F

    .line 1606
    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/i$c;->a()V

    :cond_0
    return-void
.end method

.method public final setRotation(F)V
    .locals 1

    .line 1578
    iget v0, p0, Landroidx/vectordrawable/a/a/i$c;->c:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1579
    iput p1, p0, Landroidx/vectordrawable/a/a/i$c;->c:F

    .line 1580
    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/i$c;->a()V

    :cond_0
    return-void
.end method

.method public final setScaleX(F)V
    .locals 1

    .line 1617
    iget v0, p0, Landroidx/vectordrawable/a/a/i$c;->f:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1618
    iput p1, p0, Landroidx/vectordrawable/a/a/i$c;->f:F

    .line 1619
    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/i$c;->a()V

    :cond_0
    return-void
.end method

.method public final setScaleY(F)V
    .locals 1

    .line 1630
    iget v0, p0, Landroidx/vectordrawable/a/a/i$c;->g:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1631
    iput p1, p0, Landroidx/vectordrawable/a/a/i$c;->g:F

    .line 1632
    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/i$c;->a()V

    :cond_0
    return-void
.end method

.method public final setTranslateX(F)V
    .locals 1

    .line 1643
    iget v0, p0, Landroidx/vectordrawable/a/a/i$c;->h:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1644
    iput p1, p0, Landroidx/vectordrawable/a/a/i$c;->h:F

    .line 1645
    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/i$c;->a()V

    :cond_0
    return-void
.end method

.method public final setTranslateY(F)V
    .locals 1

    .line 1656
    iget v0, p0, Landroidx/vectordrawable/a/a/i$c;->i:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1657
    iput p1, p0, Landroidx/vectordrawable/a/a/i$c;->i:F

    .line 1658
    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/i$c;->a()V

    :cond_0
    return-void
.end method
