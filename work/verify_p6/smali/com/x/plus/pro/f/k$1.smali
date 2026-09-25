.class final Lcom/x/plus/pro/f/k$1;
.super Lcom/x/plus/pro/f/b$a;
.source "StringUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/plus/pro/f/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/x/plus/pro/f/b$a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:[B

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 0

    .line 9
    iput-object p2, p0, Lcom/x/plus/pro/f/k$1;->b:[B

    iput-object p3, p0, Lcom/x/plus/pro/f/k$1;->c:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/x/plus/pro/f/b$a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 2

    .line 1012
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/x/plus/pro/f/k$1;->b:[B

    iget-object p0, p0, Lcom/x/plus/pro/f/k$1;->c:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
