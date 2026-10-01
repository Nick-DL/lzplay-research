.class final Landroidx/appcompat/widget/z;
.super Landroidx/c/a/c;
.source "SuggestionsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedAPI"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/z$a;
    }
.end annotation


# instance fields
.field a:I

.field private final k:Landroid/app/SearchManager;

.field private final l:Landroidx/appcompat/widget/SearchView;

.field private final m:Landroid/app/SearchableInfo;

.field private final n:Landroid/content/Context;

.field private final o:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private final p:I

.field private q:Z

.field private r:Landroid/content/res/ColorStateList;

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/appcompat/widget/SearchView;",
            "Landroid/app/SearchableInfo;",
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;)V"
        }
    .end annotation

    .line 96
    invoke-virtual {p2}, Landroidx/appcompat/widget/SearchView;->getSuggestionRowLayout()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/c/a/c;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Landroidx/appcompat/widget/z;->q:Z

    const/4 v0, 0x1

    .line 77
    iput v0, p0, Landroidx/appcompat/widget/z;->a:I

    const/4 v0, -0x1

    .line 85
    iput v0, p0, Landroidx/appcompat/widget/z;->s:I

    .line 86
    iput v0, p0, Landroidx/appcompat/widget/z;->t:I

    .line 87
    iput v0, p0, Landroidx/appcompat/widget/z;->u:I

    .line 88
    iput v0, p0, Landroidx/appcompat/widget/z;->v:I

    .line 89
    iput v0, p0, Landroidx/appcompat/widget/z;->w:I

    .line 90
    iput v0, p0, Landroidx/appcompat/widget/z;->x:I

    .line 98
    iget-object v0, p0, Landroidx/appcompat/widget/z;->e:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Landroidx/appcompat/widget/z;->k:Landroid/app/SearchManager;

    .line 99
    iput-object p2, p0, Landroidx/appcompat/widget/z;->l:Landroidx/appcompat/widget/SearchView;

    .line 100
    iput-object p3, p0, Landroidx/appcompat/widget/z;->m:Landroid/app/SearchableInfo;

    .line 101
    invoke-virtual {p2}, Landroidx/appcompat/widget/SearchView;->getSuggestionCommitIconResId()I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/z;->p:I

    .line 104
    iput-object p1, p0, Landroidx/appcompat/widget/z;->n:Landroid/content/Context;

    .line 106
    iput-object p4, p0, Landroidx/appcompat/widget/z;->o:Ljava/util/WeakHashMap;

    return-void
.end method

