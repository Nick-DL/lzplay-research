.class public final Landroidx/appcompat/widget/ae;
.super Ljava/lang/Object;
.source "TintTypedArray.java"


# instance fields
.field public final a:Landroid/content/res/TypedArray;

.field private final b:Landroid/content/Context;

.field private c:Landroid/util/TypedValue;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroidx/appcompat/widget/ae;->b:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Landroidx/appcompat/widget/ae;->a:Landroid/content/res/TypedArray;

    return-void
.end method

.method public static a(Landroid/content/Context;I[I)Landroidx/appcompat/widget/ae;
    .locals 1

    .line 64
    new-instance v0, Landroidx/appcompat/widget/ae;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/ae;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/ae;
    .locals 1

    .line 54
    new-instance v0, Landroidx/appcompat/widget/ae;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/ae;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/ae;
    .locals 1

    .line 59
    new-instance v0, Landroidx/appcompat/widget/ae;

    .line 60
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/ae;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method


# virtual methods
.method public final a(II)I
    .locals 0

    .line 155
    iget-object p0, p0, Landroidx/appcompat/widget/ae;->a:Landroid/content/res/TypedArray;

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    return p0
.end method

.method public final a(IILandroidx/core/content/a/f$a;)Landroid/graphics/Typeface;
    .locals 2

    .line 112
    iget-object v0, p0, Landroidx/appcompat/widget/ae;->a:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 116
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ae;->c:Landroid/util/TypedValue;

    if-nez v0, :cond_1

    .line 117
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/ae;->c:Landroid/util/TypedValue;

    .line 119
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ae;->b:Landroid/content/Context;

    iget-object p0, p0, Landroidx/appcompat/widget/ae;->c:Landroid/util/TypedValue;

    invoke-static {v0, p1, p0, p2, p3}, Landroidx/core/content/a/f;->a(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/a/f$a;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public final a(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 73
    iget-object v0, p0, Landroidx/appcompat/widget/ae;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Landroidx/appcompat/widget/ae;->a:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object p0, p0, Landroidx/appcompat/widget/ae;->b:Landroid/content/Context;

    invoke-static {p0, v0}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 79
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/ae;->a:Landroid/content/res/TypedArray;

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final a(IZ)Z
    .locals 0

    .line 151
    iget-object p0, p0, Landroidx/appcompat/widget/ae;->a:Landroid/content/res/TypedArray;

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    return p0
.end method

.method public final b(II)I
    .locals 0

    .line 181
    iget-object p0, p0, Landroidx/appcompat/widget/ae;->a:Landroid/content/res/TypedArray;

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p0

    return p0
.end method

.method public final b(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 83
    iget-object v0, p0, Landroidx/appcompat/widget/ae;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Landroidx/appcompat/widget/ae;->a:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    invoke-static {}, Landroidx/appcompat/widget/f;->b()Landroidx/appcompat/widget/f;

    move-result-object v0

    iget-object p0, p0, Landroidx/appcompat/widget/ae;->b:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/widget/f;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final c(II)I
    .locals 0

    .line 189
    iget-object p0, p0, Landroidx/appcompat/widget/ae;->a:Landroid/content/res/TypedArray;

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p0

    return p0
.end method

.method public final c(I)Ljava/lang/CharSequence;
    .locals 0

    .line 139
    iget-object p0, p0, Landroidx/appcompat/widget/ae;->a:Landroid/content/res/TypedArray;

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final d(II)I
    .locals 0

    .line 193
    iget-object p0, p0, Landroidx/appcompat/widget/ae;->a:Landroid/content/res/TypedArray;

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p0

    return p0
.end method

.method public final d(I)Ljava/lang/String;
    .locals 0

    .line 143
    iget-object p0, p0, Landroidx/appcompat/widget/ae;->a:Landroid/content/res/TypedArray;

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final e(II)I
    .locals 0

    .line 201
    iget-object p0, p0, Landroidx/appcompat/widget/ae;->a:Landroid/content/res/TypedArray;

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p0

    return p0
.end method

.method public final e(I)Landroid/content/res/ColorStateList;
    .locals 2

    .line 167
    iget-object v0, p0, Landroidx/appcompat/widget/ae;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Landroidx/appcompat/widget/ae;->a:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v1, p0, Landroidx/appcompat/widget/ae;->b:Landroid/content/Context;

    .line 171
    invoke-static {v1, v0}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 177
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/ae;->a:Landroid/content/res/TypedArray;

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public final f(II)I
    .locals 0

    .line 209
    iget-object p0, p0, Landroidx/appcompat/widget/ae;->a:Landroid/content/res/TypedArray;

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    return p0
.end method

.method public final f(I)Z
    .locals 0

    .line 233
    iget-object p0, p0, Landroidx/appcompat/widget/ae;->a:Landroid/content/res/TypedArray;

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p0

    return p0
.end method
