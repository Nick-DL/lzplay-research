.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintLayout$a;
    }
.end annotation


# instance fields
.field a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroidx/constraintlayout/a/a/g;

.field c:I

.field d:I

.field e:I

.field f:I

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/widget/ConstraintHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/a/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:I

.field private o:Landroidx/constraintlayout/widget/a;

.field private p:I

.field private q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private r:I

.field private s:I

.field private t:Landroidx/constraintlayout/a/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 570
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 499
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 502
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Ljava/util/ArrayList;

    .line 507
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Ljava/util/ArrayList;

    .line 509
    new-instance p1, Landroidx/constraintlayout/a/a/g;

    invoke-direct {p1}, Landroidx/constraintlayout/a/a/g;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    const/4 p1, 0x0

    .line 511
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    .line 512
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    const v0, 0x7fffffff

    .line 513
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    .line 514
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    const/4 v0, 0x1

    .line 516
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Z

    const/4 v0, 0x7

    .line 517
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    const/4 v0, 0x0

    .line 518
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Landroidx/constraintlayout/widget/a;

    const/4 v1, -0x1

    .line 520
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 522
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ljava/util/HashMap;

    .line 525
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 526
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    .line 527
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:I

    .line 528
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 529
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 530
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 571
    invoke-direct {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 575
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 499
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 502
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Ljava/util/ArrayList;

    .line 507
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Ljava/util/ArrayList;

    .line 509
    new-instance p1, Landroidx/constraintlayout/a/a/g;

    invoke-direct {p1}, Landroidx/constraintlayout/a/a/g;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    const/4 p1, 0x0

    .line 511
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    .line 512
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    const v0, 0x7fffffff

    .line 513
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    .line 514
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    const/4 v0, 0x1

    .line 516
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Z

    const/4 v0, 0x7

    .line 517
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    const/4 v0, 0x0

    .line 518
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Landroidx/constraintlayout/widget/a;

    const/4 v0, -0x1

    .line 520
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 522
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ljava/util/HashMap;

    .line 525
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 526
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    .line 527
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:I

    .line 528
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 529
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 530
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 576
    invoke-direct {p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 580
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 499
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 502
    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x4

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Ljava/util/ArrayList;

    .line 507
    new-instance p1, Ljava/util/ArrayList;

    const/16 p3, 0x64

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Ljava/util/ArrayList;

    .line 509
    new-instance p1, Landroidx/constraintlayout/a/a/g;

    invoke-direct {p1}, Landroidx/constraintlayout/a/a/g;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    const/4 p1, 0x0

    .line 511
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    .line 512
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    const p3, 0x7fffffff

    .line 513
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    .line 514
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    const/4 p3, 0x1

    .line 516
    iput-boolean p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Z

    const/4 p3, 0x7

    .line 517
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    const/4 p3, 0x0

    .line 518
    iput-object p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Landroidx/constraintlayout/widget/a;

    const/4 p3, -0x1

    .line 520
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 522
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ljava/util/HashMap;

    .line 525
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 526
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    .line 527
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:I

    .line 528
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 529
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 530
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 581
    invoke-direct {p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method protected static a()Landroidx/constraintlayout/widget/ConstraintLayout$a;
    .registers 1

    .line 1980
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>()V

    return-object v0
.end method

.method private a(Landroid/util/AttributeSet;)V
    .registers 15

    .line 595
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    .line 3587
    iput-object p0, v0, Landroidx/constraintlayout/a/a/f;->aa:Ljava/lang/Object;

    .line 596
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 597
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Landroidx/constraintlayout/widget/a;

    if-eqz p1, :cond_e4

    .line 599
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 600
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_22
    if-ge v3, v1, :cond_e1

    .line 602
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 603
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_minWidth:I

    if-ne v4, v5, :cond_36

    .line 604
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    goto/16 :goto_dd

    .line 605
    :cond_36
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_minHeight:I

    if-ne v4, v5, :cond_44

    .line 606
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    goto/16 :goto_dd

    .line 607
    :cond_44
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_maxWidth:I

    if-ne v4, v5, :cond_52

    .line 608
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    goto/16 :goto_dd

    .line 609
    :cond_52
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_maxHeight:I

    if-ne v4, v5, :cond_60

    .line 610
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    goto/16 :goto_dd

    .line 611
    :cond_60
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_layout_optimizationLevel:I

    if-ne v4, v5, :cond_6e

    .line 612
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    goto/16 :goto_dd

    .line 613
    :cond_6e
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_constraintSet:I

    if-ne v4, v5, :cond_dd

    .line 614
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 616
    :try_start_76
    new-instance v5, Landroidx/constraintlayout/widget/a;

    invoke-direct {v5}, Landroidx/constraintlayout/widget/a;-><init>()V

    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Landroidx/constraintlayout/widget/a;

    .line 617
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Landroidx/constraintlayout/widget/a;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 4145
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 4146
    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7
    :try_end_8b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_76 .. :try_end_8b} :catch_d9

    .line 4151
    :try_start_8b
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    :goto_8f
    const/4 v9, 0x1

    if-eq v8, v9, :cond_db

    if-eqz v8, :cond_c7

    const/4 v10, 0x2

    if-eq v8, v10, :cond_98

    goto :goto_ca

    .line 4159
    :cond_98
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 4160
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v10

    .line 4189
    new-instance v11, Landroidx/constraintlayout/widget/a$a;

    invoke-direct {v11, v2}, Landroidx/constraintlayout/widget/a$a;-><init>(B)V

    .line 4190
    sget-object v12, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet:[I

    invoke-virtual {v6, v10, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 4191
    invoke-static {v11, v10}, Landroidx/constraintlayout/widget/a;->a(Landroidx/constraintlayout/widget/a$a;Landroid/content/res/TypedArray;)V

    .line 4192
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    const-string v10, "Guideline"

    .line 4161
    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_bb

    .line 4162
    iput-boolean v9, v11, Landroidx/constraintlayout/widget/a$a;->a:Z

    .line 4164
    :cond_bb
    iget-object v8, v5, Landroidx/constraintlayout/widget/a;->a:Ljava/util/HashMap;

    iget v9, v11, Landroidx/constraintlayout/widget/a$a;->d:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ca

    .line 4156
    :cond_c7
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 4153
    :goto_ca
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8
    :try_end_ce
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8b .. :try_end_ce} :catch_d4
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_ce} :catch_cf
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8b .. :try_end_ce} :catch_d9

    goto :goto_8f

    :catch_cf
    move-exception v5

    .line 4176
    :try_start_d0
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_db

    :catch_d4
    move-exception v5

    .line 4174
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_d8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d0 .. :try_end_d8} :catch_d9

    goto :goto_db

    .line 619
    :catch_d9
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Landroidx/constraintlayout/widget/a;

    .line 621
    :cond_db
    :goto_db
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    :cond_dd
    :goto_dd
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_22

    .line 624
    :cond_e1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 626
    :cond_e4
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 5113
    iput p0, p1, Landroidx/constraintlayout/a/a/g;->aF:I

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 542
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_33

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_33

    .line 543
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ljava/util/HashMap;

    if-nez v0, :cond_13

    .line 544
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ljava/util/HashMap;

    .line 546
    :cond_13
    check-cast p1, Ljava/lang/String;

    const-string v0, "/"

    .line 547
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    add-int/lit8 v0, v0, 0x1

    .line 549
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 551
    :cond_24
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 552
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    return-void
.end method

.method private final b(I)Landroidx/constraintlayout/a/a/f;
    .registers 3

    if-nez p1, :cond_5

    .line 1132
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    return-object p0

    .line 1134
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_20

    .line 1136
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_20

    if-eq v0, p0, :cond_20

    .line 1137
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-ne p1, p0, :cond_20

    .line 1138
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_20
    if-ne v0, p0, :cond_25

    .line 1142
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    return-object p0

    :cond_25
    if-nez v0, :cond_29

    const/4 p0, 0x0

    return-object p0

    .line 1144
    :cond_29
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->al:Landroidx/constraintlayout/a/a/f;

    return-object p0
.end method

