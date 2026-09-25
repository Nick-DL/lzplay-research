.class public Landroidx/appcompat/widget/AppCompatButton;
.super Landroid/widget/Button;
.source "AppCompatButton.java"

# interfaces
.implements Landroidx/core/e/q;
.implements Landroidx/core/widget/b;


# instance fields
.field private final a:Landroidx/appcompat/widget/d;

.field private final b:Landroidx/appcompat/widget/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 68
    sget v0, Landroidx/appcompat/R$attr;->buttonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 72
    invoke-static {p1}, Landroidx/appcompat/widget/ab;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    new-instance p1, Landroidx/appcompat/widget/d;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/d;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatButton;->a:Landroidx/appcompat/widget/d;

    .line 75
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatButton;->a:Landroidx/appcompat/widget/d;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/d;->a(Landroid/util/AttributeSet;I)V

    .line 77
    new-instance p1, Landroidx/appcompat/widget/m;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/m;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/m;

    .line 78
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/m;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/m;->a(Landroid/util/AttributeSet;I)V

    .line 79
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/m;

    invoke-virtual {p0}, Landroidx/appcompat/widget/m;->a()V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 156
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 157
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->a:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->a:Landroidx/appcompat/widget/d;

    invoke-virtual {v0}, Landroidx/appcompat/widget/d;->d()V

    .line 160
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/m;

    if-eqz v0, :cond_1

    .line 161
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/m;

    invoke-virtual {p0}, Landroidx/appcompat/widget/m;->a()V

    :cond_1
    return-void
.end method

.method public getAutoSizeMaxTextSize()I
    .locals 1

    .line 324
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatButton;->d:Z

    if-eqz v0, :cond_0

    .line 325
    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeMaxTextSize()I

    move-result p0

    return p0

    .line 327
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/m;

    if-eqz v0, :cond_1

    .line 328
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/m;

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

    .line 308
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatButton;->d:Z

    if-eqz v0, :cond_0

    .line 309
    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeMinTextSize()I

    move-result p0

    return p0

    .line 311
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/m;

    if-eqz v0, :cond_1

    .line 312
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/m;

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

    .line 292
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatButton;->d:Z

    if-eqz v0, :cond_0

    .line 293
    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeStepGranularity()I

    move-result p0

    return p0

    .line 295
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/m;

    if-eqz v0, :cond_1

    .line 296
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/m;

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

    .line 340
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatButton;->d:Z

    if-eqz v0, :cond_0

    .line 341
    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeTextAvailableSizes()[I

    move-result-object p0

    return-object p0

    .line 343
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/m;

    if-eqz v0, :cond_1

    .line 344
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/m;

    .line 6641
    iget-object p0, p0, Landroidx/appcompat/widget/m;->c:Landroidx/appcompat/widget/n;

    .line 7423
    iget-object p0, p0, Landroidx/appcompat/widget/n;->e:[I

    return-object p0

    :cond_1
    const/4 p0, 0x0

    .line 347
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

    .line 274
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatButton;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 275
    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeTextType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    return v1

    .line 279
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/m;

    if-eqz v0, :cond_2

    .line 280
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/m;

    .line 2625
    iget-object p0, p0, Landroidx/appcompat/widget/m;->c:Landroidx/appcompat/widget/n;

    .line 3364
    iget p0, p0, Landroidx/appcompat/widget/n;->a:I

    return p0

    :cond_2
    return v1
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 122
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->a:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatButton;->a:Landroidx/appcompat/widget/d;

    .line 123
    invoke-virtual {p0}, Landroidx/appcompat/widget/d;->b()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 150
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->a:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatButton;->a:Landroidx/appcompat/widget/d;

    .line 151
    invoke-virtual {p0}, Landroidx/appcompat/widget/d;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 175
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 176
    const-class p0, Landroid/widget/Button;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 181
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 182
    const-class p0, Landroid/widget/Button;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 187
    invoke-super/range {p0 .. p5}, Landroid/widget/Button;->onLayout(ZIIII)V

    .line 188
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/m;

    if-eqz p1, :cond_0

    .line 189
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/m;

    invoke-virtual {p0}, Landroidx/appcompat/widget/m;->b()V

    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 206
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 207
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/m;

    if-eqz p1, :cond_0

    sget-boolean p1, Landroidx/appcompat/widget/AppCompatButton;->d:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/m;

    .line 1598
    iget-object p1, p1, Landroidx/appcompat/widget/m;->c:Landroidx/appcompat/widget/n;

    invoke-virtual {p1}, Landroidx/appcompat/widget/n;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 208
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/m;

    .line 2592
    iget-object p0, p0, Landroidx/appcompat/widget/m;->c:Landroidx/appcompat/widget/n;

    invoke-virtual {p0}, Landroidx/appcompat/widget/n;->a()V

    :cond_0
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 1

    .line 238
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatButton;->d:Z

    if-eqz v0, :cond_0

    .line 239
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/m;

    if-eqz v0, :cond_1

    .line 243
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/m;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/m;->a(IIII)V

    :cond_1
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 1

    .line 256
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatButton;->d:Z

    if-eqz v0, :cond_0

    .line 257
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/m;

    if-eqz v0, :cond_1

    .line 260
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/m;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/m;->a([II)V

    :cond_1
    return-void
.end method

.method public setAutoSizeTextTypeWithDefaults(I)V
    .locals 1

    .line 219
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatButton;->d:Z

    if-eqz v0, :cond_0

    .line 220
    invoke-super {p0, p1}, Landroid/widget/Button;->setAutoSizeTextTypeWithDefaults(I)V

    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/m;

    if-eqz v0, :cond_1

    .line 223
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/m;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/m;->a(I)V

    :cond_1
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 92
    invoke-super {p0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatButton;->a:Landroidx/appcompat/widget/d;

    if-eqz p1, :cond_0

    .line 94
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatButton;->a:Landroidx/appcompat/widget/d;

    invoke-virtual {p0}, Landroidx/appcompat/widget/d;->a()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 84
    invoke-super {p0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 85
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->a:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_0

    .line 86
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatButton;->a:Landroidx/appcompat/widget/d;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/d;->a(I)V

    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 372
    invoke-static {p0, p1}, Landroidx/core/widget/h;->a(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    .line 371
    invoke-super {p0, p1}, Landroid/widget/Button;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setSupportAllCaps(Z)V
    .locals 1

    .line 360
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/m;

    if-eqz v0, :cond_0

    .line 361
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/m;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/m;->a(Z)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 107
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->a:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_0

    .line 108
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatButton;->a:Landroidx/appcompat/widget/d;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/d;->a(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 135
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->a:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_0

    .line 136
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatButton;->a:Landroidx/appcompat/widget/d;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/d;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .line 167
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 168
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/m;

    if-eqz v0, :cond_0

    .line 169
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/m;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/m;->a(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    .line 195
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatButton;->d:Z

    if-eqz v0, :cond_0

    .line 196
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setTextSize(IF)V

    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/m;

    if-eqz v0, :cond_1

    .line 199
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/m;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/m;->a(IF)V

    :cond_1
    return-void
.end method
