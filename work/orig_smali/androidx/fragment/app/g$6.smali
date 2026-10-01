.class final Landroidx/fragment/app/g$6;
.super Landroidx/fragment/app/d;
.source "FragmentManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/g;->e()Landroidx/fragment/app/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/g;


# direct methods
.method constructor <init>(Landroidx/fragment/app/g;)V
    .registers 2

    .line 2845
    iput-object p1, p0, Landroidx/fragment/app/g$6;->a:Landroidx/fragment/app/g;

    invoke-direct {p0}, Landroidx/fragment/app/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 3

    .line 2851
    iget-object p0, p0, Landroidx/fragment/app/g$6;->a:Landroidx/fragment/app/g;

    iget-object p0, p0, Landroidx/fragment/app/g;->q:Landroidx/fragment/app/e;

    .line 3200
    iget-object p0, p0, Landroidx/fragment/app/e;->c:Landroid/content/Context;

    .line 4057
    invoke-static {p0, p2}, Landroidx/fragment/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method
