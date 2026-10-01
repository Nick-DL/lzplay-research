.class final Landroidx/fragment/app/g$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FragmentManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroidx/fragment/app/Fragment;

.field final synthetic d:Landroidx/fragment/app/g;


# direct methods
.method constructor <init>(Landroidx/fragment/app/g;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V
    .registers 5

    .line 1114
    iput-object p1, p0, Landroidx/fragment/app/g$4;->d:Landroidx/fragment/app/g;

    iput-object p2, p0, Landroidx/fragment/app/g$4;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/fragment/app/g$4;->b:Landroid/view/View;

    iput-object p4, p0, Landroidx/fragment/app/g$4;->c:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 8

    .line 1117
    iget-object p1, p0, Landroidx/fragment/app/g$4;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/fragment/app/g$4;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1120
    iget-object p1, p0, Landroidx/fragment/app/g$4;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->L()Landroid/animation/Animator;

    move-result-object p1

    .line 1121
    iget-object v0, p0, Landroidx/fragment/app/g$4;->c:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->a(Landroid/animation/Animator;)V

    if-eqz p1, :cond_2f

    .line 1122
    iget-object p1, p0, Landroidx/fragment/app/g$4;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/fragment/app/g$4;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-gez p1, :cond_2f

    .line 1123
    iget-object v0, p0, Landroidx/fragment/app/g$4;->d:Landroidx/fragment/app/g;

    iget-object v1, p0, Landroidx/fragment/app/g$4;->c:Landroidx/fragment/app/Fragment;

    iget-object p0, p0, Landroidx/fragment/app/g$4;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->M()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/Fragment;IIIZ)V

    :cond_2f
    return-void
.end method
