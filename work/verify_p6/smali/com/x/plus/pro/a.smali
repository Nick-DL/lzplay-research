.class public Lcom/x/plus/pro/a;
.super Lcom/x/plus/pro/base/a;
.source "FeatureFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/x/plus/pro/base/a;-><init>()V

    return-void
.end method

.method public static P()Lcom/x/plus/pro/a;
    .locals 1

    .line 15
    new-instance v0, Lcom/x/plus/pro/a;

    invoke-direct {v0}, Lcom/x/plus/pro/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const p0, 0x7f0a0024

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Lcom/x/plus/pro/base/a;->b(Landroid/os/Bundle;)V

    return-void
.end method
