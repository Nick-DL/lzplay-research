.class final Lcom/x/plus/pro/f/d$f$2;
.super Lcom/x/plus/pro/f/b$a;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/x/plus/pro/f/d$f;->b(Lcom/x/plus/pro/f/d$d;)Lcom/x/plus/pro/f/d$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/x/plus/pro/f/b$a<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/x/plus/pro/f/d$e;

.field final synthetic c:Lcom/x/plus/pro/f/d$b;


# direct methods
.method constructor <init>(Lcom/x/plus/pro/f/d$e;Lcom/x/plus/pro/f/d$b;)V
    .registers 3

    .line 341
    iput-object p1, p0, Lcom/x/plus/pro/f/d$f$2;->b:Lcom/x/plus/pro/f/d$e;

    iput-object p2, p0, Lcom/x/plus/pro/f/d$f$2;->c:Lcom/x/plus/pro/f/d$b;

    invoke-direct {p0}, Lcom/x/plus/pro/f/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .registers 3

    .line 1344
    iget-object v0, p0, Lcom/x/plus/pro/f/d$f$2;->b:Lcom/x/plus/pro/f/d$e;

    .line 2227
    iget v0, v0, Lcom/x/plus/pro/f/d$e;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_16

    .line 1345
    iget-object v0, p0, Lcom/x/plus/pro/f/d$f$2;->c:Lcom/x/plus/pro/f/d$b;

    iget-object v1, p0, Lcom/x/plus/pro/f/d$f$2;->c:Lcom/x/plus/pro/f/d$b;

    iget-object p0, p0, Lcom/x/plus/pro/f/d$f$2;->b:Lcom/x/plus/pro/f/d$e;

    invoke-interface {v1, p0}, Lcom/x/plus/pro/f/d$b;->b(Lcom/x/plus/pro/f/d$e;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/x/plus/pro/f/d$b;->a(Ljava/lang/Object;)V

    goto :goto_1d

    .line 1347
    :cond_16
    iget-object v0, p0, Lcom/x/plus/pro/f/d$f$2;->c:Lcom/x/plus/pro/f/d$b;

    iget-object p0, p0, Lcom/x/plus/pro/f/d$f$2;->b:Lcom/x/plus/pro/f/d$e;

    invoke-interface {v0, p0}, Lcom/x/plus/pro/f/d$b;->a(Lcom/x/plus/pro/f/d$e;)V

    :goto_1d
    const/4 p0, 0x0

    return-object p0
.end method
