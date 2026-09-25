.class final Landroidx/appcompat/b/a/a$c;
.super Landroidx/appcompat/b/a/a$f;
.source "AnimatedStateListDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final a:Landroidx/vectordrawable/a/a/c;


# direct methods
.method constructor <init>(Landroidx/vectordrawable/a/a/c;)V
    .locals 1

    const/4 v0, 0x0

    .line 433
    invoke-direct {p0, v0}, Landroidx/appcompat/b/a/a$f;-><init>(B)V

    .line 434
    iput-object p1, p0, Landroidx/appcompat/b/a/a$c;->a:Landroidx/vectordrawable/a/a/c;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 439
    iget-object p0, p0, Landroidx/appcompat/b/a/a$c;->a:Landroidx/vectordrawable/a/a/c;

    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/c;->start()V

    return-void
.end method

.method public final b()V
    .locals 0

    .line 444
    iget-object p0, p0, Landroidx/appcompat/b/a/a$c;->a:Landroidx/vectordrawable/a/a/c;

    invoke-virtual {p0}, Landroidx/vectordrawable/a/a/c;->stop()V

    return-void
.end method
