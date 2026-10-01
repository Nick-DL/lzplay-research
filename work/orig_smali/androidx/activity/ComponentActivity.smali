.class public Landroidx/activity/ComponentActivity;
.super Landroidx/core/app/ComponentActivity;
.source "ComponentActivity.java"

# interfaces
.implements Landroidx/activity/c;
.implements Landroidx/lifecycle/h;
.implements Landroidx/lifecycle/t;
.implements Landroidx/savedstate/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/ComponentActivity$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/activity/OnBackPressedDispatcher;

.field private final b:Landroidx/lifecycle/i;

.field private final c:Landroidx/savedstate/b;

.field private d:Landroidx/lifecycle/s;

.field private e:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 84
    invoke-direct {p0}, Landroidx/core/app/ComponentActivity;-><init>()V

    .line 61
    new-instance v0, Landroidx/lifecycle/i;

    invoke-direct {v0, p0}, Landroidx/lifecycle/i;-><init>(Landroidx/lifecycle/h;)V

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->b:Landroidx/lifecycle/i;

    .line 63
    invoke-static {p0}, Landroidx/savedstate/b;->a(Landroidx/savedstate/c;)Landroidx/savedstate/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->c:Landroidx/savedstate/b;

    .line 68
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher;

    new-instance v1, Landroidx/activity/ComponentActivity$1;

    invoke-direct {v1, p0}, Landroidx/activity/ComponentActivity$1;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-direct {v0, v1}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->a:Landroidx/activity/OnBackPressedDispatcher;

    .line 1241
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->b:Landroidx/lifecycle/i;

    if-eqz v0, :cond_4f

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_30

    .line 2241
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->b:Landroidx/lifecycle/i;

    .line 94
    new-instance v2, Landroidx/activity/ComponentActivity$2;

    invoke-direct {v2, p0}, Landroidx/activity/ComponentActivity$2;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/g;)V

    .line 3241
    :cond_30
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->b:Landroidx/lifecycle/i;

    .line 108
    new-instance v2, Landroidx/activity/ComponentActivity$3;

    invoke-direct {v2, p0}, Landroidx/activity/ComponentActivity$3;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/g;)V

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v0, :cond_4e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_4e

    .line 4241
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->b:Landroidx/lifecycle/i;

    .line 121
    new-instance v1, Landroidx/activity/ImmLeaksCleaner;

    invoke-direct {v1, p0}, Landroidx/activity/ImmLeaksCleaner;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/g;)V

    :cond_4e
    return-void

    .line 88
    :cond_4f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getLifecycle() returned null in ComponentActivity\'s constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 137
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    .line 138
    iput p1, p0, Landroidx/activity/ComponentActivity;->e:I

    return-void
.end method

.method static synthetic a(Landroidx/activity/ComponentActivity;)V
    .registers 1

    .line 50
    invoke-super {p0}, Landroidx/core/app/ComponentActivity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/lifecycle/e;
    .registers 1

    .line 241
    iget-object p0, p0, Landroidx/activity/ComponentActivity;->b:Landroidx/lifecycle/i;

    return-object p0
.end method

.method public final b()Landroidx/lifecycle/s;
    .registers 2

    .line 257
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 261
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->d:Landroidx/lifecycle/s;

    if-nez v0, :cond_21

    .line 263
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/activity/ComponentActivity$a;

    if-eqz v0, :cond_16

    .line 266
    iget-object v0, v0, Landroidx/activity/ComponentActivity$a;->b:Landroidx/lifecycle/s;

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->d:Landroidx/lifecycle/s;

    .line 268
    :cond_16
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->d:Landroidx/lifecycle/s;

    if-nez v0, :cond_21

    .line 269
    new-instance v0, Landroidx/lifecycle/s;

    invoke-direct {v0}, Landroidx/lifecycle/s;-><init>()V

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->d:Landroidx/lifecycle/s;

    .line 272
    :cond_21
    iget-object p0, p0, Landroidx/activity/ComponentActivity;->d:Landroidx/lifecycle/s;

    return-object p0

    .line 258
    :cond_24
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c()Landroidx/activity/OnBackPressedDispatcher;
    .registers 1

    .line 297
    iget-object p0, p0, Landroidx/activity/ComponentActivity;->a:Landroidx/activity/OnBackPressedDispatcher;

    return-object p0
.end method

.method public final d()Landroidx/savedstate/a;
    .registers 1

    .line 303
    iget-object p0, p0, Landroidx/activity/ComponentActivity;->c:Landroidx/savedstate/b;

    .line 7046
    iget-object p0, p0, Landroidx/savedstate/b;->a:Landroidx/savedstate/a;

    return-object p0
.end method

.method public onBackPressed()V
    .registers 1

    .line 286
    iget-object p0, p0, Landroidx/activity/ComponentActivity;->a:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->a()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 149
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->c:Landroidx/savedstate/b;

    invoke-virtual {v0, p1}, Landroidx/savedstate/b;->a(Landroid/os/Bundle;)V

    .line 151
    invoke-static {p0}, Landroidx/lifecycle/p;->a(Landroid/app/Activity;)V

    .line 152
    iget p1, p0, Landroidx/activity/ComponentActivity;->e:I

    if-eqz p1, :cond_14

    .line 153
    iget p1, p0, Landroidx/activity/ComponentActivity;->e:I

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    :cond_14
    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 3

    .line 178
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->d:Landroidx/lifecycle/s;

    if-nez v0, :cond_e

    .line 183
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/activity/ComponentActivity$a;

    if-eqz p0, :cond_e

    .line 185
    iget-object v0, p0, Landroidx/activity/ComponentActivity$a;->b:Landroidx/lifecycle/s;

    :cond_e
    const/4 p0, 0x0

    if-nez v0, :cond_12

    return-object p0

    .line 193
    :cond_12
    new-instance v1, Landroidx/activity/ComponentActivity$a;

    invoke-direct {v1}, Landroidx/activity/ComponentActivity$a;-><init>()V

    .line 194
    iput-object p0, v1, Landroidx/activity/ComponentActivity$a;->a:Ljava/lang/Object;

    .line 195
    iput-object v0, v1, Landroidx/activity/ComponentActivity$a;->b:Landroidx/lifecycle/s;

    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 5241
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->b:Landroidx/lifecycle/i;

    .line 161
    instance-of v1, v0, Landroidx/lifecycle/i;

    if-eqz v1, :cond_d

    .line 162
    check-cast v0, Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$b;->CREATED:Landroidx/lifecycle/e$b;

    .line 6118
    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$b;)V

    .line 164
    :cond_d
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 165
    iget-object p0, p0, Landroidx/activity/ComponentActivity;->c:Landroidx/savedstate/b;

    invoke-virtual {p0, p1}, Landroidx/savedstate/b;->b(Landroid/os/Bundle;)V

    return-void
.end method
