.class final Lcom/a/a/b/a/n$28;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lcom/a/a/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/b/a/n;->b(Ljava/lang/Class;Lcom/a/a/r;)Lcom/a/a/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Lcom/a/a/r;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/a/a/r;)V
    .locals 0

    .line 881
    iput-object p1, p0, Lcom/a/a/b/a/n$28;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/a/a/b/a/n$28;->b:Lcom/a/a/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/a/a/e;Lcom/a/a/c/a;)Lcom/a/a/r;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/e;",
            "Lcom/a/a/c/a<",
            "TT2;>;)",
            "Lcom/a/a/r<",
            "TT2;>;"
        }
    .end annotation

    .line 1094
    iget-object p1, p2, Lcom/a/a/c/a;->a:Ljava/lang/Class;

    .line 885
    iget-object p2, p0, Lcom/a/a/b/a/n$28;->a:Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 888
    :cond_0
    new-instance p2, Lcom/a/a/b/a/n$28$1;

    invoke-direct {p2, p0, p1}, Lcom/a/a/b/a/n$28$1;-><init>(Lcom/a/a/b/a/n$28;Ljava/lang/Class;)V

    return-object p2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Factory[typeHierarchy="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/a/a/b/a/n$28;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",adapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/a/a/b/a/n$28;->b:Lcom/a/a/r;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
