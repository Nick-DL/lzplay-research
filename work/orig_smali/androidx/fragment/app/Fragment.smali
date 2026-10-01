.class public Landroidx/fragment/app/Fragment;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroidx/lifecycle/h;
.implements Landroidx/lifecycle/t;
.implements Landroidx/savedstate/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/Fragment$a;,
        Landroidx/fragment/app/Fragment$c;,
        Landroidx/fragment/app/Fragment$b;,
        Landroidx/fragment/app/Fragment$SavedState;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/Object;


# instance fields
.field A:Z

.field B:Z

.field C:Z

.field D:Z

.field E:Z

.field F:Landroid/view/ViewGroup;

.field G:Landroid/view/View;

.field H:Landroid/view/View;

.field I:Z

.field J:Z

.field K:Landroidx/fragment/app/Fragment$a;

.field L:Ljava/lang/Runnable;

.field M:Z

.field N:Z

.field O:F

.field P:Landroid/view/LayoutInflater;

.field Q:Z

.field R:Landroidx/lifecycle/e$b;

.field S:Landroidx/lifecycle/i;

.field T:Landroidx/fragment/app/m;

.field U:Landroidx/lifecycle/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/m<",
            "Landroidx/lifecycle/h;",
            ">;"
        }
    .end annotation
.end field

.field V:Landroidx/savedstate/b;

.field private W:Ljava/lang/Boolean;

.field private X:I

.field b:I

.field c:Landroid/os/Bundle;

.field d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/lang/Boolean;

.field f:Ljava/lang/String;

.field g:Landroid/os/Bundle;

.field h:Landroidx/fragment/app/Fragment;

.field i:Ljava/lang/String;

.field j:I

.field k:Z

.field l:Z

.field m:Z

.field n:Z

.field o:Z

.field p:Z

.field q:I

.field r:Landroidx/fragment/app/g;

.field protected s:Landroidx/fragment/app/e;

.field t:Landroidx/fragment/app/g;

.field u:Landroidx/fragment/app/Fragment;

.field v:I

.field w:I

.field x:Ljava/lang/String;

.field y:Z

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/fragment/app/Fragment;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Landroidx/fragment/app/Fragment;->b:I

    .line 117
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    .line 132
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->W:Ljava/lang/Boolean;

    .line 165
    new-instance v0, Landroidx/fragment/app/g;

    invoke-direct {v0}, Landroidx/fragment/app/g;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->D:Z

    .line 221
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->J:Z

    .line 230
    new-instance v0, Landroidx/fragment/app/Fragment$1;

    invoke-direct {v0, p0}, Landroidx/fragment/app/Fragment$1;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->L:Ljava/lang/Runnable;

    .line 260
    sget-object v0, Landroidx/lifecycle/e$b;->RESUMED:Landroidx/lifecycle/e$b;

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->R:Landroidx/lifecycle/e$b;

    .line 267
    new-instance v0, Landroidx/lifecycle/m;

    invoke-direct {v0}, Landroidx/lifecycle/m;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->U:Landroidx/lifecycle/m;

    .line 451
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->P()V

    return-void
.end method

.method private P()V
    .registers 3

    .line 468
    new-instance v0, Landroidx/lifecycle/i;

    invoke-direct {v0, p0}, Landroidx/lifecycle/i;-><init>(Landroidx/lifecycle/h;)V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/lifecycle/i;

    .line 469
    invoke-static {p0}, Landroidx/savedstate/b;->a(Landroidx/savedstate/c;)Landroidx/savedstate/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->V:Landroidx/savedstate/b;

    .line 470
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1d

    .line 471
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/lifecycle/i;

    new-instance v1, Landroidx/fragment/app/Fragment$2;

    invoke-direct {v1, p0}, Landroidx/fragment/app/Fragment$2;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/g;)V

    :cond_1d
    return-void
.end method

