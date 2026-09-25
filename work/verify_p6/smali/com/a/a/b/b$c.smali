.class final Lcom/a/a/b/b$c;
.super Ljava/lang/Object;
.source "$Gson$Types.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/WildcardType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final lowerBound:Ljava/lang/reflect/Type;

.field private final upperBound:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 3

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    array-length v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/a/a/b/a;->a(Z)V

    .line 562
    array-length v0, p1

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/a/a/b/a;->a(Z)V

    .line 564
    array-length v0, p2

    if-ne v0, v1, :cond_3

    .line 565
    aget-object v0, p2, v2

    invoke-static {v0}, Lcom/a/a/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    aget-object v0, p2, v2

    invoke-static {v0}, Lcom/a/a/b/b;->e(Ljava/lang/reflect/Type;)V

    .line 567
    aget-object p1, p1, v2

    const-class v0, Ljava/lang/Object;

    if-ne p1, v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-static {v1}, Lcom/a/a/b/a;->a(Z)V

    .line 568
    aget-object p1, p2, v2

    invoke-static {p1}, Lcom/a/a/b/b;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/a/a/b/b$c;->lowerBound:Ljava/lang/reflect/Type;

    .line 569
    const-class p1, Ljava/lang/Object;

    iput-object p1, p0, Lcom/a/a/b/b$c;->upperBound:Ljava/lang/reflect/Type;

    return-void

    .line 572
    :cond_3
    aget-object p2, p1, v2

    invoke-static {p2}, Lcom/a/a/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    aget-object p2, p1, v2

    invoke-static {p2}, Lcom/a/a/b/b;->e(Ljava/lang/reflect/Type;)V

    const/4 p2, 0x0

    .line 574
    iput-object p2, p0, Lcom/a/a/b/b$c;->lowerBound:Ljava/lang/reflect/Type;

    .line 575
    aget-object p1, p1, v2

    invoke-static {p1}, Lcom/a/a/b/b;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/a/a/b/b$c;->upperBound:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 588
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/reflect/WildcardType;

    .line 589
    invoke-static {p0, p1}, Lcom/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getLowerBounds()[Ljava/lang/reflect/Type;
    .locals 2

    .line 584
    iget-object v0, p0, Lcom/a/a/b/b$c;->lowerBound:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/a/a/b/b$c;->lowerBound:Ljava/lang/reflect/Type;

    aput-object p0, v0, v1

    return-object v0

    :cond_0
    sget-object p0, Lcom/a/a/b/b;->a:[Ljava/lang/reflect/Type;

    return-object p0
.end method

.method public final getUpperBounds()[Ljava/lang/reflect/Type;
    .locals 2

    const/4 v0, 0x1

    .line 580
    new-array v0, v0, [Ljava/lang/reflect/Type;

    iget-object p0, p0, Lcom/a/a/b/b$c;->upperBound:Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/a/a/b/b$c;->lowerBound:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/b/b$c;->lowerBound:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object p0, p0, Lcom/a/a/b/b$c;->upperBound:Ljava/lang/reflect/Type;

    .line 595
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/a/a/b/b$c;->lowerBound:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "? super "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/a/a/b/b$c;->lowerBound:Ljava/lang/reflect/Type;

    invoke-static {p0}, Lcom/a/a/b/b;->c(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/a/a/b/b$c;->upperBound:Ljava/lang/reflect/Type;

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    const-string p0, "?"

    return-object p0

    .line 604
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "? extends "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/a/a/b/b$c;->upperBound:Ljava/lang/reflect/Type;

    invoke-static {p0}, Lcom/a/a/b/b;->c(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
