.class public Landroidx/appcompat/view/menu/g;
.super Ljava/lang/Object;
.source "MenuBuilder.java"

# interfaces
.implements Landroidx/core/a/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/g$b;,
        Landroidx/appcompat/view/menu/g$a;
    }
.end annotation


# static fields
.field private static final l:[I


# instance fields
.field private A:Z

.field final a:Landroid/content/Context;

.field public b:Landroidx/appcompat/view/menu/g$a;

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/i;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/i;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field f:Ljava/lang/CharSequence;

.field g:Landroid/graphics/drawable/Drawable;

.field h:Landroid/view/View;

.field i:Z

.field j:Landroidx/appcompat/view/menu/i;

.field public k:Z

.field private final m:Landroid/content/res/Resources;

.field private n:Z

.field private o:Z

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/i;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/i;",
            ">;"
        }
    .end annotation
.end field

.field private s:Z

.field private t:Landroid/view/ContextMenu$ContextMenuInfo;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/i;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/appcompat/view/menu/m;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x6

    .line 68
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroidx/appcompat/view/menu/g;->l:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 134
    iput v0, p0, Landroidx/appcompat/view/menu/g;->e:I

    .line 165
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/g;->u:Z

    .line 167
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/g;->v:Z

    .line 169
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/g;->w:Z

    .line 171
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/g;->i:Z

    .line 173
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/g;->x:Z

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/g;->y:Ljava/util/ArrayList;

    .line 177
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/g;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 188
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/g;->A:Z

    .line 230
    iput-object p1, p0, Landroidx/appcompat/view/menu/g;->a:Landroid/content/Context;

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/g;->m:Landroid/content/res/Resources;

    .line 232
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/g;->c:Ljava/util/ArrayList;

    .line 234
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/g;->p:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 235
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/g;->q:Z

    .line 237
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/g;->d:Ljava/util/ArrayList;

    .line 238
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/g;->r:Ljava/util/ArrayList;

    .line 239
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/g;->s:Z

    .line 1818
    iget-object v1, p0, Landroidx/appcompat/view/menu/g;->m:Landroid/content/res/Resources;

    .line 1819
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, p1, :cond_62

    iget-object v1, p0, Landroidx/appcompat/view/menu/g;->a:Landroid/content/Context;

    .line 1821
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/g;->a:Landroid/content/Context;

    .line 1820
    invoke-static {v1, v2}, Landroidx/core/e/s;->a(Landroid/view/ViewConfiguration;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_62

    goto :goto_63

    :cond_62
    move p1, v0

    :goto_63
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/g;->o:Z

    return-void
.end method

.method private static a(Ljava/util/ArrayList;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/i;",
            ">;I)I"
        }
    .end annotation

    .line 853
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_18

    .line 854
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/i;

    .line 4218
    iget v1, v1, Landroidx/appcompat/view/menu/i;->a:I

    if-gt v1, p1, :cond_15

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method private a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 15

    const/high16 v0, -0x10000

    and-int/2addr v0, p3

    shr-int/lit8 v0, v0, 0x10

    if-ltz v0, :cond_3d

    .line 2787
    sget-object v1, Landroidx/appcompat/view/menu/g;->l:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3d

    .line 2791
    sget-object v1, Landroidx/appcompat/view/menu/g;->l:[I

    aget v0, v1, v0

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    .line 449
    iget v9, p0, Landroidx/appcompat/view/menu/g;->e:I

    .line 3466
    new-instance v1, Landroidx/appcompat/view/menu/i;

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, v0

    move-object v8, p4

    invoke-direct/range {v2 .. v9}, Landroidx/appcompat/view/menu/i;-><init>(Landroidx/appcompat/view/menu/g;IIIILjava/lang/CharSequence;I)V

    .line 452
    iget-object p1, p0, Landroidx/appcompat/view/menu/g;->t:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz p1, :cond_2d

    .line 454
    iget-object p1, p0, Landroidx/appcompat/view/menu/g;->t:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3682
    iput-object p1, v1, Landroidx/appcompat/view/menu/i;->f:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 457
    :cond_2d
    iget-object p1, p0, Landroidx/appcompat/view/menu/g;->c:Ljava/util/ArrayList;

    iget-object p2, p0, Landroidx/appcompat/view/menu/g;->c:Ljava/util/ArrayList;

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/g;->a(Ljava/util/ArrayList;I)I

    move-result p2

    invoke-virtual {p1, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 p1, 0x1

    .line 458
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g;->b(Z)V

    return-object v1

    .line 2788
    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "order does not contain a valid category."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(ILandroid/view/KeyEvent;)Landroidx/appcompat/view/menu/i;
    .registers 13

    .line 936
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->y:Ljava/util/ArrayList;

    .line 937
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 938
    invoke-direct {p0, v0, p1, p2}, Landroidx/appcompat/view/menu/g;->a(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 940
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    return-object v2

    .line 944
    :cond_10
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    .line 945
    new-instance v3, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v3}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 947
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 950
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p2, v4, :cond_2b

    .line 952
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/i;

    return-object p0

    .line 955
    :cond_2b
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->c()Z

    move-result p0

    move v4, v5

    :goto_30
    if-ge v4, p2, :cond_66

    .line 959
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/i;

    if-eqz p0, :cond_3f

    .line 960
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/i;->getAlphabeticShortcut()C

    move-result v7

    goto :goto_43

    .line 961
    :cond_3f
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/i;->getNumericShortcut()C

    move-result v7

    .line 962
    :goto_43
    iget-object v8, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v8, v8, v5

    if-ne v7, v8, :cond_4d

    and-int/lit8 v8, v1, 0x2

    if-eqz v8, :cond_62

    :cond_4d
    iget-object v8, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v9, 0x2

    aget-char v8, v8, v9

    if-ne v7, v8, :cond_58

    and-int/lit8 v8, v1, 0x2

    if-nez v8, :cond_62

    :cond_58
    if-eqz p0, :cond_63

    const/16 v8, 0x8

    if-ne v7, v8, :cond_63

    const/16 v7, 0x43

    if-ne p1, v7, :cond_63

    :cond_62
    return-object v6

    :cond_63
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    :cond_66
    return-object v2
.end method

.method private a(IZ)V
    .registers 4

    if-ltz p1, :cond_17

    .line 586
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_17

    .line 588
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-eqz p2, :cond_16

    const/4 p1, 0x1

    .line 590
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g;->b(Z)V

    :cond_16
    return-void

    :cond_17
    :goto_17
    return-void
.end method

.method private a(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/appcompat/view/menu/i;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .line 888
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->c()Z

    move-result v0

    .line 889
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v1

    .line 890
    new-instance v2, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v2}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 892
    invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v3

    const/16 v4, 0x43

    if-nez v3, :cond_18

    if-eq p2, v4, :cond_18

    return-void

    .line 899
    :cond_18
    iget-object v3, p0, Landroidx/appcompat/view/menu/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    move v6, v5

    :goto_20
    if-ge v6, v3, :cond_7f

    .line 901
    iget-object v7, p0, Landroidx/appcompat/view/menu/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/view/menu/i;

    .line 902
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/i;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_39

    .line 903
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/i;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/view/menu/g;

    invoke-direct {v8, p1, p2, p3}, Landroidx/appcompat/view/menu/g;->a(Ljava/util/List;ILandroid/view/KeyEvent;)V

    :cond_39
    if-eqz v0, :cond_40

    .line 906
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/i;->getAlphabeticShortcut()C

    move-result v8

    goto :goto_44

    :cond_40
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/i;->getNumericShortcut()C

    move-result v8

    :goto_44
    if-eqz v0, :cond_4b

    .line 908
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/i;->getAlphabeticModifiers()I

    move-result v9

    goto :goto_4f

    :cond_4b
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/i;->getNumericModifiers()I

    move-result v9

    :goto_4f
    const v10, 0x1100f

    and-int v11, v1, v10

    and-int/2addr v9, v10

    if-ne v11, v9, :cond_59

    const/4 v9, 0x1

    goto :goto_5a

    :cond_59
    move v9, v5

    :goto_5a
    if-eqz v9, :cond_7c

    if-eqz v8, :cond_7c

    .line 911
    iget-object v9, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v9, v9, v5

    if-eq v8, v9, :cond_73

    iget-object v9, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-eq v8, v9, :cond_73

    if-eqz v0, :cond_7c

    const/16 v9, 0x8

    if-ne v8, v9, :cond_7c

    if-ne p2, v4, :cond_7c

    .line 916
    :cond_73
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/i;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_7c

    .line 917
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7c
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_7f
    return-void
.end method

.method private a(Landroidx/appcompat/view/menu/r;Landroidx/appcompat/view/menu/m;)Z
    .registers 6

    .line 306
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    if-eqz p2, :cond_10

    .line 312
    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/m;->a(Landroidx/appcompat/view/menu/r;)Z

    move-result v1

    .line 315
    :cond_10
    iget-object p2, p0, Landroidx/appcompat/view/menu/g;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_16
    :goto_16
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 316
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/m;

    if-nez v2, :cond_30

    .line 318
    iget-object v2, p0, Landroidx/appcompat/view/menu/g;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_30
    if-nez v1, :cond_16

    .line 320
    invoke-interface {v2, p1}, Landroidx/appcompat/view/menu/m;->a(Landroidx/appcompat/view/menu/r;)Z

    move-result v0

    move v1, v0

    goto :goto_16

    :cond_38
    return v1
.end method

.method private c(Z)V
    .registers 5

    .line 290
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 292
    :cond_9
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->e()V

    .line 293
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 294
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/m;

    if-nez v2, :cond_2c

    .line 296
    iget-object v2, p0, Landroidx/appcompat/view/menu/g;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_12

    .line 298
    :cond_2c
    invoke-interface {v2, p1}, Landroidx/appcompat/view/menu/m;->a(Z)V

    goto :goto_12

    .line 301
    :cond_30
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->f()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 1

    const-string p0, "android:menu:actionviewstates"

    return-object p0
.end method

.method final a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .registers 8

    .line 7832
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->m:Landroid/content/res/Resources;

    const/4 v1, 0x0

    if-eqz p5, :cond_c

    .line 1231
    iput-object p5, p0, Landroidx/appcompat/view/menu/g;->h:Landroid/view/View;

    .line 1234
    iput-object v1, p0, Landroidx/appcompat/view/menu/g;->f:Ljava/lang/CharSequence;

    .line 1235
    iput-object v1, p0, Landroidx/appcompat/view/menu/g;->g:Landroid/graphics/drawable/Drawable;

    goto :goto_2a

    :cond_c
    if-lez p1, :cond_15

    .line 1238
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/g;->f:Ljava/lang/CharSequence;

    goto :goto_19

    :cond_15
    if-eqz p2, :cond_19

    .line 1240
    iput-object p2, p0, Landroidx/appcompat/view/menu/g;->f:Ljava/lang/CharSequence;

    :cond_19
    :goto_19
    if-lez p3, :cond_24

    .line 7836
    iget-object p1, p0, Landroidx/appcompat/view/menu/g;->a:Landroid/content/Context;

    .line 1244
    invoke-static {p1, p3}, Landroidx/core/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/g;->g:Landroid/graphics/drawable/Drawable;

    goto :goto_28

    :cond_24
    if-eqz p4, :cond_28

    .line 1246
    iput-object p4, p0, Landroidx/appcompat/view/menu/g;->g:Landroid/graphics/drawable/Drawable;

    .line 1250
    :cond_28
    :goto_28
    iput-object v1, p0, Landroidx/appcompat/view/menu/g;->h:Landroid/view/View;

    :goto_2a
    const/4 p1, 0x0

    .line 1254
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g;->b(Z)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 9

    .line 381
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_44

    .line 383
    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 384
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_32

    .line 385
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_32

    if-nez v1, :cond_20

    .line 387
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 389
    :cond_20
    invoke-virtual {v4, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 390
    invoke-interface {v3}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v4

    if-eqz v4, :cond_32

    const-string v4, "android:menu:expandedactionview"

    .line 391
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 394
    :cond_32
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 395
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/r;

    .line 396
    invoke-virtual {v3, p1}, Landroidx/appcompat/view/menu/r;->a(Landroid/os/Bundle;)V

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_44
    if-eqz v1, :cond_4d

    .line 401
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_4d
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g$a;)V
    .registers 2

    .line 440
    iput-object p1, p0, Landroidx/appcompat/view/menu/g;->b:Landroidx/appcompat/view/menu/g$a;

    return-void
.end method

.method public final a(Landroidx/appcompat/view/menu/m;)V
    .registers 3

    .line 256
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->a:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/m;Landroid/content/Context;)V

    return-void
.end method

.method public final a(Landroidx/appcompat/view/menu/m;Landroid/content/Context;)V
    .registers 5

    .line 269
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-interface {p1, p2, p0}, Landroidx/appcompat/view/menu/m;->a(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V

    const/4 p1, 0x1

    .line 271
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/g;->s:Z

    return-void
.end method

.method public final a(Z)V
    .registers 5

    .line 1036
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/g;->x:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 1038
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/g;->x:Z

    .line 1039
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1040
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/m;

    if-nez v2, :cond_28

    .line 1042
    iget-object v2, p0, Landroidx/appcompat/view/menu/g;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1044
    :cond_28
    invoke-interface {v2, p0, p1}, Landroidx/appcompat/view/menu/m;->a(Landroidx/appcompat/view/menu/g;Z)V

    goto :goto_e

    :cond_2c
    const/4 p1, 0x0

    .line 1047
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/g;->x:Z

    return-void
.end method

.method public final a(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/m;I)Z
    .registers 10

    .line 985
    check-cast p1, Landroidx/appcompat/view/menu/i;

    const/4 v0, 0x0

    if-eqz p1, :cond_6d

    .line 987
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_6d

    .line 991
    :cond_c
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->b()Z

    move-result v1

    .line 6794
    iget-object v2, p1, Landroidx/appcompat/view/menu/i;->e:Landroidx/core/e/b;

    const/4 v3, 0x1

    if-eqz v2, :cond_1d

    .line 994
    invoke-virtual {v2}, Landroidx/core/e/b;->c()Z

    move-result v4

    if-eqz v4, :cond_1d

    move v4, v3

    goto :goto_1e

    :cond_1d
    move v4, v0

    .line 995
    :goto_1e
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->j()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 996
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->expandActionView()Z

    move-result p1

    or-int/2addr v1, p1

    if-eqz v1, :cond_6c

    .line 998
    invoke-virtual {p0, v3}, Landroidx/appcompat/view/menu/g;->a(Z)V

    goto :goto_6c

    .line 1000
    :cond_2f
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->hasSubMenu()Z

    move-result v5

    if-nez v5, :cond_40

    if-eqz v4, :cond_38

    goto :goto_40

    :cond_38
    and-int/lit8 p1, p3, 0x1

    if-nez p1, :cond_6c

    .line 1020
    invoke-virtual {p0, v3}, Landroidx/appcompat/view/menu/g;->a(Z)V

    goto :goto_6c

    :cond_40
    :goto_40
    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_47

    .line 1003
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/g;->a(Z)V

    .line 1006
    :cond_47
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->hasSubMenu()Z

    move-result p3

    if-nez p3, :cond_57

    .line 1007
    new-instance p3, Landroidx/appcompat/view/menu/r;

    .line 6836
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->a:Landroid/content/Context;

    .line 1007
    invoke-direct {p3, v0, p0, p1}, Landroidx/appcompat/view/menu/r;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/i;)V

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/i;->a(Landroidx/appcompat/view/menu/r;)V

    .line 1010
    :cond_57
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/r;

    if-eqz v4, :cond_62

    .line 1012
    invoke-virtual {v2, p1}, Landroidx/core/e/b;->a(Landroid/view/SubMenu;)V

    .line 1014
    :cond_62
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/r;Landroidx/appcompat/view/menu/m;)Z

    move-result p1

    or-int/2addr v1, p1

    if-nez v1, :cond_6c

    .line 1016
    invoke-virtual {p0, v3}, Landroidx/appcompat/view/menu/g;->a(Z)V

    :cond_6c
    :goto_6c
    return v1

    :cond_6d
    :goto_6d
    return v0
.end method

.method a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z
    .registers 4

    .line 840
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->b:Landroidx/appcompat/view/menu/g$a;

    if-eqz v0, :cond_e

    iget-object p0, p0, Landroidx/appcompat/view/menu/g;->b:Landroidx/appcompat/view/menu/g$a;

    invoke-interface {p0, p1, p2}, Landroidx/appcompat/view/menu/g$a;->a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public a(Landroidx/appcompat/view/menu/i;)Z
    .registers 6

    .line 1357
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 1361
    :cond_a
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->e()V

    .line 1362
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1363
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/m;

    if-nez v3, :cond_2d

    .line 1365
    iget-object v3, p0, Landroidx/appcompat/view/menu/g;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_13

    .line 1366
    :cond_2d
    invoke-interface {v3, p1}, Landroidx/appcompat/view/menu/m;->b(Landroidx/appcompat/view/menu/i;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1370
    :cond_33
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->f()V

    if-eqz v1, :cond_3a

    .line 1373
    iput-object p1, p0, Landroidx/appcompat/view/menu/g;->j:Landroidx/appcompat/view/menu/i;

    :cond_3a
    return v1
.end method

.method public add(I)Landroid/view/MenuItem;
    .registers 3

    .line 477
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->m:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, p1}, Landroidx/appcompat/view/menu/g;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .registers 6

    .line 487
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->m:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/g;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 5

    .line 482
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/g;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    const/4 v0, 0x0

    .line 472
    invoke-direct {p0, v0, v0, v0, p1}, Landroidx/appcompat/view/menu/g;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .registers 16

    .line 526
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 528
    invoke-virtual {v0, p4, p5, p6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_12

    .line 529
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_13

    :cond_12
    move v2, v1

    :goto_13
    and-int/lit8 p7, p7, 0x1

    if-nez p7, :cond_1a

    .line 532
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g;->removeGroup(I)V

    :cond_1a
    :goto_1a
    if-ge v1, v2, :cond_64

    .line 536
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/content/pm/ResolveInfo;

    .line 537
    new-instance v3, Landroid/content/Intent;

    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v4, :cond_2a

    move-object v4, p6

    goto :goto_2e

    :cond_2a
    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v4, p5, v4

    :goto_2e
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 539
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 542
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, p1, p2, p3, v4}, Landroidx/appcompat/view/menu/g;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 543
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v4

    .line 544
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz p8, :cond_61

    .line 545
    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v4, :cond_61

    .line 546
    iget p7, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v3, p8, p7

    :cond_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_64
    return v2
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .registers 3

    .line 497
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->m:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Landroidx/appcompat/view/menu/g;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p0

    return-object p0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .registers 6

    .line 511
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->m:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/g;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p0

    return-object p0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 5

    .line 502
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/g;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/i;

    .line 503
    new-instance p2, Landroidx/appcompat/view/menu/r;

    iget-object p3, p0, Landroidx/appcompat/view/menu/g;->a:Landroid/content/Context;

    invoke-direct {p2, p3, p0, p1}, Landroidx/appcompat/view/menu/r;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/i;)V

    .line 504
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/i;->a(Landroidx/appcompat/view/menu/r;)V

    return-object p2
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 3

    const/4 v0, 0x0

    .line 492
    invoke-virtual {p0, v0, v0, v0, p1}, Landroidx/appcompat/view/menu/g;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p0

    return-object p0
