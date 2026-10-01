.class public final Landroidx/constraintlayout/a/h;
.super Ljava/lang/Object;
.source "SolverVariable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/a/h$a;
    }
.end annotation


# static fields
.field private static j:I = 0x1

.field private static k:I = 0x1

.field private static l:I = 0x1

.field private static m:I = 0x1

.field private static n:I = 0x1


# instance fields
.field public a:I

.field b:I

.field public c:I

.field public d:F

.field e:[F

.field f:I

.field g:[Landroidx/constraintlayout/a/b;

.field h:I

.field public i:I

.field private o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Landroidx/constraintlayout/a/h;->a:I

    .line 50
    iput v0, p0, Landroidx/constraintlayout/a/h;->b:I

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Landroidx/constraintlayout/a/h;->c:I

    const/4 v1, 0x7

    .line 55
    new-array v1, v1, [F

    iput-object v1, p0, Landroidx/constraintlayout/a/h;->e:[F

    const/16 v1, 0x8

    .line 58
    new-array v1, v1, [Landroidx/constraintlayout/a/b;

    iput-object v1, p0, Landroidx/constraintlayout/a/h;->g:[Landroidx/constraintlayout/a/b;

    .line 59
    iput v0, p0, Landroidx/constraintlayout/a/h;->h:I

    .line 60
    iput v0, p0, Landroidx/constraintlayout/a/h;->i:I

    .line 120
    iput p1, p0, Landroidx/constraintlayout/a/h;->f:I

    return-void
.end method

.method static a()V
    .registers 1

    .line 89
    sget v0, Landroidx/constraintlayout/a/h;->k:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroidx/constraintlayout/a/h;->k:I

    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/a/b;)V
    .registers 4

    const/4 v0, 0x0

    .line 163
    :goto_1
    iget v1, p0, Landroidx/constraintlayout/a/h;->h:I

    if-ge v0, v1, :cond_f

    .line 164
    iget-object v1, p0, Landroidx/constraintlayout/a/h;->g:[Landroidx/constraintlayout/a/b;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_c

    return-void

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 168
    :cond_f
    iget v0, p0, Landroidx/constraintlayout/a/h;->h:I

    iget-object v1, p0, Landroidx/constraintlayout/a/h;->g:[Landroidx/constraintlayout/a/b;

    array-length v1, v1

    if-lt v0, v1, :cond_25

    .line 169
    iget-object v0, p0, Landroidx/constraintlayout/a/h;->g:[Landroidx/constraintlayout/a/b;

    iget-object v1, p0, Landroidx/constraintlayout/a/h;->g:[Landroidx/constraintlayout/a/b;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/a/b;

    iput-object v0, p0, Landroidx/constraintlayout/a/h;->g:[Landroidx/constraintlayout/a/b;

    .line 171
    :cond_25
    iget-object v0, p0, Landroidx/constraintlayout/a/h;->g:[Landroidx/constraintlayout/a/b;

    iget v1, p0, Landroidx/constraintlayout/a/h;->h:I

    aput-object p1, v0, v1

    .line 172
    iget p1, p0, Landroidx/constraintlayout/a/h;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/constraintlayout/a/h;->h:I

    return-void
.end method

.method public final b()V
    .registers 3

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Landroidx/constraintlayout/a/h;->o:Ljava/lang/String;

    .line 198
    sget v0, Landroidx/constraintlayout/a/h$a;->UNKNOWN$2fe29fa6:I

    iput v0, p0, Landroidx/constraintlayout/a/h;->f:I

    const/4 v0, 0x0

    .line 199
    iput v0, p0, Landroidx/constraintlayout/a/h;->c:I

    const/4 v1, -0x1

    .line 200
    iput v1, p0, Landroidx/constraintlayout/a/h;->a:I

    .line 201
    iput v1, p0, Landroidx/constraintlayout/a/h;->b:I

    const/4 v1, 0x0

    .line 202
    iput v1, p0, Landroidx/constraintlayout/a/h;->d:F

    .line 203
    iput v0, p0, Landroidx/constraintlayout/a/h;->h:I

    .line 204
    iput v0, p0, Landroidx/constraintlayout/a/h;->i:I

    return-void
.end method

.method public final b(Landroidx/constraintlayout/a/b;)V
    .registers 8

    .line 176
    iget v0, p0, Landroidx/constraintlayout/a/h;->h:I

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    if-ge v2, v0, :cond_2b

    .line 178
    iget-object v3, p0, Landroidx/constraintlayout/a/h;->g:[Landroidx/constraintlayout/a/b;

    aget-object v3, v3, v2

    if-ne v3, p1, :cond_28

    :goto_c
    sub-int p1, v0, v2

    add-int/lit8 p1, p1, -0x1

    if-ge v1, p1, :cond_21

    .line 180
    iget-object p1, p0, Landroidx/constraintlayout/a/h;->g:[Landroidx/constraintlayout/a/b;

    add-int v3, v2, v1

    iget-object v4, p0, Landroidx/constraintlayout/a/h;->g:[Landroidx/constraintlayout/a/b;

    add-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    aput-object v4, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 182
    :cond_21
    iget p1, p0, Landroidx/constraintlayout/a/h;->h:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/constraintlayout/a/h;->h:I

    return-void

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_2b
    return-void
.end method

.method public final c(Landroidx/constraintlayout/a/b;)V
    .registers 7

    .line 189
    iget v0, p0, Landroidx/constraintlayout/a/h;->h:I

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    if-ge v2, v0, :cond_16

    .line 191
    iget-object v3, p0, Landroidx/constraintlayout/a/h;->g:[Landroidx/constraintlayout/a/b;

    aget-object v3, v3, v2

    iget-object v3, v3, Landroidx/constraintlayout/a/b;->d:Landroidx/constraintlayout/a/a;

    iget-object v4, p0, Landroidx/constraintlayout/a/h;->g:[Landroidx/constraintlayout/a/b;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4, p1}, Landroidx/constraintlayout/a/a;->a(Landroidx/constraintlayout/a/b;Landroidx/constraintlayout/a/b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 193
    :cond_16
    iput v1, p0, Landroidx/constraintlayout/a/h;->h:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    const-string v0, ""

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/constraintlayout/a/h;->o:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
