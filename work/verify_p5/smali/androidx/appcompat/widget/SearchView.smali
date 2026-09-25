.class public Landroidx/appcompat/widget/SearchView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "SearchView.java"

# interfaces
.implements Landroidx/appcompat/view/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/SearchView$a;,
        Landroidx/appcompat/widget/SearchView$SearchAutoComplete;,
        Landroidx/appcompat/widget/SearchView$e;,
        Landroidx/appcompat/widget/SearchView$SavedState;,
        Landroidx/appcompat/widget/SearchView$d;,
        Landroidx/appcompat/widget/SearchView$b;,
        Landroidx/appcompat/widget/SearchView$c;
    }
.end annotation


# static fields
.field static final p:Landroidx/appcompat/widget/SearchView$a;


# instance fields
.field private final A:I

.field private final B:I

.field private final C:Ljava/lang/CharSequence;

.field private D:Landroidx/appcompat/widget/SearchView$c;

.field private E:Landroidx/appcompat/widget/SearchView$b;

.field private F:Landroid/view/View$OnClickListener;

.field private G:Z

.field private H:Z

.field private I:Ljava/lang/CharSequence;

.field private J:Z

.field private K:Z

.field private L:I

.field private M:Z

.field private N:Ljava/lang/CharSequence;

.field private O:Ljava/lang/CharSequence;

.field private P:Z

.field private Q:I

.field private final R:Ljava/lang/Runnable;

.field private S:Ljava/lang/Runnable;

.field private final T:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private final U:Landroid/view/View$OnClickListener;

.field private final V:Landroid/widget/TextView$OnEditorActionListener;

.field private final W:Landroid/widget/AdapterView$OnItemClickListener;

.field final a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

.field private final aa:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private ab:Landroid/text/TextWatcher;

.field final b:Landroid/view/View;

.field final c:Landroid/widget/ImageView;

.field final d:Landroid/widget/ImageView;

.field final e:Landroid/widget/ImageView;

.field final f:Landroid/widget/ImageView;

.field final g:Landroid/view/View;

.field final h:Landroid/content/Intent;

.field final i:Landroid/content/Intent;

.field j:Landroid/view/View$OnFocusChangeListener;

.field k:Landroidx/appcompat/widget/SearchView$d;

.field l:Z

.field m:Landroidx/c/a/a;

.field n:Landroid/app/SearchableInfo;

.field o:Landroid/os/Bundle;

.field q:Landroid/view/View$OnKeyListener;

.field private final r:Landroid/view/View;

.field private final s:Landroid/view/View;

.field private t:Landroidx/appcompat/widget/SearchView$e;

.field private u:Landroid/graphics/Rect;

.field private v:Landroid/graphics/Rect;

