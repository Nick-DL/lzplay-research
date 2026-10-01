.class Landroidx/appcompat/widget/c;
.super Landroid/database/DataSetObservable;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/c$e;,
        Landroidx/appcompat/widget/c$a;,
        Landroidx/appcompat/widget/c$c;,
        Landroidx/appcompat/widget/c$d;,
        Landroidx/appcompat/widget/c$b;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "c"

.field private static final g:Ljava/lang/Object;

.field private static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/appcompat/widget/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final b:Ljava/lang/Object;

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/appcompat/widget/c$a;",
            ">;"
        }
    .end annotation
.end field

.field final d:Landroid/content/Context;

.field final e:Ljava/lang/String;

.field f:Z

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/appcompat/widget/c$c;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/content/Intent;

.field private k:Landroidx/appcompat/widget/c$b;

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Landroidx/appcompat/widget/c$d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 218
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/c;->g:Ljava/lang/Object;

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/c;->h:Ljava/util/Map;

    return-void
.end method

.method private e()V
    .registers 7

    .line 566
    iget-boolean v0, p0, Landroidx/appcompat/widget/c;->m:Z

    if-eqz v0, :cond_30

    .line 569
    iget-boolean v0, p0, Landroidx/appcompat/widget/c;->n:Z

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 572
    iput-boolean v0, p0, Landroidx/appcompat/widget/c;->n:Z

    .line 573
    iget-object v1, p0, Landroidx/appcompat/widget/c;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 574
    new-instance v1, Landroidx/appcompat/widget/c$e;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/c$e;-><init>(Landroidx/appcompat/widget/c;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Landroidx/appcompat/widget/c;->i:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget-object p0, p0, Landroidx/appcompat/widget/c;->e:Ljava/lang/String;

    aput-object p0, v3, v0

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/c$e;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2f
    return-void

    .line 567
    :cond_30
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No preceding call to #readHistoricalData"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private f()Z
    .registers 2

    .line 671
    iget-object v0, p0, Landroidx/appcompat/widget/c;->k:Landroidx/appcompat/widget/c$b;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroidx/appcompat/widget/c;->j:Landroid/content/Intent;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroidx/appcompat/widget/c;->c:Ljava/util/List;

    .line 672
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Landroidx/appcompat/widget/c;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 673
    iget-object p0, p0, Landroidx/appcompat/widget/c;->i:Ljava/util/List;

    .line 674
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 p0, 0x1

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method private g()Z
    .registers 7

    .line 687
    iget-boolean v0, p0, Landroidx/appcompat/widget/c;->o:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroidx/appcompat/widget/c;->j:Landroid/content/Intent;

    if-eqz v0, :cond_37

    .line 688
    iput-boolean v1, p0, Landroidx/appcompat/widget/c;->o:Z

    .line 689
    iget-object v0, p0, Landroidx/appcompat/widget/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 690
    iget-object v0, p0, Landroidx/appcompat/widget/c;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Landroidx/appcompat/widget/c;->j:Landroid/content/Intent;

    .line 691
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 692
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_20
    if-ge v1, v2, :cond_35

    .line 694
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 695
    iget-object v4, p0, Landroidx/appcompat/widget/c;->c:Ljava/util/List;

    new-instance v5, Landroidx/appcompat/widget/c$a;

    invoke-direct {v5, v3}, Landroidx/appcompat/widget/c$a;-><init>(Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_35
    const/4 p0, 0x1

    return p0

    :cond_37
    return v1
.end method

.method private h()Z
    .registers 3

    .line 710
    iget-boolean v0, p0, Landroidx/appcompat/widget/c;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Landroidx/appcompat/widget/c;->n:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroidx/appcompat/widget/c;->e:Ljava/lang/String;

    .line 711
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 712
    iput-boolean v1, p0, Landroidx/appcompat/widget/c;->f:Z

    const/4 v0, 0x1

    .line 713
    iput-boolean v0, p0, Landroidx/appcompat/widget/c;->m:Z

    .line 714
    invoke-direct {p0}, Landroidx/appcompat/widget/c;->j()V

    return v0

    :cond_1a
    return v1
.end method

.method private i()V
    .registers 5

    .line 742
    iget-object v0, p0, Landroidx/appcompat/widget/c;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/c;->l:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_c

    return-void

    :cond_c
    const/4 v1, 0x1

    .line 746
    iput-boolean v1, p0, Landroidx/appcompat/widget/c;->n:Z

    const/4 v1, 0x0

    move v2, v1

    :goto_11
    if-ge v2, v0, :cond_1b

    .line 748
    iget-object v3, p0, Landroidx/appcompat/widget/c;->i:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1b
    return-void
.end method

.method private j()V
    .registers 10

    .line 966
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/c;->d:Landroid/content/Context;

    iget-object v1, p0, Landroidx/appcompat/widget/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_8} :catch_c1

    .line 974
    :try_start_8
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    const-string v2, "UTF-8"

    .line 975
    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_12
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1d

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1d

    .line 979
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_12

    :cond_1d
    const-string v2, "historical-records"

    .line 982
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 987
    iget-object v2, p0, Landroidx/appcompat/widget/c;->i:Ljava/util/List;

    .line 988
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 991
    :cond_2e
    :goto_2e
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    if-eq v4, v3, :cond_72

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2e

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2e

    .line 998
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "historical-record"

    .line 999
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    const-string v4, "activity"

    const/4 v5, 0x0

    .line 1003
    invoke-interface {v1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "time"

    .line 1005
    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v8, "weight"

    .line 1007
    invoke-interface {v1, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 1008
    new-instance v8, Landroidx/appcompat/widget/c$c;

    invoke-direct {v8, v4, v6, v7, v5}, Landroidx/appcompat/widget/c$c;-><init>(Ljava/lang/String;JF)V

    .line 1009
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 1000
    :cond_6a
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Share records file not well-formed."

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_72
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_72} :catch_9e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_72} :catch_82
    .catchall {:try_start_8 .. :try_end_72} :catchall_80

    :cond_72
    if-eqz v0, :cond_ba

    .line 1026
    :try_start_74
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_77

    :catch_77
    return-void

    .line 983
    :cond_78
    :try_start_78
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Share records file does not start with historical-records tag."

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_80
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_78 .. :try_end_80} :catch_9e
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_80} :catch_82
    .catchall {:try_start_78 .. :try_end_80} :catchall_80

    :catchall_80
    move-exception p0

    goto :goto_bb

    :catch_82
    move-exception v1

    .line 1022
    :try_start_83
    sget-object v2, Landroidx/appcompat/widget/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error reading historical recrod file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/appcompat/widget/c;->e:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_98
    .catchall {:try_start_83 .. :try_end_98} :catchall_80

    if-eqz v0, :cond_ba

    .line 1026
    :try_start_9a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9d

    :catch_9d
    return-void

    :catch_9e
    move-exception v1

    .line 1020
    :try_start_9f
    sget-object v2, Landroidx/appcompat/widget/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error reading historical recrod file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/appcompat/widget/c;->e:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b4
    .catchall {:try_start_9f .. :try_end_b4} :catchall_80

    if-eqz v0, :cond_ba

    .line 1026
    :try_start_b6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_b9

    :catch_b9
    return-void

    :cond_ba
    return-void

    :goto_bb
    if-eqz v0, :cond_c0

    :try_start_bd
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_c0

    .line 1031
    :catch_c0
    :cond_c0
    throw p0

    :catch_c1
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .line 395
    iget-object v0, p0, Landroidx/appcompat/widget/c;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 396
    :try_start_3
    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->d()V

    .line 397
    iget-object p0, p0, Landroidx/appcompat/widget/c;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_e
    move-exception p0

    .line 398
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final a(Landroid/content/pm/ResolveInfo;)I
    .registers 6

    .line 424
    iget-object v0, p0, Landroidx/appcompat/widget/c;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 425
    :try_start_3
    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->d()V

    .line 426
    iget-object p0, p0, Landroidx/appcompat/widget/c;->c:Ljava/util/List;

    .line 427
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_1e

    .line 429
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/c$a;

    .line 430
    iget-object v3, v3, Landroidx/appcompat/widget/c$a;->a:Landroid/content/pm/ResolveInfo;

    if-ne v3, p1, :cond_1b

    .line 431
    monitor-exit v0

    return v2

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1e
    const/4 p0, -0x1

    .line 434
    monitor-exit v0

    return p0

    :catchall_21
    move-exception p0

    .line 435
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public final a(I)Landroid/content/pm/ResolveInfo;
    .registers 3

    .line 410
    iget-object v0, p0, Landroidx/appcompat/widget/c;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 411
    :try_start_3
    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->d()V

    .line 412
    iget-object p0, p0, Landroidx/appcompat/widget/c;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/c$a;

    iget-object p0, p0, Landroidx/appcompat/widget/c$a;->a:Landroid/content/pm/ResolveInfo;

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 413
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method final a(Landroidx/appcompat/widget/c$c;)Z
    .registers 3

    .line 727
    iget-object v0, p0, Landroidx/appcompat/widget/c;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    .line 729
    iput-boolean v0, p0, Landroidx/appcompat/widget/c;->n:Z

    .line 730
    invoke-direct {p0}, Landroidx/appcompat/widget/c;->i()V

    .line 731
    invoke-direct {p0}, Landroidx/appcompat/widget/c;->e()V

    .line 732
    invoke-direct {p0}, Landroidx/appcompat/widget/c;->f()Z

    .line 733
    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->notifyChanged()V

    :cond_17
    return p1
