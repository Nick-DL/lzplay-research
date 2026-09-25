.class final Lcom/x/plus/pro/b$4;
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

    .line 493
    iput-object p1, p0, Lcom/x/plus/pro/b$4;->a:Lcom/x/plus/pro/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 495
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
