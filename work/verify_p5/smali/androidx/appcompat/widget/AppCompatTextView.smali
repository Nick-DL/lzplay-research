.class public Landroidx/appcompat/widget/AppCompatTextView;
.super Landroid/widget/TextView;
.source "AppCompatTextView.java"

# interfaces
.implements Landroidx/core/e/q;
.implements Landroidx/core/widget/b;
.implements Landroidx/core/widget/j;


# instance fields
.field private final a:Landroidx/appcompat/widget/d;

.field private final b:Landroidx/appcompat/widget/m;

.field private final c:Landroidx/appcompat/widget/l;

.field private e:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Landroidx/core/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    .line 95
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 99
    invoke-static {p1}, Landroidx/appcompat/widget/ab;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    new-instance p1, Landroidx/appcompat/widget/d;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/d;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->a:Landroidx/appcompat/widget/d;

    .line 102
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->a:Landroidx/appcompat/widget/d;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/d;->a(Landroid/util/AttributeSet;I)V

    .line 104
    new-instance p1, Landroidx/appcompat/widget/m;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/m;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    .line 105
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/m;->a(Landroid/util/AttributeSet;I)V

    .line 106
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    invoke-virtual {p1}, Landroidx/appcompat/widget/m;->a()V

    .line 108
    new-instance p1, Landroidx/appcompat/widget/l;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/l;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->c:Landroidx/appcompat/widget/l;

    return-void
.end method

