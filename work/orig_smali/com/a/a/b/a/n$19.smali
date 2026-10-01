.class final Lcom/a/a/b/a/n$19;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lcom/a/a/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/b/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 572
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

    .line 1094
    iget-object p2, p2, Lcom/a/a/c/a;->a:Ljava/lang/Class;

    .line 575
    const-class v0, Ljava/sql/Timestamp;

    if-eq p2, v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 579
    :cond_8
    const-class p2, Ljava/util/Date;

    invoke-virtual {p1, p2}, Lcom/a/a/e;->a(Ljava/lang/Class;)Lcom/a/a/r;

    move-result-object p1

    .line 580
    new-instance p2, Lcom/a/a/b/a/n$19$1;

    invoke-direct {p2, p0, p1}, Lcom/a/a/b/a/n$19$1;-><init>(Lcom/a/a/b/a/n$19;Lcom/a/a/r;)V

    return-object p2
.end method
