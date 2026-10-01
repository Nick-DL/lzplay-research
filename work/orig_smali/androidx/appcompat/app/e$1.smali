.class final Landroidx/appcompat/app/e$1;
.super Ljava/lang/Object;
.source "AppCompatDialog.java"

# interfaces
.implements Landroidx/core/e/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/e;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/e;)V
    .registers 2

    .line 45
    iput-object p1, p0, Landroidx/appcompat/app/e$1;->a:Landroidx/appcompat/app/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/KeyEvent;)Z
    .registers 2

    .line 48
    iget-object p0, p0, Landroidx/appcompat/app/e$1;->a:Landroidx/appcompat/app/e;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/e;->a(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
