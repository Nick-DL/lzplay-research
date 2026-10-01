.class final Landroidx/vectordrawable/a/a/i$f;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# static fields
.field private static final n:Landroid/graphics/Matrix;


# instance fields
.field a:Landroid/graphics/Paint;

.field b:Landroid/graphics/Paint;

.field final c:Landroidx/vectordrawable/a/a/i$c;

.field d:F

.field e:F

.field f:F

.field g:F

.field h:I

.field i:Ljava/lang/String;

.field j:Ljava/lang/Boolean;

.field final k:Landroidx/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Landroid/graphics/Path;

.field private final m:Landroid/graphics/Path;

.field private final o:Landroid/graphics/Matrix;

.field private p:Landroid/graphics/PathMeasure;

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1170
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Landroidx/vectordrawable/a/a/i$f;->n:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1171
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i$f;->o:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 1181
    iput v0, p0, Landroidx/vectordrawable/a/a/i$f;->d:F

    .line 1182
    iput v0, p0, Landroidx/vectordrawable/a/a/i$f;->e:F

    .line 1183
    iput v0, p0, Landroidx/vectordrawable/a/a/i$f;->f:F

    .line 1184
    iput v0, p0, Landroidx/vectordrawable/a/a/i$f;->g:F

    const/16 v0, 0xff

    .line 1185
    iput v0, p0, Landroidx/vectordrawable/a/a/i$f;->h:I

    const/4 v0, 0x0

    .line 1186
    iput-object v0, p0, Landroidx/vectordrawable/a/a/i$f;->i:Ljava/lang/String;

    .line 1187
    iput-object v0, p0, Landroidx/vectordrawable/a/a/i$f;->j:Ljava/lang/Boolean;

    .line 1189
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i$f;->k:Landroidx/b/a;

    .line 1192
    new-instance v0, Landroidx/vectordrawable/a/a/i$c;

    invoke-direct {v0}, Landroidx/vectordrawable/a/a/i$c;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i$f;->c:Landroidx/vectordrawable/a/a/i$c;

    .line 1193
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i$f;->l:Landroid/graphics/Path;

    .line 1194
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i$f;->m:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Landroidx/vectordrawable/a/a/i$f;)V
    .registers 5

    .line 1216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1171
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i$f;->o:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 1181
    iput v0, p0, Landroidx/vectordrawable/a/a/i$f;->d:F

    .line 1182
    iput v0, p0, Landroidx/vectordrawable/a/a/i$f;->e:F

    .line 1183
    iput v0, p0, Landroidx/vectordrawable/a/a/i$f;->f:F

    .line 1184
    iput v0, p0, Landroidx/vectordrawable/a/a/i$f;->g:F

    const/16 v0, 0xff

    .line 1185
    iput v0, p0, Landroidx/vectordrawable/a/a/i$f;->h:I

    const/4 v0, 0x0

    .line 1186
    iput-object v0, p0, Landroidx/vectordrawable/a/a/i$f;->i:Ljava/lang/String;

    .line 1187
    iput-object v0, p0, Landroidx/vectordrawable/a/a/i$f;->j:Ljava/lang/Boolean;

    .line 1189
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i$f;->k:Landroidx/b/a;

    .line 1217
    new-instance v0, Landroidx/vectordrawable/a/a/i$c;

    iget-object v1, p1, Landroidx/vectordrawable/a/a/i$f;->c:Landroidx/vectordrawable/a/a/i$c;

    iget-object v2, p0, Landroidx/vectordrawable/a/a/i$f;->k:Landroidx/b/a;

    invoke-direct {v0, v1, v2}, Landroidx/vectordrawable/a/a/i$c;-><init>(Landroidx/vectordrawable/a/a/i$c;Landroidx/b/a;)V

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i$f;->c:Landroidx/vectordrawable/a/a/i$c;

    .line 1218
    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p1, Landroidx/vectordrawable/a/a/i$f;->l:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i$f;->l:Landroid/graphics/Path;

    .line 1219
    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p1, Landroidx/vectordrawable/a/a/i$f;->m:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i$f;->m:Landroid/graphics/Path;

    .line 1220
    iget v0, p1, Landroidx/vectordrawable/a/a/i$f;->d:F

    iput v0, p0, Landroidx/vectordrawable/a/a/i$f;->d:F

    .line 1221
    iget v0, p1, Landroidx/vectordrawable/a/a/i$f;->e:F

    iput v0, p0, Landroidx/vectordrawable/a/a/i$f;->e:F

    .line 1222
    iget v0, p1, Landroidx/vectordrawable/a/a/i$f;->f:F

    iput v0, p0, Landroidx/vectordrawable/a/a/i$f;->f:F

    .line 1223
    iget v0, p1, Landroidx/vectordrawable/a/a/i$f;->g:F

    iput v0, p0, Landroidx/vectordrawable/a/a/i$f;->g:F

    .line 1224
    iget v0, p1, Landroidx/vectordrawable/a/a/i$f;->q:I

    iput v0, p0, Landroidx/vectordrawable/a/a/i$f;->q:I

    .line 1225
    iget v0, p1, Landroidx/vectordrawable/a/a/i$f;->h:I

    iput v0, p0, Landroidx/vectordrawable/a/a/i$f;->h:I

    .line 1226
    iget-object v0, p1, Landroidx/vectordrawable/a/a/i$f;->i:Ljava/lang/String;

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i$f;->i:Ljava/lang/String;

    .line 1227
    iget-object v0, p1, Landroidx/vectordrawable/a/a/i$f;->i:Ljava/lang/String;

    if-eqz v0, :cond_67

    .line 1228
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i$f;->k:Landroidx/b/a;

    iget-object v1, p1, Landroidx/vectordrawable/a/a/i$f;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    :cond_67
    iget-object p1, p1, Landroidx/vectordrawable/a/a/i$f;->j:Ljava/lang/Boolean;

    iput-object p1, p0, Landroidx/vectordrawable/a/a/i$f;->j:Ljava/lang/Boolean;

    return-void
