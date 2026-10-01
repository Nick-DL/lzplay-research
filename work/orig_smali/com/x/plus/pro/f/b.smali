.class public final Lcom/x/plus/pro/f/b;
.super Ljava/lang/Object;
.source "CallUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/plus/pro/f/b$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/x/plus/pro/f/b$a;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/x/plus/pro/f/b$a<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 12
    :try_start_0
    invoke-virtual {p0}, Lcom/x/plus/pro/f/b$a;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 1038
    :cond_7
    iget-object v0, p0, Lcom/x/plus/pro/f/b$a;->a:Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    .line 2038
    :catch_a
    iget-object p0, p0, Lcom/x/plus/pro/f/b$a;->a:Ljava/lang/Object;

    return-object p0
.end method
