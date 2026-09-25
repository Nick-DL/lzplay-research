.class final Landroidx/appcompat/widget/ah$1;
.super Ljava/lang/Object;
.source "TooltipCompatHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ah;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ah;)V
    .locals 0

    .line 54
    iput-object p1, p0, Landroidx/appcompat/widget/ah$1;->a:Landroidx/appcompat/widget/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 57
    iget-object p0, p0, Landroidx/appcompat/widget/ah$1;->a:Landroidx/appcompat/widget/ah;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ah;->a(Z)V

    return-void
.end method