.end method

.method public final b(Landroid/os/Bundle;)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    .line 411
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->a()Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 413
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_38

    .line 415
    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 416
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_26

    .line 417
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_26

    .line 418
    invoke-virtual {v4, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 420
    :cond_26
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 421
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/r;

    .line 422
    invoke-virtual {v3, p1}, Landroidx/appcompat/view/menu/r;->b(Landroid/os/Bundle;)V

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_38
    const-string v0, "android:menu:expandedactionview"

    .line 426
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_49

    .line 428
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    if-eqz p0, :cond_49

    .line 430
    invoke-interface {p0}, Landroid/view/MenuItem;->expandActionView()Z

    :cond_49
    return-void
.end method

.method public final b(Landroidx/appcompat/view/menu/m;)V
    .registers 5

    .line 281
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 282
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/m;

    if-eqz v2, :cond_1c

    if-ne v2, p1, :cond_6

    .line 284
    :cond_1c
    iget-object v2, p0, Landroidx/appcompat/view/menu/g;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_22
    return-void
.end method

.method public final b(Z)V
    .registers 4

    .line 1063
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/g;->u:Z

    const/4 v1, 0x1

    if-nez v0, :cond_f

    if-eqz p1, :cond_b

    .line 1065
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/g;->q:Z

    .line 1066
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/g;->s:Z

    .line 1069
    :cond_b
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/g;->c(Z)V

    return-void

    .line 1071
    :cond_f
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/g;->v:Z

    if-eqz p1, :cond_15

    .line 1073
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/g;->w:Z

    :cond_15
    return-void
.end method

.method public b()Z
    .registers 1

    .line 520
    iget-boolean p0, p0, Landroidx/appcompat/view/menu/g;->A:Z

    return p0
.end method

.method public b(Landroidx/appcompat/view/menu/i;)Z
    .registers 6

    .line 1379
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_40

    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->j:Landroidx/appcompat/view/menu/i;

    if-eq v0, p1, :cond_e

    goto :goto_40

    .line 1383
    :cond_e
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->e()V

    .line 1384
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1385
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/m;

    if-nez v3, :cond_31

    .line 1387
    iget-object v3, p0, Landroidx/appcompat/view/menu/g;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_17

    .line 1388
    :cond_31
    invoke-interface {v3, p1}, Landroidx/appcompat/view/menu/m;->c(Landroidx/appcompat/view/menu/i;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1392
    :cond_37
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->f()V

    if-eqz v1, :cond_3f

    const/4 p1, 0x0

    .line 1395
    iput-object p1, p0, Landroidx/appcompat/view/menu/g;->j:Landroidx/appcompat/view/menu/i;

    :cond_3f
    return v1

    :cond_40
    :goto_40
    return v1
.end method

.method c()Z
    .registers 1

    .line 798
    iget-boolean p0, p0, Landroidx/appcompat/view/menu/g;->n:Z

    return p0
.end method

.method public clear()V
    .registers 2

    .line 610
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->j:Landroidx/appcompat/view/menu/i;

    if-eqz v0, :cond_9

    .line 611
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->j:Landroidx/appcompat/view/menu/i;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/g;->b(Landroidx/appcompat/view/menu/i;)Z

    .line 613
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    .line 615
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/g;->b(Z)V

    return-void
.end method

.method public clearHeader()V
    .registers 2

    const/4 v0, 0x0

    .line 1219
    iput-object v0, p0, Landroidx/appcompat/view/menu/g;->g:Landroid/graphics/drawable/Drawable;

    .line 1220
    iput-object v0, p0, Landroidx/appcompat/view/menu/g;->f:Ljava/lang/CharSequence;

    .line 1221
    iput-object v0, p0, Landroidx/appcompat/view/menu/g;->h:Landroid/view/View;

    const/4 v0, 0x0

    .line 1223
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/g;->b(Z)V

    return-void
.end method

.method public close()V
    .registers 2

    const/4 v0, 0x1

    .line 1052
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/g;->a(Z)V

    return-void
.end method

.method public d()Z
    .registers 1

    .line 828
    iget-boolean p0, p0, Landroidx/appcompat/view/menu/g;->o:Z

    return p0
.end method

.method public final e()V
    .registers 2

    .line 1084
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/g;->u:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 1085
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/g;->u:Z

    const/4 v0, 0x0

    .line 1086
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/g;->v:Z

    .line 1087
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/g;->w:Z

    :cond_c
    return-void
.end method

.method public final f()V
    .registers 3

    const/4 v0, 0x0

    .line 1092
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/g;->u:Z

    .line 1094
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/g;->v:Z

    if-eqz v1, :cond_e

    .line 1095
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/g;->v:Z

    .line 1096
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/g;->w:Z

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/g;->b(Z)V

    :cond_e
    return-void
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .registers 6

    .line 699
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_2a

    .line 701
    iget-object v2, p0, Landroidx/appcompat/view/menu/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/i;

    .line 702
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/i;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_16

    return-object v2

    .line 704
    :cond_16
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/i;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 705
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/i;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_27

    return-object v2

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method final g()V
    .registers 2

    const/4 v0, 0x1

    .line 1107
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/g;->q:Z

    .line 1108
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/g;->b(Z)V

    return-void
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .registers 2

    .line 758
    iget-object p0, p0, Landroidx/appcompat/view/menu/g;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/MenuItem;

    return-object p0
.end method

.method final h()V
    .registers 2

    const/4 v0, 0x1

    .line 1118
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/g;->s:Z

    .line 1119
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/g;->b(Z)V

    return-void
.end method

.method public hasVisibleItems()Z
    .registers 6

    .line 681
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/g;->k:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 685
    :cond_6
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v0, :cond_20

    .line 688
    iget-object v4, p0, Landroidx/appcompat/view/menu/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/i;

    .line 689
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/i;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1d

    return v1

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_20
    return v2
.end method

.method public final i()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/i;",
            ">;"
        }
    .end annotation

    .line 1124
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/g;->q:Z

    if-nez v0, :cond_7

    iget-object p0, p0, Landroidx/appcompat/view/menu/g;->p:Ljava/util/ArrayList;

    return-object p0

    .line 1127
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1129
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_14
    if-ge v2, v0, :cond_2c

    .line 1132
    iget-object v3, p0, Landroidx/appcompat/view/menu/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/i;

    .line 1133
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/i;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_29

    iget-object v4, p0, Landroidx/appcompat/view/menu/g;->p:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1136
    :cond_2c
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/g;->q:Z

    const/4 v0, 0x1

    .line 1137
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/g;->s:Z

    .line 1139
    iget-object p0, p0, Landroidx/appcompat/view/menu/g;->p:Ljava/util/ArrayList;

    return-object p0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 763
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/g;->a(ILandroid/view/KeyEvent;)Landroidx/appcompat/view/menu/i;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final j()V
    .registers 7

    .line 1169
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->i()Ljava/util/ArrayList;

    move-result-object v0

    .line 1171
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/g;->s:Z

    if-nez v1, :cond_9

    return-void

    .line 1177
    :cond_9
    iget-object v1, p0, Landroidx/appcompat/view/menu/g;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 1178
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/m;

    if-nez v5, :cond_2b

    .line 1180
    iget-object v5, p0, Landroidx/appcompat/view/menu/g;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_11

    .line 1182
    :cond_2b
    invoke-interface {v5}, Landroidx/appcompat/view/menu/m;->a()Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_11

    :cond_31
    if-eqz v3, :cond_5e

    .line 1187
    iget-object v1, p0, Landroidx/appcompat/view/menu/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1188
    iget-object v1, p0, Landroidx/appcompat/view/menu/g;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1189
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_42
    if-ge v3, v1, :cond_71

    .line 1191
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/i;

    .line 1192
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/i;->f()Z

    move-result v5

    if-eqz v5, :cond_56

    .line 1193
    iget-object v5, p0, Landroidx/appcompat/view/menu/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 1195
    :cond_56
    iget-object v5, p0, Landroidx/appcompat/view/menu/g;->r:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 1201
    :cond_5e
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1202
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1203
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->r:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->i()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1205
    :cond_71
    iput-boolean v2, p0, Landroidx/appcompat/view/menu/g;->s:Z

    return-void
.end method

.method public final k()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/i;",
            ">;"
        }
    .end annotation

    .line 1214
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->j()V

    .line 1215
    iget-object p0, p0, Landroidx/appcompat/view/menu/g;->r:Ljava/util/ArrayList;

    return-object p0
