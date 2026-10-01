.class final Lcom/a/a/b/a/n$23;
.super Lcom/a/a/r;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/b/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/r<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 133
    invoke-direct {p0}, Lcom/a/a/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/a/a/d/a;)Ljava/lang/Object;
    .registers 3

    .line 1136
    invoke-virtual {p1}, Lcom/a/a/d/a;->f()Lcom/a/a/d/b;

    move-result-object p0

    .line 1137
    sget-object v0, Lcom/a/a/d/b;->NULL:Lcom/a/a/d/b;

    if-ne p0, v0, :cond_d

    .line 1138
    invoke-virtual {p1}, Lcom/a/a/d/a;->k()V

    const/4 p0, 0x0

    return-object p0

    .line 1140
    :cond_d
    sget-object v0, Lcom/a/a/d/b;->STRING:Lcom/a/a/d/b;

    if-ne p0, v0, :cond_1e

    .line 1142
    invoke-virtual {p1}, Lcom/a/a/d/a;->i()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 1144
    :cond_1e
    invoke-virtual {p1}, Lcom/a/a/d/a;->j()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a(Lcom/a/a/d/c;Ljava/lang/Object;)V
    .registers 3

    .line 133
    check-cast p2, Ljava/lang/Boolean;

    .line 1148
    invoke-virtual {p1, p2}, Lcom/a/a/d/c;->a(Ljava/lang/Boolean;)Lcom/a/a/d/c;

    return-void
.end method
