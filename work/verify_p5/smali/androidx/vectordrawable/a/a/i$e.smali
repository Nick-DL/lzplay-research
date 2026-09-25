.class abstract Landroidx/vectordrawable/a/a/i$e;
.super Landroidx/vectordrawable/a/a/i$d;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "e"
.end annotation


# instance fields
.field protected l:[Landroidx/core/graphics/b$b;

.field m:Ljava/lang/String;

.field n:I

.field o:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 1693
    invoke-direct {p0, v0}, Landroidx/vectordrawable/a/a/i$d;-><init>(B)V

    const/4 v1, 0x0

    .line 1687
    iput-object v1, p0, Landroidx/vectordrawable/a/a/i$e;->l:[Landroidx/core/graphics/b$b;

    .line 1690
    iput v0, p0, Landroidx/vectordrawable/a/a/i$e;->n:I

    return-void
.end method

.method public constructor <init>(Landroidx/vectordrawable/a/a/i$e;)V
    .locals 2

    const/4 v0, 0x0

    .line 1719
    invoke-direct {p0, v0}, Landroidx/vectordrawable/a/a/i$d;-><init>(B)V

    const/4 v1, 0x0

    .line 1687
    iput-object v1, p0, Landroidx/vectordrawable/a/a/i$e;->l:[Landroidx/core/graphics/b$b;

    .line 1690
    iput v0, p0, Landroidx/vectordrawable/a/a/i$e;->n:I

    .line 1720
    iget-object v0, p1, Landroidx/vectordrawable/a/a/i$e;->m:Ljava/lang/String;

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i$e;->m:Ljava/lang/String;

    .line 1721
    iget v0, p1, Landroidx/vectordrawable/a/a/i$e;->o:I

    iput v0, p0, Landroidx/vectordrawable/a/a/i$e;->o:I

    .line 1722
    iget-object p1, p1, Landroidx/vectordrawable/a/a/i$e;->l:[Landroidx/core/graphics/b$b;

    invoke-static {p1}, Landroidx/core/graphics/b;->a([Landroidx/core/graphics/b$b;)[Landroidx/core/graphics/b$b;

    move-result-object p1

    iput-object p1, p0, Landroidx/vectordrawable/a/a/i$e;->l:[Landroidx/core/graphics/b$b;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Path;)V
    .locals 1

    .line 1726
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 1727
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i$e;->l:[Landroidx/core/graphics/b$b;

    if-eqz v0, :cond_0

    .line 1728
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i$e;->l:[Landroidx/core/graphics/b$b;

    invoke-static {p0, p1}, Landroidx/core/graphics/b$b;->a([Landroidx/core/graphics/b$b;Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPathData()[Landroidx/core/graphics/b$b;
    .locals 0

    .line 1750
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i$e;->l:[Landroidx/core/graphics/b$b;

    return-object p0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 0

    .line 1733
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i$e;->m:Ljava/lang/String;

    return-object p0
.end method

.method public setPathData([Landroidx/core/graphics/b$b;)V
    .locals 5

    .line 1755
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i$e;->l:[Landroidx/core/graphics/b$b;

    invoke-static {v0, p1}, Landroidx/core/graphics/b;->a([Landroidx/core/graphics/b$b;[Landroidx/core/graphics/b$b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1757
    invoke-static {p1}, Landroidx/core/graphics/b;->a([Landroidx/core/graphics/b$b;)[Landroidx/core/graphics/b$b;

    move-result-object p1

    iput-object p1, p0, Landroidx/vectordrawable/a/a/i$e;->l:[Landroidx/core/graphics/b$b;

    return-void

    .line 1759
    :cond_0
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i$e;->l:[Landroidx/core/graphics/b$b;

    const/4 v0, 0x0

    move v1, v0

    .line 2163
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 2164
    aget-object v2, p0, v1

    aget-object v3, p1, v1

    iget-char v3, v3, Landroidx/core/graphics/b$b;->a:C

    iput-char v3, v2, Landroidx/core/graphics/b$b;->a:C

    move v2, v0

    .line 2165
    :goto_1
    aget-object v3, p1, v1

    iget-object v3, v3, Landroidx/core/graphics/b$b;->b:[F

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 2166
    aget-object v3, p0, v1

    iget-object v3, v3, Landroidx/core/graphics/b$b;->b:[F

    aget-object v4, p1, v1

    iget-object v4, v4, Landroidx/core/graphics/b$b;->b:[F

    aget v4, v4, v2

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
