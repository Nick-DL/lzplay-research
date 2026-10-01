.class final Lcom/x/plus/pro/f/k$2;
.super Lcom/x/plus/pro/f/b$a;
.source "StringUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/x/plus/pro/f/k;->a(Ljava/lang/String;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/x/plus/pro/f/b$a<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/x/plus/pro/f/k$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/x/plus/pro/f/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .registers 2

    .line 1025
    iget-object p0, p0, Lcom/x/plus/pro/f/k$2;->b:Ljava/lang/String;

    const-string v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method
