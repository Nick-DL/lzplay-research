.class final Landroidx/fragment/app/g;
.super Landroidx/fragment/app/f;
.source "FragmentManagerImpl.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/g$b;,
        Landroidx/fragment/app/g$a;,
        Landroidx/fragment/app/g$e;,
        Landroidx/fragment/app/g$d;,
        Landroidx/fragment/app/g$c;
    }
.end annotation


# static fields
.field static final H:Landroid/view/animation/Interpolator;

.field static final I:Landroid/view/animation/Interpolator;

.field static c:Z = false


# instance fields
.field A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field C:Landroid/os/Bundle;

.field D:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/g$e;",
            ">;"
        }
    .end annotation
.end field

.field F:Landroidx/fragment/app/h;

.field G:Ljava/lang/Runnable;

.field private final J:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/g$d;",
            ">;"
        }
    .end annotation
.end field

.field e:Z

.field f:I

.field final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field k:Landroidx/activity/OnBackPressedDispatcher;

.field final l:Landroidx/activity/b;

.field m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;"
        }
    .end annotation
.end field

.field n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/f$a;",
            ">;"
        }
    .end annotation
.end field

.field p:I

.field q:Landroidx/fragment/app/e;

.field r:Landroidx/fragment/app/b;

.field s:Landroidx/fragment/app/Fragment;

.field t:Landroidx/fragment/app/Fragment;

.field u:Z

.field v:Z

.field w:Z

.field x:Z

.field y:Z

.field z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 574
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroidx/fragment/app/g;->H:Landroid/view/animation/Interpolator;

    .line 575
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroidx/fragment/app/g;->I:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 75
    invoke-direct {p0}, Landroidx/fragment/app/f;-><init>()V

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Landroidx/fragment/app/g;->f:I

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    .line 100
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/g;->h:Ljava/util/HashMap;

    .line 104
    new-instance v1, Landroidx/fragment/app/g$1;

    invoke-direct {v1, p0}, Landroidx/fragment/app/g$1;-><init>(Landroidx/fragment/app/g;)V

    iput-object v1, p0, Landroidx/fragment/app/g;->l:Landroidx/activity/b;

    .line 117
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 120
    iput v0, p0, Landroidx/fragment/app/g;->p:I

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Landroidx/fragment/app/g;->C:Landroid/os/Bundle;

    .line 140
    iput-object v0, p0, Landroidx/fragment/app/g;->D:Landroid/util/SparseArray;

    .line 147
    new-instance v0, Landroidx/fragment/app/g$2;

    invoke-direct {v0, p0}, Landroidx/fragment/app/g$2;-><init>(Landroidx/fragment/app/g;)V

    iput-object v0, p0, Landroidx/fragment/app/g;->G:Ljava/lang/Runnable;

    return-void
.end method

.method private A()V
    .registers 2

    .line 2176
    iget-boolean v0, p0, Landroidx/fragment/app/g;->y:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 2177
    iput-boolean v0, p0, Landroidx/fragment/app/g;->y:Z

    .line 2178
    invoke-direct {p0}, Landroidx/fragment/app/g;->u()V

    :cond_a
    return-void
.end method

.method private B()V
    .registers 3

    .line 2183
    iget-object v0, p0, Landroidx/fragment/app/g;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    .line 2184
    :goto_5
    iget-object v1, p0, Landroidx/fragment/app/g;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 2185
    iget-object v1, p0, Landroidx/fragment/app/g;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_15
    return-void
.end method

.method private C()V
    .registers 2

    .line 2555
    iget-object p0, p0, Landroidx/fragment/app/g;->h:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 v0, 0x0

    .line 2558
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private D()Z
    .registers 4

    .line 3097
    iget-object p0, p0, Landroidx/fragment/app/g;->h:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_1e

    .line 3099
    invoke-static {v2}, Landroidx/fragment/app/g;->z(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    :cond_1e
    if-eqz v1, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_22
    return v0
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroidx/b/b;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II",
            "Landroidx/b/b<",
            "Landroidx/fragment/app/Fragment;",
            ">;)I"
        }
    .end annotation

    add-int/lit8 v0, p4, -0x1

    move v1, p4

    :goto_3
    if-lt v0, p3, :cond_73

    .line 1937
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/a;

    .line 1938
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    .line 34633
    :goto_17
    iget-object v6, v2, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v5, v6, :cond_33

    .line 34634
    iget-object v6, v2, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/i$a;

    .line 34635
    invoke-static {v6}, Landroidx/fragment/app/a;->a(Landroidx/fragment/app/i$a;)Z

    move-result v6

    if-eqz v6, :cond_30

    move v5, v7

    goto :goto_34

    :cond_30
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_33
    move v5, v4

    :goto_34
    if-eqz v5, :cond_3f

    add-int/lit8 v5, v0, 0x1

    .line 1940
    invoke-virtual {v2, p1, v5, p4}, Landroidx/fragment/app/a;->a(Ljava/util/ArrayList;II)Z

    move-result v5

    if-nez v5, :cond_3f

    goto :goto_40

    :cond_3f
    move v7, v4

    :goto_40
    if-eqz v7, :cond_70

    .line 1942
    iget-object v5, p0, Landroidx/fragment/app/g;->E:Ljava/util/ArrayList;

    if-nez v5, :cond_4d

    .line 1943
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroidx/fragment/app/g;->E:Ljava/util/ArrayList;

    .line 1945
    :cond_4d
    new-instance v5, Landroidx/fragment/app/g$e;

    invoke-direct {v5, v2, v3}, Landroidx/fragment/app/g$e;-><init>(Landroidx/fragment/app/a;Z)V

    .line 1947
    iget-object v6, p0, Landroidx/fragment/app/g;->E:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1948
    invoke-virtual {v2, v5}, Landroidx/fragment/app/a;->setOnStartPostponedListener(Landroidx/fragment/app/Fragment$c;)V

    if-eqz v3, :cond_60

    .line 1952
    invoke-virtual {v2}, Landroidx/fragment/app/a;->d()V

    goto :goto_63

    .line 1954
    :cond_60
    invoke-virtual {v2, v4}, Landroidx/fragment/app/a;->a(Z)V

    :goto_63
    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_6d

    .line 1960
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1961
    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1965
    :cond_6d
    invoke-direct {p0, p5}, Landroidx/fragment/app/g;->b(Landroidx/b/b;)V

    :cond_70
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_73
    return v1
.end method

