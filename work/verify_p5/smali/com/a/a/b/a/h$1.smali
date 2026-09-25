.class final Lcom/a/a/b/a/h$1;
.super Ljava/lang/Object;
.source "ObjectTypeAdapter.java"

# interfaces
.implements Lcom/a/a/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/b/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/a/a/e;Lcom/a/a/c/a;)Lcom/a/a/r;
    .locals 0
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

    .line 41
    const-class p2, Ljava/lang/Object;

    if-ne p0, p2, :cond_0

    .line 42
    new-instance p0, Lcom/a/a/b/a/h;

    invoke-direct {p0, p1}, Lcom/a/a/b/a/h;-><init>(Lcom/a/a/e;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
