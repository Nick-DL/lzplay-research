.class public final Lcom/airbnb/lottie/b/a;
.super Ljava/lang/Object;
.source "FontAssetManager.java"


# instance fields
.field public final a:Lcom/airbnb/lottie/c/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/c/h<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/airbnb/lottie/c/h<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/content/res/AssetManager;

.field public e:Lcom/airbnb/lottie/a;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/airbnb/lottie/a;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/airbnb/lottie/c/h;

    invoke-direct {v0}, Lcom/airbnb/lottie/c/h;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/b/a;->a:Lcom/airbnb/lottie/c/h;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/b/a;->b:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/b/a;->c:Ljava/util/Map;

    const-string v0, ".ttf"

    .line 26
    iput-object v0, p0, Lcom/airbnb/lottie/b/a;->f:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/airbnb/lottie/b/a;->e:Lcom/airbnb/lottie/a;

    .line 30
    instance-of p2, p1, Landroid/view/View;

    if-nez p2, :cond_0

    const-string p1, "LOTTIE"

    const-string p2, "LottieDrawable must be inside of a view for images to work."

    .line 31
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/airbnb/lottie/b/a;->d:Landroid/content/res/AssetManager;

    return-void

    .line 36
    :cond_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/b/a;->d:Landroid/content/res/AssetManager;

    return-void
.end method
