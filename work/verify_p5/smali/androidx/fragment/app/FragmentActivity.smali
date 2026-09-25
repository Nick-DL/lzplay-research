.class public Landroidx/fragment/app/FragmentActivity;
.super Landroidx/activity/ComponentActivity;
.source "FragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentActivity$a;
    }
.end annotation


# instance fields
.field final b:Landroidx/fragment/app/c;

.field final c:Landroidx/lifecycle/i;

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:I

.field j:Landroidx/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/h<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 127
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    .line 82
    new-instance v0, Landroidx/fragment/app/FragmentActivity$a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentActivity$a;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    invoke-static {v0}, Landroidx/fragment/app/c;->a(Landroidx/fragment/app/e;)Landroidx/fragment/app/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentActivity;->b:Landroidx/fragment/app/c;

    .line 89
    new-instance v0, Landroidx/lifecycle/i;

    invoke-direct {v0, p0}, Landroidx/lifecycle/i;-><init>(Landroidx/lifecycle/h;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentActivity;->c:Landroidx/lifecycle/i;

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->f:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Landroidx/activity/ComponentActivity;-><init>(I)V

    .line 82
    new-instance p1, Landroidx/fragment/app/FragmentActivity$a;

    invoke-direct {p1, p0}, Landroidx/fragment/app/FragmentActivity$a;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    invoke-static {p1}, Landroidx/fragment/app/c;->a(Landroidx/fragment/app/e;)Landroidx/fragment/app/c;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/FragmentActivity;->b:Landroidx/fragment/app/c;

    .line 89
    new-instance p1, Landroidx/lifecycle/i;

    invoke-direct {p1, p0}, Landroidx/lifecycle/i;-><init>(Landroidx/lifecycle/h;)V

    iput-object p1, p0, Landroidx/fragment/app/FragmentActivity;->c:Landroidx/lifecycle/i;

    const/4 p1, 0x1

    .line 93
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentActivity;->f:Z

    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 357
    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->b:Landroidx/fragment/app/c;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/c;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static a(I)V
    .locals 1

    const/high16 v0, -0x10000

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    return-void

    .line 715
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can only use lower 16 bits for requestCode"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Landroidx/fragment/app/f;Landroidx/lifecycle/e$b;)Z
    .locals 4

    .line 996
    invoke-virtual {p0}, Landroidx/fragment/app/f;->d()Ljava/util/List;

    move-result-object p0

    .line 997
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 12283
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->S:Landroidx/lifecycle/i;

    .line 1001
    invoke-virtual {v2}, Landroidx/lifecycle/e;->a()Landroidx/lifecycle/e$b;

    move-result-object v2

    sget-object v3, Landroidx/lifecycle/e$b;->STARTED:Landroidx/lifecycle/e$b;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/e$b;->isAtLeast(Landroidx/lifecycle/e$b;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1002
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->S:Landroidx/lifecycle/i;

    .line 13118
    invoke-virtual {v0, p1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$b;)V

    const/4 v0, 0x1

    .line 1006
    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->g()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1007
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->i()Landroidx/fragment/app/f;

    move-result-object v1

    .line 1008
    invoke-static {v1, p1}, Landroidx/fragment/app/FragmentActivity;->a(Landroidx/fragment/app/f;Landroidx/lifecycle/e$b;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private f()V
    .locals 2

    .line 990
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->h()Landroidx/fragment/app/f;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/e$b;->CREATED:Landroidx/lifecycle/e$b;

    invoke-static {v0, v1}, Landroidx/fragment/app/FragmentActivity;->a(Landroidx/fragment/app/f;Landroidx/lifecycle/e$b;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 599
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/activity/ComponentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 600
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 601
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    .line 602
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 604
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 605
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->d:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 606
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->e:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 607
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->f:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 609
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 610
    invoke-static {p0}, Landroidx/loader/a/a;->a(Landroidx/lifecycle/h;)Landroidx/loader/a/a;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Landroidx/loader/a/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 612
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->b:Landroidx/fragment/app/c;

    .line 11069
    iget-object p0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/e;

    iget-object p0, p0, Landroidx/fragment/app/e;->e:Landroidx/fragment/app/g;

    .line 612
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/f;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 583
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method public final h()Landroidx/fragment/app/f;
    .locals 0

    .line 636
    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->b:Landroidx/fragment/app/c;

    .line 12069
    iget-object p0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/e;

    iget-object p0, p0, Landroidx/fragment/app/e;->e:Landroidx/fragment/app/g;

    return-object p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 155
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->b:Landroidx/fragment/app/c;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->a()V

    shr-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 160
    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->j:Landroidx/b/h;

    const/4 p2, 0x0

    .line 3109
    invoke-virtual {p1, v0, p2}, Landroidx/b/h;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 160
    check-cast p1, Ljava/lang/String;

    .line 161
    iget-object p2, p0, Landroidx/fragment/app/FragmentActivity;->j:Landroidx/b/h;

    invoke-virtual {p2, v0}, Landroidx/b/h;->a(I)V

    if-nez p1, :cond_0

    const-string p0, "FragmentActivity"

    const-string p1, "Activity result delivered for unknown Fragment."

    .line 163
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 166
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->b:Landroidx/fragment/app/c;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "FragmentActivity"

    const-string p2, "Activity result no fragment exists for who: "

    .line 168
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 175
    :cond_2
    invoke-static {}, Landroidx/core/app/a;->a()Landroidx/core/app/a$a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 176
    invoke-interface {v0}, Landroidx/core/app/a$a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 181
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 273
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 274
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->b:Landroidx/fragment/app/c;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->a()V

    .line 275
    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->b:Landroidx/fragment/app/c;

    .line 3362
    iget-object p0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/e;

    iget-object p0, p0, Landroidx/fragment/app/e;->e:Landroidx/fragment/app/g;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/g;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 284
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->b:Landroidx/fragment/app/c;

    .line 4116
    iget-object v1, v0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/e;

    iget-object v1, v1, Landroidx/fragment/app/e;->e:Landroidx/fragment/app/g;

    iget-object v2, v0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/e;

    iget-object v0, v0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/e;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/g;->a(Landroidx/fragment/app/e;Landroidx/fragment/app/b;Landroidx/fragment/app/Fragment;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string v1, "android:support:fragments"

    .line 287
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 288
    iget-object v2, p0, Landroidx/fragment/app/FragmentActivity;->b:Landroidx/fragment/app/c;

    .line 4190
    iget-object v3, v2, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/e;

    instance-of v3, v3, Landroidx/lifecycle/t;

    if-eqz v3, :cond_2

    .line 4195
    iget-object v2, v2, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/e;

    iget-object v2, v2, Landroidx/fragment/app/e;->e:Landroidx/fragment/app/g;

    invoke-virtual {v2, v1}, Landroidx/fragment/app/g;->a(Landroid/os/Parcelable;)V

    const-string v1, "android:support:next_request_index"

    .line 291
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "android:support:next_request_index"

    .line 293
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroidx/fragment/app/FragmentActivity;->i:I

    const-string v1, "android:support:request_indicies"

    .line 294
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    const-string v2, "android:support:request_fragment_who"

    .line 295
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 296
    array-length v3, v1

    array-length v4, v2

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 300
    :cond_0
    new-instance v3, Landroidx/b/h;

    array-length v4, v1

    invoke-direct {v3, v4}, Landroidx/b/h;-><init>(I)V

    iput-object v3, p0, Landroidx/fragment/app/FragmentActivity;->j:Landroidx/b/h;

    move v3, v0

    .line 301
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_3

    .line 302
    iget-object v4, p0, Landroidx/fragment/app/FragmentActivity;->j:Landroidx/b/h;

    aget v5, v1, v3

    aget-object v6, v2, v3

    invoke-virtual {v4, v5, v6}, Landroidx/b/h;->b(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v1, "FragmentActivity"

    const-string v2, "Invalid requestCode mapping in savedInstanceState."

    .line 298
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4191
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you\'re still using retainNestedNonConfig()."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 308
    :cond_3
    :goto_2
    iget-object v1, p0, Landroidx/fragment/app/FragmentActivity;->j:Landroidx/b/h;

    if-nez v1, :cond_4

    .line 309
    new-instance v1, Landroidx/b/h;

    invoke-direct {v1}, Landroidx/b/h;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/FragmentActivity;->j:Landroidx/b/h;

    .line 310
    iput v0, p0, Landroidx/fragment/app/FragmentActivity;->i:I

    .line 313
    :cond_4
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 315
    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->c:Landroidx/lifecycle/i;

    sget-object v0, Landroidx/lifecycle/e$a;->ON_CREATE:Landroidx/lifecycle/e$a;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    .line 316
    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->b:Landroidx/fragment/app/c;

    .line 4235
    iget-object p0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/e;

    iget-object p0, p0, Landroidx/fragment/app/e;->e:Landroidx/fragment/app/g;

    invoke-virtual {p0}, Landroidx/fragment/app/g;->l()V

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 325
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    .line 326
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->b:Landroidx/fragment/app/c;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p0

    .line 4386
    iget-object v0, v0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/e;

    iget-object v0, v0, Landroidx/fragment/app/e;->e:Landroidx/fragment/app/g;

    invoke-virtual {v0, p2, p0}, Landroidx/fragment/app/g;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p0

    or-int/2addr p0, p1

    return p0

    .line 329
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 336
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentActivity;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 338
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/activity/ComponentActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 347
    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 349
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .line 365
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onDestroy()V

    .line 366
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->b:Landroidx/fragment/app/c;

    .line 5329
    iget-object v0, v0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/e;

    iget-object v0, v0, Landroidx/fragment/app/e;->e:Landroidx/fragment/app/g;

    invoke-virtual {v0}, Landroidx/fragment/app/g;->q()V

    .line 367
    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->c:Landroidx/lifecycle/i;

    sget-object v0, Landroidx/lifecycle/e$a;->ON_DESTROY:Landroidx/lifecycle/e$a;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 375
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onLowMemory()V

    .line 376
    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->b:Landroidx/fragment/app/c;

    .line 5374
    iget-object p0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/e;

    iget-object p0, p0, Landroidx/fragment/app/e;->e:Landroidx/fragment/app/g;

    invoke-virtual {p0}, Landroidx/fragment/app/g;->r()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 384
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 393
    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->b:Landroidx/fragment/app/c;

    .line 5424
    iget-object p0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/e;

    iget-object p0, p0, Landroidx/fragment/app/e;->e:Landroidx/fragment/app/g;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/g;->b(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 390
    :cond_2
    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->b:Landroidx/fragment/app/c;

    .line 5411
    iget-object p0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/e;

    iget-object p0, p0, Landroidx/fragment/app/e;->e:Landroidx/fragment/app/g;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/g;->a(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    .line 250
    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->b:Landroidx/fragment/app/c;

    .line 3340
    iget-object p0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/e;

    iget-object p0, p0, Landroidx/fragment/app/e;->e:Landroidx/fragment/app/g;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/g;->a(Z)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .line 437
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 438
    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->b:Landroidx/fragment/app/c;

    invoke-virtual {p0}, Landroidx/fragment/app/c;->a()V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 407
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->b:Landroidx/fragment/app/c;

    .line 5435
    iget-object v0, v0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/e;

    iget-object v0, v0, Landroidx/fragment/app/e;->e:Landroidx/fragment/app/g;

    invoke-virtual {v0, p2}, Landroidx/fragment/app/g;->b(Landroid/view/Menu;)V

    .line 410
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 418
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onPause()V

    const/4 v0, 0x0

    .line 419
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->e:Z

    .line 420
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->b:Landroidx/fragment/app/c;

    .line 6279
    iget-object v0, v0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/e;

    iget-object v0, v0, Landroidx/fragment/app/e;->e:Landroidx/fragment/app/g;

    const/4 v1, 0x3

    .line 6629
    invoke-virtual {v0, v1}, Landroidx/fragment/app/g;->b(I)V

    .line 421
    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->c:Landroidx/lifecycle/i;

    sget-object v0, Landroidx/lifecycle/e$a;->ON_PAUSE:Landroidx/lifecycle/e$a;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0

    .line 265
    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->b:Landroidx/fragment/app/c;

    .line 3351
    iget-object p0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/e;

    iget-object p0, p0, Landroidx/fragment/app/e;->e:Landroidx/fragment/app/g;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/g;->b(Z)V

    return-void
.end method

.method protected onPostResume()V
    .locals 2

    .line 467
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onPostResume()V

    .line 7478
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->c:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_RESUME:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    .line 7479
    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->b:Landroidx/fragment/app/c;

    .line 8268
    iget-object p0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/e;

    iget-object p0, p0, Landroidx/fragment/app/e;->e:Landroidx/fragment/app/g;

    invoke-virtual {p0}, Landroidx/fragment/app/g;->o()V

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 8502
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    .line 489
    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->b:Landroidx/fragment/app/c;

    .line 9398
    iget-object p0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/e;

    iget-object p0, p0, Landroidx/fragment/app/e;->e:Landroidx/fragment/app/g;

    invoke-virtual {p0, p3}, Landroidx/fragment/app/g;->a(Landroid/view/Menu;)Z

    move-result p0

    or-int/2addr p0, p1

    return p0

    .line 492
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 754
    iget-object p2, p0, Landroidx/fragment/app/FragmentActivity;->b:Landroidx/fragment/app/c;

    invoke-virtual {p2}, Landroidx/fragment/app/c;->a()V

    shr-int/lit8 p1, p1, 0x10

    const p2, 0xffff

    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 759
    iget-object p2, p0, Landroidx/fragment/app/FragmentActivity;->j:Landroidx/b/h;

    const/4 p3, 0x0

    .line 12109
    invoke-virtual {p2, p1, p3}, Landroidx/b/h;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 759
    check-cast p2, Ljava/lang/String;

    .line 760
    iget-object p3, p0, Landroidx/fragment/app/FragmentActivity;->j:Landroidx/b/h;

    invoke-virtual {p3, p1}, Landroidx/b/h;->a(I)V

    if-nez p2, :cond_0

    const-string p0, "FragmentActivity"

    const-string p1, "Activity result delivered for unknown Fragment."

    .line 762
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 765
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->b:Landroidx/fragment/app/c;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/c;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "FragmentActivity"

    const-string p1, "Activity result no fragment exists for who: "

    .line 767
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 456
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onResume()V

    const/4 v0, 0x1

    .line 457
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->e:Z

    .line 458
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->b:Landroidx/fragment/app/c;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->a()V

    .line 459
    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->b:Landroidx/fragment/app/c;

    invoke-virtual {p0}, Landroidx/fragment/app/c;->b()Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 510
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 511
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;->f()V

    .line 512
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->c:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_STOP:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    .line 513
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->b:Landroidx/fragment/app/c;

    .line 10151
    iget-object v0, v0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/e;

    iget-object v0, v0, Landroidx/fragment/app/e;->e:Landroidx/fragment/app/g;

    invoke-virtual {v0}, Landroidx/fragment/app/g;->j()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:support:fragments"

    .line 515
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 517
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->j:Landroidx/b/h;

    invoke-virtual {v0}, Landroidx/b/h;->b()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "android:support:next_request_index"

    .line 518
    iget v1, p0, Landroidx/fragment/app/FragmentActivity;->i:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 520
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->j:Landroidx/b/h;

    invoke-virtual {v0}, Landroidx/b/h;->b()I

    move-result v0

    new-array v0, v0, [I

    .line 521
    iget-object v1, p0, Landroidx/fragment/app/FragmentActivity;->j:Landroidx/b/h;

    invoke-virtual {v1}, Landroidx/b/h;->b()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 522
    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/FragmentActivity;->j:Landroidx/b/h;

    invoke-virtual {v3}, Landroidx/b/h;->b()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 523
    iget-object v3, p0, Landroidx/fragment/app/FragmentActivity;->j:Landroidx/b/h;

    invoke-virtual {v3, v2}, Landroidx/b/h;->b(I)I

    move-result v3

    aput v3, v0, v2

    .line 524
    iget-object v3, p0, Landroidx/fragment/app/FragmentActivity;->j:Landroidx/b/h;

    invoke-virtual {v3, v2}, Landroidx/b/h;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "android:support:request_indicies"

    .line 526
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string p0, "android:support:request_fragment_who"

    .line 527
    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 536
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onStart()V

    const/4 v0, 0x0

    .line 538
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->f:Z

    .line 540
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 541
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->d:Z

    .line 542
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->b:Landroidx/fragment/app/c;

    .line 10246
    iget-object v0, v0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/e;

    iget-object v0, v0, Landroidx/fragment/app/e;->e:Landroidx/fragment/app/g;

    invoke-virtual {v0}, Landroidx/fragment/app/g;->m()V

    .line 545
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->b:Landroidx/fragment/app/c;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->a()V

    .line 546
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->b:Landroidx/fragment/app/c;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->b()Z

    .line 550
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->c:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_START:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    .line 551
    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->b:Landroidx/fragment/app/c;

    .line 10257
    iget-object p0, p0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/e;

    iget-object p0, p0, Landroidx/fragment/app/e;->e:Landroidx/fragment/app/g;

    invoke-virtual {p0}, Landroidx/fragment/app/g;->n()V

    return-void
.end method

.method public onStateNotSaved()V
    .locals 0

    .line 446
    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->b:Landroidx/fragment/app/c;

    invoke-virtual {p0}, Landroidx/fragment/app/c;->a()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 559
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onStop()V

    const/4 v0, 0x1

    .line 561
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->f:Z

    .line 562
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;->f()V

    .line 564
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->b:Landroidx/fragment/app/c;

    .line 10290
    iget-object v0, v0, Landroidx/fragment/app/c;->a:Landroidx/fragment/app/e;

    iget-object v0, v0, Landroidx/fragment/app/e;->e:Landroidx/fragment/app/g;

    invoke-virtual {v0}, Landroidx/fragment/app/g;->p()V

    .line 565
    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->c:Landroidx/lifecycle/i;

    sget-object v0, Landroidx/lifecycle/e$a;->ON_STOP:Landroidx/lifecycle/e$a;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .line 658
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->h:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 660
    invoke-static {p2}, Landroidx/fragment/app/FragmentActivity;->a(I)V

    .line 663
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .line 671
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->h:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 673
    invoke-static {p2}, Landroidx/fragment/app/FragmentActivity;->a(I)V

    .line 676
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 1
    .param p1    # Landroid/content/IntentSender;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .line 685
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->g:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 687
    invoke-static {p2}, Landroidx/fragment/app/FragmentActivity;->a(I)V

    .line 690
    :cond_0
    invoke-super/range {p0 .. p6}, Landroidx/activity/ComponentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/content/IntentSender;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .line 700
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->g:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 702
    invoke-static {p2}, Landroidx/fragment/app/FragmentActivity;->a(I)V

    .line 705
    :cond_0
    invoke-super/range {p0 .. p7}, Landroidx/activity/ComponentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method
