.class final Lcom/x/plus/pro/SettingActivity$a;
.super Landroid/widget/BaseAdapter;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/plus/pro/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/x/plus/pro/SettingActivity;


# direct methods
.method constructor <init>(Lcom/x/plus/pro/SettingActivity;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/x/plus/pro/SettingActivity$a;->a:Lcom/x/plus/pro/SettingActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/x/plus/pro/SettingActivity$a;->a:Lcom/x/plus/pro/SettingActivity;

    invoke-static {v0}, Lcom/x/plus/pro/SettingActivity;->a(Lcom/x/plus/pro/SettingActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 89
    :cond_a
    iget-object p0, p0, Lcom/x/plus/pro/SettingActivity$a;->a:Lcom/x/plus/pro/SettingActivity;

    invoke-static {p0}, Lcom/x/plus/pro/SettingActivity;->a(Lcom/x/plus/pro/SettingActivity;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 2

    .line 95
    iget-object p0, p0, Lcom/x/plus/pro/SettingActivity$a;->a:Lcom/x/plus/pro/SettingActivity;

    invoke-static {p0}, Lcom/x/plus/pro/SettingActivity;->a(Lcom/x/plus/pro/SettingActivity;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getItemId(I)J
    .registers 2

    int-to-long p0, p1

    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 105
    iget-object v0, p0, Lcom/x/plus/pro/SettingActivity$a;->a:Lcom/x/plus/pro/SettingActivity;

    invoke-static {v0}, Lcom/x/plus/pro/SettingActivity;->a(Lcom/x/plus/pro/SettingActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/x/plus/pro/SettingActivity$b;

    if-nez p2, :cond_3b

    .line 108
    iget-object p0, p0, Lcom/x/plus/pro/SettingActivity$a;->a:Lcom/x/plus/pro/SettingActivity;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0a0029

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 109
    new-instance p0, Lcom/x/plus/pro/SettingActivity$c;

    invoke-direct {p0}, Lcom/x/plus/pro/SettingActivity$c;-><init>()V

    const p3, 0x7f070070

    .line 110
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/x/plus/pro/SettingActivity$c;->a:Landroid/widget/ImageView;

    const p3, 0x7f0700e6

    .line 111
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/x/plus/pro/SettingActivity$c;->b:Landroid/widget/TextView;

    .line 112
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_41

    .line 114
    :cond_3b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/x/plus/pro/SettingActivity$c;

    .line 116
    :goto_41
    iget-object p3, p0, Lcom/x/plus/pro/SettingActivity$c;->a:Landroid/widget/ImageView;

    iget v0, p1, Lcom/x/plus/pro/SettingActivity$b;->a:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 117
    iget-object p0, p0, Lcom/x/plus/pro/SettingActivity$c;->b:Landroid/widget/TextView;

    iget p1, p1, Lcom/x/plus/pro/SettingActivity$b;->b:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-object p2
.end method
