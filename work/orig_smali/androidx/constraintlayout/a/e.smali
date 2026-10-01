.class public final Landroidx/constraintlayout/a/e;
.super Ljava/lang/Object;
.source "LinearSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/a/e$a;
    }
.end annotation


# static fields
.field public static h:Landroidx/constraintlayout/a/f; = null

.field private static i:I = 0x3e8


# instance fields
.field a:I

.field public b:Landroidx/constraintlayout/a/e$a;

.field public c:[Landroidx/constraintlayout/a/b;

.field public d:Z

.field e:I

.field public f:I

.field public final g:Landroidx/constraintlayout/a/c;

.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/a/h;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:I

.field private m:[Z

.field private n:I

.field private o:[Landroidx/constraintlayout/a/h;

.field private p:I

.field private q:[Landroidx/constraintlayout/a/b;

.field private final r:Landroidx/constraintlayout/a/e$a;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Landroidx/constraintlayout/a/e;->a:I

    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Landroidx/constraintlayout/a/e;->j:Ljava/util/HashMap;

    const/16 v2, 0x20

    .line 54
    iput v2, p0, Landroidx/constraintlayout/a/e;->k:I

    .line 55
    iget v2, p0, Landroidx/constraintlayout/a/e;->k:I

    iput v2, p0, Landroidx/constraintlayout/a/e;->l:I

    .line 56
    iput-object v1, p0, Landroidx/constraintlayout/a/e;->c:[Landroidx/constraintlayout/a/b;

    .line 59
    iput-boolean v0, p0, Landroidx/constraintlayout/a/e;->d:Z

    .line 62
    iget v1, p0, Landroidx/constraintlayout/a/e;->k:I

    new-array v1, v1, [Z

    iput-object v1, p0, Landroidx/constraintlayout/a/e;->m:[Z

    const/4 v1, 0x1

    .line 64
    iput v1, p0, Landroidx/constraintlayout/a/e;->e:I

    .line 65
    iput v0, p0, Landroidx/constraintlayout/a/e;->f:I

    .line 66
    iget v1, p0, Landroidx/constraintlayout/a/e;->k:I

    iput v1, p0, Landroidx/constraintlayout/a/e;->n:I

    .line 70
    sget v1, Landroidx/constraintlayout/a/e;->i:I

    new-array v1, v1, [Landroidx/constraintlayout/a/h;

    iput-object v1, p0, Landroidx/constraintlayout/a/e;->o:[Landroidx/constraintlayout/a/h;

    .line 71
    iput v0, p0, Landroidx/constraintlayout/a/e;->p:I

    .line 73
    iget v0, p0, Landroidx/constraintlayout/a/e;->k:I

    new-array v0, v0, [Landroidx/constraintlayout/a/b;

    iput-object v0, p0, Landroidx/constraintlayout/a/e;->q:[Landroidx/constraintlayout/a/b;

    .line 79
    iget v0, p0, Landroidx/constraintlayout/a/e;->k:I

    new-array v0, v0, [Landroidx/constraintlayout/a/b;

    iput-object v0, p0, Landroidx/constraintlayout/a/e;->c:[Landroidx/constraintlayout/a/b;

    .line 80
    invoke-direct {p0}, Landroidx/constraintlayout/a/e;->g()V

    .line 81
    new-instance v0, Landroidx/constraintlayout/a/c;

    invoke-direct {v0}, Landroidx/constraintlayout/a/c;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/a/e;->g:Landroidx/constraintlayout/a/c;

    .line 82
    new-instance v0, Landroidx/constraintlayout/a/d;

    iget-object v1, p0, Landroidx/constraintlayout/a/e;->g:Landroidx/constraintlayout/a/c;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/a/d;-><init>(Landroidx/constraintlayout/a/c;)V

    iput-object v0, p0, Landroidx/constraintlayout/a/e;->b:Landroidx/constraintlayout/a/e$a;

    .line 83
    new-instance v0, Landroidx/constraintlayout/a/b;

    iget-object v1, p0, Landroidx/constraintlayout/a/e;->g:Landroidx/constraintlayout/a/c;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/a/b;-><init>(Landroidx/constraintlayout/a/c;)V

    iput-object v0, p0, Landroidx/constraintlayout/a/e;->r:Landroidx/constraintlayout/a/e$a;

    return-void
.end method

.method public static a(Landroidx/constraintlayout/a/e;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;FZ)Landroidx/constraintlayout/a/b;
    .registers 7

    .line 1230
    invoke-virtual {p0}, Landroidx/constraintlayout/a/e;->c()Landroidx/constraintlayout/a/b;

    move-result-object v0

    if-eqz p5, :cond_a

    const/4 p5, 0x0

    .line 13241
    invoke-virtual {v0, p0, p5}, Landroidx/constraintlayout/a/b;->a(Landroidx/constraintlayout/a/e;I)Landroidx/constraintlayout/a/b;

    .line 13331
    :cond_a
    iget-object p0, v0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    const/high16 p5, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, p5}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 13332
    iget-object p0, v0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p4

    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 13333
    iget-object p0, v0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {p0, p3, p4}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    return-object v0
.end method

.method public static a()Landroidx/constraintlayout/a/f;
    .registers 1

    .line 91
    sget-object v0, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    return-object v0
.end method

.method private final b(Landroidx/constraintlayout/a/e$a;)I
    .registers 16

    .line 559
    sget-object v0, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_d

    .line 560
    sget-object v0, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    iget-wide v3, v0, Landroidx/constraintlayout/a/f;->h:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/a/f;->h:J

    :cond_d
    const/4 v0, 0x0

    move v3, v0

    .line 564
    :goto_f
    iget v4, p0, Landroidx/constraintlayout/a/e;->e:I

    if-ge v3, v4, :cond_1a

    .line 565
    iget-object v4, p0, Landroidx/constraintlayout/a/e;->m:[Z

    aput-boolean v0, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1a
    const/4 v3, 0x1

    move v4, v0

    move v5, v4

    :goto_1d
    if-nez v4, :cond_bb

    .line 577
    sget-object v6, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    if-eqz v6, :cond_2a

    .line 578
    sget-object v6, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    iget-wide v7, v6, Landroidx/constraintlayout/a/f;->i:J

    add-long/2addr v7, v1

    iput-wide v7, v6, Landroidx/constraintlayout/a/f;->i:J

    :cond_2a
    add-int/lit8 v5, v5, 0x1

    .line 585
    iget v6, p0, Landroidx/constraintlayout/a/e;->e:I

    mul-int/lit8 v6, v6, 0x2

    if-lt v5, v6, :cond_33

    return v5

    .line 589
    :cond_33
    invoke-interface {p1}, Landroidx/constraintlayout/a/e$a;->b()Landroidx/constraintlayout/a/h;

    move-result-object v6

    if-eqz v6, :cond_43

    .line 590
    iget-object v6, p0, Landroidx/constraintlayout/a/e;->m:[Z

    invoke-interface {p1}, Landroidx/constraintlayout/a/e$a;->b()Landroidx/constraintlayout/a/h;

    move-result-object v7

    iget v7, v7, Landroidx/constraintlayout/a/h;->a:I

    aput-boolean v3, v6, v7

    .line 592
    :cond_43
    iget-object v6, p0, Landroidx/constraintlayout/a/e;->m:[Z

    invoke-interface {p1, v6}, Landroidx/constraintlayout/a/e$a;->a([Z)Landroidx/constraintlayout/a/h;

    move-result-object v6

    if-eqz v6, :cond_5a

    .line 598
    iget-object v7, p0, Landroidx/constraintlayout/a/e;->m:[Z

    iget v8, v6, Landroidx/constraintlayout/a/h;->a:I

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_54

    return v5

    .line 601
    :cond_54
    iget-object v7, p0, Landroidx/constraintlayout/a/e;->m:[Z

    iget v8, v6, Landroidx/constraintlayout/a/h;->a:I

    aput-boolean v3, v7, v8

    :cond_5a
    if-eqz v6, :cond_b8

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v8, -0x1

    move v10, v7

    move v9, v8

    move v7, v0

    .line 622
    :goto_63
    iget v11, p0, Landroidx/constraintlayout/a/e;->f:I

    if-ge v7, v11, :cond_95

    .line 623
    iget-object v11, p0, Landroidx/constraintlayout/a/e;->c:[Landroidx/constraintlayout/a/b;

    aget-object v11, v11, v7

    .line 624
    iget-object v12, v11, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    .line 625
    iget v12, v12, Landroidx/constraintlayout/a/h;->f:I

    sget v13, Landroidx/constraintlayout/a/h$a;->UNRESTRICTED$2fe29fa6:I

    if-eq v12, v13, :cond_92

    .line 629
    iget-boolean v12, v11, Landroidx/constraintlayout/a/b;->e:Z

    if-nez v12, :cond_92

    .line 633
    invoke-virtual {v11, v6}, Landroidx/constraintlayout/a/b;->a(Landroidx/constraintlayout/a/h;)Z

    move-result v12

    if-eqz v12, :cond_92

    .line 639
    iget-object v12, v11, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {v12, v6}, Landroidx/constraintlayout/a/a;->b(Landroidx/constraintlayout/a/h;)F

    move-result v12

    const/4 v13, 0x0

    cmpg-float v13, v12, v13

    if-gez v13, :cond_92

    .line 641
    iget v11, v11, Landroidx/constraintlayout/a/b;->b:F

    neg-float v11, v11

    div-float/2addr v11, v12

    cmpg-float v12, v11, v10

    if-gez v12, :cond_92

    move v9, v7

    move v10, v11

    :cond_92
    add-int/lit8 v7, v7, 0x1

    goto :goto_63

    :cond_95
    if-ltz v9, :cond_b8

    .line 656
    iget-object v7, p0, Landroidx/constraintlayout/a/e;->c:[Landroidx/constraintlayout/a/b;

    aget-object v7, v7, v9

    .line 657
    iget-object v10, v7, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    iput v8, v10, Landroidx/constraintlayout/a/h;->b:I

    .line 658
    sget-object v8, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    if-eqz v8, :cond_aa

    .line 659
    sget-object v8, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    iget-wide v10, v8, Landroidx/constraintlayout/a/f;->j:J

    add-long/2addr v10, v1

    iput-wide v10, v8, Landroidx/constraintlayout/a/f;->j:J

    .line 661
    :cond_aa
    invoke-virtual {v7, v6}, Landroidx/constraintlayout/a/b;->b(Landroidx/constraintlayout/a/h;)V

    .line 662
    iget-object v6, v7, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    iput v9, v6, Landroidx/constraintlayout/a/h;->b:I

    .line 663
    iget-object v6, v7, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/a/h;->c(Landroidx/constraintlayout/a/b;)V

    goto/16 :goto_1d

    :cond_b8
    move v4, v3

    goto/16 :goto_1d

    :cond_bb
    return v5
.end method

.method public static b(Ljava/lang/Object;)I
    .registers 2

    .line 344
    check-cast p0, Landroidx/constraintlayout/a/a/e;

    .line 5095
    iget-object p0, p0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    if-eqz p0, :cond_d

    .line 346
    iget p0, p0, Landroidx/constraintlayout/a/h;->d:F

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method private b(I)Landroidx/constraintlayout/a/h;
    .registers 5

    .line 305
    iget-object v0, p0, Landroidx/constraintlayout/a/e;->g:Landroidx/constraintlayout/a/c;

    iget-object v0, v0, Landroidx/constraintlayout/a/c;->b:Landroidx/constraintlayout/a/g$a;

    invoke-interface {v0}, Landroidx/constraintlayout/a/g$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/a/h;

    if-nez v0, :cond_14

    .line 307
    new-instance v0, Landroidx/constraintlayout/a/h;

    invoke-direct {v0, p1}, Landroidx/constraintlayout/a/h;-><init>(I)V

    .line 3218
    iput p1, v0, Landroidx/constraintlayout/a/h;->f:I

    goto :goto_19

    .line 310
    :cond_14
    invoke-virtual {v0}, Landroidx/constraintlayout/a/h;->b()V

    .line 4218
    iput p1, v0, Landroidx/constraintlayout/a/h;->f:I

    .line 313
    :goto_19
    iget p1, p0, Landroidx/constraintlayout/a/e;->p:I

    sget v1, Landroidx/constraintlayout/a/e;->i:I

    if-lt p1, v1, :cond_31

    .line 314
    sget p1, Landroidx/constraintlayout/a/e;->i:I

    mul-int/lit8 p1, p1, 0x2

    sput p1, Landroidx/constraintlayout/a/e;->i:I

    .line 315
    iget-object p1, p0, Landroidx/constraintlayout/a/e;->o:[Landroidx/constraintlayout/a/h;

    sget v1, Landroidx/constraintlayout/a/e;->i:I

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/constraintlayout/a/h;

    iput-object p1, p0, Landroidx/constraintlayout/a/e;->o:[Landroidx/constraintlayout/a/h;

    .line 317
    :cond_31
    iget-object p1, p0, Landroidx/constraintlayout/a/e;->o:[Landroidx/constraintlayout/a/h;

    iget v1, p0, Landroidx/constraintlayout/a/e;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/constraintlayout/a/e;->p:I

    aput-object v0, p1, v1

    return-object v0
.end method

.method private final b(Landroidx/constraintlayout/a/b;)V
    .registers 3

    .line 448
    iget v0, p0, Landroidx/constraintlayout/a/e;->f:I

    if-lez v0, :cond_14

    .line 449
    iget-object v0, p1, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    iget-object p0, p0, Landroidx/constraintlayout/a/e;->c:[Landroidx/constraintlayout/a/b;

    invoke-virtual {v0, p1, p0}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/b;[Landroidx/constraintlayout/a/b;)V

    .line 450
    iget-object p0, p1, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    iget p0, p0, Landroidx/constraintlayout/a/a;->a:I

    if-nez p0, :cond_14

    const/4 p0, 0x1

    .line 451
    iput-boolean p0, p1, Landroidx/constraintlayout/a/b;->e:Z

    :cond_14
    return-void
.end method

.method private final c(Landroidx/constraintlayout/a/b;)V
    .registers 5

    .line 538
    iget-object v0, p0, Landroidx/constraintlayout/a/e;->c:[Landroidx/constraintlayout/a/b;

    iget v1, p0, Landroidx/constraintlayout/a/e;->f:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_15

    .line 539
    iget-object v0, p0, Landroidx/constraintlayout/a/e;->g:Landroidx/constraintlayout/a/c;

    iget-object v0, v0, Landroidx/constraintlayout/a/c;->a:Landroidx/constraintlayout/a/g$a;

    iget-object v1, p0, Landroidx/constraintlayout/a/e;->c:[Landroidx/constraintlayout/a/b;

    iget v2, p0, Landroidx/constraintlayout/a/e;->f:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Landroidx/constraintlayout/a/g$a;->a(Ljava/lang/Object;)Z

    .line 541
    :cond_15
    iget-object v0, p0, Landroidx/constraintlayout/a/e;->c:[Landroidx/constraintlayout/a/b;

    iget v1, p0, Landroidx/constraintlayout/a/e;->f:I

    aput-object p1, v0, v1

    .line 542
    iget-object v0, p1, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    iget v1, p0, Landroidx/constraintlayout/a/e;->f:I

    iput v1, v0, Landroidx/constraintlayout/a/h;->b:I

    .line 543
    iget v0, p0, Landroidx/constraintlayout/a/e;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/a/e;->f:I

    .line 544
    iget-object p0, p1, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/a/h;->c(Landroidx/constraintlayout/a/b;)V

    return-void
.end method

.method private f()V
    .registers 6

    .line 112
    iget v0, p0, Landroidx/constraintlayout/a/e;->k:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/constraintlayout/a/e;->k:I

    .line 113
    iget-object v0, p0, Landroidx/constraintlayout/a/e;->c:[Landroidx/constraintlayout/a/b;

    iget v1, p0, Landroidx/constraintlayout/a/e;->k:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/a/b;

    iput-object v0, p0, Landroidx/constraintlayout/a/e;->c:[Landroidx/constraintlayout/a/b;

    .line 114
    iget-object v0, p0, Landroidx/constraintlayout/a/e;->g:Landroidx/constraintlayout/a/c;

    iget-object v1, p0, Landroidx/constraintlayout/a/e;->g:Landroidx/constraintlayout/a/c;

    iget-object v1, v1, Landroidx/constraintlayout/a/c;->c:[Landroidx/constraintlayout/a/h;

    iget v2, p0, Landroidx/constraintlayout/a/e;->k:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/constraintlayout/a/h;

    iput-object v1, v0, Landroidx/constraintlayout/a/c;->c:[Landroidx/constraintlayout/a/h;

    .line 115
    iget v0, p0, Landroidx/constraintlayout/a/e;->k:I

    new-array v0, v0, [Z

    iput-object v0, p0, Landroidx/constraintlayout/a/e;->m:[Z

    .line 116
    iget v0, p0, Landroidx/constraintlayout/a/e;->k:I

    iput v0, p0, Landroidx/constraintlayout/a/e;->l:I

    .line 117
    iget v0, p0, Landroidx/constraintlayout/a/e;->k:I

    iput v0, p0, Landroidx/constraintlayout/a/e;->n:I

    .line 118
    sget-object v0, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    if-eqz v0, :cond_50

    .line 119
    sget-object v0, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    iget-wide v1, v0, Landroidx/constraintlayout/a/f;->d:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/a/f;->d:J

    .line 120
    sget-object v0, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    iget-wide v1, v0, Landroidx/constraintlayout/a/f;->p:J

    iget p0, p0, Landroidx/constraintlayout/a/e;->k:I

    int-to-long v3, p0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/constraintlayout/a/f;->p:J

    .line 121
    sget-object p0, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    iget-wide v0, p0, Landroidx/constraintlayout/a/f;->p:J

    iput-wide v0, p0, Landroidx/constraintlayout/a/f;->D:J

    :cond_50
    return-void
.end method

.method private g()V
    .registers 4

    const/4 v0, 0x0

    .line 129
    :goto_1
    iget-object v1, p0, Landroidx/constraintlayout/a/e;->c:[Landroidx/constraintlayout/a/b;

    array-length v1, v1

    if-ge v0, v1, :cond_1b

    .line 130
    iget-object v1, p0, Landroidx/constraintlayout/a/e;->c:[Landroidx/constraintlayout/a/b;

    aget-object v1, v1, v0

    if-eqz v1, :cond_13

    .line 132
    iget-object v2, p0, Landroidx/constraintlayout/a/e;->g:Landroidx/constraintlayout/a/c;

    iget-object v2, v2, Landroidx/constraintlayout/a/c;->a:Landroidx/constraintlayout/a/g$a;

    invoke-interface {v2, v1}, Landroidx/constraintlayout/a/g$a;->a(Ljava/lang/Object;)Z

    .line 134
    :cond_13
    iget-object v1, p0, Landroidx/constraintlayout/a/e;->c:[Landroidx/constraintlayout/a/b;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    return-void
.end method


# virtual methods
.method public final a(I)Landroidx/constraintlayout/a/h;
    .registers 7

    .line 283
    sget-object v0, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    if-eqz v0, :cond_d

    .line 284
    sget-object v0, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    iget-wide v1, v0, Landroidx/constraintlayout/a/f;->m:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/a/f;->m:J

    .line 286
    :cond_d
    iget v0, p0, Landroidx/constraintlayout/a/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/a/e;->l:I

    if-lt v0, v1, :cond_18

    .line 287
    invoke-direct {p0}, Landroidx/constraintlayout/a/e;->f()V

    .line 289
    :cond_18
    sget v0, Landroidx/constraintlayout/a/h$a;->ERROR$2fe29fa6:I

    invoke-direct {p0, v0}, Landroidx/constraintlayout/a/e;->b(I)Landroidx/constraintlayout/a/h;

    move-result-object v0

    .line 290
    iget v1, p0, Landroidx/constraintlayout/a/e;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/a/e;->a:I

    .line 291
    iget v1, p0, Landroidx/constraintlayout/a/e;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/a/e;->e:I

    .line 292
    iget v1, p0, Landroidx/constraintlayout/a/e;->a:I

    iput v1, v0, Landroidx/constraintlayout/a/h;->a:I

    .line 293
    iput p1, v0, Landroidx/constraintlayout/a/h;->c:I

    .line 294
    iget-object p1, p0, Landroidx/constraintlayout/a/e;->g:Landroidx/constraintlayout/a/c;

    iget-object p1, p1, Landroidx/constraintlayout/a/c;->c:[Landroidx/constraintlayout/a/h;

    iget v1, p0, Landroidx/constraintlayout/a/e;->a:I

    aput-object v0, p1, v1

    .line 295
    iget-object p0, p0, Landroidx/constraintlayout/a/e;->b:Landroidx/constraintlayout/a/e$a;

    invoke-interface {p0, v0}, Landroidx/constraintlayout/a/e$a;->c(Landroidx/constraintlayout/a/h;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 173
    :cond_4
    iget v1, p0, Landroidx/constraintlayout/a/e;->e:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroidx/constraintlayout/a/e;->l:I

    if-lt v1, v2, :cond_f

    .line 174
    invoke-direct {p0}, Landroidx/constraintlayout/a/e;->f()V

    .line 177
    :cond_f
    instance-of v1, p1, Landroidx/constraintlayout/a/a/e;

    if-eqz v1, :cond_57

    .line 178
    check-cast p1, Landroidx/constraintlayout/a/a/e;

    .line 2095
    iget-object v0, p1, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    if-nez v0, :cond_1f

    .line 180
    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e;->a()V

    .line 3095
    iget-object p1, p1, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/h;

    move-object v0, p1

    .line 183
    :cond_1f
    iget p1, v0, Landroidx/constraintlayout/a/h;->a:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_34

    iget p1, v0, Landroidx/constraintlayout/a/h;->a:I

    iget v2, p0, Landroidx/constraintlayout/a/e;->a:I

    if-gt p1, v2, :cond_34

    iget-object p1, p0, Landroidx/constraintlayout/a/e;->g:Landroidx/constraintlayout/a/c;

    iget-object p1, p1, Landroidx/constraintlayout/a/c;->c:[Landroidx/constraintlayout/a/h;

    iget v2, v0, Landroidx/constraintlayout/a/h;->a:I

    aget-object p1, p1, v2

    if-nez p1, :cond_57

    .line 186
    :cond_34
    iget p1, v0, Landroidx/constraintlayout/a/h;->a:I

    if-eq p1, v1, :cond_3b

    .line 187
    invoke-virtual {v0}, Landroidx/constraintlayout/a/h;->b()V

    .line 189
    :cond_3b
    iget p1, p0, Landroidx/constraintlayout/a/e;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/constraintlayout/a/e;->a:I

    .line 190
    iget p1, p0, Landroidx/constraintlayout/a/e;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/constraintlayout/a/e;->e:I

    .line 191
    iget p1, p0, Landroidx/constraintlayout/a/e;->a:I

    iput p1, v0, Landroidx/constraintlayout/a/h;->a:I

    .line 192
    sget p1, Landroidx/constraintlayout/a/h$a;->UNRESTRICTED$2fe29fa6:I

    iput p1, v0, Landroidx/constraintlayout/a/h;->f:I

    .line 193
    iget-object p1, p0, Landroidx/constraintlayout/a/e;->g:Landroidx/constraintlayout/a/c;

    iget-object p1, p1, Landroidx/constraintlayout/a/c;->c:[Landroidx/constraintlayout/a/h;

    iget p0, p0, Landroidx/constraintlayout/a/e;->a:I

    aput-object v0, p1, p0

    :cond_57
    return-object v0
.end method

.method public final a(Landroidx/constraintlayout/a/b;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_7

    return-void

    .line 464
    :cond_7
    sget-object v2, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    const-wide/16 v3, 0x1

    if-eqz v2, :cond_1f

    .line 465
    sget-object v2, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    iget-wide v5, v2, Landroidx/constraintlayout/a/f;->f:J

    add-long/2addr v5, v3

    iput-wide v5, v2, Landroidx/constraintlayout/a/f;->f:J

    .line 466
    iget-boolean v2, v1, Landroidx/constraintlayout/a/b;->e:Z

    if-eqz v2, :cond_1f

    .line 467
    sget-object v2, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    iget-wide v5, v2, Landroidx/constraintlayout/a/f;->g:J

    add-long/2addr v5, v3

    iput-wide v5, v2, Landroidx/constraintlayout/a/f;->g:J

    .line 470
    :cond_1f
    iget v2, v0, Landroidx/constraintlayout/a/e;->f:I

    const/4 v5, 0x1

    add-int/2addr v2, v5

    iget v6, v0, Landroidx/constraintlayout/a/e;->n:I

    if-ge v2, v6, :cond_2e

    iget v2, v0, Landroidx/constraintlayout/a/e;->e:I

    add-int/2addr v2, v5

    iget v6, v0, Landroidx/constraintlayout/a/e;->l:I

    if-lt v2, v6, :cond_31

    .line 471
    :cond_2e
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/a/e;->f()V

    .line 478
    :cond_31
    iget-boolean v2, v1, Landroidx/constraintlayout/a/b;->e:Z

    if-nez v2, :cond_1be

    .line 480
    invoke-direct/range {p0 .. p1}, Landroidx/constraintlayout/a/e;->b(Landroidx/constraintlayout/a/b;)V

    .line 6445
    iget-object v2, v1, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    const/4 v7, 0x0

    if-nez v2, :cond_4b

    iget v2, v1, Landroidx/constraintlayout/a/b;->b:F

    cmpl-float v2, v2, v7

    if-nez v2, :cond_4b

    iget-object v2, v1, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    iget v2, v2, Landroidx/constraintlayout/a/a;->a:I

    if-nez v2, :cond_4b

    move v2, v5

    goto :goto_4c

    :cond_4b
    const/4 v2, 0x0

    :goto_4c
    if-eqz v2, :cond_4f

    return-void

    .line 7391
    :cond_4f
    iget v2, v1, Landroidx/constraintlayout/a/b;->b:F

    cmpg-float v2, v2, v7

    const/4 v8, -0x1

    if-gez v2, :cond_76

    .line 7393
    iget v2, v1, Landroidx/constraintlayout/a/b;->b:F

    const/high16 v9, -0x40800000    # -1.0f

    mul-float/2addr v2, v9

    iput v2, v1, Landroidx/constraintlayout/a/b;->b:F

    .line 7394
    iget-object v2, v1, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    .line 7443
    iget v10, v2, Landroidx/constraintlayout/a/a;->g:I

    const/4 v11, 0x0

    :goto_62
    if-eq v10, v8, :cond_76

    .line 7445
    iget v12, v2, Landroidx/constraintlayout/a/a;->a:I

    if-ge v11, v12, :cond_76

    .line 7446
    iget-object v12, v2, Landroidx/constraintlayout/a/a;->f:[F

    aget v13, v12, v10

    mul-float/2addr v13, v9

    aput v13, v12, v10

    .line 7447
    iget-object v12, v2, Landroidx/constraintlayout/a/a;->e:[I

    aget v10, v12, v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_62

    .line 8408
    :cond_76
    iget-object v2, v1, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    .line 8512
    iget v9, v2, Landroidx/constraintlayout/a/a;->g:I

    move v14, v7

    move/from16 v16, v14

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_83
    if-eq v9, v8, :cond_116

    .line 8515
    iget v6, v2, Landroidx/constraintlayout/a/a;->a:I

    if-ge v11, v6, :cond_116

    .line 8516
    iget-object v6, v2, Landroidx/constraintlayout/a/a;->f:[F

    aget v6, v6, v9

    .line 8518
    iget-object v10, v2, Landroidx/constraintlayout/a/a;->c:Landroidx/constraintlayout/a/c;

    iget-object v10, v10, Landroidx/constraintlayout/a/c;->c:[Landroidx/constraintlayout/a/h;

    iget-object v8, v2, Landroidx/constraintlayout/a/a;->d:[I

    aget v8, v8, v9

    aget-object v8, v10, v8

    cmpg-float v10, v6, v7

    if-gez v10, :cond_ad

    const v10, -0x457ced91    # -0.001f

    cmpl-float v10, v6, v10

    if-lez v10, :cond_be

    .line 8521
    iget-object v6, v2, Landroidx/constraintlayout/a/a;->f:[F

    aput v7, v6, v9

    .line 8523
    iget-object v6, v2, Landroidx/constraintlayout/a/a;->b:Landroidx/constraintlayout/a/b;

    invoke-virtual {v8, v6}, Landroidx/constraintlayout/a/h;->b(Landroidx/constraintlayout/a/b;)V

    :goto_ab
    move v6, v7

    goto :goto_be

    :cond_ad
    const v10, 0x3a83126f    # 0.001f

    cmpg-float v10, v6, v10

    if-gez v10, :cond_be

    .line 8527
    iget-object v6, v2, Landroidx/constraintlayout/a/a;->f:[F

    aput v7, v6, v9

    .line 8529
    iget-object v6, v2, Landroidx/constraintlayout/a/a;->b:Landroidx/constraintlayout/a/b;

    invoke-virtual {v8, v6}, Landroidx/constraintlayout/a/h;->b(Landroidx/constraintlayout/a/b;)V

    goto :goto_ab

    :cond_be
    :goto_be
    cmpl-float v10, v6, v7

    if-eqz v10, :cond_10b

    .line 8533
    iget v10, v8, Landroidx/constraintlayout/a/h;->f:I

    sget v3, Landroidx/constraintlayout/a/h$a;->UNRESTRICTED$2fe29fa6:I

    if-ne v10, v3, :cond_e5

    if-nez v12, :cond_d2

    .line 8537
    invoke-static {v8}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;)Z

    move-result v3

    :goto_ce
    move v15, v3

    :goto_cf
    move v14, v6

    move-object v12, v8

    goto :goto_10b

    :cond_d2
    cmpl-float v3, v14, v6

    if-lez v3, :cond_db

    .line 8541
    invoke-static {v8}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;)Z

    move-result v3

    goto :goto_ce

    :cond_db
    if-nez v15, :cond_10b

    .line 8542
    invoke-static {v8}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;)Z

    move-result v3

    if-eqz v3, :cond_10b

    move v15, v5

    goto :goto_cf

    :cond_e5
    if-nez v12, :cond_10b

    cmpg-float v3, v6, v7

    if-gez v3, :cond_10b

    if-nez v13, :cond_f7

    .line 8552
    invoke-static {v8}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;)Z

    move-result v3

    :goto_f1
    move/from16 v17, v3

    :goto_f3
    move/from16 v16, v6

    move-object v13, v8

    goto :goto_10b

    :cond_f7
    cmpl-float v3, v16, v6

    if-lez v3, :cond_100

    .line 8556
    invoke-static {v8}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;)Z

    move-result v3

    goto :goto_f1

    :cond_100
    if-nez v17, :cond_10b

    .line 8557
    invoke-static {v8}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;)Z

    move-result v3

    if-eqz v3, :cond_10b

    move/from16 v17, v5

    goto :goto_f3

    .line 8565
    :cond_10b
    :goto_10b
    iget-object v3, v2, Landroidx/constraintlayout/a/a;->e:[I

    aget v9, v3, v9

    add-int/lit8 v11, v11, 0x1

    const-wide/16 v3, 0x1

    const/4 v8, -0x1

    goto/16 :goto_83

    :cond_116
    if-eqz v12, :cond_119

    goto :goto_11a

    :cond_119
    move-object v12, v13

    :goto_11a
    if-nez v12, :cond_11e

    move v2, v5

    goto :goto_122

    .line 8413
    :cond_11e
    invoke-virtual {v1, v12}, Landroidx/constraintlayout/a/b;->b(Landroidx/constraintlayout/a/h;)V

    const/4 v2, 0x0

    .line 8415
    :goto_122
    iget-object v3, v1, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    iget v3, v3, Landroidx/constraintlayout/a/a;->a:I

    if-nez v3, :cond_12a

    .line 8416
    iput-boolean v5, v1, Landroidx/constraintlayout/a/b;->e:Z

    :cond_12a
    if-eqz v2, :cond_1a0

    .line 9226
    sget-object v2, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    if-eqz v2, :cond_139

    .line 9227
    sget-object v2, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    iget-wide v3, v2, Landroidx/constraintlayout/a/f;->o:J

    const-wide/16 v8, 0x1

    add-long/2addr v3, v8

    iput-wide v3, v2, Landroidx/constraintlayout/a/f;->o:J

    .line 9229
    :cond_139
    iget v2, v0, Landroidx/constraintlayout/a/e;->e:I

    add-int/2addr v2, v5

    iget v3, v0, Landroidx/constraintlayout/a/e;->l:I

    if-lt v2, v3, :cond_143

    .line 9230
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/a/e;->f()V

    .line 9232
    :cond_143
    sget v2, Landroidx/constraintlayout/a/h$a;->SLACK$2fe29fa6:I

    invoke-direct {v0, v2}, Landroidx/constraintlayout/a/e;->b(I)Landroidx/constraintlayout/a/h;

    move-result-object v2

    .line 9233
    iget v3, v0, Landroidx/constraintlayout/a/e;->a:I

    add-int/2addr v3, v5

    iput v3, v0, Landroidx/constraintlayout/a/e;->a:I

    .line 9234
    iget v3, v0, Landroidx/constraintlayout/a/e;->e:I

    add-int/2addr v3, v5

    iput v3, v0, Landroidx/constraintlayout/a/e;->e:I

    .line 9235
    iget v3, v0, Landroidx/constraintlayout/a/e;->a:I

    iput v3, v2, Landroidx/constraintlayout/a/h;->a:I

    .line 9236
    iget-object v3, v0, Landroidx/constraintlayout/a/e;->g:Landroidx/constraintlayout/a/c;

    iget-object v3, v3, Landroidx/constraintlayout/a/c;->c:[Landroidx/constraintlayout/a/h;

    iget v4, v0, Landroidx/constraintlayout/a/e;->a:I

    aput-object v2, v3, v4

    .line 497
    iput-object v2, v1, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    .line 498
    invoke-direct/range {p0 .. p1}, Landroidx/constraintlayout/a/e;->c(Landroidx/constraintlayout/a/b;)V

    .line 500
    iget-object v3, v0, Landroidx/constraintlayout/a/e;->r:Landroidx/constraintlayout/a/e$a;

    invoke-interface {v3, v1}, Landroidx/constraintlayout/a/e$a;->a(Landroidx/constraintlayout/a/e$a;)V

    .line 501
    iget-object v3, v0, Landroidx/constraintlayout/a/e;->r:Landroidx/constraintlayout/a/e$a;

    invoke-direct {v0, v3}, Landroidx/constraintlayout/a/e;->b(Landroidx/constraintlayout/a/e$a;)I

    .line 502
    iget v3, v2, Landroidx/constraintlayout/a/h;->b:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_19e

    .line 506
    iget-object v3, v1, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    if-ne v3, v2, :cond_190

    .line 9422
    iget-object v3, v1, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroidx/constraintlayout/a/a;->a([ZLandroidx/constraintlayout/a/h;)Landroidx/constraintlayout/a/h;

    move-result-object v2

    if-eqz v2, :cond_190

    .line 510
    sget-object v3, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    if-eqz v3, :cond_18d

    .line 511
    sget-object v3, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    iget-wide v8, v3, Landroidx/constraintlayout/a/f;->j:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v3, Landroidx/constraintlayout/a/f;->j:J

    .line 513
    :cond_18d
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/a/b;->b(Landroidx/constraintlayout/a/h;)V

    .line 516
    :cond_190
    iget-boolean v2, v1, Landroidx/constraintlayout/a/b;->e:Z

    if-nez v2, :cond_199

    .line 517
    iget-object v2, v1, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/a/h;->c(Landroidx/constraintlayout/a/b;)V

    .line 519
    :cond_199
    iget v2, v0, Landroidx/constraintlayout/a/e;->f:I

    sub-int/2addr v2, v5

    iput v2, v0, Landroidx/constraintlayout/a/e;->f:I

    :cond_19e
    move v6, v5

    goto :goto_1a1

    :cond_1a0
    const/4 v6, 0x0

    .line 10038
    :goto_1a1
    iget-object v2, v1, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    if-eqz v2, :cond_1b6

    iget-object v2, v1, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    iget v2, v2, Landroidx/constraintlayout/a/h;->f:I

    sget v3, Landroidx/constraintlayout/a/h$a;->UNRESTRICTED$2fe29fa6:I

    if-eq v2, v3, :cond_1b3

    iget v2, v1, Landroidx/constraintlayout/a/b;->b:F

    cmpg-float v2, v2, v7

    if-ltz v2, :cond_1b6

    :cond_1b3
    move/from16 v18, v5

    goto :goto_1b8

    :cond_1b6
    const/16 v18, 0x0

    :goto_1b8
    if-nez v18, :cond_1bb

    return-void

    :cond_1bb
    move/from16 v18, v6

    goto :goto_1c0

    :cond_1be
    const/16 v18, 0x0

    :goto_1c0
    if-nez v18, :cond_1c5

    .line 533
    invoke-direct/range {p0 .. p1}, Landroidx/constraintlayout/a/e;->c(Landroidx/constraintlayout/a/b;)V

    :cond_1c5
    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/b;II)V
    .registers 4

    .line 258
    invoke-virtual {p0, p3}, Landroidx/constraintlayout/a/e;->a(I)Landroidx/constraintlayout/a/h;

    move-result-object p0

    .line 3153
    iget-object p1, p1, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    int-to-float p2, p2

    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/e$a;)V
    .registers 19

    move-object/from16 v0, p0

    .line 416
    sget-object v1, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_29

    .line 417
    sget-object v1, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    iget-wide v4, v1, Landroidx/constraintlayout/a/f;->t:J

    add-long/2addr v4, v2

    iput-wide v4, v1, Landroidx/constraintlayout/a/f;->t:J

    .line 418
    sget-object v1, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    iget-wide v4, v1, Landroidx/constraintlayout/a/f;->u:J

    iget v6, v0, Landroidx/constraintlayout/a/e;->e:I

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Landroidx/constraintlayout/a/f;->u:J

    .line 419
    sget-object v1, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    iget-wide v4, v1, Landroidx/constraintlayout/a/f;->v:J

    iget v6, v0, Landroidx/constraintlayout/a/e;->f:I

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Landroidx/constraintlayout/a/f;->v:J

    .line 426
    :cond_29
    move-object/from16 v4, p1

    check-cast v4, Landroidx/constraintlayout/a/b;

    invoke-direct {v0, v4}, Landroidx/constraintlayout/a/e;->b(Landroidx/constraintlayout/a/b;)V

    const/4 v5, 0x0

    .line 5713
    :goto_31
    iget v6, v0, Landroidx/constraintlayout/a/e;->f:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v5, v6, :cond_52

    .line 5714
    iget-object v6, v0, Landroidx/constraintlayout/a/e;->c:[Landroidx/constraintlayout/a/b;

    aget-object v6, v6, v5

    iget-object v6, v6, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    .line 5715
    iget v6, v6, Landroidx/constraintlayout/a/h;->f:I

    sget v9, Landroidx/constraintlayout/a/h$a;->UNRESTRICTED$2fe29fa6:I

    if-eq v6, v9, :cond_4f

    .line 5718
    iget-object v6, v0, Landroidx/constraintlayout/a/e;->c:[Landroidx/constraintlayout/a/b;

    aget-object v6, v6, v5

    iget v6, v6, Landroidx/constraintlayout/a/b;->b:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4f

    move v5, v8

    goto :goto_53

    :cond_4f
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    :cond_52
    const/4 v5, 0x0

    :goto_53
    if-eqz v5, :cond_fe

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_57
    if-nez v5, :cond_fe

    .line 5736
    sget-object v9, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    if-eqz v9, :cond_64

    .line 5737
    sget-object v9, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    iget-wide v10, v9, Landroidx/constraintlayout/a/f;->k:J

    add-long/2addr v10, v2

    iput-wide v10, v9, Landroidx/constraintlayout/a/f;->k:J

    :cond_64
    add-int/2addr v6, v8

    const v9, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v10, -0x1

    move v13, v9

    move v11, v10

    move v12, v11

    const/4 v9, 0x0

    const/4 v14, 0x0

    .line 5748
    :goto_6e
    iget v15, v0, Landroidx/constraintlayout/a/e;->f:I

    if-ge v9, v15, :cond_c2

    .line 5749
    iget-object v15, v0, Landroidx/constraintlayout/a/e;->c:[Landroidx/constraintlayout/a/b;

    aget-object v15, v15, v9

    .line 5750
    iget-object v4, v15, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    .line 5751
    iget v4, v4, Landroidx/constraintlayout/a/h;->f:I

    sget v8, Landroidx/constraintlayout/a/h$a;->UNRESTRICTED$2fe29fa6:I

    if-eq v4, v8, :cond_bb

    .line 5756
    iget-boolean v4, v15, Landroidx/constraintlayout/a/b;->e:Z

    if-nez v4, :cond_bb

    .line 5759
    iget v4, v15, Landroidx/constraintlayout/a/b;->b:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_bb

    const/4 v4, 0x1

    .line 5764
    :goto_89
    iget v8, v0, Landroidx/constraintlayout/a/e;->e:I

    if-ge v4, v8, :cond_bb

    .line 5765
    iget-object v8, v0, Landroidx/constraintlayout/a/e;->g:Landroidx/constraintlayout/a/c;

    iget-object v8, v8, Landroidx/constraintlayout/a/c;->c:[Landroidx/constraintlayout/a/h;

    aget-object v8, v8, v4

    .line 5766
    iget-object v2, v15, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {v2, v8}, Landroidx/constraintlayout/a/a;->b(Landroidx/constraintlayout/a/h;)F

    move-result v2

    cmpg-float v3, v2, v7

    if-lez v3, :cond_b5

    const/4 v3, 0x0

    :goto_9e
    const/4 v7, 0x7

    if-ge v3, v7, :cond_b5

    .line 5774
    iget-object v7, v8, Landroidx/constraintlayout/a/h;->e:[F

    aget v7, v7, v3

    div-float/2addr v7, v2

    cmpg-float v16, v7, v13

    if-gez v16, :cond_ac

    if-eq v3, v14, :cond_ae

    :cond_ac
    if-le v3, v14, :cond_b2

    :cond_ae
    move v14, v3

    move v12, v4

    move v13, v7

    move v11, v9

    :cond_b2
    add-int/lit8 v3, v3, 0x1

    goto :goto_9e

    :cond_b5
    add-int/lit8 v4, v4, 0x1

    const-wide/16 v2, 0x1

    const/4 v7, 0x0

    goto :goto_89

    :cond_bb
    add-int/lit8 v9, v9, 0x1

    const-wide/16 v2, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto :goto_6e

    :cond_c2
    if-eq v11, v10, :cond_ef

    .line 5788
    iget-object v2, v0, Landroidx/constraintlayout/a/e;->c:[Landroidx/constraintlayout/a/b;

    aget-object v2, v2, v11

    .line 5793
    iget-object v3, v2, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    iput v10, v3, Landroidx/constraintlayout/a/h;->b:I

    .line 5794
    sget-object v3, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    if-eqz v3, :cond_da

    .line 5795
    sget-object v3, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    iget-wide v7, v3, Landroidx/constraintlayout/a/f;->j:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v3, Landroidx/constraintlayout/a/f;->j:J

    goto :goto_dc

    :cond_da
    const-wide/16 v9, 0x1

    .line 5797
    :goto_dc
    iget-object v3, v0, Landroidx/constraintlayout/a/e;->g:Landroidx/constraintlayout/a/c;

    iget-object v3, v3, Landroidx/constraintlayout/a/c;->c:[Landroidx/constraintlayout/a/h;

    aget-object v3, v3, v12

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/a/b;->b(Landroidx/constraintlayout/a/h;)V

    .line 5798
    iget-object v3, v2, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    iput v11, v3, Landroidx/constraintlayout/a/h;->b:I

    .line 5799
    iget-object v3, v2, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/a/h;->c(Landroidx/constraintlayout/a/b;)V

    goto :goto_f2

    :cond_ef
    const-wide/16 v9, 0x1

    const/4 v5, 0x1

    .line 5808
    :goto_f2
    iget v2, v0, Landroidx/constraintlayout/a/e;->e:I

    div-int/lit8 v2, v2, 0x2

    if-le v6, v2, :cond_f9

    const/4 v5, 0x1

    :cond_f9
    move-wide v2, v9

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_57

    .line 435
    :cond_fe
    invoke-direct/range {p0 .. p1}, Landroidx/constraintlayout/a/e;->b(Landroidx/constraintlayout/a/e$a;)I

    .line 440
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/e;->e()V

    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/h;I)V
    .registers 7

    .line 1146
    iget v0, p1, Landroidx/constraintlayout/a/h;->b:I

    .line 1147
    iget v1, p1, Landroidx/constraintlayout/a/h;->b:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_40

    .line 1148
    iget-object v1, p0, Landroidx/constraintlayout/a/e;->c:[Landroidx/constraintlayout/a/b;

    aget-object v0, v1, v0

    .line 1149
    iget-boolean v1, v0, Landroidx/constraintlayout/a/b;->e:Z

    if-eqz v1, :cond_14

    int-to-float p0, p2

    .line 1150
    iput p0, v0, Landroidx/constraintlayout/a/b;->b:F

    return-void

    .line 1152
    :cond_14
    iget-object v1, v0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    iget v1, v1, Landroidx/constraintlayout/a/a;->a:I

    if-nez v1, :cond_20

    .line 1153
    iput-boolean v2, v0, Landroidx/constraintlayout/a/b;->e:Z

    int-to-float p0, p2

    .line 1154
    iput p0, v0, Landroidx/constraintlayout/a/b;->b:F

    return-void

    .line 1156
    :cond_20
    invoke-virtual {p0}, Landroidx/constraintlayout/a/e;->c()Landroidx/constraintlayout/a/b;

    move-result-object v0

    if-gez p2, :cond_32

    mul-int/2addr p2, v3

    int-to-float p2, p2

    .line 12123
    iput p2, v0, Landroidx/constraintlayout/a/b;->b:F

    .line 12124
    iget-object p2, v0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, p1, v1}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    goto :goto_3c

    :cond_32
    int-to-float p2, p2

    .line 12126
    iput p2, v0, Landroidx/constraintlayout/a/b;->b:F

    .line 12127
    iget-object p2, v0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p2, p1, v1}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 1158
    :goto_3c
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/b;)V

    return-void

    .line 1162
    :cond_40
    invoke-virtual {p0}, Landroidx/constraintlayout/a/e;->c()Landroidx/constraintlayout/a/b;

    move-result-object v0

    .line 13114
    iput-object p1, v0, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    int-to-float p2, p2

    .line 13115
    iput p2, p1, Landroidx/constraintlayout/a/h;->d:F

    .line 13116
    iput p2, v0, Landroidx/constraintlayout/a/b;->b:F

    .line 13117
    iput-boolean v2, v0, Landroidx/constraintlayout/a/b;->e:Z

    .line 1164
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/b;)V

    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;IFLandroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V
    .registers 15

    .line 1098
    invoke-virtual {p0}, Landroidx/constraintlayout/a/e;->c()Landroidx/constraintlayout/a/b;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne p2, p5, :cond_1b

    .line 10282
    iget-object p3, v0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {p3, p1, v1}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 10283
    iget-object p1, v0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {p1, p6, v1}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 10284
    iget-object p1, v0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    const/high16 p3, -0x40000000    # -2.0f

    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    goto/16 :goto_8e

    :cond_1b
    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, p4, v2

    const/high16 v3, -0x40800000    # -1.0f

    if-nez v2, :cond_41

    .line 10294
    iget-object p4, v0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {p4, p1, v1}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 10295
    iget-object p1, v0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {p1, p2, v3}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 10296
    iget-object p1, v0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {p1, p5, v3}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 10297
    iget-object p1, v0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {p1, p6, v1}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    if-gtz p3, :cond_3b

    if-lez p7, :cond_8e

    :cond_3b
    neg-int p1, p3

    add-int/2addr p1, p7

    int-to-float p1, p1

    .line 10299
    iput p1, v0, Landroidx/constraintlayout/a/b;->b:F

    goto :goto_8e

    :cond_41
    const/4 v2, 0x0

    cmpg-float v2, p4, v2

    if-gtz v2, :cond_54

    .line 10303
    iget-object p4, v0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {p4, p1, v3}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 10304
    iget-object p1, v0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {p1, p2, v1}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    int-to-float p1, p3

    .line 10305
    iput p1, v0, Landroidx/constraintlayout/a/b;->b:F

    goto :goto_8e

    :cond_54
    cmpl-float v2, p4, v1

    if-ltz v2, :cond_66

    .line 10308
    iget-object p1, v0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {p1, p5, v3}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 10309
    iget-object p1, v0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {p1, p6, v1}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    int-to-float p1, p7

    .line 10310
    iput p1, v0, Landroidx/constraintlayout/a/b;->b:F

    goto :goto_8e

    .line 10312
    :cond_66
    iget-object v2, v0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    sub-float v4, v1, p4

    mul-float v5, v4, v1

    invoke-virtual {v2, p1, v5}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 10313
    iget-object p1, v0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    mul-float v2, v4, v3

    invoke-virtual {p1, p2, v2}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 10314
    iget-object p1, v0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    mul-float/2addr v3, p4

    invoke-virtual {p1, p5, v3}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 10315
    iget-object p1, v0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    mul-float/2addr v1, p4

    invoke-virtual {p1, p6, v1}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    if-gtz p3, :cond_86

    if-lez p7, :cond_8e

    :cond_86
    neg-int p1, p3

    int-to-float p1, p1

    mul-float/2addr p1, v4

    int-to-float p2, p7

    mul-float/2addr p2, p4

    add-float/2addr p1, p2

    .line 10317
    iput p1, v0, Landroidx/constraintlayout/a/b;->b:F

    :cond_8e
    :goto_8e
    const/4 p1, 0x6

    if-eq p8, p1, :cond_94

    .line 1101
    invoke-virtual {v0, p0, p8}, Landroidx/constraintlayout/a/b;->a(Landroidx/constraintlayout/a/e;I)Landroidx/constraintlayout/a/b;

    .line 1103
    :cond_94
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/b;)V

    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V
    .registers 8

    .line 1003
    invoke-virtual {p0}, Landroidx/constraintlayout/a/e;->c()Landroidx/constraintlayout/a/b;

    move-result-object v0

    .line 1004
    invoke-virtual {p0}, Landroidx/constraintlayout/a/e;->d()Landroidx/constraintlayout/a/h;

    move-result-object v1

    const/4 v2, 0x0

    .line 1005
    iput v2, v1, Landroidx/constraintlayout/a/h;->c:I

    .line 1006
    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/a/b;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;I)Landroidx/constraintlayout/a/b;

    const/4 p1, 0x6

    if-eq p4, p1, :cond_1e

    .line 1008
    iget-object p1, v0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/a/a;->b(Landroidx/constraintlayout/a/h;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 1009
    invoke-virtual {p0, v0, p1, p4}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/b;II)V

    .line 1011
    :cond_1e
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/b;)V

    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;F)V
    .registers 13

    .line 1110
    invoke-virtual {p0}, Landroidx/constraintlayout/a/e;->c()Landroidx/constraintlayout/a/b;

    move-result-object v6

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1111
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/a/b;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;F)Landroidx/constraintlayout/a/b;

    .line 1115
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/b;)V

    return-void
.end method

.method public final b()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 142
    :goto_2
    iget-object v2, p0, Landroidx/constraintlayout/a/e;->g:Landroidx/constraintlayout/a/c;

    iget-object v2, v2, Landroidx/constraintlayout/a/c;->c:[Landroidx/constraintlayout/a/h;

    array-length v2, v2

    if-ge v1, v2, :cond_17

    .line 143
    iget-object v2, p0, Landroidx/constraintlayout/a/e;->g:Landroidx/constraintlayout/a/c;

    iget-object v2, v2, Landroidx/constraintlayout/a/c;->c:[Landroidx/constraintlayout/a/h;

    aget-object v2, v2, v1

    if-eqz v2, :cond_14

    .line 145
    invoke-virtual {v2}, Landroidx/constraintlayout/a/h;->b()V

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 148
    :cond_17
    iget-object v1, p0, Landroidx/constraintlayout/a/e;->g:Landroidx/constraintlayout/a/c;

    iget-object v1, v1, Landroidx/constraintlayout/a/c;->b:Landroidx/constraintlayout/a/g$a;

    iget-object v2, p0, Landroidx/constraintlayout/a/e;->o:[Landroidx/constraintlayout/a/h;

    iget v3, p0, Landroidx/constraintlayout/a/e;->p:I

    invoke-interface {v1, v2, v3}, Landroidx/constraintlayout/a/g$a;->a([Ljava/lang/Object;I)V

    .line 149
    iput v0, p0, Landroidx/constraintlayout/a/e;->p:I

    .line 151
    iget-object v1, p0, Landroidx/constraintlayout/a/e;->g:Landroidx/constraintlayout/a/c;

    iget-object v1, v1, Landroidx/constraintlayout/a/c;->c:[Landroidx/constraintlayout/a/h;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    iget-object v1, p0, Landroidx/constraintlayout/a/e;->j:Ljava/util/HashMap;

    if-eqz v1, :cond_35

    .line 153
    iget-object v1, p0, Landroidx/constraintlayout/a/e;->j:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 155
    :cond_35
    iput v0, p0, Landroidx/constraintlayout/a/e;->a:I

    .line 156
    iget-object v1, p0, Landroidx/constraintlayout/a/e;->b:Landroidx/constraintlayout/a/e$a;

    invoke-interface {v1}, Landroidx/constraintlayout/a/e$a;->a()V

    const/4 v1, 0x1

    .line 157
    iput v1, p0, Landroidx/constraintlayout/a/e;->e:I

    move v1, v0

    .line 158
    :goto_40
    iget v2, p0, Landroidx/constraintlayout/a/e;->f:I

    if-ge v1, v2, :cond_4d

    .line 159
    iget-object v2, p0, Landroidx/constraintlayout/a/e;->c:[Landroidx/constraintlayout/a/b;

    aget-object v2, v2, v1

    iput-boolean v0, v2, Landroidx/constraintlayout/a/b;->c:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 161
    :cond_4d
    invoke-direct {p0}, Landroidx/constraintlayout/a/e;->g()V

    .line 162
    iput v0, p0, Landroidx/constraintlayout/a/e;->f:I

    return-void
.end method

.method public final b(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V
    .registers 8

    .line 1052
    invoke-virtual {p0}, Landroidx/constraintlayout/a/e;->c()Landroidx/constraintlayout/a/b;

    move-result-object v0

    .line 1053
    invoke-virtual {p0}, Landroidx/constraintlayout/a/e;->d()Landroidx/constraintlayout/a/h;

    move-result-object v1

    const/4 v2, 0x0

    .line 1054
    iput v2, v1, Landroidx/constraintlayout/a/h;->c:I

    .line 1055
    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/a/b;->b(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;I)Landroidx/constraintlayout/a/b;

    const/4 p1, 0x6

    if-eq p4, p1, :cond_1e

    .line 1057
    iget-object p1, v0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/a/a;->b(Landroidx/constraintlayout/a/h;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 1058
    invoke-virtual {p0, v0, p1, p4}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/b;II)V

    .line 1060
    :cond_1e
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/b;)V

    return-void
.end method

.method public final c()Landroidx/constraintlayout/a/b;
    .registers 2

    .line 200
    iget-object v0, p0, Landroidx/constraintlayout/a/e;->g:Landroidx/constraintlayout/a/c;

    iget-object v0, v0, Landroidx/constraintlayout/a/c;->a:Landroidx/constraintlayout/a/g$a;

    invoke-interface {v0}, Landroidx/constraintlayout/a/g$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/a/b;

    if-nez v0, :cond_14

    .line 202
    new-instance v0, Landroidx/constraintlayout/a/b;

    iget-object p0, p0, Landroidx/constraintlayout/a/e;->g:Landroidx/constraintlayout/a/c;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/a/b;-><init>(Landroidx/constraintlayout/a/c;)V

    goto :goto_22

    :cond_14
    const/4 p0, 0x0

    .line 3103
    iput-object p0, v0, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    .line 3104
    iget-object p0, v0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {p0}, Landroidx/constraintlayout/a/a;->a()V

    const/4 p0, 0x0

    .line 3105
    iput p0, v0, Landroidx/constraintlayout/a/b;->b:F

    const/4 p0, 0x0

    .line 3106
    iput-boolean p0, v0, Landroidx/constraintlayout/a/b;->e:Z

    .line 206
    :goto_22
    invoke-static {}, Landroidx/constraintlayout/a/h;->a()V

    return-object v0
.end method

.method public final c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;
    .registers 8

    .line 1128
    invoke-virtual {p0}, Landroidx/constraintlayout/a/e;->c()Landroidx/constraintlayout/a/b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p3, :cond_f

    if-gez p3, :cond_c

    mul-int/lit8 p3, p3, -0x1

    const/4 v1, 0x1

    :cond_c
    int-to-float p3, p3

    .line 11140
    iput p3, v0, Landroidx/constraintlayout/a/b;->b:F

    :cond_f
    const/high16 p3, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    if-nez v1, :cond_20

    .line 11143
    iget-object v1, v0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {v1, p1, v2}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 11144
    iget-object p1, v0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    goto :goto_2a

    .line 11146
    :cond_20
    iget-object v1, v0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {v1, p1, p3}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 11147
    iget-object p1, v0, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    invoke-virtual {p1, p2, v2}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/h;F)V

    :goto_2a
    const/4 p1, 0x6

    if-eq p4, p1, :cond_30

    .line 1131
    invoke-virtual {v0, p0, p4}, Landroidx/constraintlayout/a/b;->a(Landroidx/constraintlayout/a/e;I)Landroidx/constraintlayout/a/b;

    .line 1133
    :cond_30
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/b;)V

    return-object v0
.end method

.method public final d()Landroidx/constraintlayout/a/h;
    .registers 6

    .line 211
    sget-object v0, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    if-eqz v0, :cond_d

    .line 212
    sget-object v0, Landroidx/constraintlayout/a/e;->h:Landroidx/constraintlayout/a/f;

    iget-wide v1, v0, Landroidx/constraintlayout/a/f;->n:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/a/f;->n:J

    .line 214
    :cond_d
    iget v0, p0, Landroidx/constraintlayout/a/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/a/e;->l:I

    if-lt v0, v1, :cond_18

    .line 215
    invoke-direct {p0}, Landroidx/constraintlayout/a/e;->f()V

    .line 217
    :cond_18
    sget v0, Landroidx/constraintlayout/a/h$a;->SLACK$2fe29fa6:I

    invoke-direct {p0, v0}, Landroidx/constraintlayout/a/e;->b(I)Landroidx/constraintlayout/a/h;

    move-result-object v0

    .line 218
    iget v1, p0, Landroidx/constraintlayout/a/e;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/a/e;->a:I

    .line 219
    iget v1, p0, Landroidx/constraintlayout/a/e;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/a/e;->e:I

    .line 220
    iget v1, p0, Landroidx/constraintlayout/a/e;->a:I

    iput v1, v0, Landroidx/constraintlayout/a/h;->a:I

    .line 221
    iget-object v1, p0, Landroidx/constraintlayout/a/e;->g:Landroidx/constraintlayout/a/c;

    iget-object v1, v1, Landroidx/constraintlayout/a/c;->c:[Landroidx/constraintlayout/a/h;

    iget p0, p0, Landroidx/constraintlayout/a/e;->a:I

    aput-object v0, v1, p0

    return-object v0
.end method

.method public final e()V
    .registers 4

    const/4 v0, 0x0

    .line 847
    :goto_1
    iget v1, p0, Landroidx/constraintlayout/a/e;->f:I

    if-ge v0, v1, :cond_12

    .line 848
    iget-object v1, p0, Landroidx/constraintlayout/a/e;->c:[Landroidx/constraintlayout/a/b;

    aget-object v1, v1, v0

    .line 849
    iget-object v2, v1, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    iget v1, v1, Landroidx/constraintlayout/a/b;->b:F

    iput v1, v2, Landroidx/constraintlayout/a/h;->d:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-void
.end method