.method private a()V
    .locals 2

    .line 482
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->e:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 484
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->e:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    .line 485
    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatTextView;->e:Ljava/util/concurrent/Future;

    .line 486
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/c/a;

    invoke-static {p0, v0}, Landroidx/core/widget/h;->a(Landroid/widget/TextView;Landroidx/core/c/a;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 193
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 194
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->a:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->a:Landroidx/appcompat/widget/d;

    invoke-virtual {v0}, Landroidx/appcompat/widget/d;->d()V

    .line 197
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    if-eqz v0, :cond_1

    .line 198
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    invoke-virtual {p0}, Landroidx/appcompat/widget/m;->a()V

    :cond_1
    return-void
.end method

.method public getAutoSizeMaxTextSize()I
    .locals 1

    .line 365
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatTextView;->d:Z

    if-eqz v0, :cond_0

    .line 366
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeMaxTextSize()I

    move-result p0

    return p0

    .line 368
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    if-eqz v0, :cond_1

    .line 369
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    .line 5637
    iget-object p0, p0, Landroidx/appcompat/widget/m;->c:Landroidx/appcompat/widget/n;

    .line 6410
    iget p0, p0, Landroidx/appcompat/widget/n;->d:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getAutoSizeMinTextSize()I
    .locals 1

    .line 346
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatTextView;->d:Z

    if-eqz v0, :cond_0

    .line 347
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeMinTextSize()I

    move-result p0

    return p0

    .line 349
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    if-eqz v0, :cond_1

    .line 350
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    .line 4633
    iget-object p0, p0, Landroidx/appcompat/widget/m;->c:Landroidx/appcompat/widget/n;

    .line 5394
    iget p0, p0, Landroidx/appcompat/widget/n;->c:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getAutoSizeStepGranularity()I
    .locals 1

    .line 327
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatTextView;->d:Z

    if-eqz v0, :cond_0

    .line 328
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result p0

    return p0

    .line 330
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    if-eqz v0, :cond_1

    .line 331
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    .line 3629
    iget-object p0, p0, Landroidx/appcompat/widget/m;->c:Landroidx/appcompat/widget/n;

    .line 4378
    iget p0, p0, Landroidx/appcompat/widget/n;->b:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getAutoSizeTextAvailableSizes()[I
    .locals 1

    .line 384
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatTextView;->d:Z

    if-eqz v0, :cond_0

    .line 385
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeTextAvailableSizes()[I

    move-result-object p0

    return-object p0

    .line 387
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    if-eqz v0, :cond_1

    .line 388
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    .line 6641
    iget-object p0, p0, Landroidx/appcompat/widget/m;->c:Landroidx/appcompat/widget/n;

    .line 7423
    iget-object p0, p0, Landroidx/appcompat/widget/n;->e:[I

    return-object p0

    :cond_1
    const/4 p0, 0x0

    .line 391
    new-array p0, p0, [I

    return-object p0
.end method

.method public getAutoSizeTextType()I
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 306
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatTextView;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 307
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeTextType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    return v1

    .line 311
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    if-eqz v0, :cond_2

    .line 312
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    .line 2625
    iget-object p0, p0, Landroidx/appcompat/widget/m;->c:Landroidx/appcompat/widget/n;

    .line 3364
    iget p0, p0, Landroidx/appcompat/widget/n;->a:I

    return p0

    :cond_2
    return v1
.end method

.method public getFirstBaselineToTopHeight()I
    .locals 1

    .line 7768
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public getLastBaselineToBottomHeight()I
    .locals 1

    .line 7778
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v0, p0

    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 151
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->a:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextView;->a:Landroidx/appcompat/widget/d;

    .line 152
    invoke-virtual {p0}, Landroidx/appcompat/widget/d;->b()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 179
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->a:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextView;->a:Landroidx/appcompat/widget/d;

    .line 180
    invoke-virtual {p0}, Landroidx/appcompat/widget/d;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 634
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    .line 17646
    iget-object v0, p0, Landroidx/appcompat/widget/m;->b:Landroidx/appcompat/widget/ac;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/m;->b:Landroidx/appcompat/widget/ac;

    iget-object p0, p0, Landroidx/appcompat/widget/ac;->a:Landroid/content/res/ColorStateList;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 677
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    .line 17660
    iget-object v0, p0, Landroidx/appcompat/widget/m;->b:Landroidx/appcompat/widget/ac;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/m;->b:Landroidx/appcompat/widget/ac;

    iget-object p0, p0, Landroidx/appcompat/widget/ac;->b:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 0

    .line 495
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextView;->a()V

    .line 496
    invoke-super {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 2

    .line 523
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->c:Landroidx/appcompat/widget/l;

    if-nez v0, :cond_0

    goto :goto_0

    .line 526
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextView;->c:Landroidx/appcompat/widget/l;

    invoke-virtual {p0}, Landroidx/appcompat/widget/l;->a()Landroid/view/textclassifier/TextClassifier;

    move-result-object p0

    return-object p0

    .line 524
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object p0

    return-object p0
.end method

.method public getTextMetricsParamsCompat()Landroidx/core/c/a$a;
    .locals 0

    .line 454
    invoke-static {p0}, Landroidx/core/widget/h;->a(Landroid/widget/TextView;)Landroidx/core/c/a$a;

    move-result-object p0

    return-object p0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 396
    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {v0, p1, p0}, Landroidx/appcompat/widget/g;->a(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

    move-result-object p0

    return-object p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 204
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 205
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    if-eqz p1, :cond_0

    .line 206
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    invoke-virtual {p0}, Landroidx/appcompat/widget/m;->b()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 550
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextView;->a()V

    .line 551
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 223
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 224
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    if-eqz p1, :cond_0

    sget-boolean p1, Landroidx/appcompat/widget/AppCompatTextView;->d:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    .line 1598
    iget-object p1, p1, Landroidx/appcompat/widget/m;->c:Landroidx/appcompat/widget/n;

    invoke-virtual {p1}, Landroidx/appcompat/widget/n;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 225
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    .line 2592
    iget-object p0, p0, Landroidx/appcompat/widget/m;->c:Landroidx/appcompat/widget/n;

    invoke-virtual {p0}, Landroidx/appcompat/widget/n;->a()V

    :cond_0
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 1

    .line 263
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatTextView;->d:Z

    if-eqz v0, :cond_0

    .line 264
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    if-eqz v0, :cond_1

    .line 268
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/m;->a(IIII)V

    :cond_1
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 1

    .line 285
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatTextView;->d:Z

    if-eqz v0, :cond_0

    .line 286
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    if-eqz v0, :cond_1

    .line 289
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/m;->a([II)V

    :cond_1
    return-void
.end method

.method public setAutoSizeTextTypeWithDefaults(I)V
    .locals 1

    .line 240
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatTextView;->d:Z

    if-eqz v0, :cond_0

    .line 241
    invoke-super {p0, p1}, Landroid/widget/TextView;->setAutoSizeTextTypeWithDefaults(I)V

    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    if-eqz v0, :cond_1

    .line 244
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/m;->a(I)V

    :cond_1
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 121
    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->a:Landroidx/appcompat/widget/d;

    if-eqz p1, :cond_0

    .line 123
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextView;->a:Landroidx/appcompat/widget/d;

    invoke-virtual {p0}, Landroidx/appcompat/widget/d;->a()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 113
    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 114
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->a:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_0

    .line 115
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextView;->a:Landroidx/appcompat/widget/d;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/d;->a(I)V

    :cond_0
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 557
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 558
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    if-eqz p1, :cond_0

    .line 559
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    .line 12532
    invoke-virtual {p0}, Landroidx/appcompat/widget/m;->a()V

    :cond_0
    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 567
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 568
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    if-eqz p1, :cond_0

    .line 569
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    .line 13532
    invoke-virtual {p0}, Landroidx/appcompat/widget/m;->a()V

    :cond_0
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 2

    .line 609
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 611
    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p2, :cond_1

    .line 612
    invoke-static {v0, p2}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    if-eqz p3, :cond_2

    .line 613
    invoke-static {v0, p3}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_2

    :cond_2
    move-object p3, v1

    :goto_2
    if-eqz p4, :cond_3

    .line 614
    invoke-static {v0, p4}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 610
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 615
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    if-eqz p1, :cond_4

    .line 616
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    .line 17532
    invoke-virtual {p0}, Landroidx/appcompat/widget/m;->a()V

    :cond_4
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 599
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 600
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    if-eqz p1, :cond_0

    .line 601
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    .line 16532
    invoke-virtual {p0}, Landroidx/appcompat/widget/m;->a()V

    :cond_0
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 2

    .line 584
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 586
    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p2, :cond_1

    .line 587
    invoke-static {v0, p2}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    if-eqz p3, :cond_2

    .line 588
    invoke-static {v0, p3}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_2

    :cond_2
    move-object p3, v1

    :goto_2
    if-eqz p4, :cond_3

    .line 589
    invoke-static {v0, p4}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 585
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 590
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    if-eqz p1, :cond_4

    .line 591
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    .line 15532
    invoke-virtual {p0}, Landroidx/appcompat/widget/m;->a()V

    :cond_4
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 576
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 577
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    if-eqz p1, :cond_0

    .line 578
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    .line 14532
    invoke-virtual {p0}, Landroidx/appcompat/widget/m;->a()V

    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 442
    invoke-static {p0, p1}, Landroidx/core/widget/h;->a(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    .line 441
    invoke-super {p0, p1}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setFirstBaselineToTopHeight(I)V
    .locals 2

    .line 402
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 403
    invoke-super {p0, p1}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    return-void

    .line 405
    :cond_0
    invoke-static {p0, p1}, Landroidx/core/widget/h;->b(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setLastBaselineToBottomHeight(I)V
    .locals 2

    .line 412
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 413
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLastBaselineToBottomHeight(I)V

    return-void

    .line 415
    :cond_0
    invoke-static {p0, p1}, Landroidx/core/widget/h;->c(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setLineHeight(I)V
    .locals 0

    .line 432
    invoke-static {p0, p1}, Landroidx/core/widget/h;->d(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setPrecomputedText(Landroidx/core/c/a;)V
    .locals 0

    .line 478
    invoke-static {p0, p1}, Landroidx/core/widget/h;->a(Landroid/widget/TextView;Landroidx/core/c/a;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 136
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->a:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_0

    .line 137
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextView;->a:Landroidx/appcompat/widget/d;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/d;->a(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 164
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->a:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_0

    .line 165
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextView;->a:Landroidx/appcompat/widget/d;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/d;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 657
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    .line 17650
    iget-object v1, v0, Landroidx/appcompat/widget/m;->b:Landroidx/appcompat/widget/ac;

    if-nez v1, :cond_0

    .line 17651
    new-instance v1, Landroidx/appcompat/widget/ac;

    invoke-direct {v1}, Landroidx/appcompat/widget/ac;-><init>()V

    iput-object v1, v0, Landroidx/appcompat/widget/m;->b:Landroidx/appcompat/widget/ac;

    .line 17653
    :cond_0
    iget-object v1, v0, Landroidx/appcompat/widget/m;->b:Landroidx/appcompat/widget/ac;

    iput-object p1, v1, Landroidx/appcompat/widget/ac;->a:Landroid/content/res/ColorStateList;

    .line 17654
    iget-object v1, v0, Landroidx/appcompat/widget/m;->b:Landroidx/appcompat/widget/ac;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v1, Landroidx/appcompat/widget/ac;->d:Z

    .line 17655
    invoke-virtual {v0}, Landroidx/appcompat/widget/m;->c()V

    .line 658
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    invoke-virtual {p0}, Landroidx/appcompat/widget/m;->a()V

    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 697
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    .line 17664
    iget-object v1, v0, Landroidx/appcompat/widget/m;->b:Landroidx/appcompat/widget/ac;

    if-nez v1, :cond_0

    .line 17665
    new-instance v1, Landroidx/appcompat/widget/ac;

    invoke-direct {v1}, Landroidx/appcompat/widget/ac;-><init>()V

    iput-object v1, v0, Landroidx/appcompat/widget/m;->b:Landroidx/appcompat/widget/ac;

    .line 17667
    :cond_0
    iget-object v1, v0, Landroidx/appcompat/widget/m;->b:Landroidx/appcompat/widget/ac;

    iput-object p1, v1, Landroidx/appcompat/widget/ac;->b:Landroid/graphics/PorterDuff$Mode;

    .line 17668
    iget-object v1, v0, Landroidx/appcompat/widget/m;->b:Landroidx/appcompat/widget/ac;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v1, Landroidx/appcompat/widget/ac;->c:Z

    .line 17669
    invoke-virtual {v0}, Landroidx/appcompat/widget/m;->c()V

    .line 698
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    invoke-virtual {p0}, Landroidx/appcompat/widget/m;->a()V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .line 185
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 186
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    if-eqz v0, :cond_0

    .line 187
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/m;->a(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .locals 2

    .line 505
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->c:Landroidx/appcompat/widget/l;

    if-nez v0, :cond_0

    goto :goto_0

    .line 509
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextView;->c:Landroidx/appcompat/widget/l;

    .line 12051
    iput-object p1, p0, Landroidx/appcompat/widget/l;->a:Landroid/view/textclassifier/TextClassifier;

    return-void

    .line 506
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V

    return-void
.end method

.method public setTextFuture(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Landroidx/core/c/a;",
            ">;)V"
        }
    .end annotation

    .line 542
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->e:Ljava/util/concurrent/Future;

    if-eqz p1, :cond_0

    .line 544
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setTextMetricsParamsCompat(Landroidx/core/c/a$a;)V
    .locals 2

    .line 7842
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_6

    .line 8231
    iget-object v0, p1, Landroidx/core/c/a$a;->b:Landroid/text/TextDirectionHeuristic;

    .line 8957
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    if-eq v0, v1, :cond_5

    .line 8959
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-eq v0, v1, :cond_5

    .line 8961
    sget-object v1, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 8963
    :cond_0
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    .line 8965
    :cond_1
    sget-object v1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    .line 8967
    :cond_2
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x5

    goto :goto_0

    .line 8969
    :cond_3
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne v0, v1, :cond_4

    const/4 v0, 0x6

    goto :goto_0

    .line 8971
    :cond_4
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    if-ne v0, v1, :cond_5

    const/4 v0, 0x7

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    .line 7843
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 7846
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_8

    .line 9218
    iget-object v0, p1, Landroidx/core/c/a$a;->a:Landroid/text/TextPaint;

    .line 7847
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    .line 7850
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 10218
    iget-object p1, p1, Landroidx/core/c/a$a;->a:Landroid/text/TextPaint;

    .line 7850
    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 7853
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextScaleX()F

    move-result p1

    cmpl-float p1, v0, p1

    if-nez p1, :cond_7

    const/high16 p1, 0x40000000    # 2.0f

    div-float p1, v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p1, v1

    .line 7856
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 7858
    :cond_7
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextScaleX(F)V

    return-void

    .line 7862
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 11218
    iget-object v1, p1, Landroidx/core/c/a$a;->a:Landroid/text/TextPaint;

    .line 7862
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 11243
    iget v0, p1, Landroidx/core/c/a$a;->c:I

    .line 7866
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBreakStrategy(I)V

    .line 11255
    iget p1, p1, Landroidx/core/c/a$a;->d:I

    .line 7867
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    .line 212
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatTextView;->d:Z

    if-eqz v0, :cond_0

    .line 213
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    if-eqz v0, :cond_1

    .line 216
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/m;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/m;->a(IF)V

    :cond_1
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 1

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    .line 705
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroidx/core/graphics/c;->a(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    move-object p1, v0

    .line 708
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method
