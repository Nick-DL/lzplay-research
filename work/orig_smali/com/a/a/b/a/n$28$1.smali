.class final Lcom/a/a/b/a/n$28$1;
.super Lcom/a/a/r;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/b/a/n$28;->a(Lcom/a/a/e;Lcom/a/a/c/a;)Lcom/a/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/r<",
        "TT1;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Lcom/a/a/b/a/n$28;


# direct methods
.method constructor <init>(Lcom/a/a/b/a/n$28;Ljava/lang/Class;)V
    .registers 3

    .line 888
    iput-object p1, p0, Lcom/a/a/b/a/n$28$1;->b:Lcom/a/a/b/a/n$28;

    iput-object p2, p0, Lcom/a/a/b/a/n$28$1;->a:Ljava/lang/Class;

    invoke-direct {p0}, Lcom/a/a/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/a/a/d/a;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/a;",
            ")TT1;"
        }
    .end annotation

    .line 894
    iget-object v0, p0, Lcom/a/a/b/a/n$28$1;->b:Lcom/a/a/b/a/n$28;

    iget-object v0, v0, Lcom/a/a/b/a/n$28;->b:Lcom/a/a/r;

    invoke-virtual {v0, p1}, Lcom/a/a/r;->a(Lcom/a/a/d/a;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3d

    .line 895
    iget-object v0, p0, Lcom/a/a/b/a/n$28$1;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_3d

    .line 896
    :cond_13
    new-instance v0, Lcom/a/a/p;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/a/a/b/a/n$28$1;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " but was "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/a/a/p;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    :goto_3d
    return-object p1
.end method

.method public final a(Lcom/a/a/d/c;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/c;",
            "TT1;)V"
        }
    .end annotation

    .line 890
    iget-object p0, p0, Lcom/a/a/b/a/n$28$1;->b:Lcom/a/a/b/a/n$28;

    iget-object p0, p0, Lcom/a/a/b/a/n$28;->b:Lcom/a/a/r;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/r;->a(Lcom/a/a/d/c;Ljava/lang/Object;)V

    return-void
.end method
