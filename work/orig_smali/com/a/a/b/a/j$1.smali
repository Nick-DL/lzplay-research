.class final Lcom/a/a/b/a/j$1;
.super Ljava/lang/Object;
.source "SqlDateTypeAdapter.java"

# interfaces
.implements Lcom/a/a/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/b/a/j;
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
    .registers 3
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

    .line 1094
    iget-object p0, p2, Lcom/a/a/c/a;->a:Ljava/lang/Class;

    .line 42
    const-class p1, Ljava/sql/Date;

    if-ne p0, p1, :cond_c

    new-instance p0, Lcom/a/a/b/a/j;

    invoke-direct {p0}, Lcom/a/a/b/a/j;-><init>()V

    return-object p0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method
