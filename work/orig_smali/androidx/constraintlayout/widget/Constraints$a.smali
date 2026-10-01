.class public final Landroidx/constraintlayout/widget/Constraints$a;
.super Landroidx/constraintlayout/widget/ConstraintLayout$a;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/Constraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public an:F

.field public ao:Z

.field public ap:F

.field public aq:F

.field public ar:F

.field public as:F

.field public at:F

.field public au:F

.field public av:F

.field public aw:F

.field public ax:F

.field public ay:F

.field public az:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 82
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 67
    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$a;->an:F

    const/4 v1, 0x0

    .line 68
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/Constraints$a;->ao:Z

    const/4 v1, 0x0

    .line 69
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$a;->ap:F

    .line 70
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$a;->aq:F

    .line 71
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$a;->ar:F

    .line 72
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$a;->as:F

    .line 73
    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$a;->at:F

    .line 74
    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$a;->au:F

    .line 75
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$a;->av:F

    .line 76
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$a;->aw:F

    .line 77
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$a;->ax:F

    .line 78
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$a;->ay:F

    .line 79
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$a;->az:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 90
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 67
    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$a;->an:F

    const/4 v1, 0x0

    .line 68
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/Constraints$a;->ao:Z

    const/4 v2, 0x0

    .line 69
    iput v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->ap:F

    .line 70
    iput v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->aq:F

    .line 71
    iput v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->ar:F

    .line 72
    iput v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->as:F

    .line 73
    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$a;->at:F

    .line 74
    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$a;->au:F

    .line 75
    iput v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->av:F

    .line 76
    iput v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->aw:F

    .line 77
    iput v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->ax:F

    .line 78
    iput v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->ay:F

    .line 79
    iput v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->az:F

    .line 91
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    :goto_2b
    if-ge v1, p2, :cond_d7

    .line 94
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 95
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_alpha:I

    if-ne v0, v2, :cond_3f

    .line 96
    iget v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->an:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$a;->an:F

    goto/16 :goto_d3

    .line 97
    :cond_3f
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_elevation:I

    if-ne v0, v2, :cond_50

    .line 98
    iget v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->ap:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$a;->ap:F

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/Constraints$a;->ao:Z

    goto/16 :goto_d3

    .line 100
    :cond_50
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_rotationX:I

    if-ne v0, v2, :cond_5e

    .line 101
    iget v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->ar:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$a;->ar:F

    goto/16 :goto_d3

    .line 102
    :cond_5e
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_rotationY:I

    if-ne v0, v2, :cond_6c

    .line 103
    iget v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->as:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$a;->as:F

    goto/16 :goto_d3

    .line 104
    :cond_6c
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_rotation:I

    if-ne v0, v2, :cond_79

    .line 105
    iget v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->aq:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$a;->aq:F

    goto :goto_d3

    .line 106
    :cond_79
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_scaleX:I

    if-ne v0, v2, :cond_86

    .line 107
    iget v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->at:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$a;->at:F

    goto :goto_d3

    .line 108
    :cond_86
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_scaleY:I

    if-ne v0, v2, :cond_93

    .line 109
    iget v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->au:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$a;->au:F

    goto :goto_d3

    .line 110
    :cond_93
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_transformPivotX:I

    if-ne v0, v2, :cond_a0

    .line 111
    iget v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->av:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$a;->av:F

    goto :goto_d3

    .line 112
    :cond_a0
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_transformPivotY:I

    if-ne v0, v2, :cond_ad

    .line 113
    iget v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->aw:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$a;->aw:F

    goto :goto_d3

    .line 114
    :cond_ad
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_translationX:I

    if-ne v0, v2, :cond_ba

    .line 115
    iget v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->ax:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$a;->ax:F

    goto :goto_d3

    .line 116
    :cond_ba
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_translationY:I

    if-ne v0, v2, :cond_c7

    .line 117
    iget v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->ay:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$a;->ay:F

    goto :goto_d3

    .line 118
    :cond_c7
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_translationZ:I

    if-ne v0, v2, :cond_d3

    .line 119
    iget v2, p0, Landroidx/constraintlayout/widget/Constraints$a;->az:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$a;->ax:F

    :cond_d3
    :goto_d3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2b

    :cond_d7
    return-void
.end method