.end method

.method public final b(I)Landroid/content/Intent;
    .registers 8

    .line 457
    iget-object v0, p0, Landroidx/appcompat/widget/c;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 458
    :try_start_3
    iget-object v1, p0, Landroidx/appcompat/widget/c;->j:Landroid/content/Intent;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 459
    monitor-exit v0

    return-object v2

    .line 462
    :cond_a
    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->d()V

    .line 464
    iget-object v1, p0, Landroidx/appcompat/widget/c;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/c$a;

    .line 466
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, p1, Landroidx/appcompat/widget/c$a;->a:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroidx/appcompat/widget/c$a;->a:Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v3, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    new-instance p1, Landroid/content/Intent;

    iget-object v3, p0, Landroidx/appcompat/widget/c;->j:Landroid/content/Intent;

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 471
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 473
    iget-object v3, p0, Landroidx/appcompat/widget/c;->p:Landroidx/appcompat/widget/c$d;

    if-eqz v3, :cond_43

    .line 475
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 476
    iget-object v3, p0, Landroidx/appcompat/widget/c;->p:Landroidx/appcompat/widget/c$d;

    invoke-interface {v3}, Landroidx/appcompat/widget/c$d;->a()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 479
    monitor-exit v0

    return-object v2

    .line 483
    :cond_43
    new-instance v2, Landroidx/appcompat/widget/c$c;

    .line 484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v3, v4, v5}, Landroidx/appcompat/widget/c$c;-><init>(Landroid/content/ComponentName;JF)V

    .line 485
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/c;->a(Landroidx/appcompat/widget/c$c;)Z

    .line 487
    monitor-exit v0

    return-object p1

    :catchall_53
    move-exception p0

    .line 488
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_53

    throw p0
