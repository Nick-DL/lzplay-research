.class public Lcom/x/plus/pro/SettingActivity;
.super Lcom/x/plus/pro/base/BaseActivity;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/plus/pro/SettingActivity$c;,
        Lcom/x/plus/pro/SettingActivity$a;,
        Lcom/x/plus/pro/SettingActivity$b;
    }
.end annotation


# instance fields
.field private k:Landroid/widget/ListView;

.field private l:Lcom/x/plus/pro/SettingActivity$a;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/x/plus/pro/SettingActivity$b;",
            ">;"
        }
    .end annotation
.end field

.field private final n:[I

.field private final o:[I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 23
    invoke-direct {p0}, Lcom/x/plus/pro/base/BaseActivity;-><init>()V

    const/4 v0, 0x3

    .line 27
    new-array v1, v0, [I

    fill-array-data v1, :array_14

    iput-object v1, p0, Lcom/x/plus/pro/SettingActivity;->n:[I

    .line 32
    new-array v0, v0, [I

    fill-array-data v0, :array_1e

    iput-object v0, p0, Lcom/x/plus/pro/SettingActivity;->o:[I

    return-void

    nop

    :array_14
    .array-data 4
        0x7f0c001f
        0x7f0c001f
        0x7f0c001f
    .end array-data

    :array_1e
    .array-data 4
        0x7f0b0017
        0x7f0b0017
        0x7f0b0017
    .end array-data
.end method

.method static synthetic a(Lcom/x/plus/pro/SettingActivity;)Ljava/util/List;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/x/plus/pro/SettingActivity;->m:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 40
    invoke-super {p0, p1}, Lcom/x/plus/pro/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a001f

    .line 41
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/SettingActivity;->setContentView(I)V

    const p1, 0x7f070070

    .line 1062
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 1063
    new-instance v0, Lcom/x/plus/pro/SettingActivity$2;

    invoke-direct {v0, p0}, Lcom/x/plus/pro/SettingActivity$2;-><init>(Lcom/x/plus/pro/SettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f07008b

    .line 43
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/x/plus/pro/SettingActivity;->k:Landroid/widget/ListView;

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/x/plus/pro/SettingActivity;->m:Ljava/util/List;

    const/4 p1, 0x0

    .line 45
    :goto_2d
    iget-object v0, p0, Lcom/x/plus/pro/SettingActivity;->n:[I

    array-length v0, v0

    if-ge p1, v0, :cond_4b

    .line 46
    new-instance v0, Lcom/x/plus/pro/SettingActivity$b;

    invoke-direct {v0, p0}, Lcom/x/plus/pro/SettingActivity$b;-><init>(Lcom/x/plus/pro/SettingActivity;)V

    .line 47
    iget-object v1, p0, Lcom/x/plus/pro/SettingActivity;->o:[I

    aget v1, v1, p1

    iput v1, v0, Lcom/x/plus/pro/SettingActivity$b;->a:I

    .line 48
    iget-object v1, p0, Lcom/x/plus/pro/SettingActivity;->n:[I

    aget v1, v1, p1

    iput v1, v0, Lcom/x/plus/pro/SettingActivity$b;->b:I

    .line 49
    iget-object v1, p0, Lcom/x/plus/pro/SettingActivity;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_2d

    .line 51
    :cond_4b
    new-instance p1, Lcom/x/plus/pro/SettingActivity$a;

    invoke-direct {p1, p0}, Lcom/x/plus/pro/SettingActivity$a;-><init>(Lcom/x/plus/pro/SettingActivity;)V

    iput-object p1, p0, Lcom/x/plus/pro/SettingActivity;->l:Lcom/x/plus/pro/SettingActivity$a;

    .line 52
    iget-object p1, p0, Lcom/x/plus/pro/SettingActivity;->k:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/x/plus/pro/SettingActivity;->l:Lcom/x/plus/pro/SettingActivity$a;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 53
    iget-object p1, p0, Lcom/x/plus/pro/SettingActivity;->k:Landroid/widget/ListView;

    new-instance v0, Lcom/x/plus/pro/SettingActivity$1;

    invoke-direct {v0, p0}, Lcom/x/plus/pro/SettingActivity$1;-><init>(Lcom/x/plus/pro/SettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 73
    invoke-super {p0}, Lcom/x/plus/pro/base/BaseActivity;->onDestroy()V

    const/4 v0, -0x1

    .line 74
    invoke-virtual {p0, v0}, Lcom/x/plus/pro/SettingActivity;->setResult(I)V

    return-void
.end method
