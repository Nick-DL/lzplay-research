.class final Landroidx/core/b/b$1;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/b/b;->a(Landroid/content/Context;Landroidx/core/b/a;Landroidx/core/content/a/f$a;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroidx/core/b/b$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroidx/core/b/a;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/core/b/a;ILjava/lang/String;)V
    .locals 0

    .line 254
    iput-object p1, p0, Landroidx/core/b/b$1;->a:Landroid/content/Context;

    iput-object p2, p0, Landroidx/core/b/b$1;->b:Landroidx/core/b/a;

    iput p3, p0, Landroidx/core/b/b$1;->c:I

    iput-object p4, p0, Landroidx/core/b/b$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    .line 1257
    iget-object v0, p0, Landroidx/core/b/b$1;->a:Landroid/content/Context;

    iget-object v1, p0, Landroidx/core/b/b$1;->b:Landroidx/core/b/a;

    iget v2, p0, Landroidx/core/b/b$1;->c:I

    invoke-static {v0, v1, v2}, Landroidx/core/b/b;->a(Landroid/content/Context;Landroidx/core/b/a;I)Landroidx/core/b/b$c;

    move-result-object v0

    .line 1258
    iget-object v1, v0, Landroidx/core/b/b$c;->a:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    .line 1259
    sget-object v1, Landroidx/core/b/b;->a:Landroidx/b/e;

    iget-object p0, p0, Landroidx/core/b/b$1;->d:Ljava/lang/String;

    iget-object v2, v0, Landroidx/core/b/b$c;->a:Landroid/graphics/Typeface;

    invoke-virtual {v1, p0, v2}, Landroidx/b/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
