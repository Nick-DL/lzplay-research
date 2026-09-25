.class final Lcom/a/a/e$a;
.super Lcom/a/a/r;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
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
.field a:Lcom/a/a/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/r<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 997
    invoke-direct {p0}, Lcom/a/a/r;-><init>()V

    return-void
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

    .line 1008
    iget-object v0, p0, Lcom/a/a/e$a;->a:Lcom/a/a/r;

    if-eqz v0, :cond_0

    .line 1011
    iget-object p0, p0, Lcom/a/a/e$a;->a:Lcom/a/a/r;

    invoke-virtual {p0, p1}, Lcom/a/a/r;->a(Lcom/a/a/d/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1009
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
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

    .line 1015
    iget-object v0, p0, Lcom/a/a/e$a;->a:Lcom/a/a/r;

    if-eqz v0, :cond_0

    .line 1018
    iget-object p0, p0, Lcom/a/a/e$a;->a:Lcom/a/a/r;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/r;->a(Lcom/a/a/d/c;Ljava/lang/Object;)V

    return-void

    .line 1016
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
