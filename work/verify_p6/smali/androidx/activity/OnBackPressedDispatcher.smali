.class public final Landroidx/activity/OnBackPressedDispatcher;
.super Ljava/lang/Object;
.source "OnBackPressedDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;,
        Landroidx/activity/OnBackPressedDispatcher$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/activity/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, v0}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->a:Ljava/util/ArrayDeque;

    .line 76
    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 184
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->a:Ljava/util/ArrayDeque;

    .line 185
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 186
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/activity/b;

    .line 1082
    iget-boolean v2, v1, Landroidx/activity/b;->a:Z

    if-eqz v2, :cond_0

    .line 189
    invoke-virtual {v1}, Landroidx/activity/b;->b()V

    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 194
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher;->b:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method public final a(Landroidx/lifecycle/h;Landroidx/activity/b;)V
    .locals 2

    .line 145
    invoke-interface {p1}, Landroidx/lifecycle/h;->a()Landroidx/lifecycle/e;

    move-result-object p1

    .line 146
    invoke-virtual {p1}, Landroidx/lifecycle/e;->a()Landroidx/lifecycle/e$b;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/e$b;->DESTROYED:Landroidx/lifecycle/e$b;

    if-ne v0, v1, :cond_0

    return-void

    .line 150
    :cond_0
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;

    invoke-direct {v0, p0, p1, p2}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;-><init>(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/e;Landroidx/activity/b;)V

    invoke-virtual {p2, v0}, Landroidx/activity/b;->a(Landroidx/activity/a;)V

    return-void
.end method
