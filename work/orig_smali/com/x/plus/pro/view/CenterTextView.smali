.class public Lcom/x/plus/pro/view/CenterTextView;
.super Landroid/widget/TextView;
.source "CenterTextView.java"


# instance fields
.field private a:Landroid/text/StaticLayout;

.field private b:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 43
    iget-object p0, p0, Lcom/x/plus/pro/view/CenterTextView;->a:Landroid/text/StaticLayout;

    invoke-virtual {p0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 13

    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 1035
    new-instance p1, Landroid/text/TextPaint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/x/plus/pro/view/CenterTextView;->b:Landroid/text/TextPaint;

    .line 1036
    iget-object p1, p0, Lcom/x/plus/pro/view/CenterTextView;->b:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/x/plus/pro/view/CenterTextView;->getTextSize()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1037
    iget-object p1, p0, Lcom/x/plus/pro/view/CenterTextView;->b:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/x/plus/pro/view/CenterTextView;->getCurrentTextColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setColor(I)V

    .line 1038
    new-instance p1, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Lcom/x/plus/pro/view/CenterTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/x/plus/pro/view/CenterTextView;->b:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/x/plus/pro/view/CenterTextView;->getWidth()I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p1, p0, Lcom/x/plus/pro/view/CenterTextView;->a:Landroid/text/StaticLayout;

    return-void
.end method
