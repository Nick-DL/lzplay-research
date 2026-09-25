.class final Landroidx/loader/a/b$b;
.super Ljava/lang/Object;
.source "LoaderManagerImpl.java"

# interfaces
.implements Landroidx/lifecycle/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/n<",
        "TD;>;"
    }
.end annotation


# instance fields
.field final a:Landroidx/loader/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/b/a<",
            "TD;>;"
        }
    .end annotation
.end field

.field b:Z

.field private final c:Landroidx/loader/a/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/a/a$a<",
            "TD;>;"
        }
    .end annotation
.end field


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 246
    sget-boolean v0, Landroidx/loader/a/b;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  onLoadFinished in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/loader/a/b$b;->a:Landroidx/loader/b/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-static {p1}, Landroidx/loader/b/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 247
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    .line 251
    iput-boolean p1, p0, Landroidx/loader/a/b$b;->b:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 268
    iget-object p0, p0, Landroidx/loader/a/b$b;->c:Landroidx/loader/a/a$a;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
