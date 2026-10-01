.class public final Landroidx/constraintlayout/a/a/g;
.super Landroidx/constraintlayout/a/a/q;
.source "ConstraintWidgetContainer.java"


# instance fields
.field public a:Z

.field public aA:Z

.field public aB:Z

.field public aC:Z

.field public aD:I

.field public aE:I

.field public aF:I

.field public aG:Z

.field public aH:Z

.field public aI:Z

.field aJ:I

.field private aL:Landroidx/constraintlayout/a/a/p;

.field ar:I

.field as:I

.field at:I

.field au:I

.field av:I

.field aw:I

.field ax:[Landroidx/constraintlayout/a/a/d;

.field ay:[Landroidx/constraintlayout/a/a/d;

.field public az:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/constraintlayout/a/a/h;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Landroidx/constraintlayout/a/e;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 82
    invoke-direct {p0}, Landroidx/constraintlayout/a/a/q;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Landroidx/constraintlayout/a/a/g;->a:Z

    .line 47
    new-instance v1, Landroidx/constraintlayout/a/e;

    invoke-direct {v1}, Landroidx/constraintlayout/a/e;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/a/a/g;->b:Landroidx/constraintlayout/a/e;

    .line 56
    iput v0, p0, Landroidx/constraintlayout/a/a/g;->av:I

    .line 57
    iput v0, p0, Landroidx/constraintlayout/a/a/g;->aw:I

    const/4 v1, 0x4

    .line 59
    new-array v2, v1, [Landroidx/constraintlayout/a/a/d;

    iput-object v2, p0, Landroidx/constraintlayout/a/a/g;->ax:[Landroidx/constraintlayout/a/a/d;

    .line 60
    new-array v1, v1, [Landroidx/constraintlayout/a/a/d;

    iput-object v1, p0, Landroidx/constraintlayout/a/a/g;->ay:[Landroidx/constraintlayout/a/a/d;

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/a/a/g;->az:Ljava/util/List;

    .line 63
    iput-boolean v0, p0, Landroidx/constraintlayout/a/a/g;->aA:Z

    .line 64
    iput-boolean v0, p0, Landroidx/constraintlayout/a/a/g;->aB:Z

    .line 65
    iput-boolean v0, p0, Landroidx/constraintlayout/a/a/g;->aC:Z

    .line 66
    iput v0, p0, Landroidx/constraintlayout/a/a/g;->aD:I

    .line 67
    iput v0, p0, Landroidx/constraintlayout/a/a/g;->aE:I

    const/4 v1, 0x7

    .line 69
    iput v1, p0, Landroidx/constraintlayout/a/a/g;->aF:I

    .line 70
    iput-boolean v0, p0, Landroidx/constraintlayout/a/a/g;->aG:Z

    .line 72
    iput-boolean v0, p0, Landroidx/constraintlayout/a/a/g;->aH:Z

    .line 73
    iput-boolean v0, p0, Landroidx/constraintlayout/a/a/g;->aI:Z

    .line 166
    iput v0, p0, Landroidx/constraintlayout/a/a/g;->aJ:I

    return-void
.end method

.method private F()V
    .registers 4

    .line 613
    iget-object v0, p0, Landroidx/constraintlayout/a/a/g;->aK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 614
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/g;->b()V

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    .line 616
    iget-object v2, p0, Landroidx/constraintlayout/a/a/g;->aK:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/f;->b()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method private G()V
    .registers 2

    const/4 v0, 0x0

    .line 718
    iput v0, p0, Landroidx/constraintlayout/a/a/g;->av:I

    .line 719
    iput v0, p0, Landroidx/constraintlayout/a/a/g;->aw:I

    return-void
.end method

.method private c(Landroidx/constraintlayout/a/a/f;)V
    .registers 7

    .line 744
    iget v0, p0, Landroidx/constraintlayout/a/a/g;->av:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroidx/constraintlayout/a/a/g;->ay:[Landroidx/constraintlayout/a/a/d;

    array-length v1, v1

    if-lt v0, v1, :cond_18

    .line 745
    iget-object v0, p0, Landroidx/constraintlayout/a/a/g;->ay:[Landroidx/constraintlayout/a/a/d;

    iget-object v1, p0, Landroidx/constraintlayout/a/a/g;->ay:[Landroidx/constraintlayout/a/a/d;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    .line 746
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/a/a/d;

    iput-object v0, p0, Landroidx/constraintlayout/a/a/g;->ay:[Landroidx/constraintlayout/a/a/d;

    .line 748
    :cond_18
    iget-object v0, p0, Landroidx/constraintlayout/a/a/g;->ay:[Landroidx/constraintlayout/a/a/d;

    iget v1, p0, Landroidx/constraintlayout/a/a/g;->av:I

    new-instance v2, Landroidx/constraintlayout/a/a/d;

    const/4 v3, 0x0

    .line 14267
    iget-boolean v4, p0, Landroidx/constraintlayout/a/a/g;->a:Z

    .line 748
    invoke-direct {v2, p1, v3, v4}, Landroidx/constraintlayout/a/a/d;-><init>(Landroidx/constraintlayout/a/a/f;IZ)V

    aput-object v2, v0, v1

    .line 749
    iget p1, p0, Landroidx/constraintlayout/a/a/g;->av:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/constraintlayout/a/a/g;->av:I

    return-void
.end method

.method private d(Landroidx/constraintlayout/a/a/f;)V
    .registers 7

    .line 759
    iget v0, p0, Landroidx/constraintlayout/a/a/g;->aw:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Landroidx/constraintlayout/a/a/g;->ax:[Landroidx/constraintlayout/a/a/d;

    array-length v2, v2

    if-lt v0, v2, :cond_18

    .line 760
    iget-object v0, p0, Landroidx/constraintlayout/a/a/g;->ax:[Landroidx/constraintlayout/a/a/d;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/g;->ax:[Landroidx/constraintlayout/a/a/d;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    .line 761
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/a/a/d;

    iput-object v0, p0, Landroidx/constraintlayout/a/a/g;->ax:[Landroidx/constraintlayout/a/a/d;

    .line 763
    :cond_18
    iget-object v0, p0, Landroidx/constraintlayout/a/a/g;->ax:[Landroidx/constraintlayout/a/a/d;

    iget v2, p0, Landroidx/constraintlayout/a/a/g;->aw:I

    new-instance v3, Landroidx/constraintlayout/a/a/d;

    .line 15267
    iget-boolean v4, p0, Landroidx/constraintlayout/a/a/g;->a:Z

    .line 763
    invoke-direct {v3, p1, v1, v4}, Landroidx/constraintlayout/a/a/d;-><init>(Landroidx/constraintlayout/a/a/f;IZ)V

    aput-object v3, v0, v2

    .line 764
    iget p1, p0, Landroidx/constraintlayout/a/a/g;->aw:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/constraintlayout/a/a/g;->aw:I

    return-void
.end method


# virtual methods
.method public final B()V
    .registers 28

    move-object/from16 v1, p0

    .line 298
    iget v2, v1, Landroidx/constraintlayout/a/a/g;->M:I

    .line 299
    iget v3, v1, Landroidx/constraintlayout/a/a/g;->N:I

    .line 300
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/g;->m()I

    move-result v0

    const/4 v4, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 301
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/g;->n()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 302
    iput-boolean v4, v1, Landroidx/constraintlayout/a/a/g;->aH:Z

    .line 303
    iput-boolean v4, v1, Landroidx/constraintlayout/a/a/g;->aI:Z

    .line 305
    iget-object v0, v1, Landroidx/constraintlayout/a/a/g;->H:Landroidx/constraintlayout/a/a/f;

    if-eqz v0, :cond_a1

    .line 306
    iget-object v0, v1, Landroidx/constraintlayout/a/a/g;->aL:Landroidx/constraintlayout/a/a/p;

    if-nez v0, :cond_2a

    .line 307
    new-instance v0, Landroidx/constraintlayout/a/a/p;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/a/a/p;-><init>(Landroidx/constraintlayout/a/a/f;)V

    iput-object v0, v1, Landroidx/constraintlayout/a/a/g;->aL:Landroidx/constraintlayout/a/a/p;

    .line 309
    :cond_2a
    iget-object v0, v1, Landroidx/constraintlayout/a/a/g;->aL:Landroidx/constraintlayout/a/a/p;

    .line 1109
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/f;->k()I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/a/a/p;->a:I

    .line 1110
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/f;->l()I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/a/a/p;->b:I

    .line 1111
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/f;->m()I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/a/a/p;->c:I

    .line 1112
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/f;->n()I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/a/a/p;->d:I

    .line 1113
    iget-object v7, v0, Landroidx/constraintlayout/a/a/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v4

    :goto_4b
    if-ge v8, v7, :cond_8c

    .line 1115
    iget-object v9, v0, Landroidx/constraintlayout/a/a/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/a/a/p$a;

    .line 2061
    iget-object v10, v9, Landroidx/constraintlayout/a/a/p$a;->a:Landroidx/constraintlayout/a/a/e;

    .line 2118
    iget-object v10, v10, Landroidx/constraintlayout/a/a/e;->c:Landroidx/constraintlayout/a/a/e$c;

    .line 2061
    invoke-virtual {v1, v10}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v10

    iput-object v10, v9, Landroidx/constraintlayout/a/a/p$a;->a:Landroidx/constraintlayout/a/a/e;

    .line 2062
    iget-object v10, v9, Landroidx/constraintlayout/a/a/p$a;->a:Landroidx/constraintlayout/a/a/e;

    if-eqz v10, :cond_7e

    .line 2063
    iget-object v10, v9, Landroidx/constraintlayout/a/a/p$a;->a:Landroidx/constraintlayout/a/a/e;

    .line 2144
    iget-object v10, v10, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    .line 2063
    iput-object v10, v9, Landroidx/constraintlayout/a/a/p$a;->b:Landroidx/constraintlayout/a/a/e;

    .line 2064
    iget-object v10, v9, Landroidx/constraintlayout/a/a/p$a;->a:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v10}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v10

    iput v10, v9, Landroidx/constraintlayout/a/a/p$a;->c:I

    .line 2065
    iget-object v10, v9, Landroidx/constraintlayout/a/a/p$a;->a:Landroidx/constraintlayout/a/a/e;

    .line 3138
    iget v10, v10, Landroidx/constraintlayout/a/a/e;->g:I

    .line 2065
    iput v10, v9, Landroidx/constraintlayout/a/a/p$a;->d:I

    .line 2066
    iget-object v10, v9, Landroidx/constraintlayout/a/a/p$a;->a:Landroidx/constraintlayout/a/a/e;

    .line 3163
    iget v10, v10, Landroidx/constraintlayout/a/a/e;->h:I

    .line 2066
    iput v10, v9, Landroidx/constraintlayout/a/a/p$a;->e:I

    goto :goto_89

    :cond_7e
    const/4 v10, 0x0

    .line 2068
    iput-object v10, v9, Landroidx/constraintlayout/a/a/p$a;->b:Landroidx/constraintlayout/a/a/e;

    .line 2069
    iput v4, v9, Landroidx/constraintlayout/a/a/p$a;->c:I

    .line 2070
    sget v10, Landroidx/constraintlayout/a/a/e$b;->STRONG$4f4a4916:I

    iput v10, v9, Landroidx/constraintlayout/a/a/p$a;->d:I

    .line 2071
    iput v4, v9, Landroidx/constraintlayout/a/a/p$a;->e:I

    :goto_89
    add-int/lit8 v8, v8, 0x1

    goto :goto_4b

    .line 314
    :cond_8c
    iget v0, v1, Landroidx/constraintlayout/a/a/g;->ar:I

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/a/a/g;->c(I)V

    .line 315
    iget v0, v1, Landroidx/constraintlayout/a/a/g;->as:I

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/a/a/g;->d(I)V

    .line 316
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/g;->x()V

    .line 317
    iget-object v0, v1, Landroidx/constraintlayout/a/a/g;->b:Landroidx/constraintlayout/a/e;

    .line 3967
    iget-object v0, v0, Landroidx/constraintlayout/a/e;->g:Landroidx/constraintlayout/a/c;

    .line 317
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/a/a/g;->a(Landroidx/constraintlayout/a/c;)V

    goto :goto_a5

    .line 319
    :cond_a1
    iput v4, v1, Landroidx/constraintlayout/a/a/g;->M:I

    .line 320
    iput v4, v1, Landroidx/constraintlayout/a/a/g;->N:I

    .line 323
    :goto_a5
    iget v0, v1, Landroidx/constraintlayout/a/a/g;->aF:I

    const/16 v7, 0x20

    const/16 v8, 0x8

    const/4 v9, 0x1

    if-eqz v0, :cond_d0

    .line 324
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/a/a/g;->l(I)Z

    move-result v0

    if-nez v0, :cond_b7

    .line 325
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/a/a/g;->F()V

    .line 327
    :cond_b7
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/a/a/g;->l(I)Z

    move-result v0

    if-nez v0, :cond_cb

    .line 4630
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/a/a/g;->l(I)Z

    move-result v0

    if-nez v0, :cond_c8

    .line 4631
    iget v0, v1, Landroidx/constraintlayout/a/a/g;->aF:I

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/a/a/g;->a(I)V

    .line 4643
    :cond_c8
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/g;->D()V

    .line 330
    :cond_cb
    iget-object v0, v1, Landroidx/constraintlayout/a/a/g;->b:Landroidx/constraintlayout/a/e;

    iput-boolean v9, v0, Landroidx/constraintlayout/a/e;->d:Z

    goto :goto_d4

    .line 332
    :cond_d0
    iget-object v0, v1, Landroidx/constraintlayout/a/a/g;->b:Landroidx/constraintlayout/a/e;

    iput-boolean v4, v0, Landroidx/constraintlayout/a/e;->d:Z

    .line 336
    :goto_d4
    iget-object v0, v1, Landroidx/constraintlayout/a/a/g;->G:[I

    aget v10, v0, v9

    .line 337
    iget-object v0, v1, Landroidx/constraintlayout/a/a/g;->G:[I

    aget v11, v0, v4

    .line 345
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/a/a/g;->G()V

    .line 347
    iget-object v0, v1, Landroidx/constraintlayout/a/a/g;->az:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_f8

    .line 348
    iget-object v0, v1, Landroidx/constraintlayout/a/a/g;->az:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 349
    iget-object v0, v1, Landroidx/constraintlayout/a/a/g;->az:Ljava/util/List;

    new-instance v12, Landroidx/constraintlayout/a/a/h;

    iget-object v13, v1, Landroidx/constraintlayout/a/a/g;->aK:Ljava/util/ArrayList;

    invoke-direct {v12, v13}, Landroidx/constraintlayout/a/a/h;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v4, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 353
    :cond_f8
    iget-object v0, v1, Landroidx/constraintlayout/a/a/g;->az:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    .line 354
    iget-object v13, v1, Landroidx/constraintlayout/a/a/g;->aK:Ljava/util/ArrayList;

    .line 355
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/g;->y()I

    move-result v0

    sget v14, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    if-eq v0, v14, :cond_113

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/g;->z()I

    move-result v0

    sget v14, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    if-ne v0, v14, :cond_111

    goto :goto_113

    :cond_111
    move v14, v4

    goto :goto_114

    :cond_113
    :goto_113
    move v14, v9

    :goto_114
    move v0, v4

    move v15, v0

    :goto_116
    if-ge v15, v12, :cond_4d5

    .line 357
    iget-boolean v8, v1, Landroidx/constraintlayout/a/a/g;->aG:Z

    if-nez v8, :cond_4d5

    .line 358
    iget-object v8, v1, Landroidx/constraintlayout/a/a/g;->az:Ljava/util/List;

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/a/a/h;

    iget-boolean v8, v8, Landroidx/constraintlayout/a/a/h;->d:Z

    if-nez v8, :cond_4ba

    .line 361
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/a/a/g;->l(I)Z

    move-result v8

    if-eqz v8, :cond_19c

    .line 362
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/g;->y()I

    move-result v8

    sget v7, Landroidx/constraintlayout/a/a/f$a;->FIXED$689812f:I

    if-ne v8, v7, :cond_18e

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/g;->z()I

    move-result v7

    sget v8, Landroidx/constraintlayout/a/a/f$a;->FIXED$689812f:I

    if-ne v7, v8, :cond_18e

    .line 363
    iget-object v7, v1, Landroidx/constraintlayout/a/a/g;->az:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/a/a/h;

    .line 5099
    iget-object v8, v7, Landroidx/constraintlayout/a/a/h;->j:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_151

    .line 5100
    iget-object v7, v7, Landroidx/constraintlayout/a/a/h;->j:Ljava/util/List;

    goto :goto_189

    .line 5102
    :cond_151
    iget-object v8, v7, Landroidx/constraintlayout/a/a/h;->a:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    :goto_157
    if-ge v4, v8, :cond_174

    .line 5104
    iget-object v9, v7, Landroidx/constraintlayout/a/a/h;->a:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/a/a/f;

    move/from16 v18, v8

    .line 5105
    iget-boolean v8, v9, Landroidx/constraintlayout/a/a/f;->af:Z

    if-nez v8, :cond_16e

    .line 5106
    iget-object v8, v7, Landroidx/constraintlayout/a/a/h;->j:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/a/a/h;->a(Ljava/util/ArrayList;Landroidx/constraintlayout/a/a/f;)V

    :cond_16e
    add-int/lit8 v4, v4, 0x1

    move/from16 v8, v18

    const/4 v9, 0x1

    goto :goto_157

    .line 5109
    :cond_174
    iget-object v4, v7, Landroidx/constraintlayout/a/a/h;->k:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 5110
    iget-object v4, v7, Landroidx/constraintlayout/a/a/h;->k:Ljava/util/List;

    iget-object v8, v7, Landroidx/constraintlayout/a/a/h;->a:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5111
    iget-object v4, v7, Landroidx/constraintlayout/a/a/h;->k:Ljava/util/List;

    iget-object v8, v7, Landroidx/constraintlayout/a/a/h;->j:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 5112
    iget-object v7, v7, Landroidx/constraintlayout/a/a/h;->j:Ljava/util/List;

    .line 363
    :goto_189
    check-cast v7, Ljava/util/ArrayList;

    iput-object v7, v1, Landroidx/constraintlayout/a/a/g;->aK:Ljava/util/ArrayList;

    goto :goto_19c

    .line 365
    :cond_18e
    iget-object v4, v1, Landroidx/constraintlayout/a/a/g;->az:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/a/a/h;

    iget-object v4, v4, Landroidx/constraintlayout/a/a/h;->a:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, v1, Landroidx/constraintlayout/a/a/g;->aK:Ljava/util/ArrayList;

    .line 368
    :cond_19c
    :goto_19c
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/a/a/g;->G()V

    .line 369
    iget-object v4, v1, Landroidx/constraintlayout/a/a/g;->aK:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v7, 0x0

    :goto_1a6
    if-ge v7, v4, :cond_1bc

    .line 375
    iget-object v8, v1, Landroidx/constraintlayout/a/a/g;->aK:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/a/a/f;

    .line 376
    instance-of v9, v8, Landroidx/constraintlayout/a/a/q;

    if-eqz v9, :cond_1b9

    .line 377
    check-cast v8, Landroidx/constraintlayout/a/a/q;

    invoke-virtual {v8}, Landroidx/constraintlayout/a/a/q;->B()V

    :cond_1b9
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a6

    :cond_1bc
    move v9, v0

    const/4 v0, 0x0

    const/4 v7, 0x1

    :goto_1bf
    if-eqz v7, :cond_48c

    move/from16 v19, v7

    const/4 v8, 0x1

    add-int/lit8 v7, v0, 0x1

    .line 386
    :try_start_1c6
    iget-object v0, v1, Landroidx/constraintlayout/a/a/g;->b:Landroidx/constraintlayout/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/e;->b()V

    .line 387
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/a/a/g;->G()V

    .line 397
    iget-object v0, v1, Landroidx/constraintlayout/a/a/g;->b:Landroidx/constraintlayout/a/e;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/a/a/g;->b(Landroidx/constraintlayout/a/e;)V
    :try_end_1d3
    .catch Ljava/lang/Exception; {:try_start_1c6 .. :try_end_1d3} :catch_2de

    const/4 v0, 0x0

    :goto_1d4
    if-ge v0, v4, :cond_1f3

    .line 399
    :try_start_1d6
    iget-object v8, v1, Landroidx/constraintlayout/a/a/g;->aK:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/a/a/f;
    :try_end_1de
    .catch Ljava/lang/Exception; {:try_start_1d6 .. :try_end_1de} :catch_1ea

    move/from16 v20, v9

    .line 400
    :try_start_1e0
    iget-object v9, v1, Landroidx/constraintlayout/a/a/g;->b:Landroidx/constraintlayout/a/e;

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/a/a/f;->b(Landroidx/constraintlayout/a/e;)V

    add-int/lit8 v0, v0, 0x1

    move/from16 v9, v20

    goto :goto_1d4

    :catch_1ea
    move-exception v0

    move/from16 v20, v9

    :goto_1ed
    move/from16 v24, v2

    move/from16 v23, v3

    goto/16 :goto_2e5

    :cond_1f3
    move/from16 v20, v9

    .line 403
    iget-object v0, v1, Landroidx/constraintlayout/a/a/g;->b:Landroidx/constraintlayout/a/e;

    .line 5180
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/a/a/g;->a(Landroidx/constraintlayout/a/e;)V

    .line 5181
    iget-object v8, v1, Landroidx/constraintlayout/a/a/g;->aK:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_201
    if-ge v9, v8, :cond_268

    move/from16 v21, v8

    .line 5184
    iget-object v8, v1, Landroidx/constraintlayout/a/a/g;->aK:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/a/a/f;
    :try_end_20d
    .catch Ljava/lang/Exception; {:try_start_1e0 .. :try_end_20d} :catch_2db

    move/from16 v22, v12

    .line 5185
    :try_start_20f
    instance-of v12, v8, Landroidx/constraintlayout/a/a/g;

    if-eqz v12, :cond_24c

    .line 5186
    iget-object v12, v8, Landroidx/constraintlayout/a/a/f;->G:[I

    const/16 v16, 0x0

    aget v12, v12, v16
    :try_end_219
    .catch Ljava/lang/Exception; {:try_start_20f .. :try_end_219} :catch_261

    move/from16 v23, v3

    .line 5187
    :try_start_21b
    iget-object v3, v8, Landroidx/constraintlayout/a/a/f;->G:[I

    const/16 v17, 0x1

    aget v3, v3, v17
    :try_end_221
    .catch Ljava/lang/Exception; {:try_start_21b .. :try_end_221} :catch_247

    move/from16 v24, v2

    .line 5188
    :try_start_223
    sget v2, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    if-ne v12, v2, :cond_22c

    .line 5189
    sget v2, Landroidx/constraintlayout/a/a/f$a;->FIXED$689812f:I

    invoke-virtual {v8, v2}, Landroidx/constraintlayout/a/a/f;->j(I)V

    .line 5191
    :cond_22c
    sget v2, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    if-ne v3, v2, :cond_235

    .line 5192
    sget v2, Landroidx/constraintlayout/a/a/f$a;->FIXED$689812f:I

    invoke-virtual {v8, v2}, Landroidx/constraintlayout/a/a/f;->k(I)V

    .line 5194
    :cond_235
    invoke-virtual {v8, v0}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/e;)V

    .line 5195
    sget v2, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    if-ne v12, v2, :cond_23f

    .line 5196
    invoke-virtual {v8, v12}, Landroidx/constraintlayout/a/a/f;->j(I)V

    .line 5198
    :cond_23f
    sget v2, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    if-ne v3, v2, :cond_256

    .line 5199
    invoke-virtual {v8, v3}, Landroidx/constraintlayout/a/a/f;->k(I)V

    goto :goto_256

    :catch_247
    move-exception v0

    move/from16 v24, v2

    goto/16 :goto_2e7

    :cond_24c
    move/from16 v24, v2

    move/from16 v23, v3

    .line 5202
    invoke-static {v1, v0, v8}, Landroidx/constraintlayout/a/a/k;->a(Landroidx/constraintlayout/a/a/g;Landroidx/constraintlayout/a/e;Landroidx/constraintlayout/a/a/f;)V

    .line 5203
    invoke-virtual {v8, v0}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/e;)V

    :cond_256
    :goto_256
    add-int/lit8 v9, v9, 0x1

    move/from16 v8, v21

    move/from16 v12, v22

    move/from16 v3, v23

    move/from16 v2, v24

    goto :goto_201

    :catch_261
    move-exception v0

    move/from16 v24, v2

    move/from16 v23, v3

    goto/16 :goto_2e7

    :cond_268
    move/from16 v24, v2

    move/from16 v23, v3

    move/from16 v22, v12

    .line 5207
    iget v2, v1, Landroidx/constraintlayout/a/a/g;->av:I

    if-lez v2, :cond_276

    const/4 v2, 0x0

    .line 5208
    invoke-static {v1, v0, v2}, Landroidx/constraintlayout/a/a/c;->a(Landroidx/constraintlayout/a/a/g;Landroidx/constraintlayout/a/e;I)V

    .line 5210
    :cond_276
    iget v2, v1, Landroidx/constraintlayout/a/a/g;->aw:I

    if-lez v2, :cond_27e

    const/4 v2, 0x1

    .line 5211
    invoke-static {v1, v0, v2}, Landroidx/constraintlayout/a/a/c;->a(Landroidx/constraintlayout/a/a/g;Landroidx/constraintlayout/a/e;I)V
    :try_end_27e
    .catch Ljava/lang/Exception; {:try_start_223 .. :try_end_27e} :catch_2d9

    .line 405
    :cond_27e
    :try_start_27e
    iget-object v0, v1, Landroidx/constraintlayout/a/a/g;->b:Landroidx/constraintlayout/a/e;

    .line 5377
    sget-object v2, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    const-wide/16 v8, 0x1

    if-eqz v2, :cond_290

    .line 5378
    sget-object v2, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;
    :try_end_288
    .catch Ljava/lang/Exception; {:try_start_27e .. :try_end_288} :catch_2d4

    move-object/from16 v25, v13

    :try_start_28a
    iget-wide v12, v2, Landroidx/constraintlayout/a/f;->e:J

    add-long/2addr v12, v8

    iput-wide v12, v2, Landroidx/constraintlayout/a/f;->e:J

    goto :goto_292

    :cond_290
    move-object/from16 v25, v13

    .line 5383
    :goto_292
    iget-boolean v2, v0, Landroidx/constraintlayout/a/e;->d:Z

    if-eqz v2, :cond_2cb

    .line 5384
    sget-object v2, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    if-eqz v2, :cond_2a1

    .line 5385
    sget-object v2, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    iget-wide v12, v2, Landroidx/constraintlayout/a/f;->r:J

    add-long/2addr v12, v8

    iput-wide v12, v2, Landroidx/constraintlayout/a/f;->r:J

    :cond_2a1
    const/4 v2, 0x0

    .line 5388
    :goto_2a2
    iget v3, v0, Landroidx/constraintlayout/a/e;->f:I

    if-ge v2, v3, :cond_2b3

    .line 5389
    iget-object v3, v0, Landroidx/constraintlayout/a/e;->c:[Landroidx/constraintlayout/a/b;

    aget-object v3, v3, v2

    .line 5390
    iget-boolean v3, v3, Landroidx/constraintlayout/a/b;->e:Z

    if-nez v3, :cond_2b0

    const/4 v2, 0x0

    goto :goto_2b4

    :cond_2b0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a2

    :cond_2b3
    const/4 v2, 0x1

    :goto_2b4
    if-nez v2, :cond_2bc

    .line 5396
    iget-object v2, v0, Landroidx/constraintlayout/a/e;->b:Landroidx/constraintlayout/a/e$a;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/e$a;)V

    goto :goto_2d0

    .line 5398
    :cond_2bc
    sget-object v2, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    if-eqz v2, :cond_2c7

    .line 5399
    sget-object v2, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    iget-wide v12, v2, Landroidx/constraintlayout/a/f;->q:J

    add-long/2addr v12, v8

    iput-wide v12, v2, Landroidx/constraintlayout/a/f;->q:J

    .line 5401
    :cond_2c7
    invoke-virtual {v0}, Landroidx/constraintlayout/a/e;->e()V

    goto :goto_2d0

    .line 5404
    :cond_2cb
    iget-object v2, v0, Landroidx/constraintlayout/a/e;->b:Landroidx/constraintlayout/a/e$a;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/e$a;)V
    :try_end_2d0
    .catch Ljava/lang/Exception; {:try_start_28a .. :try_end_2d0} :catch_2d2

    :goto_2d0
    const/4 v9, 0x1

    goto :goto_2fd

    :catch_2d2
    move-exception v0

    goto :goto_2d7

    :catch_2d4
    move-exception v0

    move-object/from16 v25, v13

    :goto_2d7
    const/4 v9, 0x1

    goto :goto_2eb

    :catch_2d9
    move-exception v0

    goto :goto_2e7

    :catch_2db
    move-exception v0

    goto/16 :goto_1ed

    :catch_2de
    move-exception v0

    move/from16 v24, v2

    move/from16 v23, v3

    move/from16 v20, v9

    :goto_2e5
    move/from16 v22, v12

    :goto_2e7
    move-object/from16 v25, v13

    move/from16 v9, v19

    .line 408
    :goto_2eb
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 409
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "EXCEPTION : "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_2fd
    const/4 v0, 0x2

    if-eqz v9, :cond_34e

    .line 412
    sget-object v2, Landroidx/constraintlayout/a/a/k;->a:[Z

    const/16 v16, 0x0

    .line 6222
    aput-boolean v16, v2, v0

    .line 6223
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/g;->A()V

    .line 6224
    iget-object v3, v1, Landroidx/constraintlayout/a/a/g;->aK:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v8, v16

    :goto_311
    if-ge v8, v3, :cond_34c

    .line 6226
    iget-object v9, v1, Landroidx/constraintlayout/a/a/g;->aK:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/a/a/f;

    .line 6227
    invoke-virtual {v9}, Landroidx/constraintlayout/a/a/f;->A()V

    .line 6228
    iget-object v12, v9, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v12, v12, v16

    sget v13, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    if-ne v12, v13, :cond_332

    .line 6229
    invoke-virtual {v9}, Landroidx/constraintlayout/a/a/f;->m()I

    move-result v12

    .line 6821
    iget v13, v9, Landroidx/constraintlayout/a/a/f;->V:I

    if-ge v12, v13, :cond_332

    const/4 v12, 0x1

    .line 6230
    aput-boolean v12, v2, v0

    goto :goto_333

    :cond_332
    const/4 v12, 0x1

    .line 6232
    :goto_333
    iget-object v13, v9, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v13, v13, v12

    sget v0, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    if-ne v13, v0, :cond_346

    .line 6233
    invoke-virtual {v9}, Landroidx/constraintlayout/a/a/f;->n()I

    move-result v0

    .line 6842
    iget v9, v9, Landroidx/constraintlayout/a/a/f;->W:I

    if-ge v0, v9, :cond_346

    const/4 v0, 0x2

    .line 6234
    aput-boolean v12, v2, v0

    :cond_346
    add-int/lit8 v8, v8, 0x1

    const/4 v0, 0x2

    const/16 v16, 0x0

    goto :goto_311

    :cond_34c
    move v2, v0

    goto :goto_390

    .line 414
    :cond_34e
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/g;->A()V

    const/4 v0, 0x0

    :goto_352
    if-ge v0, v4, :cond_38f

    .line 416
    iget-object v2, v1, Landroidx/constraintlayout/a/a/g;->aK:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/a/a/f;

    .line 417
    iget-object v3, v2, Landroidx/constraintlayout/a/a/f;->G:[I

    const/4 v8, 0x0

    aget v3, v3, v8

    sget v8, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    if-ne v3, v8, :cond_374

    .line 419
    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/f;->m()I

    move-result v3

    .line 7821
    iget v8, v2, Landroidx/constraintlayout/a/a/f;->V:I

    if-ge v3, v8, :cond_374

    .line 420
    sget-object v0, Landroidx/constraintlayout/a/a/k;->a:[Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    goto :goto_390

    :cond_374
    const/4 v3, 0x1

    .line 423
    iget-object v8, v2, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v8, v8, v3

    sget v9, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    if-ne v8, v9, :cond_38b

    .line 425
    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/f;->n()I

    move-result v8

    .line 7842
    iget v2, v2, Landroidx/constraintlayout/a/a/f;->W:I

    if-ge v8, v2, :cond_38b

    .line 426
    sget-object v0, Landroidx/constraintlayout/a/a/k;->a:[Z

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    goto :goto_390

    :cond_38b
    const/4 v2, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_352

    :cond_38f
    const/4 v2, 0x2

    :goto_390
    if-eqz v14, :cond_401

    const/16 v3, 0x8

    if-ge v7, v3, :cond_403

    .line 433
    sget-object v0, Landroidx/constraintlayout/a/a/k;->a:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_403

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_39f
    if-ge v0, v4, :cond_3c2

    .line 439
    iget-object v9, v1, Landroidx/constraintlayout/a/a/g;->aK:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/a/a/f;

    .line 440
    iget v12, v9, Landroidx/constraintlayout/a/a/f;->M:I

    invoke-virtual {v9}, Landroidx/constraintlayout/a/a/f;->m()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 441
    iget v12, v9, Landroidx/constraintlayout/a/a/f;->N:I

    invoke-virtual {v9}, Landroidx/constraintlayout/a/a/f;->n()I

    move-result v9

    add-int/2addr v12, v9

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_39f

    .line 443
    :cond_3c2
    iget v0, v1, Landroidx/constraintlayout/a/a/g;->T:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 444
    iget v2, v1, Landroidx/constraintlayout/a/a/g;->U:I

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 445
    sget v8, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    if-ne v11, v8, :cond_3e6

    .line 446
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/g;->m()I

    move-result v8

    if-ge v8, v0, :cond_3e6

    .line 451
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/a/a/g;->e(I)V

    .line 452
    iget-object v0, v1, Landroidx/constraintlayout/a/a/g;->G:[I

    sget v8, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    const/4 v9, 0x0

    aput v8, v0, v9

    const/4 v0, 0x1

    const/16 v20, 0x1

    goto :goto_3e7

    :cond_3e6
    const/4 v0, 0x0

    .line 457
    :goto_3e7
    sget v8, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    if-ne v10, v8, :cond_3fe

    .line 458
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/g;->n()I

    move-result v8

    if-ge v8, v2, :cond_3fe

    .line 463
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/a/a/g;->f(I)V

    .line 464
    iget-object v0, v1, Landroidx/constraintlayout/a/a/g;->G:[I

    sget v2, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    const/4 v8, 0x1

    aput v2, v0, v8

    const/4 v0, 0x1

    const/4 v9, 0x1

    goto :goto_406

    :cond_3fe
    move/from16 v9, v20

    goto :goto_406

    :cond_401
    const/16 v3, 0x8

    :cond_403
    move/from16 v9, v20

    const/4 v0, 0x0

    .line 471
    :goto_406
    iget v2, v1, Landroidx/constraintlayout/a/a/g;->T:I

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/g;->m()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 472
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/g;->m()I

    move-result v8

    if-le v2, v8, :cond_422

    .line 477
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/a/a/g;->e(I)V

    .line 478
    iget-object v0, v1, Landroidx/constraintlayout/a/a/g;->G:[I

    sget v2, Landroidx/constraintlayout/a/a/f$a;->FIXED$689812f:I

    const/4 v8, 0x0

    aput v2, v0, v8

    const/4 v0, 0x1

    const/4 v9, 0x1

    .line 482
    :cond_422
    iget v2, v1, Landroidx/constraintlayout/a/a/g;->U:I

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/g;->n()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 483
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/g;->n()I

    move-result v8

    if-le v2, v8, :cond_43f

    .line 488
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/a/a/g;->f(I)V

    .line 489
    iget-object v0, v1, Landroidx/constraintlayout/a/a/g;->G:[I

    sget v2, Landroidx/constraintlayout/a/a/f$a;->FIXED$689812f:I

    const/4 v8, 0x1

    aput v2, v0, v8

    move v0, v8

    move v9, v0

    goto :goto_440

    :cond_43f
    const/4 v8, 0x1

    :goto_440
    if-nez v9, :cond_47d

    .line 495
    iget-object v2, v1, Landroidx/constraintlayout/a/a/g;->G:[I

    const/4 v12, 0x0

    aget v2, v2, v12

    sget v13, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    if-ne v2, v13, :cond_460

    if-lez v5, :cond_460

    .line 497
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/g;->m()I

    move-result v2

    if-le v2, v5, :cond_460

    .line 503
    iput-boolean v8, v1, Landroidx/constraintlayout/a/a/g;->aH:Z

    .line 505
    iget-object v0, v1, Landroidx/constraintlayout/a/a/g;->G:[I

    sget v2, Landroidx/constraintlayout/a/a/f$a;->FIXED$689812f:I

    aput v2, v0, v12

    .line 506
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/a/a/g;->e(I)V

    move v0, v8

    move v9, v0

    .line 510
    :cond_460
    iget-object v2, v1, Landroidx/constraintlayout/a/a/g;->G:[I

    aget v2, v2, v8

    sget v12, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    if-ne v2, v12, :cond_47d

    if-lez v6, :cond_47d

    .line 512
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/g;->n()I

    move-result v2

    if-le v2, v6, :cond_47d

    .line 518
    iput-boolean v8, v1, Landroidx/constraintlayout/a/a/g;->aI:Z

    .line 520
    iget-object v0, v1, Landroidx/constraintlayout/a/a/g;->G:[I

    sget v2, Landroidx/constraintlayout/a/a/f$a;->FIXED$689812f:I

    aput v2, v0, v8

    .line 521
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/a/a/g;->f(I)V

    const/4 v0, 0x1

    const/4 v9, 0x1

    :cond_47d
    move/from16 v12, v22

    move/from16 v3, v23

    move/from16 v2, v24

    move-object/from16 v13, v25

    move/from16 v26, v7

    move v7, v0

    move/from16 v0, v26

    goto/16 :goto_1bf

    :cond_48c
    move/from16 v24, v2

    move/from16 v23, v3

    move/from16 v20, v9

    move/from16 v22, v12

    move-object/from16 v25, v13

    const/16 v3, 0x8

    .line 534
    iget-object v0, v1, Landroidx/constraintlayout/a/a/g;->az:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/a/a/h;

    .line 8158
    iget-object v2, v0, Landroidx/constraintlayout/a/a/h;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_4a7
    if-ge v4, v2, :cond_4b7

    .line 8160
    iget-object v7, v0, Landroidx/constraintlayout/a/a/h;->k:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/a/a/f;

    .line 8163
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/a/a/h;->a(Landroidx/constraintlayout/a/a/f;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4a7

    :cond_4b7
    move/from16 v0, v20

    goto :goto_4c4

    :cond_4ba
    move/from16 v24, v2

    move/from16 v23, v3

    move/from16 v22, v12

    move-object/from16 v25, v13

    const/16 v3, 0x8

    :goto_4c4
    add-int/lit8 v15, v15, 0x1

    move v8, v3

    move/from16 v12, v22

    move/from16 v3, v23

    move/from16 v2, v24

    move-object/from16 v13, v25

    const/4 v4, 0x0

    const/16 v7, 0x20

    const/4 v9, 0x1

    goto/16 :goto_116

    :cond_4d5
    move/from16 v24, v2

    move/from16 v23, v3

    move-object/from16 v25, v13

    .line 536
    move-object/from16 v13, v25

    check-cast v13, Ljava/util/ArrayList;

    iput-object v13, v1, Landroidx/constraintlayout/a/a/g;->aK:Ljava/util/ArrayList;

    .line 538
    iget-object v2, v1, Landroidx/constraintlayout/a/a/g;->H:Landroidx/constraintlayout/a/a/f;

    if-eqz v2, :cond_555

    .line 539
    iget v2, v1, Landroidx/constraintlayout/a/a/g;->T:I

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/g;->m()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 540
    iget v3, v1, Landroidx/constraintlayout/a/a/g;->U:I

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/g;->n()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 542
    iget-object v4, v1, Landroidx/constraintlayout/a/a/g;->aL:Landroidx/constraintlayout/a/a/p;

    .line 9126
    iget v5, v4, Landroidx/constraintlayout/a/a/p;->a:I

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/a/a/f;->c(I)V

    .line 9127
    iget v5, v4, Landroidx/constraintlayout/a/a/p;->b:I

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/a/a/f;->d(I)V

    .line 9128
    iget v5, v4, Landroidx/constraintlayout/a/a/p;->c:I

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/a/a/f;->e(I)V

    .line 9129
    iget v5, v4, Landroidx/constraintlayout/a/a/p;->d:I

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/a/a/f;->f(I)V

    .line 9130
    iget-object v5, v4, Landroidx/constraintlayout/a/a/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_516
    if-ge v6, v5, :cond_542

    .line 9131
    iget-object v7, v4, Landroidx/constraintlayout/a/a/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/a/a/p$a;

    .line 10081
    iget-object v8, v7, Landroidx/constraintlayout/a/a/p$a;->a:Landroidx/constraintlayout/a/a/e;

    .line 10118
    iget-object v8, v8, Landroidx/constraintlayout/a/a/e;->c:Landroidx/constraintlayout/a/a/e$c;

    .line 10081
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v18

    .line 10082
    iget-object v8, v7, Landroidx/constraintlayout/a/a/p$a;->b:Landroidx/constraintlayout/a/a/e;

    iget v9, v7, Landroidx/constraintlayout/a/a/p$a;->c:I

    iget v12, v7, Landroidx/constraintlayout/a/a/p$a;->d:I

    iget v7, v7, Landroidx/constraintlayout/a/a/p$a;->e:I

    const/16 v21, -0x1

    const/16 v24, 0x0

    move-object/from16 v19, v8

    move/from16 v20, v9

    move/from16 v22, v12

    move/from16 v23, v7

    .line 10194
    invoke-virtual/range {v18 .. v24}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/e;IIIIZ)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_516

    .line 543
    :cond_542
    iget v4, v1, Landroidx/constraintlayout/a/a/g;->ar:I

    add-int/2addr v2, v4

    iget v4, v1, Landroidx/constraintlayout/a/a/g;->at:I

    add-int/2addr v2, v4

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/a/a/g;->e(I)V

    .line 544
    iget v2, v1, Landroidx/constraintlayout/a/a/g;->as:I

    add-int/2addr v3, v2

    iget v2, v1, Landroidx/constraintlayout/a/a/g;->au:I

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/a/a/g;->f(I)V

    goto :goto_55d

    :cond_555
    move/from16 v2, v24

    .line 546
    iput v2, v1, Landroidx/constraintlayout/a/a/g;->M:I

    move/from16 v2, v23

    .line 547
    iput v2, v1, Landroidx/constraintlayout/a/a/g;->N:I

    :goto_55d
    if-eqz v0, :cond_569

    .line 550
    iget-object v0, v1, Landroidx/constraintlayout/a/a/g;->G:[I

    const/4 v2, 0x0

    aput v11, v0, v2

    .line 551
    iget-object v0, v1, Landroidx/constraintlayout/a/a/g;->G:[I

    const/4 v2, 0x1

    aput v10, v0, v2

    .line 566
    :cond_569
    iget-object v0, v1, Landroidx/constraintlayout/a/a/g;->b:Landroidx/constraintlayout/a/e;

    .line 10967
    iget-object v0, v0, Landroidx/constraintlayout/a/e;->g:Landroidx/constraintlayout/a/c;

    .line 566
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/a/a/g;->a(Landroidx/constraintlayout/a/c;)V

    .line 11555
    iget-object v0, v1, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    .line 11121
    move-object v2, v1

    check-cast v2, Landroidx/constraintlayout/a/a/g;

    :goto_575
    if-eqz v0, :cond_582

    .line 12555
    iget-object v3, v0, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    .line 11126
    instance-of v4, v0, Landroidx/constraintlayout/a/a/g;

    if-eqz v4, :cond_580

    .line 11127
    move-object v2, v0

    check-cast v2, Landroidx/constraintlayout/a/a/g;

    :cond_580
    move-object v0, v3

    goto :goto_575

    :cond_582
    if-ne v1, v2, :cond_587

    .line 568
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/g;->w()V

    :cond_587
    return-void
.end method

.method public final C()V
    .registers 2

    .line 573
    invoke-direct {p0}, Landroidx/constraintlayout/a/a/g;->F()V

    .line 574
    iget v0, p0, Landroidx/constraintlayout/a/a/g;->aF:I

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/a/a/g;->a(I)V

    return-void
.end method

.method public final D()V
    .registers 4

    .line 578
    sget-object v0, Landroidx/constraintlayout/a/a/e$c;->LEFT:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/a/a/g;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v0

    .line 13058
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 579
    sget-object v1, Landroidx/constraintlayout/a/a/e$c;->TOP:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/a/a/g;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object p0

    .line 14058
    iget-object p0, p0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 585
    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;F)V

    .line 586
    invoke-virtual {p0, v2, v1}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/a/m;F)V

    return-void
.end method

.method public final a(I)V
    .registers 5

    .line 280
    invoke-super {p0, p1}, Landroidx/constraintlayout/a/a/q;->a(I)V

    .line 281
    iget-object v0, p0, Landroidx/constraintlayout/a/a/g;->aK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    .line 283
    iget-object v2, p0, Landroidx/constraintlayout/a/a/g;->aK:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/a/a/f;->a(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method final a(Landroidx/constraintlayout/a/a/f;I)V
    .registers 4

    if-nez p2, :cond_6

    .line 731
    invoke-direct {p0, p1}, Landroidx/constraintlayout/a/a/g;->c(Landroidx/constraintlayout/a/a/f;)V

    return-void

    :cond_6
    const/4 v0, 0x1

    if-ne p2, v0, :cond_c

    .line 733
    invoke-direct {p0, p1}, Landroidx/constraintlayout/a/a/g;->d(Landroidx/constraintlayout/a/a/f;)V

    :cond_c
    return-void
.end method

.method public final f()V
    .registers 3

    .line 146
    iget-object v0, p0, Landroidx/constraintlayout/a/a/g;->b:Landroidx/constraintlayout/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/e;->b()V

    const/4 v0, 0x0

    .line 147
    iput v0, p0, Landroidx/constraintlayout/a/a/g;->ar:I

    .line 148
    iput v0, p0, Landroidx/constraintlayout/a/a/g;->at:I

    .line 149
    iput v0, p0, Landroidx/constraintlayout/a/a/g;->as:I

    .line 150
    iput v0, p0, Landroidx/constraintlayout/a/a/g;->au:I

    .line 151
    iget-object v1, p0, Landroidx/constraintlayout/a/a/g;->az:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 152
    iput-boolean v0, p0, Landroidx/constraintlayout/a/a/g;->aG:Z

    .line 153
    invoke-super {p0}, Landroidx/constraintlayout/a/a/q;->f()V

    return-void
.end method

.method public final f(II)V
    .registers 5

    .line 604
    iget-object v0, p0, Landroidx/constraintlayout/a/a/g;->G:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sget v1, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Landroidx/constraintlayout/a/a/g;->e:Landroidx/constraintlayout/a/a/n;

    if-eqz v0, :cond_12

    .line 605
    iget-object v0, p0, Landroidx/constraintlayout/a/a/g;->e:Landroidx/constraintlayout/a/a/n;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/a/a/n;->a(I)V

    .line 607
    :cond_12
    iget-object p1, p0, Landroidx/constraintlayout/a/a/g;->G:[I

    const/4 v0, 0x1

    aget p1, p1, v0

    sget v0, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    if-eq p1, v0, :cond_24

    iget-object p1, p0, Landroidx/constraintlayout/a/a/g;->f:Landroidx/constraintlayout/a/a/n;

    if-eqz p1, :cond_24

    .line 608
    iget-object p0, p0, Landroidx/constraintlayout/a/a/g;->f:Landroidx/constraintlayout/a/a/n;

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/a/a/n;->a(I)V

    :cond_24
    return-void
.end method

.method public final l(I)Z
    .registers 2

    .line 131
    iget p0, p0, Landroidx/constraintlayout/a/a/g;->aF:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method
