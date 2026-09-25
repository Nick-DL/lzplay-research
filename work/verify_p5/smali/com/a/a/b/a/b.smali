.class public final Lcom/a/a/b/a/b;
.super Ljava/lang/Object;
.source "CollectionTypeAdapterFactory.java"

# interfaces
.implements Lcom/a/a/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/b/a/b$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/b/c;


# direct methods
.method public constructor <init>(Lcom/a/a/b/c;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/a/a/b/a/b;->a:Lcom/a/a/b/c;

    return-void
.end method


# virtual methods
.method public final a(Lcom/a/a/e;Lcom/a/a/c/a;)Lcom/a/a/r;
    .locals 3
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
    iget-object v0, p2, Lcom/a/a/c/a;->b:Ljava/lang/reflect/Type;

    .line 2094
    iget-object v1, p2, Lcom/a/a/c/a;->a:Ljava/lang/Class;

    .line 48
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_0
    invoke-static {v0, v1}, Lcom/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/a/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/a/a/c/a;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/a/a/e;->a(Lcom/a/a/c/a;)Lcom/a/a/r;

    move-result-object v1

    .line 54
    iget-object p0, p0, Lcom/a/a/b/a/b;->a:Lcom/a/a/b/c;

    invoke-virtual {p0, p2}, Lcom/a/a/b/c;->a(Lcom/a/a/c/a;)Lcom/a/a/b/i;

    move-result-object p0

    .line 57
    new-instance p2, Lcom/a/a/b/a/b$a;

    invoke-direct {p2, p1, v0, v1, p0}, Lcom/a/a/b/a/b$a;-><init>(Lcom/a/a/e;Ljava/lang/reflect/Type;Lcom/a/a/r;Lcom/a/a/b/i;)V

    return-object p2
.end method
