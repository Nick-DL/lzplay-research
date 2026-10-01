.class final Landroidx/core/b/b$2;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Landroidx/core/b/c$a;


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
        "Landroidx/core/b/c$a<",
        "Landroidx/core/b/b$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/content/a/f$a;

.field final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroidx/core/content/a/f$a;Landroid/os/Handler;)V
    .registers 3

    .line 273
    iput-object p1, p0, Landroidx/core/b/b$2;->a:Landroidx/core/content/a/f$a;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/core/b/b$2;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .registers 3

    .line 273
    check-cast p1, Landroidx/core/b/b$c;

    if-nez p1, :cond_d

    .line 1277
    iget-object p1, p0, Landroidx/core/b/b$2;->a:Landroidx/core/content/a/f$a;

    const/4 v0, 0x1

    iget-object p0, p0, Landroidx/core/b/b$2;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0, p0}, Landroidx/core/content/a/f$a;->a(ILandroid/os/Handler;)V

    return-void

    .line 1279
    :cond_d
    iget v0, p1, Landroidx/core/b/b$c;->b:I

    if-nez v0, :cond_1b

    .line 1280
    iget-object v0, p0, Landroidx/core/b/b$2;->a:Landroidx/core/content/a/f$a;

    iget-object p1, p1, Landroidx/core/b/b$c;->a:Landroid/graphics/Typeface;

    iget-object p0, p0, Landroidx/core/b/b$2;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, p0}, Landroidx/core/content/a/f$a;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    return-void

    .line 1282
    :cond_1b
    iget-object v0, p0, Landroidx/core/b/b$2;->a:Landroidx/core/content/a/f$a;

    iget p1, p1, Landroidx/core/b/b$c;->b:I

    iget-object p0, p0, Landroidx/core/b/b$2;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, p0}, Landroidx/core/content/a/f$a;->a(ILandroid/os/Handler;)V

    return-void
.end method
