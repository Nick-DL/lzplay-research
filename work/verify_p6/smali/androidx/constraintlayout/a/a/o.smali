.class public Landroidx/constraintlayout/a/a/o;
.super Ljava/lang/Object;
.source "ResolutionNode.java"


# instance fields
.field h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroidx/constraintlayout/a/a/o;",
            ">;"
        }
    .end annotation
.end field

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Landroidx/constraintlayout/a/a/o;->h:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Landroidx/constraintlayout/a/a/o;->i:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/a/o;)V
    .locals 0

    .line 38
    iget-object p0, p0, Landroidx/constraintlayout/a/a/o;->h:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Landroidx/constraintlayout/a/a/o;->i:I

    .line 43
    iget-object p0, p0, Landroidx/constraintlayout/a/a/o;->h:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Landroidx/constraintlayout/a/a/o;->i:I

    .line 48
    iget-object p0, p0, Landroidx/constraintlayout/a/a/o;->h:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/a/a/o;

    .line 49
    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/o;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    .line 63
    iput v0, p0, Landroidx/constraintlayout/a/a/o;->i:I

    .line 70
    iget-object p0, p0, Landroidx/constraintlayout/a/a/o;->h:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/a/a/o;

    .line 71
    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/o;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 1

    .line 76
    iget p0, p0, Landroidx/constraintlayout/a/a/o;->i:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