.method private a(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 648
    iget-object p0, p0, Landroidx/appcompat/widget/z;->e:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    const/4 v1, 0x0

    .line 651
    :try_start_9
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_d} :catch_41

    .line 656
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v2

    if-nez v2, :cond_14

    return-object v1

    .line 658
    :cond_14
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 659
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v3, v2, v0}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_40

    const-string p0, "SuggestionsAdapter"

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Invalid icon resource "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 661
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_40
    return-object p0

    :catch_41
    move-exception p0

    const-string p1, "SuggestionsAdapter"

    .line 653
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private a(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .registers 7

    const/4 v0, 0x0

    .line 551
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.resource"

    .line 552
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_b} :catch_6d

    if-eqz v1, :cond_22

    .line 555
    :try_start_d
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/z;->b(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_11} :catch_12
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_11} :catch_6d

    return-object p0

    .line 557
    :catch_12
    :try_start_12
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v1, "Resource does not exist: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 561
    :cond_22
    iget-object p0, p0, Landroidx/appcompat/widget/z;->n:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_2c} :catch_6d

    if-eqz p0, :cond_5d

    .line 566
    :try_start_2e
    invoke-static {p0, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_47

    .line 569
    :try_start_32
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_35} :catch_6d

    goto :goto_46

    :catch_36
    move-exception p0

    :try_start_37
    const-string v2, "SuggestionsAdapter"

    const-string v3, "Error closing icon stream for "

    .line 571
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_46} :catch_6d

    :goto_46
    return-object v1

    :catchall_47
    move-exception v1

    .line 569
    :try_start_48
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c
    .catch Ljava/io/FileNotFoundException; {:try_start_48 .. :try_end_4b} :catch_6d

    goto :goto_5c

    :catch_4c
    move-exception p0

    :try_start_4d
    const-string v2, "SuggestionsAdapter"

    const-string v3, "Error closing icon stream for "

    .line 571
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 573
    :goto_5c
    throw v1

    .line 563
    :cond_5d
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v1, "Failed to open "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_6d
    .catch Ljava/io/FileNotFoundException; {:try_start_4d .. :try_end_6d} :catch_6d

    :catch_6d
    move-exception p0

    const-string v1, "SuggestionsAdapter"

    .line 576
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Icon not found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_66

    .line 508
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_66

    .line 513
    :cond_12
    :try_start_12
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 515
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "android.resource://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/appcompat/widget/z;->n:Landroid/content/Context;

    .line 516
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 518
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/z;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_39

    return-object v3

    .line 523
    :cond_39
    iget-object v3, p0, Landroidx/appcompat/widget/z;->n:Landroid/content/Context;

    invoke-static {v3, v1}, Landroidx/core/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 525
    invoke-direct {p0, v2, v1}, Landroidx/appcompat/widget/z;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    :try_end_42
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_42} :catch_53
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_42} :catch_43

    return-object v1

    :catch_43
    const-string p0, "SuggestionsAdapter"

    const-string v1, "Icon resource not found: "

    .line 539
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 529
    :catch_53
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/z;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5a

    return-object v0

    .line 533
    :cond_5a
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 534
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/z;->a(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 535
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/z;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_66
    :goto_66
    return-object v0
.end method

.method private static a(Landroid/database/Cursor;I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_5

    return-object v0

    .line 686
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    move-exception p0

    const-string p1, "SuggestionsAdapter"

    const-string v1, "unexpected error retrieving valid column from cursor, did the remote process die?"

    .line 688
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 677
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 678
    invoke-static {p0, p1}, Landroidx/appcompat/widget/z;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V
    .registers 3

    .line 389
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_9

    .line 392
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_9
    const/4 p2, 0x0

    .line 394
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 401
    invoke-virtual {p1, p2, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    const/4 p0, 0x1

    .line 402
    invoke-virtual {p1, p0, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    return-void
.end method

.method private static a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 2

    .line 353
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f

    const/16 p1, 0x8

    .line 356
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_f
    const/4 p1, 0x0

    .line 358
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    if-eqz p2, :cond_b

    .line 594
    iget-object p0, p0, Landroidx/appcompat/widget/z;->o:Ljava/util/WeakHashMap;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private b(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .registers 8

    .line 700
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 702
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_97

    .line 706
    :try_start_a
    iget-object p0, p0, Landroidx/appcompat/widget/z;->e:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_14} :catch_87

    .line 711
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_77

    .line 715
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3d

    .line 719
    :try_start_22
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_2c} :catch_2d

    goto :goto_50

    .line 721
    :catch_2d
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Single path segment is not a resource ID: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3d
    const/4 v5, 0x2

    if-ne v2, v5, :cond_67

    .line 724
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_50
    if-eqz v0, :cond_57

    .line 731
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 729
    :cond_57
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "No resource found for: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 726
    :cond_67
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "More than two path segments: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 713
    :cond_77
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "No path: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 708
    :catch_87
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "No package found for authority: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 703
    :cond_97
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "No authority: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 584
    iget-object p0, p0, Landroidx/appcompat/widget/z;->o:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable$ConstantState;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 589
    :cond_c
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/database/Cursor;)V
    .registers 2

    if-eqz p0, :cond_7

    .line 196
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    if-eqz p0, :cond_13

    const-string v0, "in_progress"

    .line 205
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13

    return-void

    :cond_13
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 12

    if-nez p1, :cond_5

    const-string p1, ""

    goto :goto_9

    .line 147
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 153
    :goto_9
    iget-object v0, p0, Landroidx/appcompat/widget/z;->l:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8a

    iget-object v0, p0, Landroidx/appcompat/widget/z;->l:Landroidx/appcompat/widget/SearchView;

    .line 154
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_1c

    goto/16 :goto_8a

    .line 158
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Landroidx/appcompat/widget/z;->m:Landroid/app/SearchableInfo;

    if-nez v0, :cond_22

    :goto_20
    move-object p0, v1

    goto :goto_7b

    .line 1742
    :cond_22
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_29

    goto :goto_20

    .line 1747
    :cond_29
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "content"

    .line 1748
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 1749
    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, ""

    .line 1750
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, ""

    .line 1751
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 1754
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4d

    .line 1756
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_4d
    const-string v3, "search_suggest_query"

    .line 1760
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1763
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestSelection()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_60

    const/4 v0, 0x1

    .line 1767
    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    move-object v8, v0

    goto :goto_64

    .line 1769
    :cond_60
    invoke-virtual {v2, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-object v8, v1

    :goto_64
    const-string p1, "limit"

    const-string v0, "50"

    .line 1773
    invoke-virtual {v2, p1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1776
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 1779
    iget-object p0, p0, Landroidx/appcompat/widget/z;->e:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :goto_7b
    if-eqz p0, :cond_89

    .line 162
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I
    :try_end_80
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_80} :catch_81

    return-object p0

    :catch_81
    move-exception p0

    const-string p1, "SuggestionsAdapter"

    const-string v0, "Search suggestions query threw an exception."

    .line 166
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_89
    return-object v1

    :cond_8a
    :goto_8a
    return-object v1
.end method

.method public final a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 245
    invoke-super {p0, p1, p2, p3}, Landroidx/c/a/c;->a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 246
    new-instance p2, Landroidx/appcompat/widget/z$a;

    invoke-direct {p2, p1}, Landroidx/appcompat/widget/z$a;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 249
    sget p2, Landroidx/appcompat/R$id;->edit_query:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 250
    iget p0, p0, Landroidx/appcompat/widget/z;->p:I

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p1
.end method

.method public final a(Landroid/database/Cursor;)V
    .registers 3

    .line 218
    iget-boolean v0, p0, Landroidx/appcompat/widget/z;->q:Z

    if-eqz v0, :cond_11

    const-string p0, "SuggestionsAdapter"

    const-string v0, "Tried to change cursor after adapter was closed."

    .line 219
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_10

    .line 220
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_10
    return-void

    .line 225
    :cond_11
    :try_start_11
    invoke-super {p0, p1}, Landroidx/c/a/c;->a(Landroid/database/Cursor;)V

    if-eqz p1, :cond_46

    const-string v0, "suggest_text_1"

    .line 228
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/z;->s:I

    const-string v0, "suggest_text_2"

    .line 229
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/z;->t:I

    const-string v0, "suggest_text_2_url"

    .line 230
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/z;->u:I

    const-string v0, "suggest_icon_1"

    .line 231
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/z;->v:I

    const-string v0, "suggest_icon_2"

    .line 232
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/z;->w:I

    const-string v0, "suggest_flags"

    .line 233
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/z;->x:I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_46} :catch_47

    :cond_46
    return-void

    :catch_47
    move-exception p0

    const-string p1, "SuggestionsAdapter"

    const-string v0, "error changing cursor and caching columns"

    .line 236
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/database/Cursor;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 276
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/z$a;

    .line 279
    iget v3, v0, Landroidx/appcompat/widget/z;->x:I

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_17

    .line 280
    iget v3, v0, Landroidx/appcompat/widget/z;->x:I

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    goto :goto_18

    :cond_17
    move v3, v5

    .line 282
    :goto_18
    iget-object v6, v2, Landroidx/appcompat/widget/z$a;->a:Landroid/widget/TextView;

    if-eqz v6, :cond_27

    .line 283
    iget v6, v0, Landroidx/appcompat/widget/z;->s:I

    invoke-static {v1, v6}, Landroidx/appcompat/widget/z;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v6

    .line 284
    iget-object v7, v2, Landroidx/appcompat/widget/z$a;->a:Landroid/widget/TextView;

    invoke-static {v7, v6}, Landroidx/appcompat/widget/z;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 286
    :cond_27
    iget-object v6, v2, Landroidx/appcompat/widget/z$a;->b:Landroid/widget/TextView;

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v6, :cond_a4

    .line 288
    iget v6, v0, Landroidx/appcompat/widget/z;->u:I

    invoke-static {v1, v6}, Landroidx/appcompat/widget/z;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_76

    .line 2337
    iget-object v9, v0, Landroidx/appcompat/widget/z;->r:Landroid/content/res/ColorStateList;

    if-nez v9, :cond_57

    .line 2339
    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 2340
    iget-object v10, v0, Landroidx/appcompat/widget/z;->e:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    sget v11, Landroidx/appcompat/R$attr;->textColorSearchUrl:I

    invoke-virtual {v10, v11, v9, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2341
    iget-object v10, v0, Landroidx/appcompat/widget/z;->e:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v9, v9, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    iput-object v9, v0, Landroidx/appcompat/widget/z;->r:Landroid/content/res/ColorStateList;

    .line 2344
    :cond_57
    new-instance v9, Landroid/text/SpannableString;

    invoke-direct {v9, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2345
    new-instance v15, Landroid/text/style/TextAppearanceSpan;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, v0, Landroidx/appcompat/widget/z;->r:Landroid/content/res/ColorStateList;

    const/16 v16, 0x0

    move-object v10, v15

    move-object v4, v15

    move-object/from16 v15, v16

    invoke-direct/range {v10 .. v15}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 2346
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/16 v10, 0x21

    .line 2345
    invoke-virtual {v9, v4, v5, v6, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_7c

    .line 292
    :cond_76
    iget v4, v0, Landroidx/appcompat/widget/z;->t:I

    invoke-static {v1, v4}, Landroidx/appcompat/widget/z;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v9

    .line 297
    :goto_7c
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_91

    .line 298
    iget-object v4, v2, Landroidx/appcompat/widget/z$a;->a:Landroid/widget/TextView;

    if-eqz v4, :cond_9f

    .line 299
    iget-object v4, v2, Landroidx/appcompat/widget/z$a;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 300
    iget-object v4, v2, Landroidx/appcompat/widget/z$a;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_9f

    .line 303
    :cond_91
    iget-object v4, v2, Landroidx/appcompat/widget/z$a;->a:Landroid/widget/TextView;

    if-eqz v4, :cond_9f

    .line 304
    iget-object v4, v2, Landroidx/appcompat/widget/z$a;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 305
    iget-object v4, v2, Landroidx/appcompat/widget/z$a;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 308
    :cond_9f
    :goto_9f
    iget-object v4, v2, Landroidx/appcompat/widget/z$a;->b:Landroid/widget/TextView;

    invoke-static {v4, v9}, Landroidx/appcompat/widget/z;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 311
    :cond_a4
    iget-object v4, v2, Landroidx/appcompat/widget/z$a;->c:Landroid/widget/ImageView;

    const/4 v6, 0x0

    if-eqz v4, :cond_10a

    .line 312
    iget-object v4, v2, Landroidx/appcompat/widget/z$a;->c:Landroid/widget/ImageView;

    .line 2363
    iget v9, v0, Landroidx/appcompat/widget/z;->v:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_b2

    move-object v9, v6

    goto :goto_106

    .line 2366
    :cond_b2
    iget v9, v0, Landroidx/appcompat/widget/z;->v:I

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2367
    invoke-direct {v0, v9}, Landroidx/appcompat/widget/z;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_bf

    goto :goto_106

    .line 2607
    :cond_bf
    iget-object v9, v0, Landroidx/appcompat/widget/z;->m:Landroid/app/SearchableInfo;

    invoke-virtual {v9}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v9

    .line 2626
    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    .line 2628
    iget-object v11, v0, Landroidx/appcompat/widget/z;->o:Ljava/util/WeakHashMap;

    invoke-virtual {v11, v10}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e8

    .line 2629
    iget-object v9, v0, Landroidx/appcompat/widget/z;->o:Ljava/util/WeakHashMap;

    invoke-virtual {v9, v10}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/Drawable$ConstantState;

    if-nez v9, :cond_dd

    move-object v9, v6

    goto :goto_f9

    .line 2630
    :cond_dd
    iget-object v10, v0, Landroidx/appcompat/widget/z;->n:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto :goto_f9

    .line 2633
    :cond_e8
    invoke-direct {v0, v9}, Landroidx/appcompat/widget/z;->a(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-nez v9, :cond_f0

    move-object v11, v6

    goto :goto_f4

    .line 2635
    :cond_f0
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v11

    .line 2636
    :goto_f4
    iget-object v12, v0, Landroidx/appcompat/widget/z;->o:Ljava/util/WeakHashMap;

    invoke-virtual {v12, v10, v11}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f9
    if-eqz v9, :cond_fc

    goto :goto_106

    .line 2613
    :cond_fc
    iget-object v9, v0, Landroidx/appcompat/widget/z;->e:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    :goto_106
    const/4 v10, 0x4

    .line 312
    invoke-static {v4, v9, v10}, Landroidx/appcompat/widget/z;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    .line 314
    :cond_10a
    iget-object v4, v2, Landroidx/appcompat/widget/z$a;->d:Landroid/widget/ImageView;

    const/16 v9, 0x8

    if-eqz v4, :cond_125

    .line 315
    iget-object v4, v2, Landroidx/appcompat/widget/z$a;->d:Landroid/widget/ImageView;

    .line 3375
    iget v10, v0, Landroidx/appcompat/widget/z;->w:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_118

    goto :goto_122

    .line 3378
    :cond_118
    iget v6, v0, Landroidx/appcompat/widget/z;->w:I

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3379
    invoke-direct {v0, v1}, Landroidx/appcompat/widget/z;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 315
    :goto_122
    invoke-static {v4, v6, v9}, Landroidx/appcompat/widget/z;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    .line 317
    :cond_125
    iget v1, v0, Landroidx/appcompat/widget/z;->a:I

    if-eq v1, v7, :cond_138

    iget v1, v0, Landroidx/appcompat/widget/z;->a:I

    if-ne v1, v8, :cond_132

    and-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_132

    goto :goto_138

    .line 324
    :cond_132
    iget-object v0, v2, Landroidx/appcompat/widget/z$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 320
    :cond_138
    :goto_138
    iget-object v1, v2, Landroidx/appcompat/widget/z$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 321
    iget-object v1, v2, Landroidx/appcompat/widget/z$a;->e:Landroid/widget/ImageView;

    iget-object v3, v2, Landroidx/appcompat/widget/z$a;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 322
    iget-object v1, v2, Landroidx/appcompat/widget/z$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final b(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    const-string v1, "suggest_intent_query"

    .line 420
    invoke-static {p1, v1}, Landroidx/appcompat/widget/z;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    return-object v1

    .line 425
    :cond_d
    iget-object v1, p0, Landroidx/appcompat/widget/z;->m:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromData()Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, "suggest_intent_data"

    .line 426
    invoke-static {p1, v1}, Landroidx/appcompat/widget/z;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    return-object v1

    .line 432
    :cond_1e
    iget-object p0, p0, Landroidx/appcompat/widget/z;->m:Landroid/app/SearchableInfo;

    invoke-virtual {p0}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromText()Z

    move-result p0

    if-eqz p0, :cond_2f

    const-string p0, "suggest_text_1"

    .line 433
    invoke-static {p1, p0}, Landroidx/appcompat/widget/z;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2f

    return-object p0

    :cond_2f
    return-object v0
.end method

.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 474
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroidx/c/a/c;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception p1

    const-string p2, "SuggestionsAdapter"

    const-string v0, "Search suggestions cursor threw exception."

    .line 476
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    iget-object p2, p0, Landroidx/appcompat/widget/z;->e:Landroid/content/Context;

    iget-object v0, p0, Landroidx/appcompat/widget/z;->d:Landroid/database/Cursor;

    invoke-virtual {p0, p2, v0, p3}, Landroidx/appcompat/widget/z;->b(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 480
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/z$a;

    .line 481
    iget-object p2, p2, Landroidx/appcompat/widget/z$a;->a:Landroid/widget/TextView;

    .line 482
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_26
    return-object p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 451
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroidx/c/a/c;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception p1

    const-string p2, "SuggestionsAdapter"

    const-string v0, "Search suggestions cursor threw exception."

    .line 453
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 455
    iget-object p2, p0, Landroidx/appcompat/widget/z;->e:Landroid/content/Context;

    iget-object v0, p0, Landroidx/appcompat/widget/z;->d:Landroid/database/Cursor;

    invoke-virtual {p0, p2, v0, p3}, Landroidx/appcompat/widget/z;->a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 457
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/z$a;

    .line 458
    iget-object p2, p2, Landroidx/appcompat/widget/z$a;->a:Landroid/widget/TextView;

    .line 459
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_26
    return-object p0
.end method

.method public final hasStableIds()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final notifyDataSetChanged()V
    .registers 1

    .line 182
    invoke-super {p0}, Landroidx/c/a/c;->notifyDataSetChanged()V

    .line 184
    invoke-virtual {p0}, Landroidx/appcompat/widget/z;->a()Landroid/database/Cursor;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/widget/z;->c(Landroid/database/Cursor;)V

    return-void
.end method

.method public final notifyDataSetInvalidated()V
    .registers 1

    .line 190
    invoke-super {p0}, Landroidx/c/a/c;->notifyDataSetInvalidated()V

    .line 192
    invoke-virtual {p0}, Landroidx/appcompat/widget/z;->a()Landroid/database/Cursor;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/widget/z;->c(Landroid/database/Cursor;)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 330
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 331
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_f

    .line 332
    iget-object p0, p0, Landroidx/appcompat/widget/z;->l:Landroidx/appcompat/widget/SearchView;

    check-cast p1, Ljava/lang/CharSequence;

    .line 3973
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    :cond_f
    return-void
.end method
