.class public final Landroidx/appcompat/view/a;
.super Ljava/lang/Object;
.source "ActionBarPolicy.java"


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroidx/appcompat/view/a;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroidx/appcompat/view/a;
    .locals 1

    .line 43
    new-instance v0, Landroidx/appcompat/view/a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 3

    .line 56
    iget-object p0, p0, Landroidx/appcompat/view/a;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 57
    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 58
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 59
    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    if-gt p0, v2, :cond_6

    if-gt v0, v2, :cond_6

    const/16 p0, 0x2d0

    const/16 v2, 0x3c0

    if-le v0, v2, :cond_0

    if-gt v1, p0, :cond_6

    :cond_0
    if-le v0, p0, :cond_1

    if-le v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 p0, 0x1f4

    if-ge v0, p0, :cond_5

    const/16 p0, 0x1e0

    const/16 v2, 0x280

    if-le v0, v2, :cond_2

    if-gt v1, p0, :cond_5

    :cond_2
    if-le v0, p0, :cond_3

    if-le v1, v2, :cond_3

    goto :goto_0

    :cond_3
    const/16 p0, 0x168

    if-lt v0, p0, :cond_4

    const/4 p0, 0x3

    return p0

    :cond_4
    const/4 p0, 0x2

    return p0

    :cond_5
    :goto_0
    const/4 p0, 0x4

    return p0

    :cond_6
    :goto_1
    const/4 p0, 0x5

    return p0
.end method

.method public final b()Z
    .locals 1

    .line 90
    iget-object p0, p0, Landroidx/appcompat/view/a;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Landroidx/appcompat/R$bool;->abc_action_bar_embed_tabs:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public final c()I
    .locals 5

    .line 94
    iget-object v0, p0, Landroidx/appcompat/view/a;->a:Landroid/content/Context;

    sget-object v1, Landroidx/appcompat/R$styleable;->ActionBar:[I

    sget v2, Landroidx/appcompat/R$attr;->actionBarStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    sget v1, Landroidx/appcompat/R$styleable;->ActionBar_height:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    .line 97
    iget-object v2, p0, Landroidx/appcompat/view/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 98
    invoke-virtual {p0}, Landroidx/appcompat/view/a;->b()Z

    move-result p0

    if-nez p0, :cond_0

    .line 100
    sget p0, Landroidx/appcompat/R$dimen;->abc_action_bar_stacked_max_height:I

    .line 101
    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 100
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 103
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v1
.end method

.method public final d()Z
    .locals 1

    .line 110
    iget-object p0, p0, Landroidx/appcompat/view/a;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0xe

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final e()I
    .locals 1

    .line 115
    iget-object p0, p0, Landroidx/appcompat/view/a;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Landroidx/appcompat/R$dimen;->abc_action_bar_stacked_tab_max_width:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method
