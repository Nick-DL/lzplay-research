.class public Lcom/a/a/d/a;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final c:[C


# instance fields
.field public a:Z

.field b:I

.field private final d:Ljava/io/Reader;

.field private final e:[C

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:J

.field private k:I

.field private l:Ljava/lang/String;

.field private m:[I

.field private n:I

.field private o:[Ljava/lang/String;

.field private p:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ")]}\'\n"

    .line 192
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/a/a/d/a;->c:[C

    .line 1594
    new-instance v0, Lcom/a/a/d/a$1;

    invoke-direct {v0}, Lcom/a/a/d/a$1;-><init>()V

    sput-object v0, Lcom/a/a/b/f;->a:Lcom/a/a/b/f;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 6

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 230
    iput-boolean v0, p0, Lcom/a/a/d/a;->a:Z

    const/16 v1, 0x400

    .line 238
    new-array v1, v1, [C

    iput-object v1, p0, Lcom/a/a/d/a;->e:[C

    .line 239
    iput v0, p0, Lcom/a/a/d/a;->f:I

    .line 240
    iput v0, p0, Lcom/a/a/d/a;->g:I

    .line 242
    iput v0, p0, Lcom/a/a/d/a;->h:I

    .line 243
    iput v0, p0, Lcom/a/a/d/a;->i:I

    .line 245
    iput v0, p0, Lcom/a/a/d/a;->b:I

    const/16 v1, 0x20

    .line 269
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/a/a/d/a;->m:[I

    .line 270
    iput v0, p0, Lcom/a/a/d/a;->n:I

    .line 272
    iget-object v0, p0, Lcom/a/a/d/a;->m:[I

    iget v2, p0, Lcom/a/a/d/a;->n:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/a/a/d/a;->n:I

    const/4 v3, 0x6

    aput v3, v0, v2

    .line 283
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/d/a;->o:[Ljava/lang/String;

    .line 284
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/a/a/d/a;->p:[I

    .line 293
    iput-object p1, p0, Lcom/a/a/d/a;->d:Ljava/io/Reader;

    return-void
.end method

.method private a(Z)I
    .registers 9

    .line 1327
    iget-object v0, p0, Lcom/a/a/d/a;->e:[C

    .line 1328
    iget v1, p0, Lcom/a/a/d/a;->f:I

    .line 1329
    iget v2, p0, Lcom/a/a/d/a;->g:I

    :goto_6
    const/4 v3, 0x1

    if-ne v1, v2, :cond_32

    .line 1332
    iput v1, p0, Lcom/a/a/d/a;->f:I

    .line 1333
    invoke-direct {p0, v3}, Lcom/a/a/d/a;->b(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1336
    iget v1, p0, Lcom/a/a/d/a;->f:I

    .line 1337
    iget v2, p0, Lcom/a/a/d/a;->g:I

    goto :goto_32

    :cond_16
    if-nez p1, :cond_1a

    const/4 p0, -0x1

    return p0

    .line 1401
    :cond_1a
    new-instance p1, Ljava/io/EOFException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "End of input"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/a/d/a;->r()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_32
    :goto_32
    add-int/lit8 v4, v1, 0x1

    .line 1340
    aget-char v1, v0, v1

    const/16 v5, 0xa

    if-ne v1, v5, :cond_43

    .line 1342
    iget v1, p0, Lcom/a/a/d/a;->h:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/a/a/d/a;->h:I

    .line 1343
    iput v4, p0, Lcom/a/a/d/a;->i:I

    goto/16 :goto_b4

    :cond_43
    const/16 v5, 0x20

    if-eq v1, v5, :cond_b4

    const/16 v5, 0xd

    if-eq v1, v5, :cond_b4

    const/16 v5, 0x9

    if-eq v1, v5, :cond_b4

    const/16 v5, 0x2f

    if-ne v1, v5, :cond_9f

    .line 1350
    iput v4, p0, Lcom/a/a/d/a;->f:I

    const/4 v6, 0x2

    if-ne v4, v2, :cond_69

    .line 1352
    iget v2, p0, Lcom/a/a/d/a;->f:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/a/a/d/a;->f:I

    .line 1353
    invoke-direct {p0, v6}, Lcom/a/a/d/a;->b(I)Z

    move-result v2

    .line 1354
    iget v4, p0, Lcom/a/a/d/a;->f:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/a/a/d/a;->f:I

    if-nez v2, :cond_69

    return v1

    .line 1360
    :cond_69
    invoke-direct {p0}, Lcom/a/a/d/a;->u()V

    .line 1361
    iget v2, p0, Lcom/a/a/d/a;->f:I

    aget-char v2, v0, v2

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_84

    if-eq v2, v5, :cond_77

    return v1

    .line 1375
    :cond_77
    iget v1, p0, Lcom/a/a/d/a;->f:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/a/a/d/a;->f:I

    .line 1376
    invoke-direct {p0}, Lcom/a/a/d/a;->v()V

    .line 1377
    iget v1, p0, Lcom/a/a/d/a;->f:I

    .line 1378
    iget v2, p0, Lcom/a/a/d/a;->g:I

    goto :goto_6

    .line 1365
    :cond_84
    iget v1, p0, Lcom/a/a/d/a;->f:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/a/a/d/a;->f:I

    const-string v1, "*/"

    .line 1366
    invoke-direct {p0, v1}, Lcom/a/a/d/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 1369
    iget v1, p0, Lcom/a/a/d/a;->f:I

    add-int/2addr v1, v6

    .line 1370
    iget v2, p0, Lcom/a/a/d/a;->g:I

    goto/16 :goto_6

    :cond_98
    const-string p1, "Unterminated comment"

    .line 1367
    invoke-direct {p0, p1}, Lcom/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_9f
    const/16 v2, 0x23

    if-ne v1, v2, :cond_b1

    .line 1385
    iput v4, p0, Lcom/a/a/d/a;->f:I

    .line 1391
    invoke-direct {p0}, Lcom/a/a/d/a;->u()V

    .line 1392
    invoke-direct {p0}, Lcom/a/a/d/a;->v()V

    .line 1393
    iget v1, p0, Lcom/a/a/d/a;->f:I

    .line 1394
    iget v2, p0, Lcom/a/a/d/a;->g:I

    goto/16 :goto_6

    .line 1396
    :cond_b1
    iput v4, p0, Lcom/a/a/d/a;->f:I

    return v1

    :cond_b4
    :goto_b4
    move v1, v4

    goto/16 :goto_6
.end method

.method private a(I)V
    .registers 8

    .line 1264
    iget v0, p0, Lcom/a/a/d/a;->n:I

    iget-object v1, p0, Lcom/a/a/d/a;->m:[I

    array-length v1, v1

    if-ne v0, v1, :cond_35

    .line 1265
    iget v0, p0, Lcom/a/a/d/a;->n:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 1266
    iget v1, p0, Lcom/a/a/d/a;->n:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 1267
    iget v2, p0, Lcom/a/a/d/a;->n:I

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 1268
    iget-object v3, p0, Lcom/a/a/d/a;->m:[I

    iget v4, p0, Lcom/a/a/d/a;->n:I

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1269
    iget-object v3, p0, Lcom/a/a/d/a;->p:[I

    iget v4, p0, Lcom/a/a/d/a;->n:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1270
    iget-object v3, p0, Lcom/a/a/d/a;->o:[Ljava/lang/String;

    iget v4, p0, Lcom/a/a/d/a;->n:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1271
    iput-object v0, p0, Lcom/a/a/d/a;->m:[I

    .line 1272
    iput-object v1, p0, Lcom/a/a/d/a;->p:[I

    .line 1273
    iput-object v2, p0, Lcom/a/a/d/a;->o:[Ljava/lang/String;

    .line 1275
    :cond_35
    iget-object v0, p0, Lcom/a/a/d/a;->m:[I

    iget v1, p0, Lcom/a/a/d/a;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/a/d/a;->n:I

    aput p1, v0, v1

    return-void
.end method

.method private a(C)Z
    .registers 2

    sparse-switch p1, :sswitch_data_a

    const/4 p0, 0x1

    return p0

    .line 751
    :sswitch_5
    invoke-direct {p0}, Lcom/a/a/d/a;->u()V

    :sswitch_8
    const/4 p0, 0x0

    return p0

    :sswitch_data_a
    .sparse-switch
        0x9 -> :sswitch_8
        0xa -> :sswitch_8
        0xc -> :sswitch_8
        0xd -> :sswitch_8
        0x20 -> :sswitch_8
        0x23 -> :sswitch_5
        0x2c -> :sswitch_8
        0x2f -> :sswitch_5
        0x3a -> :sswitch_8
        0x3b -> :sswitch_5
        0x3d -> :sswitch_5
        0x5b -> :sswitch_8
        0x5c -> :sswitch_5
        0x5d -> :sswitch_8
        0x7b -> :sswitch_8
        0x7d -> :sswitch_8
    .end sparse-switch
.end method

.method private a(Ljava/lang/String;)Z
    .registers 7

    .line 1435
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1437
    :goto_4
    iget v1, p0, Lcom/a/a/d/a;->f:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/a/a/d/a;->g:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_14

    invoke-direct {p0, v0}, Lcom/a/a/d/a;->b(I)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_14

    :cond_13
    return v3

    .line 1438
    :cond_14
    :goto_14
    iget-object v1, p0, Lcom/a/a/d/a;->e:[C

    iget v2, p0, Lcom/a/a/d/a;->f:I

    aget-char v1, v1, v2

    const/16 v2, 0xa

    const/4 v4, 0x1

    if-ne v1, v2, :cond_2a

    .line 1439
    iget v1, p0, Lcom/a/a/d/a;->h:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/a/a/d/a;->h:I

    .line 1440
    iget v1, p0, Lcom/a/a/d/a;->f:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/a/a/d/a;->i:I

    goto :goto_3c

    :cond_2a
    :goto_2a
    if-ge v3, v0, :cond_42

    .line 1444
    iget-object v1, p0, Lcom/a/a/d/a;->e:[C

    iget v2, p0, Lcom/a/a/d/a;->f:I

    add-int/2addr v2, v3

    aget-char v1, v1, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_3c

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 1437
    :cond_3c
    :goto_3c
    iget v1, p0, Lcom/a/a/d/a;->f:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/a/a/d/a;->f:I

    goto :goto_4

    :cond_42
    return v4
.end method

.method private b(Ljava/lang/String;)Ljava/io/IOException;
    .registers 4

    .line 1568
    new-instance v0, Lcom/a/a/d/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/a/d/a;->r()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/a/a/d/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(C)Ljava/lang/String;
    .registers 11

    .line 987
    iget-object v0, p0, Lcom/a/a/d/a;->e:[C

    const/4 v1, 0x0

    .line 990
    :goto_3
    iget v2, p0, Lcom/a/a/d/a;->f:I

    .line 991
    iget v3, p0, Lcom/a/a/d/a;->g:I

    move v4, v2

    :goto_8
    const/16 v5, 0x10

    const/4 v6, 0x1

    if-ge v4, v3, :cond_57

    add-int/lit8 v7, v4, 0x1

    .line 995
    aget-char v4, v0, v4

    if-ne v4, p1, :cond_27

    .line 998
    iput v7, p0, Lcom/a/a/d/a;->f:I

    sub-int/2addr v7, v2

    sub-int/2addr v7, v6

    if-nez v1, :cond_1f

    .line 1001
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v7}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    .line 1003
    :cond_1f
    invoke-virtual {v1, v0, v2, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1004
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_27
    const/16 v8, 0x5c

    if-ne v4, v8, :cond_4a

    .line 1007
    iput v7, p0, Lcom/a/a/d/a;->f:I

    sub-int/2addr v7, v2

    sub-int/2addr v7, v6

    if-nez v1, :cond_3f

    add-int/lit8 v1, v7, 0x1

    mul-int/lit8 v1, v1, 0x2

    .line 1011
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v3

    .line 1013
    :cond_3f
    invoke-virtual {v1, v0, v2, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1014
    invoke-direct {p0}, Lcom/a/a/d/a;->w()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4a
    const/16 v5, 0xa

    if-ne v4, v5, :cond_55

    .line 1019
    iget v4, p0, Lcom/a/a/d/a;->h:I

    add-int/2addr v4, v6

    iput v4, p0, Lcom/a/a/d/a;->h:I

    .line 1020
    iput v7, p0, Lcom/a/a/d/a;->i:I

    :cond_55
    move v4, v7

    goto :goto_8

    :cond_57
    if-nez v1, :cond_67

    sub-int v1, v4, v2

    mul-int/lit8 v1, v1, 0x2

    .line 1026
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v3

    :cond_67
    sub-int v3, v4, v2

    .line 1028
    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1029
    iput v4, p0, Lcom/a/a/d/a;->f:I

    .line 1030
    invoke-direct {p0, v6}, Lcom/a/a/d/a;->b(I)Z

    move-result v2

    if-eqz v2, :cond_75

    goto :goto_3

    :cond_75
    const-string p1, "Unterminated string"

    .line 1031
    invoke-direct {p0, p1}, Lcom/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method private b(I)Z
    .registers 8

    .line 1284
    iget-object v0, p0, Lcom/a/a/d/a;->e:[C

    .line 1285
    iget v1, p0, Lcom/a/a/d/a;->i:I

    iget v2, p0, Lcom/a/a/d/a;->f:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/a/a/d/a;->i:I

    .line 1286
    iget v1, p0, Lcom/a/a/d/a;->g:I

    iget v2, p0, Lcom/a/a/d/a;->f:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1f

    .line 1287
    iget v1, p0, Lcom/a/a/d/a;->g:I

    iget v2, p0, Lcom/a/a/d/a;->f:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/a/a/d/a;->g:I

    .line 1288
    iget v1, p0, Lcom/a/a/d/a;->f:I

    iget v2, p0, Lcom/a/a/d/a;->g:I

    invoke-static {v0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_21

    .line 1290
    :cond_1f
    iput v3, p0, Lcom/a/a/d/a;->g:I

    .line 1293
    :goto_21
    iput v3, p0, Lcom/a/a/d/a;->f:I

    .line 1295
    :cond_23
    iget-object v1, p0, Lcom/a/a/d/a;->d:Ljava/io/Reader;

    iget v2, p0, Lcom/a/a/d/a;->g:I

    array-length v4, v0

    iget v5, p0, Lcom/a/a/d/a;->g:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5c

    .line 1296
    iget v2, p0, Lcom/a/a/d/a;->g:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/a/a/d/a;->g:I

    .line 1299
    iget v1, p0, Lcom/a/a/d/a;->h:I

    const/4 v2, 0x1

    if-nez v1, :cond_57

    iget v1, p0, Lcom/a/a/d/a;->i:I

    if-nez v1, :cond_57

    iget v1, p0, Lcom/a/a/d/a;->g:I

    if-lez v1, :cond_57

    aget-char v1, v0, v3

    const v4, 0xfeff

    if-ne v1, v4, :cond_57

    .line 1300
    iget v1, p0, Lcom/a/a/d/a;->f:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/a/a/d/a;->f:I

    .line 1301
    iget v1, p0, Lcom/a/a/d/a;->i:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/a/a/d/a;->i:I

    add-int/lit8 p1, p1, 0x1

    .line 1305
    :cond_57
    iget v1, p0, Lcom/a/a/d/a;->g:I

    if-lt v1, p1, :cond_23

    return v2

    :cond_5c
    return v3
.end method

.method private c(C)V
    .registers 8

    .line 1097
    iget-object v0, p0, Lcom/a/a/d/a;->e:[C

    .line 1099
    :goto_2
    iget v1, p0, Lcom/a/a/d/a;->f:I

    .line 1100
    iget v2, p0, Lcom/a/a/d/a;->g:I

    :goto_6
    const/4 v3, 0x1

    if-ge v1, v2, :cond_29

    add-int/lit8 v4, v1, 0x1

    .line 1103
    aget-char v1, v0, v1

    if-ne v1, p1, :cond_12

    .line 1105
    iput v4, p0, Lcom/a/a/d/a;->f:I

    return-void

    :cond_12
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_1c

    .line 1108
    iput v4, p0, Lcom/a/a/d/a;->f:I

    .line 1109
    invoke-direct {p0}, Lcom/a/a/d/a;->w()C

    goto :goto_2

    :cond_1c
    const/16 v5, 0xa

    if-ne v1, v5, :cond_27

    .line 1113
    iget v1, p0, Lcom/a/a/d/a;->h:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/a/a/d/a;->h:I

    .line 1114
    iput v4, p0, Lcom/a/a/d/a;->i:I

    :cond_27
    move v1, v4

    goto :goto_6

    .line 1117
    :cond_29
    iput v1, p0, Lcom/a/a/d/a;->f:I

    .line 1118
    invoke-direct {p0, v3}, Lcom/a/a/d/a;->b(I)Z

    move-result v1

    if-eqz v1, :cond_32

    goto :goto_2

    :cond_32
    const-string p1, "Unterminated string"

    .line 1119
    invoke-direct {p0, p1}, Lcom/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method private g()I
    .registers 9

    .line 599
    iget-object v0, p0, Lcom/a/a/d/a;->e:[C

    iget v1, p0, Lcom/a/a/d/a;->f:I

    aget-char v0, v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x74

    if-eq v0, v2, :cond_2f

    const/16 v2, 0x54

    if-ne v0, v2, :cond_10

    goto :goto_2f

    :cond_10
    const/16 v2, 0x66

    if-eq v0, v2, :cond_29

    const/16 v2, 0x46

    if-ne v0, v2, :cond_19

    goto :goto_29

    :cond_19
    const/16 v2, 0x6e

    if-eq v0, v2, :cond_23

    const/16 v2, 0x4e

    if-ne v0, v2, :cond_22

    goto :goto_23

    :cond_22
    return v1

    :cond_23
    :goto_23
    const-string v0, "null"

    const-string v2, "NULL"

    const/4 v3, 0x7

    goto :goto_34

    :cond_29
    :goto_29
    const-string v0, "false"

    const-string v2, "FALSE"

    const/4 v3, 0x6

    goto :goto_34

    :cond_2f
    :goto_2f
    const-string v0, "true"

    const-string v2, "TRUE"

    const/4 v3, 0x5

    .line 620
    :goto_34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    :goto_39
    if-ge v5, v4, :cond_62

    .line 622
    iget v6, p0, Lcom/a/a/d/a;->f:I

    add-int/2addr v6, v5

    iget v7, p0, Lcom/a/a/d/a;->g:I

    if-lt v6, v7, :cond_4b

    add-int/lit8 v6, v5, 0x1

    invoke-direct {p0, v6}, Lcom/a/a/d/a;->b(I)Z

    move-result v6

    if-nez v6, :cond_4b

    return v1

    .line 625
    :cond_4b
    iget-object v6, p0, Lcom/a/a/d/a;->e:[C

    iget v7, p0, Lcom/a/a/d/a;->f:I

    add-int/2addr v7, v5

    aget-char v6, v6, v7

    .line 626
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_5f

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_5f

    return v1

    :cond_5f
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    .line 631
    :cond_62
    iget v0, p0, Lcom/a/a/d/a;->f:I

    add-int/2addr v0, v4

    iget v2, p0, Lcom/a/a/d/a;->g:I

    if-lt v0, v2, :cond_71

    add-int/lit8 v0, v4, 0x1

    invoke-direct {p0, v0}, Lcom/a/a/d/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_7f

    :cond_71
    iget-object v0, p0, Lcom/a/a/d/a;->e:[C

    iget v2, p0, Lcom/a/a/d/a;->f:I

    add-int/2addr v2, v4

    aget-char v0, v0, v2

    .line 632
    invoke-direct {p0, v0}, Lcom/a/a/d/a;->a(C)Z

    move-result v0

    if-eqz v0, :cond_7f

    return v1

    .line 637
    :cond_7f
    iget v0, p0, Lcom/a/a/d/a;->f:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/a/a/d/a;->f:I

    .line 638
    iput v3, p0, Lcom/a/a/d/a;->b:I

    return v3
.end method

.method private s()I
    .registers 19

    move-object/from16 v0, p0

    .line 643
    iget-object v1, v0, Lcom/a/a/d/a;->e:[C

    .line 644
    iget v2, v0, Lcom/a/a/d/a;->f:I

    .line 645
    iget v3, v0, Lcom/a/a/d/a;->g:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v8, v3

    move v10, v6

    move v3, v7

    move v9, v3

    move v13, v9

    const-wide/16 v11, 0x0

    :goto_11
    add-int v14, v2, v3

    const/4 v15, 0x2

    if-ne v14, v8, :cond_26

    .line 657
    array-length v2, v1

    if-ne v3, v2, :cond_1a

    return v7

    :cond_1a
    add-int/lit8 v2, v3, 0x1

    .line 662
    invoke-direct {v0, v2}, Lcom/a/a/d/a;->b(I)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 665
    iget v2, v0, Lcom/a/a/d/a;->f:I

    .line 666
    iget v8, v0, Lcom/a/a/d/a;->g:I

    :cond_26
    add-int v14, v2, v3

    .line 669
    aget-char v14, v1, v14

    const/16 v7, 0x2b

    const/4 v4, 0x3

    const/4 v5, 0x5

    if-eq v14, v7, :cond_e7

    const/16 v7, 0x45

    if-eq v14, v7, :cond_db

    const/16 v7, 0x65

    if-eq v14, v7, :cond_db

    packed-switch v14, :pswitch_data_f4

    const/16 v7, 0x30

    if-lt v14, v7, :cond_89

    const/16 v7, 0x39

    if-le v14, v7, :cond_44

    goto :goto_89

    :cond_44
    if-eq v9, v6, :cond_7e

    if-nez v9, :cond_49

    goto :goto_7e

    :cond_49
    if-ne v9, v15, :cond_71

    const-wide/16 v16, 0x0

    cmp-long v4, v11, v16

    if-nez v4, :cond_53

    const/4 v4, 0x0

    return v4

    :cond_53
    const-wide/16 v4, 0xa

    mul-long/2addr v4, v11

    add-int/lit8 v14, v14, -0x30

    int-to-long v14, v14

    sub-long/2addr v4, v14

    const-wide v14, -0xcccccccccccccccL

    cmp-long v7, v11, v14

    if-gtz v7, :cond_6c

    if-nez v7, :cond_6a

    cmp-long v7, v4, v11

    if-gez v7, :cond_6a

    goto :goto_6c

    :cond_6a
    const/4 v7, 0x0

    goto :goto_6d

    :cond_6c
    :goto_6c
    move v7, v6

    :goto_6d
    and-int/2addr v7, v10

    move-wide v11, v4

    move v10, v7

    goto :goto_84

    :cond_71
    if-ne v9, v4, :cond_76

    const/4 v7, 0x0

    const/4 v9, 0x4

    goto :goto_85

    :cond_76
    if-eq v9, v5, :cond_7b

    const/4 v4, 0x6

    if-ne v9, v4, :cond_84

    :cond_7b
    const/4 v7, 0x0

    const/4 v9, 0x7

    goto :goto_85

    :cond_7e
    :goto_7e
    add-int/lit8 v14, v14, -0x30

    neg-int v4, v14

    int-to-long v4, v4

    move-wide v11, v4

    move v9, v15

    :cond_84
    :goto_84
    const/4 v7, 0x0

    :goto_85
    const-wide/16 v16, 0x0

    goto/16 :goto_ee

    .line 706
    :cond_89
    :goto_89
    invoke-direct {v0, v14}, Lcom/a/a/d/a;->a(C)Z

    move-result v1

    if-eqz v1, :cond_91

    const/4 v1, 0x0

    return v1

    :cond_91
    if-ne v9, v15, :cond_b5

    if-eqz v10, :cond_b5

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v1, v11, v1

    if-nez v1, :cond_9d

    if-eqz v13, :cond_b5

    :cond_9d
    const-wide/16 v16, 0x0

    cmp-long v1, v11, v16

    if-nez v1, :cond_a5

    if-nez v13, :cond_b5

    :cond_a5
    if-eqz v13, :cond_a8

    goto :goto_a9

    :cond_a8
    neg-long v11, v11

    .line 732
    :goto_a9
    iput-wide v11, v0, Lcom/a/a/d/a;->j:J

    .line 733
    iget v1, v0, Lcom/a/a/d/a;->f:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/a/a/d/a;->f:I

    const/16 v1, 0xf

    .line 734
    iput v1, v0, Lcom/a/a/d/a;->b:I

    return v1

    :cond_b5
    if-eq v9, v15, :cond_c0

    const/4 v1, 0x4

    if-eq v9, v1, :cond_c0

    const/4 v1, 0x7

    if-ne v9, v1, :cond_be

    goto :goto_c0

    :cond_be
    const/4 v7, 0x0

    return v7

    .line 737
    :cond_c0
    :goto_c0
    iput v3, v0, Lcom/a/a/d/a;->k:I

    const/16 v1, 0x10

    .line 738
    iput v1, v0, Lcom/a/a/d/a;->b:I

    return v1

    :pswitch_c7
    const/4 v7, 0x0

    const-wide/16 v16, 0x0

    if-ne v9, v15, :cond_cd

    goto :goto_ed

    :cond_cd
    return v7

    :pswitch_ce
    const/4 v4, 0x6

    const/4 v7, 0x0

    const-wide/16 v16, 0x0

    if-nez v9, :cond_d7

    move v9, v6

    move v13, v9

    goto :goto_ee

    :cond_d7
    if-ne v9, v5, :cond_da

    goto :goto_ed

    :cond_da
    return v7

    :cond_db
    const/4 v7, 0x0

    const-wide/16 v16, 0x0

    if-eq v9, v15, :cond_e5

    const/4 v4, 0x4

    if-ne v9, v4, :cond_e4

    goto :goto_e5

    :cond_e4
    return v7

    :cond_e5
    :goto_e5
    move v9, v5

    goto :goto_ee

    :cond_e7
    const/4 v4, 0x6

    const/4 v7, 0x0

    const-wide/16 v16, 0x0

    if-ne v9, v5, :cond_f2

    :goto_ed
    move v9, v4

    :goto_ee
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_11

    :cond_f2
    return v7

    nop

    :pswitch_data_f4
    .packed-switch 0x2d
        :pswitch_ce
        :pswitch_c7
    .end packed-switch
.end method

.method private t()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_3
    move v1, v0

    .line 1046
    :goto_4
    iget v3, p0, Lcom/a/a/d/a;->f:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/a/a/d/a;->g:I

    if-ge v3, v4, :cond_1c

    .line 1047
    iget-object v3, p0, Lcom/a/a/d/a;->e:[C

    iget v4, p0, Lcom/a/a/d/a;->f:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_6a

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1053
    :sswitch_18
    invoke-direct {p0}, Lcom/a/a/d/a;->u()V

    goto :goto_2a

    .line 1070
    :cond_1c
    iget-object v3, p0, Lcom/a/a/d/a;->e:[C

    array-length v3, v3

    if-ge v1, v3, :cond_2c

    add-int/lit8 v3, v1, 0x1

    .line 1071
    invoke-direct {p0, v3}, Lcom/a/a/d/a;->b(I)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_4

    :cond_2a
    :goto_2a
    :sswitch_2a
    move v0, v1

    goto :goto_4c

    :cond_2c
    if-nez v2, :cond_39

    .line 1080
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1082
    :cond_39
    iget-object v3, p0, Lcom/a/a/d/a;->e:[C

    iget v4, p0, Lcom/a/a/d/a;->f:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1083
    iget v3, p0, Lcom/a/a/d/a;->f:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/a/a/d/a;->f:I

    const/4 v1, 0x1

    .line 1085
    invoke-direct {p0, v1}, Lcom/a/a/d/a;->b(I)Z

    move-result v1

    if-nez v1, :cond_3

    :goto_4c
    if-nez v2, :cond_58

    .line 1090
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/a/a/d/a;->e:[C

    iget v3, p0, Lcom/a/a/d/a;->f:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    goto :goto_63

    :cond_58
    iget-object v1, p0, Lcom/a/a/d/a;->e:[C

    iget v3, p0, Lcom/a/a/d/a;->f:I

    invoke-virtual {v2, v1, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1091
    :goto_63
    iget v2, p0, Lcom/a/a/d/a;->f:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/a/a/d/a;->f:I

    return-object v1

    nop

    :sswitch_data_6a
    .sparse-switch
        0x9 -> :sswitch_2a
        0xa -> :sswitch_2a
        0xc -> :sswitch_2a
        0xd -> :sswitch_2a
        0x20 -> :sswitch_2a
        0x23 -> :sswitch_18
        0x2c -> :sswitch_2a
        0x2f -> :sswitch_18
        0x3a -> :sswitch_2a
        0x3b -> :sswitch_18
        0x3d -> :sswitch_18
        0x5b -> :sswitch_2a
        0x5c -> :sswitch_18
        0x5d -> :sswitch_2a
        0x7b -> :sswitch_2a
        0x7d -> :sswitch_2a
    .end sparse-switch
.end method

.method private u()V
    .registers 2

    .line 1408
    iget-boolean v0, p0, Lcom/a/a/d/a;->a:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    .line 1409
    invoke-direct {p0, v0}, Lcom/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method private v()V
    .registers 5

    .line 1419
    :cond_0
    iget v0, p0, Lcom/a/a/d/a;->f:I

    iget v1, p0, Lcom/a/a/d/a;->g:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_d

    invoke-direct {p0, v2}, Lcom/a/a/d/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1420
    :cond_d
    iget-object v0, p0, Lcom/a/a/d/a;->e:[C

    iget v1, p0, Lcom/a/a/d/a;->f:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/a/a/d/a;->f:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_25

    .line 1422
    iget v0, p0, Lcom/a/a/d/a;->h:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/a/a/d/a;->h:I

    .line 1423
    iget v0, p0, Lcom/a/a/d/a;->f:I

    iput v0, p0, Lcom/a/a/d/a;->i:I

    return-void

    :cond_25
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    :cond_29
    return-void
.end method

.method private w()C
    .registers 9

    .line 1504
    iget v0, p0, Lcom/a/a/d/a;->f:I

    iget v1, p0, Lcom/a/a/d/a;->g:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_15

    invoke-direct {p0, v2}, Lcom/a/a/d/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_15

    :cond_e
    const-string v0, "Unterminated escape sequence"

    .line 1505
    invoke-direct {p0, v0}, Lcom/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 1508
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/a/a/d/a;->e:[C

    iget v1, p0, Lcom/a/a/d/a;->f:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/a/a/d/a;->f:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_ca

    const/16 v2, 0x22

    if-eq v0, v2, :cond_d3

    const/16 v2, 0x27

    if-eq v0, v2, :cond_d3

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_d3

    const/16 v2, 0x5c

    if-eq v0, v2, :cond_d3

    const/16 v2, 0x62

    if-eq v0, v2, :cond_c7

    const/16 v2, 0x66

    if-eq v0, v2, :cond_c4

    const/16 v3, 0x6e

    if-eq v0, v3, :cond_c3

    const/16 v3, 0x72

    if-eq v0, v3, :cond_c0

    packed-switch v0, :pswitch_data_d4

    const-string v0, "Invalid escape sequence"

    .line 1559
    invoke-direct {p0, v0}, Lcom/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 1511
    :pswitch_4d
    iget v0, p0, Lcom/a/a/d/a;->f:I

    const/4 v3, 0x4

    add-int/2addr v0, v3

    iget v4, p0, Lcom/a/a/d/a;->g:I

    if-le v0, v4, :cond_63

    invoke-direct {p0, v3}, Lcom/a/a/d/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_5c

    goto :goto_63

    :cond_5c
    const-string v0, "Unterminated escape sequence"

    .line 1512
    invoke-direct {p0, v0}, Lcom/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_63
    :goto_63
    const/4 v0, 0x0

    .line 1516
    iget v4, p0, Lcom/a/a/d/a;->f:I

    add-int/lit8 v5, v4, 0x4

    :goto_68
    if-ge v4, v5, :cond_b7

    .line 1517
    iget-object v6, p0, Lcom/a/a/d/a;->e:[C

    aget-char v6, v6, v4

    shl-int/lit8 v0, v0, 0x4

    int-to-char v0, v0

    const/16 v7, 0x30

    if-lt v6, v7, :cond_7e

    const/16 v7, 0x39

    if-gt v6, v7, :cond_7e

    add-int/lit8 v6, v6, -0x30

    add-int/2addr v0, v6

    int-to-char v0, v0

    goto :goto_97

    :cond_7e
    const/16 v7, 0x61

    if-lt v6, v7, :cond_8a

    if-gt v6, v2, :cond_8a

    add-int/lit8 v6, v6, -0x61

    add-int/2addr v6, v1

    add-int/2addr v0, v6

    int-to-char v0, v0

    goto :goto_97

    :cond_8a
    const/16 v7, 0x41

    if-lt v6, v7, :cond_9a

    const/16 v7, 0x46

    if-gt v6, v7, :cond_9a

    add-int/lit8 v6, v6, -0x41

    add-int/2addr v6, v1

    add-int/2addr v0, v6

    int-to-char v0, v0

    :goto_97
    add-int/lit8 v4, v4, 0x1

    goto :goto_68

    .line 1526
    :cond_9a
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\\u"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/a/a/d/a;->e:[C

    iget p0, p0, Lcom/a/a/d/a;->f:I

    invoke-direct {v2, v4, p0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1529
    :cond_b7
    iget v1, p0, Lcom/a/a/d/a;->f:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/a/a/d/a;->f:I

    return v0

    :pswitch_bd
    const/16 p0, 0x9

    return p0

    :cond_c0
    const/16 p0, 0xd

    return p0

    :cond_c3
    return v1

    :cond_c4
    const/16 p0, 0xc

    return p0

    :cond_c7
    const/16 p0, 0x8

    return p0

    .line 1548
    :cond_ca
    iget v1, p0, Lcom/a/a/d/a;->h:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/a/a/d/a;->h:I

    .line 1549
    iget v1, p0, Lcom/a/a/d/a;->f:I

    iput v1, p0, Lcom/a/a/d/a;->i:I

    :cond_d3
    return v0

    :pswitch_data_d4
    .packed-switch 0x74
        :pswitch_bd
        :pswitch_4d
    .end packed-switch
.end method

.method private x()V
    .registers 4

    const/4 v0, 0x1

    .line 1576
    invoke-direct {p0, v0}, Lcom/a/a/d/a;->a(Z)I

    .line 1577
    iget v1, p0, Lcom/a/a/d/a;->f:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/a/a/d/a;->f:I

    .line 1579
    iget v0, p0, Lcom/a/a/d/a;->f:I

    sget-object v1, Lcom/a/a/d/a;->c:[C

    array-length v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/a/a/d/a;->g:I

    if-le v0, v1, :cond_1d

    sget-object v0, Lcom/a/a/d/a;->c:[C

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/a/a/d/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_1d

    return-void

    :cond_1d
    const/4 v0, 0x0

    .line 1583
    :goto_1e
    sget-object v1, Lcom/a/a/d/a;->c:[C

    array-length v1, v1

    if-ge v0, v1, :cond_34

    .line 1584
    iget-object v1, p0, Lcom/a/a/d/a;->e:[C

    iget v2, p0, Lcom/a/a/d/a;->f:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sget-object v2, Lcom/a/a/d/a;->c:[C

    aget-char v2, v2, v0

    if-eq v1, v2, :cond_31

    return-void

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 1590
    :cond_34
    iget v0, p0, Lcom/a/a/d/a;->f:I

    sget-object v1, Lcom/a/a/d/a;->c:[C

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/d/a;->f:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 341
    iget v0, p0, Lcom/a/a/d/a;->b:I

    if-nez v0, :cond_8

    .line 343
    invoke-virtual {p0}, Lcom/a/a/d/a;->q()I

    move-result v0

    :cond_8
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    .line 346
    invoke-direct {p0, v0}, Lcom/a/a/d/a;->a(I)V

    .line 347
    iget-object v1, p0, Lcom/a/a/d/a;->p:[I

    iget v2, p0, Lcom/a/a/d/a;->n:I

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    aput v0, v1, v2

    .line 348
    iput v0, p0, Lcom/a/a/d/a;->b:I

    return-void

    .line 350
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/a/d/a;->f()Lcom/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/a/d/a;->r()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()V
    .registers 4

    .line 359
    iget v0, p0, Lcom/a/a/d/a;->b:I

    if-nez v0, :cond_8

    .line 361
    invoke-virtual {p0}, Lcom/a/a/d/a;->q()I

    move-result v0

    :cond_8
    const/4 v1, 0x4

    if-ne v0, v1, :cond_21

    .line 364
    iget v0, p0, Lcom/a/a/d/a;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/a/a/d/a;->n:I

    .line 365
    iget-object v0, p0, Lcom/a/a/d/a;->p:[I

    iget v1, p0, Lcom/a/a/d/a;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    const/4 v0, 0x0

    .line 366
    iput v0, p0, Lcom/a/a/d/a;->b:I

    return-void

    .line 368
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/a/d/a;->f()Lcom/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/a/d/a;->r()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()V
    .registers 4

    .line 377
    iget v0, p0, Lcom/a/a/d/a;->b:I

    if-nez v0, :cond_8

    .line 379
    invoke-virtual {p0}, Lcom/a/a/d/a;->q()I

    move-result v0

    :cond_8
    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    const/4 v0, 0x3

    .line 382
    invoke-direct {p0, v0}, Lcom/a/a/d/a;->a(I)V

    const/4 v0, 0x0

    .line 383
    iput v0, p0, Lcom/a/a/d/a;->b:I

    return-void

    .line 385
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/a/d/a;->f()Lcom/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/a/d/a;->r()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 4

    const/4 v0, 0x0

    .line 1216
    iput v0, p0, Lcom/a/a/d/a;->b:I

    .line 1217
    iget-object v1, p0, Lcom/a/a/d/a;->m:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    const/4 v0, 0x1

    .line 1218
    iput v0, p0, Lcom/a/a/d/a;->n:I

    .line 1219
    iget-object p0, p0, Lcom/a/a/d/a;->d:Ljava/io/Reader;

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public d()V
    .registers 4

    .line 394
    iget v0, p0, Lcom/a/a/d/a;->b:I

    if-nez v0, :cond_8

    .line 396
    invoke-virtual {p0}, Lcom/a/a/d/a;->q()I

    move-result v0

    :cond_8
    const/4 v1, 0x2

    if-ne v0, v1, :cond_28

    .line 399
    iget v0, p0, Lcom/a/a/d/a;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/a/a/d/a;->n:I

    .line 400
    iget-object v0, p0, Lcom/a/a/d/a;->o:[Ljava/lang/String;

    iget v1, p0, Lcom/a/a/d/a;->n:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 401
    iget-object v0, p0, Lcom/a/a/d/a;->p:[I

    iget v1, p0, Lcom/a/a/d/a;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    const/4 v0, 0x0

    .line 402
    iput v0, p0, Lcom/a/a/d/a;->b:I

    return-void

    .line 404
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/a/d/a;->f()Lcom/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/a/d/a;->r()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Z
    .registers 2

    .line 412
    iget v0, p0, Lcom/a/a/d/a;->b:I

    if-nez v0, :cond_8

    .line 414
    invoke-virtual {p0}, Lcom/a/a/d/a;->q()I

    move-result v0

    :cond_8
    const/4 p0, 0x2

    if-eq v0, p0, :cond_10

    const/4 p0, 0x4

    if-eq v0, p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public f()Lcom/a/a/d/b;
    .registers 2

    .line 423
    iget v0, p0, Lcom/a/a/d/a;->b:I

    if-nez v0, :cond_8

    .line 425
    invoke-virtual {p0}, Lcom/a/a/d/a;->q()I

    move-result v0

    :cond_8
    packed-switch v0, :pswitch_data_30

    .line 457
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 455
    :pswitch_11
    sget-object p0, Lcom/a/a/d/b;->END_DOCUMENT:Lcom/a/a/d/b;

    return-object p0

    .line 453
    :pswitch_14
    sget-object p0, Lcom/a/a/d/b;->NUMBER:Lcom/a/a/d/b;

    return-object p0

    .line 440
    :pswitch_17
    sget-object p0, Lcom/a/a/d/b;->NAME:Lcom/a/a/d/b;

    return-object p0

    .line 450
    :pswitch_1a
    sget-object p0, Lcom/a/a/d/b;->STRING:Lcom/a/a/d/b;

    return-object p0

    .line 445
    :pswitch_1d
    sget-object p0, Lcom/a/a/d/b;->NULL:Lcom/a/a/d/b;

    return-object p0

    .line 443
    :pswitch_20
    sget-object p0, Lcom/a/a/d/b;->BOOLEAN:Lcom/a/a/d/b;

    return-object p0

    .line 436
    :pswitch_23
    sget-object p0, Lcom/a/a/d/b;->END_ARRAY:Lcom/a/a/d/b;

    return-object p0

    .line 434
    :pswitch_26
    sget-object p0, Lcom/a/a/d/b;->BEGIN_ARRAY:Lcom/a/a/d/b;

    return-object p0

    .line 432
    :pswitch_29
    sget-object p0, Lcom/a/a/d/b;->END_OBJECT:Lcom/a/a/d/b;

    return-object p0

    .line 430
    :pswitch_2c
    sget-object p0, Lcom/a/a/d/b;->BEGIN_OBJECT:Lcom/a/a/d/b;

    return-object p0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_14
        :pswitch_14
        :pswitch_11
    .end packed-switch
.end method

.method public h()Ljava/lang/String;
    .registers 4

    .line 777
    iget v0, p0, Lcom/a/a/d/a;->b:I

    if-nez v0, :cond_8

    .line 779
    invoke-virtual {p0}, Lcom/a/a/d/a;->q()I

    move-result v0

    :cond_8
    const/16 v1, 0xe

    if-ne v0, v1, :cond_11

    .line 783
    invoke-direct {p0}, Lcom/a/a/d/a;->t()Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    :cond_11
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1c

    const/16 v0, 0x27

    .line 785
    invoke-direct {p0, v0}, Lcom/a/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    :cond_1c
    const/16 v1, 0xd

    if-ne v0, v1, :cond_32

    const/16 v0, 0x22

    .line 787
    invoke-direct {p0, v0}, Lcom/a/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    :goto_26
    const/4 v1, 0x0

    .line 791
    iput v1, p0, Lcom/a/a/d/a;->b:I

    .line 792
    iget-object v1, p0, Lcom/a/a/d/a;->o:[Ljava/lang/String;

    iget p0, p0, Lcom/a/a/d/a;->n:I

    add-int/lit8 p0, p0, -0x1

    aput-object v0, v1, p0

    return-object v0

    .line 789
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/a/d/a;->f()Lcom/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/a/d/a;->r()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()Ljava/lang/String;
    .registers 5

    .line 805
    iget v0, p0, Lcom/a/a/d/a;->b:I

    if-nez v0, :cond_8

    .line 807
    invoke-virtual {p0}, Lcom/a/a/d/a;->q()I

    move-result v0

    :cond_8
    const/16 v1, 0xa

    if-ne v0, v1, :cond_11

    .line 811
    invoke-direct {p0}, Lcom/a/a/d/a;->t()Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    :cond_11
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1c

    const/16 v0, 0x27

    .line 813
    invoke-direct {p0, v0}, Lcom/a/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    :cond_1c
    const/16 v1, 0x9

    if-ne v0, v1, :cond_27

    const/16 v0, 0x22

    .line 815
    invoke-direct {p0, v0}, Lcom/a/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    :cond_27
    const/16 v1, 0xb

    if-ne v0, v1, :cond_31

    .line 817
    iget-object v0, p0, Lcom/a/a/d/a;->l:Ljava/lang/String;

    const/4 v1, 0x0

    .line 818
    iput-object v1, p0, Lcom/a/a/d/a;->l:Ljava/lang/String;

    goto :goto_52

    :cond_31
    const/16 v1, 0xf

    if-ne v0, v1, :cond_3c

    .line 820
    iget-wide v0, p0, Lcom/a/a/d/a;->j:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    :cond_3c
    const/16 v1, 0x10

    if-ne v0, v1, :cond_62

    .line 822
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/a/a/d/a;->e:[C

    iget v2, p0, Lcom/a/a/d/a;->f:I

    iget v3, p0, Lcom/a/a/d/a;->k:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 823
    iget v1, p0, Lcom/a/a/d/a;->f:I

    iget v2, p0, Lcom/a/a/d/a;->k:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/a/a/d/a;->f:I

    :goto_52
    const/4 v1, 0x0

    .line 827
    iput v1, p0, Lcom/a/a/d/a;->b:I

    .line 828
    iget-object v1, p0, Lcom/a/a/d/a;->p:[I

    iget p0, p0, Lcom/a/a/d/a;->n:I

    add-int/lit8 p0, p0, -0x1

    aget v2, v1, p0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, p0

    return-object v0

    .line 825
    :cond_62
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a string but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/a/d/a;->f()Lcom/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/a/d/a;->r()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()Z
    .registers 5

    .line 840
    iget v0, p0, Lcom/a/a/d/a;->b:I

    if-nez v0, :cond_8

    .line 842
    invoke-virtual {p0}, Lcom/a/a/d/a;->q()I

    move-result v0

    :cond_8
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1a

    .line 845
    iput v2, p0, Lcom/a/a/d/a;->b:I

    .line 846
    iget-object v0, p0, Lcom/a/a/d/a;->p:[I

    iget p0, p0, Lcom/a/a/d/a;->n:I

    sub-int/2addr p0, v3

    aget v1, v0, p0

    add-int/2addr v1, v3

    aput v1, v0, p0

    return v3

    :cond_1a
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2a

    .line 849
    iput v2, p0, Lcom/a/a/d/a;->b:I

    .line 850
    iget-object v0, p0, Lcom/a/a/d/a;->p:[I

    iget p0, p0, Lcom/a/a/d/a;->n:I

    sub-int/2addr p0, v3

    aget v1, v0, p0

    add-int/2addr v1, v3

    aput v1, v0, p0

    return v2

    .line 853
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a boolean but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/a/d/a;->f()Lcom/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/a/d/a;->r()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()V
    .registers 4

    .line 864
    iget v0, p0, Lcom/a/a/d/a;->b:I

    if-nez v0, :cond_8

    .line 866
    invoke-virtual {p0}, Lcom/a/a/d/a;->q()I

    move-result v0

    :cond_8
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1b

    const/4 v0, 0x0

    .line 869
    iput v0, p0, Lcom/a/a/d/a;->b:I

    .line 870
    iget-object v0, p0, Lcom/a/a/d/a;->p:[I

    iget p0, p0, Lcom/a/a/d/a;->n:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    return-void

    .line 872
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected null but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/a/d/a;->f()Lcom/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/a/d/a;->r()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l()D
    .registers 7

    .line 886
    iget v0, p0, Lcom/a/a/d/a;->b:I

    if-nez v0, :cond_8

    .line 888
    invoke-virtual {p0}, Lcom/a/a/d/a;->q()I

    move-result v0

    :cond_8
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1f

    .line 892
    iput v2, p0, Lcom/a/a/d/a;->b:I

    .line 893
    iget-object v0, p0, Lcom/a/a/d/a;->p:[I

    iget v1, p0, Lcom/a/a/d/a;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 894
    iget-wide v0, p0, Lcom/a/a/d/a;->j:J

    long-to-double v0, v0

    return-wide v0

    :cond_1f
    const/16 v1, 0x10

    const/16 v3, 0xb

    if-ne v0, v1, :cond_3a

    .line 898
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/a/a/d/a;->e:[C

    iget v4, p0, Lcom/a/a/d/a;->f:I

    iget v5, p0, Lcom/a/a/d/a;->k:I

    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/a/a/d/a;->l:Ljava/lang/String;

    .line 899
    iget v0, p0, Lcom/a/a/d/a;->f:I

    iget v1, p0, Lcom/a/a/d/a;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/d/a;->f:I

    goto :goto_7d

    :cond_3a
    const/16 v1, 0x8

    if-eq v0, v1, :cond_70

    const/16 v4, 0x9

    if-ne v0, v4, :cond_43

    goto :goto_70

    :cond_43
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4e

    .line 903
    invoke-direct {p0}, Lcom/a/a/d/a;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/a;->l:Ljava/lang/String;

    goto :goto_7d

    :cond_4e
    if-ne v0, v3, :cond_51

    goto :goto_7d

    .line 905
    :cond_51
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a double but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/a/d/a;->f()Lcom/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/a/d/a;->r()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_70
    :goto_70
    if-ne v0, v1, :cond_75

    const/16 v0, 0x27

    goto :goto_77

    :cond_75
    const/16 v0, 0x22

    .line 901
    :goto_77
    invoke-direct {p0, v0}, Lcom/a/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/a;->l:Ljava/lang/String;

    .line 908
    :goto_7d
    iput v3, p0, Lcom/a/a/d/a;->b:I

    .line 909
    iget-object v0, p0, Lcom/a/a/d/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 910
    iget-boolean v3, p0, Lcom/a/a/d/a;->a:Z

    if-nez v3, :cond_b1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_96

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_96

    goto :goto_b1

    .line 911
    :cond_96
    new-instance v2, Lcom/a/a/d/d;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 912
    invoke-virtual {p0}, Lcom/a/a/d/a;->r()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/a/a/d/d;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b1
    :goto_b1
    const/4 v3, 0x0

    .line 914
    iput-object v3, p0, Lcom/a/a/d/a;->l:Ljava/lang/String;

    .line 915
    iput v2, p0, Lcom/a/a/d/a;->b:I

    .line 916
    iget-object v2, p0, Lcom/a/a/d/a;->p:[I

    iget p0, p0, Lcom/a/a/d/a;->n:I

    add-int/lit8 p0, p0, -0x1

    aget v3, v2, p0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, p0

    return-wide v0
.end method

.method public m()J
    .registers 8

    .line 931
    iget v0, p0, Lcom/a/a/d/a;->b:I

    if-nez v0, :cond_8

    .line 933
    invoke-virtual {p0}, Lcom/a/a/d/a;->q()I

    move-result v0

    :cond_8
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1e

    .line 937
    iput v2, p0, Lcom/a/a/d/a;->b:I

    .line 938
    iget-object v0, p0, Lcom/a/a/d/a;->p:[I

    iget v1, p0, Lcom/a/a/d/a;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 939
    iget-wide v0, p0, Lcom/a/a/d/a;->j:J

    return-wide v0

    :cond_1e
    const/16 v1, 0x10

    if-ne v0, v1, :cond_37

    .line 943
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/a/a/d/a;->e:[C

    iget v3, p0, Lcom/a/a/d/a;->f:I

    iget v4, p0, Lcom/a/a/d/a;->k:I

    invoke-direct {v0, v1, v3, v4}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/a/a/d/a;->l:Ljava/lang/String;

    .line 944
    iget v0, p0, Lcom/a/a/d/a;->f:I

    iget v1, p0, Lcom/a/a/d/a;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/d/a;->f:I

    goto :goto_8e

    :cond_37
    const/16 v1, 0xa

    const/16 v3, 0x8

    if-eq v0, v3, :cond_63

    const/16 v4, 0x9

    if-eq v0, v4, :cond_63

    if-ne v0, v1, :cond_44

    goto :goto_63

    .line 960
    :cond_44
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a long but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/a/d/a;->f()Lcom/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/a/d/a;->r()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_63
    :goto_63
    if-ne v0, v1, :cond_6c

    .line 947
    invoke-direct {p0}, Lcom/a/a/d/a;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/a;->l:Ljava/lang/String;

    goto :goto_79

    :cond_6c
    if-ne v0, v3, :cond_71

    const/16 v0, 0x27

    goto :goto_73

    :cond_71
    const/16 v0, 0x22

    .line 949
    :goto_73
    invoke-direct {p0, v0}, Lcom/a/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/a;->l:Ljava/lang/String;

    .line 952
    :goto_79
    :try_start_79
    iget-object v0, p0, Lcom/a/a/d/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 953
    iput v2, p0, Lcom/a/a/d/a;->b:I

    .line 954
    iget-object v3, p0, Lcom/a/a/d/a;->p:[I

    iget v4, p0, Lcom/a/a/d/a;->n:I

    add-int/lit8 v4, v4, -0x1

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4
    :try_end_8d
    .catch Ljava/lang/NumberFormatException; {:try_start_79 .. :try_end_8d} :catch_8e

    return-wide v0

    :catch_8e
    :goto_8e
    const/16 v0, 0xb

    .line 963
    iput v0, p0, Lcom/a/a/d/a;->b:I

    .line 964
    iget-object v0, p0, Lcom/a/a/d/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v3, v0

    long-to-double v5, v3

    cmpl-double v0, v5, v0

    if-nez v0, :cond_b0

    const/4 v0, 0x0

    .line 969
    iput-object v0, p0, Lcom/a/a/d/a;->l:Ljava/lang/String;

    .line 970
    iput v2, p0, Lcom/a/a/d/a;->b:I

    .line 971
    iget-object v0, p0, Lcom/a/a/d/a;->p:[I

    iget p0, p0, Lcom/a/a/d/a;->n:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    return-wide v3

    .line 967
    :cond_b0
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a long but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/a/a/d/a;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/a/d/a;->r()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n()I
    .registers 8

    .line 1163
    iget v0, p0, Lcom/a/a/d/a;->b:I

    if-nez v0, :cond_8

    .line 1165
    invoke-virtual {p0}, Lcom/a/a/d/a;->q()I

    move-result v0

    :cond_8
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_43

    .line 1170
    iget-wide v0, p0, Lcom/a/a/d/a;->j:J

    long-to-int v0, v0

    .line 1171
    iget-wide v3, p0, Lcom/a/a/d/a;->j:J

    int-to-long v5, v0

    cmp-long v1, v3, v5

    if-nez v1, :cond_26

    .line 1174
    iput v2, p0, Lcom/a/a/d/a;->b:I

    .line 1175
    iget-object v1, p0, Lcom/a/a/d/a;->p:[I

    iget p0, p0, Lcom/a/a/d/a;->n:I

    add-int/lit8 p0, p0, -0x1

    aget v2, v1, p0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, p0

    return v0

    .line 1172
    :cond_26
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected an int but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/a/a/d/a;->j:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/a/d/a;->r()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    const/16 v1, 0x10

    if-ne v0, v1, :cond_5c

    .line 1180
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/a/a/d/a;->e:[C

    iget v3, p0, Lcom/a/a/d/a;->f:I

    iget v4, p0, Lcom/a/a/d/a;->k:I

    invoke-direct {v0, v1, v3, v4}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/a/a/d/a;->l:Ljava/lang/String;

    .line 1181
    iget v0, p0, Lcom/a/a/d/a;->f:I

    iget v1, p0, Lcom/a/a/d/a;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/d/a;->f:I

    goto :goto_b3

    :cond_5c
    const/16 v1, 0xa

    const/16 v3, 0x8

    if-eq v0, v3, :cond_88

    const/16 v4, 0x9

    if-eq v0, v4, :cond_88

    if-ne v0, v1, :cond_69

    goto :goto_88

    .line 1197
    :cond_69
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected an int but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/a/d/a;->f()Lcom/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/a/d/a;->r()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_88
    :goto_88
    if-ne v0, v1, :cond_91

    .line 1184
    invoke-direct {p0}, Lcom/a/a/d/a;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/a;->l:Ljava/lang/String;

    goto :goto_9e

    :cond_91
    if-ne v0, v3, :cond_96

    const/16 v0, 0x27

    goto :goto_98

    :cond_96
    const/16 v0, 0x22

    .line 1186
    :goto_98
    invoke-direct {p0, v0}, Lcom/a/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/a;->l:Ljava/lang/String;

    .line 1189
    :goto_9e
    :try_start_9e
    iget-object v0, p0, Lcom/a/a/d/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1190
    iput v2, p0, Lcom/a/a/d/a;->b:I

    .line 1191
    iget-object v1, p0, Lcom/a/a/d/a;->p:[I

    iget v3, p0, Lcom/a/a/d/a;->n:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v1, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v1, v3
    :try_end_b2
    .catch Ljava/lang/NumberFormatException; {:try_start_9e .. :try_end_b2} :catch_b3

    return v0

    :catch_b3
    :goto_b3
    const/16 v0, 0xb

    .line 1200
    iput v0, p0, Lcom/a/a/d/a;->b:I

    .line 1201
    iget-object v0, p0, Lcom/a/a/d/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v3, v0

    int-to-double v4, v3

    cmpl-double v0, v4, v0

    if-nez v0, :cond_d5

    const/4 v0, 0x0

    .line 1206
    iput-object v0, p0, Lcom/a/a/d/a;->l:Ljava/lang/String;

    .line 1207
    iput v2, p0, Lcom/a/a/d/a;->b:I

    .line 1208
    iget-object v0, p0, Lcom/a/a/d/a;->p:[I

    iget p0, p0, Lcom/a/a/d/a;->n:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    return v3

    .line 1204
    :cond_d5
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected an int but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/a/a/d/a;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/a/d/a;->r()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o()V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 1230
    :cond_2
    iget v2, p0, Lcom/a/a/d/a;->b:I

    if-nez v2, :cond_a

    .line 1232
    invoke-virtual {p0}, Lcom/a/a/d/a;->q()I

    move-result v2

    :cond_a
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_15

    .line 1236
    invoke-direct {p0, v4}, Lcom/a/a/d/a;->a(I)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_91

    :cond_15
    if-ne v2, v4, :cond_1e

    .line 1239
    invoke-direct {p0, v3}, Lcom/a/a/d/a;->a(I)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_91

    :cond_1e
    const/4 v3, 0x4

    if-ne v2, v3, :cond_2a

    .line 1242
    iget v2, p0, Lcom/a/a/d/a;->n:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/a/a/d/a;->n:I

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_91

    :cond_2a
    const/4 v3, 0x2

    if-ne v2, v3, :cond_35

    .line 1245
    iget v2, p0, Lcom/a/a/d/a;->n:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/a/a/d/a;->n:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_91

    :cond_35
    const/16 v3, 0xe

    if-eq v2, v3, :cond_68

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3e

    goto :goto_68

    :cond_3e
    const/16 v3, 0x8

    if-eq v2, v3, :cond_62

    const/16 v3, 0xc

    if-ne v2, v3, :cond_47

    goto :goto_62

    :cond_47
    const/16 v3, 0x9

    if-eq v2, v3, :cond_5c

    const/16 v3, 0xd

    if-ne v2, v3, :cond_50

    goto :goto_5c

    :cond_50
    const/16 v3, 0x10

    if-ne v2, v3, :cond_91

    .line 1254
    iget v2, p0, Lcom/a/a/d/a;->f:I

    iget v3, p0, Lcom/a/a/d/a;->k:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/a/a/d/a;->f:I

    goto :goto_91

    :cond_5c
    :goto_5c
    const/16 v2, 0x22

    .line 1252
    invoke-direct {p0, v2}, Lcom/a/a/d/a;->c(C)V

    goto :goto_91

    :cond_62
    :goto_62
    const/16 v2, 0x27

    .line 1250
    invoke-direct {p0, v2}, Lcom/a/a/d/a;->c(C)V

    goto :goto_91

    :cond_68
    :goto_68
    move v2, v0

    .line 2125
    :goto_69
    iget v3, p0, Lcom/a/a/d/a;->f:I

    add-int/2addr v3, v2

    iget v5, p0, Lcom/a/a/d/a;->g:I

    if-ge v3, v5, :cond_86

    .line 2126
    iget-object v3, p0, Lcom/a/a/d/a;->e:[C

    iget v5, p0, Lcom/a/a/d/a;->f:I

    add-int/2addr v5, v2

    aget-char v3, v3, v5

    sparse-switch v3, :sswitch_data_aa

    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    .line 2132
    :sswitch_7d
    invoke-direct {p0}, Lcom/a/a/d/a;->u()V

    .line 2144
    :sswitch_80
    iget v3, p0, Lcom/a/a/d/a;->f:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/a/a/d/a;->f:I

    goto :goto_91

    .line 2148
    :cond_86
    iget v3, p0, Lcom/a/a/d/a;->f:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/a/a/d/a;->f:I

    .line 2149
    invoke-direct {p0, v4}, Lcom/a/a/d/a;->b(I)Z

    move-result v2

    if-nez v2, :cond_68

    .line 1256
    :cond_91
    :goto_91
    iput v0, p0, Lcom/a/a/d/a;->b:I

    if-nez v1, :cond_2

    .line 1259
    iget-object v0, p0, Lcom/a/a/d/a;->p:[I

    iget v1, p0, Lcom/a/a/d/a;->n:I

    sub-int/2addr v1, v4

    aget v2, v0, v1

    add-int/2addr v2, v4

    aput v2, v0, v1

    .line 1260
    iget-object v0, p0, Lcom/a/a/d/a;->o:[Ljava/lang/String;

    iget p0, p0, Lcom/a/a/d/a;->n:I

    sub-int/2addr p0, v4

    const-string v1, "null"

    aput-object v1, v0, p0

    return-void

    nop

    :sswitch_data_aa
    .sparse-switch
        0x9 -> :sswitch_80
        0xa -> :sswitch_80
        0xc -> :sswitch_80
        0xd -> :sswitch_80
        0x20 -> :sswitch_80
        0x23 -> :sswitch_7d
        0x2c -> :sswitch_80
        0x2f -> :sswitch_7d
        0x3a -> :sswitch_80
        0x3b -> :sswitch_7d
        0x3d -> :sswitch_7d
        0x5b -> :sswitch_80
        0x5c -> :sswitch_7d
        0x5d -> :sswitch_80
        0x7b -> :sswitch_80
        0x7d -> :sswitch_80
    .end sparse-switch
.end method

.method public p()Ljava/lang/String;
    .registers 5

    .line 1468
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1469
    iget v1, p0, Lcom/a/a/d/a;->n:I

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_3b

    .line 1470
    iget-object v3, p0, Lcom/a/a/d/a;->m:[I

    aget v3, v3, v2

    packed-switch v3, :pswitch_data_40

    goto :goto_38

    :pswitch_14
    const/16 v3, 0x2e

    .line 1479
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1480
    iget-object v3, p0, Lcom/a/a/d/a;->o:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-eqz v3, :cond_38

    .line 1481
    iget-object v3, p0, Lcom/a/a/d/a;->o:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    :pswitch_27
    const/16 v3, 0x5b

    .line 1473
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/a/a/d/a;->p:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_38
    :goto_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1491
    :cond_3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_27
        :pswitch_27
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method final q()I
    .registers 16

    .line 462
    iget-object v0, p0, Lcom/a/a/d/a;->m:[I

    iget v1, p0, Lcom/a/a/d/a;->n:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    const/16 v1, 0x8

    const/4 v3, 0x3

    const/16 v4, 0x5d

    const/16 v5, 0x27

    const/16 v6, 0x22

    const/4 v7, 0x7

    const/16 v8, 0x3b

    const/16 v9, 0x2c

    const/4 v10, 0x4

    const/4 v11, 0x2

    if-ne v0, v2, :cond_23

    .line 464
    iget-object v12, p0, Lcom/a/a/d/a;->m:[I

    iget v13, p0, Lcom/a/a/d/a;->n:I

    sub-int/2addr v13, v2

    aput v11, v12, v13

    goto/16 :goto_ac

    :cond_23
    if-ne v0, v11, :cond_3e

    .line 467
    invoke-direct {p0, v2}, Lcom/a/a/d/a;->a(Z)I

    move-result v12

    if-eq v12, v9, :cond_ac

    if-eq v12, v8, :cond_39

    if-ne v12, v4, :cond_32

    .line 470
    iput v10, p0, Lcom/a/a/d/a;->b:I

    return v10

    :cond_32
    const-string v0, "Unterminated array"

    .line 476
    invoke-direct {p0, v0}, Lcom/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 472
    :cond_39
    invoke-direct {p0}, Lcom/a/a/d/a;->u()V

    goto/16 :goto_ac

    :cond_3e
    const/4 v12, 0x5

    if-eq v0, v3, :cond_125

    if-ne v0, v12, :cond_45

    goto/16 :goto_125

    :cond_45
    if-ne v0, v10, :cond_80

    .line 517
    iget-object v13, p0, Lcom/a/a/d/a;->m:[I

    iget v14, p0, Lcom/a/a/d/a;->n:I

    sub-int/2addr v14, v2

    aput v12, v13, v14

    .line 519
    invoke-direct {p0, v2}, Lcom/a/a/d/a;->a(Z)I

    move-result v12

    const/16 v13, 0x3a

    if-eq v12, v13, :cond_ac

    const/16 v13, 0x3d

    if-ne v12, v13, :cond_79

    .line 524
    invoke-direct {p0}, Lcom/a/a/d/a;->u()V

    .line 525
    iget v12, p0, Lcom/a/a/d/a;->f:I

    iget v13, p0, Lcom/a/a/d/a;->g:I

    if-lt v12, v13, :cond_69

    invoke-direct {p0, v2}, Lcom/a/a/d/a;->b(I)Z

    move-result v12

    if-eqz v12, :cond_ac

    :cond_69
    iget-object v12, p0, Lcom/a/a/d/a;->e:[C

    iget v13, p0, Lcom/a/a/d/a;->f:I

    aget-char v12, v12, v13

    const/16 v13, 0x3e

    if-ne v12, v13, :cond_ac

    .line 526
    iget v12, p0, Lcom/a/a/d/a;->f:I

    add-int/2addr v12, v2

    iput v12, p0, Lcom/a/a/d/a;->f:I

    goto :goto_ac

    :cond_79
    const-string v0, "Expected \':\'"

    .line 530
    invoke-direct {p0, v0}, Lcom/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_80
    const/4 v12, 0x6

    if-ne v0, v12, :cond_92

    .line 533
    iget-boolean v12, p0, Lcom/a/a/d/a;->a:Z

    if-eqz v12, :cond_8a

    .line 534
    invoke-direct {p0}, Lcom/a/a/d/a;->x()V

    .line 536
    :cond_8a
    iget-object v12, p0, Lcom/a/a/d/a;->m:[I

    iget v13, p0, Lcom/a/a/d/a;->n:I

    sub-int/2addr v13, v2

    aput v7, v12, v13

    goto :goto_ac

    :cond_92
    if-ne v0, v7, :cond_aa

    const/4 v12, 0x0

    .line 538
    invoke-direct {p0, v12}, Lcom/a/a/d/a;->a(Z)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_a1

    const/16 v0, 0x11

    .line 540
    iput v0, p0, Lcom/a/a/d/a;->b:I

    return v0

    .line 542
    :cond_a1
    invoke-direct {p0}, Lcom/a/a/d/a;->u()V

    .line 543
    iget v12, p0, Lcom/a/a/d/a;->f:I

    sub-int/2addr v12, v2

    iput v12, p0, Lcom/a/a/d/a;->f:I

    goto :goto_ac

    :cond_aa
    if-eq v0, v1, :cond_11d

    .line 549
    :cond_ac
    :goto_ac
    invoke-direct {p0, v2}, Lcom/a/a/d/a;->a(Z)I

    move-result v12

    if-eq v12, v6, :cond_118

    if-eq v12, v5, :cond_112

    if-eq v12, v9, :cond_fb

    if-eq v12, v8, :cond_fb

    const/16 v1, 0x5b

    if-eq v12, v1, :cond_f8

    if-eq v12, v4, :cond_f3

    const/16 v0, 0x7b

    if-eq v12, v0, :cond_f0

    .line 576
    iget v0, p0, Lcom/a/a/d/a;->f:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/a/a/d/a;->f:I

    .line 579
    invoke-direct {p0}, Lcom/a/a/d/a;->g()I

    move-result v0

    if-eqz v0, :cond_ce

    return v0

    .line 584
    :cond_ce
    invoke-direct {p0}, Lcom/a/a/d/a;->s()I

    move-result v0

    if-eqz v0, :cond_d5

    return v0

    .line 589
    :cond_d5
    iget-object v0, p0, Lcom/a/a/d/a;->e:[C

    iget v1, p0, Lcom/a/a/d/a;->f:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lcom/a/a/d/a;->a(C)Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 593
    invoke-direct {p0}, Lcom/a/a/d/a;->u()V

    const/16 v0, 0xa

    .line 594
    iput v0, p0, Lcom/a/a/d/a;->b:I

    return v0

    :cond_e9
    const-string v0, "Expected value"

    .line 590
    invoke-direct {p0, v0}, Lcom/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 574
    :cond_f0
    iput v2, p0, Lcom/a/a/d/a;->b:I

    return v2

    :cond_f3
    if-ne v0, v2, :cond_fb

    .line 553
    iput v10, p0, Lcom/a/a/d/a;->b:I

    return v10

    .line 572
    :cond_f8
    iput v3, p0, Lcom/a/a/d/a;->b:I

    return v3

    :cond_fb
    if-eq v0, v2, :cond_107

    if-ne v0, v11, :cond_100

    goto :goto_107

    :cond_100
    const-string v0, "Unexpected value"

    .line 564
    invoke-direct {p0, v0}, Lcom/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 560
    :cond_107
    :goto_107
    invoke-direct {p0}, Lcom/a/a/d/a;->u()V

    .line 561
    iget v0, p0, Lcom/a/a/d/a;->f:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/a/a/d/a;->f:I

    .line 562
    iput v7, p0, Lcom/a/a/d/a;->b:I

    return v7

    .line 567
    :cond_112
    invoke-direct {p0}, Lcom/a/a/d/a;->u()V

    .line 568
    iput v1, p0, Lcom/a/a/d/a;->b:I

    return v1

    :cond_118
    const/16 v0, 0x9

    .line 570
    iput v0, p0, Lcom/a/a/d/a;->b:I

    return v0

    .line 546
    :cond_11d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "JsonReader is closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 479
    :cond_125
    :goto_125
    iget-object v1, p0, Lcom/a/a/d/a;->m:[I

    iget v3, p0, Lcom/a/a/d/a;->n:I

    sub-int/2addr v3, v2

    aput v10, v1, v3

    const/16 v1, 0x7d

    if-ne v0, v12, :cond_147

    .line 482
    invoke-direct {p0, v2}, Lcom/a/a/d/a;->a(Z)I

    move-result v3

    if-eq v3, v9, :cond_147

    if-eq v3, v8, :cond_144

    if-ne v3, v1, :cond_13d

    .line 485
    iput v11, p0, Lcom/a/a/d/a;->b:I

    return v11

    :cond_13d
    const-string v0, "Unterminated object"

    .line 491
    invoke-direct {p0, v0}, Lcom/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 487
    :cond_144
    invoke-direct {p0}, Lcom/a/a/d/a;->u()V

    .line 494
    :cond_147
    invoke-direct {p0, v2}, Lcom/a/a/d/a;->a(Z)I

    move-result v3

    if-eq v3, v6, :cond_180

    if-eq v3, v5, :cond_178

    if-eq v3, v1, :cond_16c

    .line 508
    invoke-direct {p0}, Lcom/a/a/d/a;->u()V

    .line 509
    iget v0, p0, Lcom/a/a/d/a;->f:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/a/a/d/a;->f:I

    int-to-char v0, v3

    .line 510
    invoke-direct {p0, v0}, Lcom/a/a/d/a;->a(C)Z

    move-result v0

    if-eqz v0, :cond_165

    const/16 v0, 0xe

    .line 511
    iput v0, p0, Lcom/a/a/d/a;->b:I

    return v0

    :cond_165
    const-string v0, "Expected name"

    .line 513
    invoke-direct {p0, v0}, Lcom/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_16c
    if-eq v0, v12, :cond_171

    .line 503
    iput v11, p0, Lcom/a/a/d/a;->b:I

    return v11

    :cond_171
    const-string v0, "Expected name"

    .line 505
    invoke-direct {p0, v0}, Lcom/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 499
    :cond_178
    invoke-direct {p0}, Lcom/a/a/d/a;->u()V

    const/16 v0, 0xc

    .line 500
    iput v0, p0, Lcom/a/a/d/a;->b:I

    return v0

    :cond_180
    const/16 v0, 0xd

    .line 497
    iput v0, p0, Lcom/a/a/d/a;->b:I

    return v0
.end method

.method final r()Ljava/lang/String;
    .registers 5

    .line 1458
    iget v0, p0, Lcom/a/a/d/a;->h:I

    add-int/lit8 v0, v0, 0x1

    .line 1459
    iget v1, p0, Lcom/a/a/d/a;->f:I

    iget v2, p0, Lcom/a/a/d/a;->i:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 1460
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " at line "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " column "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " path "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/a/d/a;->p()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/a/d/a;->r()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
