.class final Landroidx/fragment/app/g$1;
.super Landroidx/activity/b;
.source "FragmentManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/fragment/app/g;


# direct methods
.method constructor <init>(Landroidx/fragment/app/g;)V
    .registers 2

    .line 105
    iput-object p1, p0, Landroidx/fragment/app/g$1;->b:Landroidx/fragment/app/g;

    invoke-direct {p0}, Landroidx/activity/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .registers 2

    .line 108
    iget-object p0, p0, Landroidx/fragment/app/g$1;->b:Landroidx/fragment/app/g;

    .line 1230
    invoke-virtual {p0}, Landroidx/fragment/app/g;->i()Z

    .line 1231
    iget-object v0, p0, Landroidx/fragment/app/g;->l:Landroidx/activity/b;

    .line 2082
    iget-boolean v0, v0, Landroidx/activity/b;->a:Z

    if-eqz v0, :cond_f

    .line 1233
    invoke-virtual {p0}, Landroidx/fragment/app/g;->c()Z

    return-void

    .line 1241
    :cond_f
    iget-object p0, p0, Landroidx/fragment/app/g;->k:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->a()V

    return-void
.end method
