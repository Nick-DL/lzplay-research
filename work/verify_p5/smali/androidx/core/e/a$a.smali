.class final Landroidx/core/e/a$a;
.super Landroid/view/View$AccessibilityDelegate;
.source "AccessibilityDelegateCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Landroidx/core/e/a;


# direct methods
.method constructor <init>(Landroidx/core/e/a;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 65
    iput-object p1, p0, Landroidx/core/e/a$a;->a:Landroidx/core/e/a;

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 71
    iget-object p0, p0, Landroidx/core/e/a$a;->a:Landroidx/core/e/a;

    invoke-virtual {p0, p1, p2}, Landroidx/core/e/a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 3

    .line 118
    iget-object p0, p0, Landroidx/core/e/a$a;->a:Landroidx/core/e/a;

    .line 9318
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    .line 9319
    iget-object p0, p0, Landroidx/core/e/a;->a:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p0, p1}, Landroid/view/View$AccessibilityDelegate;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 9321
    new-instance p1, Landroidx/core/e/a/c;

    invoke-direct {p1, p0}, Landroidx/core/e/a/c;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 10128
    iget-object p0, p1, Landroidx/core/e/a/c;->a:Ljava/lang/Object;

    .line 121
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeProvider;

    return-object p0

    :cond_1
    return-object v1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 76
    iget-object p0, p0, Landroidx/core/e/a$a;->a:Landroidx/core/e/a;

    invoke-virtual {p0, p1, p2}, Landroidx/core/e/a;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 9

    .line 82
    invoke-static {p2}, Landroidx/core/e/a/b;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/e/a/b;

    move-result-object v0

    .line 83
    invoke-static {p1}, Landroidx/core/e/r;->r(Landroid/view/View;)Z

    move-result v1

    .line 4600
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 4601
    iget-object v2, v0, Landroidx/core/e/a/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScreenReaderFocusable(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 4603
    invoke-virtual {v0, v2, v1}, Landroidx/core/e/a/b;->a(IZ)V

    .line 84
    :goto_0
    invoke-static {p1}, Landroidx/core/e/r;->t(Landroid/view/View;)Z

    move-result v1

    .line 4671
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_1

    .line 4672
    iget-object v2, v0, Landroidx/core/e/a/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHeading(Z)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    .line 4674
    invoke-virtual {v0, v2, v1}, Landroidx/core/e/a/b;->a(IZ)V

    .line 85
    :goto_1
    invoke-static {p1}, Landroidx/core/e/r;->s(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 5548
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v2, v3, :cond_2

    .line 5549
    iget-object v2, v0, Landroidx/core/e/a/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPaneTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 5550
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_3

    .line 5551
    iget-object v2, v0, Landroidx/core/e/a/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 86
    :cond_3
    :goto_2
    iget-object p0, p0, Landroidx/core/e/a$a;->a:Landroidx/core/e/a;

    invoke-virtual {p0, p1, v0}, Landroidx/core/e/a;->a(Landroid/view/View;Landroidx/core/e/a/b;)V

    .line 87
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    .line 6483
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    if-lt p2, v4, :cond_9

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge p2, v2, :cond_9

    .line 6544
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v4, :cond_4

    .line 6545
    iget-object p2, v0, Landroidx/core/e/a/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v2, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 6546
    iget-object p2, v0, Landroidx/core/e/a/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v2, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 6547
    iget-object p2, v0, Landroidx/core/e/a/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v2, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 6548
    iget-object p2, v0, Landroidx/core/e/a/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v2, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 6560
    :cond_4
    invoke-static {p1}, Landroidx/core/e/a/b;->b(Landroid/view/View;)Landroid/util/SparseArray;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 6562
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    .line 6563
    :goto_3
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 6564
    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    .line 6565
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    move v3, v1

    .line 6568
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 6569
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 6486
    :cond_7
    invoke-static {p0}, Landroidx/core/e/a/b;->b(Ljava/lang/CharSequence;)[Landroid/text/style/ClickableSpan;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 6487
    array-length v2, p2

    if-lez v2, :cond_9

    .line 6488
    invoke-virtual {v0}, Landroidx/core/e/a/b;->a()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY"

    sget v4, Landroidx/core/R$id;->accessibility_action_clickable_span:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7501
    invoke-static {p1}, Landroidx/core/e/a/b;->b(Landroid/view/View;)Landroid/util/SparseArray;

    move-result-object v2

    if-nez v2, :cond_8

    .line 7503
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 7504
    sget v3, Landroidx/core/R$id;->tag_accessibility_clickable_spans:I

    invoke-virtual {p1, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_8
    move v3, v1

    :goto_5
    if-eqz p2, :cond_9

    .line 6491
    array-length v4, p2

    if-ge v3, v4, :cond_9

    .line 6492
    aget-object v4, p2, v3

    invoke-static {v4, v2}, Landroidx/core/e/a/b;->a(Landroid/text/style/ClickableSpan;Landroid/util/SparseArray;)I

    move-result v4

    .line 6493
    new-instance v5, Ljava/lang/ref/WeakReference;

    aget-object v6, p2, v3

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6494
    aget-object v5, p2, v3

    move-object v6, p0

    check-cast v6, Landroid/text/Spanned;

    const-string v7, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY"

    .line 7553
    invoke-virtual {v0, v7}, Landroidx/core/e/a/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v7, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY"

    .line 7554
    invoke-virtual {v0, v7}, Landroidx/core/e/a/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v7, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY"

    .line 7555
    invoke-virtual {v0, v7}, Landroidx/core/e/a/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY"

    .line 7556
    invoke-virtual {v0, v5}, Landroidx/core/e/a/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 88
    :cond_9
    invoke-static {p1}, Landroidx/core/e/a;->a(Landroid/view/View;)Ljava/util/List;

    move-result-object p0

    .line 89
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_b

    .line 90
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/e/a/b$a;

    .line 7824
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt p2, v2, :cond_a

    .line 7825
    iget-object p2, v0, Landroidx/core/e/a/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object p1, p1, Landroidx/core/e/a/b$a;->H:Ljava/lang/Object;

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 96
    iget-object p0, p0, Landroidx/core/e/a$a;->a:Landroidx/core/e/a;

    .line 8236
    iget-object p0, p0, Landroidx/core/e/a;->a:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 102
    iget-object p0, p0, Landroidx/core/e/a$a;->a:Landroidx/core/e/a;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/e/a;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    .line 126
    iget-object p0, p0, Landroidx/core/e/a$a;->a:Landroidx/core/e/a;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/e/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 0

    .line 107
    iget-object p0, p0, Landroidx/core/e/a$a;->a:Landroidx/core/e/a;

    .line 9173
    iget-object p0, p0, Landroidx/core/e/a;->a:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 112
    iget-object p0, p0, Landroidx/core/e/a$a;->a:Landroidx/core/e/a;

    .line 9195
    iget-object p0, p0, Landroidx/core/e/a;->a:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
