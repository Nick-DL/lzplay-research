.class final Lcom/a/a/b/a/n$17;
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
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 543
    invoke-direct {p0}, Lcom/a/a/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/a/a/d/a;)Ljava/lang/Object;
    .locals 1

    .line 1546
    invoke-virtual {p1}, Lcom/a/a/d/a;->f()Lcom/a/a/d/b;

    move-result-object p0

    sget-object v0, Lcom/a/a/d/b;->NULL:Lcom/a/a/d/b;

    if-ne p0, v0, :cond_0

    .line 1547
    invoke-virtual {p1}, Lcom/a/a/d/a;->k()V

    const/4 p0, 0x0

    return-object p0

    .line 1550
    :cond_0
    invoke-virtual {p1}, Lcom/a/a/d/a;->i()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic a(Lcom/a/a/d/c;Ljava/lang/Object;)V
    .locals 0

    .line 543
    check-cast p2, Ljava/util/UUID;

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1554
    :cond_0
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/a/a/d/c;->b(Ljava/lang/String;)Lcom/a/a/d/c;

    return-void
.end method