.end method

.method public l()Landroidx/appcompat/view/menu/g;
    .registers 1

    return-object p0
.end method

.method public performIdentifierAction(II)Z
    .registers 4

    .line 977
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x0

    .line 5981
    invoke-virtual {p0, p1, v0, p2}, Landroidx/appcompat/view/menu/g;->a(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/m;I)Z

    move-result p0

    return p0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .registers 4

    .line 865
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/g;->a(ILandroid/view/KeyEvent;)Landroidx/appcompat/view/menu/i;

    move-result-object p1

    if-eqz p1, :cond_c

    const/4 p2, 0x0

    .line 4981
    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/g;->a(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/m;I)Z

    move-result p1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_15

    const/4 p2, 0x1

    .line 874
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/g;->a(Z)V

    :cond_15
    return p1
.end method

.method public removeGroup(I)V
    .registers 7

    .line 3734
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_1a

    .line 3741
    iget-object v3, p0, Landroidx/appcompat/view/menu/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/i;

    .line 3743
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/i;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_17

    goto :goto_1b

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1a
    const/4 v2, -0x1

    :goto_1b
    if-ltz v2, :cond_40

    .line 563
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    move v3, v1

    :goto_25
    add-int/lit8 v4, v3, 0x1

    if-ge v3, v0, :cond_3c

    .line 565
    iget-object v3, p0, Landroidx/appcompat/view/menu/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/i;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/i;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_3c

    .line 567
    invoke-direct {p0, v2, v1}, Landroidx/appcompat/view/menu/g;->a(IZ)V

    move v3, v4

    goto :goto_25

    :cond_3c
    const/4 p1, 0x1

    .line 571
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g;->b(Z)V

    :cond_40
    return-void
