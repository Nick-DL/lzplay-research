.class public Landroidx/core/e/a;
.super Ljava/lang/Object;
.source "AccessibilityDelegateCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/e/a$a;
    }
.end annotation


# static fields
.field private static final c:Landroid/view/View$AccessibilityDelegate;


# instance fields
.field final a:Landroid/view/View$AccessibilityDelegate;

.field final b:Landroid/view/View$AccessibilityDelegate;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 130
    new-instance v0, Landroid/view/View$AccessibilityDelegate;

    invoke-direct {v0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    sput-object v0, Landroidx/core/e/a;->c:Landroid/view/View$AccessibilityDelegate;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 139
    sget-object v0, Landroidx/core/e/a;->c:Landroid/view/View$AccessibilityDelegate;

    invoke-direct {p0, v0}, Landroidx/core/e/a;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private constructor <init>(Landroid/view/View$AccessibilityDelegate;)V
    .registers 2

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Landroidx/core/e/a;->a:Landroid/view/View$AccessibilityDelegate;

    .line 148
    new-instance p1, Landroidx/core/e/a$a;

    invoke-direct {p1, p0}, Landroidx/core/e/a$a;-><init>(Landroidx/core/e/a;)V

    iput-object p1, p0, Landroidx/core/e/a;->b:Landroid/view/View$AccessibilityDelegate;

    return-void
.end method

.method static a(Landroid/view/View;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroidx/core/e/a/b$a;",
            ">;"
        }
    .end annotation

    .line 394
    sget v0, Landroidx/core/R$id;->tag_accessibility_actions:I

    .line 395
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_e

    .line 396
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_e
    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/e/a/b;)V
    .registers 3

    .line 275
    iget-object p0, p0, Landroidx/core/e/a;->a:Landroid/view/View$AccessibilityDelegate;

    .line 2499
    iget-object p2, p2, Landroidx/core/e/a/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 275
    invoke-virtual {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 10

    .line 345
    invoke-static {p1}, Landroidx/core/e/a;->a(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 346
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 347
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/e/a/b$a;

    .line 2571
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_21

    .line 2572
    iget-object v4, v3, Landroidx/core/e/a/b$a;->H:Ljava/lang/Object;

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v4

    goto :goto_22

    :cond_21
    move v4, v1

    :goto_22
    if-ne v4, p2, :cond_29

    .line 349
    invoke-virtual {v3, p3}, Landroidx/core/e/a/b$a;->a(Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_2d

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_2c
    move v0, v1

    :goto_2d
    if-nez v0, :cond_3b

    .line 353
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_3b

    .line 354
    iget-object p0, p0, Landroidx/core/e/a;->a:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    :cond_3b
    if-nez v0, :cond_8b

    .line 356
    sget p0, Landroidx/core/R$id;->accessibility_action_clickable_span:I

    if-ne p2, p0, :cond_8b

    const-string p0, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    const/4 p2, -0x1

    .line 358
    invoke-virtual {p3, p0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 3364
    sget p2, Landroidx/core/R$id;->tag_accessibility_clickable_spans:I

    .line 3366
    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/SparseArray;

    const/4 p3, 0x1

    if-eqz p2, :cond_8a

    .line 3368
    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_8a

    .line 3370
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/style/ClickableSpan;

    if-eqz p0, :cond_82

    .line 3382
    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p2

    .line 3383
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroidx/core/e/a/b;->b(Ljava/lang/CharSequence;)[Landroid/text/style/ClickableSpan;

    move-result-object p2

    move v0, v1

    :goto_70
    if-eqz p2, :cond_82

    .line 3384
    array-length v2, p2

    if-ge v0, v2, :cond_82

    .line 3385
    aget-object v2, p2, v0

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    move p2, p3

    goto :goto_83

    :cond_7f
    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    :cond_82
    move p2, v1

    :goto_83
    if-eqz p2, :cond_8a

    .line 3372
    invoke-virtual {p0, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    move v0, p3

    goto :goto_8b

    :cond_8a
    move v0, v1

    :cond_8b
    :goto_8b
    return v0
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3

    .line 216
    iget-object p0, p0, Landroidx/core/e/a;->a:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    .line 300
    iget-object p0, p0, Landroidx/core/e/a;->a:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 256
    iget-object p0, p0, Landroidx/core/e/a;->a:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
