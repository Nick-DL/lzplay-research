.class final Lcom/a/a/r$1;
.super Lcom/a/a/r;
.source "TypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/r;->a()Lcom/a/a/r;
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
.field final synthetic a:Lcom/a/a/r;


# direct methods
.method constructor <init>(Lcom/a/a/r;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/a/a/r$1;->a:Lcom/a/a/r;

    invoke-direct {p0}, Lcom/a/a/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/a/a/d/a;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/a;",
            ")TT;"
        }
    .end annotation

    .line 195
    invoke-virtual {p1}, Lcom/a/a/d/a;->f()Lcom/a/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/a/a/d/b;->NULL:Lcom/a/a/d/b;

    if-ne v0, v1, :cond_0

    .line 196
    invoke-virtual {p1}, Lcom/a/a/d/a;->k()V

    const/4 p0, 0x0

    return-object p0

    .line 199
    :cond_0
    iget-object p0, p0, Lcom/a/a/r$1;->a:Lcom/a/a/r;

    invoke-virtual {p0, p1}, Lcom/a/a/r;->a(Lcom/a/a/d/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lcom/a/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/c;",
            "TT;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 189
    invoke-virtual {p1}, Lcom/a/a/d/c;->e()Lcom/a/a/d/c;

    return-void

    .line 191
    :cond_0
    iget-object p0, p0, Lcom/a/a/r$1;->a:Lcom/a/a/r;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/r;->a(Lcom/a/a/d/c;Ljava/lang/Object;)V

    return-void
.end method
