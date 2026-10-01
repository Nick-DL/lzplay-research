.class public final Landroidx/appcompat/view/menu/a;
.super Ljava/lang/Object;
.source "ActionMenuItem.java"

# interfaces
.implements Landroidx/core/a/a/b;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:Landroid/content/Intent;

.field private h:C

.field private i:I

.field private j:C

.field private k:I

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:I

.field private n:Landroid/content/Context;

.field private o:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private p:Ljava/lang/CharSequence;

.field private q:Ljava/lang/CharSequence;

.field private r:Landroid/content/res/ColorStateList;

.field private s:Landroid/graphics/PorterDuff$Mode;

.field private t:Z

.field private u:Z

.field private v:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .registers 5

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    .line 54
    iput v0, p0, Landroidx/appcompat/view/menu/a;->i:I

    .line 56
    iput v0, p0, Landroidx/appcompat/view/menu/a;->k:I

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Landroidx/appcompat/view/menu/a;->m:I

    const/4 v1, 0x0

    .line 68
    iput-object v1, p0, Landroidx/appcompat/view/menu/a;->r:Landroid/content/res/ColorStateList;

    .line 69
    iput-object v1, p0, Landroidx/appcompat/view/menu/a;->s:Landroid/graphics/PorterDuff$Mode;

    .line 70
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/a;->t:Z

    .line 71
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/a;->u:Z

    const/16 v1, 0x10

    .line 75
    iput v1, p0, Landroidx/appcompat/view/menu/a;->v:I

    .line 84
    iput-object p1, p0, Landroidx/appcompat/view/menu/a;->n:Landroid/content/Context;

    const p1, 0x102002c

    .line 85
    iput p1, p0, Landroidx/appcompat/view/menu/a;->a:I

    .line 86
    iput v0, p0, Landroidx/appcompat/view/menu/a;->b:I

    .line 87
    iput v0, p0, Landroidx/appcompat/view/menu/a;->c:I

    .line 88
    iput v0, p0, Landroidx/appcompat/view/menu/a;->d:I

    .line 89
    iput-object p2, p0, Landroidx/appcompat/view/menu/a;->e:Ljava/lang/CharSequence;

    return-void
.end method

.method private b()V
    .registers 3

    .line 444
    iget-object v0, p0, Landroidx/appcompat/view/menu/a;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_32

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/a;->t:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/a;->u:Z

    if-eqz v0, :cond_32

    .line 445
    :cond_c
    iget-object v0, p0, Landroidx/appcompat/view/menu/a;->l:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/a;->l:Landroid/graphics/drawable/Drawable;

    .line 446
    iget-object v0, p0, Landroidx/appcompat/view/menu/a;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/a;->l:Landroid/graphics/drawable/Drawable;

    .line 448
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/a;->t:Z

    if-eqz v0, :cond_27

    .line 449
    iget-object v0, p0, Landroidx/appcompat/view/menu/a;->l:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/view/menu/a;->r:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 452
    :cond_27
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/a;->u:Z

    if-eqz v0, :cond_32

    .line 453
    iget-object v0, p0, Landroidx/appcompat/view/menu/a;->l:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Landroidx/appcompat/view/menu/a;->s:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, p0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_32
    return-void
.end method


# virtual methods
.method public final a(Landroidx/core/e/b;)Landroidx/core/a/a/b;
    .registers 2

    .line 362
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final a(Ljava/lang/CharSequence;)Landroidx/core/a/a/b;
    .registers 2

    .line 393
    iput-object p1, p0, Landroidx/appcompat/view/menu/a;->p:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final a()Landroidx/core/e/b;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Ljava/lang/CharSequence;)Landroidx/core/a/a/b;
    .registers 2

    .line 404
    iput-object p1, p0, Landroidx/appcompat/view/menu/a;->q:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final collapseActionView()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final expandActionView()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final getActionProvider()Landroid/view/ActionProvider;
    .registers 1

    .line 347
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final getActionView()Landroid/view/View;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getAlphabeticModifiers()I
    .registers 1

    .line 99
    iget p0, p0, Landroidx/appcompat/view/menu/a;->k:I

    return p0
.end method

.method public final getAlphabeticShortcut()C
    .registers 1

    .line 94
    iget-char p0, p0, Landroidx/appcompat/view/menu/a;->j:C

    return p0
.end method

