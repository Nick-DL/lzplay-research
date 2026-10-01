.class public final Landroidx/core/b/b;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/b/b$a;,
        Landroidx/core/b/b$b;,
        Landroidx/core/b/b$c;
    }
.end annotation


# static fields
.field static final a:Landroidx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/e<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Ljava/lang/Object;

.field static final c:Landroidx/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/g<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroidx/core/b/c$a<",
            "Landroidx/core/b/b$c;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final d:Landroidx/core/b/c;

.field private static final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 172
    new-instance v0, Landroidx/b/e;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/b/e;-><init>(I)V

    sput-object v0, Landroidx/core/b/b;->a:Landroidx/b/e;

    .line 175
    new-instance v0, Landroidx/core/b/c;

    const-string v1, "fonts"

    invoke-direct {v0, v1}, Landroidx/core/b/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/core/b/b;->d:Landroidx/core/b/c;

    .line 201
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/b/b;->b:Ljava/lang/Object;

    .line 204
    new-instance v0, Landroidx/b/g;

    invoke-direct {v0}, Landroidx/b/g;-><init>()V

    sput-object v0, Landroidx/core/b/b;->c:Landroidx/b/g;

    .line 784
    new-instance v0, Landroidx/core/b/b$4;

    invoke-direct {v0}, Landroidx/core/b/b$4;-><init>()V

    sput-object v0, Landroidx/core/b/b;->e:Ljava/util/Comparator;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroidx/core/b/a;Landroidx/core/content/a/f$a;ZII)Landroid/graphics/Typeface;
    .registers 9

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7143
    iget-object v1, p1, Landroidx/core/b/a;->f:Ljava/lang/String;

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    sget-object v1, Landroidx/core/b/b;->a:Landroidx/b/e;

    invoke-virtual {v1, v0}, Landroidx/b/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-eqz v1, :cond_26

    if-eqz p2, :cond_25

    .line 236
    invoke-virtual {p2, v1}, Landroidx/core/content/a/f$a;->a(Landroid/graphics/Typeface;)V

    :cond_25
    return-object v1

    :cond_26
    const/4 v1, 0x0

    if-eqz p3, :cond_44

    const/4 v2, -0x1

    if-ne p4, v2, :cond_44

    .line 243
    invoke-static {p0, p1, p5}, Landroidx/core/b/b;->a(Landroid/content/Context;Landroidx/core/b/a;I)Landroidx/core/b/b$c;

    move-result-object p0

    if-eqz p2, :cond_41

    .line 245
    iget p1, p0, Landroidx/core/b/b$c;->b:I

    if-nez p1, :cond_3c

    .line 246
    iget-object p1, p0, Landroidx/core/b/b$c;->a:Landroid/graphics/Typeface;

    invoke-virtual {p2, p1, v1}, Landroidx/core/content/a/f$a;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_41

    .line 248
    :cond_3c
    iget p1, p0, Landroidx/core/b/b$c;->b:I

    invoke-virtual {p2, p1, v1}, Landroidx/core/content/a/f$a;->a(ILandroid/os/Handler;)V

    .line 251
    :cond_41
    :goto_41
    iget-object p0, p0, Landroidx/core/b/b$c;->a:Landroid/graphics/Typeface;

    return-object p0

    .line 254
    :cond_44
    new-instance v2, Landroidx/core/b/b$1;

    invoke-direct {v2, p0, p1, p5, v0}, Landroidx/core/b/b$1;-><init>(Landroid/content/Context;Landroidx/core/b/a;ILjava/lang/String;)V

    if-eqz p3, :cond_57

    .line 267
    :try_start_4b
    sget-object p0, Landroidx/core/b/b;->d:Landroidx/core/b/c;

    invoke-virtual {p0, v2, p4}, Landroidx/core/b/c;->a(Ljava/util/concurrent/Callable;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/core/b/b$c;

    iget-object p0, p0, Landroidx/core/b/b$c;->a:Landroid/graphics/Typeface;
    :try_end_55
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_55} :catch_56

    return-object p0

    :catch_56
    return-object v1

    :cond_57
    if-nez p2, :cond_5b

    move-object p0, v1

    goto :goto_60

    .line 272
    :cond_5b
    new-instance p0, Landroidx/core/b/b$2;

    invoke-direct {p0, p2, v1}, Landroidx/core/b/b$2;-><init>(Landroidx/core/content/a/f$a;Landroid/os/Handler;)V

    .line 287
    :goto_60
    sget-object p1, Landroidx/core/b/b;->b:Ljava/lang/Object;

    monitor-enter p1

    .line 288
    :try_start_63
    sget-object p2, Landroidx/core/b/b;->c:Landroidx/b/g;

    invoke-virtual {p2, v0}, Landroidx/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_74

    if-eqz p0, :cond_72

    .line 293
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_72
    monitor-exit p1

    return-object v1

    :cond_74
    if-eqz p0, :cond_83

    .line 298
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 299
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    sget-object p0, Landroidx/core/b/b;->c:Landroidx/b/g;

    invoke-virtual {p0, v0, p2}, Landroidx/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_83
    monitor-exit p1
    :try_end_84
    .catchall {:try_start_63 .. :try_end_84} :catchall_99

    .line 303
    sget-object p0, Landroidx/core/b/b;->d:Landroidx/core/b/c;

    new-instance p1, Landroidx/core/b/b$3;

    invoke-direct {p1, v0}, Landroidx/core/b/b$3;-><init>(Ljava/lang/String;)V

    .line 8136
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 8137
    new-instance p3, Landroidx/core/b/c$2;

    invoke-direct {p3, p0, v2, p2, p1}, Landroidx/core/b/c$2;-><init>(Landroidx/core/b/c;Ljava/util/concurrent/Callable;Landroid/os/Handler;Landroidx/core/b/c$a;)V

    invoke-virtual {p0, p3}, Landroidx/core/b/c;->a(Ljava/lang/Runnable;)V

    return-object v1

    :catchall_99
    move-exception p0

    .line 302
    :try_start_9a
    monitor-exit p1
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw p0
.end method

