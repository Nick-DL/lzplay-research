.class final Lcom/x/plus/pro/b$7;
.super Ljava/lang/Object;
.source "GooglePlayFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/x/plus/pro/b;->X()V
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

    .line 542
    iput-object p1, p0, Lcom/x/plus/pro/b$7;->a:Lcom/x/plus/pro/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 544
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
