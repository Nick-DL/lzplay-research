.class final Lcom/x/plus/pro/UpdateDialogActivity$2;
.super Ljava/lang/Object;
.source "UpdateDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/x/plus/pro/UpdateDialogActivity$2;->a:Lcom/x/plus/pro/UpdateDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/x/plus/pro/UpdateDialogActivity$2;->a:Lcom/x/plus/pro/UpdateDialogActivity;

    invoke-virtual {p0}, Lcom/x/plus/pro/UpdateDialogActivity;->finish()V

    return-void
.end method
