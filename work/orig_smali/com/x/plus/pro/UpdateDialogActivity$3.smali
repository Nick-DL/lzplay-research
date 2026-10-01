.class final Lcom/x/plus/pro/UpdateDialogActivity$3;
.super Ljava/lang/Object;
.source "UpdateDialogActivity.java"

# interfaces
.implements Lcom/x/plus/pro/update/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/plus/pro/UpdateDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/x/plus/pro/UpdateDialogActivity;


# direct methods
.method constructor <init>(Lcom/x/plus/pro/UpdateDialogActivity;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/x/plus/pro/UpdateDialogActivity$3;->a:Lcom/x/plus/pro/UpdateDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/x/plus/pro/UpdateDialogActivity$3;->a:Lcom/x/plus/pro/UpdateDialogActivity;

    invoke-virtual {p0}, Lcom/x/plus/pro/UpdateDialogActivity;->finish()V

    return-void
.end method

.method public final a(I)V
    .registers 2

    .line 83
    iget-object p0, p0, Lcom/x/plus/pro/UpdateDialogActivity$3;->a:Lcom/x/plus/pro/UpdateDialogActivity;

    invoke-static {p0}, Lcom/x/plus/pro/UpdateDialogActivity;->a(Lcom/x/plus/pro/UpdateDialogActivity;)Landroid/widget/ProgressBar;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