.method static a(Landroid/content/Context;Landroidx/core/b/a;I)Landroidx/core/b/b$c;
    .registers 11

    const/4 v0, 0x0

    .line 1728
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2095
    iget-object v3, p1, Landroidx/core/b/a;->a:Ljava/lang/String;

    const/4 v4, 0x0

    .line 1745
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    if-eqz v5, :cond_b0

    .line 1751
    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 2104
    iget-object v7, p1, Landroidx/core/b/a;->b:Ljava/lang/String;

    .line 1751
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_92

    .line 1760
    iget-object v3, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x40

    invoke-virtual {v1, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1762
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v1}, Landroidx/core/b/b;->a([Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v1

    .line 1763
    sget-object v3, Landroidx/core/b/b;->e:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4125
    iget-object v3, p1, Landroidx/core/b/a;->d:Ljava/util/List;

    if-eqz v3, :cond_36

    .line 5125
    iget-object v2, p1, Landroidx/core/b/a;->d:Ljava/util/List;

    goto :goto_3c

    .line 5137
    :cond_36
    iget v3, p1, Landroidx/core/b/a;->e:I

    .line 3781
    invoke-static {v2, v3}, Landroidx/core/content/a/c;->a(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v2

    :goto_3c
    move v3, v4

    .line 1765
    :goto_3d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_5d

    .line 1767
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1768
    sget-object v7, Landroidx/core/b/b;->e:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1769
    invoke-static {v1, v6}, Landroidx/core/b/b;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_5a

    goto :goto_5e

    :cond_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    :cond_5d
    move-object v5, v0

    :goto_5e
    const/4 v1, 0x1

    if-nez v5, :cond_67

    .line 1730
    new-instance p1, Landroidx/core/b/b$a;

    invoke-direct {p1, v1, v0}, Landroidx/core/b/b$a;-><init>(I[Landroidx/core/b/b$b;)V

    goto :goto_73

    .line 1733
    :cond_67
    iget-object v2, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p0, p1, v2}, Landroidx/core/b/b;->a(Landroid/content/Context;Landroidx/core/b/a;Ljava/lang/String;)[Landroidx/core/b/b$b;

    move-result-object p1

    .line 1735
    new-instance v2, Landroidx/core/b/b$a;

    invoke-direct {v2, v4, p1}, Landroidx/core/b/b$a;-><init>(I[Landroidx/core/b/b$b;)V
    :try_end_72
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_72} :catch_c0

    move-object p1, v2

    .line 5433
    :goto_73
    iget v2, p1, Landroidx/core/b/b$a;->a:I

    const/4 v3, -0x3

    if-nez v2, :cond_87

    .line 5437
    iget-object p1, p1, Landroidx/core/b/b$a;->b:[Landroidx/core/b/b$b;

    .line 189
    invoke-static {p0, p1, p2}, Landroidx/core/graphics/c;->a(Landroid/content/Context;[Landroidx/core/b/b$b;I)Landroid/graphics/Typeface;

    move-result-object p0

    .line 191
    new-instance p1, Landroidx/core/b/b$c;

    if-eqz p0, :cond_83

    move v3, v4

    :cond_83
    invoke-direct {p1, p0, v3}, Landroidx/core/b/b$c;-><init>(Landroid/graphics/Typeface;I)V

    return-object p1

    .line 6433
    :cond_87
    iget p0, p1, Landroidx/core/b/b$a;->a:I

    if-ne p0, v1, :cond_8c

    const/4 v3, -0x2

    .line 198
    :cond_8c
    new-instance p0, Landroidx/core/b/b$c;

    invoke-direct {p0, v0, v3}, Landroidx/core/b/b$c;-><init>(Landroid/graphics/Typeface;I)V

    return-object p0

    .line 1752
    :cond_92
    :try_start_92
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Found content provider "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", but package was not "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3104
    iget-object p1, p1, Landroidx/core/b/a;->b:Ljava/lang/String;

    .line 1754
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1747
    :cond_b0
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string p1, "No package found for authority: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_c0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_92 .. :try_end_c0} :catch_c0

    .line 186
    :catch_c0
    new-instance p0, Landroidx/core/b/b$c;

    const/4 p1, -0x1

    invoke-direct {p0, v0, p1}, Landroidx/core/b/b$c;-><init>(Landroid/graphics/Typeface;I)V

    return-object p0
.end method

.method private static a([Landroid/content/pm/Signature;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 813
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 814
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_15

    .line 815
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_15
    return-object v0
.end method

.method public static a(Landroid/content/Context;[Landroidx/core/b/b$b;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Landroidx/core/b/b$b;",
            ")",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 689
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 691
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_21

    aget-object v3, p1, v2

    .line 8388
    iget v4, v3, Landroidx/core/b/b$b;->e:I

    if-nez v4, :cond_1e

    .line 9358
    iget-object v3, v3, Landroidx/core/b/b$b;->a:Landroid/net/Uri;

    .line 697
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 701
    invoke-static {p0, v3}, Landroidx/core/graphics/i;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 702
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 704
    :cond_21
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/List;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/List<",
            "[B>;)Z"
        }
    .end annotation

    .line 801
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    return v2

    :cond_c
    move v0, v2

    .line 804
    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 805
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_26

    return v2

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_29
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Landroid/content/Context;Landroidx/core/b/a;Ljava/lang/String;)[Landroidx/core/b/b$b;
    .registers 24

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 824
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 825
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "content"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 826
    invoke-virtual {v3, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 827
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 828
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    const-string v5, "content"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 829
    invoke-virtual {v4, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v4, "file"

    .line 830
    invoke-virtual {v1, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 831
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v11, 0x0

    .line 834
    :try_start_36
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-le v4, v5, :cond_65

    .line 835
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v14, "_id"

    const-string v15, "file_id"

    const-string v16, "font_ttc_index"

    const-string v17, "font_variation_settings"

    const-string v18, "font_weight"

    const-string v19, "font_italic"

    const-string v20, "result_code"

    filled-new-array/range {v14 .. v20}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "query = ?"

    new-array v8, v12, [Ljava/lang/String;

    .line 10113
    iget-object v0, v0, Landroidx/core/b/a;->c:Ljava/lang/String;

    aput-object v0, v8, v13

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v3

    .line 835
    invoke-virtual/range {v4 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    :goto_63
    move-object v11, v0

    goto :goto_8a

    .line 842
    :cond_65
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v14, "_id"

    const-string v15, "file_id"

    const-string v16, "font_ttc_index"

    const-string v17, "font_variation_settings"

    const-string v18, "font_weight"

    const-string v19, "font_italic"

    const-string v20, "result_code"

    filled-new-array/range {v14 .. v20}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "query = ?"

    new-array v8, v12, [Ljava/lang/String;

    .line 11113
    iget-object v0, v0, Landroidx/core/b/a;->c:Ljava/lang/String;

    aput-object v0, v8, v13

    const/4 v9, 0x0

    move-object v5, v3

    .line 842
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_63

    :goto_8a
    if-eqz v11, :cond_10f

    .line 848
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_10f

    const-string v0, "result_code"

    .line 849
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 850
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "_id"

    .line 851
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "file_id"

    .line 852
    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "font_ttc_index"

    .line 853
    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "font_weight"

    .line 854
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "font_italic"

    .line 855
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 856
    :goto_bb
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_10f

    const/4 v9, -0x1

    if-eq v0, v9, :cond_cb

    .line 858
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move/from16 v19, v10

    goto :goto_cd

    :cond_cb
    move/from16 v19, v13

    :goto_cd
    if-eq v6, v9, :cond_d6

    .line 860
    invoke-interface {v11, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move/from16 v16, v10

    goto :goto_d8

    :cond_d6
    move/from16 v16, v13

    :goto_d8
    if-ne v5, v9, :cond_e4

    .line 863
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 864
    invoke-static {v3, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    :goto_e2
    move-object v15, v10

    goto :goto_ed

    .line 866
    :cond_e4
    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 867
    invoke-static {v1, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    goto :goto_e2

    :goto_ed
    if-eq v7, v9, :cond_f4

    .line 870
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    goto :goto_f6

    :cond_f4
    const/16 v10, 0x190

    :goto_f6
    move/from16 v17, v10

    if-eq v8, v9, :cond_103

    .line 871
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v9, v12, :cond_103

    move/from16 v18, v12

    goto :goto_105

    :cond_103
    move/from16 v18, v13

    .line 873
    :goto_105
    new-instance v9, Landroidx/core/b/b$b;

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Landroidx/core/b/b$b;-><init>(Landroid/net/Uri;IIZI)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10e
    .catchall {:try_start_36 .. :try_end_10e} :catchall_11d

    goto :goto_bb

    :cond_10f
    if-eqz v11, :cond_114

    .line 878
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 881
    :cond_114
    new-array v0, v13, [Landroidx/core/b/b$b;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/core/b/b$b;

    return-object v0

    :catchall_11d
    move-exception v0

    if-eqz v11, :cond_123

    .line 878
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_123
    throw v0
.end method
