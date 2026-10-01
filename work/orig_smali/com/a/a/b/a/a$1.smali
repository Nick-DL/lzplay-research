.class final Lcom/a/a/b/a/a$1;
.super Ljava/lang/Object;
.source "ArrayTypeAdapter.java"

# interfaces
.implements Lcom/a/a/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/a/a/e;Lcom/a/a/c/a;)Lcom/a/a/r;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/e;",
            "Lcom/a/a/c/a<",
            "TT;>;)",
            "Lcom/a/a/r<",
            "TT;>;"
        }
    .end annotation

    .line 1101
    iget-object p0, p2, Lcom/a/a/c/a;->b:Ljava/lang/reflect/Type;

    .line 43
    instance-of p2, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez p2, :cond_15

    instance-of p2, p0, Ljava/lang/Class;

    if-eqz p2, :cond_13

    move-object p2, p0

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-nez p2, :cond_15

    :cond_13
    const/4 p0, 0x0

    return-object p0

    .line 47
    :cond_15
    invoke-static {p0}, Lcom/a/a/b/b;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 48
    invoke-static {p0}, Lcom/a/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/a/a/c/a;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/a/a/e;->a(Lcom/a/a/c/a;)Lcom/a/a/r;

    move-result-object p2

    .line 49
    new-instance v0, Lcom/a/a/b/a/a;

    .line 50
    invoke-static {p0}, Lcom/a/a/b/b;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p1, p2, p0}, Lcom/a/a/b/a/a;-><init>(Lcom/a/a/e;Lcom/a/a/r;Ljava/lang/Class;)V

    return-object v0
.end method
