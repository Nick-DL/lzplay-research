.class public abstract Lcom/x/plus/pro/f/d$g;
.super Ljava/lang/Object;
.source "HttpUtil.java"

# interfaces
.implements Lcom/x/plus/pro/f/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/plus/pro/f/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/x/plus/pro/f/d$b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic b(Lcom/x/plus/pro/f/d$e;)Ljava/lang/Object;
    .locals 2

    .line 1243
    iget-object p0, p1, Lcom/x/plus/pro/f/d$e;->b:[B

    const-string p1, "utf-8"

    .line 3009
    new-instance v0, Lcom/x/plus/pro/f/k$1;

    const-string v1, ""

    invoke-direct {v0, v1, p0, p1}, Lcom/x/plus/pro/f/k$1;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    .line 4007
    invoke-static {v0}, Lcom/x/plus/pro/f/b;->a(Lcom/x/plus/pro/f/b$a;)Ljava/lang/Object;

    move-result-object p0

    .line 3009
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
