.class final Lcom/a/a/b/a/m;
.super Lcom/a/a/r;
.source "TypeAdapterRuntimeTypeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/r<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/e;

.field private final b:Lcom/a/a/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/r<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/a/a/e;Lcom/a/a/r;Ljava/lang/reflect/Type;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/e;",
            "Lcom/a/a/r<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lcom/a/a/r;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/a/a/b/a/m;->a:Lcom/a/a/e;

    .line 35
    iput-object p2, p0, Lcom/a/a/b/a/m;->b:Lcom/a/a/r;

    .line 36
    iput-object p3, p0, Lcom/a/a/b/a/m;->c:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final a(Lcom/a/a/d/a;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/a;",
            ")TT;"
        }
    .end annotation

    .line 41
    iget-object p0, p0, Lcom/a/a/b/a/m;->b:Lcom/a/a/r;

    invoke-virtual {p0, p1}, Lcom/a/a/r;->a(Lcom/a/a/d/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lcom/a/a/d/c;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/c;",
            "TT;)V"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/a/a/b/a/m;->b:Lcom/a/a/r;

    .line 54
    iget-object v1, p0, Lcom/a/a/b/a/m;->c:Ljava/lang/reflect/Type;

    if-eqz p2, :cond_16

    .line 1076
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_12

    instance-of v2, v1, Ljava/lang/reflect/TypeVariable;

    if-nez v2, :cond_12

    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_16

    .line 1078
    :cond_12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 55
    :cond_16
    iget-object v2, p0, Lcom/a/a/b/a/m;->c:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_30

    .line 56
    iget-object v0, p0, Lcom/a/a/b/a/m;->a:Lcom/a/a/e;

    invoke-static {v1}, Lcom/a/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/a/a/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/e;->a(Lcom/a/a/c/a;)Lcom/a/a/r;

    move-result-object v0

    .line 57
    instance-of v1, v0, Lcom/a/a/b/a/i$a;

    if-eqz v1, :cond_30

    .line 60
    iget-object v1, p0, Lcom/a/a/b/a/m;->b:Lcom/a/a/r;

    instance-of v1, v1, Lcom/a/a/b/a/i$a;

    if-nez v1, :cond_30

    .line 63
    iget-object v0, p0, Lcom/a/a/b/a/m;->b:Lcom/a/a/r;

    .line 69
    :cond_30
    invoke-virtual {v0, p1, p2}, Lcom/a/a/r;->a(Lcom/a/a/d/c;Ljava/lang/Object;)V

    return-void
.end method
