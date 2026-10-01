.class public final Landroidx/core/e/y;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroidx/core/e/y;->a:Ljava/lang/Object;

    return-void
.end method

.method static a(Ljava/lang/Object;)Landroidx/core/e/y;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 393
    :cond_4
    new-instance v0, Landroidx/core/e/y;

    invoke-direct {v0, p0}, Landroidx/core/e/y;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method static a(Landroidx/core/e/y;)Ljava/lang/Object;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 397
    :cond_4
    iget-object p0, p0, Landroidx/core/e/y;->a:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final a()I
    .registers 3

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_f

    .line 63
    iget-object p0, p0, Landroidx/core/e/y;->a:Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final a(IIII)Landroidx/core/e/y;
    .registers 7

    .line 213
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_14

    .line 214
    new-instance v0, Landroidx/core/e/y;

    iget-object p0, p0, Landroidx/core/e/y;->a:Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowInsets;

    .line 215
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/core/e/y;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b()I
    .registers 3

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_f

    .line 80
    iget-object p0, p0, Landroidx/core/e/y;->a:Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final c()I
    .registers 3

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_f

    .line 97
    iget-object p0, p0, Landroidx/core/e/y;->a:Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final d()I
    .registers 3

    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_f

    .line 114
    iget-object p0, p0, Landroidx/core/e/y;->a:Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    .line 380
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    .line 383
    :cond_12
    check-cast p1, Landroidx/core/e/y;

    .line 384
    iget-object v2, p0, Landroidx/core/e/y;->a:Ljava/lang/Object;

    if-nez v2, :cond_1e

    iget-object p0, p1, Landroidx/core/e/y;->a:Ljava/lang/Object;

    if-nez p0, :cond_1d

    return v0

    :cond_1d
    return v1

    :cond_1e
    iget-object p0, p0, Landroidx/core/e/y;->a:Ljava/lang/Object;

    iget-object p1, p1, Landroidx/core/e/y;->a:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_27
    :goto_27
    return v1
.end method

.method public final hashCode()I
    .registers 2

    .line 389
    iget-object v0, p0, Landroidx/core/e/y;->a:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget-object p0, p0, Landroidx/core/e/y;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
