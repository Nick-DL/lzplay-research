.class final Lcom/x/plus/pro/b$3;
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
    .registers 2

    .line 486
    iput-object p1, p0, Lcom/x/plus/pro/b$3;->a:Lcom/x/plus/pro/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 488
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 489
    iget-object p0, p0, Lcom/x/plus/pro/b$3;->a:Lcom/x/plus/pro/b;

    invoke-static {p0}, Lcom/x/plus/pro/b;->k(Lcom/x/plus/pro/b;)V

    return-void
.end method
