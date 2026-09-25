.class final Landroidx/appcompat/widget/r$b;
.super Ljava/lang/Object;
.source "DropDownListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/r;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/r;)V
    .locals 0

    .line 700
    iput-object p1, p0, Landroidx/appcompat/widget/r$b;->a:Landroidx/appcompat/widget/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 706
    iget-object v0, p0, Landroidx/appcompat/widget/r$b;->a:Landroidx/appcompat/widget/r;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/r;->a:Landroidx/appcompat/widget/r$b;

    .line 707
    iget-object p0, p0, Landroidx/appcompat/widget/r$b;->a:Landroidx/appcompat/widget/r;

    invoke-virtual {p0}, Landroidx/appcompat/widget/r;->drawableStateChanged()V

    return-void
.end method
