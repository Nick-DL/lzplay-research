.class final Landroidx/customview/a/a$2;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/customview/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/customview/a/a;


# direct methods
.method constructor <init>(Landroidx/customview/a/a;)V
    .registers 2

    .line 340
    iput-object p1, p0, Landroidx/customview/a/a$2;->a:Landroidx/customview/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 343
    iget-object p0, p0, Landroidx/customview/a/a$2;->a:Landroidx/customview/a/a;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/customview/a/a;->b(I)V

    return-void
.end method
