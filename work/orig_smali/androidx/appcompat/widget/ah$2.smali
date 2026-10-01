.class final Landroidx/appcompat/widget/ah$2;
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
    .registers 2

    .line 60
    iput-object p1, p0, Landroidx/appcompat/widget/ah$2;->a:Landroidx/appcompat/widget/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 63
    iget-object p0, p0, Landroidx/appcompat/widget/ah$2;->a:Landroidx/appcompat/widget/ah;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ah;->a()V

    return-void
.end method