.method private Q()Landroidx/fragment/app/Fragment$a;
    .registers 2

    .line 2873
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_b

    .line 2874
    new-instance v0, Landroidx/fragment/app/Fragment$a;

    invoke-direct {v0}, Landroidx/fragment/app/Fragment$a;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    .line 2876
    :cond_b
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 522
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 521
    invoke-static {p0, p1}, Landroidx/fragment/app/d;->b(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    .line 523
    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;
    :try_end_17
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_17} :catch_66
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_17} :catch_4c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_17} :catch_32
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_17} :catch_18

    return-object p0

    :catch_18
    move-exception p0

    .line 541
    new-instance v0, Landroidx/fragment/app/Fragment$b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to instantiate fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": calling Fragment constructor caused an exception"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Landroidx/fragment/app/Fragment$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_32
    move-exception p0

    .line 538
    new-instance v0, Landroidx/fragment/app/Fragment$b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to instantiate fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": could not find Fragment constructor"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Landroidx/fragment/app/Fragment$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_4c
    move-exception p0

    .line 534
    new-instance v0, Landroidx/fragment/app/Fragment$b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to instantiate fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Landroidx/fragment/app/Fragment$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_66
    move-exception p0

    .line 530
    new-instance v0, Landroidx/fragment/app/Fragment$b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to instantiate fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Landroidx/fragment/app/Fragment$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method


# virtual methods
.method final A()V
    .registers 4

    .line 2616
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    invoke-virtual {v0}, Landroidx/fragment/app/g;->k()V

    const/4 v0, 0x2

    .line 2617
    iput v0, p0, Landroidx/fragment/app/Fragment;->b:I

    const/4 v0, 0x0

    .line 2618
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    const/4 v0, 0x1

    .line 15720
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    .line 2620
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    if-eqz v0, :cond_18

    .line 2624
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    invoke-virtual {p0}, Landroidx/fragment/app/g;->m()V

    return-void

    .line 2621
    :cond_18
    new-instance v0, Landroidx/fragment/app/n;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/n;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final B()V
    .registers 4

    .line 2628
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    invoke-virtual {v0}, Landroidx/fragment/app/g;->k()V

    .line 2629
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    invoke-virtual {v0}, Landroidx/fragment/app/g;->i()Z

    const/4 v0, 0x3

    .line 2630
    iput v0, p0, Landroidx/fragment/app/Fragment;->b:I

    const/4 v0, 0x0

    .line 2631
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    const/4 v0, 0x1

    .line 15746
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    .line 2633
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    if-eqz v0, :cond_2f

    .line 2637
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_START:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    .line 2638
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    if-eqz v0, :cond_29

    .line 2639
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/m;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_START:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/m;->a(Landroidx/lifecycle/e$a;)V

    .line 2641
    :cond_29
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    invoke-virtual {p0}, Landroidx/fragment/app/g;->n()V

    return-void

    .line 2634
    :cond_2f
    new-instance v0, Landroidx/fragment/app/n;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onStart()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/n;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final C()V
    .registers 4

    .line 2645
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    invoke-virtual {v0}, Landroidx/fragment/app/g;->k()V

    .line 2646
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    invoke-virtual {v0}, Landroidx/fragment/app/g;->i()Z

    const/4 v0, 0x4

    .line 2647
    iput v0, p0, Landroidx/fragment/app/Fragment;->b:I

    const/4 v0, 0x0

    .line 2648
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    .line 2649
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->m()V

    .line 2650
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    if-eqz v0, :cond_34

    .line 2654
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_RESUME:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    .line 2655
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    if-eqz v0, :cond_29

    .line 2656
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/m;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_RESUME:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/m;->a(Landroidx/lifecycle/e$a;)V

    .line 2658
    :cond_29
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    invoke-virtual {v0}, Landroidx/fragment/app/g;->o()V

    .line 2659
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    invoke-virtual {p0}, Landroidx/fragment/app/g;->i()Z

    return-void

    .line 2651
    :cond_34
    new-instance v0, Landroidx/fragment/app/n;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onResume()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/n;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final D()V
    .registers 3

    .line 2667
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    .line 2669
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->W:Ljava/lang/Boolean;

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->W:Ljava/lang/Boolean;

    .line 2670
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_22

    .line 2671
    :cond_12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->W:Ljava/lang/Boolean;

    .line 2673
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    .line 15813
    invoke-virtual {p0}, Landroidx/fragment/app/g;->f()V

    .line 15815
    iget-object v0, p0, Landroidx/fragment/app/g;->t:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/g;->j(Landroidx/fragment/app/Fragment;)V

    :cond_22
    return-void
.end method

.method final E()V
    .registers 1

    .line 2693
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onLowMemory()V

    .line 2694
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    invoke-virtual {p0}, Landroidx/fragment/app/g;->r()V

    return-void
