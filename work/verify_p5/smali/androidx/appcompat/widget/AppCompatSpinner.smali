.class public Landroidx/appcompat/widget/AppCompatSpinner;
.super Landroid/widget/Spinner;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroidx/core/e/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/AppCompatSpinner$c;,
        Landroidx/appcompat/widget/AppCompatSpinner$a;,
        Landroidx/appcompat/widget/AppCompatSpinner$d;,
        Landroidx/appcompat/widget/AppCompatSpinner$b;,
        Landroidx/appcompat/widget/AppCompatSpinner$SavedState;
    }
.end annotation


# static fields
.field private static final c:[I


# instance fields
.field a:I

.field final b:Landroid/graphics/Rect;

.field private final d:Landroidx/appcompat/widget/d;

.field private final e:Landroid/content/Context;

.field private f:Landroidx/appcompat/widget/t;

.field private g:Landroid/widget/SpinnerAdapter;

.field private final h:Z

.field private i:Landroidx/appcompat/widget/AppCompatSpinner$d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 78
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10102f1

    aput v2, v0, v1

    sput-object v0, Landroidx/appcompat/widget/AppCompatSpinner;->c:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 140
    sget v0, Landroidx/appcompat/R$attr;->spinnerStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 155
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V
    .locals 0

    const/4 p4, -0x1

    .line 174
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    .line 203
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->b:Landroid/graphics/Rect;

    .line 205
    sget-object v0, Landroidx/appcompat/R$styleable;->Spinner:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Landroidx/appcompat/widget/ae;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/ae;

    move-result-object v0

    .line 208
    new-instance v2, Landroidx/appcompat/widget/d;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/d;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Landroidx/appcompat/widget/AppCompatSpinner;->d:Landroidx/appcompat/widget/d;

    .line 213
    sget v2, Landroidx/appcompat/R$styleable;->Spinner_popupTheme:I

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/ae;->f(II)I

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    new-instance v3, Landroidx/appcompat/view/d;

    invoke-direct {v3, p1, v2}, Landroidx/appcompat/view/d;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Landroidx/appcompat/widget/AppCompatSpinner;->e:Landroid/content/Context;

    goto :goto_0

    .line 217
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->e:Landroid/content/Context;

    :goto_0
    const/4 v2, 0x0

    .line 224
    :try_start_0
    sget-object v3, Landroidx/appcompat/widget/AppCompatSpinner;->c:[I

    invoke-virtual {p1, p2, v3, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :try_start_1
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 227
    invoke-virtual {v3, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move p4, v4

    :cond_1
    if-eqz v3, :cond_2

    .line 233
    :goto_1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    :catch_0
    move-exception v4

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v3, v2

    goto/16 :goto_5

    :catch_1
    move-exception v4

    move-object v3, v2

    :goto_2
    :try_start_2
    const-string v5, "AppCompatSpinner"

    const-string v6, "Could not read android:spinnerMode"

    .line 230
    invoke-static {v5, v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    :goto_3
    packed-switch p4, :pswitch_data_0

    goto :goto_4

    .line 245
    :pswitch_0
    new-instance p4, Landroidx/appcompat/widget/AppCompatSpinner$c;

    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatSpinner;->e:Landroid/content/Context;

    invoke-direct {p4, p0, v3, p2, p3}, Landroidx/appcompat/widget/AppCompatSpinner$c;-><init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 246
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatSpinner;->e:Landroid/content/Context;

    sget-object v4, Landroidx/appcompat/R$styleable;->Spinner:[I

    invoke-static {v3, p2, v4, p3, v1}, Landroidx/appcompat/widget/ae;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/ae;

    move-result-object v1

    .line 248
    sget v3, Landroidx/appcompat/R$styleable;->Spinner_android_dropDownWidth:I

    const/4 v4, -0x2

    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/widget/ae;->e(II)I

    move-result v3

    iput v3, p0, Landroidx/appcompat/widget/AppCompatSpinner;->a:I

    .line 250
    sget v3, Landroidx/appcompat/R$styleable;->Spinner_android_popupBackground:I

    .line 251
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/ae;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 250
    invoke-virtual {p4, v3}, Landroidx/appcompat/widget/AppCompatSpinner$c;->a(Landroid/graphics/drawable/Drawable;)V

    .line 252
    sget v3, Landroidx/appcompat/R$styleable;->Spinner_android_prompt:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ae;->d(I)Ljava/lang/String;

    move-result-object v3

    .line 1992
    iput-object v3, p4, Landroidx/appcompat/widget/AppCompatSpinner$c;->a:Ljava/lang/CharSequence;

    .line 2245
    iget-object v1, v1, Landroidx/appcompat/widget/ae;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 255
    iput-object p4, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$d;

    .line 256
    new-instance v1, Landroidx/appcompat/widget/AppCompatSpinner$1;

    invoke-direct {v1, p0, p0, p4}, Landroidx/appcompat/widget/AppCompatSpinner$1;-><init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/view/View;Landroidx/appcompat/widget/AppCompatSpinner$c;)V

    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/t;

    goto :goto_4

    .line 240
    :pswitch_1
    new-instance p4, Landroidx/appcompat/widget/AppCompatSpinner$a;

    invoke-direct {p4, p0}, Landroidx/appcompat/widget/AppCompatSpinner$a;-><init>(Landroidx/appcompat/widget/AppCompatSpinner;)V

    iput-object p4, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$d;

    .line 241
    iget-object p4, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$d;

    sget v1, Landroidx/appcompat/R$styleable;->Spinner_android_prompt:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ae;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Landroidx/appcompat/widget/AppCompatSpinner$d;->a(Ljava/lang/CharSequence;)V

    .line 274
    :goto_4
    sget p4, Landroidx/appcompat/R$styleable;->Spinner_android_entries:I

    .line 3213
    iget-object v1, v0, Landroidx/appcompat/widget/ae;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v1, p4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p4

    if-eqz p4, :cond_3

    .line 276
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v1, p1, v3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 278
    sget p1, Landroidx/appcompat/R$layout;->support_simple_spinner_dropdown_item:I

    invoke-virtual {v1, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 279
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 3245
    :cond_3
    iget-object p1, v0, Landroidx/appcompat/widget/ae;->a:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x1

    .line 284
    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->h:Z

    .line 288
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->g:Landroid/widget/SpinnerAdapter;

    if-eqz p1, :cond_4

    .line 289
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->g:Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 290
    iput-object v2, p0, Landroidx/appcompat/widget/AppCompatSpinner;->g:Landroid/widget/SpinnerAdapter;

    .line 293
    :cond_4
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->d:Landroidx/appcompat/widget/d;

    invoke-virtual {p0, p2, p3}, Landroidx/appcompat/widget/d;->a(Landroid/util/AttributeSet;I)V

    return-void

    :catchall_1
    move-exception p0

    :goto_5
    if-eqz v3, :cond_5

    .line 233
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 235
    :cond_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method final a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 558
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 560
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 564
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getSelectedItemPosition()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 565
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v4

    add-int/lit8 v5, v3, 0xf

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v5, v4, v3

    rsub-int/lit8 v5, v5, 0xf

    sub-int/2addr v3, v5

    .line 567
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v5, 0x0

    move v7, v0

    move-object v6, v5

    :goto_0
    if-ge v3, v4, :cond_3

    .line 569
    invoke-interface {p1, v3}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v0, :cond_1

    move-object v6, v5

    move v0, v8

    .line 574
    :cond_1
    invoke-interface {p1, v3, v6, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 575
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_2

    .line 576
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 580
    :cond_2
    invoke-virtual {v6, v1, v2}, Landroid/view/View;->measure(II)V

    .line 581
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 586
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->b:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 587
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->b:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p0

    add-int/2addr v7, p1

    :cond_4
    return v7
.end method

.method final a()V
    .locals 2

    .line 599
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 600
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$d;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getTextDirection()I

    move-result v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getTextAlignment()I

    move-result p0

    invoke-interface {v0, v1, p0}, Landroidx/appcompat/widget/AppCompatSpinner$d;->a(II)V

    return-void

    .line 602
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$d;

    const/4 v0, -0x1

    invoke-interface {p0, v0, v0}, Landroidx/appcompat/widget/AppCompatSpinner$d;->a(II)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    .line 543
    invoke-super {p0}, Landroid/widget/Spinner;->drawableStateChanged()V

    .line 544
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->d:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_0

    .line 545
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->d:Landroidx/appcompat/widget/d;

    invoke-virtual {p0}, Landroidx/appcompat/widget/d;->d()V

    :cond_0
    return-void
.end method

.method public getDropDownHorizontalOffset()I
    .locals 2

    .line 365
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$d;

    if-eqz v0, :cond_0

    .line 366
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$d;

    invoke-interface {p0}, Landroidx/appcompat/widget/AppCompatSpinner$d;->f()I

    move-result p0

    return p0

    .line 367
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 368
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownHorizontalOffset()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getDropDownVerticalOffset()I
    .locals 2

    .line 339
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$d;

    if-eqz v0, :cond_0

    .line 340
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$d;

    invoke-interface {p0}, Landroidx/appcompat/widget/AppCompatSpinner$d;->a_()I

    move-result p0

    return p0

    .line 341
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 342
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownVerticalOffset()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getDropDownWidth()I
    .locals 2

    .line 384
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$d;

    if-eqz v0, :cond_0

    .line 385
    iget p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->a:I

    return p0

    .line 386
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 387
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownWidth()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method final getInternalPopup()Landroidx/appcompat/widget/AppCompatSpinner$d;
    .locals 0

    .line 595
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$d;

    return-object p0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 320
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$d;

    if-eqz v0, :cond_0

    .line 321
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$d;

    invoke-interface {p0}, Landroidx/appcompat/widget/AppCompatSpinner$d;->b()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 322
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 323
    invoke-super {p0}, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPopupContext()Landroid/content/Context;
    .locals 0

    .line 301
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->e:Landroid/content/Context;

    return-object p0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 1

    .line 464
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$d;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$d;

    invoke-interface {p0}, Landroidx/appcompat/widget/AppCompatSpinner$d;->a()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 508
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->d:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->d:Landroidx/appcompat/widget/d;

    .line 509
    invoke-virtual {p0}, Landroidx/appcompat/widget/d;->b()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 537
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->d:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->d:Landroidx/appcompat/widget/d;

    .line 538
    invoke-virtual {p0}, Landroidx/appcompat/widget/d;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 411
    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    .line 413
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$d;

    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$d;

    invoke-interface {p0}, Landroidx/appcompat/widget/AppCompatSpinner$d;->c()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 428
    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onMeasure(II)V

    .line 430
    iget-object p2, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$d;

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_0

    .line 431
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getMeasuredWidth()I

    move-result p2

    .line 433
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/AppCompatSpinner;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 432
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 434
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 432
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 435
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getMeasuredHeight()I

    move-result p2

    .line 432
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSpinner;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 617
    check-cast p1, Landroidx/appcompat/widget/AppCompatSpinner$SavedState;

    .line 619
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatSpinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/Spinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 621
    iget-boolean p1, p1, Landroidx/appcompat/widget/AppCompatSpinner$SavedState;->a:Z

    if-eqz p1, :cond_0

    .line 622
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 624
    new-instance v0, Landroidx/appcompat/widget/AppCompatSpinner$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/AppCompatSpinner$2;-><init>(Landroidx/appcompat/widget/AppCompatSpinner;)V

    .line 640
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 609
    new-instance v0, Landroidx/appcompat/widget/AppCompatSpinner$SavedState;

    .line 610
    invoke-super {p0}, Landroid/widget/Spinner;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 611
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$d;

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$d;

    invoke-interface {p0}, Landroidx/appcompat/widget/AppCompatSpinner$d;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput-boolean p0, v0, Landroidx/appcompat/widget/AppCompatSpinner$SavedState;->a:Z

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 420
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/t;

    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/widget/t;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 423
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public performClick()Z
    .locals 1

    .line 441
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$d;

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$d;

    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->a()V

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 450
    :cond_1
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 76
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 2

    .line 396
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->h:Z

    if-nez v0, :cond_0

    .line 397
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->g:Landroid/widget/SpinnerAdapter;

    return-void

    .line 401
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 403
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$d;

    if-eqz v0, :cond_2

    .line 404
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->e:Landroid/content/Context;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->e:Landroid/content/Context;

    .line 405
    :goto_0
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$d;

    new-instance v1, Landroidx/appcompat/widget/AppCompatSpinner$b;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Landroidx/appcompat/widget/AppCompatSpinner$b;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    invoke-interface {p0, v1}, Landroidx/appcompat/widget/AppCompatSpinner$d;->a(Landroid/widget/ListAdapter;)V

    :cond_2
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 477
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 478
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->d:Landroidx/appcompat/widget/d;

    if-eqz p1, :cond_0

    .line 479
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->d:Landroidx/appcompat/widget/d;

    invoke-virtual {p0}, Landroidx/appcompat/widget/d;->a()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 469
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    .line 470
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->d:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_0

    .line 471
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->d:Landroidx/appcompat/widget/d;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/d;->a(I)V

    :cond_0
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 2

    .line 349
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$d;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$d;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$d;->c(I)V

    .line 351
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$d;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$d;->b(I)V

    return-void

    .line 352
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 353
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    :cond_1
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 2

    .line 330
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$d;

    if-eqz v0, :cond_0

    .line 331
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$d;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$d;->a(I)V

    return-void

    .line 332
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 333
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    :cond_1
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 2

    .line 375
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$d;

    if-eqz v0, :cond_0

    .line 376
    iput p1, p0, Landroidx/appcompat/widget/AppCompatSpinner;->a:I

    return-void

    .line 377
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 378
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    :cond_1
    return-void
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 306
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$d;

    if-eqz v0, :cond_0

    .line 307
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$d;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$d;->a(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 308
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 309
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setPopupBackgroundResource(I)V
    .locals 1

    .line 315
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 1

    .line 455
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$d;

    if-eqz v0, :cond_0

    .line 456
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroidx/appcompat/widget/AppCompatSpinner$d;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$d;->a(Ljava/lang/CharSequence;)V

    return-void

    .line 458
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 493
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->d:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_0

    .line 494
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->d:Landroidx/appcompat/widget/d;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/d;->a(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 522
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->d:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_0

    .line 523
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->d:Landroidx/appcompat/widget/d;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/d;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method
