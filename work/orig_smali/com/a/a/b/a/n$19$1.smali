.class final Lcom/a/a/b/a/n$19$1;
.super Lcom/a/a/r;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/b/a/n$19;->a(Lcom/a/a/e;Lcom/a/a/c/a;)Lcom/a/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/r<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/r;

.field final synthetic b:Lcom/a/a/b/a/n$19;


# direct methods
.method constructor <init>(Lcom/a/a/b/a/n$19;Lcom/a/a/r;)V
    .registers 3

    .line 580
    iput-object p1, p0, Lcom/a/a/b/a/n$19$1;->b:Lcom/a/a/b/a/n$19;

    iput-object p2, p0, Lcom/a/a/b/a/n$19$1;->a:Lcom/a/a/r;

    invoke-direct {p0}, Lcom/a/a/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/a/a/d/a;)Ljava/lang/Object;
    .registers 4

    .line 1582
    iget-object p0, p0, Lcom/a/a/b/a/n$19$1;->a:Lcom/a/a/r;

    invoke-virtual {p0, p1}, Lcom/a/a/r;->a(Lcom/a/a/d/a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    if-eqz p0, :cond_14

    .line 1583
    new-instance p1, Ljava/sql/Timestamp;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    return-object p1

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public final bridge synthetic a(Lcom/a/a/d/c;Ljava/lang/Object;)V
    .registers 3

    .line 580
    check-cast p2, Ljava/sql/Timestamp;

    .line 1587
    iget-object p0, p0, Lcom/a/a/b/a/n$19$1;->a:Lcom/a/a/r;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/r;->a(Lcom/a/a/d/c;Ljava/lang/Object;)V

    return-void
.end method