.method private a(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 7

    .line 359
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 363
    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/g;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_30

    .line 365
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment no longer exists for key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": unique id "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroidx/fragment/app/g;->a(Ljava/lang/RuntimeException;)V

    :cond_30
    return-object v0
.end method

.method private static a(FF)Landroidx/fragment/app/g$a;
    .registers 3

    .line 595
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 596
    sget-object p0, Landroidx/fragment/app/g;->I:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 p0, 0xdc

    .line 597
    invoke-virtual {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 598
    new-instance p0, Landroidx/fragment/app/g$a;

    invoke-direct {p0, v0}, Landroidx/fragment/app/g$a;-><init>(Landroid/view/animation/Animation;)V

    return-object p0
.end method

.method private static a(FFFF)Landroidx/fragment/app/g$a;
    .registers 15

    .line 581
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 582
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v2, v1

    move v3, p0

    move v4, p1

    move v5, p0

    move v6, p1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 584
    sget-object p0, Landroidx/fragment/app/g;->H:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, p0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 p0, 0xdc

    .line 585
    invoke-virtual {v1, p0, p1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 586
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 587
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 588
    sget-object p2, Landroidx/fragment/app/g;->I:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, p2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 589
    invoke-virtual {v1, p0, p1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 590
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 591
    new-instance p0, Landroidx/fragment/app/g$a;

    invoke-direct {p0, v0}, Landroidx/fragment/app/g$a;-><init>(Landroid/view/animation/Animation;)V

    return-object p0
.end method

.method private a(Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/g$a;
    .registers 11

    .line 603
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->F()I

    move-result v0

    const/4 v1, 0x0

    .line 605
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->a(I)V

    .line 607
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->F:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    if-eqz v2, :cond_16

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->F:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    if-eqz p1, :cond_16

    return-object v3

    :cond_16
    const/4 p1, 0x1

    if-eqz v0, :cond_67

    .line 621
    iget-object v2, p0, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    .line 10200
    iget-object v2, v2, Landroidx/fragment/app/e;->c:Landroid/content/Context;

    .line 621
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "anim"

    .line 622
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 627
    :try_start_2d
    iget-object v4, p0, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    .line 11200
    iget-object v4, v4, Landroidx/fragment/app/e;->c:Landroid/content/Context;

    .line 627
    invoke-static {v4, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_3d

    .line 629
    new-instance v5, Landroidx/fragment/app/g$a;

    invoke-direct {v5, v4}, Landroidx/fragment/app/g$a;-><init>(Landroid/view/animation/Animation;)V
    :try_end_3c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2d .. :try_end_3c} :catch_3f
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_3c} :catch_41

    return-object v5

    :cond_3d
    move v1, p1

    goto :goto_41

    :catch_3f
    move-exception p0

    .line 634
    throw p0

    :catch_41
    :cond_41
    :goto_41
    if-nez v1, :cond_67

    .line 642
    :try_start_43
    iget-object v1, p0, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    .line 12200
    iget-object v1, v1, Landroidx/fragment/app/e;->c:Landroid/content/Context;

    .line 642
    invoke-static {v1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_67

    .line 644
    new-instance v4, Landroidx/fragment/app/g$a;

    invoke-direct {v4, v1}, Landroidx/fragment/app/g$a;-><init>(Landroid/animation/Animator;)V
    :try_end_52
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_52} :catch_53

    return-object v4

    :catch_53
    move-exception v1

    if-nez v2, :cond_66

    .line 652
    iget-object v1, p0, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    .line 13200
    iget-object v1, v1, Landroidx/fragment/app/e;->c:Landroid/content/Context;

    .line 652
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 654
    new-instance p0, Landroidx/fragment/app/g$a;

    invoke-direct {p0, v0}, Landroidx/fragment/app/g$a;-><init>(Landroid/view/animation/Animation;)V

    return-object p0

    .line 649
    :cond_66
    throw v1

    :cond_67
    if-nez p2, :cond_6a

    return-object v3

    :cond_6a
    const/4 v0, -0x1

    const/16 v1, 0x1001

    if-eq p2, v1, :cond_85

    const/16 p1, 0x1003

    if-eq p2, p1, :cond_7f

    const/16 p1, 0x2002

    if-eq p2, p1, :cond_78

    goto :goto_8a

    :cond_78
    if-eqz p3, :cond_7d

    const/4 p1, 0x3

    :goto_7b
    move v0, p1

    goto :goto_8a

    :cond_7d
    const/4 p1, 0x4

    goto :goto_7b

    :cond_7f
    if-eqz p3, :cond_83

    const/4 p1, 0x5

    goto :goto_7b

    :cond_83
    const/4 p1, 0x6

    goto :goto_7b

    :cond_85
    if-eqz p3, :cond_88

    goto :goto_7b

    :cond_88
    const/4 p1, 0x2

    goto :goto_7b

    :goto_8a
    if-gez v0, :cond_8d

    return-object v3

    :cond_8d
    const p1, 0x3f79999a    # 0.975f

    const/4 p2, 0x0

    const/high16 p3, 0x3f800000    # 1.0f

    packed-switch v0, :pswitch_data_ce

    if-nez p4, :cond_ca

    .line 685
    iget-object p1, p0, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    invoke-virtual {p1}, Landroidx/fragment/app/e;->g()Z

    move-result p1

    if-eqz p1, :cond_ca

    .line 686
    iget-object p0, p0, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    invoke-virtual {p0}, Landroidx/fragment/app/e;->h()I

    move-result p4

    goto :goto_ca

    .line 681
    :pswitch_a7
    invoke-static {p3, p2}, Landroidx/fragment/app/g;->a(FF)Landroidx/fragment/app/g$a;

    move-result-object p0

    return-object p0

    .line 679
    :pswitch_ac
    invoke-static {p2, p3}, Landroidx/fragment/app/g;->a(FF)Landroidx/fragment/app/g$a;

    move-result-object p0

    return-object p0

    :pswitch_b1
    const p0, 0x3f89999a    # 1.075f

    .line 677
    invoke-static {p3, p0, p3, p2}, Landroidx/fragment/app/g;->a(FFFF)Landroidx/fragment/app/g$a;

    move-result-object p0

    return-object p0

    .line 675
    :pswitch_b9
    invoke-static {p1, p3, p2, p3}, Landroidx/fragment/app/g;->a(FFFF)Landroidx/fragment/app/g$a;

    move-result-object p0

    return-object p0

    .line 673
    :pswitch_be
    invoke-static {p3, p1, p3, p2}, Landroidx/fragment/app/g;->a(FFFF)Landroidx/fragment/app/g$a;

    move-result-object p0

    return-object p0

    :pswitch_c3
    const/high16 p0, 0x3f900000    # 1.125f

    .line 671
    invoke-static {p0, p3, p2, p3}, Landroidx/fragment/app/g;->a(FFFF)Landroidx/fragment/app/g$a;

    move-result-object p0

    return-object p0

    :cond_ca
    :goto_ca
    if-nez p4, :cond_cd

    return-object v3

    :cond_cd
    return-object v3

    :pswitch_data_ce
    .packed-switch 0x1
        :pswitch_c3
        :pswitch_be
        :pswitch_b9
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
    .end packed-switch
.end method

.method private a(ILandroidx/fragment/app/a;)V
    .registers 7

    .line 1617
    monitor-enter p0

    .line 1618
    :try_start_1
    iget-object v0, p0, Landroidx/fragment/app/g;->m:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 1619
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/g;->m:Ljava/util/ArrayList;

    .line 1621
    :cond_c
    iget-object v0, p0, Landroidx/fragment/app/g;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_39

    .line 1623
    sget-boolean v0, Landroidx/fragment/app/g;->c:Z

    if-eqz v0, :cond_33

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting back stack index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    :cond_33
    iget-object v0, p0, Landroidx/fragment/app/g;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_8f

    :cond_39
    :goto_39
    if-ge v0, p1, :cond_6b

    .line 1627
    iget-object v1, p0, Landroidx/fragment/app/g;->m:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1628
    iget-object v1, p0, Landroidx/fragment/app/g;->n:Ljava/util/ArrayList;

    if-nez v1, :cond_4c

    .line 1629
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/g;->n:Ljava/util/ArrayList;

    .line 1631
    :cond_4c
    sget-boolean v1, Landroidx/fragment/app/g;->c:Z

    if-eqz v1, :cond_5f

    const-string v1, "FragmentManager"

    const-string v2, "Adding available back stack index "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    :cond_5f
    iget-object v1, p0, Landroidx/fragment/app/g;->n:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 1635
    :cond_6b
    sget-boolean v0, Landroidx/fragment/app/g;->c:Z

    if-eqz v0, :cond_8a

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding back stack index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " with "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    :cond_8a
    iget-object p1, p0, Landroidx/fragment/app/g;->m:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1638
    :goto_8f
    monitor-exit p0

    return-void

    :catchall_91
    move-exception p1

    monitor-exit p0
    :try_end_93
    .catchall {:try_start_1 .. :try_end_93} :catchall_91

    throw p1
.end method

.method private a(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .registers 7

    .line 349
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    if-eq v0, p0, :cond_1f

    .line 350
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/fragment/app/g;->a(Ljava/lang/RuntimeException;)V

    .line 353
    :cond_1f
    iget-object p0, p3, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroidx/b/b;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/b/b<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 1909
    invoke-virtual {p0}, Landroidx/b/b;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_22

    .line 34335
    iget-object v2, p0, Landroidx/b/b;->a:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 1911
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 1912
    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->k:Z

    if-nez v3, :cond_1f

    .line 1913
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->l()Landroid/view/View;

    move-result-object v3

    .line 1914
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v4

    iput v4, v2, Landroidx/fragment/app/Fragment;->O:F

    const/4 v2, 0x0

    .line 1915
    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_22
    return-void
.end method

.method private a(Landroidx/fragment/app/Fragment;Landroid/content/Context;)V
    .registers 5

    .line 2878
    iget-object v0, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_11

    .line 2879
    iget-object v0, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    .line 39890
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    .line 2880
    instance-of v1, v0, Landroidx/fragment/app/g;

    if-eqz v1, :cond_11

    .line 2881
    check-cast v0, Landroidx/fragment/app/g;

    .line 2882
    invoke-direct {v0, p1, p2}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    .line 2885
    :cond_11
    iget-object p0, p0, Landroidx/fragment/app/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_17

    :cond_21
    return-void
.end method

.method private a(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V
    .registers 5

    .line 2910
    iget-object v0, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_11

    .line 2911
    iget-object v0, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    .line 41890
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    .line 2912
    instance-of v1, v0, Landroidx/fragment/app/g;

    if-eqz v1, :cond_11

    .line 2913
    check-cast v0, Landroidx/fragment/app/g;

    .line 2914
    invoke-direct {v0, p1, p2}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 2917
    :cond_11
    iget-object p0, p0, Landroidx/fragment/app/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_17

    :cond_21
    return-void
.end method

.method private a(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .registers 6

    .line 2958
    iget-object v0, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_11

    .line 2959
    iget-object v0, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    .line 44890
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    .line 2960
    instance-of v1, v0, Landroidx/fragment/app/g;

    if-eqz v1, :cond_11

    .line 2961
    check-cast v0, Landroidx/fragment/app/g;

    .line 2962
    invoke-direct {v0, p1, p2, p3}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    .line 2965
    :cond_11
    iget-object p0, p0, Landroidx/fragment/app/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_17

    :cond_21
    return-void
.end method

.method private a(Ljava/lang/RuntimeException;)V
    .registers 6

    const-string v0, "FragmentManager"

    .line 155
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FragmentManager"

    const-string v1, "Activity state:"

    .line 156
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v0, Landroidx/core/d/b;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroidx/core/d/b;-><init>(Ljava/lang/String;)V

    .line 158
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 159
    iget-object v0, p0, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    const/4 v2, 0x0

    if-eqz v0, :cond_34

    .line 161
    :try_start_21
    iget-object p0, p0, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    const-string v0, "  "

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Landroidx/fragment/app/e;->a(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2a} :catch_2b

    goto :goto_45

    :catch_2b
    move-exception p0

    const-string v0, "FragmentManager"

    const-string v1, "Failed dumping state"

    .line 163
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_45

    :cond_34
    :try_start_34
    const-string v0, "  "

    const/4 v3, 0x0

    .line 167
    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0, v0, v3, v1, v2}, Landroidx/fragment/app/g;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3c} :catch_3d

    goto :goto_45

    :catch_3d
    move-exception p0

    const-string v0, "FragmentManager"

    const-string v1, "Failed dumping state"

    .line 169
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    :goto_45
    throw p1
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1747
    iget-object v0, p0, Landroidx/fragment/app/g;->E:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_d

    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/g;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_d
    move v2, v0

    move v0, v1

    :goto_f
    if-ge v0, v2, :cond_85

    .line 1749
    iget-object v3, p0, Landroidx/fragment/app/g;->E:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/g$e;

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz p1, :cond_42

    .line 1750
    iget-boolean v6, v3, Landroidx/fragment/app/g$e;->a:Z

    if-nez v6, :cond_42

    .line 1751
    iget-object v6, v3, Landroidx/fragment/app/g$e;->b:Landroidx/fragment/app/a;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eq v6, v5, :cond_42

    .line 1752
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_42

    .line 1753
    iget-object v5, p0, Landroidx/fragment/app/g;->E:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v2, -0x1

    .line 1756
    invoke-virtual {v3}, Landroidx/fragment/app/g$e;->d()V

    goto :goto_83

    .line 32362
    :cond_42
    iget v6, v3, Landroidx/fragment/app/g$e;->c:I

    if-nez v6, :cond_48

    move v6, v4

    goto :goto_49

    :cond_48
    move v6, v1

    :goto_49
    if-nez v6, :cond_59

    if-eqz p1, :cond_83

    .line 1760
    iget-object v6, v3, Landroidx/fragment/app/g$e;->b:Landroidx/fragment/app/a;

    .line 1761
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, p1, v1, v7}, Landroidx/fragment/app/a;->a(Ljava/util/ArrayList;II)Z

    move-result v6

    if-eqz v6, :cond_83

    .line 1762
    :cond_59
    iget-object v6, p0, Landroidx/fragment/app/g;->E:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v2, -0x1

    if-eqz p1, :cond_80

    .line 1766
    iget-boolean v6, v3, Landroidx/fragment/app/g$e;->a:Z

    if-nez v6, :cond_80

    iget-object v6, v3, Landroidx/fragment/app/g$e;->b:Landroidx/fragment/app/a;

    .line 1767
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eq v6, v5, :cond_80

    .line 1768
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_80

    .line 1770
    invoke-virtual {v3}, Landroidx/fragment/app/g$e;->d()V

    goto :goto_83

    .line 1772
    :cond_80
    invoke-virtual {v3}, Landroidx/fragment/app/g$e;->c()V

    :cond_83
    :goto_83
    add-int/2addr v0, v4

    goto :goto_f

    :cond_85
    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    .line 1844
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a;

    iget-boolean v11, v1, Landroidx/fragment/app/a;->t:Z

    .line 1846
    iget-object v1, v7, Landroidx/fragment/app/g;->B:Ljava/util/ArrayList;

    if-nez v1, :cond_1d

    .line 1847
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Landroidx/fragment/app/g;->B:Ljava/util/ArrayList;

    goto :goto_22

    .line 1849
    :cond_1d
    iget-object v1, v7, Landroidx/fragment/app/g;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1851
    :goto_22
    iget-object v1, v7, Landroidx/fragment/app/g;->B:Ljava/util/ArrayList;

    iget-object v2, v7, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 32821
    iget-object v1, v7, Landroidx/fragment/app/g;->t:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    move-object v3, v1

    move v12, v2

    move v1, v9

    :goto_2f
    const/4 v13, 0x1

    if-ge v1, v10, :cond_5e

    .line 1854
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/a;

    .line 1855
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_4b

    .line 1857
    iget-object v5, v7, Landroidx/fragment/app/g;->B:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v3}, Landroidx/fragment/app/a;->a(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    goto :goto_51

    .line 1859
    :cond_4b
    iget-object v5, v7, Landroidx/fragment/app/g;->B:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v3}, Landroidx/fragment/app/a;->b(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    :goto_51
    if-nez v12, :cond_5a

    .line 1861
    iget-boolean v4, v4, Landroidx/fragment/app/a;->k:Z

    if-eqz v4, :cond_58

    goto :goto_5a

    :cond_58
    move v12, v2

    goto :goto_5b

    :cond_5a
    :goto_5a
    move v12, v13

    :goto_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 1863
    :cond_5e
    iget-object v1, v7, Landroidx/fragment/app/g;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-nez v11, :cond_72

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 1866
    invoke-static/range {v1 .. v6}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/g;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 1869
    :cond_72
    invoke-static/range {p1 .. p4}, Landroidx/fragment/app/g;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    if-eqz v11, :cond_92

    .line 1873
    new-instance v14, Landroidx/b/b;

    invoke-direct {v14}, Landroidx/b/b;-><init>()V

    .line 1874
    invoke-direct {p0, v14}, Landroidx/fragment/app/g;->b(Landroidx/b/b;)V

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v14

    .line 1875
    invoke-direct/range {v1 .. v6}, Landroidx/fragment/app/g;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroidx/b/b;)I

    move-result v1

    .line 1877
    invoke-static {v14}, Landroidx/fragment/app/g;->a(Landroidx/b/b;)V

    move v5, v1

    goto :goto_93

    :cond_92
    move v5, v10

    :goto_93
    if-eq v5, v9, :cond_a7

    if-eqz v11, :cond_a7

    const/4 v6, 0x1

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    .line 1882
    invoke-static/range {v1 .. v6}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/g;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 1884
    iget v1, v7, Landroidx/fragment/app/g;->p:I

    invoke-virtual {p0, v1, v13}, Landroidx/fragment/app/g;->a(IZ)V

    :cond_a7
    :goto_a7
    if-ge v9, v10, :cond_fd

    .line 1888
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a;

    .line 1889
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_f7

    .line 1890
    iget v2, v1, Landroidx/fragment/app/a;->c:I

    if-ltz v2, :cond_f7

    .line 1891
    iget v2, v1, Landroidx/fragment/app/a;->c:I

    .line 33642
    monitor-enter p0

    .line 33643
    :try_start_c2
    iget-object v3, v7, Landroidx/fragment/app/g;->m:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 33644
    iget-object v3, v7, Landroidx/fragment/app/g;->n:Ljava/util/ArrayList;

    if-nez v3, :cond_d3

    .line 33645
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v7, Landroidx/fragment/app/g;->n:Ljava/util/ArrayList;

    .line 33647
    :cond_d3
    sget-boolean v3, Landroidx/fragment/app/g;->c:Z

    if-eqz v3, :cond_e6

    const-string v3, "FragmentManager"

    const-string v4, "Freeing back stack index "

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33648
    :cond_e6
    iget-object v3, v7, Landroidx/fragment/app/g;->n:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33649
    monitor-exit p0
    :try_end_f0
    .catchall {:try_start_c2 .. :try_end_f0} :catchall_f4

    const/4 v2, -0x1

    .line 1892
    iput v2, v1, Landroidx/fragment/app/a;->c:I

    goto :goto_f7

    :catchall_f4
    move-exception v0

    .line 33649
    :try_start_f5
    monitor-exit p0
    :try_end_f6
    .catchall {:try_start_f5 .. :try_end_f6} :catchall_f4

    throw v0

    .line 1894
    :cond_f7
    :goto_f7
    invoke-virtual {v1}, Landroidx/fragment/app/a;->a()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_a7

    :cond_fd
    if-eqz v12, :cond_102

    .line 1897
    invoke-direct {p0}, Landroidx/fragment/app/g;->B()V

    :cond_102
    return-void
.end method

.method private b(Landroidx/b/b;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/b/b<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 2091
    iget v0, p0, Landroidx/fragment/app/g;->p:I

    if-gtz v0, :cond_5

    return-void

    .line 2095
    :cond_5
    iget v0, p0, Landroidx/fragment/app/g;->p:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2096
    iget-object v1, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v8, v2

    :goto_14
    if-ge v8, v1, :cond_44

    .line 2098
    iget-object v2, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/fragment/app/Fragment;

    .line 2099
    iget v2, v9, Landroidx/fragment/app/Fragment;->b:I

    if-ge v2, v0, :cond_41

    .line 2100
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->F()I

    move-result v5

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->G()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v9

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 2102
    iget-object v2, v9, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    if-eqz v2, :cond_41

    iget-boolean v2, v9, Landroidx/fragment/app/Fragment;->y:Z

    if-nez v2, :cond_41

    iget-boolean v2, v9, Landroidx/fragment/app/Fragment;->M:Z

    if-eqz v2, :cond_41

    .line 2103
    invoke-virtual {p1, v9}, Landroidx/b/b;->add(Ljava/lang/Object;)Z

    :cond_41
    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    :cond_44
    return-void
.end method

.method private b(Landroidx/fragment/app/Fragment;Landroid/content/Context;)V
    .registers 5

    .line 2894
    iget-object v0, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_11

    .line 2895
    iget-object v0, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    .line 40890
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    .line 2896
    instance-of v1, v0, Landroidx/fragment/app/g;

    if-eqz v1, :cond_11

    .line 2897
    check-cast v0, Landroidx/fragment/app/g;

    .line 2898
    invoke-direct {v0, p1, p2}, Landroidx/fragment/app/g;->b(Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    .line 2901
    :cond_11
    iget-object p0, p0, Landroidx/fragment/app/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_17

    :cond_21
    return-void
.end method

.method private b(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V
    .registers 5

    .line 2926
    iget-object v0, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_11

    .line 2927
    iget-object v0, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    .line 42890
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    .line 2928
    instance-of v1, v0, Landroidx/fragment/app/g;

    if-eqz v1, :cond_11

    .line 2929
    check-cast v0, Landroidx/fragment/app/g;

    .line 2930
    invoke-direct {v0, p1, p2}, Landroidx/fragment/app/g;->b(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 2933
    :cond_11
    iget-object p0, p0, Landroidx/fragment/app/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_17

    :cond_21
    return-void
.end method

.method private b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_6e

    .line 1794
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_6e

    :cond_9
    if-eqz p2, :cond_66

    .line 1798
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_66

    .line 1803
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/g;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1805
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1e
    if-ge v1, v0, :cond_60

    .line 1808
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-boolean v3, v3, Landroidx/fragment/app/a;->t:Z

    if-nez v3, :cond_5d

    if-eq v2, v1, :cond_2f

    .line 1812
    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/fragment/app/g;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_2f
    add-int/lit8 v2, v1, 0x1

    .line 1817
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_58

    :goto_3d
    if-ge v2, v0, :cond_58

    .line 1819
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 1820
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-boolean v3, v3, Landroidx/fragment/app/a;->t:Z

    if-nez v3, :cond_58

    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 1824
    :cond_58
    invoke-direct {p0, p1, p2, v1, v2}, Landroidx/fragment/app/g;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_60
    if-eq v2, v0, :cond_65

    .line 1830
    invoke-direct {p0, p1, p2, v2, v0}, Landroidx/fragment/app/g;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_65
    return-void

    .line 1799
    :cond_66
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Internal error with the back stack records"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6e
    :goto_6e
    return-void
.end method

.method private static b(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    :goto_0
    if-ge p2, p3, :cond_2c

    .line 2069
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/a;

    .line 2070
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_23

    const/4 v1, -0x1

    .line 2072
    invoke-virtual {v0, v1}, Landroidx/fragment/app/a;->a(I)V

    add-int/lit8 v1, p3, -0x1

    if-ne p2, v1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    .line 2076
    :goto_1f
    invoke-virtual {v0, v2}, Landroidx/fragment/app/a;->a(Z)V

    goto :goto_29

    .line 2078
    :cond_23
    invoke-virtual {v0, v2}, Landroidx/fragment/app/a;->a(I)V

    .line 2079
    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()V

    :goto_29
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2c
    return-void
.end method

.method public static c(I)I
    .registers 4

    const/16 v0, 0x2002

    const/16 v1, 0x1003

    const/16 v2, 0x1001

    if-eq p0, v2, :cond_11

    if-eq p0, v1, :cond_10

    if-eq p0, v0, :cond_e

    const/4 v0, 0x0

    goto :goto_11

    :cond_e
    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v1

    :cond_11
    :goto_11
    return v0
.end method

.method private c(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V
    .registers 5

    .line 2942
    iget-object v0, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_11

    .line 2943
    iget-object v0, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    .line 43890
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    .line 2944
    instance-of v1, v0, Landroidx/fragment/app/g;

    if-eqz v1, :cond_11

    .line 2945
    check-cast v0, Landroidx/fragment/app/g;

    .line 2946
    invoke-direct {v0, p1, p2}, Landroidx/fragment/app/g;->c(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 2949
    :cond_11
    iget-object p0, p0, Landroidx/fragment/app/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_17

    :cond_21
    return-void
.end method

.method private c(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 2160
    monitor-enter p0

    .line 2161
    :try_start_1
    iget-object v0, p0, Landroidx/fragment/app/g;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    iget-object v0, p0, Landroidx/fragment/app/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_38

    .line 2165
    :cond_f
    iget-object v0, p0, Landroidx/fragment/app/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_16
    if-ge v1, v0, :cond_28

    .line 2167
    iget-object v3, p0, Landroidx/fragment/app/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/g$d;

    invoke-interface {v3, p1, p2}, Landroidx/fragment/app/g$d;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 2169
    :cond_28
    iget-object p1, p0, Landroidx/fragment/app/g;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2170
    iget-object p1, p0, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    .line 35205
    iget-object p1, p1, Landroidx/fragment/app/e;->d:Landroid/os/Handler;

    .line 2170
    iget-object p2, p0, Landroidx/fragment/app/g;->G:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2171
    monitor-exit p0

    return v2

    .line 2162
    :cond_38
    :goto_38
    monitor-exit p0

    return v1

    :catchall_3a
    move-exception p1

    .line 2171
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method private d(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V
    .registers 5

    .line 3034
    iget-object v0, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_11

    .line 3035
    iget-object v0, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    .line 49890
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    .line 3036
    instance-of v1, v0, Landroidx/fragment/app/g;

    if-eqz v1, :cond_11

    .line 3037
    check-cast v0, Landroidx/fragment/app/g;

    .line 3038
    invoke-direct {v0, p1, p2}, Landroidx/fragment/app/g;->d(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 3041
    :cond_11
    iget-object p0, p0, Landroidx/fragment/app/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_17

    :cond_21
    return-void
.end method

.method public static e(Landroidx/fragment/app/Fragment;)V
    .registers 4

    .line 1420
    sget-boolean v0, Landroidx/fragment/app/g;->c:Z

    if-eqz v0, :cond_13

    const-string v0, "FragmentManager"

    const-string v1, "hide: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    :cond_13
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->y:Z

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    .line 1422
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->y:Z

    .line 1425
    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->N:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->N:Z

    :cond_1f
    return-void
.end method

.method public static f(Landroidx/fragment/app/Fragment;)V
    .registers 4

    .line 1436
    sget-boolean v0, Landroidx/fragment/app/g;->c:Z

    if-eqz v0, :cond_13

    const-string v0, "FragmentManager"

    const-string v1, "show: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    :cond_13
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->y:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    .line 1438
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->y:Z

    .line 1441
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->N:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->N:Z

    :cond_20
    return-void
.end method

.method private k(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/h;
    .registers 4

    .line 389
    iget-object p0, p0, Landroidx/fragment/app/g;->F:Landroidx/fragment/app/h;

    .line 8129
    iget-object v0, p0, Landroidx/fragment/app/h;->b:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/h;

    if-nez v0, :cond_1c

    .line 8131
    new-instance v0, Landroidx/fragment/app/h;

    iget-boolean v1, p0, Landroidx/fragment/app/h;->d:Z

    invoke-direct {v0, v1}, Landroidx/fragment/app/h;-><init>(Z)V

    .line 8132
    iget-object p0, p0, Landroidx/fragment/app/h;->b:Ljava/util/HashMap;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    return-object v0
.end method

.method private l(Landroidx/fragment/app/Fragment;)V
    .registers 3

    .line 406
    invoke-virtual {p0}, Landroidx/fragment/app/g;->g()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 407
    sget-boolean p0, Landroidx/fragment/app/g;->c:Z

    if-eqz p0, :cond_11

    const-string p0, "FragmentManager"

    const-string p1, "Ignoring removeRetainedFragment as the state is already saved"

    .line 408
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return-void

    .line 412
    :cond_12
    iget-object p0, p0, Landroidx/fragment/app/g;->F:Landroidx/fragment/app/h;

    .line 9124
    iget-object p0, p0, Landroidx/fragment/app/h;->a:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2f

    .line 413
    sget-boolean p0, Landroidx/fragment/app/g;->c:Z

    if-eqz p0, :cond_2f

    const-string p0, "FragmentManager"

    const-string v0, "Updating retained Fragments: Removed "

    .line 414
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    return-void
.end method

.method private m(Landroidx/fragment/app/Fragment;)V
    .registers 8

    .line 1133
    iget v2, p0, Landroidx/fragment/app/g;->p:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/Fragment;IIIZ)V

    return-void
.end method

.method private n(Landroidx/fragment/app/Fragment;)V
    .registers 9

    .line 1163
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_77

    .line 1164
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->G()I

    move-result v0

    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->y:Z

    xor-int/2addr v3, v1

    .line 1165
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->H()I

    move-result v4

    .line 1164
    invoke-direct {p0, p1, v0, v3, v4}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/g$a;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 1166
    iget-object v3, v0, Landroidx/fragment/app/g$a;->b:Landroid/animation/Animator;

    if-eqz v3, :cond_4d

    .line 1167
    iget-object v3, v0, Landroidx/fragment/app/g$a;->b:Landroid/animation/Animator;

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1168
    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->y:Z

    if-eqz v3, :cond_42

    .line 1169
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->O()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1170
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->c(Z)V

    goto :goto_47

    .line 1172
    :cond_30
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->F:Landroid/view/ViewGroup;

    .line 1173
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    .line 1174
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1177
    iget-object v5, v0, Landroidx/fragment/app/g$a;->b:Landroid/animation/Animator;

    new-instance v6, Landroidx/fragment/app/g$5;

    invoke-direct {v6, p0, v3, v4, p1}, Landroidx/fragment/app/g$5;-><init>(Landroidx/fragment/app/g;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_47

    .line 1189
    :cond_42
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1191
    :goto_47
    iget-object v0, v0, Landroidx/fragment/app/g$a;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_77

    :cond_4d
    if-eqz v0, :cond_5b

    .line 1194
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    iget-object v4, v0, Landroidx/fragment/app/g$a;->a:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1195
    iget-object v0, v0, Landroidx/fragment/app/g$a;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 1197
    :cond_5b
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->y:Z

    if-eqz v0, :cond_68

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->O()Z

    move-result v0

    if-nez v0, :cond_68

    const/16 v0, 0x8

    goto :goto_69

    :cond_68
    move v0, v2

    .line 1200
    :goto_69
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1201
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->O()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 1202
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->c(Z)V

    .line 1206
    :cond_77
    :goto_77
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->k:Z

    if-eqz v0, :cond_83

    invoke-static {p1}, Landroidx/fragment/app/g;->z(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 1207
    iput-boolean v1, p0, Landroidx/fragment/app/g;->u:Z

    .line 1209
    :cond_83
    iput-boolean v2, p1, Landroidx/fragment/app/Fragment;->N:Z

    return-void
.end method

.method private o(Landroidx/fragment/app/Fragment;)V
    .registers 7

    .line 1348
    iget-object v0, p0, Landroidx/fragment/app/g;->h:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 1352
    :cond_b
    sget-boolean v0, Landroidx/fragment/app/g;->c:Z

    if-eqz v0, :cond_1e

    const-string v0, "FragmentManager"

    const-string v1, "Removed fragment from active set "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    :cond_1e
    iget-object v0, p0, Landroidx/fragment/app/g;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_28
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_28

    .line 1356
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    iget-object v4, v1, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1357
    iput-object p1, v1, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    .line 1358
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    goto :goto_28

    .line 1363
    :cond_46
    iget-object v0, p0, Landroidx/fragment/app/g;->h:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    invoke-direct {p0, p1}, Landroidx/fragment/app/g;->l(Landroidx/fragment/app/Fragment;)V

    .line 1366
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    if-eqz v0, :cond_60

    .line 1369
    iget-object p0, p0, Landroidx/fragment/app/g;->h:Ljava/util/HashMap;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    iput-object p0, p1, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    .line 1371
    :cond_60
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->o()V

    return-void
.end method

.method private p(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .registers 6

    .line 2040
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->F:Landroid/view/ViewGroup;

    .line 2041
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_29

    if-nez v1, :cond_a

    goto :goto_29

    .line 2047
    :cond_a
    iget-object v1, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_12
    if-ltz p1, :cond_28

    .line 2049
    iget-object v1, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2050
    iget-object v3, v1, Landroidx/fragment/app/Fragment;->F:Landroid/view/ViewGroup;

    if-ne v3, v0, :cond_25

    iget-object v3, v1, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    if-eqz v3, :cond_25

    return-object v1

    :cond_25
    add-int/lit8 p1, p1, -0x1

    goto :goto_12

    :cond_28
    return-object v2

    :cond_29
    :goto_29
    return-object v2
.end method

.method private q(Landroidx/fragment/app/Fragment;)V
    .registers 4

    .line 2268
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 2271
    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/g;->D:Landroid/util/SparseArray;

    if-nez v0, :cond_11

    .line 2272
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/g;->D:Landroid/util/SparseArray;

    goto :goto_16

    .line 2274
    :cond_11
    iget-object v0, p0, Landroidx/fragment/app/g;->D:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2276
    :goto_16
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    iget-object v1, p0, Landroidx/fragment/app/g;->D:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 2277
    iget-object v0, p0, Landroidx/fragment/app/g;->D:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2c

    .line 2278
    iget-object v0, p0, Landroidx/fragment/app/g;->D:Landroid/util/SparseArray;

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 2279
    iput-object p1, p0, Landroidx/fragment/app/g;->D:Landroid/util/SparseArray;

    :cond_2c
    return-void
.end method

.method private r(Landroidx/fragment/app/Fragment;)Landroid/os/Bundle;
    .registers 4

    .line 2286
    iget-object v0, p0, Landroidx/fragment/app/g;->C:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 2287
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/g;->C:Landroid/os/Bundle;

    .line 2289
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/g;->C:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->e(Landroid/os/Bundle;)V

    .line 2290
    iget-object v0, p0, Landroidx/fragment/app/g;->C:Landroid/os/Bundle;

    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/g;->d(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 2291
    iget-object v0, p0, Landroidx/fragment/app/g;->C:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_23

    .line 2292
    iget-object v0, p0, Landroidx/fragment/app/g;->C:Landroid/os/Bundle;

    .line 2293
    iput-object v1, p0, Landroidx/fragment/app/g;->C:Landroid/os/Bundle;

    goto :goto_24

    :cond_23
    move-object v0, v1

    .line 2296
    :goto_24
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    if-eqz v1, :cond_2b

    .line 2297
    invoke-direct {p0, p1}, Landroidx/fragment/app/g;->q(Landroidx/fragment/app/Fragment;)V

    .line 2299
    :cond_2b
    iget-object p0, p1, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    if-eqz p0, :cond_3d

    if-nez v0, :cond_36

    .line 2301
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_36
    const-string p0, "android:view_state"

    .line 2303
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2306
    :cond_3d
    iget-boolean p0, p1, Landroidx/fragment/app/Fragment;->J:Z

    if-nez p0, :cond_4f

    if-nez v0, :cond_48

    .line 2308
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_48
    const-string p0, "android:user_visible_hint"

    .line 2311
    iget-boolean p1, p1, Landroidx/fragment/app/Fragment;->J:Z

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4f
    return-object v0
.end method

.method private s(Landroidx/fragment/app/Fragment;)V
    .registers 4

    .line 2973
    iget-object v0, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_11

    .line 2974
    iget-object v0, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    .line 45890
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    .line 2975
    instance-of v1, v0, Landroidx/fragment/app/g;

    if-eqz v1, :cond_11

    .line 2976
    check-cast v0, Landroidx/fragment/app/g;

    .line 2977
    invoke-direct {v0, p1}, Landroidx/fragment/app/g;->s(Landroidx/fragment/app/Fragment;)V

    .line 2980
    :cond_11
    iget-object p0, p0, Landroidx/fragment/app/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_17

    :cond_21
    return-void
.end method

.method private s()Z
    .registers 6

    .line 293
    invoke-virtual {p0}, Landroidx/fragment/app/g;->i()Z

    .line 294
    invoke-direct {p0}, Landroidx/fragment/app/g;->w()V

    .line 296
    iget-object v0, p0, Landroidx/fragment/app/g;->t:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    .line 299
    iget-object v0, p0, Landroidx/fragment/app/g;->t:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->i()Landroidx/fragment/app/f;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Landroidx/fragment/app/f;->c()Z

    move-result v0

    if-eqz v0, :cond_18

    return v1

    .line 306
    :cond_18
    iget-object v0, p0, Landroidx/fragment/app/g;->z:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/g;->A:Ljava/util/ArrayList;

    .line 6200
    iget-object v3, p0, Landroidx/fragment/app/g;->i:Ljava/util/ArrayList;

    const/4 v4, 0x0

    if-nez v3, :cond_22

    goto :goto_3b

    .line 6204
    :cond_22
    iget-object v3, p0, Landroidx/fragment/app/g;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-gez v3, :cond_2c

    goto :goto_3b

    .line 6208
    :cond_2c
    iget-object v4, p0, Landroidx/fragment/app/g;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6209
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v1

    :goto_3b
    if-eqz v4, :cond_4f

    .line 308
    iput-boolean v1, p0, Landroidx/fragment/app/g;->e:Z

    .line 310
    :try_start_3f
    iget-object v0, p0, Landroidx/fragment/app/g;->z:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/g;->A:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Landroidx/fragment/app/g;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_4a

    .line 312
    invoke-direct {p0}, Landroidx/fragment/app/g;->x()V

    goto :goto_4f

    :catchall_4a
    move-exception v0

    invoke-direct {p0}, Landroidx/fragment/app/g;->x()V

    .line 313
    throw v0

    .line 316
    :cond_4f
    :goto_4f
    invoke-virtual {p0}, Landroidx/fragment/app/g;->f()V

    .line 317
    invoke-direct {p0}, Landroidx/fragment/app/g;->A()V

    .line 318
    invoke-direct {p0}, Landroidx/fragment/app/g;->C()V

    return v4
.end method

.method private t()I
    .registers 2

    .line 324
    iget-object v0, p0, Landroidx/fragment/app/g;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object p0, p0, Landroidx/fragment/app/g;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method private t(Landroidx/fragment/app/Fragment;)V
    .registers 4

    .line 2988
    iget-object v0, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_11

    .line 2989
    iget-object v0, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    .line 46890
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    .line 2990
    instance-of v1, v0, Landroidx/fragment/app/g;

    if-eqz v1, :cond_11

    .line 2991
    check-cast v0, Landroidx/fragment/app/g;

    .line 2992
    invoke-direct {v0, p1}, Landroidx/fragment/app/g;->t(Landroidx/fragment/app/Fragment;)V

    .line 2995
    :cond_11
    iget-object p0, p0, Landroidx/fragment/app/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_17

    :cond_21
    return-void
.end method

.method private u()V
    .registers 9

    .line 1323
    iget-object v0, p0, Landroidx/fragment/app/g;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_a

    .line 28706
    iget-boolean v1, v3, Landroidx/fragment/app/Fragment;->I:Z

    if-eqz v1, :cond_a

    .line 28707
    iget-boolean v1, p0, Landroidx/fragment/app/g;->e:Z

    if-eqz v1, :cond_25

    const/4 v1, 0x1

    .line 28709
    iput-boolean v1, p0, Landroidx/fragment/app/g;->y:Z

    goto :goto_a

    :cond_25
    const/4 v1, 0x0

    .line 28712
    iput-boolean v1, v3, Landroidx/fragment/app/Fragment;->I:Z

    .line 28713
    iget v4, p0, Landroidx/fragment/app/g;->p:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/Fragment;IIIZ)V

    goto :goto_a

    :cond_32
    return-void
.end method

.method private u(Landroidx/fragment/app/Fragment;)V
    .registers 4

    .line 3003
    iget-object v0, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_11

    .line 3004
    iget-object v0, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    .line 47890
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    .line 3005
    instance-of v1, v0, Landroidx/fragment/app/g;

    if-eqz v1, :cond_11

    .line 3006
    check-cast v0, Landroidx/fragment/app/g;

    .line 3007
    invoke-direct {v0, p1}, Landroidx/fragment/app/g;->u(Landroidx/fragment/app/Fragment;)V

    .line 3010
    :cond_11
    iget-object p0, p0, Landroidx/fragment/app/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_17

    :cond_21
    return-void
.end method

.method private v()V
    .registers 2

    .line 1535
    invoke-virtual {p0}, Landroidx/fragment/app/g;->g()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 1536
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private v(Landroidx/fragment/app/Fragment;)V
    .registers 4

    .line 3018
    iget-object v0, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_11

    .line 3019
    iget-object v0, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    .line 48890
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    .line 3020
    instance-of v1, v0, Landroidx/fragment/app/g;

    if-eqz v1, :cond_11

    .line 3021
    check-cast v0, Landroidx/fragment/app/g;

    .line 3022
    invoke-direct {v0, p1}, Landroidx/fragment/app/g;->v(Landroidx/fragment/app/Fragment;)V

    .line 3025
    :cond_11
    iget-object p0, p0, Landroidx/fragment/app/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_17

    :cond_21
    return-void
.end method

.method private w()V
    .registers 3

    .line 1659
    iget-boolean v0, p0, Landroidx/fragment/app/g;->e:Z

    if-nez v0, :cond_47

    .line 1663
    iget-object v0, p0, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    if-eqz v0, :cond_3f

    .line 1667
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    .line 32205
    iget-object v1, v1, Landroidx/fragment/app/e;->d:Landroid/os/Handler;

    .line 1667
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_37

    .line 1675
    iget-object v0, p0, Landroidx/fragment/app/g;->z:Ljava/util/ArrayList;

    if-nez v0, :cond_28

    .line 1676
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/g;->z:Ljava/util/ArrayList;

    .line 1677
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/g;->A:Ljava/util/ArrayList;

    :cond_28
    const/4 v0, 0x1

    .line 1679
    iput-boolean v0, p0, Landroidx/fragment/app/g;->e:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1681
    :try_start_2d
    invoke-direct {p0, v1, v1}, Landroidx/fragment/app/g;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_33

    .line 1683
    iput-boolean v0, p0, Landroidx/fragment/app/g;->e:Z

    return-void

    :catchall_33
    move-exception v1

    iput-boolean v0, p0, Landroidx/fragment/app/g;->e:Z

    .line 1684
    throw v1

    .line 1668
    :cond_37
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must be called from main thread of fragment host"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1664
    :cond_3f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment host has been destroyed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1660
    :cond_47
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager is already executing transactions"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private w(Landroidx/fragment/app/Fragment;)V
    .registers 4

    .line 3049
    iget-object v0, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_11

    .line 3050
    iget-object v0, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    .line 50890
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    .line 3051
    instance-of v1, v0, Landroidx/fragment/app/g;

    if-eqz v1, :cond_11

    .line 3052
    check-cast v0, Landroidx/fragment/app/g;

    .line 3053
    invoke-direct {v0, p1}, Landroidx/fragment/app/g;->w(Landroidx/fragment/app/Fragment;)V

    .line 3056
    :cond_11
    iget-object p0, p0, Landroidx/fragment/app/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_17

    :cond_21
    return-void
.end method

.method private x()V
    .registers 2

    const/4 v0, 0x0

    .line 1712
    iput-boolean v0, p0, Landroidx/fragment/app/g;->e:Z

    .line 1713
    iget-object v0, p0, Landroidx/fragment/app/g;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1714
    iget-object p0, p0, Landroidx/fragment/app/g;->z:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private x(Landroidx/fragment/app/Fragment;)V
    .registers 4

    .line 3064
    iget-object v0, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_11

    .line 3065
    iget-object v0, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    .line 50891
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    .line 3066
    instance-of v1, v0, Landroidx/fragment/app/g;

    if-eqz v1, :cond_11

    .line 3067
    check-cast v0, Landroidx/fragment/app/g;

    .line 3068
    invoke-direct {v0, p1}, Landroidx/fragment/app/g;->x(Landroidx/fragment/app/Fragment;)V

    .line 3071
    :cond_11
    iget-object p0, p0, Landroidx/fragment/app/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_17

    :cond_21
    return-void
.end method

.method private y()V
    .registers 3

    .line 2113
    iget-object v0, p0, Landroidx/fragment/app/g;->E:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    .line 2114
    :goto_4
    iget-object v0, p0, Landroidx/fragment/app/g;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 2115
    iget-object v0, p0, Landroidx/fragment/app/g;->E:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/g$e;

    invoke-virtual {v0}, Landroidx/fragment/app/g$e;->c()V

    goto :goto_4

    :cond_19
    return-void
.end method

.method private y(Landroidx/fragment/app/Fragment;)V
    .registers 4

    .line 3079
    iget-object v0, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_11

    .line 3080
    iget-object v0, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    .line 50892
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    .line 3081
    instance-of v1, v0, Landroidx/fragment/app/g;

    if-eqz v1, :cond_11

    .line 3082
    check-cast v0, Landroidx/fragment/app/g;

    .line 3083
    invoke-direct {v0, p1}, Landroidx/fragment/app/g;->y(Landroidx/fragment/app/Fragment;)V

    .line 3086
    :cond_11
    iget-object p0, p0, Landroidx/fragment/app/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_17

    :cond_21
    return-void
.end method

.method private z()V
    .registers 9

    .line 2125
    iget-object v0, p0, Landroidx/fragment/app/g;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_a

    .line 2127
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->K()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 2129
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->M()I

    move-result v4

    .line 2130
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->K()Landroid/view/View;

    move-result-object v1

    .line 2131
    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 2133
    invoke-virtual {v2}, Landroid/view/animation/Animation;->cancel()V

    .line 2136
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    :cond_33
    const/4 v1, 0x0

    .line 2138
    invoke-virtual {v3, v1}, Landroidx/fragment/app/Fragment;->a(Landroid/view/View;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 2139
    invoke-virtual/range {v2 .. v7}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/Fragment;IIIZ)V

    goto :goto_a

    .line 2140
    :cond_3f
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->L()Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 2141
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->L()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    goto :goto_a

    :cond_4d
    return-void
.end method

.method private static z(Landroidx/fragment/app/Fragment;)Z
    .registers 2

    .line 3109
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->D:Z

    if-nez v0, :cond_10

    :cond_8
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    invoke-direct {p0}, Landroidx/fragment/app/g;->D()Z

    move-result p0

    if-eqz p0, :cond_12

    :cond_10
    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/a;)I
    .registers 6

    .line 1597
    monitor-enter p0

    .line 1598
    :try_start_1
    iget-object v0, p0, Landroidx/fragment/app/g;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_48

    iget-object v0, p0, Landroidx/fragment/app/g;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_e

    goto :goto_48

    .line 1608
    :cond_e
    iget-object v0, p0, Landroidx/fragment/app/g;->n:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/g;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1609
    sget-boolean v1, Landroidx/fragment/app/g;->c:Z

    if-eqz v1, :cond_41

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding back stack index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    :cond_41
    iget-object v1, p0, Landroidx/fragment/app/g;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1611
    monitor-exit p0

    return v0

    .line 1599
    :cond_48
    :goto_48
    iget-object v0, p0, Landroidx/fragment/app/g;->m:Ljava/util/ArrayList;

    if-nez v0, :cond_53

    .line 1600
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/g;->m:Ljava/util/ArrayList;

    .line 1602
    :cond_53
    iget-object v0, p0, Landroidx/fragment/app/g;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1603
    sget-boolean v1, Landroidx/fragment/app/g;->c:Z

    if-eqz v1, :cond_78

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting back stack index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    :cond_78
    iget-object v1, p0, Landroidx/fragment/app/g;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1605
    monitor-exit p0

    return v0

    :catchall_7f
    move-exception p1

    .line 1613
    monitor-exit p0
    :try_end_81
    .catchall {:try_start_1 .. :try_end_81} :catchall_7f

    throw p1
.end method

.method public final a(I)Landroidx/fragment/app/Fragment;
    .registers 5

    .line 1487
    iget-object v0, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    .line 1488
    iget-object v1, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_19

    .line 1489
    iget v2, v1, Landroidx/fragment/app/Fragment;->v:I

    if-ne v2, p1, :cond_19

    return-object v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1494
    :cond_1c
    iget-object p0, p0, Landroidx/fragment/app/g;->h:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_26

    .line 1495
    iget v1, v0, Landroidx/fragment/app/Fragment;->v:I

    if-ne v1, p1, :cond_26

    return-object v0

    :cond_39
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 5

    if-eqz p1, :cond_22

    .line 1507
    iget-object v0, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_22

    .line 1508
    iget-object v1, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1f

    .line 1509
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->x:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    return-object v1

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_22
    if-eqz p1, :cond_45

    .line 1516
    iget-object p0, p0, Landroidx/fragment/app/g;->h:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_2e

    .line 1517
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->x:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    return-object v0

    :cond_45
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a()Landroidx/fragment/app/i;
    .registers 2

    .line 178
    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/g;)V

    return-object v0
.end method

.method final a(IZ)V
    .registers 5

    .line 1289
    iget-object v0, p0, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    if-nez v0, :cond_f

    if-nez p1, :cond_7

    goto :goto_f

    .line 1290
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No activity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    :goto_f
    if-nez p2, :cond_16

    .line 1293
    iget p2, p0, Landroidx/fragment/app/g;->p:I

    if-ne p1, p2, :cond_16

    return-void

    .line 1297
    :cond_16
    iput p1, p0, Landroidx/fragment/app/g;->p:I

    .line 1300
    iget-object p1, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_20
    if-ge v0, p1, :cond_30

    .line 1302
    iget-object v1, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 1303
    invoke-virtual {p0, v1}, Landroidx/fragment/app/g;->b(Landroidx/fragment/app/Fragment;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 1308
    :cond_30
    iget-object p1, p0, Landroidx/fragment/app/g;->h:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3a
    :goto_3a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_3a

    .line 1309
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->l:Z

    if-nez v1, :cond_50

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->z:Z

    if-eqz v1, :cond_3a

    :cond_50
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->M:Z

    if-nez v1, :cond_3a

    .line 1310
    invoke-virtual {p0, v0}, Landroidx/fragment/app/g;->b(Landroidx/fragment/app/Fragment;)V

    goto :goto_3a

    .line 1314
    :cond_58
    invoke-direct {p0}, Landroidx/fragment/app/g;->u()V

    .line 1316
    iget-boolean p1, p0, Landroidx/fragment/app/g;->u:Z

    if-eqz p1, :cond_6f

    iget-object p1, p0, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    if-eqz p1, :cond_6f

    iget p1, p0, Landroidx/fragment/app/g;->p:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_6f

    .line 1317
    iget-object p1, p0, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    invoke-virtual {p1}, Landroidx/fragment/app/e;->f()V

    .line 1318
    iput-boolean p2, p0, Landroidx/fragment/app/g;->u:Z

    :cond_6f
    return-void
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .registers 4

    const/4 v0, 0x0

    .line 2685
    :goto_1
    iget-object v1, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 2686
    iget-object v1, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_16

    .line 2688
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/content/res/Configuration;)V

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method final a(Landroid/os/Parcelable;)V
    .registers 13

    if-nez p1, :cond_3

    return-void

    .line 2441
    :cond_3
    check-cast p1, Landroidx/fragment/app/FragmentManagerState;

    .line 2442
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_a

    return-void

    .line 2446
    :cond_a
    iget-object v0, p0, Landroidx/fragment/app/g;->F:Landroidx/fragment/app/h;

    .line 36104
    iget-object v0, v0, Landroidx/fragment/app/h;->a:Ljava/util/HashSet;

    .line 2446
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_be

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2447
    sget-boolean v5, Landroidx/fragment/app/g;->c:Z

    if-eqz v5, :cond_34

    const-string v5, "FragmentManager"

    const-string v6, "restoreSaveState: re-attaching retained "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    :cond_34
    iget-object v5, p1, Landroidx/fragment/app/FragmentManagerState;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_51

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/FragmentState;

    .line 2450
    iget-object v7, v6, Landroidx/fragment/app/FragmentState;->b:Ljava/lang/String;

    iget-object v8, v1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    goto :goto_52

    :cond_51
    move-object v6, v4

    :goto_52
    if-nez v6, :cond_85

    .line 2456
    sget-boolean v3, Landroidx/fragment/app/g;->c:Z

    if-eqz v3, :cond_75

    const-string v3, "FragmentManager"

    .line 2457
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Discarding retained Fragment "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " that was not found in the set of active Fragments "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroidx/fragment/app/FragmentManagerState;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_75
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, v1

    .line 2463
    invoke-virtual/range {v5 .. v10}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 2464
    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->l:Z

    const/4 v7, 0x0

    .line 2465
    invoke-virtual/range {v5 .. v10}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/Fragment;IIIZ)V

    goto :goto_12

    .line 2468
    :cond_85
    iput-object v1, v6, Landroidx/fragment/app/FragmentState;->n:Landroidx/fragment/app/Fragment;

    .line 2469
    iput-object v4, v1, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    .line 2470
    iput v3, v1, Landroidx/fragment/app/Fragment;->q:I

    .line 2471
    iput-boolean v3, v1, Landroidx/fragment/app/Fragment;->n:Z

    .line 2472
    iput-boolean v3, v1, Landroidx/fragment/app/Fragment;->k:Z

    .line 2473
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_98

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    goto :goto_99

    :cond_98
    move-object v2, v4

    :goto_99
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    .line 2474
    iput-object v4, v1, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    .line 2475
    iget-object v2, v6, Landroidx/fragment/app/FragmentState;->m:Landroid/os/Bundle;

    if-eqz v2, :cond_12

    .line 2476
    iget-object v2, v6, Landroidx/fragment/app/FragmentState;->m:Landroid/os/Bundle;

    iget-object v3, p0, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    .line 36200
    iget-object v3, v3, Landroidx/fragment/app/e;->c:Landroid/content/Context;

    .line 2476
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2477
    iget-object v2, v6, Landroidx/fragment/app/FragmentState;->m:Landroid/os/Bundle;

    const-string v3, "android:view_state"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    .line 2479
    iget-object v2, v6, Landroidx/fragment/app/FragmentState;->m:Landroid/os/Bundle;

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    goto/16 :goto_12

    .line 2485
    :cond_be
    iget-object v0, p0, Landroidx/fragment/app/g;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2486
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c9
    :goto_c9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_114

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentState;

    if-eqz v1, :cond_c9

    .line 2488
    iget-object v5, p0, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    .line 37200
    iget-object v5, v5, Landroidx/fragment/app/e;->c:Landroid/content/Context;

    .line 2488
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 2489
    invoke-virtual {p0}, Landroidx/fragment/app/g;->e()Landroidx/fragment/app/d;

    move-result-object v6

    .line 2488
    invoke-virtual {v1, v5, v6}, Landroidx/fragment/app/FragmentState;->a(Ljava/lang/ClassLoader;Landroidx/fragment/app/d;)Landroidx/fragment/app/Fragment;

    move-result-object v5

    .line 2490
    iput-object p0, v5, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    .line 2491
    sget-boolean v6, Landroidx/fragment/app/g;->c:Z

    if-eqz v6, :cond_10a

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "restoreSaveState: active ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v5, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    :cond_10a
    iget-object v6, p0, Landroidx/fragment/app/g;->h:Ljava/util/HashMap;

    iget-object v7, v5, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2496
    iput-object v4, v1, Landroidx/fragment/app/FragmentState;->n:Landroidx/fragment/app/Fragment;

    goto :goto_c9

    .line 2501
    :cond_114
    iget-object v0, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2502
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_19a

    .line 2503
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_123
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2504
    iget-object v5, p0, Landroidx/fragment/app/g;->h:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    if-nez v5, :cond_154

    .line 2506
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "No instantiated fragment for ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Landroidx/fragment/app/g;->a(Ljava/lang/RuntimeException;)V

    .line 2509
    :cond_154
    iput-boolean v2, v5, Landroidx/fragment/app/Fragment;->k:Z

    .line 2510
    sget-boolean v6, Landroidx/fragment/app/g;->c:Z

    if-eqz v6, :cond_175

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "restoreSaveState: added ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    :cond_175
    iget-object v1, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18a

    .line 2514
    iget-object v1, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2515
    :try_start_180
    iget-object v6, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2516
    monitor-exit v1

    goto :goto_123

    :catchall_187
    move-exception p0

    monitor-exit v1
    :try_end_189
    .catchall {:try_start_180 .. :try_end_189} :catchall_187

    throw p0

    .line 2512
    :cond_18a
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Already added "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2521
    :cond_19a
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->c:[Landroidx/fragment/app/BackStackState;

    if-eqz v0, :cond_204

    .line 2522
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroidx/fragment/app/FragmentManagerState;->c:[Landroidx/fragment/app/BackStackState;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/fragment/app/g;->i:Ljava/util/ArrayList;

    move v0, v3

    .line 2523
    :goto_1a9
    iget-object v1, p1, Landroidx/fragment/app/FragmentManagerState;->c:[Landroidx/fragment/app/BackStackState;

    array-length v1, v1

    if-ge v0, v1, :cond_206

    .line 2524
    iget-object v1, p1, Landroidx/fragment/app/FragmentManagerState;->c:[Landroidx/fragment/app/BackStackState;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroidx/fragment/app/BackStackState;->a(Landroidx/fragment/app/g;)Landroidx/fragment/app/a;

    move-result-object v1

    .line 2525
    sget-boolean v2, Landroidx/fragment/app/g;->c:Z

    if-eqz v2, :cond_1f3

    const-string v2, "FragmentManager"

    .line 2526
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "restoreAllState: back stack #"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " (index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroidx/fragment/app/a;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    new-instance v2, Landroidx/core/d/b;

    const-string v4, "FragmentManager"

    invoke-direct {v2, v4}, Landroidx/core/d/b;-><init>(Ljava/lang/String;)V

    .line 2529
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, "  "

    .line 2530
    invoke-virtual {v1, v2, v4, v3}, Landroidx/fragment/app/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 2531
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 2533
    :cond_1f3
    iget-object v2, p0, Landroidx/fragment/app/g;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2534
    iget v2, v1, Landroidx/fragment/app/a;->c:I

    if-ltz v2, :cond_201

    .line 2535
    iget v2, v1, Landroidx/fragment/app/a;->c:I

    invoke-direct {p0, v2, v1}, Landroidx/fragment/app/g;->a(ILandroidx/fragment/app/a;)V

    :cond_201
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a9

    .line 2539
    :cond_204
    iput-object v4, p0, Landroidx/fragment/app/g;->i:Ljava/util/ArrayList;

    .line 2542
    :cond_206
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->d:Ljava/lang/String;

    if-eqz v0, :cond_21b

    .line 2543
    iget-object v0, p0, Landroidx/fragment/app/g;->h:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/FragmentManagerState;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    iput-object v0, p0, Landroidx/fragment/app/g;->t:Landroidx/fragment/app/Fragment;

    .line 2544
    iget-object v0, p0, Landroidx/fragment/app/g;->t:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/g;->j(Landroidx/fragment/app/Fragment;)V

    .line 2546
    :cond_21b
    iget p1, p1, Landroidx/fragment/app/FragmentManagerState;->e:I

    iput p1, p0, Landroidx/fragment/app/g;->f:I

    return-void
.end method

.method final a(Landroidx/fragment/app/Fragment;IIIZ)V
    .registers 20

    move-object v6, p0

    move-object v7, p1

    .line 725
    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->k:Z

    const/4 v8, 0x1

    if-eqz v0, :cond_f

    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->z:Z

    if-eqz v0, :cond_c

    goto :goto_f

    :cond_c
    move/from16 v0, p2

    goto :goto_14

    :cond_f
    :goto_f
    move/from16 v0, p2

    if-le v0, v8, :cond_14

    move v0, v8

    .line 728
    :cond_14
    :goto_14
    iget-boolean v1, v7, Landroidx/fragment/app/Fragment;->l:Z

    if-eqz v1, :cond_2a

    iget v1, v7, Landroidx/fragment/app/Fragment;->b:I

    if-le v0, v1, :cond_2a

    .line 729
    iget v0, v7, Landroidx/fragment/app/Fragment;->b:I

    if-nez v0, :cond_28

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->c()Z

    move-result v0

    if-eqz v0, :cond_28

    move v0, v8

    goto :goto_2a

    .line 734
    :cond_28
    iget v0, v7, Landroidx/fragment/app/Fragment;->b:I

    .line 739
    :cond_2a
    :goto_2a
    iget-boolean v1, v7, Landroidx/fragment/app/Fragment;->I:Z

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v1, :cond_37

    iget v1, v7, Landroidx/fragment/app/Fragment;->b:I

    if-ge v1, v9, :cond_37

    if-le v0, v10, :cond_37

    move v0, v10

    .line 744
    :cond_37
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->R:Landroidx/lifecycle/e$b;

    sget-object v2, Landroidx/lifecycle/e$b;->CREATED:Landroidx/lifecycle/e$b;

    if-ne v1, v2, :cond_43

    .line 745
    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_41
    move v11, v0

    goto :goto_4e

    .line 747
    :cond_43
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->R:Landroidx/lifecycle/e$b;

    invoke-virtual {v1}, Landroidx/lifecycle/e$b;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_41

    .line 749
    :goto_4e
    iget v0, v7, Landroidx/fragment/app/Fragment;->b:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-gt v0, v11, :cond_344

    .line 753
    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->m:Z

    if-eqz v0, :cond_5d

    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->n:Z

    if-nez v0, :cond_5d

    return-void

    .line 756
    :cond_5d
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->K()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_69

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->L()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_7b

    .line 761
    :cond_69
    invoke-virtual {p1, v13}, Landroidx/fragment/app/Fragment;->a(Landroid/view/View;)V

    .line 762
    invoke-virtual {p1, v13}, Landroidx/fragment/app/Fragment;->a(Landroid/animation/Animator;)V

    .line 763
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->M()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 765
    :cond_7b
    iget v0, v7, Landroidx/fragment/app/Fragment;->b:I

    packed-switch v0, :pswitch_data_68c

    goto/16 :goto_65e

    :pswitch_82
    if-lez v11, :cond_1c4

    .line 768
    sget-boolean v0, Landroidx/fragment/app/g;->c:Z

    if-eqz v0, :cond_97

    const-string v0, "FragmentManager"

    const-string v1, "moveto CREATED: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :cond_97
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_f2

    .line 770
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    iget-object v1, v6, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    .line 14200
    iget-object v1, v1, Landroidx/fragment/app/e;->c:Landroid/content/Context;

    .line 771
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 770
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 772
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, v7, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    .line 774
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-direct {p0, v0, v1}, Landroidx/fragment/app/g;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_bf

    .line 776
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    goto :goto_c0

    :cond_bf
    move-object v0, v13

    :goto_c0
    iput-object v0, v7, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    .line 777
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    if-eqz v0, :cond_d0

    .line 778
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    const-string v1, "android:target_req_state"

    invoke-virtual {v0, v1, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v7, Landroidx/fragment/app/Fragment;->j:I

    .line 781
    :cond_d0
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_df

    .line 782
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v7, Landroidx/fragment/app/Fragment;->J:Z

    .line 783
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->e:Ljava/lang/Boolean;

    goto :goto_e9

    .line 785
    :cond_df
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    const-string v1, "android:user_visible_hint"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v7, Landroidx/fragment/app/Fragment;->J:Z

    .line 788
    :goto_e9
    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->J:Z

    if-nez v0, :cond_f2

    .line 789
    iput-boolean v8, v7, Landroidx/fragment/app/Fragment;->I:Z

    if-le v11, v10, :cond_f2

    move v11, v10

    .line 796
    :cond_f2
    iget-object v0, v6, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    iput-object v0, v7, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/e;

    .line 797
    iget-object v0, v6, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    iput-object v0, v7, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/Fragment;

    .line 798
    iget-object v0, v6, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_103

    iget-object v0, v6, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    goto :goto_107

    :cond_103
    iget-object v0, v6, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    iget-object v0, v0, Landroidx/fragment/app/e;->e:Landroidx/fragment/app/g;

    :goto_107
    iput-object v0, v7, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    .line 803
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_157

    .line 804
    iget-object v0, v6, Landroidx/fragment/app/g;->h:Ljava/util/HashMap;

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    if-ne v0, v1, :cond_134

    .line 809
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    iget v0, v0, Landroidx/fragment/app/Fragment;->b:I

    if-gtz v0, :cond_12b

    .line 810
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 812
    :cond_12b
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    iput-object v0, v7, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    .line 813
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    goto :goto_157

    .line 805
    :cond_134
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " declared target fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " that does not belong to this FragmentManager!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 815
    :cond_157
    :goto_157
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    if-eqz v0, :cond_198

    .line 816
    iget-object v0, v6, Landroidx/fragment/app/g;->h:Ljava/util/HashMap;

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_175

    .line 822
    iget v0, v1, Landroidx/fragment/app/Fragment;->b:I

    if-gtz v0, :cond_198

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    .line 823
    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/Fragment;IIIZ)V

    goto :goto_198

    .line 818
    :cond_175
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " declared target fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " that does not belong to this FragmentManager!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 827
    :cond_198
    :goto_198
    iget-object v0, v6, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    .line 15200
    iget-object v0, v0, Landroidx/fragment/app/e;->c:Landroid/content/Context;

    .line 827
    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    .line 828
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->z()V

    .line 834
    iget-object v0, v6, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    .line 16200
    iget-object v0, v0, Landroidx/fragment/app/e;->c:Landroid/content/Context;

    .line 834
    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/g;->b(Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    .line 836
    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->Q:Z

    if-nez v0, :cond_1bd

    .line 837
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 838
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->d(Landroid/os/Bundle;)V

    .line 839
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/g;->b(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_1c4

    .line 841
    :cond_1bd
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->c(Landroid/os/Bundle;)V

    .line 842
    iput v8, v7, Landroidx/fragment/app/Fragment;->b:I

    :cond_1c4
    :goto_1c4
    :pswitch_1c4
    const/16 v0, 0x8

    if-lez v11, :cond_1f7

    .line 17137
    iget-boolean v1, v7, Landroidx/fragment/app/Fragment;->m:Z

    if-eqz v1, :cond_1f7

    iget-boolean v1, v7, Landroidx/fragment/app/Fragment;->p:Z

    if-nez v1, :cond_1f7

    .line 17138
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->j()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p1, v1, v13}, Landroidx/fragment/app/Fragment;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 17140
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    if-eqz v1, :cond_1f5

    .line 17141
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    iput-object v1, v7, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    .line 17142
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    invoke-virtual {v1, v12}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 17143
    iget-boolean v1, v7, Landroidx/fragment/app/Fragment;->y:Z

    if-eqz v1, :cond_1ed

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 17145
    :cond_1ed
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    iget-object v2, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-direct {p0, p1, v1, v2}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_1f7

    .line 17147
    :cond_1f5
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    :cond_1f7
    :goto_1f7
    if-le v11, v8, :cond_308

    .line 855
    sget-boolean v1, Landroidx/fragment/app/g;->c:Z

    if-eqz v1, :cond_20c

    const-string v1, "FragmentManager"

    const-string v2, "moveto ACTIVITY_CREATED: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_20c
    iget-boolean v1, v7, Landroidx/fragment/app/Fragment;->m:Z

    if-nez v1, :cond_2c0

    .line 858
    iget v1, v7, Landroidx/fragment/app/Fragment;->w:I

    if-eqz v1, :cond_27e

    .line 859
    iget v1, v7, Landroidx/fragment/app/Fragment;->w:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_234

    .line 860
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot create fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for a container view with no id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroidx/fragment/app/g;->a(Ljava/lang/RuntimeException;)V

    .line 865
    :cond_234
    iget-object v1, v6, Landroidx/fragment/app/g;->r:Landroidx/fragment/app/b;

    iget v2, v7, Landroidx/fragment/app/Fragment;->w:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/b;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_27f

    .line 866
    iget-boolean v2, v7, Landroidx/fragment/app/Fragment;->o:Z

    if-nez v2, :cond_27f

    .line 869
    :try_start_244
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->h()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v7, Landroidx/fragment/app/Fragment;->w:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2
    :try_end_24e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_244 .. :try_end_24e} :catch_24f

    goto :goto_251

    :catch_24f
    const-string v2, "unknown"

    .line 873
    :goto_251
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No view found for id 0x"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v7, Landroidx/fragment/app/Fragment;->w:I

    .line 875
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") for fragment "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 873
    invoke-direct {p0, v3}, Landroidx/fragment/app/g;->a(Ljava/lang/RuntimeException;)V

    goto :goto_27f

    :cond_27e
    move-object v1, v13

    .line 880
    :cond_27f
    :goto_27f
    iput-object v1, v7, Landroidx/fragment/app/Fragment;->F:Landroid/view/ViewGroup;

    .line 881
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->j()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroidx/fragment/app/Fragment;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 883
    iget-object v2, v7, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    if-eqz v2, :cond_2be

    .line 884
    iget-object v2, v7, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    iput-object v2, v7, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    .line 885
    iget-object v2, v7, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    invoke-virtual {v2, v12}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    if-eqz v1, :cond_29c

    .line 887
    iget-object v2, v7, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 889
    :cond_29c
    iget-boolean v1, v7, Landroidx/fragment/app/Fragment;->y:Z

    if-eqz v1, :cond_2a5

    .line 890
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 893
    :cond_2a5
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-direct {p0, p1, v0, v1}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    .line 897
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2ba

    iget-object v0, v7, Landroidx/fragment/app/Fragment;->F:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2ba

    move v0, v8

    goto :goto_2bb

    :cond_2ba
    move v0, v12

    :goto_2bb
    iput-boolean v0, v7, Landroidx/fragment/app/Fragment;->M:Z

    goto :goto_2c0

    .line 900
    :cond_2be
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    .line 904
    :cond_2c0
    :goto_2c0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->A()V

    .line 905
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/g;->c(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 906
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    if-eqz v0, :cond_306

    .line 17547
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    if-eqz v0, :cond_2d9

    .line 17548
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 17549
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    .line 17551
    :cond_2d9
    iput-boolean v12, v7, Landroidx/fragment/app/Fragment;->E:Z

    .line 17736
    iput-boolean v8, v7, Landroidx/fragment/app/Fragment;->E:Z

    .line 17553
    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->E:Z

    if-eqz v0, :cond_2ed

    .line 17557
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    if-eqz v0, :cond_306

    .line 17558
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/m;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_CREATE:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/m;->a(Landroidx/lifecycle/e$a;)V

    goto :goto_306

    .line 17554
    :cond_2ed
    new-instance v0, Landroidx/fragment/app/n;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/n;-><init>(Ljava/lang/String;)V

    throw v0

    .line 909
    :cond_306
    :goto_306
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    :cond_308
    :pswitch_308
    if-le v11, v10, :cond_323

    .line 914
    sget-boolean v0, Landroidx/fragment/app/g;->c:Z

    if-eqz v0, :cond_31d

    const-string v0, "FragmentManager"

    const-string v1, "moveto STARTED: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_31d
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->B()V

    .line 916
    invoke-direct {p0, p1}, Landroidx/fragment/app/g;->s(Landroidx/fragment/app/Fragment;)V

    :cond_323
    :pswitch_323
    if-le v11, v9, :cond_65e

    .line 921
    sget-boolean v0, Landroidx/fragment/app/g;->c:Z

    if-eqz v0, :cond_338

    const-string v0, "FragmentManager"

    const-string v1, "moveto RESUMED: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_338
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->C()V

    .line 923
    invoke-direct {p0, p1}, Landroidx/fragment/app/g;->t(Landroidx/fragment/app/Fragment;)V

    .line 924
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    .line 925
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    goto/16 :goto_65e

    .line 928
    :cond_344
    iget v0, v7, Landroidx/fragment/app/Fragment;->b:I

    if-le v0, v11, :cond_65e

    .line 929
    iget v0, v7, Landroidx/fragment/app/Fragment;->b:I

    packed-switch v0, :pswitch_data_698

    goto/16 :goto_65e

    :pswitch_34f
    const/4 v0, 0x4

    if-ge v11, v0, :cond_3a3

    .line 932
    sget-boolean v0, Landroidx/fragment/app/g;->c:Z

    if-eqz v0, :cond_365

    const-string v0, "FragmentManager"

    const-string v1, "movefrom RESUMED: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17775
    :cond_365
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    .line 18629
    invoke-virtual {v0, v9}, Landroidx/fragment/app/g;->b(I)V

    .line 17776
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    if-eqz v0, :cond_375

    .line 17777
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/m;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_PAUSE:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/m;->a(Landroidx/lifecycle/e$a;)V

    .line 17779
    :cond_375
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->S:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_PAUSE:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    .line 17780
    iput v9, v7, Landroidx/fragment/app/Fragment;->b:I

    .line 17781
    iput-boolean v12, v7, Landroidx/fragment/app/Fragment;->E:Z

    .line 18828
    iput-boolean v8, v7, Landroidx/fragment/app/Fragment;->E:Z

    .line 17783
    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->E:Z

    if-eqz v0, :cond_38a

    .line 934
    invoke-direct {p0, p1}, Landroidx/fragment/app/g;->u(Landroidx/fragment/app/Fragment;)V

    goto :goto_3a3

    .line 17784
    :cond_38a
    new-instance v0, Landroidx/fragment/app/n;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/n;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a3
    :goto_3a3
    :pswitch_3a3
    if-ge v11, v9, :cond_3f6

    .line 939
    sget-boolean v0, Landroidx/fragment/app/g;->c:Z

    if-eqz v0, :cond_3b8

    const-string v0, "FragmentManager"

    const-string v1, "movefrom STARTED: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 19790
    :cond_3b8
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    invoke-virtual {v0}, Landroidx/fragment/app/g;->p()V

    .line 19791
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    if-eqz v0, :cond_3c8

    .line 19792
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/m;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_STOP:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/m;->a(Landroidx/lifecycle/e$a;)V

    .line 19794
    :cond_3c8
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->S:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_STOP:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    .line 19795
    iput v10, v7, Landroidx/fragment/app/Fragment;->b:I

    .line 19796
    iput-boolean v12, v7, Landroidx/fragment/app/Fragment;->E:Z

    .line 19838
    iput-boolean v8, v7, Landroidx/fragment/app/Fragment;->E:Z

    .line 19798
    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->E:Z

    if-eqz v0, :cond_3dd

    .line 941
    invoke-direct {p0, p1}, Landroidx/fragment/app/g;->v(Landroidx/fragment/app/Fragment;)V

    goto :goto_3f6

    .line 19799
    :cond_3dd
    new-instance v0, Landroidx/fragment/app/n;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/n;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f6
    :goto_3f6
    :pswitch_3f6
    if-ge v11, v10, :cond_4f6

    .line 946
    sget-boolean v0, Landroidx/fragment/app/g;->c:Z

    if-eqz v0, :cond_40b

    const-string v0, "FragmentManager"

    const-string v1, "movefrom ACTIVITY_CREATED: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_40b
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    if-eqz v0, :cond_41e

    .line 950
    iget-object v0, v6, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    invoke-virtual {v0}, Landroidx/fragment/app/e;->d()Z

    move-result v0

    if-eqz v0, :cond_41e

    iget-object v0, v7, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    if-nez v0, :cond_41e

    .line 951
    invoke-direct {p0, p1}, Landroidx/fragment/app/g;->q(Landroidx/fragment/app/Fragment;)V

    .line 20805
    :cond_41e
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    .line 21638
    invoke-virtual {v0, v8}, Landroidx/fragment/app/g;->b(I)V

    .line 20806
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    if-eqz v0, :cond_42e

    .line 20807
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/m;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_DESTROY:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/m;->a(Landroidx/lifecycle/e$a;)V

    .line 20809
    :cond_42e
    iput v8, v7, Landroidx/fragment/app/Fragment;->b:I

    .line 20810
    iput-boolean v12, v7, Landroidx/fragment/app/Fragment;->E:Z

    .line 21858
    iput-boolean v8, v7, Landroidx/fragment/app/Fragment;->E:Z

    .line 20812
    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->E:Z

    if-eqz v0, :cond_4dd

    .line 20820
    invoke-static {p1}, Landroidx/loader/a/a;->a(Landroidx/lifecycle/h;)Landroidx/loader/a/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/loader/a/a;->a()V

    .line 20821
    iput-boolean v12, v7, Landroidx/fragment/app/Fragment;->p:Z

    .line 955
    invoke-direct {p0, p1}, Landroidx/fragment/app/g;->w(Landroidx/fragment/app/Fragment;)V

    .line 956
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    if-eqz v0, :cond_4cd

    iget-object v0, v7, Landroidx/fragment/app/Fragment;->F:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4cd

    .line 958
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->F:Landroid/view/ViewGroup;

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 959
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 21934
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_462

    .line 22934
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/Fragment;

    .line 962
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->l:Z

    if-nez v0, :cond_4cd

    .line 963
    :cond_462
    iget v0, v6, Landroidx/fragment/app/g;->p:I

    const/4 v1, 0x0

    if-lez v0, :cond_482

    iget-boolean v0, v6, Landroidx/fragment/app/g;->x:Z

    if-nez v0, :cond_482

    iget-object v0, v7, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    .line 964
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_482

    iget v0, v7, Landroidx/fragment/app/Fragment;->O:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_482

    move/from16 v0, p3

    move/from16 v2, p4

    .line 966
    invoke-direct {p0, p1, v0, v12, v2}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/g$a;

    move-result-object v0

    goto :goto_483

    :cond_482
    move-object v0, v13

    .line 969
    :goto_483
    iput v1, v7, Landroidx/fragment/app/Fragment;->O:F

    if-eqz v0, :cond_4c6

    .line 23076
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    .line 23077
    iget-object v2, v7, Landroidx/fragment/app/Fragment;->F:Landroid/view/ViewGroup;

    .line 23078
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 23079
    invoke-virtual {p1, v11}, Landroidx/fragment/app/Fragment;->b(I)V

    .line 23080
    iget-object v3, v0, Landroidx/fragment/app/g$a;->a:Landroid/view/animation/Animation;

    if-eqz v3, :cond_4af

    .line 23081
    new-instance v3, Landroidx/fragment/app/g$b;

    iget-object v0, v0, Landroidx/fragment/app/g$a;->a:Landroid/view/animation/Animation;

    invoke-direct {v3, v0, v2, v1}, Landroidx/fragment/app/g$b;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 23083
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->a(Landroid/view/View;)V

    .line 23084
    new-instance v0, Landroidx/fragment/app/g$3;

    invoke-direct {v0, p0, v2, p1}, Landroidx/fragment/app/g$3;-><init>(Landroidx/fragment/app/g;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v3, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 23110
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4c6

    .line 23112
    :cond_4af
    iget-object v3, v0, Landroidx/fragment/app/g$a;->b:Landroid/animation/Animator;

    .line 23113
    iget-object v0, v0, Landroidx/fragment/app/g$a;->b:Landroid/animation/Animator;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->a(Landroid/animation/Animator;)V

    .line 23114
    new-instance v0, Landroidx/fragment/app/g$4;

    invoke-direct {v0, p0, v2, v1, p1}, Landroidx/fragment/app/g$4;-><init>(Landroidx/fragment/app/g;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v3, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 23127
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 23128
    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    .line 973
    :cond_4c6
    :goto_4c6
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->F:Landroid/view/ViewGroup;

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 976
    :cond_4cd
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->F:Landroid/view/ViewGroup;

    .line 977
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    .line 980
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/m;

    .line 981
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->U:Landroidx/lifecycle/m;

    invoke-virtual {v0, v13}, Landroidx/lifecycle/m;->a(Ljava/lang/Object;)V

    .line 982
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    .line 983
    iput-boolean v12, v7, Landroidx/fragment/app/Fragment;->n:Z

    goto :goto_4f6

    .line 20813
    :cond_4dd
    new-instance v0, Landroidx/fragment/app/n;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/n;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f6
    :goto_4f6
    :pswitch_4f6
    if-gtz v11, :cond_65e

    .line 988
    iget-boolean v0, v6, Landroidx/fragment/app/g;->x:Z

    if-eqz v0, :cond_51d

    .line 995
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->K()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_50d

    .line 996
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->K()Landroid/view/View;

    move-result-object v0

    .line 997
    invoke-virtual {p1, v13}, Landroidx/fragment/app/Fragment;->a(Landroid/view/View;)V

    .line 998
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_51d

    .line 999
    :cond_50d
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->L()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_51d

    .line 1000
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->L()Landroid/animation/Animator;

    move-result-object v0

    .line 1001
    invoke-virtual {p1, v13}, Landroidx/fragment/app/Fragment;->a(Landroid/animation/Animator;)V

    .line 1002
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1005
    :cond_51d
    :goto_51d
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->K()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_65a

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->L()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_52b

    goto/16 :goto_65a

    .line 1013
    :cond_52b
    sget-boolean v0, Landroidx/fragment/app/g;->c:Z

    if-eqz v0, :cond_53e

    const-string v0, "FragmentManager"

    const-string v1, "movefrom CREATED: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    :cond_53e
    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->l:Z

    if-eqz v0, :cond_54a

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->c()Z

    move-result v0

    if-nez v0, :cond_54a

    move v0, v8

    goto :goto_54b

    :cond_54a
    move v0, v12

    :goto_54b
    if-nez v0, :cond_55a

    .line 1015
    iget-object v1, v6, Landroidx/fragment/app/g;->F:Landroidx/fragment/app/h;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/h;->a(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_556

    goto :goto_55a

    .line 1031
    :cond_556
    iput v12, v7, Landroidx/fragment/app/Fragment;->b:I

    goto/16 :goto_5db

    .line 1017
    :cond_55a
    :goto_55a
    iget-object v1, v6, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    instance-of v1, v1, Landroidx/lifecycle/t;

    if-eqz v1, :cond_565

    .line 1018
    iget-object v1, v6, Landroidx/fragment/app/g;->F:Landroidx/fragment/app/h;

    .line 24095
    iget-boolean v1, v1, Landroidx/fragment/app/h;->e:Z

    goto :goto_57a

    .line 1019
    :cond_565
    iget-object v1, v6, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    .line 24200
    iget-object v1, v1, Landroidx/fragment/app/e;->c:Landroid/content/Context;

    .line 1019
    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_579

    .line 1020
    iget-object v1, v6, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    .line 25200
    iget-object v1, v1, Landroidx/fragment/app/e;->c:Landroid/content/Context;

    .line 1020
    check-cast v1, Landroid/app/Activity;

    .line 1021
    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    xor-int/2addr v1, v8

    goto :goto_57a

    :cond_579
    move v1, v8

    :goto_57a
    if-nez v0, :cond_57e

    if-eqz v1, :cond_5bf

    .line 1026
    :cond_57e
    iget-object v1, v6, Landroidx/fragment/app/g;->F:Landroidx/fragment/app/h;

    .line 26148
    sget-boolean v2, Landroidx/fragment/app/g;->c:Z

    if-eqz v2, :cond_593

    const-string v2, "FragmentManager"

    const-string v3, "Clearing non-config state for "

    .line 26149
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26152
    :cond_593
    iget-object v2, v1, Landroidx/fragment/app/h;->b:Ljava/util/HashMap;

    iget-object v3, v7, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/h;

    if-eqz v2, :cond_5a9

    .line 26154
    invoke-virtual {v2}, Landroidx/fragment/app/h;->a()V

    .line 26155
    iget-object v2, v1, Landroidx/fragment/app/h;->b:Ljava/util/HashMap;

    iget-object v3, v7, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26158
    :cond_5a9
    iget-object v2, v1, Landroidx/fragment/app/h;->c:Ljava/util/HashMap;

    iget-object v3, v7, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/s;

    if-eqz v2, :cond_5bf

    .line 26160
    invoke-virtual {v2}, Landroidx/lifecycle/s;->a()V

    .line 26161
    iget-object v1, v1, Landroidx/fragment/app/h;->c:Ljava/util/HashMap;

    iget-object v2, v7, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26825
    :cond_5bf
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    invoke-virtual {v1}, Landroidx/fragment/app/g;->q()V

    .line 26826
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->S:Landroidx/lifecycle/i;

    sget-object v2, Landroidx/lifecycle/e$a;->ON_DESTROY:Landroidx/lifecycle/e$a;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    .line 26827
    iput v12, v7, Landroidx/fragment/app/Fragment;->b:I

    .line 26828
    iput-boolean v12, v7, Landroidx/fragment/app/Fragment;->E:Z

    .line 26829
    iput-boolean v12, v7, Landroidx/fragment/app/Fragment;->Q:Z

    .line 26830
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->n()V

    .line 26831
    iget-boolean v1, v7, Landroidx/fragment/app/Fragment;->E:Z

    if-eqz v1, :cond_641

    .line 1029
    invoke-direct {p0, p1}, Landroidx/fragment/app/g;->x(Landroidx/fragment/app/Fragment;)V

    .line 26838
    :goto_5db
    iput-boolean v12, v7, Landroidx/fragment/app/Fragment;->E:Z

    .line 26901
    iput-boolean v8, v7, Landroidx/fragment/app/Fragment;->E:Z

    .line 26840
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->P:Landroid/view/LayoutInflater;

    .line 26841
    iget-boolean v1, v7, Landroidx/fragment/app/Fragment;->E:Z

    if-eqz v1, :cond_628

    .line 26849
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    .line 27454
    iget-boolean v1, v1, Landroidx/fragment/app/g;->x:Z

    if-nez v1, :cond_5f7

    .line 26850
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    invoke-virtual {v1}, Landroidx/fragment/app/g;->q()V

    .line 26851
    new-instance v1, Landroidx/fragment/app/g;

    invoke-direct {v1}, Landroidx/fragment/app/g;-><init>()V

    iput-object v1, v7, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    .line 1035
    :cond_5f7
    invoke-direct {p0, p1}, Landroidx/fragment/app/g;->y(Landroidx/fragment/app/Fragment;)V

    if-nez p5, :cond_65e

    if-nez v0, :cond_624

    .line 1037
    iget-object v0, v6, Landroidx/fragment/app/g;->F:Landroidx/fragment/app/h;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->a(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_607

    goto :goto_624

    .line 1040
    :cond_607
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/e;

    .line 1041
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/Fragment;

    .line 1042
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    .line 1043
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    if-eqz v0, :cond_65e

    .line 1044
    iget-object v0, v6, Landroidx/fragment/app/g;->h:Ljava/util/HashMap;

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_65e

    .line 28073
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->A:Z

    if-eqz v1, :cond_65e

    .line 1049
    iput-object v0, v7, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    goto :goto_65e

    .line 1038
    :cond_624
    :goto_624
    invoke-direct {p0, p1}, Landroidx/fragment/app/g;->o(Landroidx/fragment/app/Fragment;)V

    goto :goto_65e

    .line 26842
    :cond_628
    new-instance v0, Landroidx/fragment/app/n;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/n;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26832
    :cond_641
    new-instance v0, Landroidx/fragment/app/n;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/n;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1010
    :cond_65a
    :goto_65a
    invoke-virtual {p1, v11}, Landroidx/fragment/app/Fragment;->b(I)V

    goto :goto_65f

    :cond_65e
    :goto_65e
    move v8, v11

    .line 1059
    :goto_65f
    iget v0, v7, Landroidx/fragment/app/Fragment;->b:I

    if-eq v0, v8, :cond_68a

    const-string v0, "FragmentManager"

    .line 1060
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moveToState: Fragment state for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not updated inline; expected state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Landroidx/fragment/app/Fragment;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iput v8, v7, Landroidx/fragment/app/Fragment;->b:I

    :cond_68a
    return-void

    nop

    :pswitch_data_68c
    .packed-switch 0x0
        :pswitch_82
        :pswitch_1c4
        :pswitch_308
        :pswitch_323
    .end packed-switch

    :pswitch_data_698
    .packed-switch 0x1
        :pswitch_4f6
        :pswitch_3f6
        :pswitch_3a3
        :pswitch_34f
    .end packed-switch
.end method

.method public final a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/e$b;)V
    .registers 5

    .line 2825
    iget-object v0, p0, Landroidx/fragment/app/g;->h:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_15

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/e;

    if-eqz v0, :cond_12

    .line 38890
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    if-ne v0, p0, :cond_15

    .line 2830
    :cond_12
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->R:Landroidx/lifecycle/e$b;

    return-void

    .line 2827
    :cond_15
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final a(Landroidx/fragment/app/Fragment;Z)V
    .registers 6

    .line 1375
    sget-boolean v0, Landroidx/fragment/app/g;->c:Z

    if-eqz v0, :cond_13

    const-string v0, "FragmentManager"

    const-string v1, "add: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    :cond_13
    invoke-virtual {p0, p1}, Landroidx/fragment/app/g;->c(Landroidx/fragment/app/Fragment;)V

    .line 1377
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->z:Z

    if-nez v0, :cond_58

    .line 1378
    iget-object v0, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 1381
    iget-object v0, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1382
    :try_start_25
    iget-object v1, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1383
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_45

    const/4 v0, 0x1

    .line 1384
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->k:Z

    const/4 v1, 0x0

    .line 1385
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->l:Z

    .line 1386
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    if-nez v2, :cond_37

    .line 1387
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->N:Z

    .line 1389
    :cond_37
    invoke-static {p1}, Landroidx/fragment/app/g;->z(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1390
    iput-boolean v0, p0, Landroidx/fragment/app/g;->u:Z

    :cond_3f
    if-eqz p2, :cond_58

    .line 1393
    invoke-direct {p0, p1}, Landroidx/fragment/app/g;->m(Landroidx/fragment/app/Fragment;)V

    goto :goto_58

    :catchall_45
    move-exception p0

    .line 1383
    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw p0

    .line 1379
    :cond_48
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Fragment already added: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_58
    :goto_58
    return-void
.end method

.method final a(Landroidx/fragment/app/a;ZZZ)V
    .registers 12

    if-eqz p2, :cond_6

    .line 1990
    invoke-virtual {p1, p4}, Landroidx/fragment/app/a;->a(Z)V

    goto :goto_9

    .line 1992
    :cond_6
    invoke-virtual {p1}, Landroidx/fragment/app/a;->d()V

    .line 1994
    :goto_9
    new-instance v1, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1995
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1996
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1997
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_27

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    .line 1999
    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/g;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    :cond_27
    if-eqz p4, :cond_2e

    .line 2002
    iget p2, p0, Landroidx/fragment/app/g;->p:I

    invoke-virtual {p0, p2, v6}, Landroidx/fragment/app/g;->a(IZ)V

    .line 2005
    :cond_2e
    iget-object p0, p0, Landroidx/fragment/app/g;->h:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_38
    :goto_38
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_71

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_38

    .line 2008
    iget-object p3, p2, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    if-eqz p3, :cond_38

    iget-boolean p3, p2, Landroidx/fragment/app/Fragment;->M:Z

    if-eqz p3, :cond_38

    iget p3, p2, Landroidx/fragment/app/Fragment;->w:I

    .line 2009
    invoke-virtual {p1, p3}, Landroidx/fragment/app/a;->b(I)Z

    move-result p3

    if-eqz p3, :cond_38

    .line 2010
    iget p3, p2, Landroidx/fragment/app/Fragment;->O:F

    const/4 v0, 0x0

    cmpl-float p3, p3, v0

    if-lez p3, :cond_64

    .line 2011
    iget-object p3, p2, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    iget v1, p2, Landroidx/fragment/app/Fragment;->O:F

    invoke-virtual {p3, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_64
    if-eqz p4, :cond_69

    .line 2014
    iput v0, p2, Landroidx/fragment/app/Fragment;->O:F

    goto :goto_38

    :cond_69
    const/high16 p3, -0x40800000    # -1.0f

    .line 2016
    iput p3, p2, Landroidx/fragment/app/Fragment;->O:F

    const/4 p3, 0x0

    .line 2017
    iput-boolean p3, p2, Landroidx/fragment/app/Fragment;->M:Z

    goto :goto_38

    :cond_71
    return-void
.end method

.method public final a(Landroidx/fragment/app/e;Landroidx/fragment/app/b;Landroidx/fragment/app/Fragment;)V
    .registers 6

    .line 2563
    iget-object v0, p0, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    if-nez v0, :cond_4d

    .line 2564
    iput-object p1, p0, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    .line 2565
    iput-object p2, p0, Landroidx/fragment/app/g;->r:Landroidx/fragment/app/b;

    .line 2566
    iput-object p3, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    .line 2567
    iget-object p2, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_11

    .line 2571
    invoke-virtual {p0}, Landroidx/fragment/app/g;->f()V

    .line 2574
    :cond_11
    instance-of p2, p1, Landroidx/activity/c;

    if-eqz p2, :cond_28

    .line 2575
    move-object p2, p1

    check-cast p2, Landroidx/activity/c;

    .line 2576
    invoke-interface {p2}, Landroidx/activity/c;->c()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/g;->k:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz p3, :cond_21

    move-object p2, p3

    .line 2578
    :cond_21
    iget-object v0, p0, Landroidx/fragment/app/g;->k:Landroidx/activity/OnBackPressedDispatcher;

    iget-object v1, p0, Landroidx/fragment/app/g;->l:Landroidx/activity/b;

    invoke-virtual {v0, p2, v1}, Landroidx/activity/OnBackPressedDispatcher;->a(Landroidx/lifecycle/h;Landroidx/activity/b;)V

    :cond_28
    if-eqz p3, :cond_33

    .line 2583
    iget-object p1, p3, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    invoke-direct {p1, p3}, Landroidx/fragment/app/g;->k(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/h;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/g;->F:Landroidx/fragment/app/h;

    return-void

    .line 2584
    :cond_33
    instance-of p2, p1, Landroidx/lifecycle/t;

    if-eqz p2, :cond_44

    .line 2585
    check-cast p1, Landroidx/lifecycle/t;

    invoke-interface {p1}, Landroidx/lifecycle/t;->b()Landroidx/lifecycle/s;

    move-result-object p1

    .line 2586
    invoke-static {p1}, Landroidx/fragment/app/h;->a(Landroidx/lifecycle/s;)Landroidx/fragment/app/h;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/g;->F:Landroidx/fragment/app/h;

    return-void

    .line 2588
    :cond_44
    new-instance p1, Landroidx/fragment/app/h;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/fragment/app/h;-><init>(Z)V

    iput-object p1, p0, Landroidx/fragment/app/g;->F:Landroidx/fragment/app/h;

    return-void

    .line 2563
    :cond_4d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already attached"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a(Landroidx/fragment/app/g$d;Z)V
    .registers 4

    if-nez p2, :cond_5

    .line 1558
    invoke-direct {p0}, Landroidx/fragment/app/g;->v()V

    .line 1560
    :cond_5
    monitor-enter p0

    .line 1561
    :try_start_6
    iget-boolean v0, p0, Landroidx/fragment/app/g;->x:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    if-nez v0, :cond_f

    goto :goto_24

    .line 1568
    :cond_f
    iget-object p2, p0, Landroidx/fragment/app/g;->d:Ljava/util/ArrayList;

    if-nez p2, :cond_1a

    .line 1569
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/fragment/app/g;->d:Ljava/util/ArrayList;

    .line 1571
    :cond_1a
    iget-object p2, p0, Landroidx/fragment/app/g;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1572
    invoke-virtual {p0}, Landroidx/fragment/app/g;->h()V

    .line 1573
    monitor-exit p0

    return-void

    :cond_24
    :goto_24
    if-eqz p2, :cond_28

    .line 1564
    monitor-exit p0

    return-void

    .line 1566
    :cond_28
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_30
    move-exception p1

    .line 1573
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 477
    iget-object v1, p0, Landroidx/fragment/app/g;->h:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_24c

    .line 478
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Active Fragments in "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 479
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ":"

    .line 480
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    iget-object v1, p0, Landroidx/fragment/app/g;->h:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3b
    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 482
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz v2, :cond_3b

    .line 9474
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mFragmentId=#"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9475
    iget v3, v2, Landroidx/fragment/app/Fragment;->v:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " mContainerId=#"

    .line 9476
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9477
    iget v3, v2, Landroidx/fragment/app/Fragment;->w:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " mTag="

    .line 9478
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroidx/fragment/app/Fragment;->x:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9479
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mState="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Landroidx/fragment/app/Fragment;->b:I

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " mWho="

    .line 9480
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " mBackStackNesting="

    .line 9481
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Landroidx/fragment/app/Fragment;->q:I

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 9482
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mAdded="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->k:Z

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string v3, " mRemoving="

    .line 9483
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->l:Z

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string v3, " mFromLayout="

    .line 9484
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->m:Z

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string v3, " mInLayout="

    .line 9485
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->n:Z

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9486
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mHidden="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->y:Z

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string v3, " mDetached="

    .line 9487
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->z:Z

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string v3, " mMenuVisible="

    .line 9488
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->D:Z

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string v3, " mHasMenu="

    .line 9489
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->C:Z

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9490
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mRetainInstance="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->A:Z

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string v3, " mUserVisibleHint="

    .line 9491
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->J:Z

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9492
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    if-eqz v3, :cond_117

    .line 9493
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mFragmentManager="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9494
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9496
    :cond_117
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/e;

    if-eqz v3, :cond_128

    .line 9497
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mHost="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9498
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/e;

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9500
    :cond_128
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_139

    .line 9501
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mParentFragment="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9502
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9504
    :cond_139
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->g:Landroid/os/Bundle;

    if-eqz v3, :cond_14a

    .line 9505
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mArguments="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroidx/fragment/app/Fragment;->g:Landroid/os/Bundle;

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9507
    :cond_14a
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    if-eqz v3, :cond_15b

    .line 9508
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mSavedFragmentState="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9509
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9511
    :cond_15b
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    if-eqz v3, :cond_16c

    .line 9512
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mSavedViewState="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9513
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9736
    :cond_16c
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_173

    .line 9739
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    goto :goto_189

    .line 9740
    :cond_173
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    if-eqz v3, :cond_188

    iget-object v3, v2, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    if-eqz v3, :cond_188

    .line 9742
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    iget-object v3, v3, Landroidx/fragment/app/g;->h:Ljava/util/HashMap;

    iget-object v4, v2, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    goto :goto_189

    :cond_188
    const/4 v3, 0x0

    :goto_189
    if-eqz v3, :cond_1a0

    .line 9517
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mTarget="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v3, " mTargetRequestCode="

    .line 9518
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9519
    iget v3, v2, Landroidx/fragment/app/Fragment;->j:I

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 9521
    :cond_1a0
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->F()I

    move-result v3

    if-eqz v3, :cond_1b5

    .line 9522
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mNextAnim="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->F()I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 9524
    :cond_1b5
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->F:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1c6

    .line 9525
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mContainer="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroidx/fragment/app/Fragment;->F:Landroid/view/ViewGroup;

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9527
    :cond_1c6
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    if-eqz v3, :cond_1d7

    .line 9528
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mView="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9530
    :cond_1d7
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v3, :cond_1e8

    .line 9531
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mInnerView="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9533
    :cond_1e8
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->K()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_20c

    .line 9534
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mAnimatingAway="

    .line 9535
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9536
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->K()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9537
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mStateAfterAnimating="

    .line 9538
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9539
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->M()I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 9541
    :cond_20c
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->e()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_219

    .line 9542
    invoke-static {v2}, Landroidx/loader/a/a;->a(Landroidx/lifecycle/h;)Landroidx/loader/a/a;

    move-result-object v3

    invoke-virtual {v3, v0, p3}, Landroidx/loader/a/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 9544
    :cond_219
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9545
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Child "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9546
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2, p3, p4}, Landroidx/fragment/app/g;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_3b

    .line 489
    :cond_24c
    iget-object p2, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p4, 0x0

    if-lez p2, :cond_282

    .line 491
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Added Fragments:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, p4

    :goto_25e
    if-ge v1, p2, :cond_282

    .line 493
    iget-object v2, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 494
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    .line 495
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 497
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_25e

    .line 502
    :cond_282
    iget-object p2, p0, Landroidx/fragment/app/g;->j:Ljava/util/ArrayList;

    if-eqz p2, :cond_2bb

    .line 503
    iget-object p2, p0, Landroidx/fragment/app/g;->j:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2bb

    .line 505
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Fragments Created Menus:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, p4

    :goto_297
    if-ge v1, p2, :cond_2bb

    .line 507
    iget-object v2, p0, Landroidx/fragment/app/g;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 508
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 509
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_297

    .line 514
    :cond_2bb
    iget-object p2, p0, Landroidx/fragment/app/g;->i:Ljava/util/ArrayList;

    if-eqz p2, :cond_2f7

    .line 515
    iget-object p2, p0, Landroidx/fragment/app/g;->i:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2f7

    .line 517
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Back Stack:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, p4

    :goto_2d0
    if-ge v1, p2, :cond_2f7

    .line 519
    iget-object v2, p0, Landroidx/fragment/app/g;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/a;

    .line 520
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 521
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v2, v0, p3}, Landroidx/fragment/app/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d0

    .line 527
    :cond_2f7
    monitor-enter p0

    .line 528
    :try_start_2f8
    iget-object p2, p0, Landroidx/fragment/app/g;->m:Ljava/util/ArrayList;

    if-eqz p2, :cond_32d

    .line 529
    iget-object p2, p0, Landroidx/fragment/app/g;->m:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_32d

    .line 531
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Back Stack Indices:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, p4

    :goto_30d
    if-ge v0, p2, :cond_32d

    .line 533
    iget-object v1, p0, Landroidx/fragment/app/g;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a;

    .line 534
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    .line 535
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_30d

    .line 540
    :cond_32d
    iget-object p2, p0, Landroidx/fragment/app/g;->n:Ljava/util/ArrayList;

    if-eqz p2, :cond_34e

    iget-object p2, p0, Landroidx/fragment/app/g;->n:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_34e

    .line 541
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mAvailBackStackIndices: "

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 542
    iget-object p2, p0, Landroidx/fragment/app/g;->n:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    :cond_34e
    monitor-exit p0
    :try_end_34f
    .catchall {:try_start_2f8 .. :try_end_34f} :catchall_3f3

    .line 546
    iget-object p2, p0, Landroidx/fragment/app/g;->d:Ljava/util/ArrayList;

    if-eqz p2, :cond_383

    .line 547
    iget-object p2, p0, Landroidx/fragment/app/g;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_383

    .line 549
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Actions:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_363
    if-ge p4, p2, :cond_383

    .line 551
    iget-object v0, p0, Landroidx/fragment/app/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/g$d;

    .line 552
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  #"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    .line 553
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_363

    .line 558
    :cond_383
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 560
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/g;->r:Landroidx/fragment/app/b;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 561
    iget-object p2, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_3b6

    .line 562
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 564
    :cond_3b6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroidx/fragment/app/g;->p:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mStateSaved="

    .line 565
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/g;->v:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mStopped="

    .line 566
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/g;->w:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mDestroyed="

    .line 567
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/g;->x:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 568
    iget-boolean p2, p0, Landroidx/fragment/app/g;->u:Z

    if-eqz p2, :cond_3f2

    .line 569
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNeedMenuInvalidate="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 570
    iget-boolean p0, p0, Landroidx/fragment/app/g;->u:Z

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_3f2
    return-void

    :catchall_3f3
    move-exception p1

    .line 544
    :try_start_3f4
    monitor-exit p0
    :try_end_3f5
    .catchall {:try_start_3f4 .. :try_end_3f5} :catchall_3f3

    throw p1
.end method

.method public final a(Z)V
    .registers 4

    .line 2667
    iget-object v0, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    .line 2668
    iget-object v1, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_17

    .line 2670
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->a(Z)V

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public final a(Landroid/view/Menu;)Z
    .registers 5

    .line 2736
    iget v0, p0, Landroidx/fragment/app/g;->p:I

    const/4 v1, 0x0

    if-gtz v0, :cond_6

    return v1

    :cond_6
    move v0, v1

    .line 2740
    :goto_7
    iget-object v2, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 2741
    iget-object v2, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_20

    .line 2743
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v0, 0x1

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_23
    return v0
.end method

.method public final a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 9

    .line 2703
    iget v0, p0, Landroidx/fragment/app/g;->p:I

    const/4 v1, 0x0

    if-gtz v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    move-object v2, v0

    move v0, v1

    move v3, v0

    .line 2708
    :goto_a
    iget-object v4, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_30

    .line 2709
    iget-object v4, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_2d

    .line 2711
    invoke-virtual {v4, p1, p2}, Landroidx/fragment/app/Fragment;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v5

    if-eqz v5, :cond_2d

    if-nez v2, :cond_29

    .line 2714
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2716
    :cond_29
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2721
    :cond_30
    iget-object p1, p0, Landroidx/fragment/app/g;->j:Ljava/util/ArrayList;

    if-eqz p1, :cond_4c

    .line 2722
    :goto_34
    iget-object p1, p0, Landroidx/fragment/app/g;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_4c

    .line 2723
    iget-object p1, p0, Landroidx/fragment/app/g;->j:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_49

    .line 2724
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 2730
    :cond_4c
    iput-object v2, p0, Landroidx/fragment/app/g;->j:Ljava/util/ArrayList;

    return v3
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .registers 5

    .line 2752
    iget v0, p0, Landroidx/fragment/app/g;->p:I

    const/4 v1, 0x0

    if-gtz v0, :cond_6

    return v1

    :cond_6
    move v0, v1

    .line 2755
    :goto_7
    iget-object v2, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_24

    .line 2756
    iget-object v2, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_21

    .line 2758
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_24
    return v1
.end method

.method final a(Landroidx/fragment/app/Fragment;)Z
    .registers 5

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 214
    :cond_4
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    .line 5821
    iget-object v2, v1, Landroidx/fragment/app/g;->t:Landroidx/fragment/app/Fragment;

    if-ne p1, v2, :cond_13

    .line 220
    iget-object p1, v1, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    .line 221
    invoke-virtual {p0, p1}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/Fragment;)Z

    move-result p0

    if-eqz p0, :cond_13

    return v0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public final addOnBackStackChangedListener(Landroidx/fragment/app/f$a;)V
    .registers 3

    .line 334
    iget-object v0, p0, Landroidx/fragment/app/g;->o:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/g;->o:Ljava/util/ArrayList;

    .line 337
    :cond_b
    iget-object p0, p0, Landroidx/fragment/app/g;->o:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 3

    .line 1526
    iget-object p0, p0, Landroidx/fragment/app/g;->h:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_a

    .line 1527
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_a

    return-object v0

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method final b(I)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2658
    :try_start_2
    iput-boolean v0, p0, Landroidx/fragment/app/g;->e:Z

    .line 2659
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/g;->a(IZ)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_d

    .line 2661
    iput-boolean v1, p0, Landroidx/fragment/app/g;->e:Z

    .line 2663
    invoke-virtual {p0}, Landroidx/fragment/app/g;->i()Z

    return-void

    :catchall_d
    move-exception p1

    .line 2661
    iput-boolean v1, p0, Landroidx/fragment/app/g;->e:Z

    .line 2662
    throw p1
.end method

.method public final b(Landroid/view/Menu;)V
    .registers 4

    .line 2782
    iget v0, p0, Landroidx/fragment/app/g;->p:I

    if-gtz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 2785
    :goto_6
    iget-object v1, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 2786
    iget-object v1, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1b

    .line 2788
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->b(Landroid/view/Menu;)V

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1e
    return-void
.end method

.method final b(Landroidx/fragment/app/Fragment;)V
    .registers 12

    if-nez p1, :cond_3

    return-void

    .line 1223
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/g;->h:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 1224
    sget-boolean v0, Landroidx/fragment/app/g;->c:Z

    if-eqz v0, :cond_36

    const-string v0, "FragmentManager"

    .line 1225
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring moving "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to state "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroidx/fragment/app/g;->p:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "since it is not added to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    return-void

    .line 1230
    :cond_37
    iget v0, p0, Landroidx/fragment/app/g;->p:I

    .line 1231
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->l:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4e

    .line 1232
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->c()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1233
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_4e

    .line 1235
    :cond_4a
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_4e
    :goto_4e
    move v6, v0

    .line 1238
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->G()I

    move-result v7

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->H()I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 1240
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    if-eqz v0, :cond_bf

    .line 1242
    invoke-direct {p0, p1}, Landroidx/fragment/app/g;->p(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_7f

    .line 1244
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    .line 1246
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->F:Landroid/view/ViewGroup;

    .line 1247
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1248
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ge v4, v0, :cond_7f

    .line 1250
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1251
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    invoke-virtual {v1, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1254
    :cond_7f
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->M:Z

    if-eqz v0, :cond_bf

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->F:Landroid/view/ViewGroup;

    if-eqz v0, :cond_bf

    .line 1256
    iget v0, p1, Landroidx/fragment/app/Fragment;->O:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_95

    .line 1257
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    iget v4, p1, Landroidx/fragment/app/Fragment;->O:F

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1259
    :cond_95
    iput v1, p1, Landroidx/fragment/app/Fragment;->O:F

    .line 1260
    iput-boolean v2, p1, Landroidx/fragment/app/Fragment;->M:Z

    .line 1262
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->G()I

    move-result v0

    .line 1263
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->H()I

    move-result v1

    .line 1262
    invoke-direct {p0, p1, v0, v3, v1}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/g$a;

    move-result-object v0

    if-eqz v0, :cond_bf

    .line 1265
    iget-object v1, v0, Landroidx/fragment/app/g$a;->a:Landroid/view/animation/Animation;

    if-eqz v1, :cond_b3

    .line 1266
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    iget-object v0, v0, Landroidx/fragment/app/g$a;->a:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_bf

    .line 1268
    :cond_b3
    iget-object v1, v0, Landroidx/fragment/app/g$a;->b:Landroid/animation/Animator;

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1269
    iget-object v0, v0, Landroidx/fragment/app/g$a;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1274
    :cond_bf
    :goto_bf
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->N:Z

    if-eqz v0, :cond_c6

    .line 1275
    invoke-direct {p0, p1}, Landroidx/fragment/app/g;->n(Landroidx/fragment/app/Fragment;)V

    :cond_c6
    return-void
.end method

.method public final b(Z)V
    .registers 4

    .line 2676
    iget-object v0, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    .line 2677
    iget-object v1, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_17

    .line 2679
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->b(Z)V

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public final b()Z
    .registers 2

    .line 183
    invoke-virtual {p0}, Landroidx/fragment/app/g;->i()Z

    move-result v0

    .line 184
    invoke-direct {p0}, Landroidx/fragment/app/g;->y()V

    return v0
.end method

.method public final b(Landroid/view/MenuItem;)Z
    .registers 5

    .line 2767
    iget v0, p0, Landroidx/fragment/app/g;->p:I

    const/4 v1, 0x0

    if-gtz v0, :cond_6

    return v1

    :cond_6
    move v0, v1

    .line 2770
    :goto_7
    iget-object v2, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_24

    .line 2771
    iget-object v2, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_21

    .line 2773
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->b(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_24
    return v1
.end method

.method final c(Landroidx/fragment/app/Fragment;)V
    .registers 4

    .line 1331
    iget-object v0, p0, Landroidx/fragment/app/g;->h:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    return-void

    .line 1335
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/g;->h:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->B:Z

    if-eqz v0, :cond_50

    .line 1337
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->A:Z

    if-eqz v0, :cond_4a

    .line 29393
    invoke-virtual {p0}, Landroidx/fragment/app/g;->g()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 29394
    sget-boolean p0, Landroidx/fragment/app/g;->c:Z

    if-eqz p0, :cond_4d

    const-string p0, "FragmentManager"

    const-string v0, "Ignoring addRetainedFragment as the state is already saved"

    .line 29395
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 29399
    :cond_2c
    iget-object p0, p0, Landroidx/fragment/app/g;->F:Landroidx/fragment/app/h;

    .line 30099
    iget-object p0, p0, Landroidx/fragment/app/h;->a:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4d

    .line 29400
    sget-boolean p0, Landroidx/fragment/app/g;->c:Z

    if-eqz p0, :cond_4d

    const-string p0, "FragmentManager"

    const-string v0, "Updating retained Fragments: Added "

    .line 29401
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 1340
    :cond_4a
    invoke-direct {p0, p1}, Landroidx/fragment/app/g;->l(Landroidx/fragment/app/Fragment;)V

    :cond_4d
    :goto_4d
    const/4 p0, 0x0

    .line 1342
    iput-boolean p0, p1, Landroidx/fragment/app/Fragment;->B:Z

    .line 1344
    :cond_50
    sget-boolean p0, Landroidx/fragment/app/g;->c:Z

    if-eqz p0, :cond_63

    const-string p0, "FragmentManager"

    const-string v0, "Added fragment to active set "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    return-void
.end method

.method public final c()Z
    .registers 1

    .line 252
    invoke-direct {p0}, Landroidx/fragment/app/g;->v()V

    .line 253
    invoke-direct {p0}, Landroidx/fragment/app/g;->s()Z

    move-result p0

    return p0
.end method

.method public final d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 374
    iget-object v0, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 375
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 377
    :cond_d
    iget-object v0, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    monitor-enter v0

    .line 378
    :try_start_10
    iget-object p0, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_1a
    move-exception p0

    .line 379
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public final d(Landroidx/fragment/app/Fragment;)V
    .registers 5

    .line 1399
    sget-boolean v0, Landroidx/fragment/app/g;->c:Z

    if-eqz v0, :cond_21

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remove: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroidx/fragment/app/Fragment;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    :cond_21
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->c()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1401
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->z:Z

    if-eqz v2, :cond_2d

    if-eqz v0, :cond_43

    .line 1402
    :cond_2d
    iget-object v0, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1403
    :try_start_30
    iget-object v2, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1404
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_44

    .line 1405
    invoke-static {p1}, Landroidx/fragment/app/g;->z(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1406
    iput-boolean v1, p0, Landroidx/fragment/app/g;->u:Z

    :cond_3e
    const/4 p0, 0x0

    .line 1408
    iput-boolean p0, p1, Landroidx/fragment/app/Fragment;->k:Z

    .line 1409
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->l:Z

    :cond_43
    return-void

    :catchall_44
    move-exception p0

    .line 1404
    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw p0
.end method

.method public final e()Landroidx/fragment/app/d;
    .registers 3

    .line 2836
    :goto_0
    invoke-super {p0}, Landroidx/fragment/app/f;->e()Landroidx/fragment/app/d;

    move-result-object v0

    .line 2837
    sget-object v1, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/d;

    if-ne v0, v1, :cond_18

    .line 2838
    iget-object v0, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_11

    .line 2843
    iget-object p0, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    iget-object p0, p0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    goto :goto_0

    .line 2845
    :cond_11
    new-instance v0, Landroidx/fragment/app/g$6;

    invoke-direct {v0, p0}, Landroidx/fragment/app/g$6;-><init>(Landroidx/fragment/app/g;)V

    .line 39401
    iput-object v0, p0, Landroidx/fragment/app/f;->b:Landroidx/fragment/app/d;

    .line 2855
    :cond_18
    invoke-super {p0}, Landroidx/fragment/app/f;->e()Landroidx/fragment/app/d;

    move-result-object p0

    return-object p0
.end method

.method final f()V
    .registers 4

    .line 192
    iget-object v0, p0, Landroidx/fragment/app/g;->d:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroidx/fragment/app/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 193
    iget-object p0, p0, Landroidx/fragment/app/g;->l:Landroidx/activity/b;

    .line 4071
    iput-boolean v1, p0, Landroidx/activity/b;->a:Z

    return-void

    .line 199
    :cond_12
    iget-object v0, p0, Landroidx/fragment/app/g;->l:Landroidx/activity/b;

    invoke-direct {p0}, Landroidx/fragment/app/g;->t()I

    move-result v2

    if-lez v2, :cond_23

    iget-object v2, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    .line 200
    invoke-virtual {p0, v2}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/Fragment;)Z

    move-result p0

    if-eqz p0, :cond_23

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    .line 5071
    :goto_24
    iput-boolean v1, v0, Landroidx/activity/b;->a:Z

    return-void
.end method

.method public final g(Landroidx/fragment/app/Fragment;)V
    .registers 6

    .line 1446
    sget-boolean v0, Landroidx/fragment/app/g;->c:Z

    if-eqz v0, :cond_13

    const-string v0, "FragmentManager"

    const-string v1, "detach: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    :cond_13
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->z:Z

    if-nez v0, :cond_49

    const/4 v0, 0x1

    .line 1448
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->z:Z

    .line 1449
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->k:Z

    if-eqz v1, :cond_49

    .line 1451
    sget-boolean v1, Landroidx/fragment/app/g;->c:Z

    if-eqz v1, :cond_31

    const-string v1, "FragmentManager"

    const-string v2, "remove from detach: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    :cond_31
    iget-object v1, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1453
    :try_start_34
    iget-object v2, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1454
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_46

    .line 1455
    invoke-static {p1}, Landroidx/fragment/app/g;->z(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1456
    iput-boolean v0, p0, Landroidx/fragment/app/g;->u:Z

    :cond_42
    const/4 p0, 0x0

    .line 1458
    iput-boolean p0, p1, Landroidx/fragment/app/Fragment;->k:Z

    goto :goto_49

    :catchall_46
    move-exception p0

    .line 1454
    :try_start_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p0

    :cond_49
    :goto_49
    return-void
.end method

.method public final g()Z
    .registers 2

    .line 1546
    iget-boolean v0, p0, Landroidx/fragment/app/g;->v:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Landroidx/fragment/app/g;->w:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method final h()V
    .registers 5

    .line 1584
    monitor-enter p0

    .line 1585
    :try_start_1
    iget-object v0, p0, Landroidx/fragment/app/g;->E:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroidx/fragment/app/g;->E:Ljava/util/ArrayList;

    .line 1586
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    move v0, v1

    .line 1587
    :goto_12
    iget-object v3, p0, Landroidx/fragment/app/g;->d:Ljava/util/ArrayList;

    if-eqz v3, :cond_1f

    iget-object v3, p0, Landroidx/fragment/app/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_1f

    move v1, v2

    :cond_1f
    if-nez v0, :cond_23

    if-eqz v1, :cond_38

    .line 1589
    :cond_23
    iget-object v0, p0, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    .line 30205
    iget-object v0, v0, Landroidx/fragment/app/e;->d:Landroid/os/Handler;

    .line 1589
    iget-object v1, p0, Landroidx/fragment/app/g;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1590
    iget-object v0, p0, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    .line 31205
    iget-object v0, v0, Landroidx/fragment/app/e;->d:Landroid/os/Handler;

    .line 1590
    iget-object v1, p0, Landroidx/fragment/app/g;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1591
    invoke-virtual {p0}, Landroidx/fragment/app/g;->f()V

    .line 1593
    :cond_38
    monitor-exit p0

    return-void

    :catchall_3a
    move-exception v0

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method public final h(Landroidx/fragment/app/Fragment;)V
    .registers 5

    .line 1464
    sget-boolean v0, Landroidx/fragment/app/g;->c:Z

    if-eqz v0, :cond_13

    const-string v0, "FragmentManager"

    const-string v1, "attach: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    :cond_13
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->z:Z

    if-eqz v0, :cond_61

    const/4 v0, 0x0

    .line 1466
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->z:Z

    .line 1467
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->k:Z

    if-nez v0, :cond_61

    .line 1468
    iget-object v0, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 1471
    sget-boolean v0, Landroidx/fragment/app/g;->c:Z

    if-eqz v0, :cond_39

    const-string v0, "FragmentManager"

    const-string v1, "add from attach: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    :cond_39
    iget-object v0, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1473
    :try_start_3c
    iget-object v1, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1474
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_4e

    const/4 v0, 0x1

    .line 1475
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->k:Z

    .line 1476
    invoke-static {p1}, Landroidx/fragment/app/g;->z(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_61

    .line 1477
    iput-boolean v0, p0, Landroidx/fragment/app/g;->u:Z

    goto :goto_61

    :catchall_4e
    move-exception p0

    .line 1474
    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw p0

    .line 1469
    :cond_51
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Fragment already added: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_61
    :goto_61
    return-void
.end method

.method public final i(Landroidx/fragment/app/Fragment;)V
    .registers 5

    if-eqz p1, :cond_31

    .line 2795
    iget-object v0, p0, Landroidx/fragment/app/g;->h:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_15

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/e;

    if-eqz v0, :cond_31

    .line 37890
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    if-ne v0, p0, :cond_15

    goto :goto_31

    .line 2797
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2800
    :cond_31
    :goto_31
    iget-object v0, p0, Landroidx/fragment/app/g;->t:Landroidx/fragment/app/Fragment;

    .line 2801
    iput-object p1, p0, Landroidx/fragment/app/g;->t:Landroidx/fragment/app/Fragment;

    .line 2802
    invoke-virtual {p0, v0}, Landroidx/fragment/app/g;->j(Landroidx/fragment/app/Fragment;)V

    .line 2803
    iget-object p1, p0, Landroidx/fragment/app/g;->t:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/g;->j(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public final i()Z
    .registers 5

    .line 1721
    invoke-direct {p0}, Landroidx/fragment/app/g;->w()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1724
    :goto_5
    iget-object v2, p0, Landroidx/fragment/app/g;->z:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/g;->A:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Landroidx/fragment/app/g;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1725
    iput-boolean v0, p0, Landroidx/fragment/app/g;->e:Z

    .line 1727
    :try_start_11
    iget-object v1, p0, Landroidx/fragment/app/g;->z:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/g;->A:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Landroidx/fragment/app/g;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1d

    .line 1729
    invoke-direct {p0}, Landroidx/fragment/app/g;->x()V

    move v1, v0

    goto :goto_5

    :catchall_1d
    move-exception v0

    invoke-direct {p0}, Landroidx/fragment/app/g;->x()V

    .line 1730
    throw v0

    .line 1734
    :cond_22
    invoke-virtual {p0}, Landroidx/fragment/app/g;->f()V

    .line 1735
    invoke-direct {p0}, Landroidx/fragment/app/g;->A()V

    .line 1736
    invoke-direct {p0}, Landroidx/fragment/app/g;->C()V

    return v1
.end method

.method final j()Landroid/os/Parcelable;
    .registers 12

    .line 2320
    invoke-direct {p0}, Landroidx/fragment/app/g;->y()V

    .line 2321
    invoke-direct {p0}, Landroidx/fragment/app/g;->z()V

    .line 2322
    invoke-virtual {p0}, Landroidx/fragment/app/g;->i()Z

    const/4 v0, 0x1

    .line 2324
    iput-boolean v0, p0, Landroidx/fragment/app/g;->v:Z

    .line 2326
    iget-object v1, p0, Landroidx/fragment/app/g;->h:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    return-object v2

    .line 2331
    :cond_16
    iget-object v1, p0, Landroidx/fragment/app/g;->h:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 2332
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2334
    iget-object v1, p0, Landroidx/fragment/app/g;->h:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    move v5, v4

    :cond_2d
    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/Fragment;

    if-eqz v6, :cond_2d

    .line 2336
    iget-object v5, v6, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    if-eq v5, p0, :cond_5a

    .line 2337
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failure saving state: active "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " was removed from the FragmentManager"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Landroidx/fragment/app/g;->a(Ljava/lang/RuntimeException;)V

    .line 2344
    :cond_5a
    new-instance v5, Landroidx/fragment/app/FragmentState;

    invoke-direct {v5, v6}, Landroidx/fragment/app/FragmentState;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 2345
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2347
    iget v7, v6, Landroidx/fragment/app/Fragment;->b:I

    if-lez v7, :cond_c0

    iget-object v7, v5, Landroidx/fragment/app/FragmentState;->m:Landroid/os/Bundle;

    if-nez v7, :cond_c0

    .line 2348
    invoke-direct {p0, v6}, Landroidx/fragment/app/g;->r(Landroidx/fragment/app/Fragment;)Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, v5, Landroidx/fragment/app/FragmentState;->m:Landroid/os/Bundle;

    .line 2350
    iget-object v7, v6, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    if-eqz v7, :cond_c4

    .line 2351
    iget-object v7, p0, Landroidx/fragment/app/g;->h:Ljava/util/HashMap;

    iget-object v8, v6, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/Fragment;

    if-nez v7, :cond_a0

    .line 2353
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Failure saving state: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " has target not in fragment manager: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Landroidx/fragment/app/g;->a(Ljava/lang/RuntimeException;)V

    .line 2358
    :cond_a0
    iget-object v8, v5, Landroidx/fragment/app/FragmentState;->m:Landroid/os/Bundle;

    if-nez v8, :cond_ab

    .line 2359
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, v5, Landroidx/fragment/app/FragmentState;->m:Landroid/os/Bundle;

    .line 2361
    :cond_ab
    iget-object v8, v5, Landroidx/fragment/app/FragmentState;->m:Landroid/os/Bundle;

    const-string v9, "android:target_state"

    invoke-direct {p0, v8, v9, v7}, Landroidx/fragment/app/g;->a(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 2363
    iget v7, v6, Landroidx/fragment/app/Fragment;->j:I

    if-eqz v7, :cond_c4

    .line 2364
    iget-object v7, v5, Landroidx/fragment/app/FragmentState;->m:Landroid/os/Bundle;

    const-string v8, "android:target_req_state"

    iget v9, v6, Landroidx/fragment/app/Fragment;->j:I

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_c4

    .line 2371
    :cond_c0
    iget-object v7, v6, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    iput-object v7, v5, Landroidx/fragment/app/FragmentState;->m:Landroid/os/Bundle;

    .line 2374
    :cond_c4
    :goto_c4
    sget-boolean v7, Landroidx/fragment/app/g;->c:Z

    if-eqz v7, :cond_e5

    const-string v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Saved state of "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Landroidx/fragment/app/FragmentState;->m:Landroid/os/Bundle;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e5
    move v5, v0

    goto/16 :goto_2d

    :cond_e8
    if-nez v5, :cond_f6

    .line 2380
    sget-boolean p0, Landroidx/fragment/app/g;->c:Z

    if-eqz p0, :cond_f5

    const-string p0, "FragmentManager"

    const-string v0, "saveAllState: no fragments!"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f5
    return-object v2

    .line 2388
    :cond_f6
    iget-object v0, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_15b

    .line 2390
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2391
    iget-object v0, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_109
    :goto_109
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    .line 2392
    iget-object v6, v5, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2393
    iget-object v6, v5, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    if-eq v6, p0, :cond_139

    .line 2394
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failure saving state: active "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " was removed from the FragmentManager"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Landroidx/fragment/app/g;->a(Ljava/lang/RuntimeException;)V

    .line 2398
    :cond_139
    sget-boolean v6, Landroidx/fragment/app/g;->c:Z

    if-eqz v6, :cond_109

    const-string v6, "FragmentManager"

    .line 2399
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "saveAllState: adding fragment ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v5, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_109

    :cond_15b
    move-object v1, v2

    .line 2406
    :cond_15c
    iget-object v0, p0, Landroidx/fragment/app/g;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_1a3

    .line 2407
    iget-object v0, p0, Landroidx/fragment/app/g;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1a3

    .line 2409
    new-array v2, v0, [Landroidx/fragment/app/BackStackState;

    :goto_16a
    if-ge v4, v0, :cond_1a3

    .line 2411
    new-instance v5, Landroidx/fragment/app/BackStackState;

    iget-object v6, p0, Landroidx/fragment/app/g;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/a;

    invoke-direct {v5, v6}, Landroidx/fragment/app/BackStackState;-><init>(Landroidx/fragment/app/a;)V

    aput-object v5, v2, v4

    .line 2412
    sget-boolean v5, Landroidx/fragment/app/g;->c:Z

    if-eqz v5, :cond_1a0

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "saveAllState: adding back stack #"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroidx/fragment/app/g;->i:Ljava/util/ArrayList;

    .line 2413
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2412
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a0
    add-int/lit8 v4, v4, 0x1

    goto :goto_16a

    .line 2418
    :cond_1a3
    new-instance v0, Landroidx/fragment/app/FragmentManagerState;

    invoke-direct {v0}, Landroidx/fragment/app/FragmentManagerState;-><init>()V

    .line 2419
    iput-object v3, v0, Landroidx/fragment/app/FragmentManagerState;->a:Ljava/util/ArrayList;

    .line 2420
    iput-object v1, v0, Landroidx/fragment/app/FragmentManagerState;->b:Ljava/util/ArrayList;

    .line 2421
    iput-object v2, v0, Landroidx/fragment/app/FragmentManagerState;->c:[Landroidx/fragment/app/BackStackState;

    .line 2422
    iget-object v1, p0, Landroidx/fragment/app/g;->t:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1b8

    .line 2423
    iget-object v1, p0, Landroidx/fragment/app/g;->t:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    iput-object v1, v0, Landroidx/fragment/app/FragmentManagerState;->d:Ljava/lang/String;

    .line 2425
    :cond_1b8
    iget p0, p0, Landroidx/fragment/app/g;->f:I

    iput p0, v0, Landroidx/fragment/app/FragmentManagerState;->e:I

    return-object v0
.end method

.method final j(Landroidx/fragment/app/Fragment;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 2807
    iget-object p0, p0, Landroidx/fragment/app/g;->h:Ljava/util/HashMap;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_f

    .line 2808
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->D()V

    :cond_f
    return-void
.end method

.method public final k()V
    .registers 4

    const/4 v0, 0x0

    .line 2593
    iput-boolean v0, p0, Landroidx/fragment/app/g;->v:Z

    .line 2594
    iput-boolean v0, p0, Landroidx/fragment/app/g;->w:Z

    .line 2595
    iget-object v1, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_b
    if-ge v0, v1, :cond_1f

    .line 2597
    iget-object v2, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_1c

    .line 37663
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    invoke-virtual {v2}, Landroidx/fragment/app/g;->k()V

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1f
    return-void
.end method

.method public final l()V
    .registers 2

    const/4 v0, 0x0

    .line 2605
    iput-boolean v0, p0, Landroidx/fragment/app/g;->v:Z

    .line 2606
    iput-boolean v0, p0, Landroidx/fragment/app/g;->w:Z

    const/4 v0, 0x1

    .line 2607
    invoke-virtual {p0, v0}, Landroidx/fragment/app/g;->b(I)V

    return-void
.end method

.method public final m()V
    .registers 2

    const/4 v0, 0x0

    .line 2611
    iput-boolean v0, p0, Landroidx/fragment/app/g;->v:Z

    .line 2612
    iput-boolean v0, p0, Landroidx/fragment/app/g;->w:Z

    const/4 v0, 0x2

    .line 2613
    invoke-virtual {p0, v0}, Landroidx/fragment/app/g;->b(I)V

    return-void
.end method

.method public final n()V
    .registers 2

    const/4 v0, 0x0

    .line 2617
    iput-boolean v0, p0, Landroidx/fragment/app/g;->v:Z

    .line 2618
    iput-boolean v0, p0, Landroidx/fragment/app/g;->w:Z

    const/4 v0, 0x3

    .line 2619
    invoke-virtual {p0, v0}, Landroidx/fragment/app/g;->b(I)V

    return-void
.end method

.method public final o()V
    .registers 2

    const/4 v0, 0x0

    .line 2623
    iput-boolean v0, p0, Landroidx/fragment/app/g;->v:Z

    .line 2624
    iput-boolean v0, p0, Landroidx/fragment/app/g;->w:Z

    const/4 v0, 0x4

    .line 2625
    invoke-virtual {p0, v0}, Landroidx/fragment/app/g;->b(I)V

    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 17

    move-object v0, p0

    move-object/from16 v1, p4

    const-string v2, "fragment"

    move-object v3, p2

    .line 3156
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_e

    return-object v3

    :cond_e
    const-string v2, "class"

    .line 3160
    invoke-interface {v1, v3, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3161
    sget-object v4, Landroidx/fragment/app/g$c;->a:[I

    move-object v5, p3

    invoke-virtual {p3, v1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v6, 0x0

    if-nez v2, :cond_22

    .line 3163
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_22
    move-object v7, v2

    const/4 v2, -0x1

    const/4 v8, 0x1

    .line 3165
    invoke-virtual {v4, v8, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    const/4 v10, 0x2

    .line 3166
    invoke-virtual {v4, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3167
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v7, :cond_16b

    .line 3169
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v4, v7}, Landroidx/fragment/app/d;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3f

    goto/16 :goto_16b

    :cond_3f
    if-eqz p1, :cond_45

    .line 3175
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    :cond_45
    if-ne v6, v2, :cond_6a

    if-ne v9, v2, :cond_6a

    if-eqz v10, :cond_4c

    goto :goto_6a

    .line 3177
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6a
    :goto_6a
    if-eq v9, v2, :cond_70

    .line 3184
    invoke-virtual {p0, v9}, Landroidx/fragment/app/g;->a(I)Landroidx/fragment/app/Fragment;

    move-result-object v3

    :cond_70
    if-nez v3, :cond_78

    if-eqz v10, :cond_78

    .line 3186
    invoke-virtual {p0, v10}, Landroidx/fragment/app/g;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    :cond_78
    if-nez v3, :cond_80

    if-eq v6, v2, :cond_80

    .line 3189
    invoke-virtual {p0, v6}, Landroidx/fragment/app/g;->a(I)Landroidx/fragment/app/Fragment;

    move-result-object v3

    .line 3192
    :cond_80
    sget-boolean v2, Landroidx/fragment/app/g;->c:Z

    if-eqz v2, :cond_ab

    const-string v2, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v11, "onCreateView: id=0x"

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3193
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " fname="

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " existing="

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3192
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ab
    if-nez v3, :cond_d6

    .line 3196
    invoke-virtual {p0}, Landroidx/fragment/app/g;->e()Landroidx/fragment/app/d;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Landroidx/fragment/app/d;->c(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 3197
    iput-boolean v8, v1, Landroidx/fragment/app/Fragment;->m:Z

    if-eqz v9, :cond_bf

    move v2, v9

    goto :goto_c0

    :cond_bf
    move v2, v6

    .line 3198
    :goto_c0
    iput v2, v1, Landroidx/fragment/app/Fragment;->v:I

    .line 3199
    iput v6, v1, Landroidx/fragment/app/Fragment;->w:I

    .line 3200
    iput-object v10, v1, Landroidx/fragment/app/Fragment;->x:Ljava/lang/String;

    .line 3201
    iput-boolean v8, v1, Landroidx/fragment/app/Fragment;->n:Z

    .line 3202
    iput-object v0, v1, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    .line 3203
    iget-object v2, v0, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/e;

    .line 3204
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->k()V

    .line 3205
    invoke-virtual {p0, v1, v8}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/Fragment;Z)V

    move-object v6, v1

    goto :goto_e4

    .line 3207
    :cond_d6
    iget-boolean v2, v3, Landroidx/fragment/app/Fragment;->n:Z

    if-nez v2, :cond_12d

    .line 3217
    iput-boolean v8, v3, Landroidx/fragment/app/Fragment;->n:Z

    .line 3218
    iget-object v1, v0, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    iput-object v1, v3, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/e;

    .line 3220
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->k()V

    move-object v6, v3

    .line 3227
    :goto_e4
    iget v1, v0, Landroidx/fragment/app/g;->p:I

    if-gtz v1, :cond_f6

    iget-boolean v1, v6, Landroidx/fragment/app/Fragment;->m:Z

    if-eqz v1, :cond_f6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    .line 3228
    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/Fragment;IIIZ)V

    goto :goto_f9

    .line 3230
    :cond_f6
    invoke-direct {p0, v6}, Landroidx/fragment/app/g;->m(Landroidx/fragment/app/Fragment;)V

    .line 3233
    :goto_f9
    iget-object v0, v6, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    if-eqz v0, :cond_114

    if-eqz v9, :cond_104

    .line 3238
    iget-object v0, v6, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V

    .line 3240
    :cond_104
    iget-object v0, v6, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_111

    .line 3241
    iget-object v0, v6, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3243
    :cond_111
    iget-object v0, v6, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    return-object v0

    .line 3234
    :cond_114
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " did not create a view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3210
    :cond_12d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Duplicate id 0x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3211
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tag "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", or parent id 0x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3212
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with another fragment for "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16b
    :goto_16b
    return-object v3
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    .line 3248
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/g;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final p()V
    .registers 2

    const/4 v0, 0x1

    .line 2633
    iput-boolean v0, p0, Landroidx/fragment/app/g;->w:Z

    const/4 v0, 0x2

    .line 2634
    invoke-virtual {p0, v0}, Landroidx/fragment/app/g;->b(I)V

    return-void
.end method

.method public final q()V
    .registers 3

    const/4 v0, 0x1

    .line 2642
    iput-boolean v0, p0, Landroidx/fragment/app/g;->x:Z

    .line 2643
    invoke-virtual {p0}, Landroidx/fragment/app/g;->i()Z

    const/4 v0, 0x0

    .line 2644
    invoke-virtual {p0, v0}, Landroidx/fragment/app/g;->b(I)V

    const/4 v0, 0x0

    .line 2645
    iput-object v0, p0, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    .line 2646
    iput-object v0, p0, Landroidx/fragment/app/g;->r:Landroidx/fragment/app/b;

    .line 2647
    iput-object v0, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    .line 2648
    iget-object v1, p0, Landroidx/fragment/app/g;->k:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz v1, :cond_1c

    .line 2651
    iget-object v1, p0, Landroidx/fragment/app/g;->l:Landroidx/activity/b;

    invoke-virtual {v1}, Landroidx/activity/b;->a()V

    .line 2652
    iput-object v0, p0, Landroidx/fragment/app/g;->k:Landroidx/activity/OnBackPressedDispatcher;

    :cond_1c
    return-void
.end method

.method public final r()V
    .registers 3

    const/4 v0, 0x0

    .line 2694
    :goto_1
    iget-object v1, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 2695
    iget-object v1, p0, Landroidx/fragment/app/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_16

    .line 2697
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->E()V

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method public final removeOnBackStackChangedListener(Landroidx/fragment/app/f$a;)V
    .registers 3

    .line 342
    iget-object v0, p0, Landroidx/fragment/app/g;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 343
    iget-object p0, p0, Landroidx/fragment/app/g;->o:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    .line 460
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    .line 462
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    iget-object v1, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_26

    .line 464
    iget-object p0, p0, Landroidx/fragment/app/g;->s:Landroidx/fragment/app/Fragment;

    invoke-static {p0, v0}, Landroidx/core/d/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_2b

    .line 466
    :cond_26
    iget-object p0, p0, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    invoke-static {p0, v0}, Landroidx/core/d/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    :goto_2b
    const-string p0, "}}"

    .line 468
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
