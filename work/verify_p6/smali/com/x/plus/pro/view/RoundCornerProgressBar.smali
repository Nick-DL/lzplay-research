.class public Lcom/x/plus/pro/view/RoundCornerProgressBar;
.super Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;
.source "RoundCornerProgressBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/x/plus/pro/view/BaseRoundCornerProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/widget/LinearLayout;FFFII)V
    .locals 5

    const/4 p0, 0x2

    .line 1198
    new-array v0, p0, [I

    const-string v1, "#50b2fd"

    .line 1199
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v1, "#89fdb4"

    .line 1200
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 1201
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v4, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1202
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 64
    div-int/lit8 v0, p6, 0x2

    sub-int/2addr p5, v0

    const/16 v0, 0x8

    .line 65
    new-array v0, v0, [F

    int-to-float p5, p5

    aput p5, v0, v2

    aput p5, v0, v3

    aput p5, v0, p0

    const/4 v2, 0x3

    aput p5, v0, v2

    const/4 v2, 0x4

    aput p5, v0, v2

    const/4 v2, 0x5

    aput p5, v0, v2

    const/4 v2, 0x6

    aput p5, v0, v2

    const/4 v2, 0x7

    aput p5, v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 66
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p5, v0, :cond_0

    .line 67
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    div-float/2addr p2, p3

    mul-int/2addr p6, p0

    int-to-float p0, p6

    sub-float/2addr p4, p0

    div-float/2addr p4, p2

    float-to-int p0, p4

    .line 74
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 75
    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 76
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
