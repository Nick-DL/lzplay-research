.class final Lcom/a/a/b/a/n$20;
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
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 593
    invoke-direct {p0}, Lcom/a/a/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/a/a/d/a;)Ljava/lang/Object;
    .locals 8

    .line 1603
    invoke-virtual {p1}, Lcom/a/a/d/a;->f()Lcom/a/a/d/b;

    move-result-object p0

    sget-object v0, Lcom/a/a/d/b;->NULL:Lcom/a/a/d/b;

    if-ne p0, v0, :cond_0

    .line 1604
    invoke-virtual {p1}, Lcom/a/a/d/a;->k()V

    const/4 p0, 0x0

    return-object p0

    .line 1607
    :cond_0
    invoke-virtual {p1}, Lcom/a/a/d/a;->c()V

    const/4 p0, 0x0

    move v1, p0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    .line 1614
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/a/a/d/a;->f()Lcom/a/a/d/b;

    move-result-object p0

    sget-object v0, Lcom/a/a/d/b;->END_OBJECT:Lcom/a/a/d/b;

    if-eq p0, v0, :cond_7

    .line 1615
    invoke-virtual {p1}, Lcom/a/a/d/a;->h()Ljava/lang/String;

    move-result-object p0

    .line 1616
    invoke-virtual {p1}, Lcom/a/a/d/a;->n()I

    move-result v0

    const-string v7, "year"

    .line 1617
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    const-string v7, "month"

    .line 1619
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    const-string v7, "dayOfMonth"

    .line 1621
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v3, v0

    goto :goto_0

    :cond_4
    const-string v7, "hourOfDay"

    .line 1623
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v4, v0

    goto :goto_0

    :cond_5
    const-string v7, "minute"

    .line 1625
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v5, v0

    goto :goto_0

    :cond_6
    const-string v7, "second"

    .line 1627
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v6, v0

    goto :goto_0

    .line 1631
    :cond_7
    invoke-virtual {p1}, Lcom/a/a/d/a;->d()V

    .line 1632
    new-instance p0, Ljava/util/GregorianCalendar;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    return-object p0
.end method

.method public final synthetic a(Lcom/a/a/d/c;Ljava/lang/Object;)V
    .locals 2

    .line 593
    check-cast p2, Ljava/util/Calendar;

    if-nez p2, :cond_0

    .line 1638
    invoke-virtual {p1}, Lcom/a/a/d/c;->e()Lcom/a/a/d/c;

    return-void

    .line 1641
    :cond_0
    invoke-virtual {p1}, Lcom/a/a/d/c;->c()Lcom/a/a/d/c;

    const-string p0, "year"

    .line 1642
    invoke-virtual {p1, p0}, Lcom/a/a/d/c;->a(Ljava/lang/String;)Lcom/a/a/d/c;

    const/4 p0, 0x1

    .line 1643
    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/d/c;->a(J)Lcom/a/a/d/c;

    const-string p0, "month"

    .line 1644
    invoke-virtual {p1, p0}, Lcom/a/a/d/c;->a(Ljava/lang/String;)Lcom/a/a/d/c;

    const/4 p0, 0x2

    .line 1645
    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/d/c;->a(J)Lcom/a/a/d/c;

    const-string p0, "dayOfMonth"

    .line 1646
    invoke-virtual {p1, p0}, Lcom/a/a/d/c;->a(Ljava/lang/String;)Lcom/a/a/d/c;

    const/4 p0, 0x5

    .line 1647
    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/d/c;->a(J)Lcom/a/a/d/c;

    const-string p0, "hourOfDay"

    .line 1648
    invoke-virtual {p1, p0}, Lcom/a/a/d/c;->a(Ljava/lang/String;)Lcom/a/a/d/c;

    const/16 p0, 0xb

    .line 1649
    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/d/c;->a(J)Lcom/a/a/d/c;

    const-string p0, "minute"

    .line 1650
    invoke-virtual {p1, p0}, Lcom/a/a/d/c;->a(Ljava/lang/String;)Lcom/a/a/d/c;

    const/16 p0, 0xc

    .line 1651
    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/d/c;->a(J)Lcom/a/a/d/c;

    const-string p0, "second"

    .line 1652
    invoke-virtual {p1, p0}, Lcom/a/a/d/c;->a(Ljava/lang/String;)Lcom/a/a/d/c;

    const/16 p0, 0xd

    .line 1653
    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/d/c;->a(J)Lcom/a/a/d/c;

    .line 1654
    invoke-virtual {p1}, Lcom/a/a/d/c;->d()Lcom/a/a/d/c;

    return-void
.end method
