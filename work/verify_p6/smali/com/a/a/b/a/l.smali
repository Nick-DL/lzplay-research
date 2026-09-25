.class public final Lcom/a/a/b/a/l;
.super Lcom/a/a/r;
.source "TreeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/b/a/l$a;
    }
.end annotation

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
.field final a:Lcom/a/a/e;

.field private final b:Lcom/a/a/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/a/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/a/a/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/c/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/a/a/s;

.field private final f:Lcom/a/a/b/a/l$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/a/l<",
            "TT;>.a;"
        }
    .end annotation
.end field

.field private g:Lcom/a/a/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/r<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/a/a/o;Lcom/a/a/h;Lcom/a/a/e;Lcom/a/a/c/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/o<",
            "TT;>;",
            "Lcom/a/a/h<",
            "TT;>;",
            "Lcom/a/a/e;",
            "Lcom/a/a/c/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lcom/a/a/r;-><init>()V

    .line 47
    new-instance v0, Lcom/a/a/b/a/l$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/a/a/b/a/l$a;-><init>(Lcom/a/a/b/a/l;B)V

    iput-object v0, p0, Lcom/a/a/b/a/l;->f:Lcom/a/a/b/a/l$a;

    .line 54
    iput-object p1, p0, Lcom/a/a/b/a/l;->b:Lcom/a/a/o;

    .line 55
    iput-object p2, p0, Lcom/a/a/b/a/l;->c:Lcom/a/a/h;

    .line 56
    iput-object p3, p0, Lcom/a/a/b/a/l;->a:Lcom/a/a/e;

    .line 57
    iput-object p4, p0, Lcom/a/a/b/a/l;->d:Lcom/a/a/c/a;

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lcom/a/a/b/a/l;->e:Lcom/a/a/s;

    return-void
.end method

.method private b()Lcom/a/a/r;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/r<",
            "TT;>;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/a/a/b/a/l;->g:Lcom/a/a/r;

    if-eqz v0, :cond_0

    return-object v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/a/a/b/a/l;->a:Lcom/a/a/e;

    iget-object v1, p0, Lcom/a/a/b/a/l;->e:Lcom/a/a/s;

    iget-object v2, p0, Lcom/a/a/b/a/l;->d:Lcom/a/a/c/a;

    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/a/a/e;->a(Lcom/a/a/s;Lcom/a/a/c/a;)Lcom/a/a/r;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/a/l;->g:Lcom/a/a/r;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/a/a/d/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/a;",
            ")TT;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/a/a/b/a/l;->c:Lcom/a/a/h;

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/a/a/b/a/l;->b()Lcom/a/a/r;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/a/a/r;->a(Lcom/a/a/d/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 65
    :cond_0
    invoke-static {p1}, Lcom/a/a/b/k;->a(Lcom/a/a/d/a;)Lcom/a/a/i;

    move-result-object p1

    .line 1075
    instance-of p1, p1, Lcom/a/a/k;

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 69
    :cond_1
    iget-object p0, p0, Lcom/a/a/b/a/l;->c:Lcom/a/a/h;

    invoke-interface {p0}, Lcom/a/a/h;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lcom/a/a/d/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/c;",
            "TT;)V"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/a/a/b/a/l;->b:Lcom/a/a/o;

    if-nez v0, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/a/a/b/a/l;->b()Lcom/a/a/r;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/a/a/r;->a(Lcom/a/a/d/c;Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 78
    invoke-virtual {p1}, Lcom/a/a/d/c;->e()Lcom/a/a/d/c;

    return-void

    .line 81
    :cond_1
    iget-object p0, p0, Lcom/a/a/b/a/l;->b:Lcom/a/a/o;

    invoke-interface {p0}, Lcom/a/a/o;->a()Lcom/a/a/i;

    move-result-object p0

    .line 82
    invoke-static {p0, p1}, Lcom/a/a/b/k;->a(Lcom/a/a/i;Lcom/a/a/d/c;)V

    return-void
.end method
