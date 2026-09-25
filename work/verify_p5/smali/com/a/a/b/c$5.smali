.class final Lcom/a/a/b/c$5;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lcom/a/a/b/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/b/c;
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
.field final synthetic a:Lcom/a/a/b/c;


# direct methods
.method constructor <init>(Lcom/a/a/b/c;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/a/a/b/c$5;->a:Lcom/a/a/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 209
    new-instance p0, Lcom/a/a/b/h;

    invoke-direct {p0}, Lcom/a/a/b/h;-><init>()V

    return-object p0
.end method
