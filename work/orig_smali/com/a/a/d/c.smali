.class public Lcom/a/a/d/c;
.super Ljava/lang/Object;
.source "JsonWriter.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# instance fields
.field public c:Z

.field protected d:Z

.field private final e:Ljava/io/Writer;

.field private f:[I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v0, 0x80

    .line 145
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/a/a/d/c;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    const/16 v2, 0x1f

    if-gt v1, v2, :cond_22

    .line 147
    sget-object v2, Lcom/a/a/d/c;->a:[Ljava/lang/String;

    const-string v3, "\\u%04x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 149
    :cond_22
    sget-object v0, Lcom/a/a/d/c;->a:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "\\\""

    aput-object v2, v0, v1

    .line 150
    sget-object v0, Lcom/a/a/d/c;->a:[Ljava/lang/String;

    const/16 v1, 0x5c

    const-string v2, "\\\\"

    aput-object v2, v0, v1

    .line 151
    sget-object v0, Lcom/a/a/d/c;->a:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "\\t"

    aput-object v2, v0, v1

    .line 152
    sget-object v0, Lcom/a/a/d/c;->a:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "\\b"

    aput-object v2, v0, v1

    .line 153
    sget-object v0, Lcom/a/a/d/c;->a:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "\\n"

    aput-object v2, v0, v1

    .line 154
    sget-object v0, Lcom/a/a/d/c;->a:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "\\r"

    aput-object v2, v0, v1

    .line 155
    sget-object v0, Lcom/a/a/d/c;->a:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "\\f"

    aput-object v2, v0, v1

    .line 156
    sget-object v0, Lcom/a/a/d/c;->a:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 157
    sput-object v0, Lcom/a/a/d/c;->b:[Ljava/lang/String;

    const/16 v1, 0x3c

    const-string v2, "\\u003c"

    aput-object v2, v0, v1

    .line 158
    sget-object v0, Lcom/a/a/d/c;->b:[Ljava/lang/String;

    const/16 v1, 0x3e

    const-string v2, "\\u003e"

    aput-object v2, v0, v1

    .line 159
    sget-object v0, Lcom/a/a/d/c;->b:[Ljava/lang/String;

    const/16 v1, 0x26

    const-string v2, "\\u0026"

    aput-object v2, v0, v1

    .line 160
    sget-object v0, Lcom/a/a/d/c;->b:[Ljava/lang/String;

    const/16 v1, 0x3d

    const-string v2, "\\u003d"

    aput-object v2, v0, v1

    .line 161
    sget-object v0, Lcom/a/a/d/c;->b:[Ljava/lang/String;

    const/16 v1, 0x27

    const-string v2, "\\u0027"

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .registers 3

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    .line 167
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/a/a/d/c;->f:[I

    const/4 v0, 0x0

    .line 168
    iput v0, p0, Lcom/a/a/d/c;->g:I

    const/4 v0, 0x6

    .line 170
    invoke-direct {p0, v0}, Lcom/a/a/d/c;->a(I)V

    const-string v0, ":"

    .line 182
    iput-object v0, p0, Lcom/a/a/d/c;->i:Ljava/lang/String;

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lcom/a/a/d/c;->d:Z

    if-eqz p1, :cond_1c

    .line 201
    iput-object p1, p0, Lcom/a/a/d/c;->e:Ljava/io/Writer;

    return-void

    .line 199
    :cond_1c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "out == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(IILjava/lang/String;)Lcom/a/a/d/c;
    .registers 5

    .line 337
    invoke-direct {p0}, Lcom/a/a/d/c;->f()I

    move-result v0

    if-eq v0, p2, :cond_11

    if-ne v0, p1, :cond_9

    goto :goto_11

    .line 339
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Nesting problem."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 341
    :cond_11
    :goto_11
    iget-object p1, p0, Lcom/a/a/d/c;->k:Ljava/lang/String;

    if-nez p1, :cond_26

    .line 345
    iget p1, p0, Lcom/a/a/d/c;->g:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/a/a/d/c;->g:I

    if-ne v0, p2, :cond_20

    .line 347
    invoke-direct {p0}, Lcom/a/a/d/c;->h()V

    .line 349
    :cond_20
    iget-object p1, p0, Lcom/a/a/d/c;->e:Ljava/io/Writer;

    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0

    .line 342
    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Dangling name: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/a/a/d/c;->k:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(ILjava/lang/String;)Lcom/a/a/d/c;
    .registers 3

    .line 325
    invoke-direct {p0}, Lcom/a/a/d/c;->j()V

    .line 326
    invoke-direct {p0, p1}, Lcom/a/a/d/c;->a(I)V

    .line 327
    iget-object p1, p0, Lcom/a/a/d/c;->e:Ljava/io/Writer;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method private a(I)V
    .registers 6

    .line 354
    iget v0, p0, Lcom/a/a/d/c;->g:I

    iget-object v1, p0, Lcom/a/a/d/c;->f:[I

    array-length v1, v1

    if-ne v0, v1, :cond_17

    .line 355
    iget v0, p0, Lcom/a/a/d/c;->g:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 356
    iget-object v1, p0, Lcom/a/a/d/c;->f:[I

    iget v2, p0, Lcom/a/a/d/c;->g:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    iput-object v0, p0, Lcom/a/a/d/c;->f:[I

    .line 359
    :cond_17
    iget-object v0, p0, Lcom/a/a/d/c;->f:[I

    iget v1, p0, Lcom/a/a/d/c;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/a/d/c;->g:I

    aput p1, v0, v1

    return-void
.end method

.method private b(I)V
    .registers 3

    .line 376
    iget-object v0, p0, Lcom/a/a/d/c;->f:[I

    iget p0, p0, Lcom/a/a/d/c;->g:I

    add-int/lit8 p0, p0, -0x1

    aput p1, v0, p0

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 9

    .line 565
    iget-boolean v0, p0, Lcom/a/a/d/c;->j:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/a/a/d/c;->b:[Ljava/lang/String;

    goto :goto_9

    :cond_7
    sget-object v0, Lcom/a/a/d/c;->a:[Ljava/lang/String;

    .line 566
    :goto_9
    iget-object v1, p0, Lcom/a/a/d/c;->e:Ljava/io/Writer;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_16
    if-ge v2, v1, :cond_45

    .line 570
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x80

    if-ge v4, v5, :cond_25

    .line 573
    aget-object v4, v0, v4

    if-nez v4, :cond_32

    goto :goto_42

    :cond_25
    const/16 v5, 0x2028

    if-ne v4, v5, :cond_2c

    const-string v4, "\\u2028"

    goto :goto_32

    :cond_2c
    const/16 v5, 0x2029

    if-ne v4, v5, :cond_42

    const-string v4, "\\u2029"

    :cond_32
    :goto_32
    if-ge v3, v2, :cond_3b

    .line 585
    iget-object v5, p0, Lcom/a/a/d/c;->e:Ljava/io/Writer;

    sub-int v6, v2, v3

    invoke-virtual {v5, p1, v3, v6}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 587
    :cond_3b
    iget-object v3, p0, Lcom/a/a/d/c;->e:Ljava/io/Writer;

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v3, v2, 0x1

    :cond_42
    :goto_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_45
    if-ge v3, v1, :cond_4d

    .line 591
    iget-object v0, p0, Lcom/a/a/d/c;->e:Ljava/io/Writer;

    sub-int/2addr v1, v3

    invoke-virtual {v0, p1, v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 593
    :cond_4d
    iget-object p0, p0, Lcom/a/a/d/c;->e:Ljava/io/Writer;

    const-string p1, "\""

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method private f()I
    .registers 2

    .line 366
    iget v0, p0, Lcom/a/a/d/c;->g:I

    if-eqz v0, :cond_d

    .line 369
    iget-object v0, p0, Lcom/a/a/d/c;->f:[I

    iget p0, p0, Lcom/a/a/d/c;->g:I

    add-int/lit8 p0, p0, -0x1

    aget p0, v0, p0

    return p0

    .line 367
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "JsonWriter is closed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private g()V
    .registers 2

    .line 400
    iget-object v0, p0, Lcom/a/a/d/c;->k:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 401
    invoke-direct {p0}, Lcom/a/a/d/c;->i()V

    .line 402
    iget-object v0, p0, Lcom/a/a/d/c;->k:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/a/a/d/c;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 403
    iput-object v0, p0, Lcom/a/a/d/c;->k:Ljava/lang/String;

    :cond_f
    return-void
.end method

.method private h()V
    .registers 5

    .line 597
    iget-object v0, p0, Lcom/a/a/d/c;->h:Ljava/lang/String;

    if-nez v0, :cond_5

    return-void

    .line 601
    :cond_5
    iget-object v0, p0, Lcom/a/a/d/c;->e:Ljava/io/Writer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 602
    iget v0, p0, Lcom/a/a/d/c;->g:I

    const/4 v1, 0x1

    :goto_f
    if-ge v1, v0, :cond_1b

    .line 603
    iget-object v2, p0, Lcom/a/a/d/c;->e:Ljava/io/Writer;

    iget-object v3, p0, Lcom/a/a/d/c;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1b
    return-void
.end method

.method private i()V
    .registers 3

    .line 612
    invoke-direct {p0}, Lcom/a/a/d/c;->f()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_f

    .line 614
    iget-object v0, p0, Lcom/a/a/d/c;->e:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_12

    :cond_f
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a

    .line 618
    :goto_12
    invoke-direct {p0}, Lcom/a/a/d/c;->h()V

    const/4 v0, 0x4

    .line 619
    invoke-direct {p0, v0}, Lcom/a/a/d/c;->b(I)V

    return-void

    .line 616
    :cond_1a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Nesting problem."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private j()V
    .registers 3

    .line 629
    invoke-direct {p0}, Lcom/a/a/d/c;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_40

    .line 656
    :pswitch_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Nesting problem."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 631
    :pswitch_f
    iget-boolean v0, p0, Lcom/a/a/d/c;->c:Z

    if-eqz v0, :cond_14

    goto :goto_1c

    .line 632
    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "JSON must have only one top-level value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1c
    :pswitch_1c
    const/4 v0, 0x7

    .line 637
    invoke-direct {p0, v0}, Lcom/a/a/d/c;->b(I)V

    return-void

    .line 651
    :pswitch_21
    iget-object v0, p0, Lcom/a/a/d/c;->e:Ljava/io/Writer;

    iget-object v1, p0, Lcom/a/a/d/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const/4 v0, 0x5

    .line 652
    invoke-direct {p0, v0}, Lcom/a/a/d/c;->b(I)V

    return-void

    .line 646
    :pswitch_2d
    iget-object v0, p0, Lcom/a/a/d/c;->e:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 647
    invoke-direct {p0}, Lcom/a/a/d/c;->h()V

    return-void

    :pswitch_38
    const/4 v0, 0x2

    .line 641
    invoke-direct {p0, v0}, Lcom/a/a/d/c;->b(I)V

    .line 642
    invoke-direct {p0}, Lcom/a/a/d/c;->h()V

    return-void

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_38
        :pswitch_2d
        :pswitch_7
        :pswitch_21
        :pswitch_7
        :pswitch_1c
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public a()Lcom/a/a/d/c;
    .registers 3

    .line 287
    invoke-direct {p0}, Lcom/a/a/d/c;->g()V

    const-string v0, "["

    const/4 v1, 0x1

    .line 288
    invoke-direct {p0, v1, v0}, Lcom/a/a/d/c;->a(ILjava/lang/String;)Lcom/a/a/d/c;

    move-result-object p0

    return-object p0
.end method

.method public a(J)Lcom/a/a/d/c;
    .registers 4

    .line 509
    invoke-direct {p0}, Lcom/a/a/d/c;->g()V

    .line 510
    invoke-direct {p0}, Lcom/a/a/d/c;->j()V

    .line 511
    iget-object v0, p0, Lcom/a/a/d/c;->e:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public a(Ljava/lang/Boolean;)Lcom/a/a/d/c;
    .registers 3

    if-nez p1, :cond_7

    .line 478
    invoke-virtual {p0}, Lcom/a/a/d/c;->e()Lcom/a/a/d/c;

    move-result-object p0

    return-object p0

    .line 480
    :cond_7
    invoke-direct {p0}, Lcom/a/a/d/c;->g()V

    .line 481
    invoke-direct {p0}, Lcom/a/a/d/c;->j()V

    .line 482
    iget-object v0, p0, Lcom/a/a/d/c;->e:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_18

    const-string p1, "true"

    goto :goto_1a

    :cond_18
    const-string p1, "false"

    :goto_1a
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public a(Ljava/lang/Number;)Lcom/a/a/d/c;
    .registers 4

    if-nez p1, :cond_7

    .line 524
    invoke-virtual {p0}, Lcom/a/a/d/c;->e()Lcom/a/a/d/c;

    move-result-object p0

    return-object p0

    .line 527
    :cond_7
    invoke-direct {p0}, Lcom/a/a/d/c;->g()V

    .line 528
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 529
    iget-boolean v1, p0, Lcom/a/a/d/c;->c:Z

    if-nez v1, :cond_3b

    const-string v1, "-Infinity"

    .line 530
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    goto :goto_3b

    .line 531
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Numeric values must be finite, but was "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 533
    :cond_3b
    :goto_3b
    invoke-direct {p0}, Lcom/a/a/d/c;->j()V

    .line 534
    iget-object p1, p0, Lcom/a/a/d/c;->e:Ljava/io/Writer;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/a/a/d/c;
    .registers 3

    if-eqz p1, :cond_1b

    .line 389
    iget-object v0, p0, Lcom/a/a/d/c;->k:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 392
    iget v0, p0, Lcom/a/a/d/c;->g:I

    if-eqz v0, :cond_d

    .line 395
    iput-object p1, p0, Lcom/a/a/d/c;->k:Ljava/lang/String;

    return-object p0

    .line 393
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "JsonWriter is closed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 390
    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 387
    :cond_1b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "name == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Z)Lcom/a/a/d/c;
    .registers 3

    .line 465
    invoke-direct {p0}, Lcom/a/a/d/c;->g()V

    .line 466
    invoke-direct {p0}, Lcom/a/a/d/c;->j()V

    .line 467
    iget-object v0, p0, Lcom/a/a/d/c;->e:Ljava/io/Writer;

    if-eqz p1, :cond_d

    const-string p1, "true"

    goto :goto_f

    :cond_d
    const-string p1, "false"

    :goto_f
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public b()Lcom/a/a/d/c;
    .registers 4

    const-string v0, "]"

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 297
    invoke-direct {p0, v1, v2, v0}, Lcom/a/a/d/c;->a(IILjava/lang/String;)Lcom/a/a/d/c;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/a/a/d/c;
    .registers 2

    if-nez p1, :cond_7

    .line 415
    invoke-virtual {p0}, Lcom/a/a/d/c;->e()Lcom/a/a/d/c;

    move-result-object p0

    return-object p0

    .line 417
    :cond_7
    invoke-direct {p0}, Lcom/a/a/d/c;->g()V

    .line 418
    invoke-direct {p0}, Lcom/a/a/d/c;->j()V

    .line 419
    invoke-direct {p0, p1}, Lcom/a/a/d/c;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public c()Lcom/a/a/d/c;
    .registers 3

    .line 307
    invoke-direct {p0}, Lcom/a/a/d/c;->g()V

    const-string v0, "{"

    const/4 v1, 0x3

    .line 308
    invoke-direct {p0, v1, v0}, Lcom/a/a/d/c;->a(ILjava/lang/String;)Lcom/a/a/d/c;

    move-result-object p0

    return-object p0
.end method

.method public close()V
    .registers 4

    .line 555
    iget-object v0, p0, Lcom/a/a/d/c;->e:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 557
    iget v0, p0, Lcom/a/a/d/c;->g:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_18

    if-ne v0, v1, :cond_14

    .line 558
    iget-object v2, p0, Lcom/a/a/d/c;->f:[I

    sub-int/2addr v0, v1

    aget v0, v2, v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_18

    :cond_14
    const/4 v0, 0x0

    .line 561
    iput v0, p0, Lcom/a/a/d/c;->g:I

    return-void

    .line 559
    :cond_18
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Incomplete document"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d()Lcom/a/a/d/c;
    .registers 4

    const-string v0, "}"

    const/4 v1, 0x3

    const/4 v2, 0x5

    .line 317
    invoke-direct {p0, v1, v2, v0}, Lcom/a/a/d/c;->a(IILjava/lang/String;)Lcom/a/a/d/c;

    move-result-object p0

    return-object p0
.end method

.method public e()Lcom/a/a/d/c;
    .registers 3

    .line 446
    iget-object v0, p0, Lcom/a/a/d/c;->k:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 447
    iget-boolean v0, p0, Lcom/a/a/d/c;->d:Z

    if-eqz v0, :cond_c

    .line 448
    invoke-direct {p0}, Lcom/a/a/d/c;->g()V

    goto :goto_10

    :cond_c
    const/4 v0, 0x0

    .line 450
    iput-object v0, p0, Lcom/a/a/d/c;->k:Ljava/lang/String;

    return-object p0

    .line 454
    :cond_10
    :goto_10
    invoke-direct {p0}, Lcom/a/a/d/c;->j()V

    .line 455
    iget-object v0, p0, Lcom/a/a/d/c;->e:Ljava/io/Writer;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public flush()V
    .registers 2

    .line 543
    iget v0, p0, Lcom/a/a/d/c;->g:I

    if-eqz v0, :cond_a

    .line 546
    iget-object p0, p0, Lcom/a/a/d/c;->e:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    return-void

    .line 544
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "JsonWriter is closed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
