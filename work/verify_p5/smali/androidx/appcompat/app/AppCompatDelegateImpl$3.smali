.class final Landroidx/appcompat/app/AppCompatDelegateImpl$3;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroidx/core/e/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;->w()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V
    .locals 0

    .line 780
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$3;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroidx/core/e/y;)Landroidx/core/e/y;
    .locals 3

    .line 784
    invoke-virtual {p2}, Landroidx/core/e/y;->b()I

    move-result v0

    .line 785
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$3;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->h(I)I

    move-result p0

    if-eq v0, p0, :cond_0

    .line 789
    invoke-virtual {p2}, Landroidx/core/e/y;->a()I

    move-result v0

    .line 791
    invoke-virtual {p2}, Landroidx/core/e/y;->c()I

    move-result v1

    .line 792
    invoke-virtual {p2}, Landroidx/core/e/y;->d()I

    move-result v2

    .line 788
    invoke-virtual {p2, v0, p0, v1, v2}, Landroidx/core/e/y;->a(IIII)Landroidx/core/e/y;

    move-result-object p2

    .line 796
    :cond_0
    invoke-static {p1, p2}, Landroidx/core/e/r;->a(Landroid/view/View;Landroidx/core/e/y;)Landroidx/core/e/y;

    move-result-object p0

    return-object p0
.end method
