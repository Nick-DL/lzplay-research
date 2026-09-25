.class final Lcom/a/a/e$2;
.super Lcom/a/a/r;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/r<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/e;


# direct methods
.method constructor <init>(Lcom/a/a/e;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/a/a/e$2;->a:Lcom/a/a/e;

    invoke-direct {p0}, Lcom/a/a/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/a/a/d/a;)Ljava/lang/Object;
    .locals 1

    .line 1339
    invoke-virtual {p1}, Lcom/a/a/d/a;->f()Lcom/a/a/d/b;

    move-result-object p0

    sget-object v0, Lcom/a/a/d/b;->NULL:Lcom/a/a/d/b;

    if-ne p0, v0, :cond_0

    .line 1340
    invoke-virtual {p1}, Lcom/a/a/d/a;->k()V

    const/4 p0, 0x0

    return-object p0

    .line 1343
    :cond_0
    invoke-virtual {p1}, Lcom/a/a/d/a;->l()D

    move-result-wide p0

    double-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic a(Lcom/a/a/d/c;Ljava/lang/Object;)V
    .locals 2

    .line 337
    check-cast p2, Ljava/lang/Number;

    if-nez p2, :cond_0

    .line 1347
    invoke-virtual {p1}, Lcom/a/a/d/c;->e()Lcom/a/a/d/c;

    return-void

    .line 1350
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p0

    float-to-double v0, p0

    .line 1351
    invoke-static {v0, v1}, Lcom/a/a/e;->a(D)V

    .line 1352
    invoke-virtual {p1, p2}, Lcom/a/a/d/c;->a(Ljava/lang/Number;)Lcom/a/a/d/c;

    return-void
.end method