.end method

.method private a(Landroidx/vectordrawable/a/a/i$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .registers 23

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p6

    .line 1239
    iget-object v0, v8, Landroidx/vectordrawable/a/a/i$c;->a:Landroid/graphics/Matrix;

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1241
    iget-object v0, v8, Landroidx/vectordrawable/a/a/i$c;->a:Landroid/graphics/Matrix;

    iget-object v1, v8, Landroidx/vectordrawable/a/a/i$c;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 1244
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->save()I

    const/4 v11, 0x0

    move v12, v11

    .line 1247
    :goto_1b
    iget-object v0, v8, Landroidx/vectordrawable/a/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_21b

    .line 1248
    iget-object v0, v8, Landroidx/vectordrawable/a/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/vectordrawable/a/a/i$d;

    .line 1249
    instance-of v1, v0, Landroidx/vectordrawable/a/a/i$c;

    if-eqz v1, :cond_48

    .line 1250
    move-object v1, v0

    check-cast v1, Landroidx/vectordrawable/a/a/i$c;

    .line 1251
    iget-object v2, v8, Landroidx/vectordrawable/a/a/i$c;->a:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/vectordrawable/a/a/i$f;->a(Landroidx/vectordrawable/a/a/i$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    :cond_41
    move/from16 v1, p4

    move/from16 v3, p5

    move-object v5, v7

    goto/16 :goto_215

    .line 1253
    :cond_48
    instance-of v1, v0, Landroidx/vectordrawable/a/a/i$e;

    if-eqz v1, :cond_41

    .line 1254
    check-cast v0, Landroidx/vectordrawable/a/a/i$e;

    move/from16 v1, p4

    int-to-float v2, v1

    .line 2269
    iget v3, v7, Landroidx/vectordrawable/a/a/i$f;->f:F

    div-float/2addr v2, v3

    move/from16 v3, p5

    int-to-float v4, v3

    .line 2270
    iget v5, v7, Landroidx/vectordrawable/a/a/i$f;->g:F

    div-float/2addr v4, v5

    .line 2271
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 2272
    iget-object v6, v8, Landroidx/vectordrawable/a/a/i$c;->a:Landroid/graphics/Matrix;

    .line 2274
    iget-object v13, v7, Landroidx/vectordrawable/a/a/i$f;->o:Landroid/graphics/Matrix;

    invoke-virtual {v13, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 2275
    iget-object v13, v7, Landroidx/vectordrawable/a/a/i$f;->o:Landroid/graphics/Matrix;

    invoke-virtual {v13, v2, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v2, 0x4

    .line 2393
    new-array v2, v2, [F

    fill-array-data v2, :array_220

    .line 2394
    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 2395
    aget v4, v2, v11

    float-to-double v13, v4

    const/4 v4, 0x1

    aget v6, v2, v4

    move v15, v5

    float-to-double v4, v6

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    const/4 v5, 0x2

    .line 2396
    aget v6, v2, v5

    float-to-double v13, v6

    const/4 v6, 0x3

    aget v5, v2, v6

    float-to-double v6, v5

    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v5, v5

    .line 2397
    aget v6, v2, v11

    const/4 v7, 0x1

    aget v13, v2, v7

    const/4 v7, 0x2

    aget v7, v2, v7

    const/4 v14, 0x3

    aget v2, v2, v14

    mul-float/2addr v6, v2

    mul-float/2addr v13, v7

    sub-float/2addr v6, v13

    .line 2399
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    if-lez v5, :cond_ab

    .line 2403
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float v2, v5, v2

    goto :goto_ac

    :cond_ab
    move v2, v4

    :goto_ac
    cmpl-float v5, v2, v4

    if-eqz v5, :cond_213

    move-object/from16 v5, p0

    .line 2283
    iget-object v6, v5, Landroidx/vectordrawable/a/a/i$f;->l:Landroid/graphics/Path;

    invoke-virtual {v0, v6}, Landroidx/vectordrawable/a/a/i$e;->a(Landroid/graphics/Path;)V

    .line 2284
    iget-object v6, v5, Landroidx/vectordrawable/a/a/i$f;->l:Landroid/graphics/Path;

    .line 2286
    iget-object v7, v5, Landroidx/vectordrawable/a/a/i$f;->m:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 2288
    invoke-virtual {v0}, Landroidx/vectordrawable/a/a/i$e;->a()Z

    move-result v7

    if-eqz v7, :cond_e0

    .line 2289
    iget-object v2, v5, Landroidx/vectordrawable/a/a/i$f;->m:Landroid/graphics/Path;

    iget v0, v0, Landroidx/vectordrawable/a/a/i$e;->n:I

    if-nez v0, :cond_cd

    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_cf

    :cond_cd
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :goto_cf
    invoke-virtual {v2, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 2291
    iget-object v0, v5, Landroidx/vectordrawable/a/a/i$f;->m:Landroid/graphics/Path;

    iget-object v2, v5, Landroidx/vectordrawable/a/a/i$f;->o:Landroid/graphics/Matrix;

    invoke-virtual {v0, v6, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 2292
    iget-object v0, v5, Landroidx/vectordrawable/a/a/i$f;->m:Landroid/graphics/Path;

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto/16 :goto_215

    .line 2294
    :cond_e0
    check-cast v0, Landroidx/vectordrawable/a/a/i$b;

    .line 2295
    iget v7, v0, Landroidx/vectordrawable/a/a/i$b;->f:F

    cmpl-float v7, v7, v4

    const/high16 v13, 0x3f800000    # 1.0f

    if-nez v7, :cond_f0

    iget v7, v0, Landroidx/vectordrawable/a/a/i$b;->g:F

    cmpl-float v7, v7, v13

    if-eqz v7, :cond_134

    .line 2296
    :cond_f0
    iget v7, v0, Landroidx/vectordrawable/a/a/i$b;->f:F

    iget v14, v0, Landroidx/vectordrawable/a/a/i$b;->h:F

    add-float/2addr v7, v14

    rem-float/2addr v7, v13

    .line 2297
    iget v14, v0, Landroidx/vectordrawable/a/a/i$b;->g:F

    iget v4, v0, Landroidx/vectordrawable/a/a/i$b;->h:F

    add-float/2addr v14, v4

    rem-float/2addr v14, v13

    .line 2299
    iget-object v4, v5, Landroidx/vectordrawable/a/a/i$f;->p:Landroid/graphics/PathMeasure;

    if-nez v4, :cond_107

    .line 2300
    new-instance v4, Landroid/graphics/PathMeasure;

    invoke-direct {v4}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v4, v5, Landroidx/vectordrawable/a/a/i$f;->p:Landroid/graphics/PathMeasure;

    .line 2302
    :cond_107
    iget-object v4, v5, Landroidx/vectordrawable/a/a/i$f;->p:Landroid/graphics/PathMeasure;

    iget-object v13, v5, Landroidx/vectordrawable/a/a/i$f;->l:Landroid/graphics/Path;

    invoke-virtual {v4, v13, v11}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 2304
    iget-object v4, v5, Landroidx/vectordrawable/a/a/i$f;->p:Landroid/graphics/PathMeasure;

    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    mul-float/2addr v7, v4

    mul-float/2addr v14, v4

    .line 2307
    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    cmpl-float v13, v7, v14

    if-lez v13, :cond_12a

    .line 2309
    iget-object v13, v5, Landroidx/vectordrawable/a/a/i$f;->p:Landroid/graphics/PathMeasure;

    const/4 v11, 0x1

    invoke-virtual {v13, v7, v4, v6, v11}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 2310
    iget-object v4, v5, Landroidx/vectordrawable/a/a/i$f;->p:Landroid/graphics/PathMeasure;

    const/4 v13, 0x0

    invoke-virtual {v4, v13, v14, v6, v11}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto :goto_131

    :cond_12a
    const/4 v11, 0x1

    const/4 v13, 0x0

    .line 2312
    iget-object v4, v5, Landroidx/vectordrawable/a/a/i$f;->p:Landroid/graphics/PathMeasure;

    invoke-virtual {v4, v7, v14, v6, v11}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 2314
    :goto_131
    invoke-virtual {v6, v13, v13}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 2316
    :cond_134
    iget-object v4, v5, Landroidx/vectordrawable/a/a/i$f;->m:Landroid/graphics/Path;

    iget-object v7, v5, Landroidx/vectordrawable/a/a/i$f;->o:Landroid/graphics/Matrix;

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 2318
    iget-object v4, v0, Landroidx/vectordrawable/a/a/i$b;->c:Landroidx/core/content/a/b;

    invoke-virtual {v4}, Landroidx/core/content/a/b;->c()Z

    move-result v4

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/high16 v11, 0x437f0000    # 255.0f

    if-eqz v4, :cond_1a1

    .line 2319
    iget-object v4, v0, Landroidx/vectordrawable/a/a/i$b;->c:Landroidx/core/content/a/b;

    .line 2320
    iget-object v13, v5, Landroidx/vectordrawable/a/a/i$f;->b:Landroid/graphics/Paint;

    if-nez v13, :cond_15d

    .line 2321
    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v13, v5, Landroidx/vectordrawable/a/a/i$f;->b:Landroid/graphics/Paint;

    .line 2322
    iget-object v13, v5, Landroidx/vectordrawable/a/a/i$f;->b:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2325
    :cond_15d
    iget-object v13, v5, Landroidx/vectordrawable/a/a/i$f;->b:Landroid/graphics/Paint;

    .line 2326
    invoke-virtual {v4}, Landroidx/core/content/a/b;->a()Z

    move-result v14

    if-eqz v14, :cond_17a

    .line 4081
    iget-object v4, v4, Landroidx/core/content/a/b;->a:Landroid/graphics/Shader;

    .line 2328
    iget-object v14, v5, Landroidx/vectordrawable/a/a/i$f;->o:Landroid/graphics/Matrix;

    invoke-virtual {v4, v14}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 2329
    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 2330
    iget v4, v0, Landroidx/vectordrawable/a/a/i$b;->e:F

    mul-float/2addr v4, v11

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_18b

    .line 2332
    :cond_17a
    invoke-virtual {v13, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 2333
    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4086
    iget v4, v4, Landroidx/core/content/a/b;->b:I

    .line 2334
    iget v14, v0, Landroidx/vectordrawable/a/a/i$b;->e:F

    invoke-static {v4, v14}, Landroidx/vectordrawable/a/a/i;->a(IF)I

    move-result v4

    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2336
    :goto_18b
    invoke-virtual {v13, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2337
    iget-object v4, v5, Landroidx/vectordrawable/a/a/i$f;->m:Landroid/graphics/Path;

    iget v14, v0, Landroidx/vectordrawable/a/a/i$b;->n:I

    if-nez v14, :cond_197

    sget-object v14, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_199

    :cond_197
    sget-object v14, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :goto_199
    invoke-virtual {v4, v14}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 2339
    iget-object v4, v5, Landroidx/vectordrawable/a/a/i$f;->m:Landroid/graphics/Path;

    invoke-virtual {v9, v4, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2342
    :cond_1a1
    iget-object v4, v0, Landroidx/vectordrawable/a/a/i$b;->a:Landroidx/core/content/a/b;

    invoke-virtual {v4}, Landroidx/core/content/a/b;->c()Z

    move-result v4

    if-eqz v4, :cond_215

    .line 2343
    iget-object v4, v0, Landroidx/vectordrawable/a/a/i$b;->a:Landroidx/core/content/a/b;

    .line 2344
    iget-object v13, v5, Landroidx/vectordrawable/a/a/i$f;->a:Landroid/graphics/Paint;

    if-nez v13, :cond_1be

    .line 2345
    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v13, v5, Landroidx/vectordrawable/a/a/i$f;->a:Landroid/graphics/Paint;

    .line 2346
    iget-object v13, v5, Landroidx/vectordrawable/a/a/i$f;->a:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2349
    :cond_1be
    iget-object v13, v5, Landroidx/vectordrawable/a/a/i$f;->a:Landroid/graphics/Paint;

    .line 2350
    iget-object v14, v0, Landroidx/vectordrawable/a/a/i$b;->j:Landroid/graphics/Paint$Join;

    if-eqz v14, :cond_1c9

    .line 2351
    iget-object v14, v0, Landroidx/vectordrawable/a/a/i$b;->j:Landroid/graphics/Paint$Join;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 2354
    :cond_1c9
    iget-object v14, v0, Landroidx/vectordrawable/a/a/i$b;->i:Landroid/graphics/Paint$Cap;

    if-eqz v14, :cond_1d2

    .line 2355
    iget-object v14, v0, Landroidx/vectordrawable/a/a/i$b;->i:Landroid/graphics/Paint$Cap;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 2358
    :cond_1d2
    iget v14, v0, Landroidx/vectordrawable/a/a/i$b;->k:F

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 2359
    invoke-virtual {v4}, Landroidx/core/content/a/b;->a()Z

    move-result v14

    if-eqz v14, :cond_1f2

    .line 5081
    iget-object v4, v4, Landroidx/core/content/a/b;->a:Landroid/graphics/Shader;

    .line 2361
    iget-object v6, v5, Landroidx/vectordrawable/a/a/i$f;->o:Landroid/graphics/Matrix;

    invoke-virtual {v4, v6}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 2362
    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 2363
    iget v4, v0, Landroidx/vectordrawable/a/a/i$b;->d:F

    mul-float/2addr v4, v11

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_203

    .line 2365
    :cond_1f2
    invoke-virtual {v13, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 2366
    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5086
    iget v4, v4, Landroidx/core/content/a/b;->b:I

    .line 2367
    iget v6, v0, Landroidx/vectordrawable/a/a/i$b;->d:F

    invoke-static {v4, v6}, Landroidx/vectordrawable/a/a/i;->a(IF)I

    move-result v4

    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2370
    :goto_203
    invoke-virtual {v13, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    mul-float/2addr v2, v15

    .line 2372
    iget v0, v0, Landroidx/vectordrawable/a/a/i$b;->b:F

    mul-float/2addr v0, v2

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2373
    iget-object v0, v5, Landroidx/vectordrawable/a/a/i$f;->m:Landroid/graphics/Path;

    invoke-virtual {v9, v0, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_215

    :cond_213
    move-object/from16 v5, p0

    :cond_215
    :goto_215
    add-int/lit8 v12, v12, 0x1

    move-object v7, v5

    const/4 v11, 0x0

    goto/16 :goto_1b

    .line 1259
    :cond_21b
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->restore()V

    return-void

    nop

    :array_220
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;II)V
    .registers 11

    .line 1264
    iget-object v1, p0, Landroidx/vectordrawable/a/a/i$f;->c:Landroidx/vectordrawable/a/a/i$c;

    sget-object v2, Landroidx/vectordrawable/a/a/i$f;->n:Landroid/graphics/Matrix;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Landroidx/vectordrawable/a/a/i$f;->a(Landroidx/vectordrawable/a/a/i$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    return-void
.end method

.method public final a()Z
    .registers 2

    .line 1412
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i$f;->j:Ljava/lang/Boolean;

    if-nez v0, :cond_10

    .line 1413
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i$f;->c:Landroidx/vectordrawable/a/a/i$c;

    invoke-virtual {v0}, Landroidx/vectordrawable/a/a/i$c;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i$f;->j:Ljava/lang/Boolean;

    .line 1415
    :cond_10
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i$f;->j:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final getAlpha()F
    .registers 2

    .line 1213
    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/i$f;->getRootAlpha()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public final getRootAlpha()I
    .registers 1

    .line 1202
    iget p0, p0, Landroidx/vectordrawable/a/a/i$f;->h:I

    return p0
.end method

.method public final setAlpha(F)V
    .registers 3

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 1208
    invoke-virtual {p0, p1}, Landroidx/vectordrawable/a/a/i$f;->setRootAlpha(I)V

    return-void
.end method

.method public final setRootAlpha(I)V
    .registers 2

    .line 1198
    iput p1, p0, Landroidx/vectordrawable/a/a/i$f;->h:I

    return-void
.end method