.end method

.method public removeItem(I)V
    .registers 5

    .line 3717
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_19

    .line 3720
    iget-object v2, p0, Landroidx/appcompat/view/menu/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/i;

    .line 3721
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/i;->getItemId()I

    move-result v2

    if-ne v2, p1, :cond_16

    goto :goto_1a

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_19
    const/4 v1, -0x1

    :goto_1a
    const/4 p1, 0x1

    .line 555
    invoke-direct {p0, v1, p1}, Landroidx/appcompat/view/menu/g;->a(IZ)V

    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .registers 8

    .line 638
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_20

    .line 641
    iget-object v2, p0, Landroidx/appcompat/view/menu/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/i;

    .line 642
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/i;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1d

    .line 643
    invoke-virtual {v2, p3}, Landroidx/appcompat/view/menu/i;->a(Z)V

    .line 644
    invoke-virtual {v2, p2}, Landroidx/appcompat/view/menu/i;->setCheckable(Z)Landroid/view/MenuItem;

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_20
    return-void
.end method

.method public setGroupDividerEnabled(Z)V
    .registers 2

    .line 516
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/g;->A:Z

    return-void
.end method

.method public setGroupEnabled(IZ)V
    .registers 7

    .line 669
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    .line 672
    iget-object v2, p0, Landroidx/appcompat/view/menu/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/i;

    .line 673
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/i;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1a

    .line 674
    invoke-virtual {v2, p2}, Landroidx/appcompat/view/menu/i;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    return-void
.end method

.method public setGroupVisible(IZ)V
    .registers 9

    .line 651
    iget-object v0, p0, Landroidx/appcompat/view/menu/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    const/4 v3, 0x1

    if-ge v1, v0, :cond_23

    .line 658
    iget-object v4, p0, Landroidx/appcompat/view/menu/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/i;

    .line 659
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/i;->getGroupId()I

    move-result v5

    if-ne v5, p1, :cond_20

    .line 660
    invoke-virtual {v4, p2}, Landroidx/appcompat/view/menu/i;->b(Z)Z

    move-result v4

    if-eqz v4, :cond_20

    move v2, v3

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_23
    if-eqz v2, :cond_28

    .line 664
    invoke-virtual {p0, v3}, Landroidx/appcompat/view/menu/g;->b(Z)V

    :cond_28
    return-void
.end method

.method public setQwertyMode(Z)V
    .registers 2

    .line 768
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/g;->n:Z

    const/4 p1, 0x0

    .line 770
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g;->b(Z)V

    return-void
.end method

.method public size()I
    .registers 1

    .line 753
    iget-object p0, p0, Landroidx/appcompat/view/menu/g;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method
