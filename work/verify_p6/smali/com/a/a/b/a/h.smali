.class public final Lcom/a/a/b/a/h;
.super Lcom/a/a/r;
.source "ObjectTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/r<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/a/a/s;


# instance fields
.field private final b:Lcom/a/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/a/a/b/a/h$1;

    invoke-direct {v0}, Lcom/a/a/b/a/h$1;-><init>()V

    sput-object v0, Lcom/a/a/b/a/h;->a:Lcom/a/a/s;

    return-void
.end method

.method constructor <init>(Lcom/a/a/e;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/a/a/r;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/a/a/b/a/h;->b:Lcom/a/a/e;

    return-void
.end method


# virtual methods
.method public final a(Lcom/a/a/d/a;)Ljava/lang/Object;
    .locals 3

    .line 55
    invoke-virtual {p1}, Lcom/a/a/d/a;->f()Lcom/a/a/d/b;

    move-result-object v0

    .line 56
    sget-object v1, Lcom/a/a/b/a/h$2;->a:[I

    invoke-virtual {v0}, Lcom/a/a/d/b;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 89
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 85
    :pswitch_0
    invoke-virtual {p1}, Lcom/a/a/d/a;->k()V

    const/4 p0, 0x0

    return-object p0

    .line 82
    :pswitch_1
    invoke-virtual {p1}, Lcom/a/a/d/a;->j()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 79
    :pswitch_2
    invoke-virtual {p1}, Lcom/a/a/d/a;->l()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 76
    :pswitch_3
    invoke-virtual {p1}, Lcom/a/a/d/a;->i()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 67
    :pswitch_4
    new-instance v0, Lcom/a/a/b/h;

    invoke-direct {v0}, Lcom/a/a/b/h;-><init>()V

    .line 68
    invoke-virtual {p1}, Lcom/a/a/d/a;->c()V

    .line 69
    :goto_0
    invoke-virtual {p1}, Lcom/a/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p1}, Lcom/a/a/d/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/a/a/b/a/h;->a(Lcom/a/a/d/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p1}, Lcom/a/a/d/a;->d()V

    return-object v0

    .line 58
    :pswitch_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-virtual {p1}, Lcom/a/a/d/a;->a()V

    .line 60
    :goto_1
    invoke-virtual {p1}, Lcom/a/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    invoke-virtual {p0, p1}, Lcom/a/a/b/a/h;->a(Lcom/a/a/d/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {p1}, Lcom/a/a/d/a;->b()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/a/a/d/c;Ljava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/a/a/d/c;->e()Lcom/a/a/d/c;

    return-void

    .line 100
    :cond_0
    iget-object p0, p0, Lcom/a/a/b/a/h;->b:Lcom/a/a/e;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/e;->a(Ljava/lang/Class;)Lcom/a/a/r;

    move-result-object p0

    .line 101
    instance-of v0, p0, Lcom/a/a/b/a/h;

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p1}, Lcom/a/a/d/c;->c()Lcom/a/a/d/c;

    .line 103
    invoke-virtual {p1}, Lcom/a/a/d/c;->d()Lcom/a/a/d/c;

    return-void

    .line 107
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/a/a/r;->a(Lcom/a/a/d/c;Ljava/lang/Object;)V

    return-void
.end method
