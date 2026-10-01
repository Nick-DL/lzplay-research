.class public Landroidx/appcompat/app/AppCompatActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "AppCompatActivity.java"

# interfaces
.implements Landroidx/appcompat/app/c;
.implements Landroidx/core/app/i$a;


# instance fields
.field private k:Landroidx/appcompat/app/d;

.field private l:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 92
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentActivity;-><init>(I)V

    return-void
.end method

.method private i()Z
    .registers 7

    .line 1454
    invoke-static {p0}, Landroidx/core/app/c;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a6

    .line 2060
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x1

    const/16 v4, 0x10

    if-lt v2, v4, :cond_13

    .line 2061
    invoke-virtual {p0, v0}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v2

    goto :goto_28

    .line 2063
    :cond_13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_27

    const-string v5, "android.intent.action.MAIN"

    .line 2064
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    move v2, v3

    goto :goto_28

    :cond_27
    move v2, v1

    :goto_28
    if-eqz v2, :cond_92

    .line 420
    invoke-static {p0}, Landroidx/core/app/i;->a(Landroid/content/Context;)Landroidx/core/app/i;

    move-result-object v0

    .line 3161
    move-object v2, p0

    check-cast v2, Landroidx/core/app/i$a;

    invoke-interface {v2}, Landroidx/core/app/i$a;->f()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_3b

    .line 3164
    invoke-static {p0}, Landroidx/core/app/c;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v2

    :cond_3b
    if-eqz v2, :cond_55

    .line 3170
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_4d

    .line 3172
    iget-object v4, v0, Landroidx/core/app/i;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    .line 3174
    :cond_4d
    invoke-virtual {v0, v4}, Landroidx/core/app/i;->a(Landroid/content/ComponentName;)Landroidx/core/app/i;

    .line 4121
    iget-object v4, v0, Landroidx/core/app/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4283
    :cond_55
    iget-object v2, v0, Landroidx/core/app/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8a

    .line 4288
    iget-object v2, v0, Landroidx/core/app/i;->a:Ljava/util/ArrayList;

    iget-object v4, v0, Landroidx/core/app/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/content/Intent;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/Intent;

    .line 4289
    new-instance v4, Landroid/content/Intent;

    aget-object v5, v2, v1

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v5, 0x1000c000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    aput-object v4, v2, v1

    .line 4291
    iget-object v0, v0, Landroidx/core/app/i;->b:Landroid/content/Context;

    invoke-static {v0, v2}, Landroidx/core/content/a;->a(Landroid/content/Context;[Landroid/content/Intent;)Z

    .line 426
    :try_start_82
    invoke-static {p0}, Landroidx/core/app/a;->a(Landroid/app/Activity;)V
    :try_end_85
    .catch Ljava/lang/IllegalStateException; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_a5

    .line 430
    :catch_86
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_a5

    .line 4284
    :cond_8a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No intents added to TaskStackBuilder; cannot startActivities"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5108
    :cond_92
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_9a

    .line 5109
    invoke-virtual {p0, v0}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    goto :goto_a5

    :cond_9a
    const/high16 v1, 0x4000000

    .line 5111
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5112
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 5113
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_a5
    return v3

    :cond_a6
    return v1
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 176
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/d;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/d;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 2

    .line 97
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 98
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/d;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->h()V

    return-void
.end method

.method public closeOptionsMenu()V
    .registers 4

    .line 7130
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/d;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/d;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    .line 610
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    if-eqz v0, :cond_1b

    .line 611
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->e()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 612
    :cond_1b
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->closeOptionsMenu()V

    :cond_1e
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 552
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 5130
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/d;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/d;->a()Landroidx/appcompat/app/a;

    move-result-object v1

    const/16 v2, 0x52

    if-ne v0, v2, :cond_1a

    if-eqz v1, :cond_1a

    .line 555
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/a;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 p0, 0x1

    return p0

    .line 558
    :cond_1a
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final e()V
    .registers 1

    .line 263
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/d;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->i()V

    return-void
.end method

.method public final f()Landroid/content/Intent;
    .registers 1

    .line 454
    invoke-static {p0}, Landroidx/core/app/c;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public findViewById(I)Landroid/view/View;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->b(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final g()Landroidx/appcompat/app/d;
    .registers 2

    .line 542
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatActivity;->k:Landroidx/appcompat/app/d;

    if-nez v0, :cond_a

    .line 543
    invoke-static {p0, p0}, Landroidx/appcompat/app/d;->a(Landroid/app/Activity;Landroidx/appcompat/app/c;)Landroidx/appcompat/app/d;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatActivity;->k:Landroidx/appcompat/app/d;

    .line 545
    :cond_a
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatActivity;->k:Landroidx/appcompat/app/d;

    return-object p0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 1

    .line 156
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/d;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->b()Landroid/view/MenuInflater;

    move-result-object p0

    return-object p0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 3

    .line 563
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatActivity;->l:Landroid/content/res/Resources;

    if-nez v0, :cond_15

    invoke-static {}, Landroidx/appcompat/widget/aj;->a()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 564
    new-instance v0, Landroidx/appcompat/widget/aj;

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/aj;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatActivity;->l:Landroid/content/res/Resources;

    .line 566
    :cond_15
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatActivity;->l:Landroid/content/res/Resources;

    if-nez v0, :cond_1e

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0

    :cond_1e
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatActivity;->l:Landroid/content/res/Resources;

    return-object p0
.end method

.method public invalidateOptionsMenu()V
    .registers 1

    .line 268
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/d;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->i()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 181
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 183
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatActivity;->l:Landroid/content/res/Resources;

    if-eqz v0, :cond_14

    .line 186
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 187
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatActivity;->l:Landroid/content/res/Resources;

    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 190
    :cond_14
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContentChanged()V
    .registers 1

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 103
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/d;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroidx/appcompat/app/d;->k()V

    .line 105
    invoke-virtual {v0}, Landroidx/appcompat/app/d;->c()V

    .line 106
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 233
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 234
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/d;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->j()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 5575
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_3f

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 5576
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 5577
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_3f

    .line 5578
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 5579
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 5580
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 5581
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 5582
    invoke-virtual {v0, p2}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_3f

    move v0, v1

    goto :goto_40

    :cond_3f
    const/4 v0, 0x0

    :goto_40
    if-eqz v0, :cond_43

    return v1

    .line 595
    :cond_43
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4

    .line 219
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p0, 0x1

    return p0

    .line 1130
    :cond_8
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/d;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->a()Landroidx/appcompat/app/a;

    move-result-object p1

    .line 224
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v0, 0x102002c

    if-ne p2, v0, :cond_28

    if-eqz p1, :cond_28

    .line 225
    invoke-virtual {p1}, Landroidx/appcompat/app/a;->a()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_28

    .line 226
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;->i()Z

    move-result p0

    return p0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 3

    .line 517
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 3

    .line 528
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 117
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/d;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->d()V

    return-void
.end method

.method public onPostResume()V
    .registers 1

    .line 195
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPostResume()V

    .line 196
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/d;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->g()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    .line 533
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 534
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/d;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->l()V

    return-void
.end method

.method public onStart()V
    .registers 1

    .line 201
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    .line 202
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/d;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->e()V

    return-void
.end method

.method public onStop()V
    .registers 1

    .line 207
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    .line 208
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/d;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->f()V

    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .registers 3

    .line 239
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 240
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public openOptionsMenu()V
    .registers 4

    .line 6130
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/d;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/d;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    .line 601
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    if-eqz v0, :cond_1b

    .line 602
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->d()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 603
    :cond_1b
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->openOptionsMenu()V

    :cond_1e
    return-void
.end method

.method public setContentView(I)V
    .registers 2

    .line 161
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->c(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2

    .line 166
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->a(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 171
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/d;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/d;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTheme(I)V
    .registers 2

    .line 111
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->setTheme(I)V

    .line 112
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->a(I)V

    return-void
.end method
