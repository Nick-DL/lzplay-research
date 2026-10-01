.class public Lcom/x/plus/pro/view/LeftHalfClicleView;
.super Landroid/view/View;
.source "LeftHalfClicleView.java"


# instance fields
.field private a:Landroid/graphics/Path;

.field private b:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0}, Lcom/x/plus/pro/view/LeftHalfClicleView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0}, Lcom/x/plus/pro/view/LeftHalfClicleView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0}, Lcom/x/plus/pro/view/LeftHalfClicleView;->a()V

    return-void
.end method

.method private a()V
    .registers 5

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/x/plus/pro/view/LeftHalfClicleView;->b:Landroid/graphics/Paint;

    .line 39
    iget-object v0, p0, Lcom/x/plus/pro/view/LeftHalfClicleView;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/x/plus/pro/view/LeftHalfClicleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f04003b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    iget-object v0, p0, Lcom/x/plus/pro/view/LeftHalfClicleView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    iget-object v0, p0, Lcom/x/plus/pro/view/LeftHalfClicleView;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/x/plus/pro/view/LeftHalfClicleView;->a:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 47
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 49
    iget-object v0, p0, Lcom/x/plus/pro/view/LeftHalfClicleView;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 50
    iget-object v0, p0, Lcom/x/plus/pro/view/LeftHalfClicleView;->a:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/x/plus/pro/view/LeftHalfClicleView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 51
    iget-object v0, p0, Lcom/x/plus/pro/view/LeftHalfClicleView;->a:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/x/plus/pro/view/LeftHalfClicleView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 52
    iget-object v0, p0, Lcom/x/plus/pro/view/LeftHalfClicleView;->a:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 53
    iget-object v0, p0, Lcom/x/plus/pro/view/LeftHalfClicleView;->a:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/x/plus/pro/view/LeftHalfClicleView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 54
    iget-object v0, p0, Lcom/x/plus/pro/view/LeftHalfClicleView;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 55
    iget-object v0, p0, Lcom/x/plus/pro/view/LeftHalfClicleView;->a:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/x/plus/pro/view/LeftHalfClicleView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
