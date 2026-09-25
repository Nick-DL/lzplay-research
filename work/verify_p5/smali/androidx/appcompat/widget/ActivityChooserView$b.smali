.class final Landroidx/appcompat/widget/ActivityChooserView$b;
.super Ljava/lang/Object;
.source "ActivityChooserView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActivityChooserView;)V
    .locals 0

    .line 580
    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 618
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->e:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_1

    .line 619
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActivityChooserView;->b()Z

    .line 620
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object p1, p1, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$a;

    .line 4825
    iget-object p1, p1, Landroidx/appcompat/widget/ActivityChooserView$a;->a:Landroidx/appcompat/widget/c;

    invoke-virtual {p1}, Landroidx/appcompat/widget/c;->b()Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 621
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$a;

    .line 4844
    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView$a;->a:Landroidx/appcompat/widget/c;

    .line 621
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/c;->a(Landroid/content/pm/ResolveInfo;)I

    move-result p1

    .line 622
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$a;

    .line 5844
    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView$a;->a:Landroidx/appcompat/widget/c;

    .line 622
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/c;->b(I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/high16 v0, 0x80000

    .line 624
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 625
    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    .line 627
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->d:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_2

    .line 628
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/appcompat/widget/ActivityChooserView;->j:Z

    .line 629
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget p0, p0, Landroidx/appcompat/widget/ActivityChooserView;->k:I

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/ActivityChooserView;->a(I)V

    return-void

    .line 631
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final onDismiss()V
    .locals 1

    .line 6659
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->i:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_0

    .line 6660
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->i:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 653
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->g:Landroidx/core/e/b;

    if-eqz v0, :cond_1

    .line 654
    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView;->g:Landroidx/core/e/b;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/e/b;->a(Z)V

    :cond_1
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 586
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActivityChooserView$a;

    .line 587
    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/ActivityChooserView$a;->getItemViewType(I)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 611
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 590
    :pswitch_0
    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    const p1, 0x7fffffff

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActivityChooserView;->a(I)V

    return-void

    .line 593
    :pswitch_1
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActivityChooserView;->b()Z

    .line 594
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-boolean p1, p1, Landroidx/appcompat/widget/ActivityChooserView;->j:Z

    if-eqz p1, :cond_2

    if-lez p3, :cond_1

    .line 597
    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$a;

    .line 1844
    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView$a;->a:Landroidx/appcompat/widget/c;

    .line 2532
    iget-object p1, p0, Landroidx/appcompat/widget/c;->b:Ljava/lang/Object;

    monitor-enter p1

    .line 2533
    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->d()V

    .line 2535
    iget-object p2, p0, Landroidx/appcompat/widget/c;->c:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/c$a;

    .line 2536
    iget-object p3, p0, Landroidx/appcompat/widget/c;->c:Ljava/util/List;

    const/4 p4, 0x0

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/widget/c$a;

    if-eqz p3, :cond_0

    .line 2541
    iget p3, p3, Landroidx/appcompat/widget/c$a;->b:F

    iget p4, p2, Landroidx/appcompat/widget/c$a;->b:F

    sub-float/2addr p3, p4

    const/high16 p4, 0x40a00000    # 5.0f

    add-float/2addr p3, p4

    goto :goto_0

    :cond_0
    const/high16 p3, 0x3f800000    # 1.0f

    .line 2547
    :goto_0
    new-instance p4, Landroid/content/ComponentName;

    iget-object p5, p2, Landroidx/appcompat/widget/c$a;->a:Landroid/content/pm/ResolveInfo;

    iget-object p5, p5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p5, p5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Landroidx/appcompat/widget/c$a;->a:Landroid/content/pm/ResolveInfo;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p4, p5, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2550
    new-instance p2, Landroidx/appcompat/widget/c$c;

    .line 2551
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p2, p4, v0, v1, p3}, Landroidx/appcompat/widget/c$c;-><init>(Landroid/content/ComponentName;JF)V

    .line 2552
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/c;->a(Landroidx/appcompat/widget/c$c;)Z

    .line 2553
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void

    .line 602
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object p1, p1, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$a;

    .line 2858
    iget-boolean p1, p1, Landroidx/appcompat/widget/ActivityChooserView$a;->b:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 p3, p3, 0x1

    .line 603
    :goto_1
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object p1, p1, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$a;

    .line 3844
    iget-object p1, p1, Landroidx/appcompat/widget/ActivityChooserView$a;->a:Landroidx/appcompat/widget/c;

    .line 603
    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/c;->b(I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_4

    const/high16 p2, 0x80000

    .line 605
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 606
    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 638
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->e:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_1

    .line 639
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object p1, p1, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$a;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActivityChooserView$a;->getCount()I

    move-result p1

    const/4 v0, 0x1

    if-lez p1, :cond_0

    .line 640
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iput-boolean v0, p1, Landroidx/appcompat/widget/ActivityChooserView;->j:Z

    .line 641
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView$b;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget p0, p0, Landroidx/appcompat/widget/ActivityChooserView;->k:I

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/ActivityChooserView;->a(I)V

    :cond_0
    return v0

    .line 644
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
