.class final Lcom/x/plus/pro/b$5;
.super Ljava/lang/Object;
.source "GooglePlayFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/x/plus/pro/b;->W()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/x/plus/pro/b;


# direct methods
.method constructor <init>(Lcom/x/plus/pro/b;)V
    .registers 2

    .line 523
    iput-object p1, p0, Lcom/x/plus/pro/b$5;->a:Lcom/x/plus/pro/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 525
    iget-object p0, p0, Lcom/x/plus/pro/b$5;->a:Lcom/x/plus/pro/b;

    invoke-static {p0}, Lcom/x/plus/pro/b;->l(Lcom/x/plus/pro/b;)V

    .line 526
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
