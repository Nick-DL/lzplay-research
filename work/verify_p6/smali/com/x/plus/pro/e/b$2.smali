.class final Lcom/x/plus/pro/e/b$2;
.super Ljava/lang/Object;
.source "InitializeManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/x/plus/pro/e/b;->b(Lcom/x/plus/pro/beans/config/ApkInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/x/plus/pro/e/b;


# direct methods
.method constructor <init>(Lcom/x/plus/pro/e/b;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/x/plus/pro/e/b$2;->a:Lcom/x/plus/pro/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 277
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 278
    iget-object p0, p0, Lcom/x/plus/pro/e/b$2;->a:Lcom/x/plus/pro/e/b;

    invoke-static {p0}, Lcom/x/plus/pro/e/b;->c(Lcom/x/plus/pro/e/b;)V

    return-void
.end method