.method public final getContentDescription()Ljava/lang/CharSequence;
    .registers 1

    .line 399
    iget-object p0, p0, Landroidx/appcompat/view/menu/a;->p:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getGroupId()I
    .registers 1

    .line 104
    iget p0, p0, Landroidx/appcompat/view/menu/a;->b:I

    return p0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 109
    iget-object p0, p0, Landroidx/appcompat/view/menu/a;->l:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getIconTintList()Landroid/content/res/ColorStateList;
    .registers 1

    .line 425
    iget-object p0, p0, Landroidx/appcompat/view/menu/a;->r:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public final getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 1

    .line 440
    iget-object p0, p0, Landroidx/appcompat/view/menu/a;->s:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public final getIntent()Landroid/content/Intent;
    .registers 1

    .line 114
    iget-object p0, p0, Landroidx/appcompat/view/menu/a;->g:Landroid/content/Intent;

    return-object p0
.end method

.method public final getItemId()I
    .registers 1

    .line 119
    iget p0, p0, Landroidx/appcompat/view/menu/a;->a:I

    return p0
.end method

.method public final getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getNumericModifiers()I
    .registers 1

    .line 134
    iget p0, p0, Landroidx/appcompat/view/menu/a;->i:I

    return p0
.end method

.method public final getNumericShortcut()C
    .registers 1

    .line 129
    iget-char p0, p0, Landroidx/appcompat/view/menu/a;->h:C

    return p0
.end method

.method public final getOrder()I
    .registers 1

    .line 139
    iget p0, p0, Landroidx/appcompat/view/menu/a;->d:I

    return p0
.end method

.method public final getSubMenu()Landroid/view/SubMenu;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .registers 1

    .line 149
    iget-object p0, p0, Landroidx/appcompat/view/menu/a;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getTitleCondensed()Ljava/lang/CharSequence;
    .registers 2

    .line 154
    iget-object v0, p0, Landroidx/appcompat/view/menu/a;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    iget-object p0, p0, Landroidx/appcompat/view/menu/a;->f:Ljava/lang/CharSequence;

    return-object p0

    :cond_7
    iget-object p0, p0, Landroidx/appcompat/view/menu/a;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getTooltipText()Ljava/lang/CharSequence;
    .registers 1

    .line 410
    iget-object p0, p0, Landroidx/appcompat/view/menu/a;->q:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final hasSubMenu()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final isActionViewExpanded()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final isCheckable()Z
    .registers 2

    .line 164
    iget p0, p0, Landroidx/appcompat/view/menu/a;->v:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public final isChecked()Z
    .registers 1

    .line 169
    iget p0, p0, Landroidx/appcompat/view/menu/a;->v:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final isEnabled()Z
    .registers 1

    .line 174
    iget p0, p0, Landroidx/appcompat/view/menu/a;->v:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final isVisible()Z
    .registers 1

    .line 179
    iget p0, p0, Landroidx/appcompat/view/menu/a;->v:I

    and-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 2

    .line 342
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final synthetic setActionView(I)Landroid/view/MenuItem;
    .registers 2

    .line 1352
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .registers 2

    .line 2332
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .registers 2

    .line 184
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroidx/appcompat/view/menu/a;->j:C

    return-object p0
.end method

.method public final setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .registers 3

    .line 190
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroidx/appcompat/view/menu/a;->j:C

    .line 191
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/a;->k:I

    return-object p0
.end method

.method public final setCheckable(Z)Landroid/view/MenuItem;
    .registers 3

    .line 197
    iget v0, p0, Landroidx/appcompat/view/menu/a;->v:I

    and-int/lit8 v0, v0, -0x2

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/appcompat/view/menu/a;->v:I

    return-object p0
.end method

.method public final setChecked(Z)Landroid/view/MenuItem;
    .registers 3

    .line 208
    iget v0, p0, Landroidx/appcompat/view/menu/a;->v:I

    and-int/lit8 v0, v0, -0x3

    if-eqz p1, :cond_8

    const/4 p1, 0x2

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    or-int/2addr p1, v0

    iput p1, p0, Landroidx/appcompat/view/menu/a;->v:I

    return-object p0
.end method

