.class public Lcom/x/plus/pro/view/RightHalfClicleView;
.super Landroid/view/View;
.source "RightHalfClicleView.java"


# instance fields
.field private a:Landroid/graphics/Path;

.field private b:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0}, Lcom/x/plus/pro/view/RightHalfClicleView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0}, Lcom/x/plus/pro/view/RightHalfClicleView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0}, Lcom/x/plus/pro/view/RightHalfClicleView;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/x/plus/pro/view/RightHalfClicleView;->b:Landroid/graphics/Paint;

    .line 38
    iget-object v0, p0, Lcom/x/plus/pro/view/RightHalfClicleView;->b:Landroid/graphics/Paint;

    const-string v1, "#4C7FFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    iget-object v0, p0, Lcom/x/plus/pro/view/RightHalfClicleView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    iget-object v0, p0, Lcom/x/plus/pro/view/RightHalfClicleView;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/x/plus/pro/view/RightHalfClicleView;->a:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 46
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 48
    iget-object v0, p0, Lcom/x/plus/pro/view/RightHalfClicleView;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 49
    iget-object v0, p0, Lcom/x/plus/pro/view/RightHalfClicleView;->a:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 50
    iget-object v0, p0, Lcom/x/plus/pro/view/RightHalfClicleView;->a:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/x/plus/pro/view/RightHalfClicleView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/x/plus/pro/view/RightHalfClicleView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/x/plus/pro/view/RightHalfClicleView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 51
    iget-object v0, p0, Lcom/x/plus/pro/view/RightHalfClicleView;->a:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/x/plus/pro/view/RightHalfClicleView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 52
    iget-object v0, p0, Lcom/x/plus/pro/view/RightHalfClicleView;->a:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 53
    iget-object v0, p0, Lcom/x/plus/pro/view/RightHalfClicleView;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 54
    iget-object v0, p0, Lcom/x/plus/pro/view/RightHalfClicleView;->a:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/x/plus/pro/view/RightHalfClicleView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
