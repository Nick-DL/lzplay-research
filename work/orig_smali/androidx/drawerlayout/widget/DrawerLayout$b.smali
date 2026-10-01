.class final Landroidx/drawerlayout/widget/DrawerLayout$b;
.super Landroidx/core/e/a;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/drawerlayout/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2467
    invoke-direct {p0}, Landroidx/core/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroidx/core/e/a/b;)V
    .registers 3

    .line 2471
    invoke-super {p0, p1, p2}, Landroidx/core/e/a;->a(Landroid/view/View;Landroidx/core/e/a/b;)V

    .line 2473
    invoke-static {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_d

    const/4 p0, 0x0

    .line 2477
    invoke-virtual {p2, p0}, Landroidx/core/e/a/b;->a(Landroid/view/View;)V

    :cond_d
    return-void
.end method
