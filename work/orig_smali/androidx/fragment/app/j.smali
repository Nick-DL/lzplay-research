.class final Landroidx/fragment/app/j;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/j$a;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:Landroidx/fragment/app/l;

.field private static final c:Landroidx/fragment/app/l;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0xb

    .line 45
    new-array v0, v0, [I

    fill-array-data v0, :array_20

    sput-object v0, Landroidx/fragment/app/j;->a:[I

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_15

    new-instance v0, Landroidx/fragment/app/k;

    invoke-direct {v0}, Landroidx/fragment/app/k;-><init>()V

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    sput-object v0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/l;

    .line 63
    invoke-static {}, Landroidx/fragment/app/j;->a()Landroidx/fragment/app/l;

    move-result-object v0

    sput-object v0, Landroidx/fragment/app/j;->c:Landroidx/fragment/app/l;

    return-void

    nop

    :array_20
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
        0xa
    .end array-data
.end method

.method static a(Landroidx/b/a;Landroidx/fragment/app/j$a;Ljava/lang/Object;Z)Landroid/view/View;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroidx/fragment/app/j$a;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 913
    iget-object p1, p1, Landroidx/fragment/app/j$a;->c:Landroidx/fragment/app/a;

    if-eqz p2, :cond_2d

    if-eqz p0, :cond_2d

    .line 914
    iget-object p2, p1, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    if-eqz p2, :cond_2d

    iget-object p2, p1, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    .line 916
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2d

    const/4 p2, 0x0

    if-eqz p3, :cond_1e

    .line 917
    iget-object p1, p1, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    .line 918
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_26

    :cond_1e
    iget-object p1, p1, Landroidx/fragment/app/a;->s:Ljava/util/ArrayList;

    .line 919
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 920
    :goto_26
    invoke-virtual {p0, p1}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_2d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroidx/b/a;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    add-int/lit8 p4, p4, -0x1

    :goto_7
    if-lt p4, p3, :cond_5b

    .line 165
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a;

    .line 166
    invoke-virtual {v1, p0}, Landroidx/fragment/app/a;->b(I)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 169
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 170
    iget-object v3, v1, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    if-eqz v3, :cond_58

    .line 171
    iget-object v3, v1, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v2, :cond_30

    .line 175
    iget-object v2, v1, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    .line 176
    iget-object v1, v1, Landroidx/fragment/app/a;->s:Ljava/util/ArrayList;

    goto :goto_37

    .line 178
    :cond_30
    iget-object v2, v1, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    .line 179
    iget-object v1, v1, Landroidx/fragment/app/a;->s:Ljava/util/ArrayList;

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_37
    const/4 v4, 0x0

    :goto_38
    if-ge v4, v3, :cond_58

    .line 182
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 183
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 184
    invoke-virtual {v0, v6}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_52

    .line 186
    invoke-virtual {v0, v5, v7}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_55

    .line 188
    :cond_52
    invoke-virtual {v0, v5, v6}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    :cond_58
    add-int/lit8 p4, p4, -0x1

    goto :goto_7

    :cond_5b
    return-object v0
.end method

.method static a(Landroidx/fragment/app/l;Landroidx/b/a;Ljava/lang/Object;Landroidx/fragment/app/j$a;)Landroidx/b/a;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/l;",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/j$a;",
            ")",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 840
    iget-object v0, p3, Landroidx/fragment/app/j$a;->a:Landroidx/fragment/app/Fragment;

    .line 8686
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    .line 842
    invoke-virtual {p1}, Landroidx/b/a;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8e

    if-eqz p2, :cond_8e

    if-nez v1, :cond_10

    goto/16 :goto_8e

    .line 846
    :cond_10
    new-instance p2, Landroidx/b/a;

    invoke-direct {p2}, Landroidx/b/a;-><init>()V

    .line 847
    invoke-virtual {p0, p2, v1}, Landroidx/fragment/app/l;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 851
    iget-object p0, p3, Landroidx/fragment/app/j$a;->c:Landroidx/fragment/app/a;

    .line 852
    iget-boolean p3, p3, Landroidx/fragment/app/j$a;->b:Z

    if-eqz p3, :cond_25

    .line 853
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->J()Landroidx/core/app/h;

    move-result-object p3

    .line 854
    iget-object p0, p0, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    goto :goto_2b

    .line 856
    :cond_25
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->I()Landroidx/core/app/h;

    move-result-object p3

    .line 857
    iget-object p0, p0, Landroidx/fragment/app/a;->s:Ljava/util/ArrayList;

    :goto_2b
    if-eqz p0, :cond_37

    .line 9164
    invoke-static {p2, p0}, Landroidx/b/f;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 862
    invoke-virtual {p1}, Landroidx/b/a;->values()Ljava/util/Collection;

    move-result-object v0

    .line 10164
    invoke-static {p2, v0}, Landroidx/b/f;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    :cond_37
    if-eqz p3, :cond_73

    .line 866
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_3f
    if-ltz p3, :cond_8d

    .line 867
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 868
    invoke-virtual {p2, v0}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_59

    .line 870
    invoke-static {p1, v0}, Landroidx/fragment/app/j;->a(Landroidx/b/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 872
    invoke-virtual {p1, v0}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_70

    .line 874
    :cond_59
    invoke-static {v1}, Landroidx/core/e/r;->h(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    .line 875
    invoke-static {p1, v0}, Landroidx/fragment/app/j;->a(Landroidx/b/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 877
    invoke-static {v1}, Landroidx/core/e/r;->h(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_70
    :goto_70
    add-int/lit8 p3, p3, -0x1

    goto :goto_3f

    .line 10958
    :cond_73
    invoke-virtual {p1}, Landroidx/b/a;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_79
    if-ltz p0, :cond_8d

    .line 10959
    invoke-virtual {p1, p0}, Landroidx/b/a;->c(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 10960
    invoke-virtual {p2, p3}, Landroidx/b/a;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8a

    .line 10961
    invoke-virtual {p1, p0}, Landroidx/b/a;->d(I)Ljava/lang/Object;

    :cond_8a
    add-int/lit8 p0, p0, -0x1

    goto :goto_79

    :cond_8d
    return-object p2

    .line 843
    :cond_8e
    :goto_8e
    invoke-virtual {p1}, Landroidx/b/a;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroidx/fragment/app/j$a;Landroid/util/SparseArray;I)Landroidx/fragment/app/j$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/j$a;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/j$a;",
            ">;I)",
            "Landroidx/fragment/app/j$a;"
        }
    .end annotation

    if-nez p0, :cond_a

    .line 1223
    new-instance p0, Landroidx/fragment/app/j$a;

    invoke-direct {p0}, Landroidx/fragment/app/j$a;-><init>()V

    .line 1224
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_a
    return-object p0
.end method

.method private static a()Landroidx/fragment/app/l;
    .registers 3

    :try_start_0
    const-string v0, "androidx.transition.FragmentTransitionSupport"

    .line 68
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 70
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/l;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    const/4 v0, 0x0

    return-object v0
.end method

.method private static a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/l;
    .registers 4

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_22

    .line 427
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->r()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 429
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->q()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 433
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    :cond_19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 437
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    if-eqz p1, :cond_3f

    .line 441
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->p()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 443
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_2d
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->s()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_36

    .line 447
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    :cond_36
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->t()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3f

    .line 451
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    :cond_3f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_47

    return-object p1

    .line 458
    :cond_47
    sget-object p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/l;

    if-eqz p0, :cond_56

    sget-object p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/l;

    invoke-static {p0, v0}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/l;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_56

    .line 459
    sget-object p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/l;

    return-object p0

    .line 461
    :cond_56
    sget-object p0, Landroidx/fragment/app/j;->c:Landroidx/fragment/app/l;

    if-eqz p0, :cond_65

    sget-object p0, Landroidx/fragment/app/j;->c:Landroidx/fragment/app/l;

    invoke-static {p0, v0}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/l;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_65

    .line 462
    sget-object p0, Landroidx/fragment/app/j;->c:Landroidx/fragment/app/l;

    return-object p0

    .line 464
    :cond_65
    sget-object p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/l;

    if-nez p0, :cond_6e

    sget-object p0, Landroidx/fragment/app/j;->c:Landroidx/fragment/app/l;

    if-nez p0, :cond_6e

    return-object p1

    .line 465
    :cond_6e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Transition types"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Landroidx/fragment/app/l;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .registers 4

    if-eqz p1, :cond_19

    if-nez p2, :cond_5

    goto :goto_19

    :cond_5
    if-eqz p3, :cond_c

    .line 497
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->u()Ljava/lang/Object;

    move-result-object p1

    goto :goto_10

    .line 498
    :cond_c
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->t()Ljava/lang/Object;

    move-result-object p1

    .line 496
    :goto_10
    invoke-virtual {p0, p1}, Landroidx/fragment/app/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 499
    invoke-virtual {p0, p1}, Landroidx/fragment/app/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_19
    :goto_19
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroidx/fragment/app/l;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p2, :cond_b

    .line 511
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->s()Ljava/lang/Object;

    move-result-object p1

    goto :goto_f

    .line 512
    :cond_b
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->p()Ljava/lang/Object;

    move-result-object p1

    .line 510
    :goto_f
    invoke-virtual {p0, p1}, Landroidx/fragment/app/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroidx/fragment/app/l;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .registers 6

    if-eqz p1, :cond_12

    if-eqz p2, :cond_12

    if-eqz p4, :cond_12

    if-eqz p5, :cond_d

    .line 1044
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->w()Z

    move-result p4

    goto :goto_13

    .line 1045
    :cond_d
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->v()Z

    move-result p4

    goto :goto_13

    :cond_12
    const/4 p4, 0x1

    :goto_13
    if-eqz p4, :cond_1a

    .line 1055
    invoke-virtual {p0, p2, p1, p3}, Landroidx/fragment/app/l;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1e

    .line 1060
    :cond_1a
    invoke-virtual {p0, p2, p1, p3}, Landroidx/fragment/app/l;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1e
    return-object p0
.end method

.method private static a(Landroidx/b/a;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 891
    invoke-virtual {p0}, Landroidx/b/a;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1b

    .line 893
    invoke-virtual {p0, v1}, Landroidx/b/a;->c(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 894
    invoke-virtual {p0, v1}, Landroidx/b/a;->b(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Landroidx/fragment/app/l;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/l;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_20

    .line 1005
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11686
    iget-object p2, p2, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    if-eqz p2, :cond_e

    .line 1008
    invoke-virtual {p0, v0, p2}, Landroidx/fragment/app/l;->a(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_e
    if-eqz p3, :cond_13

    .line 1011
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1013
    :cond_13
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_21

    .line 1014
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1015
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/l;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :cond_21
    :goto_21
    return-object v0
.end method

.method static a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/b/a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Landroidx/fragment/app/Fragment;",
            "Z",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_7

    .line 981
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->I()Landroidx/core/app/h;

    move-result-object p0

    goto :goto_b

    .line 982
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->I()Landroidx/core/app/h;

    move-result-object p0

    :goto_b
    if-eqz p0, :cond_33

    .line 984
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 985
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    if-nez p3, :cond_1c

    move v0, p2

    goto :goto_20

    .line 986
    :cond_1c
    invoke-virtual {p3}, Landroidx/b/a;->size()I

    move-result v0

    :goto_20
    if-ge p2, v0, :cond_33

    .line 988
    invoke-virtual {p3, p2}, Landroidx/b/a;->b(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 989
    invoke-virtual {p3, p2}, Landroidx/b/a;->c(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_20

    :cond_33
    return-void
.end method

.method private static a(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/a;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/j$a;",
            ">;Z)V"
        }
    .end annotation

    .line 1077
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_18

    .line 1079
    iget-object v3, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/i$a;

    .line 1080
    invoke-static {p0, v3, p1, v1, p2}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/a;Landroidx/fragment/app/i$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method private static a(Landroidx/fragment/app/a;Landroidx/fragment/app/i$a;Landroid/util/SparseArray;ZZ)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/a;",
            "Landroidx/fragment/app/i$a;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/j$a;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1125
    iget-object v6, p1, Landroidx/fragment/app/i$a;->b:Landroidx/fragment/app/Fragment;

    if-nez v6, :cond_5

    return-void

    .line 1129
    :cond_5
    iget v7, v6, Landroidx/fragment/app/Fragment;->w:I

    if-nez v7, :cond_a

    return-void

    :cond_a
    if-eqz p3, :cond_13

    .line 1133
    sget-object v0, Landroidx/fragment/app/j;->a:[I

    iget p1, p1, Landroidx/fragment/app/i$a;->a:I

    aget p1, v0, p1

    goto :goto_15

    :cond_13
    iget p1, p1, Landroidx/fragment/app/i$a;->a:I

    :goto_15
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_76

    packed-switch p1, :pswitch_data_e2

    move p1, v0

    move v1, p1

    move v8, v1

    goto/16 :goto_89

    :pswitch_21
    if-eqz p4, :cond_30

    .line 1141
    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->N:Z

    if-eqz p1, :cond_85

    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->y:Z

    if-nez p1, :cond_85

    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->k:Z

    if-eqz p1, :cond_85

    goto :goto_83

    .line 1143
    :cond_30
    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->y:Z

    goto/16 :goto_86

    :pswitch_34
    if-eqz p4, :cond_43

    .line 1158
    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->N:Z

    if-eqz p1, :cond_67

    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->k:Z

    if-eqz p1, :cond_67

    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->y:Z

    if-eqz p1, :cond_67

    :goto_42
    goto :goto_65

    .line 1160
    :cond_43
    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->k:Z

    if-eqz p1, :cond_67

    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->y:Z

    if-nez p1, :cond_67

    goto :goto_42

    :pswitch_4c
    if-eqz p4, :cond_69

    .line 1167
    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->k:Z

    if-nez p1, :cond_67

    iget-object p1, v6, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    if-eqz p1, :cond_67

    iget-object p1, v6, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    .line 1168
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_67

    iget p1, v6, Landroidx/fragment/app/Fragment;->O:F

    const/4 v2, 0x0

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_67

    :goto_65
    move p1, v1

    goto :goto_72

    :cond_67
    move p1, v0

    goto :goto_72

    .line 1171
    :cond_69
    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->k:Z

    if-eqz p1, :cond_67

    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->y:Z

    if-nez p1, :cond_67

    goto :goto_65

    :goto_72
    move v8, p1

    move p1, v1

    move v1, v0

    goto :goto_89

    :cond_76
    :pswitch_76
    if-eqz p4, :cond_7b

    .line 1150
    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->M:Z

    goto :goto_86

    .line 1152
    :cond_7b
    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->k:Z

    if-nez p1, :cond_85

    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->y:Z

    if-nez p1, :cond_85

    :goto_83
    move p1, v1

    goto :goto_86

    :cond_85
    move p1, v0

    :goto_86
    move v8, v0

    move v0, p1

    move p1, v8

    .line 1176
    :goto_89
    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/j$a;

    if-eqz v0, :cond_9b

    .line 1179
    invoke-static {v2, p2, v7}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/j$a;Landroid/util/SparseArray;I)Landroidx/fragment/app/j$a;

    move-result-object v2

    .line 1180
    iput-object v6, v2, Landroidx/fragment/app/j$a;->a:Landroidx/fragment/app/Fragment;

    .line 1181
    iput-boolean p3, v2, Landroidx/fragment/app/j$a;->b:Z

    .line 1182
    iput-object p0, v2, Landroidx/fragment/app/j$a;->c:Landroidx/fragment/app/a;

    :cond_9b
    move-object v9, v2

    const/4 v10, 0x0

    if-nez p4, :cond_c2

    if-eqz v1, :cond_c2

    if-eqz v9, :cond_a9

    .line 1185
    iget-object v0, v9, Landroidx/fragment/app/j$a;->d:Landroidx/fragment/app/Fragment;

    if-ne v0, v6, :cond_a9

    .line 1186
    iput-object v10, v9, Landroidx/fragment/app/j$a;->d:Landroidx/fragment/app/Fragment;

    .line 1193
    :cond_a9
    iget-object v0, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/g;

    .line 1194
    iget v1, v6, Landroidx/fragment/app/Fragment;->b:I

    if-gtz v1, :cond_c2

    iget v1, v0, Landroidx/fragment/app/g;->p:I

    if-lez v1, :cond_c2

    iget-boolean v1, p0, Landroidx/fragment/app/a;->t:Z

    if-nez v1, :cond_c2

    .line 1196
    invoke-virtual {v0, v6}, Landroidx/fragment/app/g;->c(Landroidx/fragment/app/Fragment;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v6

    .line 1197
    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/Fragment;IIIZ)V

    :cond_c2
    if-eqz v8, :cond_d4

    if-eqz v9, :cond_ca

    .line 1200
    iget-object v0, v9, Landroidx/fragment/app/j$a;->d:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_d4

    .line 1202
    :cond_ca
    invoke-static {v9, p2, v7}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/j$a;Landroid/util/SparseArray;I)Landroidx/fragment/app/j$a;

    move-result-object v9

    .line 1203
    iput-object v6, v9, Landroidx/fragment/app/j$a;->d:Landroidx/fragment/app/Fragment;

    .line 1204
    iput-boolean p3, v9, Landroidx/fragment/app/j$a;->e:Z

    .line 1205
    iput-object p0, v9, Landroidx/fragment/app/j$a;->f:Landroidx/fragment/app/a;

    :cond_d4
    if-nez p4, :cond_e0

    if-eqz p1, :cond_e0

    if-eqz v9, :cond_e0

    .line 1208
    iget-object p0, v9, Landroidx/fragment/app/j$a;->a:Landroidx/fragment/app/Fragment;

    if-ne p0, v6, :cond_e0

    .line 1210
    iput-object v10, v9, Landroidx/fragment/app/j$a;->a:Landroidx/fragment/app/Fragment;

    :cond_e0
    return-void

    nop

    :pswitch_data_e2
    .packed-switch 0x3
        :pswitch_4c
        :pswitch_34
        :pswitch_21
        :pswitch_4c
        :pswitch_76
    .end packed-switch
.end method

.method static a(Landroidx/fragment/app/g;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .registers 52
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/g;",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;IIZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    .line 107
    iget v5, v0, Landroidx/fragment/app/g;->p:I

    if-gtz v5, :cond_f

    return-void

    .line 111
    :cond_f
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    move/from16 v6, p3

    :goto_16
    if-ge v6, v3, :cond_34

    .line 114
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/a;

    .line 115
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 117
    invoke-static {v7, v5, v4}, Landroidx/fragment/app/j;->b(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V

    goto :goto_31

    .line 119
    :cond_2e
    invoke-static {v7, v5, v4}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V

    :goto_31
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 123
    :cond_34
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-eqz v6, :cond_382

    .line 124
    new-instance v6, Landroid/view/View;

    iget-object v7, v0, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    .line 2200
    iget-object v7, v7, Landroidx/fragment/app/e;->c:Landroid/content/Context;

    .line 124
    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 125
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v15

    const/4 v13, 0x0

    :goto_48
    if-ge v13, v15, :cond_382

    .line 127
    invoke-virtual {v5, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    move/from16 v12, p3

    .line 128
    invoke-static {v7, v1, v2, v12, v3}, Landroidx/fragment/app/j;->a(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroidx/b/a;

    move-result-object v11

    .line 132
    invoke-virtual {v5, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Landroidx/fragment/app/j$a;

    const/16 v20, 0x0

    if-eqz v4, :cond_1dd

    .line 2215
    iget-object v8, v0, Landroidx/fragment/app/g;->r:Landroidx/fragment/app/b;

    invoke-virtual {v8}, Landroidx/fragment/app/b;->c_()Z

    move-result v8

    if-eqz v8, :cond_70

    .line 2216
    iget-object v8, v0, Landroidx/fragment/app/g;->r:Landroidx/fragment/app/b;

    invoke-virtual {v8, v7}, Landroidx/fragment/app/b;->a(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    goto :goto_72

    :cond_70
    move-object/from16 v7, v20

    :goto_72
    if-eqz v7, :cond_1d4

    .line 2221
    iget-object v8, v10, Landroidx/fragment/app/j$a;->a:Landroidx/fragment/app/Fragment;

    .line 2222
    iget-object v9, v10, Landroidx/fragment/app/j$a;->d:Landroidx/fragment/app/Fragment;

    .line 2223
    invoke-static {v9, v8}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/l;

    move-result-object v14

    if-eqz v14, :cond_1d4

    .line 2227
    iget-boolean v1, v10, Landroidx/fragment/app/j$a;->b:Z

    .line 2228
    iget-boolean v2, v10, Landroidx/fragment/app/j$a;->e:Z

    .line 2230
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2231
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v29, v5

    .line 2232
    invoke-static {v14, v8, v1}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/l;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v5

    .line 2233
    invoke-static {v14, v9, v2}, Landroidx/fragment/app/j;->b(Landroidx/fragment/app/l;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v2

    .line 2562
    iget-object v12, v10, Landroidx/fragment/app/j$a;->a:Landroidx/fragment/app/Fragment;

    move/from16 v30, v13

    .line 2563
    iget-object v13, v10, Landroidx/fragment/app/j$a;->d:Landroidx/fragment/app/Fragment;

    if-eqz v12, :cond_a9

    move/from16 v31, v15

    .line 2565
    invoke-virtual {v12}, Landroidx/fragment/app/Fragment;->l()Landroid/view/View;

    move-result-object v15

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_ab

    :cond_a9
    move/from16 v31, v15

    :goto_ab
    if-eqz v12, :cond_150

    if-nez v13, :cond_b1

    goto/16 :goto_150

    .line 2571
    :cond_b1
    iget-boolean v0, v10, Landroidx/fragment/app/j$a;->b:Z

    .line 2572
    invoke-virtual {v11}, Landroidx/b/a;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_be

    move/from16 v32, v1

    move-object/from16 v15, v20

    goto :goto_c4

    .line 2573
    :cond_be
    invoke-static {v14, v12, v13, v0}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/l;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v15

    move/from16 v32, v1

    .line 2575
    :goto_c4
    invoke-static {v14, v11, v15, v10}, Landroidx/fragment/app/j;->b(Landroidx/fragment/app/l;Landroidx/b/a;Ljava/lang/Object;Landroidx/fragment/app/j$a;)Landroidx/b/a;

    move-result-object v1

    move-object/from16 v33, v8

    .line 2578
    invoke-static {v14, v11, v15, v10}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/l;Landroidx/b/a;Ljava/lang/Object;Landroidx/fragment/app/j$a;)Landroidx/b/a;

    move-result-object v8

    .line 2581
    invoke-virtual {v11}, Landroidx/b/a;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_e1

    if-eqz v1, :cond_d9

    .line 2584
    invoke-virtual {v1}, Landroidx/b/a;->clear()V

    :cond_d9
    if-eqz v8, :cond_de

    .line 2587
    invoke-virtual {v8}, Landroidx/b/a;->clear()V

    :cond_de
    move-object/from16 v15, v20

    goto :goto_f3

    :cond_e1
    move-object/from16 v34, v15

    .line 2591
    invoke-virtual {v11}, Landroidx/b/a;->keySet()Ljava/util/Set;

    move-result-object v15

    .line 2590
    invoke-static {v4, v1, v15}, Landroidx/fragment/app/j;->a(Ljava/util/ArrayList;Landroidx/b/a;Ljava/util/Collection;)V

    .line 2593
    invoke-virtual {v11}, Landroidx/b/a;->values()Ljava/util/Collection;

    move-result-object v15

    .line 2592
    invoke-static {v3, v8, v15}, Landroidx/fragment/app/j;->a(Ljava/util/ArrayList;Landroidx/b/a;Ljava/util/Collection;)V

    move-object/from16 v15, v34

    :goto_f3
    if-nez v5, :cond_fe

    if-nez v2, :cond_fe

    if-nez v15, :cond_fe

    move-object/from16 v36, v3

    :goto_fb
    move-object/from16 v35, v11

    goto :goto_157

    .line 2601
    :cond_fe
    invoke-static {v12, v13, v0, v1}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/b/a;)V

    if-eqz v15, :cond_133

    .line 2606
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2607
    invoke-virtual {v14, v15, v6, v4}, Landroidx/fragment/app/l;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    move-object/from16 v35, v11

    .line 2609
    iget-boolean v11, v10, Landroidx/fragment/app/j$a;->e:Z

    move-object/from16 v36, v3

    .line 2610
    iget-object v3, v10, Landroidx/fragment/app/j$a;->f:Landroidx/fragment/app/a;

    move-object/from16 v21, v14

    move-object/from16 v22, v15

    move-object/from16 v23, v2

    move-object/from16 v24, v1

    move/from16 v25, v11

    move-object/from16 v26, v3

    .line 2611
    invoke-static/range {v21 .. v26}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/l;Ljava/lang/Object;Ljava/lang/Object;Landroidx/b/a;ZLandroidx/fragment/app/a;)V

    .line 2613
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2614
    invoke-static {v8, v10, v5, v0}, Landroidx/fragment/app/j;->a(Landroidx/b/a;Landroidx/fragment/app/j$a;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_12e

    .line 2617
    invoke-virtual {v14, v5, v1}, Landroidx/fragment/app/l;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_12e
    move-object/from16 v28, v1

    move-object/from16 v26, v20

    goto :goto_13b

    :cond_133
    move-object/from16 v36, v3

    move-object/from16 v35, v11

    move-object/from16 v26, v20

    move-object/from16 v28, v26

    .line 2624
    :goto_13b
    new-instance v1, Landroidx/fragment/app/j$3;

    move-object/from16 v21, v1

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move/from16 v24, v0

    move-object/from16 v25, v8

    move-object/from16 v27, v14

    invoke-direct/range {v21 .. v28}, Landroidx/fragment/app/j$3;-><init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/b/a;Landroid/view/View;Landroidx/fragment/app/l;Landroid/graphics/Rect;)V

    invoke-static {v7, v1}, Landroidx/core/e/p;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/e/p;

    goto :goto_159

    :cond_150
    :goto_150
    move/from16 v32, v1

    move-object/from16 v36, v3

    move-object/from16 v33, v8

    goto :goto_fb

    :goto_157
    move-object/from16 v15, v20

    :goto_159
    if-nez v5, :cond_15f

    if-nez v15, :cond_15f

    if-eqz v2, :cond_1da

    .line 2244
    :cond_15f
    invoke-static {v14, v2, v9, v4, v6}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/l;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    move-object/from16 v1, v33

    move-object/from16 v3, v36

    .line 2247
    invoke-static {v14, v5, v1, v3, v6}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/l;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v8

    const/4 v10, 0x4

    .line 2250
    invoke-static {v8, v10}, Landroidx/fragment/app/j;->a(Ljava/util/ArrayList;I)V

    move-object/from16 v21, v14

    move-object/from16 v22, v5

    move-object/from16 v23, v2

    move-object/from16 v24, v15

    move-object/from16 v25, v1

    move/from16 v26, v32

    .line 2252
    invoke-static/range {v21 .. v26}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/l;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1da

    if-eqz v9, :cond_1a4

    if-eqz v2, :cond_1a4

    .line 3279
    iget-boolean v10, v9, Landroidx/fragment/app/Fragment;->k:Z

    if-eqz v10, :cond_1a4

    iget-boolean v10, v9, Landroidx/fragment/app/Fragment;->y:Z

    if-eqz v10, :cond_1a4

    iget-boolean v10, v9, Landroidx/fragment/app/Fragment;->N:Z

    if-eqz v10, :cond_1a4

    const/4 v10, 0x1

    .line 3281
    invoke-virtual {v9, v10}, Landroidx/fragment/app/Fragment;->c(Z)V

    .line 3686
    iget-object v10, v9, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    .line 3282
    invoke-virtual {v14, v2, v10, v0}, Landroidx/fragment/app/l;->b(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 3284
    iget-object v9, v9, Landroidx/fragment/app/Fragment;->F:Landroid/view/ViewGroup;

    .line 3285
    new-instance v10, Landroidx/fragment/app/j$1;

    invoke-direct {v10, v0}, Landroidx/fragment/app/j$1;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v9, v10}, Landroidx/core/e/p;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/e/p;

    .line 2258
    :cond_1a4
    invoke-static {v3}, Landroidx/fragment/app/l;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v21, v14

    move-object/from16 v22, v1

    move-object/from16 v23, v5

    move-object/from16 v24, v8

    move-object/from16 v25, v2

    move-object/from16 v26, v0

    move-object/from16 v27, v15

    move-object/from16 v28, v3

    .line 2259
    invoke-virtual/range {v21 .. v28}, Landroidx/fragment/app/l;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 2262
    invoke-virtual {v14, v7, v1}, Landroidx/fragment/app/l;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    move-object/from16 v16, v14

    move-object/from16 v17, v7

    move-object/from16 v18, v4

    move-object/from16 v19, v3

    move-object/from16 v21, v35

    .line 2263
    invoke-virtual/range {v16 .. v21}, Landroidx/fragment/app/l;->a(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v0, 0x0

    .line 2265
    invoke-static {v8, v0}, Landroidx/fragment/app/j;->a(Ljava/util/ArrayList;I)V

    .line 2266
    invoke-virtual {v14, v15, v4, v3}, Landroidx/fragment/app/l;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_36a

    :cond_1d4
    move-object/from16 v29, v5

    move/from16 v30, v13

    move/from16 v31, v15

    :cond_1da
    const/4 v0, 0x0

    goto/16 :goto_36a

    :cond_1dd
    move-object v1, v0

    move-object/from16 v29, v5

    move-object/from16 v35, v11

    move/from16 v30, v13

    move/from16 v31, v15

    const/4 v0, 0x0

    .line 4313
    iget-object v2, v1, Landroidx/fragment/app/g;->r:Landroidx/fragment/app/b;

    invoke-virtual {v2}, Landroidx/fragment/app/b;->c_()Z

    move-result v2

    if-eqz v2, :cond_1f8

    .line 4314
    iget-object v2, v1, Landroidx/fragment/app/g;->r:Landroidx/fragment/app/b;

    invoke-virtual {v2, v7}, Landroidx/fragment/app/b;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_1fa

    :cond_1f8
    move-object/from16 v2, v20

    :goto_1fa
    if-eqz v2, :cond_36a

    .line 4319
    iget-object v3, v10, Landroidx/fragment/app/j$a;->a:Landroidx/fragment/app/Fragment;

    .line 4320
    iget-object v4, v10, Landroidx/fragment/app/j$a;->d:Landroidx/fragment/app/Fragment;

    .line 4321
    invoke-static {v4, v3}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/l;

    move-result-object v5

    if-eqz v5, :cond_36a

    .line 4325
    iget-boolean v7, v10, Landroidx/fragment/app/j$a;->b:Z

    .line 4326
    iget-boolean v8, v10, Landroidx/fragment/app/j$a;->e:Z

    .line 4328
    invoke-static {v5, v3, v7}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/l;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v9

    .line 4329
    invoke-static {v5, v4, v8}, Landroidx/fragment/app/j;->b(Landroidx/fragment/app/l;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v8

    .line 4331
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4332
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 4691
    iget-object v14, v10, Landroidx/fragment/app/j$a;->a:Landroidx/fragment/app/Fragment;

    .line 4692
    iget-object v13, v10, Landroidx/fragment/app/j$a;->d:Landroidx/fragment/app/Fragment;

    if-eqz v14, :cond_2e7

    if-nez v13, :cond_226

    goto/16 :goto_2e7

    .line 4698
    :cond_226
    iget-boolean v12, v10, Landroidx/fragment/app/j$a;->b:Z

    .line 4699
    invoke-virtual/range {v35 .. v35}, Landroidx/b/a;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_233

    move-object/from16 v0, v20

    :goto_230
    move-object/from16 v11, v35

    goto :goto_239

    .line 4700
    :cond_233
    invoke-static {v5, v14, v13, v12}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/l;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    goto :goto_230

    .line 4702
    :goto_239
    invoke-static {v5, v11, v0, v10}, Landroidx/fragment/app/j;->b(Landroidx/fragment/app/l;Landroidx/b/a;Ljava/lang/Object;Landroidx/fragment/app/j$a;)Landroidx/b/a;

    move-result-object v1

    .line 4705
    invoke-virtual {v11}, Landroidx/b/a;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_246

    move-object/from16 v0, v20

    goto :goto_251

    :cond_246
    move-object/from16 v37, v0

    .line 4708
    invoke-virtual {v1}, Landroidx/b/a;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, v37

    :goto_251
    if-nez v9, :cond_26e

    if-nez v8, :cond_26e

    if-nez v0, :cond_26e

    move-object/from16 v38, v3

    move-object/from16 v40, v4

    move-object/from16 v45, v7

    move-object v1, v8

    move-object v3, v9

    move-object v0, v10

    move-object/from16 v42, v11

    move-object/from16 v44, v15

    move-object/from16 v17, v20

    move/from16 v22, v30

    move/from16 v21, v31

    const/16 v23, 0x0

    goto/16 :goto_2ff

    .line 4716
    :cond_26e
    invoke-static {v14, v13, v12, v1}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/b/a;)V

    if-eqz v0, :cond_29e

    move-object/from16 v38, v3

    .line 4720
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 4721
    invoke-virtual {v5, v0, v6, v7}, Landroidx/fragment/app/l;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    move-object/from16 v39, v7

    .line 4723
    iget-boolean v7, v10, Landroidx/fragment/app/j$a;->e:Z

    move-object/from16 v40, v4

    .line 4724
    iget-object v4, v10, Landroidx/fragment/app/j$a;->f:Landroidx/fragment/app/a;

    move-object/from16 v17, v11

    move-object v11, v5

    move/from16 v18, v12

    move-object v12, v0

    move-object/from16 v19, v13

    move-object v13, v8

    move-object/from16 v21, v14

    move-object v14, v1

    move-object v1, v15

    move v15, v7

    move-object/from16 v16, v4

    .line 4725
    invoke-static/range {v11 .. v16}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/l;Ljava/lang/Object;Ljava/lang/Object;Landroidx/b/a;ZLandroidx/fragment/app/a;)V

    if-eqz v9, :cond_2af

    .line 4728
    invoke-virtual {v5, v9, v3}, Landroidx/fragment/app/l;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    goto :goto_2af

    :cond_29e
    move-object/from16 v38, v3

    move-object/from16 v40, v4

    move-object/from16 v39, v7

    move-object/from16 v17, v11

    move/from16 v18, v12

    move-object/from16 v19, v13

    move-object/from16 v21, v14

    move-object v1, v15

    move-object/from16 v3, v20

    .line 4736
    :cond_2af
    :goto_2af
    new-instance v4, Landroidx/fragment/app/j$4;

    move-object/from16 v15, v39

    move-object v7, v4

    move-object v14, v8

    move-object v8, v5

    move-object v13, v9

    move-object/from16 v9, v17

    move-object v12, v10

    move-object v10, v0

    move-object/from16 v41, v0

    move-object/from16 v0, v17

    move-object v11, v12

    move-object/from16 v42, v0

    move-object v0, v12

    move-object v12, v1

    move-object/from16 v43, v13

    move/from16 v22, v30

    move-object v13, v6

    move-object/from16 v44, v1

    move-object v1, v14

    const/16 v23, 0x0

    move-object/from16 v14, v21

    move-object/from16 v45, v15

    move/from16 v21, v31

    move-object/from16 v15, v19

    move/from16 v16, v18

    move-object/from16 v17, v45

    move-object/from16 v18, v43

    move-object/from16 v19, v3

    invoke-direct/range {v7 .. v19}, Landroidx/fragment/app/j$4;-><init>(Landroidx/fragment/app/l;Landroidx/b/a;Ljava/lang/Object;Landroidx/fragment/app/j$a;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    invoke-static {v2, v4}, Landroidx/core/e/p;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/e/p;

    move-object/from16 v17, v41

    goto :goto_2fd

    :cond_2e7
    :goto_2e7
    move/from16 v23, v0

    move-object/from16 v38, v3

    move-object/from16 v40, v4

    move-object/from16 v45, v7

    move-object v1, v8

    move-object/from16 v43, v9

    move-object v0, v10

    move-object/from16 v44, v15

    move/from16 v22, v30

    move/from16 v21, v31

    move-object/from16 v42, v35

    move-object/from16 v17, v20

    :goto_2fd
    move-object/from16 v3, v43

    :goto_2ff
    if-nez v3, :cond_305

    if-nez v17, :cond_305

    if-eqz v1, :cond_370

    :cond_305
    move-object/from16 v4, v40

    move-object/from16 v7, v45

    .line 4343
    invoke-static {v5, v1, v4, v7, v6}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/l;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_315

    .line 4346
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_317

    :cond_315
    move-object/from16 v1, v20

    .line 4352
    :cond_317
    invoke-virtual {v5, v3, v6}, Landroidx/fragment/app/l;->b(Ljava/lang/Object;Landroid/view/View;)V

    .line 4354
    iget-boolean v0, v0, Landroidx/fragment/app/j$a;->b:Z

    move-object v11, v5

    move-object v12, v3

    move-object v13, v1

    move-object/from16 v14, v17

    move-object/from16 v15, v38

    move/from16 v16, v0

    invoke-static/range {v11 .. v16}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/l;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_370

    .line 4358
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v5

    move-object v12, v0

    move-object v13, v3

    move-object/from16 v14, v19

    move-object v15, v1

    move-object/from16 v16, v4

    move-object/from16 v18, v44

    .line 4359
    invoke-virtual/range {v11 .. v18}, Landroidx/fragment/app/l;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 5394
    new-instance v15, Landroidx/fragment/app/j$2;

    move-object v7, v15

    move-object v8, v3

    move-object v9, v5

    move-object v10, v6

    move-object/from16 v11, v38

    move-object/from16 v12, v44

    move-object/from16 v13, v19

    move-object v14, v4

    move-object v3, v15

    move-object v15, v1

    invoke-direct/range {v7 .. v15}, Landroidx/fragment/app/j$2;-><init>(Ljava/lang/Object;Landroidx/fragment/app/l;Landroid/view/View;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    invoke-static {v2, v3}, Landroidx/core/e/p;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/e/p;

    .line 6237
    new-instance v1, Landroidx/fragment/app/l$2;

    move-object/from16 v3, v42

    move-object/from16 v4, v44

    invoke-direct {v1, v5, v4, v3}, Landroidx/fragment/app/l$2;-><init>(Landroidx/fragment/app/l;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {v2, v1}, Landroidx/core/e/p;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/e/p;

    .line 4366
    invoke-virtual {v5, v2, v0}, Landroidx/fragment/app/l;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 6296
    new-instance v0, Landroidx/fragment/app/l$3;

    invoke-direct {v0, v5, v4, v3}, Landroidx/fragment/app/l$3;-><init>(Landroidx/fragment/app/l;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {v2, v0}, Landroidx/core/e/p;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/e/p;

    goto :goto_370

    :cond_36a
    :goto_36a
    move/from16 v23, v0

    move/from16 v22, v30

    move/from16 v21, v31

    :cond_370
    :goto_370
    add-int/lit8 v13, v22, 0x1

    move/from16 v15, v21

    move-object/from16 v5, v29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    goto/16 :goto_48

    :cond_382
    return-void
.end method

.method private static a(Landroidx/fragment/app/l;Ljava/lang/Object;Ljava/lang/Object;Landroidx/b/a;ZLandroidx/fragment/app/a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/l;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Landroidx/fragment/app/a;",
            ")V"
        }
    .end annotation

    .line 937
    iget-object v0, p5, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_2e

    iget-object v0, p5, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    .line 938
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    const/4 v0, 0x0

    if-eqz p4, :cond_18

    .line 939
    iget-object p4, p5, Landroidx/fragment/app/a;->s:Ljava/util/ArrayList;

    .line 940
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    goto :goto_20

    :cond_18
    iget-object p4, p5, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    .line 941
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 942
    :goto_20
    invoke-virtual {p3, p4}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 943
    invoke-virtual {p0, p1, p3}, Landroidx/fragment/app/l;->a(Ljava/lang/Object;Landroid/view/View;)V

    if-eqz p2, :cond_2e

    .line 946
    invoke-virtual {p0, p2, p3}, Landroidx/fragment/app/l;->a(Ljava/lang/Object;Landroid/view/View;)V

    :cond_2e
    return-void
.end method

.method static a(Ljava/util/ArrayList;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    .line 1029
    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_17

    .line 1030
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1031
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_17
    return-void
.end method

.method private static a(Ljava/util/ArrayList;Landroidx/b/a;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 648
    invoke-virtual {p1}, Landroidx/b/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1e

    .line 649
    invoke-virtual {p1, v0}, Landroidx/b/a;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 650
    invoke-static {v1}, Landroidx/core/e/r;->h(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 651
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1e
    return-void
.end method

.method private static a(Landroidx/fragment/app/l;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/l;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 471
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_16

    .line 472
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/fragment/app/l;->a(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    return v1

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method private static b(Landroidx/fragment/app/l;Landroidx/b/a;Ljava/lang/Object;Landroidx/fragment/app/j$a;)Landroidx/b/a;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/l;",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/j$a;",
            ")",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 784
    invoke-virtual {p1}, Landroidx/b/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6b

    if-nez p2, :cond_9

    goto :goto_6b

    .line 788
    :cond_9
    iget-object p2, p3, Landroidx/fragment/app/j$a;->d:Landroidx/fragment/app/Fragment;

    .line 789
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    .line 790
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->l()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/l;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 794
    iget-object p0, p3, Landroidx/fragment/app/j$a;->f:Landroidx/fragment/app/a;

    .line 795
    iget-boolean p3, p3, Landroidx/fragment/app/j$a;->e:Z

    if-eqz p3, :cond_24

    .line 796
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->I()Landroidx/core/app/h;

    move-result-object p2

    .line 797
    iget-object p0, p0, Landroidx/fragment/app/a;->s:Ljava/util/ArrayList;

    goto :goto_2a

    .line 799
    :cond_24
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->J()Landroidx/core/app/h;

    move-result-object p2

    .line 800
    iget-object p0, p0, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    .line 7164
    :goto_2a
    invoke-static {v0, p0}, Landroidx/b/f;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    if-eqz p2, :cond_63

    .line 806
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_35
    if-ltz p2, :cond_6a

    .line 807
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 808
    invoke-virtual {v0, p3}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_49

    .line 810
    invoke-virtual {p1, p3}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_60

    .line 811
    :cond_49
    invoke-static {v1}, Landroidx/core/e/r;->h(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 812
    invoke-virtual {p1, p3}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 813
    invoke-static {v1}, Landroidx/core/e/r;->h(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p3}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_60
    :goto_60
    add-int/lit8 p2, p2, -0x1

    goto :goto_35

    .line 817
    :cond_63
    invoke-virtual {v0}, Landroidx/b/a;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 8164
    invoke-static {p1, p0}, Landroidx/b/f;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    :cond_6a
    return-object v0

    .line 785
    :cond_6b
    :goto_6b
    invoke-virtual {p1}, Landroidx/b/a;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Landroidx/fragment/app/l;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p2, :cond_b

    .line 524
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->q()Ljava/lang/Object;

    move-result-object p1

    goto :goto_f

    .line 525
    :cond_b
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->r()Ljava/lang/Object;

    move-result-object p1

    .line 523
    :goto_f
    invoke-virtual {p0, p1}, Landroidx/fragment/app/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/a;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/j$a;",
            ">;Z)V"
        }
    .end annotation

    .line 1094
    iget-object v0, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->r:Landroidx/fragment/app/b;

    invoke-virtual {v0}, Landroidx/fragment/app/b;->c_()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 1097
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_13
    if-ltz v0, :cond_23

    .line 1099
    iget-object v2, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/i$a;

    .line 1100
    invoke-static {p0, v2, p1, v1, p2}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/a;Landroidx/fragment/app/i$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_23
    return-void
.end method