.end method

.method final F()I
    .registers 2

    .line 2880
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 2883
    :cond_6
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    iget p0, p0, Landroidx/fragment/app/Fragment$a;->d:I

    return p0
.end method

.method final G()I
    .registers 2

    .line 2894
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 2897
    :cond_6
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    iget p0, p0, Landroidx/fragment/app/Fragment$a;->e:I

    return p0
.end method

.method final H()I
    .registers 2

    .line 2910
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 2913
    :cond_6
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    iget p0, p0, Landroidx/fragment/app/Fragment$a;->f:I

    return p0
.end method

.method final I()Landroidx/core/app/h;
    .registers 2

    .line 2917
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 2920
    :cond_6
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    iget-object p0, p0, Landroidx/fragment/app/Fragment$a;->o:Landroidx/core/app/h;

    return-object p0
.end method

.method final J()Landroidx/core/app/h;
    .registers 2

    .line 2924
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 2927
    :cond_6
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    iget-object p0, p0, Landroidx/fragment/app/Fragment$a;->p:Landroidx/core/app/h;

    return-object p0
.end method

.method final K()Landroid/view/View;
    .registers 2

    .line 2931
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 2934
    :cond_6
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    iget-object p0, p0, Landroidx/fragment/app/Fragment$a;->a:Landroid/view/View;

    return-object p0
.end method

.method final L()Landroid/animation/Animator;
    .registers 2

    .line 2946
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 2949
    :cond_6
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    iget-object p0, p0, Landroidx/fragment/app/Fragment$a;->b:Landroid/animation/Animator;

    return-object p0
.end method

.method final M()I
    .registers 2

    .line 2953
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 2956
    :cond_6
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    iget p0, p0, Landroidx/fragment/app/Fragment$a;->c:I

    return p0
.end method

.method final N()Z
    .registers 2

    .line 2964
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 2967
    :cond_6
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    iget-boolean p0, p0, Landroidx/fragment/app/Fragment$a;->q:Z

    return p0
.end method

.method final O()Z
    .registers 2

    .line 2971
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 2974
    :cond_6
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    iget-boolean p0, p0, Landroidx/fragment/app/Fragment$a;->s:Z

    return p0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 1659
    iget v0, p0, Landroidx/fragment/app/Fragment;->X:I

    if-eqz v0, :cond_c

    .line 1660
    iget p0, p0, Landroidx/fragment/app/Fragment;->X:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method final a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 3

    .line 2551
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    .line 2554
    :cond_9
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/g;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public final a()Landroidx/lifecycle/e;
    .registers 1

    .line 283
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/lifecycle/i;

    return-object p0
.end method

.method final a(I)V
    .registers 3

    .line 2887
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_7

    if-nez p1, :cond_7

    return-void

    .line 2890
    :cond_7
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->Q()Landroidx/fragment/app/Fragment$a;

    move-result-object p0

    iput p1, p0, Landroidx/fragment/app/Fragment$a;->d:I

    return-void
.end method

.method final a(II)V
    .registers 4

    .line 2901
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_9

    if-nez p1, :cond_9

    if-nez p2, :cond_9

    return-void

    .line 2904
    :cond_9
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->Q()Landroidx/fragment/app/Fragment$a;

    .line 2905
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    iput p1, v0, Landroidx/fragment/app/Fragment$a;->e:I

    .line 2906
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    iput p2, p0, Landroidx/fragment/app/Fragment$a;->f:I

    return-void
.end method

.method final a(Landroid/animation/Animator;)V
    .registers 2

    .line 2942
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->Q()Landroidx/fragment/app/Fragment$a;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/Fragment$a;->b:Landroid/animation/Animator;

    return-void
.end method

.method final a(Landroid/content/res/Configuration;)V
    .registers 2

    .line 2688
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2689
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/g;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 3

    .line 624
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    if-eqz v0, :cond_1b

    .line 5663
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_10

    .line 5666
    :cond_a
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    invoke-virtual {v0}, Landroidx/fragment/app/g;->g()Z

    move-result v0

    :goto_10
    if-nez v0, :cond_13

    goto :goto_1b

    .line 625
    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Fragment already added and state has been saved"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 627
    :cond_1b
    :goto_1b
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->g:Landroid/os/Bundle;

    return-void
.end method

