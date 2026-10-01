.class final Lcom/a/a/b/c$1;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lcom/a/a/b/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/b/c;->a(Lcom/a/a/c/a;)Lcom/a/a/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/b/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/f;

.field final synthetic b:Ljava/lang/reflect/Type;

.field final synthetic c:Lcom/a/a/b/c;


# direct methods
.method constructor <init>(Lcom/a/a/b/c;Lcom/a/a/f;Ljava/lang/reflect/Type;)V
    .registers 4

    .line 66
    iput-object p1, p0, Lcom/a/a/b/c$1;->c:Lcom/a/a/b/c;

    iput-object p2, p0, Lcom/a/a/b/c$1;->a:Lcom/a/a/f;

    iput-object p3, p0, Lcom/a/a/b/c$1;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 68
    iget-object p0, p0, Lcom/a/a/b/c$1;->a:Lcom/a/a/f;

    invoke-interface {p0}, Lcom/a/a/f;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
