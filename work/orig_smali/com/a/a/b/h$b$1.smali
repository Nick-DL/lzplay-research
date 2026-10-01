.class final Lcom/a/a/b/h$b$1;
.super Lcom/a/a/b/h$c;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/b/h$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/b/h<",
        "TK;TV;>.c<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/b/h$b;


# direct methods
.method constructor <init>(Lcom/a/a/b/h$b;)V
    .registers 2

    .line 601
    iput-object p1, p0, Lcom/a/a/b/h$b$1;->a:Lcom/a/a/b/h$b;

    iget-object p1, p1, Lcom/a/a/b/h$b;->a:Lcom/a/a/b/h;

    invoke-direct {p0, p1}, Lcom/a/a/b/h$c;-><init>(Lcom/a/a/b/h;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 603
    invoke-virtual {p0}, Lcom/a/a/b/h$b$1;->a()Lcom/a/a/b/h$d;

    move-result-object p0

    iget-object p0, p0, Lcom/a/a/b/h$d;->f:Ljava/lang/Object;

    return-object p0
.end method
