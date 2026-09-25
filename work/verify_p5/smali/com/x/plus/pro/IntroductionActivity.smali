.class public Lcom/x/plus/pro/IntroductionActivity;
.super Lcom/x/plus/pro/base/BaseActivity;
.source "IntroductionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/plus/pro/IntroductionActivity$a;
    }
.end annotation


# instance fields
.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/x/plus/pro/IntroductionActivity$a;

.field private m:Landroidx/viewpager/widget/ViewPager;

.field private n:[Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/x/plus/pro/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/x/plus/pro/IntroductionActivity;)[Landroid/widget/ImageView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/x/plus/pro/IntroductionActivity;->n:[Landroid/widget/ImageView;

    return-object p0
.end method

.method private i()V
    .locals 4

    const v0, 0x7f0700f0

    .line 96
    invoke-virtual {p0, v0}, Lcom/x/plus/pro/IntroductionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/x/plus/pro/IntroductionActivity;->p:Landroid/widget/LinearLayout;

    .line 98
    iget-object v0, p0, Lcom/x/plus/pro/IntroductionActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/x/plus/pro/IntroductionActivity;->n:[Landroid/widget/ImageView;

    const/4 v0, 0x0

    move v1, v0

    .line 99
    :goto_0
    iget-object v2, p0, Lcom/x/plus/pro/IntroductionActivity;->n:[Landroid/widget/ImageView;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 101
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/x/plus/pro/IntroductionActivity;->o:Landroid/widget/ImageView;

    .line 102
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x24

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    .line 103
    invoke-virtual {v2, v3, v0, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 105
    iget-object v3, p0, Lcom/x/plus/pro/IntroductionActivity;->o:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iget-object v2, p0, Lcom/x/plus/pro/IntroductionActivity;->n:[Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/x/plus/pro/IntroductionActivity;->o:Landroid/widget/ImageView;

    aput-object v3, v2, v1

    if-nez v1, :cond_0

    .line 111
    iget-object v2, p0, Lcom/x/plus/pro/IntroductionActivity;->n:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    const v3, 0x7f0b0004

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 118
    :cond_0
    iget-object v2, p0, Lcom/x/plus/pro/IntroductionActivity;->n:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    const v3, 0x7f0b0007

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 121
    :goto_1
    iget-object v2, p0, Lcom/x/plus/pro/IntroductionActivity;->p:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/x/plus/pro/IntroductionActivity;->n:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 40
    invoke-super {p0, p1}, Lcom/x/plus/pro/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a001c

    .line 41
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/IntroductionActivity;->setContentView(I)V

    const p1, 0x7f070086

    .line 1047
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/IntroductionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 1049
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1050
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/x/plus/pro/IntroductionActivity;->k:Ljava/util/List;

    .line 1051
    iget-object v1, p0, Lcom/x/plus/pro/IntroductionActivity;->k:Ljava/util/List;

    const v2, 0x7f0a0026

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1052
    iget-object v1, p0, Lcom/x/plus/pro/IntroductionActivity;->k:Ljava/util/List;

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1053
    iget-object v1, p0, Lcom/x/plus/pro/IntroductionActivity;->k:Ljava/util/List;

    const v2, 0x7f0a0027

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1055
    new-instance p1, Lcom/x/plus/pro/IntroductionActivity$a;

    iget-object v0, p0, Lcom/x/plus/pro/IntroductionActivity;->k:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcom/x/plus/pro/IntroductionActivity$a;-><init>(Lcom/x/plus/pro/IntroductionActivity;Ljava/util/List;)V

    iput-object p1, p0, Lcom/x/plus/pro/IntroductionActivity;->l:Lcom/x/plus/pro/IntroductionActivity$a;

    const p1, 0x7f0700f3

    .line 1056
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/IntroductionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/x/plus/pro/IntroductionActivity;->m:Landroidx/viewpager/widget/ViewPager;

    .line 1057
    iget-object p1, p0, Lcom/x/plus/pro/IntroductionActivity;->m:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/x/plus/pro/IntroductionActivity;->l:Lcom/x/plus/pro/IntroductionActivity$a;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    .line 1058
    iget-object p1, p0, Lcom/x/plus/pro/IntroductionActivity;->m:Landroidx/viewpager/widget/ViewPager;

    .line 1745
    iget-object v0, p1, Landroidx/viewpager/widget/ViewPager;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1746
    iget-object p1, p1, Landroidx/viewpager/widget/ViewPager;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1059
    :cond_0
    iget-object p1, p0, Lcom/x/plus/pro/IntroductionActivity;->m:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/x/plus/pro/IntroductionActivity$1;

    invoke-direct {v0, p0}, Lcom/x/plus/pro/IntroductionActivity$1;-><init>(Lcom/x/plus/pro/IntroductionActivity;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$f;)V

    .line 1081
    iget-object p1, p0, Lcom/x/plus/pro/IntroductionActivity;->k:Ljava/util/List;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 1082
    new-instance v0, Lcom/x/plus/pro/IntroductionActivity$2;

    invoke-direct {v0, p0}, Lcom/x/plus/pro/IntroductionActivity$2;-><init>(Lcom/x/plus/pro/IntroductionActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 43
    invoke-direct {p0}, Lcom/x/plus/pro/IntroductionActivity;->i()V

    return-void
.end method