.method public final bridge synthetic setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    .line 3393
    iput-object p1, p0, Landroidx/appcompat/view/menu/a;->p:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final setEnabled(Z)Landroid/view/MenuItem;
    .registers 3

    .line 214
    iget v0, p0, Landroidx/appcompat/view/menu/a;->v:I

    and-int/lit8 v0, v0, -0x11

    if-eqz p1, :cond_9

    const/16 p1, 0x10

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    or-int/2addr p1, v0

    iput p1, p0, Landroidx/appcompat/view/menu/a;->v:I

    return-object p0
.end method

.method public final setIcon(I)Landroid/view/MenuItem;
    .registers 3

    .line 229
    iput p1, p0, Landroidx/appcompat/view/menu/a;->m:I

    .line 230
    iget-object v0, p0, Landroidx/appcompat/view/menu/a;->n:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/a;->l:Landroid/graphics/drawable/Drawable;

    .line 232
    invoke-direct {p0}, Landroidx/appcompat/view/menu/a;->b()V

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .registers 2

    .line 220
    iput-object p1, p0, Landroidx/appcompat/view/menu/a;->l:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 221
    iput p1, p0, Landroidx/appcompat/view/menu/a;->m:I

    .line 223
    invoke-direct {p0}, Landroidx/appcompat/view/menu/a;->b()V

    return-object p0
.end method

.method public final setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .registers 2

    .line 415
    iput-object p1, p0, Landroidx/appcompat/view/menu/a;->r:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 416
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/a;->t:Z

    .line 418
    invoke-direct {p0}, Landroidx/appcompat/view/menu/a;->b()V

    return-object p0
.end method

.method public final setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .registers 2

    .line 430
    iput-object p1, p0, Landroidx/appcompat/view/menu/a;->s:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 431
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/a;->u:Z

    .line 433
    invoke-direct {p0}, Landroidx/appcompat/view/menu/a;->b()V

    return-object p0
.end method

.method public final setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .registers 2

    .line 238
    iput-object p1, p0, Landroidx/appcompat/view/menu/a;->g:Landroid/content/Intent;

    return-object p0
.end method

.method public final setNumericShortcut(C)Landroid/view/MenuItem;
    .registers 2

    .line 244
    iput-char p1, p0, Landroidx/appcompat/view/menu/a;->h:C

    return-object p0
.end method

.method public final setNumericShortcut(CI)Landroid/view/MenuItem;
    .registers 3

    .line 250
    iput-char p1, p0, Landroidx/appcompat/view/menu/a;->h:C

    .line 251
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/a;->i:I

    return-object p0
.end method

.method public final setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 2

    .line 388
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 2

    .line 257
    iput-object p1, p0, Landroidx/appcompat/view/menu/a;->o:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method public final setShortcut(CC)Landroid/view/MenuItem;
    .registers 3

    .line 263
    iput-char p1, p0, Landroidx/appcompat/view/menu/a;->h:C

    .line 264
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroidx/appcompat/view/menu/a;->j:C

    return-object p0
.end method

.method public final setShortcut(CCII)Landroid/view/MenuItem;
    .registers 5

    .line 271
    iput-char p1, p0, Landroidx/appcompat/view/menu/a;->h:C

    .line 272
    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/a;->i:I

    .line 273
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroidx/appcompat/view/menu/a;->j:C

    .line 274
    invoke-static {p4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/a;->k:I

    return-object p0
.end method

.method public final setShowAsAction(I)V
    .registers 2

    return-void
.end method

.method public final synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .registers 2

    .line 2367
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/a;->setShowAsAction(I)V

    return-object p0
.end method

.method public final setTitle(I)Landroid/view/MenuItem;
    .registers 3

    .line 286
    iget-object v0, p0, Landroidx/appcompat/view/menu/a;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/a;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    .line 280
    iput-object p1, p0, Landroidx/appcompat/view/menu/a;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    .line 292
    iput-object p1, p0, Landroidx/appcompat/view/menu/a;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final bridge synthetic setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    .line 2404
    iput-object p1, p0, Landroidx/appcompat/view/menu/a;->q:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final setVisible(Z)Landroid/view/MenuItem;
    .registers 4

    .line 298
    iget v0, p0, Landroidx/appcompat/view/menu/a;->v:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz p1, :cond_8

    const/4 v1, 0x0

    :cond_8
    or-int p1, v0, v1

    iput p1, p0, Landroidx/appcompat/view/menu/a;->v:I

    return-object p0
.end method
