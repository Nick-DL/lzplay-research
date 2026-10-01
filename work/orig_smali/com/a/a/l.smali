.class public final Lcom/a/a/l;
.super Lcom/a/a/i;
.source "JsonObject.java"


# instance fields
.field public final a:Lcom/a/a/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/h<",
            "Ljava/lang/String;",
            "Lcom/a/a/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/a/a/i;-><init>()V

    .line 33
    new-instance v0, Lcom/a/a/b/h;

    invoke-direct {v0}, Lcom/a/a/b/h;-><init>()V

    iput-object v0, p0, Lcom/a/a/l;->a:Lcom/a/a/b/h;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/a/a/i;)V
    .registers 3

    if-nez p2, :cond_4

    .line 59
    sget-object p2, Lcom/a/a/k;->a:Lcom/a/a/k;

    .line 61
    :cond_4
    iget-object p0, p0, Lcom/a/a/l;->a:Lcom/a/a/b/h;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/b/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p1, p0, :cond_15

    .line 210
    instance-of v0, p1, Lcom/a/a/l;

    if-eqz v0, :cond_13

    check-cast p1, Lcom/a/a/l;

    iget-object p1, p1, Lcom/a/a/l;->a:Lcom/a/a/b/h;

    iget-object p0, p0, Lcom/a/a/l;->a:Lcom/a/a/b/h;

    .line 211
    invoke-virtual {p1, p0}, Lcom/a/a/b/h;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .registers 1

    .line 216
    iget-object p0, p0, Lcom/a/a/l;->a:Lcom/a/a/b/h;

    invoke-virtual {p0}, Lcom/a/a/b/h;->hashCode()I

    move-result p0

    return p0
.end method
