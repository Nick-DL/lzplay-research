.class public final Lcom/airbnb/lottie/a/a/m;
.super Ljava/lang/Object;
.source "PolystarContent.java"

# interfaces
.implements Lcom/airbnb/lottie/a/a/j;
.implements Lcom/airbnb/lottie/a/a/l;
.implements Lcom/airbnb/lottie/a/b/a$a;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/airbnb/lottie/f;

.field private final d:Lcom/airbnb/lottie/c/b/i$a;

.field private final e:Lcom/airbnb/lottie/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/a/b/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/airbnb/lottie/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/a/b/a<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/airbnb/lottie/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/a/b/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/airbnb/lottie/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/a/b/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/airbnb/lottie/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/a/b/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/airbnb/lottie/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/a/b/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/airbnb/lottie/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/a/b/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/airbnb/lottie/a/a/r;

.field private m:Z


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/c/c/a;Lcom/airbnb/lottie/c/b/i;)V
    .registers 5

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/a/a/m;->a:Landroid/graphics/Path;

    .line 48
    iput-object p1, p0, Lcom/airbnb/lottie/a/a/m;->c:Lcom/airbnb/lottie/f;

    .line 1060
    iget-object p1, p3, Lcom/airbnb/lottie/c/b/i;->a:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/airbnb/lottie/a/a/m;->b:Ljava/lang/String;

    .line 1064
    iget-object p1, p3, Lcom/airbnb/lottie/c/b/i;->b:Lcom/airbnb/lottie/c/b/i$a;

    .line 51
    iput-object p1, p0, Lcom/airbnb/lottie/a/a/m;->d:Lcom/airbnb/lottie/c/b/i$a;

    .line 1068
    iget-object p1, p3, Lcom/airbnb/lottie/c/b/i;->c:Lcom/airbnb/lottie/c/a/b;

    .line 52
    invoke-virtual {p1}, Lcom/airbnb/lottie/c/a/b;->a()Lcom/airbnb/lottie/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/a/a/m;->e:Lcom/airbnb/lottie/a/b/a;

    .line 1072
    iget-object p1, p3, Lcom/airbnb/lottie/c/b/i;->d:Lcom/airbnb/lottie/c/a/m;

    .line 53
    invoke-interface {p1}, Lcom/airbnb/lottie/c/a/m;->a()Lcom/airbnb/lottie/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/a/a/m;->f:Lcom/airbnb/lottie/a/b/a;

    .line 1076
    iget-object p1, p3, Lcom/airbnb/lottie/c/b/i;->e:Lcom/airbnb/lottie/c/a/b;

    .line 54
    invoke-virtual {p1}, Lcom/airbnb/lottie/c/a/b;->a()Lcom/airbnb/lottie/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/a/a/m;->g:Lcom/airbnb/lottie/a/b/a;

    .line 1084
    iget-object p1, p3, Lcom/airbnb/lottie/c/b/i;->g:Lcom/airbnb/lottie/c/a/b;

    .line 55
    invoke-virtual {p1}, Lcom/airbnb/lottie/c/a/b;->a()Lcom/airbnb/lottie/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/a/a/m;->i:Lcom/airbnb/lottie/a/b/a;

    .line 1092
    iget-object p1, p3, Lcom/airbnb/lottie/c/b/i;->i:Lcom/airbnb/lottie/c/a/b;

    .line 56
    invoke-virtual {p1}, Lcom/airbnb/lottie/c/a/b;->a()Lcom/airbnb/lottie/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/a/a/m;->k:Lcom/airbnb/lottie/a/b/a;

    .line 57
    iget-object p1, p0, Lcom/airbnb/lottie/a/a/m;->d:Lcom/airbnb/lottie/c/b/i$a;

    sget-object v0, Lcom/airbnb/lottie/c/b/i$a;->Star:Lcom/airbnb/lottie/c/b/i$a;

    if-ne p1, v0, :cond_53

    .line 2080
    iget-object p1, p3, Lcom/airbnb/lottie/c/b/i;->f:Lcom/airbnb/lottie/c/a/b;

    .line 58
    invoke-virtual {p1}, Lcom/airbnb/lottie/c/a/b;->a()Lcom/airbnb/lottie/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/a/a/m;->h:Lcom/airbnb/lottie/a/b/a;

    .line 2088
    iget-object p1, p3, Lcom/airbnb/lottie/c/b/i;->h:Lcom/airbnb/lottie/c/a/b;

    .line 59
    invoke-virtual {p1}, Lcom/airbnb/lottie/c/a/b;->a()Lcom/airbnb/lottie/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/a/a/m;->j:Lcom/airbnb/lottie/a/b/a;

    goto :goto_58

    :cond_53
    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/airbnb/lottie/a/a/m;->h:Lcom/airbnb/lottie/a/b/a;

    .line 62
    iput-object p1, p0, Lcom/airbnb/lottie/a/a/m;->j:Lcom/airbnb/lottie/a/b/a;

    .line 65
    :goto_58
    iget-object p1, p0, Lcom/airbnb/lottie/a/a/m;->e:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/c/c/a;->a(Lcom/airbnb/lottie/a/b/a;)V

    .line 66
    iget-object p1, p0, Lcom/airbnb/lottie/a/a/m;->f:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/c/c/a;->a(Lcom/airbnb/lottie/a/b/a;)V

    .line 67
    iget-object p1, p0, Lcom/airbnb/lottie/a/a/m;->g:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/c/c/a;->a(Lcom/airbnb/lottie/a/b/a;)V

    .line 68
    iget-object p1, p0, Lcom/airbnb/lottie/a/a/m;->i:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/c/c/a;->a(Lcom/airbnb/lottie/a/b/a;)V

    .line 69
    iget-object p1, p0, Lcom/airbnb/lottie/a/a/m;->k:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/c/c/a;->a(Lcom/airbnb/lottie/a/b/a;)V

    .line 70
    iget-object p1, p0, Lcom/airbnb/lottie/a/a/m;->d:Lcom/airbnb/lottie/c/b/i$a;

    sget-object p3, Lcom/airbnb/lottie/c/b/i$a;->Star:Lcom/airbnb/lottie/c/b/i$a;

    if-ne p1, p3, :cond_81

    .line 71
    iget-object p1, p0, Lcom/airbnb/lottie/a/a/m;->h:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/c/c/a;->a(Lcom/airbnb/lottie/a/b/a;)V

    .line 72
    iget-object p1, p0, Lcom/airbnb/lottie/a/a/m;->j:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/c/c/a;->a(Lcom/airbnb/lottie/a/b/a;)V

    .line 75
    :cond_81
    iget-object p1, p0, Lcom/airbnb/lottie/a/a/m;->e:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/a/b/a;->a(Lcom/airbnb/lottie/a/b/a$a;)V

    .line 76
    iget-object p1, p0, Lcom/airbnb/lottie/a/a/m;->f:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/a/b/a;->a(Lcom/airbnb/lottie/a/b/a$a;)V

    .line 77
    iget-object p1, p0, Lcom/airbnb/lottie/a/a/m;->g:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/a/b/a;->a(Lcom/airbnb/lottie/a/b/a$a;)V

    .line 78
    iget-object p1, p0, Lcom/airbnb/lottie/a/a/m;->i:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/a/b/a;->a(Lcom/airbnb/lottie/a/b/a$a;)V

    .line 79
    iget-object p1, p0, Lcom/airbnb/lottie/a/a/m;->k:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/a/b/a;->a(Lcom/airbnb/lottie/a/b/a$a;)V

    .line 80
    iget-object p1, p0, Lcom/airbnb/lottie/a/a/m;->d:Lcom/airbnb/lottie/c/b/i$a;

    sget-object p2, Lcom/airbnb/lottie/c/b/i$a;->Star:Lcom/airbnb/lottie/c/b/i$a;

    if-ne p1, p2, :cond_aa

    .line 81
    iget-object p1, p0, Lcom/airbnb/lottie/a/a/m;->h:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/a/b/a;->a(Lcom/airbnb/lottie/a/b/a$a;)V

    .line 82
    iget-object p1, p0, Lcom/airbnb/lottie/a/a/m;->j:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/a/b/a;->a(Lcom/airbnb/lottie/a/b/a$a;)V

    :cond_aa
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x0

    .line 2091
    iput-boolean v0, p0, Lcom/airbnb/lottie/a/a/m;->m:Z

    .line 2092
    iget-object p0, p0, Lcom/airbnb/lottie/a/a/m;->c:Lcom/airbnb/lottie/f;

    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->invalidateSelf()V

    return-void
