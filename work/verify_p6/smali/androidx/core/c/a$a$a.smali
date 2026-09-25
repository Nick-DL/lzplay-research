.class public final Landroidx/core/c/a$a$a;
.super Ljava/lang/Object;
.source "PrecomputedTextCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/c/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/text/TextDirectionHeuristic;

.field public b:I

.field public c:I

.field private final d:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/text/TextPaint;)V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Landroidx/core/c/a$a$a;->d:Landroid/text/TextPaint;

    .line 117
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    .line 118
    iput p1, p0, Landroidx/core/c/a$a$a;->b:I

    .line 119
    iput p1, p0, Landroidx/core/c/a$a$a;->c:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 121
    iput p1, p0, Landroidx/core/c/a$a$a;->c:I

    iput p1, p0, Landroidx/core/c/a$a$a;->b:I

    .line 123
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-lt p1, v0, :cond_1

    .line 124
    sget-object p1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    iput-object p1, p0, Landroidx/core/c/a$a$a;->a:Landroid/text/TextDirectionHeuristic;

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 126
    iput-object p1, p0, Landroidx/core/c/a$a$a;->a:Landroid/text/TextDirectionHeuristic;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/core/c/a$a;
    .locals 4

    .line 190
    new-instance v0, Landroidx/core/c/a$a;

    iget-object v1, p0, Landroidx/core/c/a$a$a;->d:Landroid/text/TextPaint;

    iget-object v2, p0, Landroidx/core/c/a$a$a;->a:Landroid/text/TextDirectionHeuristic;

    iget v3, p0, Landroidx/core/c/a$a$a;->b:I

    iget p0, p0, Landroidx/core/c/a$a$a;->c:I

    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/core/c/a$a;-><init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V

    return-object v0
.end method
