.class final Landroidx/core/e/r$1;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/e/r;->a(Landroid/view/View;Landroidx/core/e/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/e/o;


# direct methods
.method constructor <init>(Landroidx/core/e/o;)V
    .locals 0

    .line 2427
    iput-object p1, p0, Landroidx/core/e/r$1;->a:Landroidx/core/e/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 2430
    invoke-static {p2}, Landroidx/core/e/y;->a(Ljava/lang/Object;)Landroidx/core/e/y;

    move-result-object p2

    .line 2431
    iget-object p0, p0, Landroidx/core/e/r$1;->a:Landroidx/core/e/o;

    invoke-interface {p0, p1, p2}, Landroidx/core/e/o;->a(Landroid/view/View;Landroidx/core/e/y;)Landroidx/core/e/y;

    move-result-object p0

    .line 2432
    invoke-static {p0}, Landroidx/core/e/y;->a(Landroidx/core/e/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowInsets;

    return-object p0
.end method
