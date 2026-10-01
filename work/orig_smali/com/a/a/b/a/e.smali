.class public final Lcom/a/a/b/a/e;
.super Lcom/a/a/d/a;
.source "JsonTreeReader.java"


# static fields
.field private static final c:Ljava/io/Reader;

.field private static final d:Ljava/lang/Object;


# instance fields
.field private e:[Ljava/lang/Object;

.field private f:I

.field private g:[Ljava/lang/String;

.field private h:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Lcom/a/a/b/a/e$1;

    invoke-direct {v0}, Lcom/a/a/b/a/e$1;-><init>()V

    sput-object v0, Lcom/a/a/b/a/e;->c:Ljava/io/Reader;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/a/a/b/a/e;->d:Ljava/lang/Object;

    return-void
.end method

.method private s()Ljava/lang/Object;
    .registers 4

    .line 154
    iget-object v0, p0, Lcom/a/a/b/a/e;->e:[Ljava/lang/Object;

    iget v1, p0, Lcom/a/a/b/a/e;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/a/a/b/a/e;->f:I

    aget-object v0, v0, v1

    .line 155
    iget-object v1, p0, Lcom/a/a/b/a/e;->e:[Ljava/lang/Object;

    iget p0, p0, Lcom/a/a/b/a/e;->f:I

    const/4 v2, 0x0

    aput-object v2, v1, p0

    return-object v0
.end method

.method private t()Ljava/lang/String;
    .registers 3

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " at path "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/a/b/a/e;->p()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 71
    sget-object v0, Lcom/a/a/d/b;->BEGIN_ARRAY:Lcom/a/a/d/b;

    invoke-virtual {p0, v0}, Lcom/a/a/b/a/e;->a(Lcom/a/a/d/b;)V

    .line 72
    invoke-virtual {p0}, Lcom/a/a/b/a/e;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/g;

    .line 73
    invoke-virtual {v0}, Lcom/a/a/g;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/b/a/e;->a(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/a/a/b/a/e;->h:[I

    iget p0, p0, Lcom/a/a/b/a/e;->f:I

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    aput v1, v0, p0

    return-void
.end method

.method public final a(Lcom/a/a/d/b;)V
    .registers 5

    .line 160
    invoke-virtual {p0}, Lcom/a/a/b/a/e;->f()Lcom/a/a/d/b;

    move-result-object v0

    if-ne v0, p1, :cond_7

    return-void

    .line 161
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " but was "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {p0}, Lcom/a/a/b/a/e;->f()Lcom/a/a/d/b;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/a/a/b/a/e;->t()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 8

    .line 284
    iget v0, p0, Lcom/a/a/b/a/e;->f:I

    iget-object v1, p0, Lcom/a/a/b/a/e;->e:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_35

    .line 285
    iget v0, p0, Lcom/a/a/b/a/e;->f:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 286
    iget v1, p0, Lcom/a/a/b/a/e;->f:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 287
    iget v2, p0, Lcom/a/a/b/a/e;->f:I

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 288
    iget-object v3, p0, Lcom/a/a/b/a/e;->e:[Ljava/lang/Object;

    iget v4, p0, Lcom/a/a/b/a/e;->f:I

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    iget-object v3, p0, Lcom/a/a/b/a/e;->h:[I

    iget v4, p0, Lcom/a/a/b/a/e;->f:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    iget-object v3, p0, Lcom/a/a/b/a/e;->g:[Ljava/lang/String;

    iget v4, p0, Lcom/a/a/b/a/e;->f:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    iput-object v0, p0, Lcom/a/a/b/a/e;->e:[Ljava/lang/Object;

    .line 292
    iput-object v1, p0, Lcom/a/a/b/a/e;->h:[I

    .line 293
    iput-object v2, p0, Lcom/a/a/b/a/e;->g:[Ljava/lang/String;

    .line 295
    :cond_35
    iget-object v0, p0, Lcom/a/a/b/a/e;->e:[Ljava/lang/Object;

    iget v1, p0, Lcom/a/a/b/a/e;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/a/b/a/e;->f:I

    aput-object p1, v0, v1

    return-void
.end method

.method public final b()V
    .registers 3

    .line 78
    sget-object v0, Lcom/a/a/d/b;->END_ARRAY:Lcom/a/a/d/b;

    invoke-virtual {p0, v0}, Lcom/a/a/b/a/e;->a(Lcom/a/a/d/b;)V

    .line 79
    invoke-direct {p0}, Lcom/a/a/b/a/e;->s()Ljava/lang/Object;

    .line 80
    invoke-direct {p0}, Lcom/a/a/b/a/e;->s()Ljava/lang/Object;

    .line 81
    iget v0, p0, Lcom/a/a/b/a/e;->f:I

    if-lez v0, :cond_1b

    .line 82
    iget-object v0, p0, Lcom/a/a/b/a/e;->h:[I

    iget p0, p0, Lcom/a/a/b/a/e;->f:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    :cond_1b
    return-void
.end method

.method public final c()V
    .registers 2

    .line 87
    sget-object v0, Lcom/a/a/d/b;->BEGIN_OBJECT:Lcom/a/a/d/b;

    invoke-virtual {p0, v0}, Lcom/a/a/b/a/e;->a(Lcom/a/a/d/b;)V

    .line 88
    invoke-virtual {p0}, Lcom/a/a/b/a/e;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/l;

    .line 1136
    iget-object v0, v0, Lcom/a/a/l;->a:Lcom/a/a/b/h;

    invoke-virtual {v0}, Lcom/a/a/b/h;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/b/a/e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final close()V
    .registers 5

    const/4 v0, 0x1

    .line 252
    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/a/a/b/a/e;->d:Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/a/a/b/a/e;->e:[Ljava/lang/Object;

    .line 253
    iput v0, p0, Lcom/a/a/b/a/e;->f:I

    return-void
.end method

.method public final d()V
    .registers 3

    .line 93
    sget-object v0, Lcom/a/a/d/b;->END_OBJECT:Lcom/a/a/d/b;

    invoke-virtual {p0, v0}, Lcom/a/a/b/a/e;->a(Lcom/a/a/d/b;)V

    .line 94
    invoke-direct {p0}, Lcom/a/a/b/a/e;->s()Ljava/lang/Object;

    .line 95
    invoke-direct {p0}, Lcom/a/a/b/a/e;->s()Ljava/lang/Object;

    .line 96
    iget v0, p0, Lcom/a/a/b/a/e;->f:I

    if-lez v0, :cond_1b

    .line 97
    iget-object v0, p0, Lcom/a/a/b/a/e;->h:[I

    iget p0, p0, Lcom/a/a/b/a/e;->f:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    :cond_1b
    return-void
.end method

.method public final e()Z
    .registers 2

    .line 102
    invoke-virtual {p0}, Lcom/a/a/b/a/e;->f()Lcom/a/a/d/b;

    move-result-object p0

    .line 103
    sget-object v0, Lcom/a/a/d/b;->END_OBJECT:Lcom/a/a/d/b;

    if-eq p0, v0, :cond_e

    sget-object v0, Lcom/a/a/d/b;->END_ARRAY:Lcom/a/a/d/b;

    if-eq p0, v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final f()Lcom/a/a/d/b;
    .registers 4

    .line 107
    :goto_0
    iget v0, p0, Lcom/a/a/b/a/e;->f:I

    if-nez v0, :cond_7

    .line 108
    sget-object p0, Lcom/a/a/d/b;->END_DOCUMENT:Lcom/a/a/d/b;

    return-object p0

    .line 111
    :cond_7
    invoke-virtual {p0}, Lcom/a/a/b/a/e;->g()Ljava/lang/Object;

    move-result-object v0

    .line 112
    instance-of v1, v0, Ljava/util/Iterator;

    if-eqz v1, :cond_36

    .line 113
    iget-object v1, p0, Lcom/a/a/b/a/e;->e:[Ljava/lang/Object;

    iget v2, p0, Lcom/a/a/b/a/e;->f:I

    add-int/lit8 v2, v2, -0x2

    aget-object v1, v1, v2

    instance-of v1, v1, Lcom/a/a/l;

    .line 114
    check-cast v0, Ljava/util/Iterator;

    .line 115
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    if-eqz v1, :cond_26

    .line 117
    sget-object p0, Lcom/a/a/d/b;->NAME:Lcom/a/a/d/b;

    return-object p0

    .line 119
    :cond_26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/b/a/e;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2e
    if-eqz v1, :cond_33

    .line 123
    sget-object p0, Lcom/a/a/d/b;->END_OBJECT:Lcom/a/a/d/b;

    return-object p0

    :cond_33
    sget-object p0, Lcom/a/a/d/b;->END_ARRAY:Lcom/a/a/d/b;

    return-object p0

    .line 125
    :cond_36
    instance-of p0, v0, Lcom/a/a/l;

    if-eqz p0, :cond_3d

    .line 126
    sget-object p0, Lcom/a/a/d/b;->BEGIN_OBJECT:Lcom/a/a/d/b;

    return-object p0

    .line 127
    :cond_3d
    instance-of p0, v0, Lcom/a/a/g;

    if-eqz p0, :cond_44

    .line 128
    sget-object p0, Lcom/a/a/d/b;->BEGIN_ARRAY:Lcom/a/a/d/b;

    return-object p0

    .line 129
    :cond_44
    instance-of p0, v0, Lcom/a/a/n;

    if-eqz p0, :cond_6b

    .line 130
    check-cast v0, Lcom/a/a/n;

    .line 1170
    iget-object p0, v0, Lcom/a/a/n;->a:Ljava/lang/Object;

    instance-of p0, p0, Ljava/lang/String;

    if-eqz p0, :cond_53

    .line 132
    sget-object p0, Lcom/a/a/d/b;->STRING:Lcom/a/a/d/b;

    return-object p0

    .line 2116
    :cond_53
    iget-object p0, v0, Lcom/a/a/n;->a:Ljava/lang/Object;

    instance-of p0, p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_5c

    .line 134
    sget-object p0, Lcom/a/a/d/b;->BOOLEAN:Lcom/a/a/d/b;

    return-object p0

    .line 2150
    :cond_5c
    iget-object p0, v0, Lcom/a/a/n;->a:Ljava/lang/Object;

    instance-of p0, p0, Ljava/lang/Number;

    if-eqz p0, :cond_65

    .line 136
    sget-object p0, Lcom/a/a/d/b;->NUMBER:Lcom/a/a/d/b;

    return-object p0

    .line 138
    :cond_65
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 140
    :cond_6b
    instance-of p0, v0, Lcom/a/a/k;

    if-eqz p0, :cond_72

    .line 141
    sget-object p0, Lcom/a/a/d/b;->NULL:Lcom/a/a/d/b;

    return-object p0

    .line 142
    :cond_72
    sget-object p0, Lcom/a/a/b/a/e;->d:Ljava/lang/Object;

    if-ne v0, p0, :cond_7e

    .line 143
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "JsonReader is closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 145
    :cond_7e
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public final g()Ljava/lang/Object;
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/a/a/b/a/e;->e:[Ljava/lang/Object;

    iget p0, p0, Lcom/a/a/b/a/e;->f:I

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .registers 5

    .line 167
    sget-object v0, Lcom/a/a/d/b;->NAME:Lcom/a/a/d/b;

    invoke-virtual {p0, v0}, Lcom/a/a/b/a/e;->a(Lcom/a/a/d/b;)V

    .line 168
    invoke-virtual {p0}, Lcom/a/a/b/a/e;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 169
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 170
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 171
    iget-object v2, p0, Lcom/a/a/b/a/e;->g:[Ljava/lang/String;

    iget v3, p0, Lcom/a/a/b/a/e;->f:I

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    .line 172
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/b/a/e;->a(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final i()Ljava/lang/String;
    .registers 5

    .line 177
    invoke-virtual {p0}, Lcom/a/a/b/a/e;->f()Lcom/a/a/d/b;

    move-result-object v0

    .line 178
    sget-object v1, Lcom/a/a/d/b;->STRING:Lcom/a/a/d/b;

    if-eq v0, v1, :cond_32

    sget-object v1, Lcom/a/a/d/b;->NUMBER:Lcom/a/a/d/b;

    if-ne v0, v1, :cond_d

    goto :goto_32

    .line 179
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/a/a/d/b;->STRING:Lcom/a/a/d/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    invoke-direct {p0}, Lcom/a/a/b/a/e;->t()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_32
    :goto_32
    invoke-direct {p0}, Lcom/a/a/b/a/e;->s()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/n;

    invoke-virtual {v0}, Lcom/a/a/n;->b()Ljava/lang/String;

    move-result-object v0

    .line 183
    iget v1, p0, Lcom/a/a/b/a/e;->f:I

    if-lez v1, :cond_4c

    .line 184
    iget-object v1, p0, Lcom/a/a/b/a/e;->h:[I

    iget p0, p0, Lcom/a/a/b/a/e;->f:I

    add-int/lit8 p0, p0, -0x1

    aget v2, v1, p0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, p0

    :cond_4c
    return-object v0
.end method

.method public final j()Z
    .registers 4

    .line 190
    sget-object v0, Lcom/a/a/d/b;->BOOLEAN:Lcom/a/a/d/b;

    invoke-virtual {p0, v0}, Lcom/a/a/b/a/e;->a(Lcom/a/a/d/b;)V

    .line 191
    invoke-direct {p0}, Lcom/a/a/b/a/e;->s()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/n;

    invoke-virtual {v0}, Lcom/a/a/n;->f()Z

    move-result v0

    .line 192
    iget v1, p0, Lcom/a/a/b/a/e;->f:I

    if-lez v1, :cond_1f

    .line 193
    iget-object v1, p0, Lcom/a/a/b/a/e;->h:[I

    iget p0, p0, Lcom/a/a/b/a/e;->f:I

    add-int/lit8 p0, p0, -0x1

    aget v2, v1, p0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, p0

    :cond_1f
    return v0
.end method

.method public final k()V
    .registers 3

    .line 199
    sget-object v0, Lcom/a/a/d/b;->NULL:Lcom/a/a/d/b;

    invoke-virtual {p0, v0}, Lcom/a/a/b/a/e;->a(Lcom/a/a/d/b;)V

    .line 200
    invoke-direct {p0}, Lcom/a/a/b/a/e;->s()Ljava/lang/Object;

    .line 201
    iget v0, p0, Lcom/a/a/b/a/e;->f:I

    if-lez v0, :cond_18

    .line 202
    iget-object v0, p0, Lcom/a/a/b/a/e;->h:[I

    iget p0, p0, Lcom/a/a/b/a/e;->f:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    :cond_18
    return-void
.end method

.method public final l()D
    .registers 5

    .line 207
    invoke-virtual {p0}, Lcom/a/a/b/a/e;->f()Lcom/a/a/d/b;

    move-result-object v0

    .line 208
    sget-object v1, Lcom/a/a/d/b;->NUMBER:Lcom/a/a/d/b;

    if-eq v0, v1, :cond_32

    sget-object v1, Lcom/a/a/d/b;->STRING:Lcom/a/a/d/b;

    if-ne v0, v1, :cond_d

    goto :goto_32

    .line 209
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/a/a/d/b;->NUMBER:Lcom/a/a/d/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    invoke-direct {p0}, Lcom/a/a/b/a/e;->t()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :cond_32
    :goto_32
    invoke-virtual {p0}, Lcom/a/a/b/a/e;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/n;

    invoke-virtual {v0}, Lcom/a/a/n;->c()D

    move-result-wide v0

    .line 2333
    iget-boolean v2, p0, Lcom/a/a/d/a;->a:Z

    if-nez v2, :cond_5d

    .line 213
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_4d

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_4d

    goto :goto_5d

    .line 214
    :cond_4d
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 216
    :cond_5d
    :goto_5d
    invoke-direct {p0}, Lcom/a/a/b/a/e;->s()Ljava/lang/Object;

    .line 217
    iget v2, p0, Lcom/a/a/b/a/e;->f:I

    if-lez v2, :cond_70

    .line 218
    iget-object v2, p0, Lcom/a/a/b/a/e;->h:[I

    iget p0, p0, Lcom/a/a/b/a/e;->f:I

    add-int/lit8 p0, p0, -0x1

    aget v3, v2, p0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, p0

    :cond_70
    return-wide v0
.end method

.method public final m()J
    .registers 5

    .line 224
    invoke-virtual {p0}, Lcom/a/a/b/a/e;->f()Lcom/a/a/d/b;

    move-result-object v0

    .line 225
    sget-object v1, Lcom/a/a/d/b;->NUMBER:Lcom/a/a/d/b;

    if-eq v0, v1, :cond_32

    sget-object v1, Lcom/a/a/d/b;->STRING:Lcom/a/a/d/b;

    if-ne v0, v1, :cond_d

    goto :goto_32

    .line 226
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/a/a/d/b;->NUMBER:Lcom/a/a/d/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    invoke-direct {p0}, Lcom/a/a/b/a/e;->t()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    :cond_32
    :goto_32
    invoke-virtual {p0}, Lcom/a/a/b/a/e;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/n;

    invoke-virtual {v0}, Lcom/a/a/n;->d()J

    move-result-wide v0

    .line 230
    invoke-direct {p0}, Lcom/a/a/b/a/e;->s()Ljava/lang/Object;

    .line 231
    iget v2, p0, Lcom/a/a/b/a/e;->f:I

    if-lez v2, :cond_4f

    .line 232
    iget-object v2, p0, Lcom/a/a/b/a/e;->h:[I

    iget p0, p0, Lcom/a/a/b/a/e;->f:I

    add-int/lit8 p0, p0, -0x1

    aget v3, v2, p0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, p0

    :cond_4f
    return-wide v0
.end method

.method public final n()I
    .registers 5

    .line 238
    invoke-virtual {p0}, Lcom/a/a/b/a/e;->f()Lcom/a/a/d/b;

    move-result-object v0

    .line 239
    sget-object v1, Lcom/a/a/d/b;->NUMBER:Lcom/a/a/d/b;

    if-eq v0, v1, :cond_32

    sget-object v1, Lcom/a/a/d/b;->STRING:Lcom/a/a/d/b;

    if-ne v0, v1, :cond_d

    goto :goto_32

    .line 240
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/a/a/d/b;->NUMBER:Lcom/a/a/d/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    invoke-direct {p0}, Lcom/a/a/b/a/e;->t()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    :cond_32
    :goto_32
    invoke-virtual {p0}, Lcom/a/a/b/a/e;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/n;

    invoke-virtual {v0}, Lcom/a/a/n;->e()I

    move-result v0

    .line 244
    invoke-direct {p0}, Lcom/a/a/b/a/e;->s()Ljava/lang/Object;

    .line 245
    iget v1, p0, Lcom/a/a/b/a/e;->f:I

    if-lez v1, :cond_4f

    .line 246
    iget-object v1, p0, Lcom/a/a/b/a/e;->h:[I

    iget p0, p0, Lcom/a/a/b/a/e;->f:I

    add-int/lit8 p0, p0, -0x1

    aget v2, v1, p0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, p0

    :cond_4f
    return v0
.end method

.method public final o()V
    .registers 4

    .line 257
    invoke-virtual {p0}, Lcom/a/a/b/a/e;->f()Lcom/a/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/a/a/d/b;->NAME:Lcom/a/a/d/b;

    if-ne v0, v1, :cond_16

    .line 258
    invoke-virtual {p0}, Lcom/a/a/b/a/e;->h()Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/a/a/b/a/e;->g:[Ljava/lang/String;

    iget v1, p0, Lcom/a/a/b/a/e;->f:I

    add-int/lit8 v1, v1, -0x2

    const-string v2, "null"

    aput-object v2, v0, v1

    goto :goto_27

    .line 261
    :cond_16
    invoke-direct {p0}, Lcom/a/a/b/a/e;->s()Ljava/lang/Object;

    .line 262
    iget v0, p0, Lcom/a/a/b/a/e;->f:I

    if-lez v0, :cond_27

    .line 263
    iget-object v0, p0, Lcom/a/a/b/a/e;->g:[Ljava/lang/String;

    iget v1, p0, Lcom/a/a/b/a/e;->f:I

    add-int/lit8 v1, v1, -0x1

    const-string v2, "null"

    aput-object v2, v0, v1

    .line 266
    :cond_27
    :goto_27
    iget v0, p0, Lcom/a/a/b/a/e;->f:I

    if-lez v0, :cond_37

    .line 267
    iget-object v0, p0, Lcom/a/a/b/a/e;->h:[I

    iget p0, p0, Lcom/a/a/b/a/e;->f:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    :cond_37
    return-void
.end method

.method public final p()Ljava/lang/String;
    .registers 4

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 300
    :goto_8
    iget v2, p0, Lcom/a/a/b/a/e;->f:I

    if-ge v1, v2, :cond_57

    .line 301
    iget-object v2, p0, Lcom/a/a/b/a/e;->e:[Ljava/lang/Object;

    aget-object v2, v2, v1

    instance-of v2, v2, Lcom/a/a/g;

    if-eqz v2, :cond_30

    .line 302
    iget-object v2, p0, Lcom/a/a/b/a/e;->e:[Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    aget-object v2, v2, v1

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_54

    const/16 v2, 0x5b

    .line 303
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/a/a/b/a/e;->h:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_54

    .line 305
    :cond_30
    iget-object v2, p0, Lcom/a/a/b/a/e;->e:[Ljava/lang/Object;

    aget-object v2, v2, v1

    instance-of v2, v2, Lcom/a/a/l;

    if-eqz v2, :cond_54

    .line 306
    iget-object v2, p0, Lcom/a/a/b/a/e;->e:[Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    aget-object v2, v2, v1

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_54

    const/16 v2, 0x2e

    .line 307
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 308
    iget-object v2, p0, Lcom/a/a/b/a/e;->g:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_54

    .line 309
    iget-object v2, p0, Lcom/a/a/b/a/e;->g:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_54
    :goto_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 314
    :cond_57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 1

    .line 272
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
