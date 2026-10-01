.class public Lcom/x/plus/pro/base/a;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/f;Ljava/lang/String;)V
    .registers 5

    .line 12
    invoke-virtual {p1}, Landroidx/fragment/app/f;->a()Landroidx/fragment/app/i;

    move-result-object v0

    const v1, 0x7f070060

    .line 13
    invoke-virtual {p1, v1}, Landroidx/fragment/app/f;->a(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 15
    invoke-virtual {v0, p1}, Landroidx/fragment/app/i;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/i;

    .line 18
    :cond_10
    invoke-virtual {v0, v1, p0, p2}, Landroidx/fragment/app/i;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/i;

    .line 19
    invoke-virtual {v0}, Landroidx/fragment/app/i;->c()I

    return-void
.end method