.end method

.method public final b()Landroid/content/pm/ResolveInfo;
    .registers 3

    .line 512
    iget-object v0, p0, Landroidx/appcompat/widget/c;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 513
    :try_start_3
    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->d()V

    .line 514
    iget-object v1, p0, Landroidx/appcompat/widget/c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 515
    iget-object p0, p0, Landroidx/appcompat/widget/c;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/c$a;

    iget-object p0, p0, Landroidx/appcompat/widget/c$a;->a:Landroid/content/pm/ResolveInfo;

    monitor-exit v0

    return-object p0

    .line 517
    :cond_1b
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public final c()I
    .registers 2

    .line 641
    iget-object v0, p0, Landroidx/appcompat/widget/c;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 642
    :try_start_3
    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->d()V

    .line 643
    iget-object p0, p0, Landroidx/appcompat/widget/c;->i:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_e
    move-exception p0

    .line 644
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method final d()V
    .registers 3

    .line 654
    invoke-direct {p0}, Landroidx/appcompat/widget/c;->g()Z

    move-result v0

    .line 655
    invoke-direct {p0}, Landroidx/appcompat/widget/c;->h()Z

    move-result v1

    or-int/2addr v0, v1

    .line 656
    invoke-direct {p0}, Landroidx/appcompat/widget/c;->i()V

    if-eqz v0, :cond_14

    .line 658
    invoke-direct {p0}, Landroidx/appcompat/widget/c;->f()Z

    .line 659
    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->notifyChanged()V

    :cond_14
    return-void
.end method

.method public setOnChooseActivityListener(Landroidx/appcompat/widget/c$d;)V
    .registers 3

    .line 497
    iget-object v0, p0, Landroidx/appcompat/widget/c;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 498
    :try_start_3
    iput-object p1, p0, Landroidx/appcompat/widget/c;->p:Landroidx/appcompat/widget/c$d;

    .line 499
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method
