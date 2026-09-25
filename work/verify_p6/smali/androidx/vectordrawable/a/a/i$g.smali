.class final Landroidx/vectordrawable/a/a/i$g;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# instance fields
.field a:I

.field b:Landroidx/vectordrawable/a/a/i$f;

.field c:Landroid/content/res/ColorStateList;

.field d:Landroid/graphics/PorterDuff$Mode;

.field e:Z

.field f:Landroid/graphics/Bitmap;

.field g:Landroid/content/res/ColorStateList;

.field h:Landroid/graphics/PorterDuff$Mode;

.field i:I

.field j:Z

.field k:Z

.field l:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1121
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 1015
    iput-object v0, p0, Landroidx/vectordrawable/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    .line 1016
    sget-object v0, Landroidx/vectordrawable/a/a/i;->a:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    .line 1122
    new-instance v0, Landroidx/vectordrawable/a/a/i$f;

    invoke-direct {v0}, Landroidx/vectordrawable/a/a/i$f;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i$g;->b:Landroidx/vectordrawable/a/a/i$f;

    return-void
.end method

.method public constructor <init>(Landroidx/vectordrawable/a/a/i$g;)V
    .locals 3

    .line 1033
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 1015
    iput-object v0, p0, Landroidx/vectordrawable/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    .line 1016
    sget-object v0, Landroidx/vectordrawable/a/a/i;->a:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_2

    .line 1035
    iget v0, p1, Landroidx/vectordrawable/a/a/i$g;->a:I

    iput v0, p0, Landroidx/vectordrawable/a/a/i$g;->a:I

    .line 1036
    new-instance v0, Landroidx/vectordrawable/a/a/i$f;

    iget-object v1, p1, Landroidx/vectordrawable/a/a/i$g;->b:Landroidx/vectordrawable/a/a/i$f;

    invoke-direct {v0, v1}, Landroidx/vectordrawable/a/a/i$f;-><init>(Landroidx/vectordrawable/a/a/i$f;)V

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i$g;->b:Landroidx/vectordrawable/a/a/i$f;

    .line 1037
    iget-object v0, p1, Landroidx/vectordrawable/a/a/i$g;->b:Landroidx/vectordrawable/a/a/i$f;

    iget-object v0, v0, Landroidx/vectordrawable/a/a/i$f;->b:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i$g;->b:Landroidx/vectordrawable/a/a/i$f;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Landroidx/vectordrawable/a/a/i$g;->b:Landroidx/vectordrawable/a/a/i$f;

    iget-object v2, v2, Landroidx/vectordrawable/a/a/i$f;->b:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, v0, Landroidx/vectordrawable/a/a/i$f;->b:Landroid/graphics/Paint;

    .line 1040
    :cond_0
    iget-object v0, p1, Landroidx/vectordrawable/a/a/i$g;->b:Landroidx/vectordrawable/a/a/i$f;

    iget-object v0, v0, Landroidx/vectordrawable/a/a/i$f;->a:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 1041
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i$g;->b:Landroidx/vectordrawable/a/a/i$f;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Landroidx/vectordrawable/a/a/i$g;->b:Landroidx/vectordrawable/a/a/i$f;

    iget-object v2, v2, Landroidx/vectordrawable/a/a/i$f;->a:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, v0, Landroidx/vectordrawable/a/a/i$f;->a:Landroid/graphics/Paint;

    .line 1043
    :cond_1
    iget-object v0, p1, Landroidx/vectordrawable/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i$g;->c:Landroid/content/res/ColorStateList;

    .line 1044
    iget-object v0, p1, Landroidx/vectordrawable/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    .line 1045
    iget-boolean p1, p1, Landroidx/vectordrawable/a/a/i$g;->e:Z

    iput-boolean p1, p0, Landroidx/vectordrawable/a/a/i$g;->e:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    .line 1078
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i$g;->f:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1079
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Landroidx/vectordrawable/a/a/i$g;->f:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1080
    iget-object p0, p0, Landroidx/vectordrawable/a/a/i$g;->b:Landroidx/vectordrawable/a/a/i$f;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/vectordrawable/a/a/i$f;->a(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method public final getChangingConfigurations()I
    .locals 0

    .line 1139
    iget p0, p0, Landroidx/vectordrawable/a/a/i$g;->a:I

    return p0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1128
    new-instance v0, Landroidx/vectordrawable/a/a/i;

    invoke-direct {v0, p0}, Landroidx/vectordrawable/a/a/i;-><init>(Landroidx/vectordrawable/a/a/i$g;)V

    return-object v0
.end method

.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1134
    new-instance p1, Landroidx/vectordrawable/a/a/i;

    invoke-direct {p1, p0}, Landroidx/vectordrawable/a/a/i;-><init>(Landroidx/vectordrawable/a/a/i$g;)V

    return-object p1
.end method
