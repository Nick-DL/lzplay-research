.class public final Lcom/x/plus/pro/b/b;
.super Ljava/lang/Object;
.source "RC4Factory.java"


# direct methods
.method public static a(Ljava/lang/String;)Lcom/x/plus/pro/b/a;
    .registers 2

    .line 6
    new-instance v0, Lcom/x/plus/pro/b/c;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/x/plus/pro/b/c;-><init>([B)V

    return-object v0
.end method