.method final a(Landroid/view/View;)V
    .registers 2

    .line 2938
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->Q()Landroidx/fragment/app/Fragment$a;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/Fragment$a;->a:Landroid/view/View;

    return-void
.end method

.method final a(Z)V
    .registers 2

    .line 2679
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/g;->a(Z)V

    return-void
.end method

.method final a(Landroid/view/Menu;)Z
    .registers 4

    .line 2720
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->y:Z

    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 2721
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->D:Z

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    .line 2725
    :cond_e
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/g;->a(Landroid/view/Menu;)Z

    move-result p0

    or-int/2addr v1, p0

    :cond_15
    return v1
.end method

.method final a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 5

    .line 2708
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->y:Z

    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 2709
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->D:Z

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    .line 2713
    :cond_e
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/g;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p0

    or-int/2addr v1, p0

    :cond_15
    return v1
.end method

.method final a(Landroid/view/MenuItem;)Z
    .registers 3

    .line 2731
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->y:Z

    if-nez v0, :cond_e

    .line 2737
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/g;->a(Landroid/view/MenuItem;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final b()Landroidx/lifecycle/s;
    .registers 4

    .line 361
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    if-eqz v0, :cond_21

    .line 364
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    .line 3384
    iget-object v0, v0, Landroidx/fragment/app/g;->F:Landroidx/fragment/app/h;

    .line 4139
    iget-object v1, v0, Landroidx/fragment/app/h;->c:Ljava/util/HashMap;

    iget-object v2, p0, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/s;

    if-nez v1, :cond_20

    .line 4141
    new-instance v1, Landroidx/lifecycle/s;

    invoke-direct {v1}, Landroidx/lifecycle/s;-><init>()V

    .line 4142
    iget-object v0, v0, Landroidx/fragment/app/h;->c:Ljava/util/HashMap;

    iget-object p0, p0, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    return-object v1

    .line 362
    :cond_21
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t access ViewModels from detached fragment"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method final b(I)V
    .registers 2

    .line 2960
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->Q()Landroidx/fragment/app/Fragment$a;

    move-result-object p0

    iput p1, p0, Landroidx/fragment/app/Fragment$a;->c:I

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 3

    const/4 v0, 0x1

    .line 1603
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    .line 1604
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->c(Landroid/os/Bundle;)V

    .line 1605
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    .line 10718
    iget p1, p1, Landroidx/fragment/app/g;->p:I

    if-lez p1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-nez v0, :cond_15

    .line 1606
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    invoke-virtual {p0}, Landroidx/fragment/app/g;->l()V

    :cond_15
    return-void
.end method

.method final b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 5

    .line 2597
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    invoke-virtual {v0}, Landroidx/fragment/app/g;->k()V

    const/4 v0, 0x1

    .line 2598
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->p:Z

    .line 2599
    new-instance v1, Landroidx/fragment/app/m;

    invoke-direct {v1}, Landroidx/fragment/app/m;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/m;

    .line 2600
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    .line 2601
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    if-eqz p1, :cond_26

    .line 2603
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/m;

    invoke-virtual {p1}, Landroidx/fragment/app/m;->b()V

    .line 2605
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->U:Landroidx/lifecycle/m;

    iget-object p0, p0, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/m;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/m;->a(Ljava/lang/Object;)V

    return-void

    .line 2607
    :cond_26
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/m;

    .line 15040
    iget-object p1, p1, Landroidx/fragment/app/m;->a:Landroidx/lifecycle/i;

    if-eqz p1, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    if-nez v0, :cond_34

    const/4 p1, 0x0

    .line 2611
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/m;

    return-void

    .line 2608
    :cond_34
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method final b(Landroid/view/Menu;)V
    .registers 3

    .line 2757
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->y:Z

    if-nez v0, :cond_9

    .line 2761
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/g;->b(Landroid/view/Menu;)V

    :cond_9
    return-void
.end method

.method final b(Z)V
    .registers 2

    .line 2684
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/g;->b(Z)V

    return-void
.end method

.method final b(Landroid/view/MenuItem;)Z
    .registers 3

    .line 2745
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->y:Z

    if-nez v0, :cond_e

    .line 2749
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/g;->b(Landroid/view/MenuItem;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method final c(Landroid/os/Bundle;)V
    .registers 3

    if-eqz p1, :cond_14

    const-string v0, "android:support:fragments"

    .line 1624
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 1627
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/g;->a(Landroid/os/Parcelable;)V

    .line 1628
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    invoke-virtual {p0}, Landroidx/fragment/app/g;->l()V

    :cond_14
    return-void
.end method

.method final c(Z)V
    .registers 2

    .line 2978
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->Q()Landroidx/fragment/app/Fragment$a;

    move-result-object p0

    iput-boolean p1, p0, Landroidx/fragment/app/Fragment$a;->s:Z

    return-void
.end method

.method final c()Z
    .registers 1

    .line 563
    iget p0, p0, Landroidx/fragment/app/Fragment;->q:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final d()Landroidx/savedstate/a;
    .registers 1

    .line 370
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->V:Landroidx/savedstate/b;

    .line 5046
    iget-object p0, p0, Landroidx/savedstate/b;->a:Landroidx/savedstate/a;

    return-object p0
.end method

.method final d(Landroid/os/Bundle;)V
    .registers 4

    .line 2582
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    invoke-virtual {v0}, Landroidx/fragment/app/g;->k()V

    const/4 v0, 0x1

    .line 2583
    iput v0, p0, Landroidx/fragment/app/Fragment;->b:I

    const/4 v1, 0x0

    .line 2584
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->E:Z

    .line 2585
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->V:Landroidx/savedstate/b;

    invoke-virtual {v1, p1}, Landroidx/savedstate/b;->a(Landroid/os/Bundle;)V

    .line 2586
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->b(Landroid/os/Bundle;)V

    .line 2587
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->Q:Z

    .line 2588
    iget-boolean p1, p0, Landroidx/fragment/app/Fragment;->E:Z

    if-eqz p1, :cond_21

    .line 2592
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/lifecycle/i;

    sget-object p1, Landroidx/lifecycle/e$a;->ON_CREATE:Landroidx/lifecycle/e$a;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    return-void

    .line 2589
    :cond_21
    new-instance p1, Landroidx/fragment/app/n;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onCreate()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/fragment/app/n;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e()Landroid/content/Context;
    .registers 2

    .line 761
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/e;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/e;

    .line 6200
    iget-object p0, p0, Landroidx/fragment/app/e;->c:Landroid/content/Context;

    return-object p0
.end method

.method final e(Landroid/os/Bundle;)V
    .registers 3

    .line 2767
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->V:Landroidx/savedstate/b;

    invoke-virtual {v0, p1}, Landroidx/savedstate/b;->b(Landroid/os/Bundle;)V

    .line 2768
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    invoke-virtual {p0}, Landroidx/fragment/app/g;->j()Landroid/os/Parcelable;

    move-result-object p0

    if-eqz p0, :cond_12

    const-string v0, "android:support:fragments"

    .line 2770
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_12
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 570
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final f()Landroidx/fragment/app/FragmentActivity;
    .registers 2

    .line 788
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/e;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/e;

    .line 7195
    iget-object p0, p0, Landroidx/fragment/app/e;->b:Landroid/app/Activity;

    .line 788
    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    return-object p0
.end method

.method public final g()Ljava/lang/Object;
    .registers 2

    .line 815
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/e;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/e;

    invoke-virtual {p0}, Landroidx/fragment/app/e;->i()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final h()Landroid/content/res/Resources;
    .registers 4

    .line 7772
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->e()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 838
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0

    .line 7774
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not attached to a context."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hashCode()I
    .registers 1

    .line 577
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final i()Landroidx/fragment/app/f;
    .registers 4

    .line 922
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/e;

    if-eqz v0, :cond_7

    .line 925
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    return-object p0

    .line 923
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " has not been attached yet."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final j()Landroid/view/LayoutInflater;
    .registers 3

    .line 8430
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/e;

    if-eqz v0, :cond_14

    .line 8434
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/e;

    invoke-virtual {v0}, Landroidx/fragment/app/e;->e()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 8435
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    invoke-static {v0, v1}, Landroidx/core/e/e;->a(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    .line 1413
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroid/view/LayoutInflater;

    .line 1414
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->P:Landroid/view/LayoutInflater;

    return-object p0

    .line 8431
    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final k()V
    .registers 3

    const/4 v0, 0x1

    .line 1484
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    .line 1485
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/e;

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_d

    :cond_9
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/e;

    .line 10195
    iget-object v1, v1, Landroidx/fragment/app/e;->b:Landroid/app/Activity;

    :goto_d
    if-eqz v1, :cond_14

    const/4 v1, 0x0

    .line 1487
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->E:Z

    .line 10502
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    :cond_14
    return-void
.end method

.method public final l()Landroid/view/View;
    .registers 4

    .line 11686
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    if-eqz v0, :cond_5

    return-object v0

    .line 1699
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not return a View from onCreateView() or this was called before onCreateView()."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public m()V
    .registers 2

    const/4 v0, 0x1

    .line 1757
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    return-void
.end method

.method public n()V
    .registers 2

    const/4 v0, 0x1

    .line 1867
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    return-void
.end method

.method final o()V
    .registers 4

    .line 1877
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->P()V

    .line 1878
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1879
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->k:Z

    .line 1880
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->l:Z

    .line 1881
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->m:Z

    .line 1882
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->n:Z

    .line 1883
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->o:Z

    .line 1884
    iput v0, p0, Landroidx/fragment/app/Fragment;->q:I

    const/4 v1, 0x0

    .line 1885
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    .line 1886
    new-instance v2, Landroidx/fragment/app/g;

    invoke-direct {v2}, Landroidx/fragment/app/g;-><init>()V

    iput-object v2, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    .line 1887
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/e;

    .line 1888
    iput v0, p0, Landroidx/fragment/app/Fragment;->v:I

    .line 1889
    iput v0, p0, Landroidx/fragment/app/Fragment;->w:I

    .line 1890
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->x:Ljava/lang/String;

    .line 1891
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->y:Z

    .line 1892
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->z:Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    const/4 p1, 0x1

    .line 1804
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->E:Z

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5

    .line 11800
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->f()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1999
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void

    .line 11802
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Fragment "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not attached to an activity."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onLowMemory()V
    .registers 2

    const/4 v0, 0x1

    .line 1844
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    return-void
.end method

.method public final p()Ljava/lang/Object;
    .registers 2

    .line 2098
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 2101
    :cond_6
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    iget-object p0, p0, Landroidx/fragment/app/Fragment$a;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public final q()Ljava/lang/Object;
    .registers 3

    .line 2137
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 2140
    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->h:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/Fragment;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_13

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->p()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_13
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    iget-object p0, p0, Landroidx/fragment/app/Fragment$a;->h:Ljava/lang/Object;

    return-object p0
.end method

.method public final r()Ljava/lang/Object;
    .registers 2

    .line 2177
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 2180
    :cond_6
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    iget-object p0, p0, Landroidx/fragment/app/Fragment$a;->i:Ljava/lang/Object;

    return-object p0
.end method

.method public final s()Ljava/lang/Object;
    .registers 3

    .line 2215
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 2218
    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->j:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/Fragment;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_13

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->r()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_13
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    iget-object p0, p0, Landroidx/fragment/app/Fragment$a;->j:Ljava/lang/Object;

    return-object p0
.end method

.method setOnStartEnterTransitionListener(Landroidx/fragment/app/Fragment$c;)V
    .registers 3

    .line 2856
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->Q()Landroidx/fragment/app/Fragment$a;

    .line 2857
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->r:Landroidx/fragment/app/Fragment$c;

    if-ne p1, v0, :cond_a

    return-void

    :cond_a
    if-eqz p1, :cond_23

    .line 2860
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->r:Landroidx/fragment/app/Fragment$c;

    if-nez v0, :cond_13

    goto :goto_23

    .line 2861
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Trying to set a replacement startPostponedEnterTransition on "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2864
    :cond_23
    :goto_23
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$a;->q:Z

    if-eqz v0, :cond_2d

    .line 2865
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    iput-object p1, p0, Landroidx/fragment/app/Fragment$a;->r:Landroidx/fragment/app/Fragment$c;

    :cond_2d
    if-eqz p1, :cond_32

    .line 2868
    invoke-interface {p1}, Landroidx/fragment/app/Fragment$c;->b()V

    :cond_32
    return-void
.end method

.method public final t()Ljava/lang/Object;
    .registers 2

    .line 2248
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 2251
    :cond_6
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    iget-object p0, p0, Landroidx/fragment/app/Fragment$a;->k:Ljava/lang/Object;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 583
    invoke-static {p0, v0}, Landroidx/core/d/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, " ("

    .line 584
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 586
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    iget v1, p0, Landroidx/fragment/app/Fragment;->v:I

    if-eqz v1, :cond_2b

    const-string v1, " id=0x"

    .line 588
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    iget v1, p0, Landroidx/fragment/app/Fragment;->v:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    :cond_2b
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->x:Ljava/lang/String;

    if-eqz v1, :cond_39

    const-string v1, " "

    .line 592
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->x:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_39
    const/16 p0, 0x7d

    .line 595
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 596
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()Ljava/lang/Object;
    .registers 3

    .line 2286
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 2289
    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->l:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/Fragment;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_13

    .line 2290
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->t()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_13
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    iget-object p0, p0, Landroidx/fragment/app/Fragment$a;->l:Ljava/lang/Object;

    return-object p0
.end method

.method public final v()Z
    .registers 2

    .line 2315
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->n:Ljava/lang/Boolean;

    if-nez v0, :cond_b

    goto :goto_14

    :cond_b
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    iget-object p0, p0, Landroidx/fragment/app/Fragment$a;->n:Ljava/lang/Boolean;

    .line 2316
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_14
    :goto_14
    const/4 p0, 0x1

    return p0
.end method

.method public final w()Z
    .registers 2

    .line 2340
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->m:Ljava/lang/Boolean;

    if-nez v0, :cond_b

    goto :goto_14

    :cond_b
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    iget-object p0, p0, Landroidx/fragment/app/Fragment$a;->m:Ljava/lang/Boolean;

    .line 2341
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_14
    :goto_14
    const/4 p0, 0x1

    return p0
.end method

.method public final x()V
    .registers 3

    .line 2431
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    if-nez v0, :cond_b

    goto :goto_2e

    .line 2433
    :cond_b
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    iget-object v1, v1, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    .line 12205
    iget-object v1, v1, Landroidx/fragment/app/e;->d:Landroid/os/Handler;

    .line 2433
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2a

    .line 2434
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    .line 13205
    iget-object v0, v0, Landroidx/fragment/app/e;->d:Landroid/os/Handler;

    .line 2434
    new-instance v1, Landroidx/fragment/app/Fragment$3;

    invoke-direct {v1, p0}, Landroidx/fragment/app/Fragment$3;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void

    .line 2441
    :cond_2a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->y()V

    return-void

    .line 2432
    :cond_2e
    :goto_2e
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->Q()Landroidx/fragment/app/Fragment$a;

    move-result-object p0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment$a;->q:Z

    return-void
.end method

.method final y()V
    .registers 4

    .line 2451
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move-object v0, v1

    goto :goto_14

    .line 2454
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/fragment/app/Fragment$a;->q:Z

    .line 2455
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->r:Landroidx/fragment/app/Fragment$c;

    .line 2456
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$a;

    iput-object v1, p0, Landroidx/fragment/app/Fragment$a;->r:Landroidx/fragment/app/Fragment$c;

    :goto_14
    if-eqz v0, :cond_19

    .line 2459
    invoke-interface {v0}, Landroidx/fragment/app/Fragment$c;->a()V

    :cond_19
    return-void
.end method

.method final z()V
    .registers 4

    .line 2558
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/g;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/e;

    new-instance v2, Landroidx/fragment/app/Fragment$4;

    invoke-direct {v2, p0}, Landroidx/fragment/app/Fragment$4;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1, v2, p0}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/e;Landroidx/fragment/app/b;Landroidx/fragment/app/Fragment;)V

    const/4 v0, 0x0

    .line 2573
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    const/4 v1, 0x1

    .line 13523
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->E:Z

    .line 13524
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/e;

    if-nez v2, :cond_18

    const/4 v2, 0x0

    goto :goto_1c

    :cond_18
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/e;

    .line 14195
    iget-object v2, v2, Landroidx/fragment/app/e;->b:Landroid/app/Activity;

    :goto_1c
    if-eqz v2, :cond_22

    .line 13526
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    .line 14540
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->E:Z

    .line 2575
    :cond_22
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    if-eqz v0, :cond_27

    return-void

    .line 2576
    :cond_27
    new-instance v0, Landroidx/fragment/app/n;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onAttach()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/n;-><init>(Ljava/lang/String;)V

    throw v0
.end method