.field private w:[I

.field private x:[I

.field private final y:Landroid/widget/ImageView;

.field private final z:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 176
    new-instance v0, Landroidx/appcompat/widget/SearchView$a;

    invoke-direct {v0}, Landroidx/appcompat/widget/SearchView$a;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/SearchView;->p:Landroidx/appcompat/widget/SearchView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 267
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 271
    sget v0, Landroidx/appcompat/R$attr;->searchViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 275
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->u:Landroid/graphics/Rect;

    .line 133
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->v:Landroid/graphics/Rect;

    const/4 v0, 0x2

    .line 134
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/appcompat/widget/SearchView;->w:[I

    .line 135
    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->x:[I

    .line 178
    new-instance v0, Landroidx/appcompat/widget/SearchView$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/SearchView$1;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->R:Ljava/lang/Runnable;

    .line 185
    new-instance v0, Landroidx/appcompat/widget/SearchView$3;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/SearchView$3;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->S:Ljava/lang/Runnable;

    .line 196
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->T:Ljava/util/WeakHashMap;

    .line 976
    new-instance v0, Landroidx/appcompat/widget/SearchView$6;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/SearchView$6;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->U:Landroid/view/View$OnClickListener;

    .line 998
    new-instance v0, Landroidx/appcompat/widget/SearchView$7;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/SearchView$7;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroid/view/View$OnKeyListener;

    .line 1161
    new-instance v0, Landroidx/appcompat/widget/SearchView$8;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/SearchView$8;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->V:Landroid/widget/TextView$OnEditorActionListener;

    .line 1407
    new-instance v0, Landroidx/appcompat/widget/SearchView$9;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/SearchView$9;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->W:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1419
    new-instance v0, Landroidx/appcompat/widget/SearchView$10;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/SearchView$10;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->aa:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1713
    new-instance v0, Landroidx/appcompat/widget/SearchView$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/SearchView$2;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->ab:Landroid/text/TextWatcher;

    .line 277
    sget-object v0, Landroidx/appcompat/R$styleable;->SearchView:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Landroidx/appcompat/widget/ae;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/ae;

    move-result-object p2

    .line 280
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 281
    sget p3, Landroidx/appcompat/R$styleable;->SearchView_layout:I

    sget v0, Landroidx/appcompat/R$layout;->abc_search_view:I

    invoke-virtual {p2, p3, v0}, Landroidx/appcompat/widget/ae;->f(II)I

    move-result p3

    const/4 v0, 0x1

    .line 283
    invoke-virtual {p1, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 285
    sget p1, Landroidx/appcompat/R$id;->search_src_text:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 286
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setSearchView(Landroidx/appcompat/widget/SearchView;)V

    .line 288
    sget p1, Landroidx/appcompat/R$id;->search_edit_frame:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->r:Landroid/view/View;

    .line 289
    sget p1, Landroidx/appcompat/R$id;->search_plate:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->b:Landroid/view/View;

    .line 290
    sget p1, Landroidx/appcompat/R$id;->submit_area:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->s:Landroid/view/View;

    .line 291
    sget p1, Landroidx/appcompat/R$id;->search_button:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->c:Landroid/widget/ImageView;

    .line 292
    sget p1, Landroidx/appcompat/R$id;->search_go_btn:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->d:Landroid/widget/ImageView;

    .line 293
    sget p1, Landroidx/appcompat/R$id;->search_close_btn:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->e:Landroid/widget/ImageView;

    .line 294
    sget p1, Landroidx/appcompat/R$id;->search_voice_btn:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->f:Landroid/widget/ImageView;

    .line 295
    sget p1, Landroidx/appcompat/R$id;->search_mag_icon:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->y:Landroid/widget/ImageView;

    .line 298
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->b:Landroid/view/View;

    sget p3, Landroidx/appcompat/R$styleable;->SearchView_queryBackground:I

    .line 299
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ae;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 298
    invoke-static {p1, p3}, Landroidx/core/e/r;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 300
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->s:Landroid/view/View;

    sget p3, Landroidx/appcompat/R$styleable;->SearchView_submitBackground:I

    .line 301
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ae;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 300
    invoke-static {p1, p3}, Landroidx/core/e/r;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 302
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->c:Landroid/widget/ImageView;

    sget p3, Landroidx/appcompat/R$styleable;->SearchView_searchIcon:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ae;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 303
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->d:Landroid/widget/ImageView;

    sget p3, Landroidx/appcompat/R$styleable;->SearchView_goIcon:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ae;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->e:Landroid/widget/ImageView;

    sget p3, Landroidx/appcompat/R$styleable;->SearchView_closeIcon:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ae;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->f:Landroid/widget/ImageView;

    sget p3, Landroidx/appcompat/R$styleable;->SearchView_voiceIcon:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ae;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->y:Landroid/widget/ImageView;

    sget p3, Landroidx/appcompat/R$styleable;->SearchView_searchIcon:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ae;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 308
    sget p1, Landroidx/appcompat/R$styleable;->SearchView_searchHintIcon:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/ae;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->z:Landroid/graphics/drawable/Drawable;

    .line 310
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->c:Landroid/widget/ImageView;

    .line 311
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Landroidx/appcompat/R$string;->abc_searchview_description_search:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 310
    invoke-static {p1, p3}, Landroidx/appcompat/widget/ag;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 314
    sget p1, Landroidx/appcompat/R$styleable;->SearchView_suggestionRowLayout:I

    sget p3, Landroidx/appcompat/R$layout;->abc_search_dropdown_item_icons_2line:I

    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/ae;->f(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/SearchView;->A:I

    .line 316
    sget p1, Landroidx/appcompat/R$styleable;->SearchView_commitIcon:I

    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/widget/ae;->f(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/SearchView;->B:I

    .line 318
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->c:Landroid/widget/ImageView;

    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->e:Landroid/widget/ImageView;

    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->d:Landroid/widget/ImageView;

    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->f:Landroid/widget/ImageView;

    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->ab:Landroid/text/TextWatcher;

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 325
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->V:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 326
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->W:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 327
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->aa:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 328
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->q:Landroid/view/View$OnKeyListener;

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 331
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    new-instance p3, Landroidx/appcompat/widget/SearchView$4;

    invoke-direct {p3, p0}, Landroidx/appcompat/widget/SearchView$4;-><init>(Landroidx/appcompat/widget/SearchView;)V

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 339
    sget p1, Landroidx/appcompat/R$styleable;->SearchView_iconifiedByDefault:I

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/widget/ae;->a(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 341
    sget p1, Landroidx/appcompat/R$styleable;->SearchView_android_maxWidth:I

    const/4 p3, -0x1

    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/ae;->d(II)I

    move-result p1

    if-eq p1, p3, :cond_0

    .line 343
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->setMaxWidth(I)V

    .line 346
    :cond_0
    sget p1, Landroidx/appcompat/R$styleable;->SearchView_defaultQueryHint:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/ae;->c(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->C:Ljava/lang/CharSequence;

    .line 347
    sget p1, Landroidx/appcompat/R$styleable;->SearchView_queryHint:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/ae;->c(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->I:Ljava/lang/CharSequence;

    .line 349
    sget p1, Landroidx/appcompat/R$styleable;->SearchView_android_imeOptions:I

    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/ae;->a(II)I

    move-result p1

    if-eq p1, p3, :cond_1

    .line 351
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->setImeOptions(I)V

    .line 354
    :cond_1
    sget p1, Landroidx/appcompat/R$styleable;->SearchView_android_inputType:I

    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/ae;->a(II)I

    move-result p1

    if-eq p1, p3, :cond_2

    .line 356
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->setInputType(I)V

    .line 360
    :cond_2
    sget p1, Landroidx/appcompat/R$styleable;->SearchView_android_focusable:I

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/widget/ae;->a(IZ)Z

    move-result p1

    .line 361
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->setFocusable(Z)V

    .line 2245
    iget-object p1, p2, Landroidx/appcompat/widget/ae;->a:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 366
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.speech.action.WEB_SEARCH"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/content/Intent;

    .line 367
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 368
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/content/Intent;

    const-string p3, "android.speech.extra.LANGUAGE_MODEL"

    const-string v0, "web_search"

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->i:Landroid/content/Intent;

    .line 372
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->i:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 374
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getDropDownAnchor()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->g:Landroid/view/View;

    .line 375
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->g:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 376
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->g:Landroid/view/View;

    new-instance p2, Landroidx/appcompat/widget/SearchView$5;

    invoke-direct {p2, p0}, Landroidx/appcompat/widget/SearchView$5;-><init>(Landroidx/appcompat/widget/SearchView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 385
    :cond_3
    iget-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->l:Z

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    .line 386
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->n()V

    return-void
.end method

.method private a(Landroid/database/Cursor;)Landroid/content/Intent;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "suggest_intent_action"

    .line 1656
    invoke-static {p1, v1}, Landroidx/appcompat/widget/z;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1659
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->n:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    const-string v1, "android.intent.action.SEARCH"

    :cond_1
    const-string v2, "suggest_intent_data"

    .line 1666
    invoke-static {p1, v2}, Landroidx/appcompat/widget/z;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1668
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->n:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_3

    const-string v3, "suggest_intent_data_id"

    .line 1672
    invoke-static {p1, v3}, Landroidx/appcompat/widget/z;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1674
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    if-nez v2, :cond_4

    move-object v2, v0

    goto :goto_0

    .line 1677
    :cond_4
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :goto_0
    const-string v3, "suggest_intent_query"

    .line 1679
    invoke-static {p1, v3}, Landroidx/appcompat/widget/z;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "suggest_intent_extra_data"

    .line 1680
    invoke-static {p1, v4}, Landroidx/appcompat/widget/z;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1682
    invoke-direct {p0, v1, v2, v4, v3}, Landroidx/appcompat/widget/SearchView;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1686
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const/4 p1, -0x1

    :goto_1
    const-string v1, "SearchView"

    .line 1690
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Search suggestions cursor at row "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " returned exception."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 1537
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000000

    .line 1538
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 1543
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_0
    const-string p1, "user_query"

    .line 1545
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->O:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    if-eqz p4, :cond_1

    const-string p1, "query"

    .line 1547
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz p3, :cond_2

    const-string p1, "intent_extra_data_key"

    .line 1550
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1552
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->o:Landroid/os/Bundle;

    if-eqz p1, :cond_3

    const-string p1, "app_data"

    .line 1553
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->o:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1559
    :cond_3
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView;->n:Landroid/app/SearchableInfo;

    invoke-virtual {p0}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1500
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "SearchView"

    const-string v1, "Failed launch activity: "

    .line 1502
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private a(Z)V
    .locals 6

    .line 869
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->G:Z

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 873
    :goto_0
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 875
    iget-object v5, p0, Landroidx/appcompat/widget/SearchView;->c:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 876
    invoke-direct {p0, v3}, Landroidx/appcompat/widget/SearchView;->b(Z)V

    .line 877
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->r:Landroid/view/View;

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 880
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->y:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->l:Z

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    .line 885
    :cond_3
    :goto_2
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->y:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 887
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->l()V

    if-nez v3, :cond_4

    move v1, v4

    .line 888
    :cond_4
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/SearchView;->c(Z)V

    .line 889
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->k()V

    return-void
.end method

.method static a(Landroid/content/Context;)Z
    .locals 1

    .line 1706
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    .line 1088
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->z:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1092
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getTextSize()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 1093
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->z:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1095
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, "   "

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1096
    new-instance v1, Landroid/text/style/ImageSpan;

    iget-object p0, p0, Landroidx/appcompat/widget/SearchView;->z:Landroid/graphics/drawable/Drawable;

    invoke-direct {v1, p0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x1

    const/4 v2, 0x2

    const/16 v3, 0x21

    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1097
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method private b(Z)V
    .locals 1

    .line 915
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->H:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->M:Z

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 919
    :goto_0
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private c(Z)V
    .locals 2

    .line 1154
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->M:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 10683
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->G:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1156
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    move p1, v1

    .line 1158
    :goto_0
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private c(I)Z
    .locals 1

    .line 1477
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->m:Landroidx/c/a/a;

    invoke-virtual {v0}, Landroidx/c/a/a;->a()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1478
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1480
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->a(Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object p1

    .line 1483
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->a(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getPreferredHeight()I
    .locals 1

    .line 864
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Landroidx/appcompat/R$dimen;->abc_search_view_preferred_height:I

    .line 865
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private getPreferredWidth()I
    .locals 1

    .line 859
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Landroidx/appcompat/R$dimen;->abc_search_view_preferred_width:I

    .line 860
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private j()Z
    .locals 1

    .line 910
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->H:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->M:Z

    if-eqz v0, :cond_1

    .line 9683
    :cond_0
    iget-boolean p0, p0, Landroidx/appcompat/widget/SearchView;->G:Z

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private k()V
    .locals 1

    .line 924
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->d:Landroid/widget/ImageView;

    .line 925
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->f:Landroid/widget/ImageView;

    .line 926
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 929
    :goto_0
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView;->s:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private l()V
    .locals 4

    .line 933
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 936
    iget-boolean v3, p0, Landroidx/appcompat/widget/SearchView;->l:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroidx/appcompat/widget/SearchView;->P:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 937
    :cond_1
    :goto_0
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->e:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 938
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView;->e:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_4

    if-eqz v0, :cond_3

    .line 940
    sget-object v0, Landroidx/appcompat/widget/SearchView;->ENABLED_STATE_SET:[I

    goto :goto_2

    :cond_3
    sget-object v0, Landroidx/appcompat/widget/SearchView;->EMPTY_STATE_SET:[I

    :goto_2
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_4
    return-void
.end method

.method private m()V
    .locals 1

    .line 945
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->R:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private n()V
    .locals 2

    .line 1102
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1103
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1291
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->P:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1293
    iput-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->P:Z

    .line 1294
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/SearchView;->Q:I

    .line 1295
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroidx/appcompat/widget/SearchView;->Q:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1296
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 1297
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    return-void
.end method

.method final a(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1174
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1175
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->O:Ljava/lang/CharSequence;

    .line 1176
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1177
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->b(Z)V

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1178
    :goto_0
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/SearchView;->c(Z)V

    .line 1179
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->l()V

    .line 1180
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->k()V

    .line 1181
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->D:Landroidx/appcompat/widget/SearchView$c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->N:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1182
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 1184
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->N:Ljava/lang/CharSequence;

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "android.intent.action.SEARCH"

    const/4 v1, 0x0

    .line 1517
    invoke-direct {p0, v0, v1, v1, p1}, Landroidx/appcompat/widget/SearchView;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 1518
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method final a(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1043
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->n:Landroid/app/SearchableInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1046
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->m:Landroidx/c/a/a;

    if-nez v0, :cond_1

    return v1

    .line 1049
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result p2

    if-eqz p2, :cond_7

    const/16 p2, 0x42

    if-eq p1, p2, :cond_6

    const/16 p2, 0x54

    if-eq p1, p2, :cond_6

    const/16 p2, 0x3d

    if-ne p1, p2, :cond_2

    goto :goto_2

    :cond_2
    const/16 p2, 0x15

    if-eq p1, p2, :cond_4

    const/16 v0, 0x16

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 p2, 0x13

    if-ne p1, p2, :cond_7

    .line 1076
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result p0

    if-nez p0, :cond_7

    return v1

    :cond_4
    :goto_0
    if-ne p1, p2, :cond_5

    move p1, v1

    goto :goto_1

    .line 1065
    :cond_5
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 1066
    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->length()I

    move-result p1

    .line 1067
    :goto_1
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1068
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setListSelection(I)V

    .line 1069
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->clearListSelection()V

    .line 1070
    sget-object p1, Landroidx/appcompat/widget/SearchView;->p:Landroidx/appcompat/widget/SearchView$a;

    iget-object p0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SearchView$a;->c(Landroid/widget/AutoCompleteTextView;)V

    const/4 p0, 0x1

    return p0

    .line 1054
    :cond_6
    :goto_2
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result p1

    .line 1055
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->b(I)Z

    move-result p0

    return p0

    :cond_7
    return v1
.end method

.method public final b()V
    .locals 3

    const-string v0, ""

    .line 12571
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 12573
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 12574
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->O:Ljava/lang/CharSequence;

    .line 1280
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    const/4 v0, 0x1

    .line 1281
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    .line 1282
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroidx/appcompat/widget/SearchView;->Q:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    const/4 v0, 0x0

    .line 1283
    iput-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->P:Z

    return-void
.end method

.method final b(I)Z
    .locals 2

    .line 1388
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->k:Landroidx/appcompat/widget/SearchView$d;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->k:Landroidx/appcompat/widget/SearchView$d;

    .line 1389
    invoke-interface {v0}, Landroidx/appcompat/widget/SearchView$d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 1390
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->c(I)Z

    .line 1391
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 13202
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    const/4 p0, 0x1

    return p0
.end method

.method public clearFocus()V
    .locals 2

    const/4 v0, 0x1

    .line 497
    iput-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->K:Z

    .line 498
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->clearFocus()V

    .line 499
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->clearFocus()V

    .line 500
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 501
    iput-boolean v1, p0, Landroidx/appcompat/widget/SearchView;->K:Z

    return-void
.end method

.method final d()V
    .locals 2

    .line 949
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    sget-object v0, Landroidx/appcompat/widget/SearchView;->FOCUSED_STATE_SET:[I

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/appcompat/widget/SearchView;->EMPTY_STATE_SET:[I

    .line 951
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 953
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 955
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 957
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 959
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->invalidate()V

    return-void
.end method

.method final e()V
    .locals 2

    .line 1188
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1189
    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    .line 1190
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->D:Landroidx/appcompat/widget/SearchView$c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->D:Landroidx/appcompat/widget/SearchView$c;

    .line 1191
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    invoke-interface {v1}, Landroidx/appcompat/widget/SearchView$c;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1192
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->n:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_1

    .line 1193
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->a(Ljava/lang/String;)V

    .line 1195
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 11202
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    :cond_2
    return-void
.end method

.method final f()V
    .locals 3

    .line 1206
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1207
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1208
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->l:Z

    if-eqz v0, :cond_2

    .line 1210
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->E:Landroidx/appcompat/widget/SearchView$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->E:Landroidx/appcompat/widget/SearchView$b;

    invoke-interface {v0}, Landroidx/appcompat/widget/SearchView$b;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1212
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 1214
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    return-void

    .line 1218
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1219
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1220
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    :cond_2
    return-void
.end method

.method final g()V
    .locals 2

    const/4 v0, 0x0

    .line 1226
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    .line 1227
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1228
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 1229
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->F:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 1230
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->F:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public getImeOptions()I
    .locals 0

    .line 452
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result p0

    return p0
.end method

.method public getInputType()I
    .locals 0

    .line 474
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getInputType()I

    move-result p0

    return p0
.end method

.method public getMaxWidth()I
    .locals 0

    .line 777
    iget p0, p0, Landroidx/appcompat/widget/SearchView;->L:I

    return p0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 0

    .line 559
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object p0

    return-object p0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 1

    .line 619
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->I:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 620
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView;->I:Ljava/lang/CharSequence;

    goto :goto_0

    .line 621
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->n:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->n:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 622
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Landroidx/appcompat/widget/SearchView;->n:Landroid/app/SearchableInfo;

    invoke-virtual {p0}, Landroid/app/SearchableInfo;->getHintId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    .line 624
    :cond_1
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView;->C:Ljava/lang/CharSequence;

    :goto_0
    return-object p0
.end method

.method getSuggestionCommitIconResId()I
    .locals 0

    .line 394
    iget p0, p0, Landroidx/appcompat/widget/SearchView;->B:I

    return p0
.end method

.method getSuggestionRowLayout()I
    .locals 0

    .line 390
    iget p0, p0, Landroidx/appcompat/widget/SearchView;->A:I

    return p0
.end method

.method public getSuggestionsAdapter()Landroidx/c/a/a;
    .locals 0

    .line 755
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView;->m:Landroidx/c/a/a;

    return-object p0
.end method

.method final h()V
    .locals 1

    .line 11683
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->G:Z

    .line 1258
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    .line 1261
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->m()V

    .line 1262
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1263
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->i()V

    :cond_0
    return-void
.end method

.method final i()V
    .locals 2

    .line 1697
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 1698
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->refreshAutoCompleteResults()V

    return-void

    .line 1700
    :cond_0
    sget-object v0, Landroidx/appcompat/widget/SearchView;->p:Landroidx/appcompat/widget/SearchView$a;

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$a;->a(Landroid/widget/AutoCompleteTextView;)V

    .line 1701
    sget-object v0, Landroidx/appcompat/widget/SearchView;->p:Landroidx/appcompat/widget/SearchView$a;

    iget-object p0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/SearchView$a;->b(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 964
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->R:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 965
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->S:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 966
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 832
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    if-eqz p1, :cond_1

    .line 837
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->u:Landroid/graphics/Rect;

    .line 8851
    iget-object p4, p0, Landroidx/appcompat/widget/SearchView;->w:[I

    invoke-virtual {p1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 8852
    iget-object p4, p0, Landroidx/appcompat/widget/SearchView;->x:[I

    invoke-virtual {p0, p4}, Landroidx/appcompat/widget/SearchView;->getLocationInWindow([I)V

    .line 8853
    iget-object p4, p0, Landroidx/appcompat/widget/SearchView;->w:[I

    const/4 v0, 0x1

    aget p4, p4, v0

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->x:[I

    aget v0, v1, v0

    sub-int/2addr p4, v0

    .line 8854
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->w:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->x:[I

    aget v2, v2, v1

    sub-int/2addr v0, v2

    .line 8855
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, p4

    invoke-virtual {p2, v0, p4, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 838
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->v:Landroid/graphics/Rect;

    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->u:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget-object p4, p0, Landroidx/appcompat/widget/SearchView;->u:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->right:I

    sub-int/2addr p5, p3

    invoke-virtual {p1, p2, v1, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 840
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$e;

    if-nez p1, :cond_0

    .line 841
    new-instance p1, Landroidx/appcompat/widget/SearchView$e;

    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->v:Landroid/graphics/Rect;

    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->u:Landroid/graphics/Rect;

    iget-object p4, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-direct {p1, p2, p3, p4}, Landroidx/appcompat/widget/SearchView$e;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$e;

    .line 843
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$e;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void

    .line 845
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$e;

    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->v:Landroid/graphics/Rect;

    iget-object p0, p0, Landroidx/appcompat/widget/SearchView;->u:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p0}, Landroidx/appcompat/widget/SearchView$e;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 8683
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->G:Z

    if-eqz v0, :cond_0

    .line 784
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    return-void

    .line 788
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 789
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 802
    :cond_1
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->L:I

    if-lez v0, :cond_6

    .line 803
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->L:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 808
    :cond_2
    iget p1, p0, Landroidx/appcompat/widget/SearchView;->L:I

    if-lez p1, :cond_3

    iget p1, p0, Landroidx/appcompat/widget/SearchView;->L:I

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->getPreferredWidth()I

    move-result p1

    goto :goto_0

    .line 794
    :cond_4
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->L:I

    if-lez v0, :cond_5

    .line 795
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->L:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 797
    :cond_5
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->getPreferredWidth()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 813
    :cond_6
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 814
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-eq v0, v1, :cond_8

    if-eqz v0, :cond_7

    goto :goto_1

    .line 821
    :cond_7
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->getPreferredHeight()I

    move-result p2

    goto :goto_1

    .line 818
    :cond_8
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->getPreferredHeight()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 826
    :goto_1
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 827
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 826
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1353
    instance-of v0, p1, Landroidx/appcompat/widget/SearchView$SavedState;

    if-nez v0, :cond_0

    .line 1354
    invoke-super {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1357
    :cond_0
    check-cast p1, Landroidx/appcompat/widget/SearchView$SavedState;

    .line 13075
    iget-object v0, p1, Landroidx/customview/view/AbsSavedState;->d:Landroid/os/Parcelable;

    .line 1358
    invoke-super {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1359
    iget-boolean p1, p1, Landroidx/appcompat/widget/SearchView$SavedState;->a:Z

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    .line 1360
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1345
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1346
    new-instance v1, Landroidx/appcompat/widget/SearchView$SavedState;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/SearchView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 12683
    iget-boolean p0, p0, Landroidx/appcompat/widget/SearchView;->G:Z

    .line 1347
    iput-boolean p0, v1, Landroidx/appcompat/widget/SearchView$SavedState;->a:Z

    return-object v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1269
    invoke-super {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->onWindowFocusChanged(Z)V

    .line 1271
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->m()V

    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2

    .line 480
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->K:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 482
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 6683
    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->G:Z

    if-nez v0, :cond_3

    .line 485
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 487
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    :cond_2
    return p1

    .line 491
    :cond_3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 0

    .line 429
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->o:Landroid/os/Bundle;

    return-void
.end method

.method public setIconified(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 670
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->f()V

    return-void

    .line 672
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->g()V

    return-void
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1

    .line 642
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->l:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 643
    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->l:Z

    .line 644
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    .line 645
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->n()V

    return-void
.end method

.method public setImeOptions(I)V
    .locals 0

    .line 441
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    return-void
.end method

.method public setInputType(I)V
    .locals 0

    .line 464
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 764
    iput p1, p0, Landroidx/appcompat/widget/SearchView;->L:I

    .line 766
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->requestLayout()V

    return-void
.end method

.method public setOnCloseListener(Landroidx/appcompat/widget/SearchView$b;)V
    .locals 0

    .line 520
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->E:Landroidx/appcompat/widget/SearchView$b;

    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    .line 529
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->j:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$c;)V
    .locals 0

    .line 511
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->D:Landroidx/appcompat/widget/SearchView$c;

    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 550
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->F:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnSuggestionListener(Landroidx/appcompat/widget/SearchView$d;)V
    .locals 0

    .line 538
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->k:Landroidx/appcompat/widget/SearchView$d;

    return-void
.end method

.method setQuery(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1510
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1512
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0

    .line 594
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->I:Ljava/lang/CharSequence;

    .line 595
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->n()V

    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 1

    .line 723
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->J:Z

    .line 724
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->m:Landroidx/c/a/a;

    instance-of v0, v0, Landroidx/appcompat/widget/z;

    if-eqz v0, :cond_1

    .line 725
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView;->m:Landroidx/c/a/a;

    check-cast p0, Landroidx/appcompat/widget/z;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 8119
    :goto_0
    iput p1, p0, Landroidx/appcompat/widget/z;->a:I

    :cond_1
    return-void
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 6

    .line 406
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->n:Landroid/app/SearchableInfo;

    .line 407
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->n:Landroid/app/SearchableInfo;

    const/4 v0, 0x0

    const/high16 v1, 0x10000

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    .line 3110
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->n:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v3

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    .line 3111
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->n:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v3

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 3112
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->n:Landroid/app/SearchableInfo;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getInputType()I

    move-result p1

    and-int/lit8 v3, p1, 0xf

    if-ne v3, v2, :cond_0

    const v3, -0x10001

    and-int/2addr p1, v3

    .line 3119
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->n:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    or-int/2addr p1, v1

    const/high16 v3, 0x80000

    or-int/2addr p1, v3

    .line 3130
    :cond_0
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 3131
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->m:Landroidx/c/a/a;

    if-eqz p1, :cond_1

    .line 3132
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->m:Landroidx/c/a/a;

    invoke-virtual {p1, v0}, Landroidx/c/a/a;->a(Landroid/database/Cursor;)V

    .line 3136
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->n:Landroid/app/SearchableInfo;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3137
    new-instance p1, Landroidx/appcompat/widget/z;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroidx/appcompat/widget/SearchView;->n:Landroid/app/SearchableInfo;

    iget-object v5, p0, Landroidx/appcompat/widget/SearchView;->T:Ljava/util/WeakHashMap;

    invoke-direct {p1, v3, p0, v4, v5}, Landroidx/appcompat/widget/z;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->m:Landroidx/c/a/a;

    .line 3139
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->m:Landroidx/c/a/a;

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3140
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->m:Landroidx/c/a/a;

    check-cast p1, Landroidx/appcompat/widget/z;

    iget-boolean v3, p0, Landroidx/appcompat/widget/SearchView;->J:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    goto :goto_0

    :cond_2
    move v3, v2

    .line 4119
    :goto_0
    iput v3, p1, Landroidx/appcompat/widget/z;->a:I

    .line 409
    :cond_3
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->n()V

    .line 4893
    :cond_4
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->n:Landroid/app/SearchableInfo;

    const/4 v3, 0x0

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->n:Landroid/app/SearchableInfo;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 4895
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->n:Landroid/app/SearchableInfo;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 4896
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/content/Intent;

    goto :goto_1

    .line 4897
    :cond_5
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->n:Landroid/app/SearchableInfo;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 4898
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->i:Landroid/content/Intent;

    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    .line 4901
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_7

    move v3, v2

    .line 412
    :cond_7
    iput-boolean v3, p0, Landroidx/appcompat/widget/SearchView;->M:Z

    .line 414
    iget-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->M:Z

    if-eqz p1, :cond_8

    .line 417
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const-string v0, "nm"

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 5683
    :cond_8
    iget-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->G:Z

    .line 419
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 0

    .line 695
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->H:Z

    .line 7683
    iget-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->G:Z

    .line 696
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    return-void
.end method

.method public setSuggestionsAdapter(Landroidx/c/a/a;)V
    .locals 0

    .line 745
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->m:Landroidx/c/a/a;

    .line 747
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object p0, p0, Landroidx/appcompat/widget/SearchView;->m:Landroidx/c/a/a;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
