.class final Lcom/x/plus/pro/view/a$a$3;
.super Ljava/lang/Object;
.source "CommDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/x/plus/pro/view/a$a;->a()Lcom/x/plus/pro/view/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/x/plus/pro/view/a;

.field final synthetic b:Lcom/x/plus/pro/view/a$a;


# direct methods
.method constructor <init>(Lcom/x/plus/pro/view/a$a;Lcom/x/plus/pro/view/a;)V
    .registers 3

    .line 177
    iput-object p1, p0, Lcom/x/plus/pro/view/a$a$3;->b:Lcom/x/plus/pro/view/a$a;

    iput-object p2, p0, Lcom/x/plus/pro/view/a$a$3;->a:Lcom/x/plus/pro/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 180
    iget-object p1, p0, Lcom/x/plus/pro/view/a$a$3;->b:Lcom/x/plus/pro/view/a$a;

    .line 1026
    iget-object p1, p1, Lcom/x/plus/pro/view/a$a;->c:Landroid/content/DialogInterface$OnClickListener;

    .line 180
    iget-object p0, p0, Lcom/x/plus/pro/view/a$a$3;->a:Lcom/x/plus/pro/view/a;

    const/4 v0, -0x3

    invoke-interface {p1, p0, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method
