.class final Lcom/a/a/b/a/n$22;
.super Lcom/a/a/r;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/b/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/r<",
        "Lcom/a/a/i;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 698
    invoke-direct {p0}, Lcom/a/a/r;-><init>()V

    return-void
.end method

.method private a(Lcom/a/a/d/c;Lcom/a/a/i;)V
    .locals 2

    if-eqz p2, :cond_a

    .line 1075
    instance-of v0, p2, Lcom/a/a/k;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2065
    :cond_0
    instance-of v0, p2, Lcom/a/a/n;

    if-eqz v0, :cond_3

    .line 740
    invoke-virtual {p2}, Lcom/a/a/i;->g()Lcom/a/a/n;

    move-result-object p0

    .line 2150
    iget-object p2, p0, Lcom/a/a/n;->a:Ljava/lang/Object;

    instance-of p2, p2, Ljava/lang/Number;

    if-eqz p2, :cond_1

    .line 742
    invoke-virtual {p0}, Lcom/a/a/n;->a()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/a/a/d/c;->a(Ljava/lang/Number;)Lcom/a/a/d/c;

    return-void

    .line 3116
    :cond_1
    iget-object p2, p0, Lcom/a/a/n;->a:Ljava/lang/Object;

    instance-of p2, p2, Ljava/lang/Boolean;

    if-eqz p2, :cond_2

    .line 744
    invoke-virtual {p0}, Lcom/a/a/n;->f()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/a/a/d/c;->a(Z)Lcom/a/a/d/c;

    return-void

    .line 746
    :cond_2
    invoke-virtual {p0}, Lcom/a/a/n;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/a/a/d/c;->b(Ljava/lang/String;)Lcom/a/a/d/c;

    return-void

    .line 4047
    :cond_3
    instance-of v0, p2, Lcom/a/a/g;

    if-eqz v0, :cond_6

    .line 750
    invoke-virtual {p1}, Lcom/a/a/d/c;->a()Lcom/a/a/d/c;

    if-eqz v0, :cond_5

    .line 4105
    check-cast p2, Lcom/a/a/g;

    .line 751
    invoke-virtual {p2}, Lcom/a/a/g;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/i;

    .line 752
    invoke-direct {p0, p1, v0}, Lcom/a/a/b/a/n$22;->a(Lcom/a/a/d/c;Lcom/a/a/i;)V

    goto :goto_0

    .line 754
    :cond_4
    invoke-virtual {p1}, Lcom/a/a/d/c;->b()Lcom/a/a/d/c;

    return-void

    .line 4107
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Not a JSON Array: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5056
    :cond_6
    instance-of v0, p2, Lcom/a/a/l;

    if-eqz v0, :cond_9

    .line 757
    invoke-virtual {p1}, Lcom/a/a/d/c;->c()Lcom/a/a/d/c;

    if-eqz v0, :cond_8

    .line 5089
    check-cast p2, Lcom/a/a/l;

    .line 6136
    iget-object p2, p2, Lcom/a/a/l;->a:Lcom/a/a/b/h;

    invoke-virtual {p2}, Lcom/a/a/b/h;->entrySet()Ljava/util/Set;

    move-result-object p2

    .line 758
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 759
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/a/a/d/c;->a(Ljava/lang/String;)Lcom/a/a/d/c;

    .line 760
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/i;

    invoke-direct {p0, p1, v0}, Lcom/a/a/b/a/n$22;->a(Lcom/a/a/d/c;Lcom/a/a/i;)V

    goto :goto_1

    .line 762
    :cond_7
    invoke-virtual {p1}, Lcom/a/a/d/c;->d()Lcom/a/a/d/c;

    return-void

    .line 5091
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Not a JSON Object: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 765
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Couldn\'t write "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 738
    :cond_a
    :goto_2
    invoke-virtual {p1}, Lcom/a/a/d/c;->e()Lcom/a/a/d/c;

    return-void
.end method

.method private b(Lcom/a/a/d/a;)Lcom/a/a/i;
    .locals 3

    .line 700
    sget-object v0, Lcom/a/a/b/a/n$29;->a:[I

    invoke-virtual {p1}, Lcom/a/a/d/a;->f()Lcom/a/a/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/d/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 732
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 720
    :pswitch_0
    new-instance v0, Lcom/a/a/l;

    invoke-direct {v0}, Lcom/a/a/l;-><init>()V

    .line 721
    invoke-virtual {p1}, Lcom/a/a/d/a;->c()V

    .line 722
    :goto_0
    invoke-virtual {p1}, Lcom/a/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 723
    invoke-virtual {p1}, Lcom/a/a/d/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/a/a/b/a/n$22;->b(Lcom/a/a/d/a;)Lcom/a/a/i;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/a/l;->a(Ljava/lang/String;Lcom/a/a/i;)V

    goto :goto_0

    .line 725
    :cond_0
    invoke-virtual {p1}, Lcom/a/a/d/a;->d()V

    return-object v0

    .line 712
    :pswitch_1
    new-instance v0, Lcom/a/a/g;

    invoke-direct {v0}, Lcom/a/a/g;-><init>()V

    .line 713
    invoke-virtual {p1}, Lcom/a/a/d/a;->a()V

    .line 714
    :goto_1
    invoke-virtual {p1}, Lcom/a/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 715
    invoke-direct {p0, p1}, Lcom/a/a/b/a/n$22;->b(Lcom/a/a/d/a;)Lcom/a/a/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/g;->a(Lcom/a/a/i;)V

    goto :goto_1

    .line 717
    :cond_1
    invoke-virtual {p1}, Lcom/a/a/d/a;->b()V

    return-object v0

    .line 709
    :pswitch_2
    invoke-virtual {p1}, Lcom/a/a/d/a;->k()V

    .line 710
    sget-object p0, Lcom/a/a/k;->a:Lcom/a/a/k;

    return-object p0

    .line 702
    :pswitch_3
    new-instance p0, Lcom/a/a/n;

    invoke-virtual {p1}, Lcom/a/a/d/a;->i()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/a/a/n;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 707
    :pswitch_4
    new-instance p0, Lcom/a/a/n;

    invoke-virtual {p1}, Lcom/a/a/d/a;->j()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/a/a/n;-><init>(Ljava/lang/Boolean;)V

    return-object p0

    .line 704
    :pswitch_5
    invoke-virtual {p1}, Lcom/a/a/d/a;->i()Ljava/lang/String;

    move-result-object p0

    .line 705
    new-instance p1, Lcom/a/a/n;

    new-instance v0, Lcom/a/a/b/g;

    invoke-direct {v0, p0}, Lcom/a/a/b/g;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/a/a/n;-><init>(Ljava/lang/Number;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final synthetic a(Lcom/a/a/d/a;)Ljava/lang/Object;
    .locals 0

    .line 698
    invoke-direct {p0, p1}, Lcom/a/a/b/a/n$22;->b(Lcom/a/a/d/a;)Lcom/a/a/i;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a(Lcom/a/a/d/c;Ljava/lang/Object;)V
    .locals 0

    .line 698
    check-cast p2, Lcom/a/a/i;

    invoke-direct {p0, p1, p2}, Lcom/a/a/b/a/n$22;->a(Lcom/a/a/d/c;Lcom/a/a/i;)V

    return-void
.end method
