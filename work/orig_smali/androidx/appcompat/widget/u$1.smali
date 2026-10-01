.class final Landroidx/appcompat/widget/u$1;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/u;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/u;)V
    .registers 2

    .line 1168
    iput-object p1, p0, Landroidx/appcompat/widget/u$1;->a:Landroidx/appcompat/widget/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1172
    iget-object v0, p0, Landroidx/appcompat/widget/u$1;->a:Landroidx/appcompat/widget/u;

    .line 1461
    iget-object v0, v0, Landroidx/appcompat/widget/u;->k:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 1173
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1174
    iget-object p0, p0, Landroidx/appcompat/widget/u$1;->a:Landroidx/appcompat/widget/u;

    invoke-virtual {p0}, Landroidx/appcompat/widget/u;->b_()V

    :cond_11
    return-void
.end method
