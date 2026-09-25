.class final Lcom/x/plus/pro/b$2;
.super Ljava/lang/Object;
.source "GooglePlayFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/plus/pro/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/x/plus/pro/b;


# direct methods
.method constructor <init>(Lcom/x/plus/pro/b;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/x/plus/pro/b$2;->a:Lcom/x/plus/pro/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 449
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 450
    iget-object p1, p0, Lcom/x/plus/pro/b$2;->a:Lcom/x/plus/pro/b;

    invoke-virtual {p1}, Lcom/x/plus/pro/b;->f()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 451
    iget-object p0, p0, Lcom/x/plus/pro/b$2;->a:Lcom/x/plus/pro/b;

    invoke-virtual {p0}, Lcom/x/plus/pro/b;->f()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_0
    return-void
.end method
