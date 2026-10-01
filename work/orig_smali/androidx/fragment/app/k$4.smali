.class final Landroidx/fragment/app/k$4;
.super Landroid/transition/Transition$EpicenterCallback;
.source "FragmentTransitionCompat21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/k;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Rect;

.field final synthetic b:Landroidx/fragment/app/k;


# direct methods
.method constructor <init>(Landroidx/fragment/app/k;Landroid/graphics/Rect;)V
    .registers 3

    .line 306
    iput-object p1, p0, Landroidx/fragment/app/k$4;->b:Landroidx/fragment/app/k;

    iput-object p2, p0, Landroidx/fragment/app/k$4;->a:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .registers 2

    .line 309
    iget-object p1, p0, Landroidx/fragment/app/k$4;->a:Landroid/graphics/Rect;

    if-eqz p1, :cond_10

    iget-object p1, p0, Landroidx/fragment/app/k$4;->a:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_10

    .line 312
    :cond_d
    iget-object p0, p0, Landroidx/fragment/app/k$4;->a:Landroid/graphics/Rect;

    return-object p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    return-object p0
.end method
