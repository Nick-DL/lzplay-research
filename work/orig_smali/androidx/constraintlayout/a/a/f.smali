.class public Landroidx/constraintlayout/a/a/f;
.super Ljava/lang/Object;
.source "ConstraintWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/a/a/f$a;
    }
.end annotation


# static fields
.field public static X:F = 0.5f


# instance fields
.field A:Landroidx/constraintlayout/a/a/e;

.field B:Landroidx/constraintlayout/a/a/e;

.field C:Landroidx/constraintlayout/a/a/e;

.field D:Landroidx/constraintlayout/a/a/e;

.field protected E:[Landroidx/constraintlayout/a/a/e;

.field protected F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/a/a/e;",
            ">;"
        }
    .end annotation
.end field

.field protected G:[I

.field H:Landroidx/constraintlayout/a/a/f;

.field I:I

.field J:I

.field protected K:F

.field protected L:I

.field protected M:I

.field protected N:I

.field O:I

.field P:I

.field protected Q:I

.field protected R:I

.field public S:I

.field protected T:I

.field protected U:I

.field public V:I

.field public W:I

.field public Y:F

.field public Z:F

.field private a:I

.field public aa:Ljava/lang/Object;

.field public ab:I

.field public ac:Ljava/lang/String;

.field ad:Z

.field ae:Z

.field af:Z

.field ag:Z

.field ah:Z

.field public ai:I

.field public aj:I

.field ak:Z

.field al:Z

.field public am:[F

.field protected an:[Landroidx/constraintlayout/a/a/f;

.field protected ao:[Landroidx/constraintlayout/a/a/f;

.field ap:Landroidx/constraintlayout/a/a/f;

.field aq:Landroidx/constraintlayout/a/a/f;

.field private ar:I

.field private as:I

.field private at:I

.field private au:Ljava/lang/String;

.field private b:I

.field public c:I

.field public d:I

.field e:Landroidx/constraintlayout/a/a/n;

.field f:Landroidx/constraintlayout/a/a/n;

.field public g:I

.field public h:I

.field i:[I

.field public j:I

.field public k:I

.field public l:F

.field public m:I

.field public n:I

.field public o:F

.field public p:Z

.field public q:Z

.field r:I

.field s:F

.field t:Landroidx/constraintlayout/a/a/h;

.field public u:[I

.field public v:F

.field w:Landroidx/constraintlayout/a/a/e;

.field x:Landroidx/constraintlayout/a/a/e;

.field y:Landroidx/constraintlayout/a/a/e;

.field z:Landroidx/constraintlayout/a/a/e;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 10

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Landroidx/constraintlayout/a/a/f;->c:I

    .line 69
    iput v0, p0, Landroidx/constraintlayout/a/a/f;->d:I

    const/4 v1, 0x0

    .line 76
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->g:I

    .line 77
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->h:I

    const/4 v2, 0x2

    .line 78
    new-array v3, v2, [I

    iput-object v3, p0, Landroidx/constraintlayout/a/a/f;->i:[I

    .line 80
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->j:I

    .line 81
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->k:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 82
    iput v3, p0, Landroidx/constraintlayout/a/a/f;->l:F

    .line 83
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->m:I

    .line 84
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->n:I

    .line 85
    iput v3, p0, Landroidx/constraintlayout/a/a/f;->o:F

    .line 89
    iput v0, p0, Landroidx/constraintlayout/a/a/f;->r:I

    .line 90
    iput v3, p0, Landroidx/constraintlayout/a/a/f;->s:F

    const/4 v3, 0x0

    .line 95
    iput-object v3, p0, Landroidx/constraintlayout/a/a/f;->t:Landroidx/constraintlayout/a/a/h;

    .line 97
    new-array v4, v2, [I

    fill-array-data v4, :array_13c

    iput-object v4, p0, Landroidx/constraintlayout/a/a/f;->u:[I

    const/4 v4, 0x0

    .line 98
    iput v4, p0, Landroidx/constraintlayout/a/a/f;->v:F

    .line 148
    new-instance v5, Landroidx/constraintlayout/a/a/e;

    sget-object v6, Landroidx/constraintlayout/a/a/e$c;->LEFT:Landroidx/constraintlayout/a/a/e$c;

    invoke-direct {v5, p0, v6}, Landroidx/constraintlayout/a/a/e;-><init>(Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/e$c;)V

    iput-object v5, p0, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    .line 149
    new-instance v5, Landroidx/constraintlayout/a/a/e;

    sget-object v6, Landroidx/constraintlayout/a/a/e$c;->TOP:Landroidx/constraintlayout/a/a/e$c;

    invoke-direct {v5, p0, v6}, Landroidx/constraintlayout/a/a/e;-><init>(Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/e$c;)V

    iput-object v5, p0, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    .line 150
    new-instance v5, Landroidx/constraintlayout/a/a/e;

    sget-object v6, Landroidx/constraintlayout/a/a/e$c;->RIGHT:Landroidx/constraintlayout/a/a/e$c;

    invoke-direct {v5, p0, v6}, Landroidx/constraintlayout/a/a/e;-><init>(Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/e$c;)V

    iput-object v5, p0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    .line 151
    new-instance v5, Landroidx/constraintlayout/a/a/e;

    sget-object v6, Landroidx/constraintlayout/a/a/e$c;->BOTTOM:Landroidx/constraintlayout/a/a/e$c;

    invoke-direct {v5, p0, v6}, Landroidx/constraintlayout/a/a/e;-><init>(Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/e$c;)V

    iput-object v5, p0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    .line 152
    new-instance v5, Landroidx/constraintlayout/a/a/e;

    sget-object v6, Landroidx/constraintlayout/a/a/e$c;->BASELINE:Landroidx/constraintlayout/a/a/e$c;

    invoke-direct {v5, p0, v6}, Landroidx/constraintlayout/a/a/e;-><init>(Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/e$c;)V

    iput-object v5, p0, Landroidx/constraintlayout/a/a/f;->A:Landroidx/constraintlayout/a/a/e;

    .line 153
    new-instance v5, Landroidx/constraintlayout/a/a/e;

    sget-object v6, Landroidx/constraintlayout/a/a/e$c;->CENTER_X:Landroidx/constraintlayout/a/a/e$c;

    invoke-direct {v5, p0, v6}, Landroidx/constraintlayout/a/a/e;-><init>(Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/e$c;)V

    iput-object v5, p0, Landroidx/constraintlayout/a/a/f;->B:Landroidx/constraintlayout/a/a/e;

    .line 154
    new-instance v5, Landroidx/constraintlayout/a/a/e;

    sget-object v6, Landroidx/constraintlayout/a/a/e$c;->CENTER_Y:Landroidx/constraintlayout/a/a/e$c;

    invoke-direct {v5, p0, v6}, Landroidx/constraintlayout/a/a/e;-><init>(Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/e$c;)V

    iput-object v5, p0, Landroidx/constraintlayout/a/a/f;->C:Landroidx/constraintlayout/a/a/e;

    .line 155
    new-instance v5, Landroidx/constraintlayout/a/a/e;

    sget-object v6, Landroidx/constraintlayout/a/a/e$c;->CENTER:Landroidx/constraintlayout/a/a/e$c;

    invoke-direct {v5, p0, v6}, Landroidx/constraintlayout/a/a/e;-><init>(Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/e$c;)V

    iput-object v5, p0, Landroidx/constraintlayout/a/a/f;->D:Landroidx/constraintlayout/a/a/e;

    const/4 v5, 0x6

    .line 163
    new-array v5, v5, [Landroidx/constraintlayout/a/a/e;

    iget-object v6, p0, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    aput-object v6, v5, v1

    iget-object v6, p0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    iget-object v6, p0, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    aput-object v6, v5, v2

    iget-object v6, p0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    const/4 v8, 0x3

    aput-object v6, v5, v8

    iget-object v6, p0, Landroidx/constraintlayout/a/a/f;->A:Landroidx/constraintlayout/a/a/e;

    const/4 v8, 0x4

    aput-object v6, v5, v8

    iget-object v6, p0, Landroidx/constraintlayout/a/a/f;->D:Landroidx/constraintlayout/a/a/e;

    const/4 v8, 0x5

    aput-object v6, v5, v8

    iput-object v5, p0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    .line 164
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroidx/constraintlayout/a/a/f;->F:Ljava/util/ArrayList;

    .line 169
    new-array v5, v2, [I

    sget v6, Landroidx/constraintlayout/a/a/f$a;->FIXED$689812f:I

    aput v6, v5, v1

    sget v6, Landroidx/constraintlayout/a/a/f$a;->FIXED$689812f:I

    aput v6, v5, v7

    iput-object v5, p0, Landroidx/constraintlayout/a/a/f;->G:[I

    .line 172
    iput-object v3, p0, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    .line 175
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->I:I

    .line 176
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->J:I

    .line 177
    iput v4, p0, Landroidx/constraintlayout/a/a/f;->K:F

    .line 178
    iput v0, p0, Landroidx/constraintlayout/a/a/f;->L:I

    .line 181
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->M:I

    .line 182
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->N:I

    .line 183
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->O:I

    .line 184
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->P:I

    .line 187
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->a:I

    .line 188
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->b:I

    .line 189
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->ar:I

    .line 190
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->as:I

    .line 193
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->Q:I

    .line 194
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->R:I

    .line 197
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->S:I

    .line 210
    sget v0, Landroidx/constraintlayout/a/a/f;->X:F

    iput v0, p0, Landroidx/constraintlayout/a/a/f;->Y:F

    .line 211
    sget v0, Landroidx/constraintlayout/a/a/f;->X:F

    iput v0, p0, Landroidx/constraintlayout/a/a/f;->Z:F

    .line 219
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->at:I

    .line 222
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->ab:I

    .line 224
    iput-object v3, p0, Landroidx/constraintlayout/a/a/f;->ac:Ljava/lang/String;

    .line 225
    iput-object v3, p0, Landroidx/constraintlayout/a/a/f;->au:Ljava/lang/String;

    .line 237
    iput-boolean v1, p0, Landroidx/constraintlayout/a/a/f;->af:Z

    .line 238
    iput-boolean v1, p0, Landroidx/constraintlayout/a/a/f;->ag:Z

    .line 239
    iput-boolean v1, p0, Landroidx/constraintlayout/a/a/f;->ah:Z

    .line 242
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->ai:I

    .line 243
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->aj:I

    .line 247
    new-array v0, v2, [F

    fill-array-data v0, :array_144

    iput-object v0, p0, Landroidx/constraintlayout/a/a/f;->am:[F

    .line 249
    new-array v0, v2, [Landroidx/constraintlayout/a/a/f;

    aput-object v3, v0, v1

    aput-object v3, v0, v7

    iput-object v0, p0, Landroidx/constraintlayout/a/a/f;->an:[Landroidx/constraintlayout/a/a/f;

    .line 250
    new-array v0, v2, [Landroidx/constraintlayout/a/a/f;

    aput-object v3, v0, v1

    aput-object v3, v0, v7

    iput-object v0, p0, Landroidx/constraintlayout/a/a/f;->ao:[Landroidx/constraintlayout/a/a/f;

    .line 252
    iput-object v3, p0, Landroidx/constraintlayout/a/a/f;->ap:Landroidx/constraintlayout/a/a/f;

    .line 253
    iput-object v3, p0, Landroidx/constraintlayout/a/a/f;->aq:Landroidx/constraintlayout/a/a/f;

    .line 12456
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->F:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12457
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->F:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12458
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->F:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12459
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->F:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12460
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->F:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/a/a/f;->B:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12461
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->F:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/a/a/f;->C:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12462
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->F:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/a/a/f;->D:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12463
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->F:Ljava/util/ArrayList;

    iget-object p0, p0, Landroidx/constraintlayout/a/a/f;->A:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_13c
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    :array_144
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method private a(Landroidx/constraintlayout/a/e;ZLandroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;IZLandroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/e;IIIIFZZIIIFZ)V
    .registers 51

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move/from16 v1, p11

    move/from16 v2, p12

    .line 2612
    invoke-virtual {v9, v12}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v8

    .line 2613
    invoke-virtual {v9, v13}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v7

    .line 18144
    iget-object v6, v12, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    .line 2614
    invoke-virtual {v9, v6}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v6

    .line 19144
    iget-object v14, v13, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    .line 2615
    invoke-virtual {v9, v14}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v14

    move-object/from16 v20, v14

    .line 2617
    iget-boolean v14, v9, Landroidx/constraintlayout/a/e;->d:Z

    const-wide/16 v15, 0x1

    if-eqz v14, :cond_5c

    .line 20058
    iget-object v14, v12, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 2618
    iget v14, v14, Landroidx/constraintlayout/a/a/m;->i:I

    const/4 v10, 0x1

    if-ne v14, v10, :cond_5c

    .line 21058
    iget-object v14, v13, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 2619
    iget v14, v14, Landroidx/constraintlayout/a/a/m;->i:I

    if-ne v14, v10, :cond_5c

    .line 2620
    invoke-static {}, Landroidx/constraintlayout/a/e;->a()Landroidx/constraintlayout/a/f;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 2621
    invoke-static {}, Landroidx/constraintlayout/a/e;->a()Landroidx/constraintlayout/a/f;

    move-result-object v0

    iget-wide v1, v0, Landroidx/constraintlayout/a/f;->s:J

    add-long/2addr v1, v15

    iput-wide v1, v0, Landroidx/constraintlayout/a/f;->s:J

    .line 22058
    :cond_48
    iget-object v0, v12, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 2623
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/e;)V

    .line 23058
    iget-object v0, v13, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 2624
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/e;)V

    if-nez p15, :cond_5b

    if-eqz p2, :cond_5b

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 2626
    invoke-virtual {v9, v11, v7, v0, v1}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    :cond_5b
    return-void

    .line 2631
    :cond_5c
    invoke-static {}, Landroidx/constraintlayout/a/e;->a()Landroidx/constraintlayout/a/f;

    move-result-object v10

    if-eqz v10, :cond_6b

    .line 2632
    invoke-static {}, Landroidx/constraintlayout/a/e;->a()Landroidx/constraintlayout/a/f;

    move-result-object v10

    iget-wide v13, v10, Landroidx/constraintlayout/a/f;->B:J

    add-long/2addr v13, v15

    iput-wide v13, v10, Landroidx/constraintlayout/a/f;->B:J

    .line 2635
    :cond_6b
    invoke-virtual/range {p7 .. p7}, Landroidx/constraintlayout/a/a/e;->d()Z

    move-result v10

    .line 2636
    invoke-virtual/range {p8 .. p8}, Landroidx/constraintlayout/a/a/e;->d()Z

    move-result v13

    .line 2637
    iget-object v14, v0, Landroidx/constraintlayout/a/a/f;->D:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v14}, Landroidx/constraintlayout/a/a/e;->d()Z

    move-result v21

    if-eqz v10, :cond_7d

    const/4 v14, 0x1

    goto :goto_7e

    :cond_7d
    const/4 v14, 0x0

    :goto_7e
    if-eqz v13, :cond_82

    add-int/lit8 v14, v14, 0x1

    :cond_82
    if-eqz v21, :cond_86

    add-int/lit8 v14, v14, 0x1

    :cond_86
    if-eqz p14, :cond_8a

    const/4 v11, 0x3

    goto :goto_8c

    :cond_8a
    move/from16 v11, p16

    .line 2649
    :goto_8c
    sget-object v15, Landroidx/constraintlayout/a/a/f$1;->b:[I

    const/16 v17, 0x1

    add-int/lit8 v16, p5, -0x1

    aget v15, v15, v16

    const/4 v3, 0x4

    packed-switch v15, :pswitch_data_324

    :goto_98
    :pswitch_98
    const/4 v15, 0x0

    goto :goto_9e

    :pswitch_9a
    if-ne v11, v3, :cond_9d

    goto :goto_98

    :cond_9d
    const/4 v15, 0x1

    .line 2667
    :goto_9e
    iget v3, v0, Landroidx/constraintlayout/a/a/f;->ab:I

    move/from16 v22, v14

    const/16 v14, 0x8

    if-ne v3, v14, :cond_a9

    const/4 v3, 0x0

    const/4 v15, 0x0

    goto :goto_ab

    :cond_a9
    move/from16 v3, p10

    :goto_ab
    if-eqz p20, :cond_c8

    if-nez v10, :cond_b9

    if-nez v13, :cond_b9

    if-nez v21, :cond_b9

    move/from16 v14, p9

    .line 2675
    invoke-virtual {v9, v8, v14}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/h;I)V

    goto :goto_c8

    :cond_b9
    if-eqz v10, :cond_c8

    if-nez v13, :cond_c8

    .line 2677
    invoke-virtual/range {p7 .. p7}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v14

    move/from16 v23, v13

    const/4 v13, 0x6

    invoke-virtual {v9, v8, v6, v14, v13}, Landroidx/constraintlayout/a/e;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    goto :goto_cb

    :cond_c8
    :goto_c8
    move/from16 v23, v13

    const/4 v13, 0x6

    :goto_cb
    if-nez v15, :cond_f8

    if-eqz p6, :cond_e5

    const/4 v13, 0x3

    const/4 v14, 0x0

    .line 2684
    invoke-virtual {v9, v7, v8, v14, v13}, Landroidx/constraintlayout/a/e;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    if-lez v1, :cond_db

    const/4 v14, 0x6

    .line 2686
    invoke-virtual {v9, v7, v8, v1, v14}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    goto :goto_dc

    :cond_db
    const/4 v14, 0x6

    :goto_dc
    const v3, 0x7fffffff

    if-ge v2, v3, :cond_ea

    .line 2689
    invoke-virtual {v9, v7, v8, v2, v14}, Landroidx/constraintlayout/a/e;->b(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    goto :goto_ea

    :cond_e5
    move v14, v13

    const/4 v13, 0x3

    .line 2692
    invoke-virtual {v9, v7, v8, v3, v14}, Landroidx/constraintlayout/a/e;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    :cond_ea
    :goto_ea
    move/from16 v12, p17

    move/from16 v13, p18

    move-object/from16 v27, v6

    move-object/from16 v2, v20

    move/from16 v0, v22

    :cond_f4
    const/16 v16, 0x4

    goto/16 :goto_1c6

    :cond_f8
    move v14, v13

    const/4 v13, 0x3

    const/4 v2, -0x2

    move/from16 v13, p17

    if-ne v13, v2, :cond_103

    move/from16 v13, p18

    move v14, v3

    goto :goto_106

    :cond_103
    move v14, v13

    move/from16 v13, p18

    :goto_106
    if-ne v13, v2, :cond_109

    move v13, v3

    :cond_109
    if-lez v14, :cond_114

    const/4 v2, 0x6

    .line 2703
    invoke-virtual {v9, v7, v8, v14, v2}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    .line 2704
    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_115

    :cond_114
    const/4 v2, 0x6

    :goto_115
    if-lez v13, :cond_11e

    .line 2707
    invoke-virtual {v9, v7, v8, v13, v2}, Landroidx/constraintlayout/a/e;->b(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    .line 2708
    invoke-static {v3, v13}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_11e
    const/4 v2, 0x1

    if-ne v11, v2, :cond_13d

    if-eqz p2, :cond_131

    const/4 v2, 0x6

    .line 2712
    invoke-virtual {v9, v7, v8, v3, v2}, Landroidx/constraintlayout/a/e;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    :goto_127
    move-object/from16 v27, v6

    move v12, v14

    move-object/from16 v2, v20

    move/from16 v0, v22

    const/4 v6, 0x2

    goto/16 :goto_1af

    :cond_131
    if-eqz p15, :cond_138

    const/4 v2, 0x4

    .line 2714
    invoke-virtual {v9, v7, v8, v3, v2}, Landroidx/constraintlayout/a/e;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    goto :goto_127

    :cond_138
    const/4 v2, 0x1

    .line 2716
    invoke-virtual {v9, v7, v8, v3, v2}, Landroidx/constraintlayout/a/e;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    goto :goto_127

    :cond_13d
    const/4 v2, 0x2

    if-ne v11, v2, :cond_1a7

    .line 23118
    iget-object v2, v12, Landroidx/constraintlayout/a/a/e;->c:Landroidx/constraintlayout/a/a/e$c;

    move/from16 v24, v14

    .line 2721
    sget-object v14, Landroidx/constraintlayout/a/a/e$c;->TOP:Landroidx/constraintlayout/a/a/e$c;

    if-eq v2, v14, :cond_16e

    .line 24118
    iget-object v2, v12, Landroidx/constraintlayout/a/a/e;->c:Landroidx/constraintlayout/a/a/e$c;

    .line 2721
    sget-object v14, Landroidx/constraintlayout/a/a/e$c;->BOTTOM:Landroidx/constraintlayout/a/a/e$c;

    if-ne v2, v14, :cond_14f

    goto :goto_16e

    .line 2726
    :cond_14f
    iget-object v2, v0, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    sget-object v14, Landroidx/constraintlayout/a/a/e$c;->LEFT:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v2, v14}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v2

    .line 2727
    iget-object v14, v0, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    move-object/from16 v25, v2

    sget-object v2, Landroidx/constraintlayout/a/a/e$c;->RIGHT:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v14, v2}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v2

    move-object/from16 v17, v2

    move-object/from16 v18, v25

    goto :goto_18c

    .line 2723
    :cond_16e
    :goto_16e
    iget-object v2, v0, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    sget-object v14, Landroidx/constraintlayout/a/a/e$c;->TOP:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v2, v14}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v2

    .line 2724
    iget-object v14, v0, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    move-object/from16 v26, v2

    sget-object v2, Landroidx/constraintlayout/a/a/e$c;->BOTTOM:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v14, v2}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v2

    move-object/from16 v17, v2

    move-object/from16 v18, v26

    .line 2729
    :goto_18c
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/e;->c()Landroidx/constraintlayout/a/b;

    move-result-object v14

    move-object/from16 v27, v6

    move-object/from16 v2, v20

    move/from16 v0, v22

    move/from16 v12, v24

    const/4 v6, 0x2

    move-object v15, v7

    move-object/from16 v16, v8

    move/from16 v19, p19

    invoke-virtual/range {v14 .. v19}, Landroidx/constraintlayout/a/b;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;F)Landroidx/constraintlayout/a/b;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/b;)V

    const/4 v15, 0x0

    goto :goto_1af

    :cond_1a7
    move-object/from16 v27, v6

    move v12, v14

    move/from16 v0, v22

    move v6, v2

    move-object/from16 v2, v20

    :goto_1af
    if-eqz v15, :cond_f4

    if-eq v0, v6, :cond_f4

    const/16 v16, 0x4

    if-nez p14, :cond_1c6

    .line 2735
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-lez v13, :cond_1c1

    .line 2737
    invoke-static {v13, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_1c1
    const/4 v6, 0x6

    .line 2739
    invoke-virtual {v9, v7, v8, v3, v6}, Landroidx/constraintlayout/a/e;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    const/4 v15, 0x0

    :cond_1c6
    :goto_1c6
    if-eqz p20, :cond_30e

    if-eqz p15, :cond_1cc

    goto/16 :goto_30e

    :cond_1cc
    const/4 v6, 0x5

    if-nez v10, :cond_1e3

    if-nez v23, :cond_1e3

    if-nez v21, :cond_1e3

    if-eqz p2, :cond_1dc

    const/4 v0, 0x0

    move-object/from16 v5, p4

    .line 2761
    invoke-virtual {v9, v5, v7, v0, v6}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    goto :goto_1f0

    :cond_1dc
    move-object/from16 v5, p4

    move-object v1, v7

    :goto_1df
    const/4 v2, 0x0

    :goto_1e0
    const/4 v3, 0x6

    goto/16 :goto_306

    :cond_1e3
    const/4 v0, 0x0

    const/4 v3, 0x3

    move-object/from16 v5, p4

    if-eqz v10, :cond_1f3

    if-nez v23, :cond_1f3

    if-eqz p2, :cond_1f0

    .line 2766
    invoke-virtual {v9, v5, v7, v0, v6}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    :cond_1f0
    :goto_1f0
    move v2, v0

    move-object v1, v7

    goto :goto_1e0

    :cond_1f3
    if-nez v10, :cond_208

    if-eqz v23, :cond_208

    .line 2769
    invoke-virtual/range {p8 .. p8}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v1

    neg-int v1, v1

    const/4 v3, 0x6

    invoke-virtual {v9, v7, v2, v1, v3}, Landroidx/constraintlayout/a/e;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    if-eqz p2, :cond_1f0

    move-object/from16 v4, p3

    .line 2771
    invoke-virtual {v9, v8, v4, v0, v6}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    goto :goto_1f0

    :cond_208
    const/4 v3, 0x1

    move-object/from16 v4, p3

    if-eqz v10, :cond_1f0

    if-eqz v23, :cond_1f0

    if-eqz v15, :cond_272

    if-eqz p2, :cond_219

    if-nez v1, :cond_219

    const/4 v1, 0x6

    .line 2784
    invoke-virtual {v9, v7, v8, v0, v1}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    :cond_219
    if-nez v11, :cond_242

    if-gtz v13, :cond_223

    if-lez v12, :cond_220

    goto :goto_223

    :cond_220
    const/4 v0, 0x6

    const/4 v10, 0x0

    goto :goto_226

    :cond_223
    :goto_223
    move v10, v3

    move/from16 v0, v16

    .line 2793
    :goto_226
    invoke-virtual/range {p7 .. p7}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v1

    move-object/from16 v11, v27

    invoke-virtual {v9, v8, v11, v1, v0}, Landroidx/constraintlayout/a/e;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    .line 2794
    invoke-virtual/range {p8 .. p8}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v9, v7, v2, v1, v0}, Landroidx/constraintlayout/a/e;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    if-gtz v13, :cond_23e

    if-lez v12, :cond_23c

    goto :goto_23e

    :cond_23c
    const/4 v0, 0x0

    goto :goto_23f

    :cond_23e
    :goto_23e
    move v0, v3

    :goto_23f
    move v12, v10

    move-object v10, v11

    goto :goto_26d

    :cond_242
    move-object/from16 v10, v27

    if-ne v11, v3, :cond_24a

    move v0, v3

    move v12, v0

    const/4 v11, 0x6

    goto :goto_277

    :cond_24a
    const/4 v0, 0x3

    if-ne v11, v0, :cond_26f

    if-nez p14, :cond_25a

    move-object/from16 v0, p0

    .line 2806
    iget v0, v0, Landroidx/constraintlayout/a/a/f;->r:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_25a

    if-gtz v13, :cond_25a

    const/4 v0, 0x6

    goto :goto_25c

    :cond_25a
    move/from16 v0, v16

    .line 2811
    :goto_25c
    invoke-virtual/range {p7 .. p7}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v1

    invoke-virtual {v9, v8, v10, v1, v0}, Landroidx/constraintlayout/a/e;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    .line 2812
    invoke-virtual/range {p8 .. p8}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v9, v7, v2, v1, v0}, Landroidx/constraintlayout/a/e;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    move v0, v3

    move v12, v0

    :goto_26d
    move v11, v6

    goto :goto_277

    :cond_26f
    move v11, v6

    const/4 v0, 0x0

    goto :goto_276

    :cond_272
    move-object/from16 v10, v27

    move v0, v3

    move v11, v6

    :goto_276
    const/4 v12, 0x0

    :goto_277
    if-eqz v0, :cond_2c3

    .line 2824
    invoke-virtual/range {p7 .. p7}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v13

    .line 2825
    invoke-virtual/range {p8 .. p8}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v14

    move-object/from16 v0, p1

    move-object v1, v8

    move-object/from16 v28, v2

    move-object v2, v10

    move/from16 v16, v3

    move v3, v13

    move-object v13, v4

    move/from16 v4, p13

    move-object/from16 v29, v10

    move-object v10, v5

    move-object/from16 v5, v28

    move/from16 v17, v6

    move-object/from16 v10, v29

    move-object v6, v7

    move-object v13, v7

    move v7, v14

    move-object v14, v8

    move v8, v11

    .line 2824
    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;IFLandroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    move-object/from16 v0, p7

    .line 2826
    iget-object v1, v0, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    instance-of v1, v1, Landroidx/constraintlayout/a/a/b;

    move-object/from16 v2, p8

    .line 2827
    iget-object v3, v2, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    instance-of v3, v3, Landroidx/constraintlayout/a/a/b;

    if-eqz v1, :cond_2b8

    if-nez v3, :cond_2b8

    move/from16 v1, v16

    const/4 v3, 0x6

    move/from16 v16, p2

    goto :goto_2d3

    :cond_2b8
    if-nez v1, :cond_2cd

    if-eqz v3, :cond_2cd

    move/from16 v1, p2

    move/from16 v3, v17

    const/16 v17, 0x6

    goto :goto_2d3

    :cond_2c3
    move-object/from16 v28, v2

    move/from16 v17, v6

    move-object v13, v7

    move-object v14, v8

    move-object/from16 v0, p7

    move-object/from16 v2, p8

    :cond_2cd
    move/from16 v1, p2

    move/from16 v16, v1

    move/from16 v3, v17

    :goto_2d3
    if-eqz v12, :cond_2d8

    const/4 v3, 0x6

    const/4 v4, 0x6

    goto :goto_2db

    :cond_2d8
    move v4, v3

    move/from16 v3, v17

    :goto_2db
    if-nez v15, :cond_2df

    if-nez v16, :cond_2e1

    :cond_2df
    if-eqz v12, :cond_2e8

    .line 2843
    :cond_2e1
    invoke-virtual/range {p7 .. p7}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v0

    invoke-virtual {v9, v14, v10, v0, v3}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    :cond_2e8
    if-nez v15, :cond_2ec

    if-nez v1, :cond_2ee

    :cond_2ec
    if-eqz v12, :cond_2f8

    .line 2846
    :cond_2ee
    invoke-virtual/range {p8 .. p8}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v0

    neg-int v0, v0

    move-object/from16 v1, v28

    invoke-virtual {v9, v13, v1, v0, v4}, Landroidx/constraintlayout/a/e;->b(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    :cond_2f8
    if-eqz p2, :cond_303

    move-object v1, v13

    move-object/from16 v0, p3

    const/4 v2, 0x0

    const/4 v3, 0x6

    .line 2850
    invoke-virtual {v9, v14, v0, v2, v3}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    goto :goto_306

    :cond_303
    move-object v1, v13

    goto/16 :goto_1df

    :goto_306
    if-eqz p2, :cond_30d

    move-object/from16 v4, p4

    .line 2855
    invoke-virtual {v9, v4, v1, v2, v3}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    :cond_30d
    return-void

    :cond_30e
    :goto_30e
    move v5, v0

    move-object v1, v7

    move-object v14, v8

    move-object/from16 v0, p3

    const/4 v2, 0x0

    const/4 v3, 0x6

    move-object/from16 v4, p4

    const/4 v6, 0x2

    if-ge v5, v6, :cond_322

    if-eqz p2, :cond_322

    .line 2750
    invoke-virtual {v9, v14, v0, v2, v3}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    .line 2751
    invoke-virtual {v9, v4, v1, v2, v3}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    :cond_322
    return-void

    nop

    :pswitch_data_324
    .packed-switch 0x1
        :pswitch_98
        :pswitch_98
        :pswitch_98
        :pswitch_9a
    .end packed-switch
.end method

.method private l(I)Z
    .registers 4

    mul-int/lit8 p1, p1, 0x2

    .line 2314
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v0, v0, p1

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v0, :cond_31

    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v0, v0, p1

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v1, p0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v1, v1, p1

    if-eq v0, v1, :cond_31

    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    const/4 v1, 0x1

    add-int/2addr p1, v1

    aget-object v0, v0, p1

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v0, :cond_31

    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v0, v0, p1

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object p0, p0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object p0, p0, p1

    if-ne v0, p0, :cond_31

    return v1

    :cond_31
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public A()V
    .registers 8

    .line 2865
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    invoke-static {v0}, Landroidx/constraintlayout/a/e;->b(Ljava/lang/Object;)I

    move-result v0

    .line 2866
    iget-object v1, p0, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    invoke-static {v1}, Landroidx/constraintlayout/a/e;->b(Ljava/lang/Object;)I

    move-result v1

    .line 2867
    iget-object v2, p0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    invoke-static {v2}, Landroidx/constraintlayout/a/e;->b(Ljava/lang/Object;)I

    move-result v2

    .line 2868
    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    invoke-static {v3}, Landroidx/constraintlayout/a/e;->b(Ljava/lang/Object;)I

    move-result v3

    sub-int v4, v2, v0

    sub-int v5, v3, v1

    const/4 v6, 0x0

    if-ltz v4, :cond_36

    if-ltz v5, :cond_36

    const/high16 v4, -0x80000000

    if-eq v0, v4, :cond_36

    const v5, 0x7fffffff

    if-eq v0, v5, :cond_36

    if-eq v1, v4, :cond_36

    if-eq v1, v5, :cond_36

    if-eq v2, v4, :cond_36

    if-eq v2, v5, :cond_36

    if-eq v3, v4, :cond_36

    if-ne v3, v5, :cond_3a

    :cond_36
    move v0, v6

    move v1, v0

    move v2, v1

    move v3, v2

    :cond_3a
    sub-int/2addr v2, v0

    sub-int/2addr v3, v1

    .line 24464
    iput v0, p0, Landroidx/constraintlayout/a/a/f;->M:I

    .line 24465
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->N:I

    .line 24467
    iget v0, p0, Landroidx/constraintlayout/a/a/f;->ab:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4b

    .line 24468
    iput v6, p0, Landroidx/constraintlayout/a/a/f;->I:I

    .line 24469
    iput v6, p0, Landroidx/constraintlayout/a/a/f;->J:I

    return-void

    .line 24474
    :cond_4b
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v0, v0, v6

    sget v1, Landroidx/constraintlayout/a/a/f$a;->FIXED$689812f:I

    if-ne v0, v1, :cond_59

    iget v0, p0, Landroidx/constraintlayout/a/a/f;->I:I

    if-ge v2, v0, :cond_59

    .line 24475
    iget v2, p0, Landroidx/constraintlayout/a/a/f;->I:I

    .line 24477
    :cond_59
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->G:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    sget v4, Landroidx/constraintlayout/a/a/f$a;->FIXED$689812f:I

    if-ne v0, v4, :cond_68

    iget v0, p0, Landroidx/constraintlayout/a/a/f;->J:I

    if-ge v3, v0, :cond_68

    .line 24478
    iget v3, p0, Landroidx/constraintlayout/a/a/f;->J:I

    .line 24481
    :cond_68
    iput v2, p0, Landroidx/constraintlayout/a/a/f;->I:I

    .line 24482
    iput v3, p0, Landroidx/constraintlayout/a/a/f;->J:I

    .line 24484
    iget v0, p0, Landroidx/constraintlayout/a/a/f;->J:I

    iget v2, p0, Landroidx/constraintlayout/a/a/f;->U:I

    if-ge v0, v2, :cond_76

    .line 24485
    iget v0, p0, Landroidx/constraintlayout/a/a/f;->U:I

    iput v0, p0, Landroidx/constraintlayout/a/a/f;->J:I

    .line 24487
    :cond_76
    iget v0, p0, Landroidx/constraintlayout/a/a/f;->I:I

    iget v2, p0, Landroidx/constraintlayout/a/a/f;->T:I

    if-ge v0, v2, :cond_80

    .line 24488
    iget v0, p0, Landroidx/constraintlayout/a/a/f;->T:I

    iput v0, p0, Landroidx/constraintlayout/a/a/f;->I:I

    .line 24494
    :cond_80
    iput-boolean v1, p0, Landroidx/constraintlayout/a/a/f;->ag:Z

    return-void
.end method

.method public a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;
    .registers 4

    .line 2132
    sget-object v0, Landroidx/constraintlayout/a/a/f$1;->a:[I

    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 2160
    new-instance p0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e$c;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :pswitch_15
    const/4 p0, 0x0

    return-object p0

    .line 2152
    :pswitch_17
    iget-object p0, p0, Landroidx/constraintlayout/a/a/f;->C:Landroidx/constraintlayout/a/a/e;

    return-object p0

    .line 2149
    :pswitch_1a
    iget-object p0, p0, Landroidx/constraintlayout/a/a/f;->B:Landroidx/constraintlayout/a/a/e;

    return-object p0

    .line 2155
    :pswitch_1d
    iget-object p0, p0, Landroidx/constraintlayout/a/a/f;->D:Landroidx/constraintlayout/a/a/e;

    return-object p0

    .line 2146
    :pswitch_20
    iget-object p0, p0, Landroidx/constraintlayout/a/a/f;->A:Landroidx/constraintlayout/a/a/e;

    return-object p0

    .line 2143
    :pswitch_23
    iget-object p0, p0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    return-object p0

    .line 2140
    :pswitch_26
    iget-object p0, p0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    return-object p0

    .line 2137
    :pswitch_29
    iget-object p0, p0, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    return-object p0

    .line 2134
    :pswitch_2c
    iget-object p0, p0, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    return-object p0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_15
    .end packed-switch
.end method

.method public a(I)V
    .registers 2

    .line 353
    invoke-static {p1, p0}, Landroidx/constraintlayout/a/a/k;->a(ILandroidx/constraintlayout/a/a/f;)V

    return-void
.end method

.method public final a(II)V
    .registers 3

    .line 1078
    iput p1, p0, Landroidx/constraintlayout/a/a/f;->M:I

    .line 1079
    iput p2, p0, Landroidx/constraintlayout/a/a/f;->N:I

    return-void
.end method

.method public final a(III)V
    .registers 5

    const/4 v0, 0x1

    if-nez p3, :cond_7

    .line 1506
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/a/a/f;->c(II)V

    goto :goto_c

    :cond_7
    if-ne p3, v0, :cond_c

    .line 1508
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/a/a/f;->d(II)V

    .line 1510
    :cond_c
    :goto_c
    iput-boolean v0, p0, Landroidx/constraintlayout/a/a/f;->ag:Z

    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/a/e$c;Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/e$c;II)V
    .registers 13

    .line 1704
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v0

    .line 1705
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v1

    .line 1706
    sget v4, Landroidx/constraintlayout/a/a/e$b;->STRONG$4f4a4916:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v2, p4

    move v3, p5

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/e;IIIIZ)Z

    return-void
.end method

.method public a(Landroidx/constraintlayout/a/c;)V
    .registers 2

    .line 442
    iget-object p1, p0, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e;->a()V

    .line 443
    iget-object p1, p0, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e;->a()V

    .line 444
    iget-object p1, p0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e;->a()V

    .line 445
    iget-object p1, p0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e;->a()V

    .line 446
    iget-object p1, p0, Landroidx/constraintlayout/a/a/f;->A:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e;->a()V

    .line 447
    iget-object p1, p0, Landroidx/constraintlayout/a/a/f;->D:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e;->a()V

    .line 448
    iget-object p1, p0, Landroidx/constraintlayout/a/a/f;->B:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e;->a()V

    .line 449
    iget-object p0, p0, Landroidx/constraintlayout/a/a/f;->C:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/e;->a()V

    return-void
.end method

.method public a(Landroidx/constraintlayout/a/e;)V
    .registers 42

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    .line 2337
    iget-object v0, v15, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v21

    .line 2338
    iget-object v0, v15, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v10

    .line 2339
    iget-object v0, v15, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v6

    .line 2340
    iget-object v0, v15, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v4

    .line 2341
    iget-object v0, v15, Landroidx/constraintlayout/a/a/f;->A:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v3

    .line 2348
    iget-object v0, v15, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_f5

    .line 2349
    iget-object v0, v15, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    if-eqz v0, :cond_3a

    iget-object v0, v15, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v0, v0, v13

    sget v5, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    if-ne v0, v5, :cond_3a

    move v0, v2

    goto :goto_3b

    :cond_3a
    move v0, v13

    .line 2350
    :goto_3b
    iget-object v5, v15, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    if-eqz v5, :cond_4b

    iget-object v5, v15, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    iget-object v5, v5, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v5, v5, v2

    sget v7, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    if-ne v5, v7, :cond_4b

    move v5, v2

    goto :goto_4c

    :cond_4b
    move v5, v13

    .line 2353
    :goto_4c
    invoke-direct {v15, v13}, Landroidx/constraintlayout/a/a/f;->l(I)Z

    move-result v7

    if-eqz v7, :cond_5b

    .line 2354
    iget-object v7, v15, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    check-cast v7, Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v7, v15, v13}, Landroidx/constraintlayout/a/a/g;->a(Landroidx/constraintlayout/a/a/f;I)V

    :cond_59
    :goto_59
    move v7, v2

    goto :goto_7d

    .line 13227
    :cond_5b
    iget-object v7, v15, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v7, :cond_6b

    iget-object v7, v15, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v8, v15, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    if-eq v7, v8, :cond_59

    :cond_6b
    iget-object v7, v15, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v7, :cond_7c

    iget-object v7, v15, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v8, v15, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    if-ne v7, v8, :cond_7c

    goto :goto_59

    :cond_7c
    move v7, v13

    .line 2361
    :goto_7d
    invoke-direct {v15, v2}, Landroidx/constraintlayout/a/a/f;->l(I)Z

    move-result v8

    if-eqz v8, :cond_8c

    .line 2362
    iget-object v8, v15, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    check-cast v8, Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v8, v15, v2}, Landroidx/constraintlayout/a/a/g;->a(Landroidx/constraintlayout/a/a/f;I)V

    :cond_8a
    :goto_8a
    move v8, v2

    goto :goto_ae

    .line 13270
    :cond_8c
    iget-object v8, v15, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    iget-object v8, v8, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v8, :cond_9c

    iget-object v8, v15, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    iget-object v8, v8, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v8, v8, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v9, v15, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    if-eq v8, v9, :cond_8a

    :cond_9c
    iget-object v8, v15, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    iget-object v8, v8, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v8, :cond_ad

    iget-object v8, v15, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    iget-object v8, v8, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v8, v8, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v9, v15, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    if-ne v8, v9, :cond_ad

    goto :goto_8a

    :cond_ad
    move v8, v13

    :goto_ae
    if-eqz v0, :cond_cb

    .line 2368
    iget v9, v15, Landroidx/constraintlayout/a/a/f;->ab:I

    if-eq v9, v1, :cond_cb

    iget-object v9, v15, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    iget-object v9, v9, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v9, :cond_cb

    iget-object v9, v15, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    iget-object v9, v9, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v9, :cond_cb

    .line 2370
    iget-object v9, v15, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    iget-object v9, v9, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v14, v9}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v9

    .line 2371
    invoke-virtual {v14, v9, v10, v13, v2}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    :cond_cb
    if-eqz v5, :cond_ec

    .line 2374
    iget v9, v15, Landroidx/constraintlayout/a/a/f;->ab:I

    if-eq v9, v1, :cond_ec

    iget-object v9, v15, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    iget-object v9, v9, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v9, :cond_ec

    iget-object v9, v15, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    iget-object v9, v9, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-nez v9, :cond_ec

    iget-object v9, v15, Landroidx/constraintlayout/a/a/f;->A:Landroidx/constraintlayout/a/a/e;

    if-nez v9, :cond_ec

    .line 2376
    iget-object v9, v15, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    iget-object v9, v9, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v14, v9}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v9

    .line 2377
    invoke-virtual {v14, v9, v4, v13, v2}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    :cond_ec
    move/from16 v16, v0

    move/from16 v22, v5

    move/from16 v20, v7

    move/from16 v23, v8

    goto :goto_fd

    :cond_f5
    move/from16 v16, v13

    move/from16 v20, v16

    move/from16 v22, v20

    move/from16 v23, v22

    .line 2381
    :goto_fd
    iget v0, v15, Landroidx/constraintlayout/a/a/f;->I:I

    .line 2382
    iget v5, v15, Landroidx/constraintlayout/a/a/f;->T:I

    if-ge v0, v5, :cond_105

    .line 2383
    iget v0, v15, Landroidx/constraintlayout/a/a/f;->T:I

    .line 2385
    :cond_105
    iget v5, v15, Landroidx/constraintlayout/a/a/f;->J:I

    .line 2386
    iget v7, v15, Landroidx/constraintlayout/a/a/f;->U:I

    if-ge v5, v7, :cond_10d

    .line 2387
    iget v5, v15, Landroidx/constraintlayout/a/a/f;->U:I

    .line 2391
    :cond_10d
    iget-object v7, v15, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v7, v7, v13

    sget v8, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    if-eq v7, v8, :cond_117

    move v7, v2

    goto :goto_118

    :cond_117
    move v7, v13

    .line 2393
    :goto_118
    iget-object v8, v15, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v8, v8, v2

    sget v9, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    if-eq v8, v9, :cond_122

    move v8, v2

    goto :goto_123

    :cond_122
    move v8, v13

    .line 2399
    :goto_123
    iget v9, v15, Landroidx/constraintlayout/a/a/f;->L:I

    iput v9, v15, Landroidx/constraintlayout/a/a/f;->r:I

    .line 2400
    iget v9, v15, Landroidx/constraintlayout/a/a/f;->K:F

    iput v9, v15, Landroidx/constraintlayout/a/a/f;->s:F

    .line 2402
    iget v9, v15, Landroidx/constraintlayout/a/a/f;->g:I

    .line 2403
    iget v11, v15, Landroidx/constraintlayout/a/a/f;->h:I

    .line 2405
    iget v12, v15, Landroidx/constraintlayout/a/a/f;->K:F

    const/16 v17, 0x0

    cmpl-float v12, v12, v17

    const/16 v17, 0x4

    if-lez v12, :cond_2cb

    iget v12, v15, Landroidx/constraintlayout/a/a/f;->ab:I

    if-eq v12, v1, :cond_2cb

    .line 2407
    iget-object v1, v15, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v1, v1, v13

    sget v12, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    const/4 v2, 0x3

    if-ne v1, v12, :cond_149

    if-nez v9, :cond_149

    move v9, v2

    .line 2411
    :cond_149
    iget-object v1, v15, Landroidx/constraintlayout/a/a/f;->G:[I

    const/4 v12, 0x1

    aget v1, v1, v12

    sget v12, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    if-ne v1, v12, :cond_155

    if-nez v11, :cond_155

    move v11, v2

    .line 2416
    :cond_155
    iget-object v1, v15, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v1, v1, v13

    sget v12, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    const/high16 v18, 0x3f800000    # 1.0f

    if-ne v1, v12, :cond_257

    iget-object v1, v15, Landroidx/constraintlayout/a/a/f;->G:[I

    const/4 v12, 0x1

    aget v1, v1, v12

    sget v12, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    if-ne v1, v12, :cond_257

    if-ne v9, v2, :cond_257

    if-ne v11, v2, :cond_257

    .line 13534
    iget v1, v15, Landroidx/constraintlayout/a/a/f;->r:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_189

    if-eqz v7, :cond_178

    if-nez v8, :cond_178

    .line 13536
    iput v13, v15, Landroidx/constraintlayout/a/a/f;->r:I

    goto :goto_189

    :cond_178
    if-nez v7, :cond_189

    if-eqz v8, :cond_189

    const/4 v1, 0x1

    .line 13538
    iput v1, v15, Landroidx/constraintlayout/a/a/f;->r:I

    .line 13539
    iget v1, v15, Landroidx/constraintlayout/a/a/f;->L:I

    if-ne v1, v2, :cond_189

    .line 13541
    iget v1, v15, Landroidx/constraintlayout/a/a/f;->s:F

    div-float v1, v18, v1

    iput v1, v15, Landroidx/constraintlayout/a/a/f;->s:F

    .line 13546
    :cond_189
    :goto_189
    iget v1, v15, Landroidx/constraintlayout/a/a/f;->r:I

    if-nez v1, :cond_1a1

    iget-object v1, v15, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/e;->d()Z

    move-result v1

    if-eqz v1, :cond_19d

    iget-object v1, v15, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/e;->d()Z

    move-result v1

    if-nez v1, :cond_1a1

    :cond_19d
    const/4 v1, 0x1

    .line 13547
    iput v1, v15, Landroidx/constraintlayout/a/a/f;->r:I

    goto :goto_1b8

    :cond_1a1
    const/4 v1, 0x1

    .line 13548
    iget v2, v15, Landroidx/constraintlayout/a/a/f;->r:I

    if-ne v2, v1, :cond_1b8

    iget-object v1, v15, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/e;->d()Z

    move-result v1

    if-eqz v1, :cond_1b6

    iget-object v1, v15, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/e;->d()Z

    move-result v1

    if-nez v1, :cond_1b8

    .line 13549
    :cond_1b6
    iput v13, v15, Landroidx/constraintlayout/a/a/f;->r:I

    .line 13553
    :cond_1b8
    :goto_1b8
    iget v1, v15, Landroidx/constraintlayout/a/a/f;->r:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_209

    .line 13554
    iget-object v1, v15, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/e;->d()Z

    move-result v1

    if-eqz v1, :cond_1dd

    iget-object v1, v15, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/e;->d()Z

    move-result v1

    if-eqz v1, :cond_1dd

    iget-object v1, v15, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    .line 13555
    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/e;->d()Z

    move-result v1

    if-eqz v1, :cond_1dd

    iget-object v1, v15, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/e;->d()Z

    move-result v1

    if-nez v1, :cond_209

    .line 13557
    :cond_1dd
    iget-object v1, v15, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/e;->d()Z

    move-result v1

    if-eqz v1, :cond_1f0

    iget-object v1, v15, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/e;->d()Z

    move-result v1

    if-eqz v1, :cond_1f0

    .line 13558
    iput v13, v15, Landroidx/constraintlayout/a/a/f;->r:I

    goto :goto_209

    .line 13559
    :cond_1f0
    iget-object v1, v15, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/e;->d()Z

    move-result v1

    if-eqz v1, :cond_209

    iget-object v1, v15, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/e;->d()Z

    move-result v1

    if-eqz v1, :cond_209

    .line 13560
    iget v1, v15, Landroidx/constraintlayout/a/a/f;->s:F

    div-float v1, v18, v1

    iput v1, v15, Landroidx/constraintlayout/a/a/f;->s:F

    const/4 v1, 0x1

    .line 13561
    iput v1, v15, Landroidx/constraintlayout/a/a/f;->r:I

    .line 13566
    :cond_209
    :goto_209
    iget v1, v15, Landroidx/constraintlayout/a/a/f;->r:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_222

    if-eqz v16, :cond_215

    if-nez v22, :cond_215

    .line 13568
    iput v13, v15, Landroidx/constraintlayout/a/a/f;->r:I

    goto :goto_222

    :cond_215
    if-nez v16, :cond_222

    if-eqz v22, :cond_222

    .line 13570
    iget v1, v15, Landroidx/constraintlayout/a/a/f;->s:F

    div-float v1, v18, v1

    iput v1, v15, Landroidx/constraintlayout/a/a/f;->s:F

    const/4 v1, 0x1

    .line 13571
    iput v1, v15, Landroidx/constraintlayout/a/a/f;->r:I

    .line 13575
    :cond_222
    :goto_222
    iget v1, v15, Landroidx/constraintlayout/a/a/f;->r:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_243

    .line 13576
    iget v1, v15, Landroidx/constraintlayout/a/a/f;->j:I

    if-lez v1, :cond_232

    iget v1, v15, Landroidx/constraintlayout/a/a/f;->m:I

    if-nez v1, :cond_232

    .line 13577
    iput v13, v15, Landroidx/constraintlayout/a/a/f;->r:I

    goto :goto_243

    .line 13578
    :cond_232
    iget v1, v15, Landroidx/constraintlayout/a/a/f;->j:I

    if-nez v1, :cond_243

    iget v1, v15, Landroidx/constraintlayout/a/a/f;->m:I

    if-lez v1, :cond_243

    .line 13579
    iget v1, v15, Landroidx/constraintlayout/a/a/f;->s:F

    div-float v1, v18, v1

    iput v1, v15, Landroidx/constraintlayout/a/a/f;->s:F

    const/4 v1, 0x1

    .line 13580
    iput v1, v15, Landroidx/constraintlayout/a/a/f;->r:I

    .line 13584
    :cond_243
    :goto_243
    iget v1, v15, Landroidx/constraintlayout/a/a/f;->r:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2c0

    if-eqz v16, :cond_2c0

    if-eqz v22, :cond_2c0

    .line 13585
    iget v1, v15, Landroidx/constraintlayout/a/a/f;->s:F

    div-float v1, v18, v1

    iput v1, v15, Landroidx/constraintlayout/a/a/f;->s:F

    const/4 v1, 0x1

    .line 13586
    iput v1, v15, Landroidx/constraintlayout/a/a/f;->r:I

    goto/16 :goto_2c0

    .line 2421
    :cond_257
    iget-object v1, v15, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v1, v1, v13

    sget v7, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    if-ne v1, v7, :cond_289

    if-ne v9, v2, :cond_289

    .line 2423
    iput v13, v15, Landroidx/constraintlayout/a/a/f;->r:I

    .line 2424
    iget v0, v15, Landroidx/constraintlayout/a/a/f;->s:F

    iget v1, v15, Landroidx/constraintlayout/a/a/f;->J:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 2425
    iget-object v1, v15, Landroidx/constraintlayout/a/a/f;->G:[I

    const/4 v7, 0x1

    aget v1, v1, v7

    sget v2, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    if-eq v1, v2, :cond_27e

    move/from16 v29, v0

    move/from16 v30, v5

    move/from16 v27, v11

    move/from16 v28, v13

    move/from16 v26, v17

    goto :goto_2d5

    :cond_27e
    move/from16 v29, v0

    move/from16 v30, v5

    move/from16 v28, v7

    move/from16 v26, v9

    move/from16 v27, v11

    goto :goto_2d5

    :cond_289
    const/4 v7, 0x1

    .line 2429
    iget-object v1, v15, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v1, v1, v7

    sget v8, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    if-ne v1, v8, :cond_2c0

    if-ne v11, v2, :cond_2c0

    .line 2431
    iput v7, v15, Landroidx/constraintlayout/a/a/f;->r:I

    .line 2432
    iget v1, v15, Landroidx/constraintlayout/a/a/f;->L:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2a1

    .line 2434
    iget v1, v15, Landroidx/constraintlayout/a/a/f;->s:F

    div-float v1, v18, v1

    iput v1, v15, Landroidx/constraintlayout/a/a/f;->s:F

    .line 2436
    :cond_2a1
    iget v1, v15, Landroidx/constraintlayout/a/a/f;->s:F

    iget v2, v15, Landroidx/constraintlayout/a/a/f;->I:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 2437
    iget-object v2, v15, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v2, v2, v13

    sget v5, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    if-eq v2, v5, :cond_2bb

    move/from16 v29, v0

    move/from16 v30, v1

    move/from16 v26, v9

    move/from16 v28, v13

    move/from16 v27, v17

    goto :goto_2d5

    :cond_2bb
    move/from16 v29, v0

    move/from16 v30, v1

    goto :goto_2c4

    :cond_2c0
    :goto_2c0
    move/from16 v29, v0

    move/from16 v30, v5

    :goto_2c4
    move/from16 v26, v9

    move/from16 v27, v11

    const/16 v28, 0x1

    goto :goto_2d5

    :cond_2cb
    move/from16 v29, v0

    move/from16 v30, v5

    move/from16 v26, v9

    move/from16 v27, v11

    move/from16 v28, v13

    .line 2444
    :goto_2d5
    iget-object v0, v15, Landroidx/constraintlayout/a/a/f;->i:[I

    aput v26, v0, v13

    .line 2445
    iget-object v0, v15, Landroidx/constraintlayout/a/a/f;->i:[I

    const/4 v1, 0x1

    aput v27, v0, v1

    if-eqz v28, :cond_2ee

    .line 2447
    iget v0, v15, Landroidx/constraintlayout/a/a/f;->r:I

    if-eqz v0, :cond_2ea

    iget v0, v15, Landroidx/constraintlayout/a/a/f;->r:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2ef

    goto :goto_2eb

    :cond_2ea
    const/4 v2, -0x1

    :goto_2eb
    const/16 v25, 0x1

    goto :goto_2f1

    :cond_2ee
    const/4 v2, -0x1

    :cond_2ef
    move/from16 v25, v13

    .line 2451
    :goto_2f1
    iget-object v0, v15, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v0, v0, v13

    sget v1, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    if-ne v0, v1, :cond_300

    instance-of v0, v15, Landroidx/constraintlayout/a/a/g;

    if-eqz v0, :cond_300

    const/16 v31, 0x1

    goto :goto_302

    :cond_300
    move/from16 v31, v13

    .line 2455
    :goto_302
    iget-object v0, v15, Landroidx/constraintlayout/a/a/f;->D:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/e;->d()Z

    move-result v0

    const/16 v24, 0x1

    xor-int/lit8 v32, v0, 0x1

    .line 2459
    iget v0, v15, Landroidx/constraintlayout/a/a/f;->c:I

    const/4 v1, 0x2

    const/16 v33, 0x0

    if-eq v0, v1, :cond_376

    .line 2460
    iget-object v0, v15, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    if-eqz v0, :cond_322

    iget-object v0, v15, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v0

    move-object/from16 v34, v0

    goto :goto_324

    :cond_322
    move-object/from16 v34, v33

    .line 2461
    :goto_324
    iget-object v0, v15, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    if-eqz v0, :cond_333

    iget-object v0, v15, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v0

    move-object/from16 v35, v0

    goto :goto_335

    :cond_333
    move-object/from16 v35, v33

    .line 2462
    :goto_335
    iget-object v0, v15, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v5, v0, v13

    iget-object v7, v15, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    iget-object v8, v15, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    iget v9, v15, Landroidx/constraintlayout/a/a/f;->M:I

    iget v11, v15, Landroidx/constraintlayout/a/a/f;->T:I

    iget-object v0, v15, Landroidx/constraintlayout/a/a/f;->u:[I

    aget v12, v0, v13

    iget v0, v15, Landroidx/constraintlayout/a/a/f;->Y:F

    move v13, v0

    iget v0, v15, Landroidx/constraintlayout/a/a/f;->j:I

    move/from16 v17, v0

    iget v0, v15, Landroidx/constraintlayout/a/a/f;->k:I

    move/from16 v18, v0

    iget v0, v15, Landroidx/constraintlayout/a/a/f;->l:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move-object/from16 v36, v3

    move-object/from16 v3, v35

    move-object/from16 v24, v4

    move-object/from16 v4, v34

    move-object/from16 v37, v6

    move/from16 v6, v31

    move-object/from16 v31, v10

    move/from16 v10, v29

    move/from16 v14, v25

    move/from16 v15, v20

    move/from16 v16, v26

    move/from16 v20, v32

    invoke-direct/range {v0 .. v20}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/e;ZLandroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;IZLandroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/e;IIIIFZZIIIFZ)V

    goto :goto_37e

    :cond_376
    move-object/from16 v36, v3

    move-object/from16 v24, v4

    move-object/from16 v37, v6

    move-object/from16 v31, v10

    :goto_37e
    move-object/from16 v15, p0

    .line 2468
    iget v0, v15, Landroidx/constraintlayout/a/a/f;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_386

    return-void

    .line 2478
    :cond_386
    iget-object v0, v15, Landroidx/constraintlayout/a/a/f;->G:[I

    const/4 v14, 0x1

    aget v0, v0, v14

    sget v1, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    if-ne v0, v1, :cond_395

    instance-of v0, v15, Landroidx/constraintlayout/a/a/g;

    if-eqz v0, :cond_395

    move v6, v14

    goto :goto_396

    :cond_395
    const/4 v6, 0x0

    :goto_396
    if-eqz v28, :cond_3a4

    .line 2481
    iget v0, v15, Landroidx/constraintlayout/a/a/f;->r:I

    if-eq v0, v14, :cond_3a1

    iget v0, v15, Landroidx/constraintlayout/a/a/f;->r:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3a4

    :cond_3a1
    move/from16 v16, v14

    goto :goto_3a6

    :cond_3a4
    const/16 v16, 0x0

    .line 2484
    :goto_3a6
    iget v0, v15, Landroidx/constraintlayout/a/a/f;->S:I

    if-lez v0, :cond_3df

    .line 2485
    iget-object v0, v15, Landroidx/constraintlayout/a/a/f;->A:Landroidx/constraintlayout/a/a/e;

    .line 14058
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 2485
    iget v0, v0, Landroidx/constraintlayout/a/a/m;->i:I

    if-ne v0, v14, :cond_3be

    .line 2486
    iget-object v0, v15, Landroidx/constraintlayout/a/a/f;->A:Landroidx/constraintlayout/a/a/e;

    .line 15058
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    move-object/from16 v10, p1

    .line 2486
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/a/a/m;->a(Landroidx/constraintlayout/a/e;)V

    move-object/from16 v4, v37

    goto :goto_3e3

    :cond_3be
    move-object/from16 v10, p1

    .line 16031
    iget v0, v15, Landroidx/constraintlayout/a/a/f;->S:I

    const/4 v1, 0x6

    move-object/from16 v2, v36

    move-object/from16 v4, v37

    .line 2488
    invoke-virtual {v10, v2, v4, v0, v1}, Landroidx/constraintlayout/a/e;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    .line 2489
    iget-object v0, v15, Landroidx/constraintlayout/a/a/f;->A:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v0, :cond_3e3

    .line 2490
    iget-object v0, v15, Landroidx/constraintlayout/a/a/f;->A:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v10, v0}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v0

    const/4 v3, 0x0

    .line 2492
    invoke-virtual {v10, v2, v0, v3, v1}, Landroidx/constraintlayout/a/e;->c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;

    move/from16 v20, v3

    goto :goto_3e5

    :cond_3df
    move-object/from16 v4, v37

    move-object/from16 v10, p1

    :cond_3e3
    :goto_3e3
    move/from16 v20, v32

    .line 2497
    :goto_3e5
    iget-object v0, v15, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    if-eqz v0, :cond_3f4

    iget-object v0, v15, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v10, v0}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v0

    move-object/from16 v25, v0

    goto :goto_3f6

    :cond_3f4
    move-object/from16 v25, v33

    .line 2498
    :goto_3f6
    iget-object v0, v15, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    if-eqz v0, :cond_404

    iget-object v0, v15, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v10, v0}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v0

    move-object v3, v0

    goto :goto_406

    :cond_404
    move-object/from16 v3, v33

    .line 2499
    :goto_406
    iget-object v0, v15, Landroidx/constraintlayout/a/a/f;->G:[I

    aget v5, v0, v14

    iget-object v7, v15, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    iget-object v8, v15, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    iget v9, v15, Landroidx/constraintlayout/a/a/f;->N:I

    iget v11, v15, Landroidx/constraintlayout/a/a/f;->U:I

    iget-object v0, v15, Landroidx/constraintlayout/a/a/f;->u:[I

    aget v12, v0, v14

    iget v13, v15, Landroidx/constraintlayout/a/a/f;->Z:F

    iget v0, v15, Landroidx/constraintlayout/a/a/f;->m:I

    move/from16 v17, v0

    iget v0, v15, Landroidx/constraintlayout/a/a/f;->n:I

    move/from16 v18, v0

    iget v0, v15, Landroidx/constraintlayout/a/a/f;->o:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move-object/from16 v22, v4

    move-object/from16 v4, v25

    move/from16 v10, v30

    move/from16 v14, v16

    move/from16 v15, v23

    move/from16 v16, v27

    invoke-direct/range {v0 .. v20}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/e;ZLandroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;IZLandroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/e;IIIIFZZIIIFZ)V

    if-eqz v28, :cond_462

    move-object/from16 v6, p0

    .line 2506
    iget v0, v6, Landroidx/constraintlayout/a/a/f;->r:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_452

    .line 2507
    iget v5, v6, Landroidx/constraintlayout/a/a/f;->s:F

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    move-object/from16 v3, v31

    move-object/from16 v4, v21

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;F)V

    goto :goto_464

    .line 2509
    :cond_452
    iget v5, v6, Landroidx/constraintlayout/a/a/f;->s:F

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v21

    move-object/from16 v3, v24

    move-object/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;F)V

    goto :goto_464

    :cond_462
    move-object/from16 v6, p0

    .line 2513
    :goto_464
    iget-object v0, v6, Landroidx/constraintlayout/a/a/f;->D:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/e;->d()Z

    move-result v0

    if-eqz v0, :cond_502

    .line 2514
    iget-object v0, v6, Landroidx/constraintlayout/a/a/f;->D:Landroidx/constraintlayout/a/a/e;

    .line 16144
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    .line 17112
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->b:Landroidx/constraintlayout/a/a/f;

    .line 2514
    iget v1, v6, Landroidx/constraintlayout/a/a/f;->v:F

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, v6, Landroidx/constraintlayout/a/a/f;->D:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v2

    .line 17329
    sget-object v3, Landroidx/constraintlayout/a/a/e$c;->LEFT:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v6, v3}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v3

    .line 17330
    sget-object v5, Landroidx/constraintlayout/a/a/e$c;->TOP:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v6, v5}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v7

    .line 17331
    sget-object v5, Landroidx/constraintlayout/a/a/e$c;->RIGHT:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v6, v5}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v12

    .line 17332
    sget-object v5, Landroidx/constraintlayout/a/a/e$c;->BOTTOM:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v6, v5}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v8

    .line 17334
    sget-object v5, Landroidx/constraintlayout/a/a/e$c;->LEFT:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v13

    .line 17335
    sget-object v5, Landroidx/constraintlayout/a/a/e$c;->TOP:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v9

    .line 17336
    sget-object v5, Landroidx/constraintlayout/a/a/e$c;->RIGHT:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v14

    .line 17337
    sget-object v5, Landroidx/constraintlayout/a/a/e$c;->BOTTOM:Landroidx/constraintlayout/a/a/e$c;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e$c;)Landroidx/constraintlayout/a/a/e;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v10

    .line 17339
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/e;->c()Landroidx/constraintlayout/a/b;

    move-result-object v0

    float-to-double v5, v1

    .line 17340
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    int-to-double v1, v2

    move-wide/from16 v38, v5

    mul-double v5, v15, v1

    double-to-float v11, v5

    move-wide/from16 v15, v38

    move-object v6, v0

    .line 17341
    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/a/b;->b(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;F)Landroidx/constraintlayout/a/b;

    .line 17342
    invoke-virtual {v4, v0}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/b;)V

    .line 17343
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/e;->c()Landroidx/constraintlayout/a/b;

    move-result-object v0

    .line 17344
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v1

    double-to-float v10, v5

    move-object v5, v0

    move-object v6, v3

    move-object v7, v12

    move-object v8, v13

    move-object v9, v14

    .line 17345
    invoke-virtual/range {v5 .. v10}, Landroidx/constraintlayout/a/b;->b(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;F)Landroidx/constraintlayout/a/b;

    .line 17346
    invoke-virtual {v4, v0}, Landroidx/constraintlayout/a/e;->a(Landroidx/constraintlayout/a/b;)V

    :cond_502
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_8e

    .line 1287
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_8e

    :cond_b
    const/4 v1, -0x1

    .line 1293
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2c

    .line 1294
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_37

    add-int/lit8 v6, v2, -0x1

    if-ge v3, v6, :cond_37

    .line 1296
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "W"

    .line 1297
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2c

    move v1, v4

    goto :goto_35

    :cond_2c
    const-string v4, "H"

    .line 1299
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    move v1, v5

    :cond_35
    :goto_35
    add-int/lit8 v4, v3, 0x1

    :cond_37
    const/16 v3, 0x3a

    .line 1306
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_75

    sub-int/2addr v2, v5

    if-ge v3, v2, :cond_75

    .line 1309
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v3, v5

    .line 1310
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1311
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_84

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_84

    .line 1313
    :try_start_57
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 1314
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    cmpl-float v3, v2, v0

    if-lez v3, :cond_84

    cmpl-float v3, p1, v0

    if-lez v3, :cond_84

    if-ne v1, v5, :cond_6f

    div-float/2addr p1, v2

    .line 1317
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    goto :goto_85

    :cond_6f
    div-float/2addr v2, p1

    .line 1319
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1
    :try_end_74
    .catch Ljava/lang/NumberFormatException; {:try_start_57 .. :try_end_74} :catch_84

    goto :goto_85

    .line 1327
    :cond_75
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1328
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_84

    .line 1330
    :try_start_7f
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_83
    .catch Ljava/lang/NumberFormatException; {:try_start_7f .. :try_end_83} :catch_84

    goto :goto_85

    :catch_84
    :cond_84
    move p1, v0

    :goto_85
    cmpl-float v0, p1, v0

    if-lez v0, :cond_8d

    .line 1338
    iput p1, p0, Landroidx/constraintlayout/a/a/f;->K:F

    .line 1339
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->L:I

    :cond_8d
    return-void

    .line 1288
    :cond_8e
    :goto_8e
    iput v0, p0, Landroidx/constraintlayout/a/a/f;->K:F

    return-void
.end method

.method public a()Z
    .registers 2

    .line 1677
    iget p0, p0, Landroidx/constraintlayout/a/a/f;->ab:I

    const/16 v0, 0x8

    if-eq p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final b(I)I
    .registers 3

    if-nez p1, :cond_7

    .line 853
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/f;->m()I

    move-result p0

    return p0

    :cond_7
    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    .line 855
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/f;->n()I

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public b()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x6

    if-ge v0, v1, :cond_10

    .line 335
    iget-object v1, p0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v1, v1, v0

    .line 3058
    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 335
    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/m;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return-void
.end method

.method public b(II)V
    .registers 3

    .line 1089
    iput p1, p0, Landroidx/constraintlayout/a/a/f;->Q:I

    .line 1090
    iput p2, p0, Landroidx/constraintlayout/a/a/f;->R:I

    return-void
.end method

.method public final b(Landroidx/constraintlayout/a/e;)V
    .registers 3

    .line 700
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    .line 701
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    .line 702
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    .line 703
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    .line 704
    iget v0, p0, Landroidx/constraintlayout/a/a/f;->S:I

    if-lez v0, :cond_1d

    .line 705
    iget-object p0, p0, Landroidx/constraintlayout/a/a/f;->A:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/a/e;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    :cond_1d
    return-void
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public final c(I)V
    .registers 2

    .line 1059
    iput p1, p0, Landroidx/constraintlayout/a/a/f;->M:I

    return-void
.end method

.method public final c(II)V
    .registers 3

    .line 1520
    iput p1, p0, Landroidx/constraintlayout/a/a/f;->M:I

    sub-int/2addr p2, p1

    .line 1521
    iput p2, p0, Landroidx/constraintlayout/a/a/f;->I:I

    .line 1522
    iget p1, p0, Landroidx/constraintlayout/a/a/f;->I:I

    iget p2, p0, Landroidx/constraintlayout/a/a/f;->T:I

    if-ge p1, p2, :cond_f

    .line 1523
    iget p1, p0, Landroidx/constraintlayout/a/a/f;->T:I

    iput p1, p0, Landroidx/constraintlayout/a/a/f;->I:I

    :cond_f
    return-void
.end method

.method public final d(I)V
    .registers 2

    .line 1068
    iput p1, p0, Landroidx/constraintlayout/a/a/f;->N:I

    return-void
.end method

.method public final d(II)V
    .registers 3

    .line 1534
    iput p1, p0, Landroidx/constraintlayout/a/a/f;->N:I

    sub-int/2addr p2, p1

    .line 1535
    iput p2, p0, Landroidx/constraintlayout/a/a/f;->J:I

    .line 1536
    iget p1, p0, Landroidx/constraintlayout/a/a/f;->J:I

    iget p2, p0, Landroidx/constraintlayout/a/a/f;->U:I

    if-ge p1, p2, :cond_f

    .line 1537
    iget p1, p0, Landroidx/constraintlayout/a/a/f;->U:I

    iput p1, p0, Landroidx/constraintlayout/a/a/f;->J:I

    :cond_f
    return-void
.end method

.method public final d()Z
    .registers 4

    .line 117
    iget v0, p0, Landroidx/constraintlayout/a/a/f;->g:I

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    iget v0, p0, Landroidx/constraintlayout/a/a/f;->K:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1e

    iget v0, p0, Landroidx/constraintlayout/a/a/f;->j:I

    if-nez v0, :cond_1e

    iget v0, p0, Landroidx/constraintlayout/a/a/f;->k:I

    if-nez v0, :cond_1e

    iget-object p0, p0, Landroidx/constraintlayout/a/a/f;->G:[I

    aget p0, p0, v1

    sget v0, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    if-ne p0, v0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    return v1
.end method

.method public final e(I)V
    .registers 3

    .line 1213
    iput p1, p0, Landroidx/constraintlayout/a/a/f;->I:I

    .line 1214
    iget p1, p0, Landroidx/constraintlayout/a/a/f;->I:I

    iget v0, p0, Landroidx/constraintlayout/a/a/f;->T:I

    if-ge p1, v0, :cond_c

    .line 1215
    iget p1, p0, Landroidx/constraintlayout/a/a/f;->T:I

    iput p1, p0, Landroidx/constraintlayout/a/a/f;->I:I

    :cond_c
    return-void
.end method

.method final e(II)V
    .registers 4

    if-nez p2, :cond_5

    .line 1565
    iput p1, p0, Landroidx/constraintlayout/a/a/f;->O:I

    return-void

    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_a

    .line 1567
    iput p1, p0, Landroidx/constraintlayout/a/a/f;->P:I

    :cond_a
    return-void
.end method

.method public final e()Z
    .registers 3

    .line 125
    iget v0, p0, Landroidx/constraintlayout/a/a/f;->h:I

    if-nez v0, :cond_1d

    iget v0, p0, Landroidx/constraintlayout/a/a/f;->K:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1d

    iget v0, p0, Landroidx/constraintlayout/a/a/f;->m:I

    if-nez v0, :cond_1d

    iget v0, p0, Landroidx/constraintlayout/a/a/f;->n:I

    if-nez v0, :cond_1d

    iget-object p0, p0, Landroidx/constraintlayout/a/a/f;->G:[I

    const/4 v0, 0x1

    aget p0, p0, v0

    sget v1, Landroidx/constraintlayout/a/a/f$a;->MATCH_CONSTRAINT$689812f:I

    if-ne p0, v1, :cond_1d

    return v0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public f()V
    .registers 7

    .line 257
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/e;->c()V

    .line 258
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/e;->c()V

    .line 259
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/e;->c()V

    .line 260
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/e;->c()V

    .line 261
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->A:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/e;->c()V

    .line 262
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->B:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/e;->c()V

    .line 263
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->C:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/e;->c()V

    .line 264
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->D:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/e;->c()V

    const/4 v0, 0x0

    .line 265
    iput-object v0, p0, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/f;

    const/4 v1, 0x0

    .line 266
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->v:F

    const/4 v2, 0x0

    .line 267
    iput v2, p0, Landroidx/constraintlayout/a/a/f;->I:I

    .line 268
    iput v2, p0, Landroidx/constraintlayout/a/a/f;->J:I

    .line 269
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->K:F

    const/4 v1, -0x1

    .line 270
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->L:I

    .line 271
    iput v2, p0, Landroidx/constraintlayout/a/a/f;->M:I

    .line 272
    iput v2, p0, Landroidx/constraintlayout/a/a/f;->N:I

    .line 273
    iput v2, p0, Landroidx/constraintlayout/a/a/f;->a:I

    .line 274
    iput v2, p0, Landroidx/constraintlayout/a/a/f;->b:I

    .line 275
    iput v2, p0, Landroidx/constraintlayout/a/a/f;->ar:I

    .line 276
    iput v2, p0, Landroidx/constraintlayout/a/a/f;->as:I

    .line 277
    iput v2, p0, Landroidx/constraintlayout/a/a/f;->Q:I

    .line 278
    iput v2, p0, Landroidx/constraintlayout/a/a/f;->R:I

    .line 279
    iput v2, p0, Landroidx/constraintlayout/a/a/f;->S:I

    .line 280
    iput v2, p0, Landroidx/constraintlayout/a/a/f;->T:I

    .line 281
    iput v2, p0, Landroidx/constraintlayout/a/a/f;->U:I

    .line 282
    iput v2, p0, Landroidx/constraintlayout/a/a/f;->V:I

    .line 283
    iput v2, p0, Landroidx/constraintlayout/a/a/f;->W:I

    .line 284
    sget v3, Landroidx/constraintlayout/a/a/f;->X:F

    iput v3, p0, Landroidx/constraintlayout/a/a/f;->Y:F

    .line 285
    sget v3, Landroidx/constraintlayout/a/a/f;->X:F

    iput v3, p0, Landroidx/constraintlayout/a/a/f;->Z:F

    .line 286
    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->G:[I

    sget v4, Landroidx/constraintlayout/a/a/f$a;->FIXED$689812f:I

    aput v4, v3, v2

    .line 287
    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->G:[I

    sget v4, Landroidx/constraintlayout/a/a/f$a;->FIXED$689812f:I

    const/4 v5, 0x1

    aput v4, v3, v5

    .line 288
    iput-object v0, p0, Landroidx/constraintlayout/a/a/f;->aa:Ljava/lang/Object;

    .line 289
    iput v2, p0, Landroidx/constraintlayout/a/a/f;->at:I

    .line 290
    iput v2, p0, Landroidx/constraintlayout/a/a/f;->ab:I

    .line 291
    iput-object v0, p0, Landroidx/constraintlayout/a/a/f;->au:Ljava/lang/String;

    .line 292
    iput-boolean v2, p0, Landroidx/constraintlayout/a/a/f;->ad:Z

    .line 293
    iput-boolean v2, p0, Landroidx/constraintlayout/a/a/f;->ae:Z

    .line 294
    iput v2, p0, Landroidx/constraintlayout/a/a/f;->ai:I

    .line 295
    iput v2, p0, Landroidx/constraintlayout/a/a/f;->aj:I

    .line 296
    iput-boolean v2, p0, Landroidx/constraintlayout/a/a/f;->ak:Z

    .line 297
    iput-boolean v2, p0, Landroidx/constraintlayout/a/a/f;->al:Z

    .line 298
    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->am:[F

    const/high16 v4, -0x40800000    # -1.0f

    aput v4, v3, v2

    .line 299
    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->am:[F

    aput v4, v3, v5

    .line 300
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->c:I

    .line 301
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->d:I

    .line 302
    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->u:[I

    const v4, 0x7fffffff

    aput v4, v3, v2

    .line 303
    iget-object v3, p0, Landroidx/constraintlayout/a/a/f;->u:[I

    aput v4, v3, v5

    .line 304
    iput v2, p0, Landroidx/constraintlayout/a/a/f;->g:I

    .line 305
    iput v2, p0, Landroidx/constraintlayout/a/a/f;->h:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 306
    iput v3, p0, Landroidx/constraintlayout/a/a/f;->l:F

    .line 307
    iput v3, p0, Landroidx/constraintlayout/a/a/f;->o:F

    .line 308
    iput v4, p0, Landroidx/constraintlayout/a/a/f;->k:I

    .line 309
    iput v4, p0, Landroidx/constraintlayout/a/a/f;->n:I

    .line 310
    iput v2, p0, Landroidx/constraintlayout/a/a/f;->j:I

    .line 311
    iput v2, p0, Landroidx/constraintlayout/a/a/f;->m:I

    .line 312
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->r:I

    .line 313
    iput v3, p0, Landroidx/constraintlayout/a/a/f;->s:F

    .line 314
    iget-object v1, p0, Landroidx/constraintlayout/a/a/f;->e:Landroidx/constraintlayout/a/a/n;

    if-eqz v1, :cond_b3

    .line 315
    iget-object v1, p0, Landroidx/constraintlayout/a/a/f;->e:Landroidx/constraintlayout/a/a/n;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/n;->b()V

    .line 317
    :cond_b3
    iget-object v1, p0, Landroidx/constraintlayout/a/a/f;->f:Landroidx/constraintlayout/a/a/n;

    if-eqz v1, :cond_bc

    .line 318
    iget-object v1, p0, Landroidx/constraintlayout/a/a/f;->f:Landroidx/constraintlayout/a/a/n;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/n;->b()V

    .line 320
    :cond_bc
    iput-object v0, p0, Landroidx/constraintlayout/a/a/f;->t:Landroidx/constraintlayout/a/a/h;

    .line 321
    iput-boolean v2, p0, Landroidx/constraintlayout/a/a/f;->af:Z

    .line 322
    iput-boolean v2, p0, Landroidx/constraintlayout/a/a/f;->ag:Z

    .line 323
    iput-boolean v2, p0, Landroidx/constraintlayout/a/a/f;->ah:Z

    return-void
.end method

.method public final f(I)V
    .registers 3

    .line 1225
    iput p1, p0, Landroidx/constraintlayout/a/a/f;->J:I

    .line 1226
    iget p1, p0, Landroidx/constraintlayout/a/a/f;->J:I

    iget v0, p0, Landroidx/constraintlayout/a/a/f;->U:I

    if-ge p1, v0, :cond_c

    .line 1227
    iget p1, p0, Landroidx/constraintlayout/a/a/f;->U:I

    iput p1, p0, Landroidx/constraintlayout/a/a/f;->J:I

    :cond_c
    return-void
.end method

.method public final g()V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x6

    if-ge v0, v1, :cond_3c

    .line 344
    iget-object v1, p0, Landroidx/constraintlayout/a/a/f;->E:[Landroidx/constraintlayout/a/a/e;

    aget-object v1, v1, v0

    .line 4058
    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 4245
    iget-object v2, v1, Landroidx/constraintlayout/a/a/m;->a:Landroidx/constraintlayout/a/a/e;

    .line 5144
    iget-object v2, v2, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v2, :cond_39

    .line 6144
    iget-object v3, v2, Landroidx/constraintlayout/a/a/e;->d:Landroidx/constraintlayout/a/a/e;

    .line 4249
    iget-object v4, v1, Landroidx/constraintlayout/a/a/m;->a:Landroidx/constraintlayout/a/a/e;

    if-ne v3, v4, :cond_1d

    const/4 v3, 0x4

    .line 4250
    iput v3, v1, Landroidx/constraintlayout/a/a/m;->g:I

    .line 7058
    iget-object v4, v2, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 4251
    iput v3, v4, Landroidx/constraintlayout/a/a/m;->g:I

    .line 4253
    :cond_1d
    iget-object v3, v1, Landroidx/constraintlayout/a/a/m;->a:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/e;->b()I

    move-result v3

    .line 4254
    iget-object v4, v1, Landroidx/constraintlayout/a/a/m;->a:Landroidx/constraintlayout/a/a/e;

    iget-object v4, v4, Landroidx/constraintlayout/a/a/e;->c:Landroidx/constraintlayout/a/a/e$c;

    sget-object v5, Landroidx/constraintlayout/a/a/e$c;->RIGHT:Landroidx/constraintlayout/a/a/e$c;

    if-eq v4, v5, :cond_33

    iget-object v4, v1, Landroidx/constraintlayout/a/a/m;->a:Landroidx/constraintlayout/a/a/e;

    iget-object v4, v4, Landroidx/constraintlayout/a/a/e;->c:Landroidx/constraintlayout/a/a/e$c;

    sget-object v5, Landroidx/constraintlayout/a/a/e$c;->BOTTOM:Landroidx/constraintlayout/a/a/e$c;

    if-ne v4, v5, :cond_34

    :cond_33
    neg-int v3, v3

    .line 8058
    :cond_34
    iget-object v2, v2, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 4258
    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/m;I)V

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3c
    return-void
.end method

.method public final g(I)V
    .registers 2

    if-gez p1, :cond_6

    const/4 p1, 0x0

    .line 1398
    iput p1, p0, Landroidx/constraintlayout/a/a/f;->T:I

    return-void

    .line 1400
    :cond_6
    iput p1, p0, Landroidx/constraintlayout/a/a/f;->T:I

    return-void
.end method

.method public final h(I)V
    .registers 2

    if-gez p1, :cond_6

    const/4 p1, 0x0

    .line 1411
    iput p1, p0, Landroidx/constraintlayout/a/a/f;->U:I

    return-void

    .line 1413
    :cond_6
    iput p1, p0, Landroidx/constraintlayout/a/a/f;->U:I

    return-void
.end method

.method public final h()Z
    .registers 3

    .line 369
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->w:Landroidx/constraintlayout/a/a/e;

    .line 9058
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 369
    iget v0, v0, Landroidx/constraintlayout/a/a/m;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->y:Landroidx/constraintlayout/a/a/e;

    .line 10058
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 370
    iget v0, v0, Landroidx/constraintlayout/a/a/m;->i:I

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->x:Landroidx/constraintlayout/a/a/e;

    .line 11058
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 371
    iget v0, v0, Landroidx/constraintlayout/a/a/m;->i:I

    if-ne v0, v1, :cond_22

    iget-object p0, p0, Landroidx/constraintlayout/a/a/f;->z:Landroidx/constraintlayout/a/a/e;

    .line 12058
    iget-object p0, p0, Landroidx/constraintlayout/a/a/e;->a:Landroidx/constraintlayout/a/a/m;

    .line 372
    iget p0, p0, Landroidx/constraintlayout/a/a/m;->i:I

    if-ne p0, v1, :cond_22

    return v1

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public final i(I)I
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 13169
    iget-object p0, p0, Landroidx/constraintlayout/a/a/f;->G:[I

    aget p0, p0, v0

    return p0

    :cond_8
    const/4 v1, 0x1

    if-ne p1, v1, :cond_10

    .line 13178
    iget-object p0, p0, Landroidx/constraintlayout/a/a/f;->G:[I

    aget p0, p0, v1

    return p0

    :cond_10
    return v0
.end method

.method public final i()Landroidx/constraintlayout/a/a/n;
    .registers 2

    .line 383
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->e:Landroidx/constraintlayout/a/a/n;

    if-nez v0, :cond_b

    .line 384
    new-instance v0, Landroidx/constraintlayout/a/a/n;

    invoke-direct {v0}, Landroidx/constraintlayout/a/a/n;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/a/a/f;->e:Landroidx/constraintlayout/a/a/n;

    .line 386
    :cond_b
    iget-object p0, p0, Landroidx/constraintlayout/a/a/f;->e:Landroidx/constraintlayout/a/a/n;

    return-object p0
.end method

.method public final j()Landroidx/constraintlayout/a/a/n;
    .registers 2

    .line 394
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->f:Landroidx/constraintlayout/a/a/n;

    if-nez v0, :cond_b

    .line 395
    new-instance v0, Landroidx/constraintlayout/a/a/n;

    invoke-direct {v0}, Landroidx/constraintlayout/a/a/n;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/a/a/f;->f:Landroidx/constraintlayout/a/a/n;

    .line 397
    :cond_b
    iget-object p0, p0, Landroidx/constraintlayout/a/a/f;->f:Landroidx/constraintlayout/a/a/n;

    return-object p0
.end method

.method public final j(I)V
    .registers 4

    .line 2203
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->G:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 2204
    sget v0, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    if-ne p1, v0, :cond_e

    .line 2205
    iget p1, p0, Landroidx/constraintlayout/a/a/f;->V:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/a/a/f;->e(I)V

    :cond_e
    return-void
.end method

.method public final k()I
    .registers 1

    .line 755
    iget p0, p0, Landroidx/constraintlayout/a/a/f;->M:I

    return p0
.end method

.method public final k(I)V
    .registers 4

    .line 2215
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->G:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 2216
    sget v0, Landroidx/constraintlayout/a/a/f$a;->WRAP_CONTENT$689812f:I

    if-ne p1, v0, :cond_e

    .line 2217
    iget p1, p0, Landroidx/constraintlayout/a/a/f;->W:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/a/a/f;->f(I)V

    :cond_e
    return-void
.end method

.method public final l()I
    .registers 1

    .line 764
    iget p0, p0, Landroidx/constraintlayout/a/a/f;->N:I

    return p0
.end method

.method public final m()I
    .registers 3

    .line 773
    iget v0, p0, Landroidx/constraintlayout/a/a/f;->ab:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    const/4 p0, 0x0

    return p0

    .line 776
    :cond_8
    iget p0, p0, Landroidx/constraintlayout/a/a/f;->I:I

    return p0
.end method

.method public final n()I
    .registers 3

    .line 830
    iget v0, p0, Landroidx/constraintlayout/a/a/f;->ab:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    const/4 p0, 0x0

    return p0

    .line 833
    :cond_8
    iget p0, p0, Landroidx/constraintlayout/a/a/f;->J:I

    return p0
.end method

.method public final o()I
    .registers 2

    .line 867
    iget v0, p0, Landroidx/constraintlayout/a/a/f;->a:I

    iget p0, p0, Landroidx/constraintlayout/a/a/f;->Q:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final p()I
    .registers 2

    .line 876
    iget v0, p0, Landroidx/constraintlayout/a/a/f;->b:I

    iget p0, p0, Landroidx/constraintlayout/a/a/f;->R:I

    add-int/2addr v0, p0

    return v0
.end method

.method protected final q()I
    .registers 2

    .line 912
    iget v0, p0, Landroidx/constraintlayout/a/a/f;->M:I

    iget p0, p0, Landroidx/constraintlayout/a/a/f;->Q:I

    add-int/2addr v0, p0

    return v0
.end method

.method protected final r()I
    .registers 2

    .line 922
    iget v0, p0, Landroidx/constraintlayout/a/a/f;->N:I

    iget p0, p0, Landroidx/constraintlayout/a/a/f;->R:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final s()I
    .registers 2

    .line 12755
    iget v0, p0, Landroidx/constraintlayout/a/a/f;->M:I

    .line 967
    iget p0, p0, Landroidx/constraintlayout/a/a/f;->I:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final t()I
    .registers 2

    .line 12764
    iget v0, p0, Landroidx/constraintlayout/a/a/f;->N:I

    .line 976
    iget p0, p0, Landroidx/constraintlayout/a/a/f;->J:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/a/a/f;->au:Ljava/lang/String;

    if-eqz v1, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/constraintlayout/a/a/f;->au:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_21

    :cond_1f
    const-string v1, ""

    :goto_21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/a/a/f;->ac:Ljava/lang/String;

    if-eqz v1, :cond_3e

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/constraintlayout/a/a/f;->ac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_40

    :cond_3e
    const-string v1, ""

    :goto_40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/a/a/f;->M:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/a/a/f;->N:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") - ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/a/a/f;->I:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/a/a/f;->J:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") wrap: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/a/a/f;->V:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/constraintlayout/a/a/f;->W:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()Z
    .registers 1

    .line 1022
    iget p0, p0, Landroidx/constraintlayout/a/a/f;->S:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public v()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/a/a/e;",
            ">;"
        }
    .end annotation

    .line 1050
    iget-object p0, p0, Landroidx/constraintlayout/a/a/f;->F:Ljava/util/ArrayList;

    return-object p0
.end method

.method public w()V
    .registers 6

    .line 1132
    iget v0, p0, Landroidx/constraintlayout/a/a/f;->M:I

    .line 1133
    iget v1, p0, Landroidx/constraintlayout/a/a/f;->N:I

    .line 1134
    iget v2, p0, Landroidx/constraintlayout/a/a/f;->M:I

    iget v3, p0, Landroidx/constraintlayout/a/a/f;->I:I

    add-int/2addr v2, v3

    .line 1135
    iget v3, p0, Landroidx/constraintlayout/a/a/f;->N:I

    iget v4, p0, Landroidx/constraintlayout/a/a/f;->J:I

    add-int/2addr v3, v4

    .line 1136
    iput v0, p0, Landroidx/constraintlayout/a/a/f;->a:I

    .line 1137
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->b:I

    sub-int/2addr v2, v0

    .line 1138
    iput v2, p0, Landroidx/constraintlayout/a/a/f;->ar:I

    sub-int/2addr v3, v1

    .line 1139
    iput v3, p0, Landroidx/constraintlayout/a/a/f;->as:I

    return-void
.end method

.method public final x()V
    .registers 4

    .line 2064
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 2065
    iget-object v2, p0, Landroidx/constraintlayout/a/a/f;->F:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/a/a/e;

    .line 2066
    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/e;->c()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public final y()I
    .registers 2

    .line 2169
    iget-object p0, p0, Landroidx/constraintlayout/a/a/f;->G:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public final z()I
    .registers 2

    .line 2178
    iget-object p0, p0, Landroidx/constraintlayout/a/a/f;->G:[I

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method
