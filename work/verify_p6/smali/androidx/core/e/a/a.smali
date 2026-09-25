.class public final Landroidx/core/e/a/a;
.super Landroid/text/style/ClickableSpan;
.source "AccessibilityClickableSpanCompat.java"


# instance fields
.field private final a:I

.field private final b:Landroidx/core/e/a/b;

.field private final c:I


# direct methods
.method public constructor <init>(ILandroidx/core/e/a/b;I)V
    .locals 0

    .line 54
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 55
    iput p1, p0, Landroidx/core/e/a/a;->a:I

    .line 56
    iput-object p2, p0, Landroidx/core/e/a/a;->b:Landroidx/core/e/a/b;

    .line 57
    iput p3, p0, Landroidx/core/e/a/a;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 68
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    .line 69
    iget v1, p0, Landroidx/core/e/a/a;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    iget-object v0, p0, Landroidx/core/e/a/a;->b:Landroidx/core/e/a/b;

    iget p0, p0, Landroidx/core/e/a/a;->c:I

    .line 2886
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 2887
    iget-object v0, v0, Landroidx/core/e/a/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    :cond_0
    return-void
.end method
