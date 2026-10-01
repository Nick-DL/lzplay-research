.class public final Lcom/a/a/n;
.super Lcom/a/a/i;
.source "JsonPrimitive.java"


# static fields
.field private static final b:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x10

    .line 35
    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Integer;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Long;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Short;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Float;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Double;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Byte;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Boolean;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Character;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/a/a/n;->b:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .registers 2

    .line 46
    invoke-direct {p0}, Lcom/a/a/i;-><init>()V

    .line 47
    invoke-direct {p0, p1}, Lcom/a/a/n;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 2

    .line 55
    invoke-direct {p0}, Lcom/a/a/i;-><init>()V

    .line 56
    invoke-direct {p0, p1}, Lcom/a/a/n;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 64
    invoke-direct {p0}, Lcom/a/a/i;-><init>()V

    .line 65
    invoke-direct {p0, p1}, Lcom/a/a/n;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .registers 3

    .line 98
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_11

    .line 101
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    .line 102
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/a/a/n;->a:Ljava/lang/Object;

    return-void

    .line 104
    :cond_11
    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_1e

    .line 105
    invoke-static {p1}, Lcom/a/a/n;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    .line 104
    :goto_1f
    invoke-static {v0}, Lcom/a/a/b/a;->a(Z)V

    .line 106
    iput-object p1, p0, Lcom/a/a/n;->a:Ljava/lang/Object;

    return-void
.end method

.method private static a(Lcom/a/a/n;)Z
    .registers 3

    .line 338
    iget-object v0, p0, Lcom/a/a/n;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 339
    iget-object p0, p0, Lcom/a/a/n;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    .line 340
    instance-of v0, p0, Ljava/math/BigInteger;

    if-nez v0, :cond_21

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_21

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_21

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_21

    instance-of p0, p0, Ljava/lang/Byte;

    if-eqz p0, :cond_20

    goto :goto_21

    :cond_20
    return v1

    :cond_21
    :goto_21
    const/4 p0, 0x1

    return p0

    :cond_23
    return v1
.end method

.method private static b(Ljava/lang/Object;)Z
    .registers 7

    .line 278
    instance-of v0, p0, Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 282
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 283
    sget-object v0, Lcom/a/a/n;->b:[Ljava/lang/Class;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_f
    if-ge v4, v2, :cond_1d

    aget-object v5, v0, v4

    .line 284
    invoke-virtual {v5, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1a

    return v1

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_1d
    return v3
.end method


# virtual methods
.method public final a()Ljava/lang/Number;
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/a/a/n;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_10

    new-instance v0, Lcom/a/a/b/g;

    iget-object p0, p0, Lcom/a/a/n;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/a/a/b/g;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_10
    iget-object p0, p0, Lcom/a/a/n;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 1150
    iget-object v0, p0, Lcom/a/a/n;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_f

    .line 181
    invoke-virtual {p0}, Lcom/a/a/n;->a()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2116
    :cond_f
    iget-object v0, p0, Lcom/a/a/n;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1e

    .line 2126
    iget-object p0, p0, Lcom/a/a/n;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    .line 183
    invoke-virtual {p0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 185
    :cond_1e
    iget-object p0, p0, Lcom/a/a/n;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final c()D
    .registers 3

    .line 2150
    iget-object v0, p0, Lcom/a/a/n;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_f

    .line 197
    invoke-virtual {p0}, Lcom/a/a/n;->a()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_f
    invoke-virtual {p0}, Lcom/a/a/n;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final d()J
    .registers 3

    .line 3150
    iget-object v0, p0, Lcom/a/a/n;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_f

    .line 242
    invoke-virtual {p0}, Lcom/a/a/n;->a()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_f
    invoke-virtual {p0}, Lcom/a/a/n;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()I
    .registers 2

    .line 4150
    iget-object v0, p0, Lcom/a/a/n;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_f

    .line 264
    invoke-virtual {p0}, Lcom/a/a/n;->a()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_f
    invoke-virtual {p0}, Lcom/a/a/n;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_78

    .line 313
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_78

    .line 316
    :cond_12
    check-cast p1, Lcom/a/a/n;

    .line 317
    iget-object v2, p0, Lcom/a/a/n;->a:Ljava/lang/Object;

    if-nez v2, :cond_1e

    .line 318
    iget-object p0, p1, Lcom/a/a/n;->a:Ljava/lang/Object;

    if-nez p0, :cond_1d

    return v0

    :cond_1d
    return v1

    .line 320
    :cond_1e
    invoke-static {p0}, Lcom/a/a/n;->a(Lcom/a/a/n;)Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-static {p1}, Lcom/a/a/n;->a(Lcom/a/a/n;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 321
    invoke-virtual {p0}, Lcom/a/a/n;->a()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/a/a/n;->a()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    cmp-long p0, v2, p0

    if-nez p0, :cond_3f

    return v0

    :cond_3f
    return v1

    .line 323
    :cond_40
    iget-object v2, p0, Lcom/a/a/n;->a:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_6f

    iget-object v2, p1, Lcom/a/a/n;->a:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_6f

    .line 324
    invoke-virtual {p0}, Lcom/a/a/n;->a()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 327
    invoke-virtual {p1}, Lcom/a/a/n;->a()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    cmpl-double v4, v2, p0

    if-eqz v4, :cond_6e

    .line 328
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_6d

    goto :goto_6e

    :cond_6d
    return v1

    :cond_6e
    :goto_6e
    return v0

    .line 330
    :cond_6f
    iget-object p0, p0, Lcom/a/a/n;->a:Ljava/lang/Object;

    iget-object p1, p1, Lcom/a/a/n;->a:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_78
    :goto_78
    return v1
.end method

.method public final f()Z
    .registers 2

    .line 1116
    iget-object v0, p0, Lcom/a/a/n;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    .line 1126
    iget-object p0, p0, Lcom/a/a/n;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    .line 137
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 140
    :cond_f
    invoke-virtual {p0}, Lcom/a/a/n;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 5

    .line 293
    iget-object v0, p0, Lcom/a/a/n;->a:Ljava/lang/Object;

    if-nez v0, :cond_7

    const/16 p0, 0x1f

    return p0

    .line 297
    :cond_7
    invoke-static {p0}, Lcom/a/a/n;->a(Lcom/a/a/n;)Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_1c

    .line 298
    invoke-virtual {p0}, Lcom/a/a/n;->a()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    ushr-long v0, v2, v1

    xor-long/2addr v0, v2

    long-to-int p0, v0

    return p0

    .line 301
    :cond_1c
    iget-object v0, p0, Lcom/a/a/n;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_33

    .line 302
    invoke-virtual {p0}, Lcom/a/a/n;->a()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    ushr-long v0, v2, v1

    xor-long/2addr v0, v2

    long-to-int p0, v0

    return p0

    .line 305
    :cond_33
    iget-object p0, p0, Lcom/a/a/n;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
