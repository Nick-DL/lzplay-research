.class public final Lcom/x/plus/pro/view/a$a;
.super Ljava/lang/Object;
.source "CommDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/plus/pro/view/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/DialogInterface$OnClickListener;

.field b:Landroid/content/DialogInterface$OnClickListener;

.field c:Landroid/content/DialogInterface$OnClickListener;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/x/plus/pro/view/a$a;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/x/plus/pro/view/a$a;
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/x/plus/pro/view/a$a;->d:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/x/plus/pro/view/a$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/x/plus/pro/view/a$a;
    .registers 4

    .line 80
    iget-object v0, p0, Lcom/x/plus/pro/view/a$a;->d:Landroid/content/Context;

    .line 81
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/x/plus/pro/view/a$a;->g:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/x/plus/pro/view/a$a;->a:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public final a()Lcom/x/plus/pro/view/a;
    .registers 8

    .line 124
    iget-object v0, p0, Lcom/x/plus/pro/view/a$a;->d:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 127
    new-instance v1, Lcom/x/plus/pro/view/a;

    iget-object v2, p0, Lcom/x/plus/pro/view/a$a;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/x/plus/pro/view/a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0023

    const/4 v3, 0x0

    .line 128
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 129
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Lcom/x/plus/pro/view/a;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f0700f1

    .line 131
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0700d7

    .line 132
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    const v3, 0x7f070046

    .line 139
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 140
    iget-object v4, p0, Lcom/x/plus/pro/view/a$a;->g:Ljava/lang/String;

    const/16 v5, 0x8

    if-eqz v4, :cond_51

    .line 141
    iget-object v4, p0, Lcom/x/plus/pro/view/a$a;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v4, p0, Lcom/x/plus/pro/view/a$a;->a:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v4, :cond_57

    .line 143
    new-instance v4, Lcom/x/plus/pro/view/a$a$1;

    invoke-direct {v4, p0, v1}, Lcom/x/plus/pro/view/a$a$1;-><init>(Lcom/x/plus/pro/view/a$a;Lcom/x/plus/pro/view/a;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_57

    .line 151
    :cond_51
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 152
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_57
    :goto_57
    const v3, 0x7f070044

    .line 155
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 156
    iget-object v4, p0, Lcom/x/plus/pro/view/a$a;->h:Ljava/lang/String;

    if-eqz v4, :cond_76

    .line 157
    iget-object v4, p0, Lcom/x/plus/pro/view/a$a;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v4, p0, Lcom/x/plus/pro/view/a$a;->b:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v4, :cond_7c

    .line 159
    new-instance v4, Lcom/x/plus/pro/view/a$a$2;

    invoke-direct {v4, p0, v1}, Lcom/x/plus/pro/view/a$a$2;-><init>(Lcom/x/plus/pro/view/a$a;Lcom/x/plus/pro/view/a;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7c

    .line 168
    :cond_76
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 169
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_7c
    :goto_7c
    const v3, 0x7f070045

    .line 173
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 174
    iget-object v4, p0, Lcom/x/plus/pro/view/a$a;->i:Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v4, :cond_9f

    .line 175
    iget-object v4, p0, Lcom/x/plus/pro/view/a$a;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v4, p0, Lcom/x/plus/pro/view/a$a;->c:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v4, :cond_9b

    .line 177
    new-instance v4, Lcom/x/plus/pro/view/a$a$3;

    invoke-direct {v4, p0, v1}, Lcom/x/plus/pro/view/a$a$3;-><init>(Lcom/x/plus/pro/view/a$a;Lcom/x/plus/pro/view/a;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    :cond_9b
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a5

    .line 186
    :cond_9f
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 187
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 190
    :goto_a5
    iget-object v2, p0, Lcom/x/plus/pro/view/a$a;->e:Ljava/lang/String;

    if-eqz v2, :cond_b8

    const v2, 0x7f0700d9

    .line 191
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/x/plus/pro/view/a$a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_cd

    .line 192
    :cond_b8
    iget-object v2, p0, Lcom/x/plus/pro/view/a$a;->j:Landroid/view/View;

    if-eqz v2, :cond_cd

    const v2, 0x7f070085

    .line 193
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 194
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 195
    iget-object v3, p0, Lcom/x/plus/pro/view/a$a;->j:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 197
    :cond_cd
    :goto_cd
    iget-object v2, p0, Lcom/x/plus/pro/view/a$a;->f:Ljava/lang/String;

    if-eqz v2, :cond_e6

    const v2, 0x7f0700d8

    .line 198
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 199
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object p0, p0, Lcom/x/plus/pro/view/a$a;->f:Ljava/lang/String;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :cond_e6
    invoke-virtual {v1, v0}, Lcom/x/plus/pro/view/a;->setContentView(Landroid/view/View;)V

    .line 203
    invoke-virtual {v1}, Lcom/x/plus/pro/view/a;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const/16 v0, 0x352

    .line 204
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 206
    invoke-virtual {v1}, Lcom/x/plus/pro/view/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-object v1
.end method

.method public final b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/x/plus/pro/view/a$a;
    .registers 4

    .line 95
    iget-object v0, p0, Lcom/x/plus/pro/view/a$a;->d:Landroid/content/Context;

    .line 96
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/x/plus/pro/view/a$a;->h:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Lcom/x/plus/pro/view/a$a;->b:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public final c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/x/plus/pro/view/a$a;
    .registers 4

    .line 110
    iget-object v0, p0, Lcom/x/plus/pro/view/a$a;->d:Landroid/content/Context;

    .line 111
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/x/plus/pro/view/a$a;->i:Ljava/lang/String;

    .line 112
    iput-object p2, p0, Lcom/x/plus/pro/view/a$a;->c:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method
