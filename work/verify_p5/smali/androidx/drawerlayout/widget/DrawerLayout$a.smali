.class final Landroidx/drawerlayout/widget/DrawerLayout$a;
.super Landroidx/core/e/a;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/drawerlayout/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic c:Landroidx/drawerlayout/widget/DrawerLayout;

.field private final d:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout;)V
    .locals 0

    .line 2349
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$a;->c:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-direct {p0}, Landroidx/core/e/a;-><init>()V

    .line 2350
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$a;->d:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroidx/core/e/a/b;)V
    .locals 4

    .line 2354
    sget-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2355
    invoke-super {p0, p1, p2}, Landroidx/core/e/a;->a(Landroid/view/View;Landroidx/core/e/a/b;)V

    goto/16 :goto_3

    .line 2360
    :cond_0
    invoke-static {p2}, Landroidx/core/e/a/b;->a(Landroidx/core/e/a/b;)Landroidx/core/e/a/b;

    move-result-object v0

    .line 2361
    invoke-super {p0, p1, v0}, Landroidx/core/e/a;->a(Landroid/view/View;Landroidx/core/e/a/b;)V

    const/4 v2, -0x1

    .line 3568
    iput v2, p2, Landroidx/core/e/a/b;->c:I

    .line 3570
    iget-object v2, p2, Landroidx/core/e/a/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 2364
    invoke-static {p1}, Landroidx/core/e/r;->d(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v2

    .line 2365
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 2366
    check-cast v2, Landroid/view/View;

    invoke-virtual {p2, v2}, Landroidx/core/e/a/b;->a(Landroid/view/View;)V

    .line 4442
    :cond_1
    iget-object p0, p0, Landroidx/drawerlayout/widget/DrawerLayout$a;->d:Landroid/graphics/Rect;

    .line 4444
    invoke-virtual {v0, p0}, Landroidx/core/e/a/b;->a(Landroid/graphics/Rect;)V

    .line 5029
    iget-object v2, p2, Landroidx/core/e/a/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 4447
    invoke-virtual {v0, p0}, Landroidx/core/e/a/b;->b(Landroid/graphics/Rect;)V

    .line 5053
    iget-object v2, p2, Landroidx/core/e/a/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 5158
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt p0, v2, :cond_2

    .line 5159
    iget-object p0, v0, Landroidx/core/e/a/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result p0

    goto :goto_0

    :cond_2
    move p0, v1

    .line 5178
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_3

    .line 5179
    iget-object v3, p2, Landroidx/core/e/a/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 5397
    :cond_3
    iget-object p0, v0, Landroidx/core/e/a/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object p0

    .line 5412
    iget-object v3, p2, Landroidx/core/e/a/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 5421
    iget-object p0, v0, Landroidx/core/e/a/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object p0

    .line 4452
    invoke-virtual {p2, p0}, Landroidx/core/e/a/b;->a(Ljava/lang/CharSequence;)V

    .line 5580
    iget-object p0, v0, Landroidx/core/e/a/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    .line 5595
    iget-object v3, p2, Landroidx/core/e/a/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 6292
    iget-object p0, v0, Landroidx/core/e/a/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result p0

    .line 6307
    iget-object v3, p2, Landroidx/core/e/a/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 7244
    iget-object p0, v0, Landroidx/core/e/a/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result p0

    .line 7259
    iget-object v3, p2, Landroidx/core/e/a/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 8110
    iget-object p0, v0, Landroidx/core/e/a/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result p0

    .line 4457
    invoke-virtual {p2, p0}, Landroidx/core/e/a/b;->a(Z)V

    .line 8134
    iget-object p0, v0, Landroidx/core/e/a/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result p0

    .line 4458
    invoke-virtual {p2, p0}, Landroidx/core/e/a/b;->b(Z)V

    .line 8189
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v2, :cond_4

    .line 8190
    iget-object p0, v0, Landroidx/core/e/a/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result p0

    goto :goto_1

    :cond_4
    move p0, v1

    .line 8209
    :goto_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_5

    .line 8210
    iget-object v2, p2, Landroidx/core/e/a/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 8220
    :cond_5
    iget-object p0, v0, Landroidx/core/e/a/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result p0

    .line 8235
    iget-object v2, p2, Landroidx/core/e/a/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 8268
    iget-object p0, v0, Landroidx/core/e/a/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result p0

    .line 8283
    iget-object v2, p2, Landroidx/core/e/a/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 8763
    iget-object p0, v0, Landroidx/core/e/a/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result p0

    .line 4463
    invoke-virtual {p2, p0}, Landroidx/core/e/a/b;->a(I)V

    .line 9606
    iget-object p0, v0, Landroidx/core/e/a/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 2371
    check-cast p1, Landroid/view/ViewGroup;

    .line 10426
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    move v0, v1

    :goto_2
    if-ge v0, p0, :cond_7

    .line 10428
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 10429
    invoke-static {v2}, Landroidx/drawerlayout/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 10690
    iget-object v3, p2, Landroidx/core/e/a/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2374
    :cond_7
    :goto_3
    const-class p0, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/core/e/a/b;->a(Ljava/lang/CharSequence;)V

    .line 2379
    invoke-virtual {p2, v1}, Landroidx/core/e/a/b;->a(Z)V

    .line 2380
    invoke-virtual {p2, v1}, Landroidx/core/e/a/b;->b(Z)V

    .line 2381
    sget-object p0, Landroidx/core/e/a/b$a;->a:Landroidx/core/e/a/b$a;

    invoke-virtual {p2, p0}, Landroidx/core/e/a/b;->a(Landroidx/core/e/a/b$a;)Z

    .line 2382
    sget-object p0, Landroidx/core/e/a/b$a;->b:Landroidx/core/e/a/b$a;

    invoke-virtual {p2, p0}, Landroidx/core/e/a/b;->a(Landroidx/core/e/a/b$a;)Z

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 2399
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    .line 2400
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    .line 2401
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$a;->c:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p2}, Landroidx/drawerlayout/widget/DrawerLayout;->a()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2403
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$a;->c:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->c(Landroid/view/View;)I

    move-result p2

    .line 2404
    iget-object p0, p0, Landroidx/drawerlayout/widget/DrawerLayout$a;->c:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 10747
    invoke-static {p0}, Landroidx/core/e/r;->c(Landroid/view/View;)I

    move-result v0

    .line 10746
    invoke-static {p2, v0}, Landroidx/core/e/c;->a(II)I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 10749
    iget-object p0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 10751
    iget-object p0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->i:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 2406
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 p0, 0x1

    return p0

    .line 2413
    :cond_3
    invoke-super {p0, p1, p2}, Landroidx/core/e/a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public final a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 2419
    sget-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->b:Z

    if-nez v0, :cond_1

    invoke-static {p2}, Landroidx/drawerlayout/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 2420
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroidx/core/e/a;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public final b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 2387
    invoke-super {p0, p1, p2}, Landroidx/core/e/a;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2389
    const-class p0, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method
