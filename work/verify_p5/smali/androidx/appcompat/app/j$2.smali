.class final Landroidx/appcompat/app/j$2;
.super Landroidx/core/e/w;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/j;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/j;)V
    .locals 0

    .line 152
    iput-object p1, p0, Landroidx/appcompat/app/j$2;->a:Landroidx/appcompat/app/j;

    invoke-direct {p0}, Landroidx/core/e/w;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)V
    .locals 1

    .line 155
    iget-object p1, p0, Landroidx/appcompat/app/j$2;->a:Landroidx/appcompat/app/j;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/appcompat/app/j;->n:Landroidx/appcompat/view/h;

    .line 156
    iget-object p0, p0, Landroidx/appcompat/app/j$2;->a:Landroidx/appcompat/app/j;

    iget-object p0, p0, Landroidx/appcompat/app/j;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->requestLayout()V

    return-void
.end method