.method private b()V
    .registers 5

    .line 1860
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/g;->B()V

    .line 1861
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:Landroidx/constraintlayout/a/f;

    if-eqz v0, :cond_12

    .line 1862
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:Landroidx/constraintlayout/a/f;

    iget-wide v0, p0, Landroidx/constraintlayout/a/f;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/constraintlayout/a/f;->c:J

    :cond_12
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .registers 2

    .line 2015
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public final a(Landroid/view/View;)Landroidx/constraintlayout/a/a/f;
    .registers 2

    if-ne p1, p0, :cond_5

    .line 1155
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    return-object p0

    :cond_5
    if-nez p1, :cond_9

    const/4 p0, 0x0

    return-object p0

    .line 1157
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->al:Landroidx/constraintlayout/a/a/f;

    return-object p0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 560
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 561
    check-cast p1, Ljava/lang/String;

    .line 562
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ljava/util/HashMap;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 563
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 634
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 635
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0xe

    if-ge p2, p3, :cond_c

    .line 636
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_c
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 1996
    instance-of p0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    return p0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 20

    .line 2023
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2024
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 2025
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 2026
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 2027
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_19
    if-ge v4, v0, :cond_b4

    move-object/from16 v5, p0

    .line 2031
    invoke-virtual {v5, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2032
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_b0

    .line 2035
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_b0

    .line 2036
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_b0

    .line 2037
    check-cast v6, Ljava/lang/String;

    const-string v7, ","

    .line 2038
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2039
    array-length v7, v6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_b0

    .line 2040
    aget-object v7, v6, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    .line 2041
    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x2

    .line 2042
    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x3

    .line 2043
    aget-object v6, v6, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v7, v7

    const/high16 v10, 0x44870000    # 1080.0f

    div-float/2addr v7, v10

    mul-float/2addr v7, v1

    float-to-int v7, v7

    int-to-float v8, v8

    const/high16 v11, 0x44f00000    # 1920.0f

    div-float/2addr v8, v11

    mul-float/2addr v8, v2

    float-to-int v8, v8

    int-to-float v9, v9

    div-float/2addr v9, v10

    mul-float/2addr v9, v1

    float-to-int v9, v9

    int-to-float v6, v6

    div-float/2addr v6, v11

    mul-float/2addr v6, v2

    float-to-int v6, v6

    .line 2048
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    const/high16 v10, -0x10000

    .line 2049
    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v14, v7

    int-to-float v13, v8

    add-int/2addr v7, v9

    int-to-float v7, v7

    move-object/from16 v10, p1

    move v11, v14

    move v12, v13

    move v9, v13

    move v13, v7

    move/from16 v16, v14

    move v14, v9

    move-object/from16 v17, v15

    .line 2050
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v8, v6

    int-to-float v6, v8

    move v11, v7

    move v12, v9

    move v14, v6

    .line 2051
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v12, v6

    move/from16 v13, v16

    .line 2052
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v11, v16

    move v14, v9

    .line 2053
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v8, -0xff0100

    .line 2054
    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setColor(I)V

    move v12, v9

    move v13, v7

    move v14, v6

    move-object v8, v15

    .line 2055
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v12, v6

    move v14, v9

    .line 2056
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_b0
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_19

    :cond_b4
    return-void
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 1

    .line 39980
    new-instance p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>()V

    return-object p0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 40972
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1988
    new-instance p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getMaxHeight()I
    .registers 1

    .line 787
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    return p0
.end method

.method public getMaxWidth()I
    .registers 1

    .line 777
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    return p0
.end method

.method public getMinHeight()I
    .registers 1

    .line 740
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    return p0
.end method

.method public getMinWidth()I
    .registers 1

    .line 730
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    return p0
.end method

.method public getOptimizationLevel()I
    .registers 1

    .line 1965
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    .line 39122
    iget p0, p0, Landroidx/constraintlayout/a/a/g;->aF:I

    return p0
.end method

.method protected onLayout(ZIIII)V
    .registers 11

    .line 1875
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result p1

    .line 1876
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isInEditMode()Z

    move-result p2

    const/4 p3, 0x0

    move p4, p3

    :goto_a
    if-ge p4, p1, :cond_58

    .line 1878
    invoke-virtual {p0, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 1879
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 1880
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->al:Landroidx/constraintlayout/a/a/f;

    .line 1882
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2a

    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Y:Z

    if-nez v2, :cond_2a

    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Z:Z

    if-nez v2, :cond_2a

    if-eqz p2, :cond_55

    .line 1887
    :cond_2a
    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->aa:Z

    if-nez v0, :cond_55

    .line 1890
    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/f;->o()I

    move-result v0

    .line 1891
    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/f;->p()I

    move-result v2

    .line 1892
    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/f;->m()I

    move-result v3

    add-int/2addr v3, v0

    .line 1893
    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/f;->n()I

    move-result v1

    add-int/2addr v1, v2

    .line 1915
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 1916
    instance-of v4, p5, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v4, :cond_55

    .line 1917
    check-cast p5, Landroidx/constraintlayout/widget/Placeholder;

    .line 1918
    invoke-virtual {p5}, Landroidx/constraintlayout/widget/Placeholder;->getContent()Landroid/view/View;

    move-result-object p5

    if-eqz p5, :cond_55

    .line 1920
    invoke-virtual {p5, p3}, Landroid/view/View;->setVisibility(I)V

    .line 1921
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    :cond_55
    add-int/lit8 p4, p4, 0x1

    goto :goto_a

    .line 1925
    :cond_58
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_70

    :goto_60
    if-ge p3, p1, :cond_70

    .line 1928
    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 1929
    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintHelper;->b()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_60

    :cond_70
    return-void
.end method

.method protected onMeasure(II)V
    .registers 62

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1505
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1513
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1514
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1515
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 1516
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 1542
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingLeft()I

    move-result v7

    .line 1543
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingTop()I

    move-result v8

    .line 1545
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v9, v7}, Landroidx/constraintlayout/a/a/g;->c(I)V

    .line 1546
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v9, v8}, Landroidx/constraintlayout/a/a/g;->d(I)V

    .line 1547
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    iget v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    .line 6109
    iget-object v9, v9, Landroidx/constraintlayout/a/a/f;->u:[I

    const/4 v11, 0x0

    aput v10, v9, v11

    .line 1548
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    iget v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    .line 6113
    iget-object v9, v9, Landroidx/constraintlayout/a/a/f;->u:[I

    const/4 v12, 0x1

    aput v10, v9, v12

    .line 1550
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x11

    if-lt v9, v10, :cond_50

    .line 1551
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutDirection()I

    move-result v13

    if-ne v13, v12, :cond_4d

    move v13, v12

    goto :goto_4e

    :cond_4d
    move v13, v11

    .line 6259
    :goto_4e
    iput-boolean v13, v9, Landroidx/constraintlayout/a/a/g;->a:Z

    .line 6798
    :cond_50
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 6799
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 6800
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .line 6801
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 6803
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingTop()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingBottom()I

    move-result v17

    add-int v16, v16, v17

    .line 6804
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingLeft()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingRight()I

    move-result v18

    add-int v17, v17, v18

    .line 6806
    sget v18, Landroidx/constraintlayout/a/a/f$a;->FIXED$689812f:I

    .line 6807
    sget v19, Landroidx/constraintlayout/a/a/f$a;->FIXED$689812f:I

    .line 6811
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    const/high16 v10, -0x80000000

    const/high16 v12, 0x40000000    # 2.0f

    if-eq v9, v10, :cond_96

    if-eqz v9, :cond_93

    if-eq v9, v12, :cond_89

    :goto_85
    move v13, v11

    :goto_86
    move/from16 v9, v18

    goto :goto_99

    .line 6823
    :cond_89
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    sub-int v9, v9, v17

    move v13, v9

    goto :goto_86

    .line 6819
    :cond_93
    sget v18, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    goto :goto_85

    .line 6814
    :cond_96
    sget v18, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    goto :goto_86

    :goto_99
    if-eq v14, v10, :cond_b0

    if-eqz v14, :cond_ad

    if-eq v14, v12, :cond_a3

    :goto_9f
    move v15, v11

    :goto_a0
    move/from16 v14, v19

    goto :goto_b3

    .line 6837
    :cond_a3
    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    sub-int v14, v14, v16

    move v15, v14

    goto :goto_a0

    .line 6833
    :cond_ad
    sget v19, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    goto :goto_9f

    .line 6828
    :cond_b0
    sget v19, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    goto :goto_a0

    .line 6841
    :goto_b3
    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v12, v11}, Landroidx/constraintlayout/a/a/g;->g(I)V

    .line 6842
    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v12, v11}, Landroidx/constraintlayout/a/a/g;->h(I)V

    .line 6843
    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v12, v9}, Landroidx/constraintlayout/a/a/g;->j(I)V

    .line 6844
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v9, v13}, Landroidx/constraintlayout/a/a/g;->e(I)V

    .line 6845
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v9, v14}, Landroidx/constraintlayout/a/a/g;->k(I)V

    .line 6846
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v9, v15}, Landroidx/constraintlayout/a/a/g;->f(I)V

    .line 6847
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingLeft()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingRight()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v9, v12}, Landroidx/constraintlayout/a/a/g;->g(I)V

    .line 6848
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v9, v12}, Landroidx/constraintlayout/a/a/g;->h(I)V

    .line 1555
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v9}, Landroidx/constraintlayout/a/a/g;->m()I

    move-result v9

    .line 1556
    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v12}, Landroidx/constraintlayout/a/a/g;->n()I

    move-result v12

    .line 1559
    iget-boolean v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Z

    if-eqz v13, :cond_61d

    .line 1560
    iput-boolean v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Z

    .line 7791
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v13

    move v14, v11

    :goto_10a
    if-ge v14, v13, :cond_11b

    .line 7795
    invoke-virtual {v0, v14}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 7796
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->isLayoutRequested()Z

    move-result v16

    if-eqz v16, :cond_118

    const/4 v13, 0x1

    goto :goto_11c

    :cond_118
    add-int/lit8 v14, v14, 0x1

    goto :goto_10a

    :cond_11b
    move v13, v11

    :goto_11c
    if-eqz v13, :cond_60f

    .line 7802
    iget-object v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 7808
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isInEditMode()Z

    move-result v13

    .line 7810
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v14

    if-eqz v13, :cond_16f

    move v15, v11

    :goto_12e
    if-ge v15, v14, :cond_16f

    .line 7816
    invoke-virtual {v0, v15}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 7818
    :try_start_134
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {v11, v10}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v10

    .line 7819
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v0, v10, v11}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v11, 0x2f

    .line 7820
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11
    :try_end_151
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_134 .. :try_end_151} :catch_167

    move/from16 v20, v7

    const/4 v7, -0x1

    if-eq v11, v7, :cond_15c

    add-int/lit8 v11, v11, 0x1

    .line 7822
    :try_start_158
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 7824
    :cond_15c
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getId()I

    move-result v7

    invoke-direct {v0, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(I)Landroidx/constraintlayout/a/a/f;

    move-result-object v7

    .line 8659
    iput-object v10, v7, Landroidx/constraintlayout/a/a/f;->ac:Ljava/lang/String;
    :try_end_166
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_158 .. :try_end_166} :catch_169

    goto :goto_169

    :catch_167
    move/from16 v20, v7

    :catch_169
    :goto_169
    add-int/lit8 v15, v15, 0x1

    move/from16 v7, v20

    const/4 v11, 0x0

    goto :goto_12e

    :cond_16f
    move/from16 v20, v7

    const/4 v7, 0x0

    :goto_172
    if-ge v7, v14, :cond_184

    .line 7833
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 7834
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/view/View;)Landroidx/constraintlayout/a/a/f;

    move-result-object v10

    if-eqz v10, :cond_181

    .line 7838
    invoke-virtual {v10}, Landroidx/constraintlayout/a/a/f;->f()V

    :cond_181
    add-int/lit8 v7, v7, 0x1

    goto :goto_172

    .line 7841
    :cond_184
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    const/4 v10, -0x1

    if-eq v7, v10, :cond_1a7

    const/4 v7, 0x0

    :goto_18a
    if-ge v7, v14, :cond_1a7

    .line 7843
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 7844
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v11

    iget v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    if-ne v11, v15, :cond_1a4

    instance-of v11, v10, Landroidx/constraintlayout/widget/Constraints;

    if-eqz v11, :cond_1a4

    .line 7845
    check-cast v10, Landroidx/constraintlayout/widget/Constraints;

    invoke-virtual {v10}, Landroidx/constraintlayout/widget/Constraints;->getConstraintSet()Landroidx/constraintlayout/widget/a;

    move-result-object v10

    iput-object v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Landroidx/constraintlayout/widget/a;

    :cond_1a4
    add-int/lit8 v7, v7, 0x1

    goto :goto_18a

    .line 7849
    :cond_1a7
    iget-object v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Landroidx/constraintlayout/widget/a;

    if-eqz v7, :cond_1b0

    .line 7850
    iget-object v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Landroidx/constraintlayout/widget/a;

    invoke-virtual {v7, v0}, Landroidx/constraintlayout/widget/a;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 7853
    :cond_1b0
    iget-object v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v7}, Landroidx/constraintlayout/a/a/g;->E()V

    .line 7855
    iget-object v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1ce

    const/4 v10, 0x0

    :goto_1be
    if-ge v10, v7, :cond_1ce

    .line 7858
    iget-object v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 7859
    invoke-virtual {v11, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1be

    :cond_1ce
    const/4 v7, 0x0

    :goto_1cf
    if-ge v7, v14, :cond_20e

    .line 7864
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 7865
    instance-of v11, v10, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v11, :cond_20b

    .line 7866
    check-cast v10, Landroidx/constraintlayout/widget/Placeholder;

    .line 9147
    iget v11, v10, Landroidx/constraintlayout/widget/Placeholder;->a:I

    const/4 v15, -0x1

    if-ne v11, v15, :cond_1eb

    .line 9148
    invoke-virtual {v10}, Landroidx/constraintlayout/widget/Placeholder;->isInEditMode()Z

    move-result v11

    if-nez v11, :cond_1eb

    .line 9149
    iget v11, v10, Landroidx/constraintlayout/widget/Placeholder;->c:I

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/widget/Placeholder;->setVisibility(I)V

    .line 9153
    :cond_1eb
    iget v11, v10, Landroidx/constraintlayout/widget/Placeholder;->a:I

    invoke-virtual {v0, v11}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, v10, Landroidx/constraintlayout/widget/Placeholder;->b:Landroid/view/View;

    .line 9154
    iget-object v11, v10, Landroidx/constraintlayout/widget/Placeholder;->b:Landroid/view/View;

    if-eqz v11, :cond_20b

    .line 9155
    iget-object v11, v10, Landroidx/constraintlayout/widget/Placeholder;->b:Landroid/view/View;

    .line 9156
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    const/4 v15, 0x1

    .line 9157
    iput-boolean v15, v11, Landroidx/constraintlayout/widget/ConstraintLayout$a;->aa:Z

    .line 9158
    iget-object v11, v10, Landroidx/constraintlayout/widget/Placeholder;->b:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Landroid/view/View;->setVisibility(I)V

    .line 9159
    invoke-virtual {v10, v15}, Landroidx/constraintlayout/widget/Placeholder;->setVisibility(I)V

    :cond_20b
    add-int/lit8 v7, v7, 0x1

    goto :goto_1cf

    :cond_20e
    const/4 v7, 0x0

    :goto_20f
    if-ge v7, v14, :cond_606

    .line 7871
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 7872
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/view/View;)Landroidx/constraintlayout/a/a/f;

    move-result-object v11

    if-eqz v11, :cond_5ea

    .line 7876
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 7877
    invoke-virtual {v15}, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a()V

    move/from16 v27, v14

    .line 7878
    iget-boolean v14, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->am:Z

    if-eqz v14, :cond_230

    const/4 v14, 0x0

    .line 7879
    iput-boolean v14, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->am:Z

    :catch_22d
    :cond_22d
    move/from16 v28, v8

    goto :goto_261

    :cond_230
    if-eqz v13, :cond_22d

    .line 7886
    :try_start_232
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v14
    :try_end_236
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_232 .. :try_end_236} :catch_22d

    move/from16 v28, v8

    :try_start_238
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v14, v8}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    .line 7887
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v0, v8, v14}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v14, "id/"

    .line 7888
    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, 0x3

    invoke-virtual {v8, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 7889
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v14

    invoke-direct {v0, v14}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(I)Landroidx/constraintlayout/a/a/f;

    move-result-object v14

    .line 9659
    iput-object v8, v14, Landroidx/constraintlayout/a/a/f;->ac:Ljava/lang/String;
    :try_end_261
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_238 .. :try_end_261} :catch_261

    .line 7895
    :catch_261
    :goto_261
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v8

    .line 10634
    iput v8, v11, Landroidx/constraintlayout/a/a/f;->ab:I

    .line 7896
    iget-boolean v8, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->aa:Z

    if-eqz v8, :cond_26f

    const/16 v8, 0x8

    .line 11634
    iput v8, v11, Landroidx/constraintlayout/a/a/f;->ab:I

    .line 12587
    :cond_26f
    iput-object v10, v11, Landroidx/constraintlayout/a/a/f;->aa:Ljava/lang/Object;

    .line 7900
    iget-object v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v8, v11}, Landroidx/constraintlayout/a/a/g;->a(Landroidx/constraintlayout/a/a/f;)V

    .line 7902
    iget-boolean v8, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->W:Z

    if-eqz v8, :cond_27e

    iget-boolean v8, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->V:Z

    if-nez v8, :cond_283

    .line 7903
    :cond_27e
    iget-object v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Ljava/util/ArrayList;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7906
    :cond_283
    iget-boolean v8, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Y:Z

    if-eqz v8, :cond_2c4

    .line 7907
    check-cast v11, Landroidx/constraintlayout/a/a/i;

    .line 7908
    iget v8, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->ai:I

    .line 7909
    iget v10, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->aj:I

    .line 7910
    iget v14, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->ak:F

    move/from16 v29, v8

    .line 7911
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v30, v10

    const/16 v10, 0x11

    if-ge v8, v10, :cond_2a0

    .line 7912
    iget v8, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a:I

    .line 7913
    iget v10, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->b:I

    .line 7914
    iget v14, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->c:F

    goto :goto_2a4

    :cond_2a0
    move/from16 v8, v29

    move/from16 v10, v30

    :goto_2a4
    const/high16 v15, -0x40800000    # -1.0f

    cmpl-float v15, v14, v15

    if-eqz v15, :cond_2b7

    .line 7917
    invoke-virtual {v11, v14}, Landroidx/constraintlayout/a/a/i;->a(F)V

    :cond_2ad
    :goto_2ad
    move/from16 v45, v3

    move/from16 v44, v4

    move/from16 v38, v5

    move/from16 v37, v6

    goto/16 :goto_5f6

    :cond_2b7
    const/4 v14, -0x1

    if-eq v8, v14, :cond_2be

    .line 7919
    invoke-virtual {v11, v8}, Landroidx/constraintlayout/a/a/i;->m(I)V

    goto :goto_2ad

    :cond_2be
    if-eq v10, v14, :cond_2ad

    .line 7921
    invoke-virtual {v11, v10}, Landroidx/constraintlayout/a/a/i;->n(I)V

    goto :goto_2ad

    :cond_2c4
    const/4 v14, -0x1

    .line 7923
    iget v8, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->d:I

    if-ne v8, v14, :cond_30d

    iget v8, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->e:I

    if-ne v8, v14, :cond_30d

    iget v8, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->f:I

    if-ne v8, v14, :cond_30d

    iget v8, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->g:I

    if-ne v8, v14, :cond_30d

    iget v8, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->q:I

    if-ne v8, v14, :cond_30d

    iget v8, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->p:I

    if-ne v8, v14, :cond_30d

    iget v8, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->r:I

    if-ne v8, v14, :cond_30d

    iget v8, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->s:I

    if-ne v8, v14, :cond_30d

    iget v8, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->h:I

    if-ne v8, v14, :cond_30d

    iget v8, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->i:I

    if-ne v8, v14, :cond_30d

    iget v8, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->j:I

    if-ne v8, v14, :cond_30d

    iget v8, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->k:I

    if-ne v8, v14, :cond_30d

    iget v8, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l:I

    if-ne v8, v14, :cond_30d

    iget v8, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Q:I

    if-ne v8, v14, :cond_30d

    iget v8, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->R:I

    if-ne v8, v14, :cond_30d

    iget v8, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->m:I

    if-ne v8, v14, :cond_30d

    iget v8, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->width:I

    if-eq v8, v14, :cond_30d

    iget v8, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->height:I

    if-ne v8, v14, :cond_2ad

    .line 7943
    :cond_30d
    iget v8, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->ab:I

    .line 7944
    iget v10, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->ac:I

    .line 7945
    iget v14, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->ad:I

    move/from16 v31, v8

    .line 7946
    iget v8, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->ae:I

    move/from16 v32, v8

    .line 7947
    iget v8, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->af:I

    move/from16 v33, v8

    .line 7948
    iget v8, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->ag:I

    move/from16 v34, v8

    .line 7949
    iget v8, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->ah:F

    move/from16 v35, v8

    .line 7951
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v36, v10

    const/16 v10, 0x11

    if-ge v8, v10, :cond_38d

    .line 7954
    iget v8, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->d:I

    .line 7955
    iget v14, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->e:I

    .line 7956
    iget v10, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->f:I

    move/from16 v37, v6

    .line 7957
    iget v6, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->g:I

    move/from16 v38, v5

    .line 7958
    iget v5, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->t:I

    move/from16 v39, v5

    .line 7959
    iget v5, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->v:I

    move/from16 v40, v5

    .line 7960
    iget v5, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->z:F

    move/from16 v41, v5

    const/4 v5, -0x1

    if-ne v8, v5, :cond_35b

    if-ne v14, v5, :cond_35b

    move/from16 v42, v8

    .line 7963
    iget v8, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->q:I

    if-eq v8, v5, :cond_353

    .line 7964
    iget v8, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->q:I

    goto :goto_35f

    .line 7965
    :cond_353
    iget v8, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->p:I

    if-eq v8, v5, :cond_35d

    .line 7966
    iget v8, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->p:I

    move v14, v8

    goto :goto_35d

    :cond_35b
    move/from16 v42, v8

    :cond_35d
    :goto_35d
    move/from16 v8, v42

    :goto_35f
    if-ne v10, v5, :cond_380

    if-ne v6, v5, :cond_380

    move/from16 v43, v6

    .line 7970
    iget v6, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->r:I

    if-eq v6, v5, :cond_371

    .line 7971
    iget v6, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->r:I

    move/from16 v45, v3

    move/from16 v44, v4

    move v10, v6

    goto :goto_386

    .line 7972
    :cond_371
    iget v6, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->s:I

    if-eq v6, v5, :cond_382

    .line 7973
    iget v6, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->s:I

    move/from16 v45, v3

    move/from16 v44, v4

    move/from16 v26, v39

    move/from16 v4, v41

    goto :goto_3a3

    :cond_380
    move/from16 v43, v6

    :cond_382
    move/from16 v45, v3

    move/from16 v44, v4

    :goto_386
    move/from16 v26, v39

    move/from16 v4, v41

    move/from16 v6, v43

    goto :goto_3a3

    :cond_38d
    move/from16 v38, v5

    move/from16 v37, v6

    const/4 v5, -0x1

    move/from16 v45, v3

    move/from16 v44, v4

    move v10, v14

    move/from16 v8, v31

    move/from16 v6, v32

    move/from16 v26, v33

    move/from16 v40, v34

    move/from16 v4, v35

    move/from16 v14, v36

    .line 7979
    :goto_3a3
    iget v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->m:I

    if-eq v3, v5, :cond_3c4

    .line 7980
    iget v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->m:I

    invoke-direct {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(I)Landroidx/constraintlayout/a/a/f;

    move-result-object v23

    if-eqz v23, :cond_512

    .line 7982
    iget v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->o:F

    iget v4, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->n:I

    .line 12605
    sget-object v22, Landroidx/constraintlayout/a/a/e$c;->CENTER:Landroidx/constraintlayout/a/a/e$c;

    sget-object v24, Landroidx/constraintlayout/a/a/e$c;->CENTER:Landroidx/constraintlayout/a/a/e$c;

    const/16 v26, 0x0

    move-object/from16 v21, v11

    move/from16 v25, v4

    invoke-virtual/range {v21 .. v26}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/e$c;II)V

    .line 12607
    iput v3, v11, Landroidx/constraintlayout/a/a/f;->v:F

    goto/16 :goto_512

    :cond_3c4
    move v3, v5

    if-eq v8, v3, :cond_3dc

    .line 7987
    invoke-direct {v0, v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(I)Landroidx/constraintlayout/a/a/f;

    move-result-object v23

    if-eqz v23, :cond_3da

    .line 7989
    sget-object v22, Landroidx/constraintlayout/a/a/e$c;->LEFT:Landroidx/constraintlayout/a/a/e$c;

    sget-object v24, Landroidx/constraintlayout/a/a/e$c;->LEFT:Landroidx/constraintlayout/a/a/e$c;

    iget v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->leftMargin:I

    move-object/from16 v21, v11

    move/from16 v25, v3

    invoke-virtual/range {v21 .. v26}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/e$c;II)V

    :cond_3da
    :goto_3da
    const/4 v3, -0x1

    goto :goto_3f2

    :cond_3dc
    if-eq v14, v3, :cond_3f2

    .line 7994
    invoke-direct {v0, v14}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(I)Landroidx/constraintlayout/a/a/f;

    move-result-object v23

    if-eqz v23, :cond_3da

    .line 7996
    sget-object v22, Landroidx/constraintlayout/a/a/e$c;->LEFT:Landroidx/constraintlayout/a/a/e$c;

    sget-object v24, Landroidx/constraintlayout/a/a/e$c;->RIGHT:Landroidx/constraintlayout/a/a/e$c;

    iget v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->leftMargin:I

    move-object/from16 v21, v11

    move/from16 v25, v3

    invoke-virtual/range {v21 .. v26}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/e$c;II)V

    goto :goto_3da

    :cond_3f2
    :goto_3f2
    if-eq v10, v3, :cond_40a

    .line 8004
    invoke-direct {v0, v10}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(I)Landroidx/constraintlayout/a/a/f;

    move-result-object v23

    if-eqz v23, :cond_421

    .line 8006
    sget-object v22, Landroidx/constraintlayout/a/a/e$c;->RIGHT:Landroidx/constraintlayout/a/a/e$c;

    sget-object v24, Landroidx/constraintlayout/a/a/e$c;->LEFT:Landroidx/constraintlayout/a/a/e$c;

    iget v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->rightMargin:I

    move-object/from16 v21, v11

    move/from16 v25, v3

    move/from16 v26, v40

    invoke-virtual/range {v21 .. v26}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/e$c;II)V

    goto :goto_421

    :cond_40a
    if-eq v6, v3, :cond_421

    .line 8011
    invoke-direct {v0, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(I)Landroidx/constraintlayout/a/a/f;

    move-result-object v23

    if-eqz v23, :cond_421

    .line 8013
    sget-object v22, Landroidx/constraintlayout/a/a/e$c;->RIGHT:Landroidx/constraintlayout/a/a/e$c;

    sget-object v24, Landroidx/constraintlayout/a/a/e$c;->RIGHT:Landroidx/constraintlayout/a/a/e$c;

    iget v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->rightMargin:I

    move-object/from16 v21, v11

    move/from16 v25, v3

    move/from16 v26, v40

    invoke-virtual/range {v21 .. v26}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/e$c;II)V

    .line 8020
    :cond_421
    :goto_421
    iget v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->h:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_440

    .line 8021
    iget v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->h:I

    invoke-direct {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(I)Landroidx/constraintlayout/a/a/f;

    move-result-object v23

    if-eqz v23, :cond_45e

    .line 8023
    sget-object v22, Landroidx/constraintlayout/a/a/e$c;->TOP:Landroidx/constraintlayout/a/a/e$c;

    sget-object v24, Landroidx/constraintlayout/a/a/e$c;->TOP:Landroidx/constraintlayout/a/a/e$c;

    iget v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->topMargin:I

    iget v5, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->u:I

    move-object/from16 v21, v11

    move/from16 v25, v3

    move/from16 v26, v5

    invoke-virtual/range {v21 .. v26}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/e$c;II)V

    goto :goto_45e

    .line 8027
    :cond_440
    iget v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->i:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_45e

    .line 8028
    iget v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->i:I

    invoke-direct {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(I)Landroidx/constraintlayout/a/a/f;

    move-result-object v23

    if-eqz v23, :cond_45e

    .line 8030
    sget-object v22, Landroidx/constraintlayout/a/a/e$c;->TOP:Landroidx/constraintlayout/a/a/e$c;

    sget-object v24, Landroidx/constraintlayout/a/a/e$c;->BOTTOM:Landroidx/constraintlayout/a/a/e$c;

    iget v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->topMargin:I

    iget v5, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->u:I

    move-object/from16 v21, v11

    move/from16 v25, v3

    move/from16 v26, v5

    invoke-virtual/range {v21 .. v26}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/e$c;II)V

    .line 8037
    :cond_45e
    :goto_45e
    iget v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->j:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_47d

    .line 8038
    iget v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->j:I

    invoke-direct {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(I)Landroidx/constraintlayout/a/a/f;

    move-result-object v23

    if-eqz v23, :cond_49b

    .line 8040
    sget-object v22, Landroidx/constraintlayout/a/a/e$c;->BOTTOM:Landroidx/constraintlayout/a/a/e$c;

    sget-object v24, Landroidx/constraintlayout/a/a/e$c;->TOP:Landroidx/constraintlayout/a/a/e$c;

    iget v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->bottomMargin:I

    iget v5, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->w:I

    move-object/from16 v21, v11

    move/from16 v25, v3

    move/from16 v26, v5

    invoke-virtual/range {v21 .. v26}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/e$c;II)V

    goto :goto_49b

    .line 8044
    :cond_47d
    iget v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->k:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_49b

    .line 8045
    iget v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->k:I

    invoke-direct {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(I)Landroidx/constraintlayout/a/a/f;

    move-result-object v23

    if-eqz v23, :cond_49b

    .line 8047
    sget-object v22, Landroidx/constraintlayout/a/a/e$c;->BOTTOM:Landroidx/constraintlayout/a/a/e$c;

    sget-object v24, Landroidx/constraintlayout/a/a/e$c;->BOTTOM:Landroidx/constraintlayout/a/a/e$c;

    iget v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->bottomMargin:I

    iget v5, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->w:I

    move-object/from16 v21, v11

    move/from16 v25, v3

    move/from16 v26, v5

    invoke-virtual/range {v21 .. v26}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/e$c;II)V

    .line 8054
    :cond_49b
    :goto_49b
    iget v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_4f2

    .line 8055
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    iget v5, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 8056
    iget v5, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l:I

    invoke-direct {v0, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(I)Landroidx/constraintlayout/a/a/f;

    move-result-object v5

    if-eqz v5, :cond_4f2

    if-eqz v3, :cond_4f2

    .line 8057
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    if-eqz v6, :cond_4f2

    .line 8058
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    const/4 v6, 0x1

    .line 8059
    iput-boolean v6, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->X:Z

    .line 8060
    iput-boolean v6, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->X:Z

    .line 8061
    sget-object v3, Landroidx/constraintlayout/a/a/e$c;->BASELINE:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v11, v3}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v29

    .line 8062
    sget-object v3, Landroidx/constraintlayout/a/a/e$c;->BASELINE:Landroidx/constraintlayout/a/a/e$c;

    .line 8063
    invoke-virtual {v5, v3}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v32, -0x1

    .line 8064
    sget v33, Landroidx/constraintlayout/a/a/e$b;->STRONG$4f4a4916:I

    const/16 v34, 0x0

    const/16 v35, 0x1

    invoke-virtual/range {v29 .. v35}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/e;IIIIZ)Z

    .line 8067
    sget-object v3, Landroidx/constraintlayout/a/a/e$c;->TOP:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v11, v3}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/e;->c()V

    .line 8068
    sget-object v3, Landroidx/constraintlayout/a/a/e$c;->BOTTOM:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v11, v3}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/e;->c()V

    :cond_4f2
    const/4 v3, 0x0

    cmpl-float v3, v4, v3

    if-ltz v3, :cond_4ff

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v3, v4, v3

    if-eqz v3, :cond_4ff

    .line 13378
    iput v4, v11, Landroidx/constraintlayout/a/a/f;->Y:F

    .line 8075
    :cond_4ff
    iget v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->A:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_512

    iget v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->A:F

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_512

    .line 8076
    iget v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->A:F

    .line 13388
    iput v3, v11, Landroidx/constraintlayout/a/a/f;->Z:F

    :cond_512
    :goto_512
    if-eqz v13, :cond_524

    .line 8080
    iget v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Q:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_51d

    iget v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->R:I

    if-eq v3, v4, :cond_524

    .line 8082
    :cond_51d
    iget v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Q:I

    iget v4, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->R:I

    invoke-virtual {v11, v3, v4}, Landroidx/constraintlayout/a/a/f;->a(II)V

    .line 8086
    :cond_524
    iget-boolean v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->V:Z

    if-nez v3, :cond_551

    .line 8087
    iget v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->width:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_547

    .line 8088
    sget v3, Landroidx/constraintlayout/a/a/f$a;->MATCH_PARENT$689812f:I

    invoke-virtual {v11, v3}, Landroidx/constraintlayout/a/a/f;->j(I)V

    .line 8089
    sget-object v3, Landroidx/constraintlayout/a/a/e$c;->LEFT:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v11, v3}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v3

    iget v4, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->leftMargin:I

    iput v4, v3, Landroidx/constraintlayout/a/a/e;->e:I

    .line 8090
    sget-object v3, Landroidx/constraintlayout/a/a/e$c;->RIGHT:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v11, v3}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v3

    iget v4, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->rightMargin:I

    iput v4, v3, Landroidx/constraintlayout/a/a/e;->e:I

    goto :goto_55b

    .line 8092
    :cond_547
    sget v3, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    invoke-virtual {v11, v3}, Landroidx/constraintlayout/a/a/f;->j(I)V

    const/4 v3, 0x0

    .line 8093
    invoke-virtual {v11, v3}, Landroidx/constraintlayout/a/a/f;->e(I)V

    goto :goto_55b

    .line 8096
    :cond_551
    sget v3, Landroidx/constraintlayout/a/a/f$a;->FIXED$689812f:I

    invoke-virtual {v11, v3}, Landroidx/constraintlayout/a/a/f;->j(I)V

    .line 8097
    iget v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->width:I

    invoke-virtual {v11, v3}, Landroidx/constraintlayout/a/a/f;->e(I)V

    .line 8099
    :goto_55b
    iget-boolean v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->W:Z

    if-nez v3, :cond_588

    .line 8100
    iget v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->height:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_57e

    .line 8101
    sget v3, Landroidx/constraintlayout/a/a/f$a;->MATCH_PARENT$689812f:I

    invoke-virtual {v11, v3}, Landroidx/constraintlayout/a/a/f;->k(I)V

    .line 8102
    sget-object v3, Landroidx/constraintlayout/a/a/e$c;->TOP:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v11, v3}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v3

    iget v4, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->topMargin:I

    iput v4, v3, Landroidx/constraintlayout/a/a/e;->e:I

    .line 8103
    sget-object v3, Landroidx/constraintlayout/a/a/e$c;->BOTTOM:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v11, v3}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v3

    iget v4, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->bottomMargin:I

    iput v4, v3, Landroidx/constraintlayout/a/a/e;->e:I

    goto :goto_592

    .line 8105
    :cond_57e
    sget v3, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    invoke-virtual {v11, v3}, Landroidx/constraintlayout/a/a/f;->k(I)V

    const/4 v3, 0x0

    .line 8106
    invoke-virtual {v11, v3}, Landroidx/constraintlayout/a/a/f;->f(I)V

    goto :goto_592

    .line 8109
    :cond_588
    sget v3, Landroidx/constraintlayout/a/a/f$a;->FIXED$689812f:I

    invoke-virtual {v11, v3}, Landroidx/constraintlayout/a/a/f;->k(I)V

    .line 8110
    iget v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->height:I

    invoke-virtual {v11, v3}, Landroidx/constraintlayout/a/a/f;->f(I)V

    .line 8113
    :goto_592
    iget-object v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->B:Ljava/lang/String;

    if-eqz v3, :cond_59b

    .line 8114
    iget-object v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->B:Ljava/lang/String;

    invoke-virtual {v11, v3}, Landroidx/constraintlayout/a/a/f;->a(Ljava/lang/String;)V

    .line 8116
    :cond_59b
    iget v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->E:F

    .line 13621
    iget-object v4, v11, Landroidx/constraintlayout/a/a/f;->am:[F

    const/4 v5, 0x0

    aput v3, v4, v5

    .line 8117
    iget v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->F:F

    .line 13630
    iget-object v4, v11, Landroidx/constraintlayout/a/a/f;->am:[F

    const/4 v5, 0x1

    aput v3, v4, v5

    .line 8118
    iget v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->G:I

    .line 13640
    iput v3, v11, Landroidx/constraintlayout/a/a/f;->ai:I

    .line 8119
    iget v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->H:I

    .line 13660
    iput v3, v11, Landroidx/constraintlayout/a/a/f;->aj:I

    .line 8120
    iget v3, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->I:I

    iget v4, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->K:I

    iget v5, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->M:I

    iget v6, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->O:F

    .line 14254
    iput v3, v11, Landroidx/constraintlayout/a/a/f;->g:I

    .line 14255
    iput v4, v11, Landroidx/constraintlayout/a/a/f;->j:I

    .line 14256
    iput v5, v11, Landroidx/constraintlayout/a/a/f;->k:I

    .line 14257
    iput v6, v11, Landroidx/constraintlayout/a/a/f;->l:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v4, v6, v3

    if-gez v4, :cond_5ce

    .line 14258
    iget v4, v11, Landroidx/constraintlayout/a/a/f;->g:I

    if-nez v4, :cond_5ce

    const/4 v4, 0x2

    .line 14259
    iput v4, v11, Landroidx/constraintlayout/a/a/f;->g:I

    .line 8123
    :cond_5ce
    iget v4, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->J:I

    iget v5, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->L:I

    iget v6, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->N:I

    iget v8, v15, Landroidx/constraintlayout/widget/ConstraintLayout$a;->P:F

    .line 14272
    iput v4, v11, Landroidx/constraintlayout/a/a/f;->h:I

    .line 14273
    iput v5, v11, Landroidx/constraintlayout/a/a/f;->m:I

    .line 14274
    iput v6, v11, Landroidx/constraintlayout/a/a/f;->n:I

    .line 14275
    iput v8, v11, Landroidx/constraintlayout/a/a/f;->o:F

    cmpg-float v3, v8, v3

    if-gez v3, :cond_5f6

    .line 14276
    iget v3, v11, Landroidx/constraintlayout/a/a/f;->h:I

    if-nez v3, :cond_5f6

    const/4 v3, 0x2

    .line 14277
    iput v3, v11, Landroidx/constraintlayout/a/a/f;->h:I

    goto :goto_5f6

    :cond_5ea
    move/from16 v45, v3

    move/from16 v44, v4

    move/from16 v38, v5

    move/from16 v37, v6

    move/from16 v28, v8

    move/from16 v27, v14

    :cond_5f6
    :goto_5f6
    add-int/lit8 v7, v7, 0x1

    move/from16 v14, v27

    move/from16 v8, v28

    move/from16 v6, v37

    move/from16 v5, v38

    move/from16 v4, v44

    move/from16 v3, v45

    goto/16 :goto_20f

    :cond_606
    move/from16 v45, v3

    move/from16 v44, v4

    move/from16 v38, v5

    move/from16 v37, v6

    goto :goto_619

    :cond_60f
    move/from16 v45, v3

    move/from16 v44, v4

    move/from16 v38, v5

    move/from16 v37, v6

    move/from16 v20, v7

    :goto_619
    move/from16 v28, v8

    const/4 v3, 0x1

    goto :goto_62a

    :cond_61d
    move/from16 v45, v3

    move/from16 v44, v4

    move/from16 v38, v5

    move/from16 v37, v6

    move/from16 v20, v7

    move/from16 v28, v8

    const/4 v3, 0x0

    .line 1565
    :goto_62a
    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    const/16 v5, 0x8

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_633

    const/4 v4, 0x1

    goto :goto_634

    :cond_633
    const/4 v4, 0x0

    :goto_634
    if-eqz v4, :cond_90b

    .line 1568
    iget-object v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v8}, Landroidx/constraintlayout/a/a/g;->C()V

    .line 1569
    iget-object v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v8, v9, v12}, Landroidx/constraintlayout/a/a/g;->f(II)V

    .line 14283
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingTop()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingBottom()I

    move-result v10

    add-int/2addr v8, v10

    .line 14284
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingLeft()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingRight()I

    move-result v11

    add-int/2addr v10, v11

    .line 14286
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v11

    const/4 v13, 0x0

    :goto_657
    if-ge v13, v11, :cond_730

    .line 14288
    invoke-virtual {v0, v13}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 14289
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v5, 0x8

    if-eq v15, v5, :cond_71a

    .line 14292
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 14293
    iget-object v6, v5, Landroidx/constraintlayout/widget/ConstraintLayout$a;->al:Landroidx/constraintlayout/a/a/f;

    .line 14294
    iget-boolean v15, v5, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Y:Z

    if-nez v15, :cond_71a

    iget-boolean v15, v5, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Z:Z

    if-nez v15, :cond_71a

    .line 14297
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    .line 14634
    iput v15, v6, Landroidx/constraintlayout/a/a/f;->ab:I

    .line 14299
    iget v15, v5, Landroidx/constraintlayout/widget/ConstraintLayout$a;->width:I

    .line 14300
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintLayout$a;->height:I

    if-eqz v15, :cond_703

    if-nez v7, :cond_685

    goto/16 :goto_703

    :cond_685
    move/from16 v46, v12

    const/4 v12, -0x2

    if-ne v15, v12, :cond_68f

    move/from16 v47, v9

    const/16 v16, 0x1

    goto :goto_693

    :cond_68f
    move/from16 v47, v9

    const/16 v16, 0x0

    .line 14316
    :goto_693
    invoke-static {v1, v10, v15}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v9

    if-ne v7, v12, :cond_69d

    move/from16 v48, v4

    const/4 v12, 0x1

    goto :goto_6a0

    :cond_69d
    move/from16 v48, v4

    const/4 v12, 0x0

    .line 14321
    :goto_6a0
    invoke-static {v2, v8, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v4

    .line 14323
    invoke-virtual {v14, v9, v4}, Landroid/view/View;->measure(II)V

    .line 14324
    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:Landroidx/constraintlayout/a/f;

    if-eqz v4, :cond_6b8

    .line 14325
    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:Landroidx/constraintlayout/a/f;

    move/from16 v49, v3

    iget-wide v2, v4, Landroidx/constraintlayout/a/f;->a:J

    const-wide/16 v17, 0x1

    add-long v2, v2, v17

    iput-wide v2, v4, Landroidx/constraintlayout/a/f;->a:J

    goto :goto_6ba

    :cond_6b8
    move/from16 v49, v3

    :goto_6ba
    const/4 v2, -0x2

    if-ne v15, v2, :cond_6bf

    const/4 v3, 0x1

    goto :goto_6c0

    :cond_6bf
    const/4 v3, 0x0

    .line 15572
    :goto_6c0
    iput-boolean v3, v6, Landroidx/constraintlayout/a/a/f;->p:Z

    if-ne v7, v2, :cond_6c6

    const/4 v2, 0x1

    goto :goto_6c7

    :cond_6c6
    const/4 v2, 0x0

    .line 15588
    :goto_6c7
    iput-boolean v2, v6, Landroidx/constraintlayout/a/a/f;->q:Z

    .line 14330
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 14331
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 14333
    invoke-virtual {v6, v2}, Landroidx/constraintlayout/a/a/f;->e(I)V

    .line 14334
    invoke-virtual {v6, v3}, Landroidx/constraintlayout/a/a/f;->f(I)V

    if-eqz v16, :cond_6db

    .line 16423
    iput v2, v6, Landroidx/constraintlayout/a/a/f;->V:I

    :cond_6db
    if-eqz v12, :cond_6df

    .line 16432
    iput v3, v6, Landroidx/constraintlayout/a/a/f;->W:I

    .line 14343
    :cond_6df
    iget-boolean v4, v5, Landroidx/constraintlayout/widget/ConstraintLayout$a;->X:Z

    if-eqz v4, :cond_6ec

    .line 14344
    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_6ec

    .line 16577
    iput v4, v6, Landroidx/constraintlayout/a/a/f;->S:I

    .line 14350
    :cond_6ec
    iget-boolean v4, v5, Landroidx/constraintlayout/widget/ConstraintLayout$a;->V:Z

    if-eqz v4, :cond_722

    iget-boolean v4, v5, Landroidx/constraintlayout/widget/ConstraintLayout$a;->W:Z

    if-eqz v4, :cond_722

    .line 14351
    invoke-virtual {v6}, Landroidx/constraintlayout/a/a/f;->i()Landroidx/constraintlayout/a/a/n;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/constraintlayout/a/a/n;->a(I)V

    .line 14352
    invoke-virtual {v6}, Landroidx/constraintlayout/a/a/f;->j()Landroidx/constraintlayout/a/a/n;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/a/a/n;->a(I)V

    goto :goto_722

    :cond_703
    :goto_703
    move/from16 v49, v3

    move/from16 v48, v4

    move/from16 v47, v9

    move/from16 v46, v12

    .line 14303
    invoke-virtual {v6}, Landroidx/constraintlayout/a/a/f;->i()Landroidx/constraintlayout/a/a/n;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/n;->c()V

    .line 14304
    invoke-virtual {v6}, Landroidx/constraintlayout/a/a/f;->j()Landroidx/constraintlayout/a/a/n;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/n;->c()V

    goto :goto_722

    :cond_71a
    move/from16 v49, v3

    move/from16 v48, v4

    move/from16 v47, v9

    move/from16 v46, v12

    :cond_722
    :goto_722
    add-int/lit8 v13, v13, 0x1

    move/from16 v12, v46

    move/from16 v9, v47

    move/from16 v4, v48

    move/from16 v3, v49

    move/from16 v2, p2

    goto/16 :goto_657

    :cond_730
    move/from16 v49, v3

    move/from16 v48, v4

    move/from16 v47, v9

    move/from16 v46, v12

    .line 14357
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/g;->D()V

    const/4 v2, 0x0

    :goto_73e
    if-ge v2, v11, :cond_906

    .line 14360
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 14361
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_8f3

    .line 14364
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 14365
    iget-object v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;->al:Landroidx/constraintlayout/a/a/f;

    .line 14366
    iget-boolean v6, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Y:Z

    if-nez v6, :cond_8f3

    iget-boolean v6, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Z:Z

    if-nez v6, :cond_8f3

    .line 14369
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    .line 16634
    iput v6, v5, Landroidx/constraintlayout/a/a/f;->ab:I

    .line 14371
    iget v6, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;->width:I

    .line 14372
    iget v7, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;->height:I

    if-eqz v6, :cond_76a

    if-nez v7, :cond_8f3

    .line 14378
    :cond_76a
    sget-object v9, Landroidx/constraintlayout/a/a/e$c;->LEFT:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v5, v9}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v9

    .line 17058
    iget-object v9, v9, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 14379
    sget-object v12, Landroidx/constraintlayout/a/a/e$c;->RIGHT:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v5, v12}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v12

    .line 18058
    iget-object v12, v12, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 14380
    sget-object v13, Landroidx/constraintlayout/a/a/e$c;->LEFT:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v5, v13}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v13

    .line 18144
    iget-object v13, v13, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v13, :cond_790

    .line 14380
    sget-object v13, Landroidx/constraintlayout/a/a/e$c;->RIGHT:Landroidx/constraintlayout/a/a/e$c;

    .line 14381
    invoke-virtual {v5, v13}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v13

    .line 19144
    iget-object v13, v13, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v13, :cond_790

    const/4 v13, 0x1

    goto :goto_791

    :cond_790
    const/4 v13, 0x0

    .line 14382
    :goto_791
    sget-object v14, Landroidx/constraintlayout/a/a/e$c;->TOP:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v5, v14}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v14

    .line 20058
    iget-object v14, v14, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 14383
    sget-object v15, Landroidx/constraintlayout/a/a/e$c;->BOTTOM:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v5, v15}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v15

    .line 21058
    iget-object v15, v15, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    move/from16 v50, v11

    .line 14384
    sget-object v11, Landroidx/constraintlayout/a/a/e$c;->TOP:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v5, v11}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v11

    .line 21144
    iget-object v11, v11, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v11, :cond_7b9

    .line 14384
    sget-object v11, Landroidx/constraintlayout/a/a/e$c;->BOTTOM:Landroidx/constraintlayout/a/a/e$c;

    .line 14385
    invoke-virtual {v5, v11}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v11

    .line 22144
    iget-object v11, v11, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v11, :cond_7b9

    const/4 v11, 0x1

    goto :goto_7ba

    :cond_7b9
    const/4 v11, 0x0

    :goto_7ba
    if-nez v6, :cond_7c7

    if-nez v7, :cond_7c7

    if-eqz v13, :cond_7c7

    if-nez v11, :cond_7c3

    goto :goto_7c7

    :cond_7c3
    move/from16 v51, v2

    goto/16 :goto_8f7

    :cond_7c7
    :goto_7c7
    move/from16 v51, v2

    .line 14393
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/g;->y()I

    move-result v2

    move-object/from16 v52, v4

    sget v4, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    if-eq v2, v4, :cond_7d7

    const/4 v2, 0x1

    goto :goto_7d8

    :cond_7d7
    const/4 v2, 0x0

    .line 14394
    :goto_7d8
    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v4}, Landroidx/constraintlayout/a/a/g;->z()I

    move-result v4

    sget v0, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    if-eq v4, v0, :cond_7e4

    const/4 v0, 0x1

    goto :goto_7e5

    :cond_7e4
    const/4 v0, 0x0

    :goto_7e5
    if-nez v2, :cond_7ee

    .line 14400
    invoke-virtual {v5}, Landroidx/constraintlayout/a/a/f;->i()Landroidx/constraintlayout/a/a/n;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/a/a/n;->c()V

    :cond_7ee
    if-nez v0, :cond_7f7

    .line 14403
    invoke-virtual {v5}, Landroidx/constraintlayout/a/a/f;->j()Landroidx/constraintlayout/a/a/n;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/a/a/n;->c()V

    :cond_7f7
    if-nez v6, :cond_825

    if-eqz v2, :cond_81d

    .line 14406
    invoke-virtual {v5}, Landroidx/constraintlayout/a/a/f;->d()Z

    move-result v4

    if-eqz v4, :cond_81d

    if-eqz v13, :cond_81d

    invoke-virtual {v9}, Landroidx/constraintlayout/a/a/m;->e()Z

    move-result v4

    if-eqz v4, :cond_81d

    invoke-virtual {v12}, Landroidx/constraintlayout/a/a/m;->e()Z

    move-result v4

    if-eqz v4, :cond_81d

    .line 22315
    iget v4, v12, Landroidx/constraintlayout/a/a/m;->f:F

    .line 23315
    iget v6, v9, Landroidx/constraintlayout/a/a/m;->f:F

    sub-float/2addr v4, v6

    float-to-int v6, v4

    .line 14408
    invoke-virtual {v5}, Landroidx/constraintlayout/a/a/f;->i()Landroidx/constraintlayout/a/a/n;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroidx/constraintlayout/a/a/n;->a(I)V

    goto :goto_835

    :cond_81d
    const/4 v4, -0x2

    .line 14412
    invoke-static {v1, v10, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v2

    const/4 v4, 0x1

    const/4 v9, 0x0

    goto :goto_83f

    :cond_825
    const/4 v4, -0x2

    const/4 v9, -0x1

    if-ne v6, v9, :cond_831

    .line 14418
    invoke-static {v1, v10, v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v12

    move v9, v2

    move v2, v12

    const/4 v4, 0x0

    goto :goto_83f

    :cond_831
    if-ne v6, v4, :cond_835

    const/4 v4, 0x1

    goto :goto_836

    :cond_835
    :goto_835
    const/4 v4, 0x0

    .line 14424
    :goto_836
    invoke-static {v1, v10, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v9

    move/from16 v58, v9

    move v9, v2

    move/from16 v2, v58

    :goto_83f
    if-nez v7, :cond_872

    if-eqz v0, :cond_867

    .line 14428
    invoke-virtual {v5}, Landroidx/constraintlayout/a/a/f;->e()Z

    move-result v12

    if-eqz v12, :cond_867

    if-eqz v11, :cond_867

    invoke-virtual {v14}, Landroidx/constraintlayout/a/a/m;->e()Z

    move-result v11

    if-eqz v11, :cond_867

    invoke-virtual {v15}, Landroidx/constraintlayout/a/a/m;->e()Z

    move-result v11

    if-eqz v11, :cond_867

    .line 24315
    iget v7, v15, Landroidx/constraintlayout/a/a/m;->f:F

    .line 25315
    iget v11, v14, Landroidx/constraintlayout/a/a/m;->f:F

    sub-float/2addr v7, v11

    float-to-int v7, v7

    .line 14430
    invoke-virtual {v5}, Landroidx/constraintlayout/a/a/f;->j()Landroidx/constraintlayout/a/a/n;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroidx/constraintlayout/a/a/n;->a(I)V

    move/from16 v11, p2

    goto :goto_883

    :cond_867
    move/from16 v11, p2

    const/4 v12, -0x2

    .line 14434
    invoke-static {v11, v8, v12}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v0

    move v13, v0

    const/4 v0, 0x0

    const/4 v12, 0x1

    goto :goto_888

    :cond_872
    move/from16 v11, p2

    const/4 v12, -0x2

    const/4 v13, -0x1

    if-ne v7, v13, :cond_87f

    .line 14440
    invoke-static {v11, v8, v13}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v14

    move v13, v14

    const/4 v12, 0x0

    goto :goto_888

    :cond_87f
    if-ne v7, v12, :cond_883

    const/4 v12, 0x1

    goto :goto_884

    :cond_883
    :goto_883
    const/4 v12, 0x0

    .line 14446
    :goto_884
    invoke-static {v11, v8, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v13

    .line 14449
    :goto_888
    invoke-virtual {v3, v2, v13}, Landroid/view/View;->measure(II)V

    move-object/from16 v2, p0

    .line 14450
    iget-object v13, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->t:Landroidx/constraintlayout/a/f;

    if-eqz v13, :cond_89b

    .line 14451
    iget-object v13, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->t:Landroidx/constraintlayout/a/f;

    iget-wide v14, v13, Landroidx/constraintlayout/a/f;->a:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    iput-wide v14, v13, Landroidx/constraintlayout/a/f;->a:J

    :cond_89b
    const/4 v13, -0x2

    if-ne v6, v13, :cond_8a0

    const/4 v6, 0x1

    goto :goto_8a1

    :cond_8a0
    const/4 v6, 0x0

    .line 25572
    :goto_8a1
    iput-boolean v6, v5, Landroidx/constraintlayout/a/a/f;->p:Z

    if-ne v7, v13, :cond_8a7

    const/4 v6, 0x1

    goto :goto_8a8

    :cond_8a7
    const/4 v6, 0x0

    .line 25588
    :goto_8a8
    iput-boolean v6, v5, Landroidx/constraintlayout/a/a/f;->q:Z

    .line 14456
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 14457
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 14459
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/a/a/f;->e(I)V

    .line 14460
    invoke-virtual {v5, v7}, Landroidx/constraintlayout/a/a/f;->f(I)V

    if-eqz v4, :cond_8bc

    .line 26423
    iput v6, v5, Landroidx/constraintlayout/a/a/f;->V:I

    :cond_8bc
    if-eqz v12, :cond_8c0

    .line 26432
    iput v7, v5, Landroidx/constraintlayout/a/a/f;->W:I

    :cond_8c0
    if-eqz v9, :cond_8cb

    .line 14469
    invoke-virtual {v5}, Landroidx/constraintlayout/a/a/f;->i()Landroidx/constraintlayout/a/a/n;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroidx/constraintlayout/a/a/n;->a(I)V

    const/4 v6, 0x2

    goto :goto_8d2

    .line 14471
    :cond_8cb
    invoke-virtual {v5}, Landroidx/constraintlayout/a/a/f;->i()Landroidx/constraintlayout/a/a/n;

    move-result-object v4

    const/4 v6, 0x2

    .line 27041
    iput v6, v4, Landroidx/constraintlayout/a/a/n;->i:I

    :goto_8d2
    if-eqz v0, :cond_8de

    .line 14474
    invoke-virtual {v5}, Landroidx/constraintlayout/a/a/f;->j()Landroidx/constraintlayout/a/a/n;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroidx/constraintlayout/a/a/n;->a(I)V

    :goto_8db
    move-object/from16 v4, v52

    goto :goto_8e5

    .line 14476
    :cond_8de
    invoke-virtual {v5}, Landroidx/constraintlayout/a/a/f;->j()Landroidx/constraintlayout/a/a/n;

    move-result-object v0

    .line 28041
    iput v6, v0, Landroidx/constraintlayout/a/a/n;->i:I

    goto :goto_8db

    .line 14479
    :goto_8e5
    iget-boolean v0, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;->X:Z

    if-eqz v0, :cond_8fb

    .line 14480
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_8fb

    .line 28577
    iput v0, v5, Landroidx/constraintlayout/a/a/f;->S:I

    goto :goto_8fb

    :cond_8f3
    move/from16 v51, v2

    move/from16 v50, v11

    :goto_8f7
    const/4 v6, 0x2

    move/from16 v11, p2

    move-object v2, v0

    :cond_8fb
    :goto_8fb
    add-int/lit8 v0, v51, 0x1

    move/from16 v11, v50

    move-object/from16 v58, v2

    move v2, v0

    move-object/from16 v0, v58

    goto/16 :goto_73e

    :cond_906
    move-object v2, v0

    move/from16 v11, p2

    goto/16 :goto_a21

    :cond_90b
    move v11, v2

    move/from16 v49, v3

    move/from16 v48, v4

    move/from16 v47, v9

    move/from16 v46, v12

    move-object v2, v0

    .line 29161
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v0, v3

    .line 29162
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 29164
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_92c
    if-ge v5, v4, :cond_a21

    .line 29166
    invoke-virtual {v2, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 29167
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_a15

    .line 29170
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 29171
    iget-object v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$a;->al:Landroidx/constraintlayout/a/a/f;

    .line 29172
    iget-boolean v9, v7, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Y:Z

    if-nez v9, :cond_a15

    iget-boolean v9, v7, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Z:Z

    if-nez v9, :cond_a15

    .line 29175
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v9

    .line 29634
    iput v9, v8, Landroidx/constraintlayout/a/a/f;->ab:I

    .line 29177
    iget v9, v7, Landroidx/constraintlayout/widget/ConstraintLayout$a;->width:I

    .line 29178
    iget v10, v7, Landroidx/constraintlayout/widget/ConstraintLayout$a;->height:I

    .line 29182
    iget-boolean v12, v7, Landroidx/constraintlayout/widget/ConstraintLayout$a;->V:Z

    if-nez v12, :cond_97b

    iget-boolean v12, v7, Landroidx/constraintlayout/widget/ConstraintLayout$a;->W:Z

    if-nez v12, :cond_97b

    iget-boolean v12, v7, Landroidx/constraintlayout/widget/ConstraintLayout$a;->V:Z

    if-nez v12, :cond_966

    iget v12, v7, Landroidx/constraintlayout/widget/ConstraintLayout$a;->I:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_97b

    goto :goto_967

    :cond_966
    const/4 v13, 0x1

    :goto_967
    iget v12, v7, Landroidx/constraintlayout/widget/ConstraintLayout$a;->width:I

    const/4 v14, -0x1

    if-eq v12, v14, :cond_97b

    iget-boolean v12, v7, Landroidx/constraintlayout/widget/ConstraintLayout$a;->W:Z

    if-nez v12, :cond_979

    iget v12, v7, Landroidx/constraintlayout/widget/ConstraintLayout$a;->J:I

    if-eq v12, v13, :cond_97b

    iget v12, v7, Landroidx/constraintlayout/widget/ConstraintLayout$a;->height:I

    if-ne v12, v14, :cond_979

    goto :goto_97b

    :cond_979
    const/4 v12, 0x0

    goto :goto_97c

    :cond_97b
    :goto_97b
    const/4 v12, 0x1

    :goto_97c
    if-eqz v12, :cond_9f3

    if-nez v9, :cond_989

    const/4 v12, -0x2

    .line 29200
    invoke-static {v1, v3, v12}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v13

    move v14, v13

    const/4 v13, -0x1

    const/4 v15, 0x1

    goto :goto_9a1

    :cond_989
    const/4 v12, -0x2

    const/4 v13, -0x1

    if-ne v9, v13, :cond_993

    .line 29204
    invoke-static {v1, v3, v13}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v14

    const/4 v15, 0x0

    goto :goto_9a1

    :cond_993
    if-ne v9, v12, :cond_997

    const/4 v14, 0x1

    goto :goto_998

    :cond_997
    const/4 v14, 0x0

    .line 29210
    :goto_998
    invoke-static {v1, v3, v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v15

    move/from16 v58, v15

    move v15, v14

    move/from16 v14, v58

    :goto_9a1
    if-nez v10, :cond_9ab

    .line 29214
    invoke-static {v11, v0, v12}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v16

    move/from16 v12, v16

    const/4 v13, 0x1

    goto :goto_9c1

    :cond_9ab
    if-ne v10, v13, :cond_9b5

    .line 29218
    invoke-static {v11, v0, v13}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v16

    move/from16 v12, v16

    const/4 v13, 0x0

    goto :goto_9c1

    :cond_9b5
    if-ne v10, v12, :cond_9b9

    const/4 v12, 0x1

    goto :goto_9ba

    :cond_9b9
    const/4 v12, 0x0

    .line 29224
    :goto_9ba
    invoke-static {v11, v0, v10}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v16

    move v13, v12

    move/from16 v12, v16

    .line 29227
    :goto_9c1
    invoke-virtual {v6, v14, v12}, Landroid/view/View;->measure(II)V

    .line 29228
    iget-object v12, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->t:Landroidx/constraintlayout/a/f;

    if-eqz v12, :cond_9d7

    .line 29229
    iget-object v12, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->t:Landroidx/constraintlayout/a/f;

    move/from16 v53, v3

    move/from16 v54, v4

    iget-wide v3, v12, Landroidx/constraintlayout/a/f;->a:J

    const-wide/16 v16, 0x1

    add-long v3, v3, v16

    iput-wide v3, v12, Landroidx/constraintlayout/a/f;->a:J

    goto :goto_9db

    :cond_9d7
    move/from16 v53, v3

    move/from16 v54, v4

    :goto_9db
    const/4 v3, -0x2

    if-ne v9, v3, :cond_9e0

    const/4 v4, 0x1

    goto :goto_9e1

    :cond_9e0
    const/4 v4, 0x0

    .line 30572
    :goto_9e1
    iput-boolean v4, v8, Landroidx/constraintlayout/a/a/f;->p:Z

    if-ne v10, v3, :cond_9e7

    const/4 v3, 0x1

    goto :goto_9e8

    :cond_9e7
    const/4 v3, 0x0

    .line 30588
    :goto_9e8
    iput-boolean v3, v8, Landroidx/constraintlayout/a/a/f;->q:Z

    .line 29234
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 29235
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    goto :goto_9f9

    :cond_9f3
    move/from16 v53, v3

    move/from16 v54, v4

    const/4 v13, 0x0

    const/4 v15, 0x0

    .line 29238
    :goto_9f9
    invoke-virtual {v8, v9}, Landroidx/constraintlayout/a/a/f;->e(I)V

    .line 29239
    invoke-virtual {v8, v10}, Landroidx/constraintlayout/a/a/f;->f(I)V

    if-eqz v15, :cond_a03

    .line 31423
    iput v9, v8, Landroidx/constraintlayout/a/a/f;->V:I

    :cond_a03
    if-eqz v13, :cond_a07

    .line 31432
    iput v10, v8, Landroidx/constraintlayout/a/a/f;->W:I

    .line 29248
    :cond_a07
    iget-boolean v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout$a;->X:Z

    if-eqz v3, :cond_a19

    .line 29249
    invoke-virtual {v6}, Landroid/view/View;->getBaseline()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_a19

    .line 31577
    iput v3, v8, Landroidx/constraintlayout/a/a/f;->S:I

    goto :goto_a19

    :cond_a15
    move/from16 v53, v3

    move/from16 v54, v4

    :cond_a19
    :goto_a19
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v53

    move/from16 v4, v54

    goto/16 :goto_92c

    .line 32258
    :cond_a21
    :goto_a21
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_a26
    if-ge v3, v0, :cond_a68

    .line 32260
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 32261
    instance-of v5, v4, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v5, :cond_a65

    .line 32262
    check-cast v4, Landroidx/constraintlayout/widget/Placeholder;

    .line 33194
    iget-object v5, v4, Landroidx/constraintlayout/widget/Placeholder;->b:Landroid/view/View;

    if-eqz v5, :cond_a65

    .line 33197
    invoke-virtual {v4}, Landroidx/constraintlayout/widget/Placeholder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 33198
    iget-object v4, v4, Landroidx/constraintlayout/widget/Placeholder;->b:Landroid/view/View;

    .line 33199
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 33200
    iget-object v6, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;->al:Landroidx/constraintlayout/a/a/f;

    const/4 v7, 0x0

    .line 33634
    iput v7, v6, Landroidx/constraintlayout/a/a/f;->ab:I

    .line 33201
    iget-object v6, v5, Landroidx/constraintlayout/widget/ConstraintLayout$a;->al:Landroidx/constraintlayout/a/a/f;

    iget-object v7, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;->al:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v7}, Landroidx/constraintlayout/a/a/f;->m()I

    move-result v7

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/a/a/f;->e(I)V

    .line 33202
    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$a;->al:Landroidx/constraintlayout/a/a/f;

    iget-object v6, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;->al:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v6}, Landroidx/constraintlayout/a/a/f;->n()I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/a/a/f;->f(I)V

    .line 33203
    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;->al:Landroidx/constraintlayout/a/a/f;

    const/16 v5, 0x8

    .line 34634
    iput v5, v4, Landroidx/constraintlayout/a/a/f;->ab:I

    :cond_a65
    add-int/lit8 v3, v3, 0x1

    goto :goto_a26

    .line 32266
    :cond_a68
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a7b

    const/4 v3, 0x0

    :goto_a71
    if-ge v3, v0, :cond_a7b

    .line 32269
    iget-object v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_a71

    .line 1582
    :cond_a7b
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_a88

    if-eqz v49, :cond_a88

    .line 1583
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    invoke-static {v0}, Landroidx/constraintlayout/a/a/a;->a(Landroidx/constraintlayout/a/a/g;)V

    .line 1585
    :cond_a88
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    iget-boolean v0, v0, Landroidx/constraintlayout/a/a/g;->aA:Z

    if-eqz v0, :cond_ae7

    .line 1586
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    iget-boolean v0, v0, Landroidx/constraintlayout/a/a/g;->aB:Z

    if-eqz v0, :cond_ab6

    move/from16 v0, v45

    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_ab3

    .line 1587
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    iget v3, v3, Landroidx/constraintlayout/a/a/g;->aD:I

    move/from16 v4, v44

    if-ge v3, v4, :cond_aab

    .line 1588
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    iget-object v5, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    iget v5, v5, Landroidx/constraintlayout/a/a/g;->aD:I

    invoke-virtual {v3, v5}, Landroidx/constraintlayout/a/a/g;->e(I)V

    .line 1590
    :cond_aab
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    sget v5, Landroidx/constraintlayout/a/a/f$a;->FIXED$689812f:I

    .line 1591
    invoke-virtual {v3, v5}, Landroidx/constraintlayout/a/a/g;->j(I)V

    goto :goto_aba

    :cond_ab3
    move/from16 v4, v44

    goto :goto_aba

    :cond_ab6
    move/from16 v4, v44

    move/from16 v0, v45

    .line 1593
    :goto_aba
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    iget-boolean v3, v3, Landroidx/constraintlayout/a/a/g;->aC:Z

    if-eqz v3, :cond_ae2

    move/from16 v3, v38

    const/high16 v5, -0x80000000

    if-ne v3, v5, :cond_adf

    .line 1594
    iget-object v5, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    iget v5, v5, Landroidx/constraintlayout/a/a/g;->aE:I

    move/from16 v6, v37

    if-ge v5, v6, :cond_ad7

    .line 1595
    iget-object v5, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    iget-object v7, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    iget v7, v7, Landroidx/constraintlayout/a/a/g;->aE:I

    invoke-virtual {v5, v7}, Landroidx/constraintlayout/a/a/g;->f(I)V

    .line 1597
    :cond_ad7
    iget-object v5, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    sget v7, Landroidx/constraintlayout/a/a/f$a;->FIXED$689812f:I

    .line 1598
    invoke-virtual {v5, v7}, Landroidx/constraintlayout/a/a/g;->k(I)V

    goto :goto_aef

    :cond_adf
    move/from16 v6, v37

    goto :goto_aef

    :cond_ae2
    move/from16 v6, v37

    move/from16 v3, v38

    goto :goto_aef

    :cond_ae7
    move/from16 v6, v37

    move/from16 v3, v38

    move/from16 v4, v44

    move/from16 v0, v45

    .line 1602
    :goto_aef
    iget v5, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    const/16 v7, 0x20

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_b50

    .line 1603
    iget-object v5, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v5}, Landroidx/constraintlayout/a/a/g;->m()I

    move-result v5

    .line 1604
    iget-object v7, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v7}, Landroidx/constraintlayout/a/a/g;->n()I

    move-result v7

    .line 1605
    iget v8, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    if-eq v8, v5, :cond_b13

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v0, v8, :cond_b15

    .line 1606
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/g;->az:Ljava/util/List;

    const/4 v9, 0x0

    invoke-static {v0, v9, v5}, Landroidx/constraintlayout/a/a/a;->a(Ljava/util/List;II)V

    goto :goto_b15

    :cond_b13
    const/high16 v8, 0x40000000    # 2.0f

    .line 1608
    :cond_b15
    :goto_b15
    iget v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    if-eq v0, v7, :cond_b23

    if-ne v3, v8, :cond_b23

    .line 1609
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/g;->az:Ljava/util/List;

    const/4 v3, 0x1

    invoke-static {v0, v3, v7}, Landroidx/constraintlayout/a/a/a;->a(Ljava/util/List;II)V

    .line 1611
    :cond_b23
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    iget-boolean v0, v0, Landroidx/constraintlayout/a/a/g;->aB:Z

    if-eqz v0, :cond_b38

    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    iget v0, v0, Landroidx/constraintlayout/a/a/g;->aD:I

    if-le v0, v4, :cond_b38

    .line 1612
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/g;->az:Ljava/util/List;

    const/4 v15, 0x0

    invoke-static {v0, v15, v4}, Landroidx/constraintlayout/a/a/a;->a(Ljava/util/List;II)V

    goto :goto_b39

    :cond_b38
    const/4 v15, 0x0

    .line 1614
    :goto_b39
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    iget-boolean v0, v0, Landroidx/constraintlayout/a/a/g;->aC:Z

    if-eqz v0, :cond_b4e

    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    iget v0, v0, Landroidx/constraintlayout/a/a/g;->aE:I

    if-le v0, v6, :cond_b4e

    .line 1615
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/g;->az:Ljava/util/List;

    const/4 v3, 0x1

    invoke-static {v0, v3, v6}, Landroidx/constraintlayout/a/a/a;->a(Ljava/util/List;II)V

    goto :goto_b52

    :cond_b4e
    const/4 v3, 0x1

    goto :goto_b52

    :cond_b50
    const/4 v3, 0x1

    const/4 v15, 0x0

    .line 1620
    :goto_b52
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_b5b

    .line 1621
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->b()V

    .line 1626
    :cond_b5b
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1628
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingBottom()I

    move-result v4

    add-int v8, v28, v4

    .line 1629
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingRight()I

    move-result v4

    add-int v7, v20, v4

    if-lez v0, :cond_d6a

    .line 1637
    iget-object v5, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v5}, Landroidx/constraintlayout/a/a/g;->y()I

    move-result v5

    sget v6, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    if-ne v5, v6, :cond_b7b

    move v5, v3

    goto :goto_b7c

    :cond_b7b
    move v5, v15

    .line 1639
    :goto_b7c
    iget-object v6, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v6}, Landroidx/constraintlayout/a/a/g;->z()I

    move-result v6

    sget v9, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    if-ne v6, v9, :cond_b88

    move v6, v3

    goto :goto_b89

    :cond_b88
    move v6, v15

    .line 1641
    :goto_b89
    iget-object v9, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v9}, Landroidx/constraintlayout/a/a/g;->m()I

    move-result v9

    iget v10, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1642
    iget-object v10, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v10}, Landroidx/constraintlayout/a/a/g;->n()I

    move-result v10

    iget v12, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v13, v10

    move v12, v15

    move v14, v12

    move v10, v9

    move v9, v14

    :goto_ba6
    if-ge v9, v0, :cond_ccc

    .line 1644
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/a/a/f;

    .line 35041
    iget-object v15, v3, Landroidx/constraintlayout/a/a/f;->aa:Ljava/lang/Object;

    .line 1645
    check-cast v15, Landroid/view/View;

    if-eqz v15, :cond_cb9

    .line 1649
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    move/from16 v56, v0

    .line 1650
    iget-boolean v0, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Z:Z

    if-nez v0, :cond_cbb

    iget-boolean v0, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Y:Z

    if-nez v0, :cond_cbb

    .line 1653
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v0

    move/from16 v57, v12

    const/16 v12, 0x8

    if-eq v0, v12, :cond_cbd

    if-eqz v48, :cond_be8

    .line 1657
    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/f;->i()Landroidx/constraintlayout/a/a/n;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/n;->e()Z

    move-result v0

    if-eqz v0, :cond_be8

    .line 1658
    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/f;->j()Landroidx/constraintlayout/a/a/n;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/n;->e()Z

    move-result v0

    if-nez v0, :cond_cbd

    .line 1664
    :cond_be8
    iget v0, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;->width:I

    const/4 v12, -0x2

    if-ne v0, v12, :cond_bf8

    iget-boolean v0, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;->V:Z

    if-eqz v0, :cond_bf8

    .line 1665
    iget v0, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;->width:I

    invoke-static {v1, v7, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v0

    goto :goto_c02

    .line 1667
    :cond_bf8
    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/f;->m()I

    move-result v0

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v0, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1669
    :goto_c02
    iget v12, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;->height:I

    const/4 v1, -0x2

    if-ne v12, v1, :cond_c12

    iget-boolean v12, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;->W:Z

    if-eqz v12, :cond_c12

    .line 1670
    iget v12, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;->height:I

    invoke-static {v11, v8, v12}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v12

    goto :goto_c1c

    .line 1672
    :cond_c12
    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/f;->n()I

    move-result v12

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v12, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1676
    :goto_c1c
    invoke-virtual {v15, v0, v12}, Landroid/view/View;->measure(II)V

    .line 1677
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->t:Landroidx/constraintlayout/a/f;

    if-eqz v0, :cond_c2d

    .line 1678
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->t:Landroidx/constraintlayout/a/f;

    iget-wide v11, v0, Landroidx/constraintlayout/a/f;->b:J

    const-wide/16 v16, 0x1

    add-long v11, v11, v16

    iput-wide v11, v0, Landroidx/constraintlayout/a/f;->b:J

    .line 1683
    :cond_c2d
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1684
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1686
    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/f;->m()I

    move-result v11

    if-eq v0, v11, :cond_c65

    .line 1687
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/a/a/f;->e(I)V

    if-eqz v48, :cond_c47

    .line 1689
    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/f;->i()Landroidx/constraintlayout/a/a/n;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroidx/constraintlayout/a/a/n;->a(I)V

    :cond_c47
    if-eqz v5, :cond_c63

    .line 1691
    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/f;->s()I

    move-result v0

    if-le v0, v10, :cond_c63

    .line 1692
    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/f;->s()I

    move-result v0

    sget-object v11, Landroidx/constraintlayout/a/a/e$c;->RIGHT:Landroidx/constraintlayout/a/a/e$c;

    .line 1693
    invoke-virtual {v3, v11}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v11

    add-int/2addr v0, v11

    .line 1694
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v10, v0

    :cond_c63
    const/4 v12, 0x1

    goto :goto_c67

    :cond_c65
    move/from16 v12, v57

    .line 1698
    :goto_c67
    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/f;->n()I

    move-result v0

    if-eq v1, v0, :cond_c96

    .line 1699
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/a/a/f;->f(I)V

    if-eqz v48, :cond_c79

    .line 1701
    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/f;->j()Landroidx/constraintlayout/a/a/n;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/a/a/n;->a(I)V

    :cond_c79
    if-eqz v6, :cond_c95

    .line 1703
    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/f;->t()I

    move-result v0

    if-le v0, v13, :cond_c95

    .line 1704
    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/f;->t()I

    move-result v0

    sget-object v1, Landroidx/constraintlayout/a/a/e$c;->BOTTOM:Landroidx/constraintlayout/a/a/e$c;

    .line 1705
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 1706
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v13, v0

    :cond_c95
    const/4 v12, 0x1

    .line 1710
    :cond_c96
    iget-boolean v0, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;->X:Z

    if-eqz v0, :cond_ca9

    .line 1711
    invoke-virtual {v15}, Landroid/view/View;->getBaseline()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_caa

    .line 36031
    iget v4, v3, Landroidx/constraintlayout/a/a/f;->S:I

    if-eq v0, v4, :cond_caa

    .line 36577
    iput v0, v3, Landroidx/constraintlayout/a/a/f;->S:I

    const/4 v12, 0x1

    goto :goto_caa

    :cond_ca9
    const/4 v1, -0x1

    .line 1718
    :cond_caa
    :goto_caa
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_cc0

    .line 1719
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v14, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->combineMeasuredStates(II)I

    move-result v14

    goto :goto_cc0

    :cond_cb9
    move/from16 v56, v0

    :cond_cbb
    move/from16 v57, v12

    :cond_cbd
    const/4 v1, -0x1

    move/from16 v12, v57

    :cond_cc0
    :goto_cc0
    add-int/lit8 v9, v9, 0x1

    move/from16 v0, v56

    move/from16 v1, p1

    const/4 v3, 0x1

    move/from16 v11, p2

    const/4 v15, 0x0

    goto/16 :goto_ba6

    :cond_ccc
    move/from16 v56, v0

    move/from16 v57, v12

    if-eqz v57, :cond_d11

    .line 1723
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/a/a/g;->e(I)V

    .line 1724
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/a/a/g;->f(I)V

    if-eqz v48, :cond_ce7

    .line 1726
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/g;->D()V

    .line 1728
    :cond_ce7
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->b()V

    .line 1730
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/g;->m()I

    move-result v0

    if-ge v0, v10, :cond_cf9

    .line 1731
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v0, v10}, Landroidx/constraintlayout/a/a/g;->e(I)V

    const/4 v12, 0x1

    goto :goto_cfa

    :cond_cf9
    const/4 v12, 0x0

    .line 1734
    :goto_cfa
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/g;->n()I

    move-result v0

    if-ge v0, v13, :cond_d0a

    .line 1735
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v0, v13}, Landroidx/constraintlayout/a/a/g;->f(I)V

    const/16 v55, 0x1

    goto :goto_d0c

    :cond_d0a
    move/from16 v55, v12

    :goto_d0c
    if-eqz v55, :cond_d11

    .line 1739
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->b()V

    :cond_d11
    move/from16 v0, v56

    const/4 v1, 0x0

    :goto_d14
    if-ge v1, v0, :cond_d6b

    .line 1743
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/a/a/f;

    .line 37041
    iget-object v4, v3, Landroidx/constraintlayout/a/a/f;->aa:Ljava/lang/Object;

    .line 1744
    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_d61

    .line 1748
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/f;->m()I

    move-result v6

    if-ne v5, v6, :cond_d38

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/f;->n()I

    move-result v6

    if-eq v5, v6, :cond_d61

    .line 37643
    :cond_d38
    iget v5, v3, Landroidx/constraintlayout/a/a/f;->ab:I

    const/16 v6, 0x8

    if-eq v5, v6, :cond_d63

    .line 1750
    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/f;->m()I

    move-result v5

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1751
    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/f;->n()I

    move-result v3

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1752
    invoke-virtual {v4, v5, v3}, Landroid/view/View;->measure(II)V

    .line 1753
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->t:Landroidx/constraintlayout/a/f;

    if-eqz v3, :cond_d65

    .line 1754
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->t:Landroidx/constraintlayout/a/f;

    iget-wide v4, v3, Landroidx/constraintlayout/a/f;->b:J

    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    iput-wide v4, v3, Landroidx/constraintlayout/a/f;->b:J

    goto :goto_d67

    :cond_d61
    const/16 v6, 0x8

    :cond_d63
    const/high16 v9, 0x40000000    # 2.0f

    :cond_d65
    const-wide/16 v10, 0x1

    :goto_d67
    add-int/lit8 v1, v1, 0x1

    goto :goto_d14

    :cond_d6a
    const/4 v14, 0x0

    .line 1762
    :cond_d6b
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/g;->m()I

    move-result v0

    add-int/2addr v0, v7

    .line 1763
    iget-object v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/g;->n()I

    move-result v1

    add-int/2addr v1, v8

    .line 1765
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_db6

    move/from16 v3, p1

    .line 1766
    invoke-static {v0, v3, v14}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v0

    shl-int/lit8 v3, v14, 0x10

    move/from16 v4, p2

    .line 1767
    invoke-static {v1, v4, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v1

    const v3, 0xffffff

    and-int/2addr v0, v3

    and-int/2addr v1, v3

    .line 1771
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1772
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1773
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    .line 38159
    iget-boolean v3, v3, Landroidx/constraintlayout/a/a/g;->aH:Z

    const/high16 v4, 0x1000000

    if-eqz v3, :cond_da7

    or-int/2addr v0, v4

    .line 1776
    :cond_da7
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    .line 38164
    iget-boolean v3, v3, Landroidx/constraintlayout/a/a/g;->aI:Z

    if-eqz v3, :cond_dae

    or-int/2addr v1, v4

    .line 1779
    :cond_dae
    invoke-virtual {v2, v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setMeasuredDimension(II)V

    .line 1780
    iput v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 1781
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    return-void

    .line 1783
    :cond_db6
    invoke-virtual {v2, v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setMeasuredDimension(II)V

    .line 1784
    iput v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 1785
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 5

    .line 656
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_9

    .line 657
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 659
    :cond_9
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/view/View;)Landroidx/constraintlayout/a/a/f;

    move-result-object v0

    .line 660
    instance-of v1, p1, Landroidx/constraintlayout/widget/Guideline;

    const/4 v2, 0x1

    if-eqz v1, :cond_2e

    .line 661
    instance-of v0, v0, Landroidx/constraintlayout/a/a/i;

    if-nez v0, :cond_2e

    .line 662
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 663
    new-instance v1, Landroidx/constraintlayout/a/a/i;

    invoke-direct {v1}, Landroidx/constraintlayout/a/a/i;-><init>()V

    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->al:Landroidx/constraintlayout/a/a/f;

    .line 664
    iput-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Y:Z

    .line 665
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->al:Landroidx/constraintlayout/a/a/f;

    check-cast v1, Landroidx/constraintlayout/a/a/i;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->S:I

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/a/a/i;->l(I)V

    .line 668
    :cond_2e
    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v0, :cond_4d

    .line 669
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 670
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->a()V

    .line 671
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 672
    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Z:Z

    .line 673
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 674
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    :cond_4d
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 678
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Z

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .registers 4

    .line 686
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_9

    .line 687
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 689
    :cond_9
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 690
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/view/View;)Landroidx/constraintlayout/a/a/f;

    move-result-object v0

    .line 691
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/a/a/g;->b(Landroidx/constraintlayout/a/a/f;)V

    .line 692
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 693
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 694
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Z

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 4

    .line 645
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 646
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_c

    .line 647
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    :cond_c
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .line 3172
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 v0, 0x1

    .line 3173
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Z

    const/4 v0, -0x1

    .line 3175
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 3176
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    .line 3177
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:I

    .line 3178
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    const/4 v0, 0x0

    .line 3179
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 3180
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    return-void
.end method

.method public setConstraintSet(Landroidx/constraintlayout/widget/a;)V
    .registers 2

    .line 2004
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Landroidx/constraintlayout/widget/a;

    return-void
.end method

.method public setId(I)V
    .registers 4

    .line 589
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 590
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 591
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v0

    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setMaxHeight(I)V
    .registers 3

    .line 762
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    if-ne p1, v0, :cond_5

    return-void

    .line 765
    :cond_5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    .line 766
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMaxWidth(I)V
    .registers 3

    .line 749
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    if-ne p1, v0, :cond_5

    return-void

    .line 752
    :cond_5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    .line 753
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinHeight(I)V
    .registers 3

    .line 716
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    if-ne p1, v0, :cond_5

    return-void

    .line 719
    :cond_5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 720
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinWidth(I)V
    .registers 3

    .line 703
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    if-ne p1, v0, :cond_5

    return-void

    .line 706
    :cond_5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    .line 707
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setOptimizationLevel(I)V
    .registers 2

    .line 1955
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/a/a/g;

    .line 39113
    iput p1, p0, Landroidx/constraintlayout/a/a/g;->aF:I

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