.end method

.method public final a(Lcom/airbnb/lottie/c/e;ILjava/util/List;Lcom/airbnb/lottie/c/e;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/c/e;",
            "I",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/c/e;",
            ">;",
            "Lcom/airbnb/lottie/c/e;",
            ")V"
        }
    .end annotation

    .line 296
    invoke-static {p1, p2, p3, p4, p0}, Lcom/airbnb/lottie/f/e;->a(Lcom/airbnb/lottie/c/e;ILjava/util/List;Lcom/airbnb/lottie/c/e;Lcom/airbnb/lottie/a/a/j;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/airbnb/lottie/g/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/airbnb/lottie/g/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 302
    sget-object v0, Lcom/airbnb/lottie/i;->o:Ljava/lang/Float;

    if-ne p1, v0, :cond_a

    .line 303
    iget-object p0, p0, Lcom/airbnb/lottie/a/a/m;->e:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/a/b/a;->a(Lcom/airbnb/lottie/g/c;)V

    return-void

    .line 304
    :cond_a
    sget-object v0, Lcom/airbnb/lottie/i;->p:Ljava/lang/Float;

    if-ne p1, v0, :cond_14

    .line 305
    iget-object p0, p0, Lcom/airbnb/lottie/a/a/m;->g:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/a/b/a;->a(Lcom/airbnb/lottie/g/c;)V

    return-void

    .line 306
    :cond_14
    sget-object v0, Lcom/airbnb/lottie/i;->h:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_1e

    .line 307
    iget-object p0, p0, Lcom/airbnb/lottie/a/a/m;->f:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/a/b/a;->a(Lcom/airbnb/lottie/g/c;)V

    return-void

    .line 308
    :cond_1e
    sget-object v0, Lcom/airbnb/lottie/i;->q:Ljava/lang/Float;

    if-ne p1, v0, :cond_2c

    iget-object v0, p0, Lcom/airbnb/lottie/a/a/m;->h:Lcom/airbnb/lottie/a/b/a;

    if-eqz v0, :cond_2c

    .line 309
    iget-object p0, p0, Lcom/airbnb/lottie/a/a/m;->h:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/a/b/a;->a(Lcom/airbnb/lottie/g/c;)V

    return-void

    .line 310
    :cond_2c
    sget-object v0, Lcom/airbnb/lottie/i;->r:Ljava/lang/Float;

    if-ne p1, v0, :cond_36

    .line 311
    iget-object p0, p0, Lcom/airbnb/lottie/a/a/m;->i:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/a/b/a;->a(Lcom/airbnb/lottie/g/c;)V

    return-void

    .line 312
    :cond_36
    sget-object v0, Lcom/airbnb/lottie/i;->s:Ljava/lang/Float;

    if-ne p1, v0, :cond_44

    iget-object v0, p0, Lcom/airbnb/lottie/a/a/m;->j:Lcom/airbnb/lottie/a/b/a;

    if-eqz v0, :cond_44

    .line 314
    iget-object p0, p0, Lcom/airbnb/lottie/a/a/m;->j:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/a/b/a;->a(Lcom/airbnb/lottie/g/c;)V

    return-void

    .line 315
    :cond_44
    sget-object v0, Lcom/airbnb/lottie/i;->t:Ljava/lang/Float;

    if-ne p1, v0, :cond_4d

    .line 316
    iget-object p0, p0, Lcom/airbnb/lottie/a/a/m;->k:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/a/b/a;->a(Lcom/airbnb/lottie/g/c;)V

    :cond_4d
    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/a/a/b;",
            ">;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/a/a/b;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x0

    .line 96
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_23

    .line 97
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/a/a/b;

    .line 98
    instance-of v1, v0, Lcom/airbnb/lottie/a/a/r;

    if-eqz v1, :cond_20

    check-cast v0, Lcom/airbnb/lottie/a/a/r;

    .line 3054
    iget v1, v0, Lcom/airbnb/lottie/a/a/r;->a:I

    .line 99
    sget v2, Lcom/airbnb/lottie/c/b/q$a;->Simultaneously$9bb361e:I

    if-ne v1, v2, :cond_20

    .line 100
    iput-object v0, p0, Lcom/airbnb/lottie/a/a/m;->l:Lcom/airbnb/lottie/a/a/r;

    .line 101
    iget-object v0, p0, Lcom/airbnb/lottie/a/a/m;->l:Lcom/airbnb/lottie/a/a/r;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/a/a/r;->a(Lcom/airbnb/lottie/a/b/a$a;)V

    :cond_20
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_23
    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/airbnb/lottie/a/a/m;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Landroid/graphics/Path;
    .registers 51

    move-object/from16 v0, p0

    .line 107
    iget-boolean v1, v0, Lcom/airbnb/lottie/a/a/m;->m:Z

    if-eqz v1, :cond_9

    .line 108
    iget-object v0, v0, Lcom/airbnb/lottie/a/a/m;->a:Landroid/graphics/Path;

    return-object v0

    .line 111
    :cond_9
    iget-object v1, v0, Lcom/airbnb/lottie/a/a/m;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 113
    sget-object v1, Lcom/airbnb/lottie/a/a/m$1;->a:[I

    iget-object v2, v0, Lcom/airbnb/lottie/a/a/m;->d:Lcom/airbnb/lottie/c/b/i$a;

    invoke-virtual {v2}, Lcom/airbnb/lottie/c/b/i$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    const-wide v4, 0x4056800000000000L    # 90.0

    const-wide/16 v6, 0x0

    const/high16 v9, 0x42c80000    # 100.0f

    packed-switch v1, :pswitch_data_31c

    goto/16 :goto_30a

    .line 3241
    :pswitch_2b
    iget-object v1, v0, Lcom/airbnb/lottie/a/a/m;->e:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {v1}, Lcom/airbnb/lottie/a/b/a;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v13, v1

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v1, v13

    .line 3242
    iget-object v13, v0, Lcom/airbnb/lottie/a/a/m;->g:Lcom/airbnb/lottie/a/b/a;

    if-nez v13, :cond_42

    goto :goto_4f

    :cond_42
    iget-object v6, v0, Lcom/airbnb/lottie/a/a/m;->g:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {v6}, Lcom/airbnb/lottie/a/b/a;->d()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v6, v6

    :goto_4f
    sub-double/2addr v6, v4

    .line 3246
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    int-to-double v6, v1

    div-double/2addr v2, v6

    double-to-float v1, v2

    .line 3250
    iget-object v2, v0, Lcom/airbnb/lottie/a/a/m;->k:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {v2}, Lcom/airbnb/lottie/a/b/a;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v2, v9

    .line 3251
    iget-object v3, v0, Lcom/airbnb/lottie/a/a/m;->i:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {v3}, Lcom/airbnb/lottie/a/b/a;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v13, v3

    .line 3256
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double v8, v13, v15

    double-to-float v8, v8

    .line 3257
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double v10, v13, v15

    double-to-float v9, v10

    .line 3258
    iget-object v10, v0, Lcom/airbnb/lottie/a/a/m;->a:Landroid/graphics/Path;

    invoke-virtual {v10, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    float-to-double v10, v1

    add-double/2addr v4, v10

    .line 3261
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    move-wide/from16 v20, v13

    const/4 v1, 0x0

    :goto_8d
    int-to-double v12, v1

    cmpg-double v12, v12, v6

    if-gez v12, :cond_10f

    .line 3265
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double v13, v20, v12

    double-to-float v12, v13

    .line 3266
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double v13, v13, v20

    double-to-float v13, v13

    const/4 v14, 0x0

    cmpl-float v15, v2, v14

    if-eqz v15, :cond_f8

    float-to-double v14, v9

    move-wide/from16 v29, v6

    float-to-double v6, v8

    .line 3269
    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    const-wide v14, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v6, v14

    double-to-float v6, v6

    float-to-double v6, v6

    .line 3270
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v14, v14

    .line 3271
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    move-wide/from16 v32, v4

    float-to-double v4, v13

    move-wide/from16 v34, v10

    float-to-double v10, v12

    .line 3273
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v4, v10

    double-to-float v4, v4

    float-to-double v4, v4

    .line 3274
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v7, v10

    .line 3275
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v5, v3, v2

    const/high16 v10, 0x3e800000    # 0.25f

    mul-float/2addr v5, v10

    mul-float/2addr v14, v5

    mul-float/2addr v6, v5

    mul-float/2addr v7, v5

    mul-float/2addr v5, v4

    .line 3281
    iget-object v4, v0, Lcom/airbnb/lottie/a/a/m;->a:Landroid/graphics/Path;

    sub-float v23, v8, v14

    sub-float v24, v9, v6

    add-float v25, v12, v7

    add-float v26, v13, v5

    move-object/from16 v22, v4

    move/from16 v27, v12

    move/from16 v28, v13

    invoke-virtual/range {v22 .. v28}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_103

    :cond_f8
    move-wide/from16 v32, v4

    move-wide/from16 v29, v6

    move-wide/from16 v34, v10

    .line 3283
    iget-object v4, v0, Lcom/airbnb/lottie/a/a/m;->a:Landroid/graphics/Path;

    invoke-virtual {v4, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_103
    add-double v4, v32, v34

    add-int/lit8 v1, v1, 0x1

    move v8, v12

    move v9, v13

    move-wide/from16 v6, v29

    move-wide/from16 v10, v34

    goto/16 :goto_8d

    .line 3289
    :cond_10f
    iget-object v1, v0, Lcom/airbnb/lottie/a/a/m;->f:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {v1}, Lcom/airbnb/lottie/a/b/a;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 3290
    iget-object v2, v0, Lcom/airbnb/lottie/a/a/m;->a:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 3291
    iget-object v1, v0, Lcom/airbnb/lottie/a/a/m;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    goto/16 :goto_30a

    .line 3135
    :pswitch_127
    iget-object v1, v0, Lcom/airbnb/lottie/a/a/m;->e:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {v1}, Lcom/airbnb/lottie/a/b/a;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 3136
    iget-object v8, v0, Lcom/airbnb/lottie/a/a/m;->g:Lcom/airbnb/lottie/a/b/a;

    if-nez v8, :cond_138

    goto :goto_145

    :cond_138
    iget-object v6, v0, Lcom/airbnb/lottie/a/a/m;->g:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {v6}, Lcom/airbnb/lottie/a/b/a;->d()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v6, v6

    :goto_145
    sub-double/2addr v6, v4

    .line 3140
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    float-to-double v6, v1

    div-double/2addr v2, v6

    double-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v8, v2, v3

    float-to-int v10, v1

    int-to-float v10, v10

    sub-float/2addr v1, v10

    const/4 v10, 0x0

    cmpl-float v11, v1, v10

    if-eqz v11, :cond_15f

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v1

    mul-float/2addr v10, v8

    float-to-double v12, v10

    add-double/2addr v4, v12

    .line 3149
    :cond_15f
    iget-object v10, v0, Lcom/airbnb/lottie/a/a/m;->i:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {v10}, Lcom/airbnb/lottie/a/b/a;->d()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 3151
    iget-object v12, v0, Lcom/airbnb/lottie/a/a/m;->h:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {v12}, Lcom/airbnb/lottie/a/b/a;->d()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    .line 3154
    iget-object v13, v0, Lcom/airbnb/lottie/a/a/m;->j:Lcom/airbnb/lottie/a/b/a;

    if-eqz v13, :cond_189

    .line 3155
    iget-object v13, v0, Lcom/airbnb/lottie/a/a/m;->j:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {v13}, Lcom/airbnb/lottie/a/b/a;->d()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    div-float/2addr v13, v9

    goto :goto_18a

    :cond_189
    const/4 v13, 0x0

    .line 3158
    :goto_18a
    iget-object v14, v0, Lcom/airbnb/lottie/a/a/m;->k:Lcom/airbnb/lottie/a/b/a;

    if-eqz v14, :cond_19d

    .line 3159
    iget-object v14, v0, Lcom/airbnb/lottie/a/a/m;->k:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {v14}, Lcom/airbnb/lottie/a/b/a;->d()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    div-float v9, v14, v9

    goto :goto_19e

    :cond_19d
    const/4 v9, 0x0

    :goto_19e
    if-eqz v11, :cond_1c7

    sub-float v14, v10, v12

    mul-float/2addr v14, v1

    add-float/2addr v14, v12

    move/from16 v36, v11

    move/from16 v37, v12

    float-to-double v11, v14

    .line 3169
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    move/from16 v38, v14

    mul-double v14, v11, v15

    double-to-float v14, v14

    .line 3170
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v11, v15

    double-to-float v11, v11

    .line 3171
    iget-object v12, v0, Lcom/airbnb/lottie/a/a/m;->a:Landroid/graphics/Path;

    invoke-virtual {v12, v14, v11}, Landroid/graphics/Path;->moveTo(FF)V

    mul-float v12, v2, v1

    div-float/2addr v12, v3

    move/from16 v39, v11

    float-to-double v11, v12

    add-double/2addr v4, v11

    move/from16 v40, v10

    goto :goto_1e7

    :cond_1c7
    move/from16 v36, v11

    move/from16 v37, v12

    float-to-double v11, v10

    .line 3174
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v11

    double-to-float v14, v14

    .line 3175
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v11, v15

    double-to-float v11, v11

    .line 3176
    iget-object v12, v0, Lcom/airbnb/lottie/a/a/m;->a:Landroid/graphics/Path;

    invoke-virtual {v12, v14, v11}, Landroid/graphics/Path;->moveTo(FF)V

    move/from16 v40, v10

    move/from16 v41, v11

    float-to-double v10, v8

    add-double/2addr v4, v10

    move/from16 v39, v41

    const/16 v38, 0x0

    .line 3182
    :goto_1e7
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v10

    move-wide v15, v4

    move/from16 v5, v39

    const/4 v4, 0x0

    const/16 v17, 0x0

    :goto_1f4
    int-to-double v10, v4

    cmpg-double v12, v10, v6

    if-gez v12, :cond_2f4

    if-eqz v17, :cond_200

    move/from16 v12, v40

    :goto_1fd
    const/16 v19, 0x0

    goto :goto_203

    :cond_200
    move/from16 v12, v37

    goto :goto_1fd

    :goto_203
    cmpl-float v20, v38, v19

    if-eqz v20, :cond_216

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    sub-double v23, v6, v21

    cmpl-double v23, v10, v23

    if-nez v23, :cond_218

    mul-float v23, v2, v1

    div-float v23, v23, v3

    move/from16 v3, v23

    goto :goto_219

    :cond_216
    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    :cond_218
    move v3, v8

    :goto_219
    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    if-eqz v20, :cond_22a

    sub-double v25, v6, v23

    cmpl-double v20, v10, v25

    if-nez v20, :cond_22a

    move/from16 v42, v2

    move/from16 v43, v3

    move/from16 v12, v38

    goto :goto_22e

    :cond_22a
    move/from16 v42, v2

    move/from16 v43, v3

    :goto_22e
    float-to-double v2, v12

    .line 3194
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    move-wide/from16 v44, v10

    mul-double v10, v2, v25

    double-to-float v10, v10

    .line 3195
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v2, v11

    double-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v11, v13, v3

    if-nez v11, :cond_258

    cmpl-float v11, v9, v3

    if-nez v11, :cond_258

    .line 3198
    iget-object v5, v0, Lcom/airbnb/lottie/a/a/m;->a:Landroid/graphics/Path;

    invoke-virtual {v5, v10, v2}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v46, v4

    move/from16 v47, v8

    move/from16 v48, v9

    move/from16 v49, v13

    :goto_254
    move/from16 v8, v43

    goto/16 :goto_2e0

    :cond_258
    float-to-double v11, v5

    move/from16 v46, v4

    float-to-double v3, v14

    .line 3200
    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    const-wide v11, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v3, v11

    double-to-float v3, v3

    float-to-double v3, v3

    .line 3201
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v11, v11

    .line 3202
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    move/from16 v47, v8

    move/from16 v48, v9

    float-to-double v8, v2

    move/from16 v49, v13

    float-to-double v12, v10

    .line 3204
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    const-wide v12, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v8, v12

    double-to-float v4, v8

    float-to-double v8, v4

    .line 3205
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v4, v12

    .line 3206
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    if-eqz v17, :cond_295

    move/from16 v9, v49

    goto :goto_297

    :cond_295
    move/from16 v9, v48

    :goto_297
    if-eqz v17, :cond_29c

    move/from16 v12, v48

    goto :goto_29e

    :cond_29c
    move/from16 v12, v49

    :goto_29e
    if-eqz v17, :cond_2a3

    move/from16 v13, v37

    goto :goto_2a5

    :cond_2a3
    move/from16 v13, v40

    :goto_2a5
    if-eqz v17, :cond_2aa

    move/from16 v18, v40

    goto :goto_2ac

    :cond_2aa
    move/from16 v18, v37

    :goto_2ac
    mul-float/2addr v13, v9

    const v9, 0x3ef4e26d    # 0.47829f

    mul-float/2addr v13, v9

    mul-float/2addr v11, v13

    mul-float/2addr v13, v3

    mul-float v18, v18, v12

    mul-float v18, v18, v9

    mul-float v4, v4, v18

    mul-float v18, v18, v8

    if-eqz v36, :cond_2cb

    if-nez v46, :cond_2c2

    mul-float/2addr v11, v1

    mul-float/2addr v13, v1

    goto :goto_2cb

    :cond_2c2
    sub-double v8, v6, v23

    cmpl-double v3, v44, v8

    if-nez v3, :cond_2cb

    mul-float/2addr v4, v1

    mul-float v18, v18, v1

    .line 3227
    :cond_2cb
    :goto_2cb
    iget-object v3, v0, Lcom/airbnb/lottie/a/a/m;->a:Landroid/graphics/Path;

    sub-float v26, v14, v11

    sub-float v27, v5, v13

    add-float v28, v10, v4

    add-float v29, v2, v18

    move-object/from16 v25, v3

    move/from16 v30, v10

    move/from16 v31, v2

    invoke-virtual/range {v25 .. v31}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto/16 :goto_254

    :goto_2e0
    float-to-double v3, v8

    add-double/2addr v15, v3

    xor-int/lit8 v17, v17, 0x1

    add-int/lit8 v4, v46, 0x1

    move v5, v2

    move v14, v10

    move/from16 v2, v42

    move/from16 v8, v47

    move/from16 v9, v48

    move/from16 v13, v49

    const/high16 v3, 0x40000000    # 2.0f

    goto/16 :goto_1f4

    .line 3235
    :cond_2f4
    iget-object v1, v0, Lcom/airbnb/lottie/a/a/m;->f:Lcom/airbnb/lottie/a/b/a;

    invoke-virtual {v1}, Lcom/airbnb/lottie/a/b/a;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 3236
    iget-object v2, v0, Lcom/airbnb/lottie/a/a/m;->a:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 3237
    iget-object v1, v0, Lcom/airbnb/lottie/a/a/m;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 122
    :goto_30a
    iget-object v1, v0, Lcom/airbnb/lottie/a/a/m;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 124
    iget-object v1, v0, Lcom/airbnb/lottie/a/a/m;->a:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/airbnb/lottie/a/a/m;->l:Lcom/airbnb/lottie/a/a/r;

    invoke-static {v1, v2}, Lcom/airbnb/lottie/f/f;->a(Landroid/graphics/Path;Lcom/airbnb/lottie/a/a/r;)V

    const/4 v1, 0x1

    .line 126
    iput-boolean v1, v0, Lcom/airbnb/lottie/a/a/m;->m:Z

    .line 127
    iget-object v0, v0, Lcom/airbnb/lottie/a/a/m;->a:Landroid/graphics/Path;

    return-object v0

    :pswitch_data_31c
    .packed-switch 0x1
        :pswitch_127
        :pswitch_2b
    .end packed-switch
.end method
