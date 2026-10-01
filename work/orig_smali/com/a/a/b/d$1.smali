.class final Lcom/a/a/b/d$1;
.super Lcom/a/a/r;
.source "Excluder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/b/d;->a(Lcom/a/a/e;Lcom/a/a/c/a;)Lcom/a/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/r<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/a/a/e;

.field final synthetic d:Lcom/a/a/c/a;

.field final synthetic e:Lcom/a/a/b/d;

.field private f:Lcom/a/a/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/r<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/a/a/b/d;ZZLcom/a/a/e;Lcom/a/a/c/a;)V
    .registers 6

    .line 122
    iput-object p1, p0, Lcom/a/a/b/d$1;->e:Lcom/a/a/b/d;

    iput-boolean p2, p0, Lcom/a/a/b/d$1;->a:Z

    iput-boolean p3, p0, Lcom/a/a/b/d$1;->b:Z

    iput-object p4, p0, Lcom/a/a/b/d$1;->c:Lcom/a/a/e;

    iput-object p5, p0, Lcom/a/a/b/d$1;->d:Lcom/a/a/c/a;

    invoke-direct {p0}, Lcom/a/a/r;-><init>()V

    return-void
.end method

.method private b()Lcom/a/a/r;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/r<",
            "TT;>;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/a/a/b/d$1;->f:Lcom/a/a/r;

    if-eqz v0, :cond_5

    return-object v0

    .line 144
    :cond_5
    iget-object v0, p0, Lcom/a/a/b/d$1;->c:Lcom/a/a/e;

    iget-object v1, p0, Lcom/a/a/b/d$1;->e:Lcom/a/a/b/d;

    iget-object v2, p0, Lcom/a/a/b/d$1;->d:Lcom/a/a/c/a;

    .line 146
    invoke-virtual {v0, v1, v2}, Lcom/a/a/e;->a(Lcom/a/a/s;Lcom/a/a/c/a;)Lcom/a/a/r;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/d$1;->f:Lcom/a/a/r;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/a/a/d/a;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/a;",
            ")TT;"
        }
    .end annotation

    .line 127
    iget-boolean v0, p0, Lcom/a/a/b/d$1;->a:Z

    if-eqz v0, :cond_9

    .line 128
    invoke-virtual {p1}, Lcom/a/a/d/a;->o()V

    const/4 p0, 0x0

    return-object p0

    .line 131
    :cond_9
    invoke-direct {p0}, Lcom/a/a/b/d$1;->b()Lcom/a/a/r;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/a/a/r;->a(Lcom/a/a/d/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lcom/a/a/d/c;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/c;",
            "TT;)V"
        }
    .end annotation

    .line 135
    iget-boolean v0, p0, Lcom/a/a/b/d$1;->b:Z

    if-eqz v0, :cond_8

    .line 136
    invoke-virtual {p1}, Lcom/a/a/d/c;->e()Lcom/a/a/d/c;

    return-void

    .line 139
    :cond_8
    invoke-direct {p0}, Lcom/a/a/b/d$1;->b()Lcom/a/a/r;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/a/a/r;->a(Lcom/a/a/d/c;Ljava/lang/Object;)V

    return-void
.end method
