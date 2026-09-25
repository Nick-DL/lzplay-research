.class final Lcom/x/plus/pro/f/d$f$3;
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
.field final synthetic b:Lcom/x/plus/pro/f/d$b;

.field final synthetic c:Lcom/x/plus/pro/f/d$e;


# direct methods
.method constructor <init>(Lcom/x/plus/pro/f/d$b;Lcom/x/plus/pro/f/d$e;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/x/plus/pro/f/d$f$3;->b:Lcom/x/plus/pro/f/d$b;

    iput-object p2, p0, Lcom/x/plus/pro/f/d$f$3;->c:Lcom/x/plus/pro/f/d$e;

    invoke-direct {p0}, Lcom/x/plus/pro/f/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1361
    iget-object v0, p0, Lcom/x/plus/pro/f/d$f$3;->b:Lcom/x/plus/pro/f/d$b;

    iget-object p0, p0, Lcom/x/plus/pro/f/d$f$3;->c:Lcom/x/plus/pro/f/d$e;

    invoke-interface {v0, p0}, Lcom/x/plus/pro/f/d$b;->a(Lcom/x/plus/pro/f/d$e;)V

    const/4 p0, 0x0

    return-object p0
.end method
