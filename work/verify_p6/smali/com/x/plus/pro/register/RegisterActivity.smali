.class public Lcom/x/plus/pro/register/RegisterActivity;
.super Lcom/x/plus/pro/base/BaseActivity;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/x/plus/pro/register/a;
.implements Lcom/x/plus/pro/register/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/plus/pro/register/RegisterActivity$a;
    }
.end annotation


# static fields
.field private static final l:Ljava/lang/String; = "RegisterActivity"

.field private static t:Landroid/view/animation/Animation;


# instance fields
.field k:Landroid/content/SharedPreferences;

.field private m:Landroid/webkit/WebView;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Landroid/widget/ImageView;

.field private u:I

.field private v:Ljava/util/Timer;

.field private w:Ljava/util/Timer;

.field private x:Ljava/lang/String;

.field private y:Lcom/x/plus/pro/register/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/x/plus/pro/base/BaseActivity;-><init>()V

    const-string v0, ""

    .line 67
    iput-object v0, p0, Lcom/x/plus/pro/register/RegisterActivity;->x:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/x/plus/pro/register/RegisterActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/x/plus/pro/register/RegisterActivity;->m:Landroid/webkit/WebView;

    return-object p0
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 440
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 441
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 442
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 200
    iget-object p1, p0, Lcom/x/plus/pro/register/RegisterActivity;->n:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 201
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/register/RegisterActivity;->b(I)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 204
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/register/RegisterActivity;->b(I)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/x/plus/pro/register/RegisterActivity;)V
    .locals 3

    .line 7336
    iget-object v0, p0, Lcom/x/plus/pro/register/RegisterActivity;->v:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 7340
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/x/plus/pro/register/RegisterActivity;->v:Ljava/util/Timer;

    .line 7341
    new-instance v0, Lcom/x/plus/pro/register/RegisterActivity$5;

    invoke-direct {v0, p0}, Lcom/x/plus/pro/register/RegisterActivity$5;-><init>(Lcom/x/plus/pro/register/RegisterActivity;)V

    .line 7352
    iget-object p0, p0, Lcom/x/plus/pro/register/RegisterActivity;->v:Ljava/util/Timer;

    const-wide/32 v1, 0xea60

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method

.method private b(Z)V
    .locals 1

    .line 451
    iget-object p0, p0, Lcom/x/plus/pro/register/RegisterActivity;->k:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "com.x.plus.pro.reboot_result"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic c(Lcom/x/plus/pro/register/RegisterActivity;)Landroid/content/SharedPreferences;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/x/plus/pro/register/RegisterActivity;->k:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic d(Lcom/x/plus/pro/register/RegisterActivity;)V
    .locals 2

    .line 8321
    new-instance v0, Lcom/x/plus/pro/view/a$a;

    invoke-direct {v0, p0}, Lcom/x/plus/pro/view/a$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0044

    .line 8322
    invoke-virtual {v0, v1}, Lcom/x/plus/pro/view/a$a;->a(I)Lcom/x/plus/pro/view/a$a;

    .line 8323
    new-instance v1, Lcom/x/plus/pro/register/RegisterActivity$4;

    invoke-direct {v1, p0}, Lcom/x/plus/pro/register/RegisterActivity$4;-><init>(Lcom/x/plus/pro/register/RegisterActivity;)V

    const p0, 0x7f0c0036

    invoke-virtual {v0, p0, v1}, Lcom/x/plus/pro/view/a$a;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/x/plus/pro/view/a$a;

    .line 8330
    invoke-virtual {v0}, Lcom/x/plus/pro/view/a$a;->a()Lcom/x/plus/pro/view/a;

    move-result-object p0

    const/4 v0, 0x0

    .line 8331
    invoke-virtual {p0, v0}, Lcom/x/plus/pro/view/a;->setCancelable(Z)V

    .line 8332
    invoke-virtual {p0}, Lcom/x/plus/pro/view/a;->show()V

    return-void
.end method

.method static synthetic e(Lcom/x/plus/pro/register/RegisterActivity;)Lcom/x/plus/pro/register/c;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/x/plus/pro/register/RegisterActivity;->y:Lcom/x/plus/pro/register/c;

    return-object p0
.end method

.method static synthetic f(Lcom/x/plus/pro/register/RegisterActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/x/plus/pro/register/RegisterActivity;->i()V

    return-void
.end method

.method static synthetic g(Lcom/x/plus/pro/register/RegisterActivity;)Landroid/view/View;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/x/plus/pro/register/RegisterActivity;->n:Landroid/view/View;

    return-object p0
.end method

.method static synthetic h(Lcom/x/plus/pro/register/RegisterActivity;)Landroid/view/View;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/x/plus/pro/register/RegisterActivity;->o:Landroid/view/View;

    return-object p0
.end method

.method static synthetic i(Lcom/x/plus/pro/register/RegisterActivity;)Landroid/view/View;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/x/plus/pro/register/RegisterActivity;->p:Landroid/view/View;

    return-object p0
.end method

.method private declared-synchronized i()V
    .locals 1

    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/x/plus/pro/register/RegisterActivity;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 128
    invoke-virtual {p0, v0}, Lcom/x/plus/pro/register/RegisterActivity;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 126
    monitor-exit p0

    throw v0
.end method

.method static synthetic j(Lcom/x/plus/pro/register/RegisterActivity;)Landroid/view/View;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/x/plus/pro/register/RegisterActivity;->q:Landroid/view/View;

    return-object p0
.end method

.method private j()V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/x/plus/pro/register/RegisterActivity;->v:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/x/plus/pro/register/RegisterActivity;->v:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 362
    iget-object v0, p0, Lcom/x/plus/pro/register/RegisterActivity;->v:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    .line 363
    iput-object v0, p0, Lcom/x/plus/pro/register/RegisterActivity;->v:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/x/plus/pro/register/RegisterActivity;)Landroid/view/View;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/x/plus/pro/register/RegisterActivity;->r:Landroid/view/View;

    return-object p0
.end method

.method private k()V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/x/plus/pro/register/RegisterActivity;->w:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/x/plus/pro/register/RegisterActivity;->w:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 395
    iget-object v0, p0, Lcom/x/plus/pro/register/RegisterActivity;->w:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    .line 396
    iput-object v0, p0, Lcom/x/plus/pro/register/RegisterActivity;->w:Ljava/util/Timer;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 255
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/register/RegisterActivity;->b(I)V

    return-void
.end method

.method public final a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 223
    invoke-direct {p0}, Lcom/x/plus/pro/register/RegisterActivity;->k()V

    const-string v0, "https://www.google.com/android/uncertified"

    .line 225
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/x/plus/pro/register/RegisterActivity;->x:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 226
    invoke-direct {p0, p1}, Lcom/x/plus/pro/register/RegisterActivity;->a(Z)V

    return-void

    :cond_0
    const-string v0, "https://www.google.com/android/uncertified"

    .line 227
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://www.google.com/android/uncertified/"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    :cond_1
    sget-object v0, Lcom/x/plus/pro/register/d;->INSTANCE:Lcom/x/plus/pro/register/d;

    invoke-virtual {v0, p2}, Lcom/x/plus/pro/register/d;->get(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_2

    :try_start_0
    const-string v0, "register_js"

    .line 231
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 232
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xa

    .line 6012
    invoke-static {p2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    .line 232
    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    .line 233
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 6250
    :catch_0
    invoke-direct {p0}, Lcom/x/plus/pro/register/RegisterActivity;->i()V

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .line 210
    invoke-direct {p0}, Lcom/x/plus/pro/register/RegisterActivity;->j()V

    .line 5368
    iget-object v0, p0, Lcom/x/plus/pro/register/RegisterActivity;->w:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 5372
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/x/plus/pro/register/RegisterActivity;->w:Ljava/util/Timer;

    .line 5373
    new-instance v0, Lcom/x/plus/pro/register/RegisterActivity$6;

    invoke-direct {v0, p0}, Lcom/x/plus/pro/register/RegisterActivity$6;-><init>(Lcom/x/plus/pro/register/RegisterActivity;)V

    .line 5385
    iget-object v1, p0, Lcom/x/plus/pro/register/RegisterActivity;->w:Ljava/util/Timer;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    const-string v0, ""

    .line 213
    iput-object v0, p0, Lcom/x/plus/pro/register/RegisterActivity;->x:Ljava/lang/String;

    .line 215
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://www.google.com/android/uncertified"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    iput-object p1, p0, Lcom/x/plus/pro/register/RegisterActivity;->x:Ljava/lang/String;

    const/4 p1, 0x1

    .line 217
    invoke-direct {p0, p1}, Lcom/x/plus/pro/register/RegisterActivity;->a(Z)V

    :cond_1
    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 401
    new-instance v0, Lcom/x/plus/pro/register/RegisterActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/x/plus/pro/register/RegisterActivity$7;-><init>(Lcom/x/plus/pro/register/RegisterActivity;I)V

    invoke-virtual {p0, v0}, Lcom/x/plus/pro/register/RegisterActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .line 260
    new-instance v0, Lcom/x/plus/pro/register/RegisterActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/x/plus/pro/register/RegisterActivity$2;-><init>(Lcom/x/plus/pro/register/RegisterActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/x/plus/pro/register/RegisterActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e_()V
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/x/plus/pro/register/RegisterActivity;->i()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f070043

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 145
    :pswitch_0
    iget p1, p0, Lcom/x/plus/pro/register/RegisterActivity;->u:I

    const/4 v1, 0x2

    if-ge p1, v1, :cond_0

    .line 146
    invoke-virtual {p0, v0}, Lcom/x/plus/pro/register/RegisterActivity;->b(I)V

    .line 147
    iget-object p1, p0, Lcom/x/plus/pro/register/RegisterActivity;->y:Lcom/x/plus/pro/register/c;

    invoke-virtual {p1}, Lcom/x/plus/pro/register/c;->a()V

    .line 148
    iget p1, p0, Lcom/x/plus/pro/register/RegisterActivity;->u:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/x/plus/pro/register/RegisterActivity;->u:I

    return-void

    .line 4183
    :cond_0
    new-instance p1, Lcom/x/plus/pro/view/a$a;

    invoke-direct {p1, p0}, Lcom/x/plus/pro/view/a$a;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c003a

    .line 4184
    invoke-virtual {p1, v0}, Lcom/x/plus/pro/view/a$a;->a(I)Lcom/x/plus/pro/view/a$a;

    const v0, 0x7f0c0036

    .line 4185
    new-instance v1, Lcom/x/plus/pro/register/RegisterActivity$1;

    invoke-direct {v1, p0}, Lcom/x/plus/pro/register/RegisterActivity$1;-><init>(Lcom/x/plus/pro/register/RegisterActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/x/plus/pro/view/a$a;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/x/plus/pro/view/a$a;

    .line 4195
    invoke-virtual {p1}, Lcom/x/plus/pro/view/a$a;->a()Lcom/x/plus/pro/view/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/x/plus/pro/view/a;->show()V

    return-void

    .line 154
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/x/plus/pro/register/RegisterActivity;->b(I)V

    .line 155
    iget-object p0, p0, Lcom/x/plus/pro/register/RegisterActivity;->y:Lcom/x/plus/pro/register/c;

    invoke-virtual {p0}, Lcom/x/plus/pro/register/c;->a()V

    return-void

    .line 5171
    :pswitch_2
    :try_start_0
    invoke-direct {p0, v0}, Lcom/x/plus/pro/register/RegisterActivity;->b(Z)V

    .line 5172
    new-instance p1, Lcom/huawei/android/app/admin/DeviceControlManager;

    invoke-direct {p1}, Lcom/huawei/android/app/admin/DeviceControlManager;-><init>()V

    .line 5173
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/x/plus/pro/dm/DeviceManageReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/huawei/android/app/admin/DeviceControlManager;->rebootDevice(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5176
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    .line 5177
    invoke-direct {p0, p1}, Lcom/x/plus/pro/register/RegisterActivity;->b(Z)V

    .line 162
    :goto_0
    invoke-virtual {p0}, Lcom/x/plus/pro/register/RegisterActivity;->finish()V

    :goto_1
    return-void

    .line 158
    :cond_1
    invoke-virtual {p0}, Lcom/x/plus/pro/register/RegisterActivity;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f070047
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 73
    invoke-super {p0, p1}, Lcom/x/plus/pro/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a001e

    .line 74
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/register/RegisterActivity;->setContentView(I)V

    const p1, 0x7f070077

    .line 1086
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/x/plus/pro/register/RegisterActivity;->n:Landroid/view/View;

    const p1, 0x7f070078

    .line 1087
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/x/plus/pro/register/RegisterActivity;->o:Landroid/view/View;

    const p1, 0x7f070079

    .line 1088
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/x/plus/pro/register/RegisterActivity;->p:Landroid/view/View;

    const p1, 0x7f07007a

    .line 1089
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/x/plus/pro/register/RegisterActivity;->q:Landroid/view/View;

    const p1, 0x7f07007b

    .line 1090
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/x/plus/pro/register/RegisterActivity;->r:Landroid/view/View;

    const p1, 0x7f07006c

    .line 1091
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/x/plus/pro/register/RegisterActivity;->s:Landroid/widget/ImageView;

    .line 1093
    iget-object p1, p0, Lcom/x/plus/pro/register/RegisterActivity;->n:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1094
    iget-object p1, p0, Lcom/x/plus/pro/register/RegisterActivity;->o:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1095
    iget-object p1, p0, Lcom/x/plus/pro/register/RegisterActivity;->p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1096
    iget-object p1, p0, Lcom/x/plus/pro/register/RegisterActivity;->q:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1097
    iget-object p1, p0, Lcom/x/plus/pro/register/RegisterActivity;->r:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f070049

    .line 1099
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f070048

    .line 1100
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f070043

    .line 1101
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f070047

    .line 1102
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1104
    new-instance p1, Landroid/view/animation/RotateAnimation;

    const/4 v2, 0x0

    const v3, 0x43b38000    # 359.0f

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    sput-object p1, Lcom/x/plus/pro/register/RegisterActivity;->t:Landroid/view/animation/Animation;

    .line 1105
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 1106
    sget-object v1, Lcom/x/plus/pro/register/RegisterActivity;->t:Landroid/view/animation/Animation;

    invoke-virtual {v1, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1107
    sget-object p1, Lcom/x/plus/pro/register/RegisterActivity;->t:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1108
    sget-object p1, Lcom/x/plus/pro/register/RegisterActivity;->t:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 1109
    sget-object p1, Lcom/x/plus/pro/register/RegisterActivity;->t:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1133
    iget-object p1, p0, Lcom/x/plus/pro/register/RegisterActivity;->s:Landroid/widget/ImageView;

    sget-object v1, Lcom/x/plus/pro/register/RegisterActivity;->t:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1134
    sget-object p1, Lcom/x/plus/pro/register/RegisterActivity;->t:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->start()V

    const p1, 0x7f0700f4

    .line 1112
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/register/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/x/plus/pro/register/RegisterActivity;->m:Landroid/webkit/WebView;

    .line 1113
    iget-object p1, p0, Lcom/x/plus/pro/register/RegisterActivity;->m:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v1, 0x1

    .line 1114
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1115
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    const-string v2, "Mozilla/5.0 (Linux; Android %s; %s) AppleWebKit/537.36 (KHTML, like Gecko) %s  Chrome/71.0.3578.99 Mobile Safari/537.36"

    const/4 v3, 0x3

    .line 1116
    new-array v3, v3, [Ljava/lang/Object;

    .line 1436
    sget-object v4, Lcom/x/plus/pro/d/a;->d:Ljava/util/List;

    invoke-static {v4}, Lcom/x/plus/pro/register/RegisterActivity;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 2428
    sget-object v4, Lcom/x/plus/pro/d/a;->b:Ljava/util/List;

    invoke-static {v4}, Lcom/x/plus/pro/register/RegisterActivity;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 2432
    sget-object v1, Lcom/x/plus/pro/d/a;->c:Ljava/util/List;

    invoke-static {v1}, Lcom/x/plus/pro/register/RegisterActivity;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v3, v4

    .line 1116
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1118
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 1119
    iget-object p1, p0, Lcom/x/plus/pro/register/RegisterActivity;->m:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1120
    new-instance p1, Lcom/x/plus/pro/register/b;

    invoke-direct {p1, p0}, Lcom/x/plus/pro/register/b;-><init>(Lcom/x/plus/pro/register/a;)V

    .line 1121
    iget-object v1, p0, Lcom/x/plus/pro/register/RegisterActivity;->m:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1122
    iget-object p1, p0, Lcom/x/plus/pro/register/RegisterActivity;->m:Landroid/webkit/WebView;

    new-instance v1, Lcom/x/plus/pro/register/RegisterActivity$a;

    invoke-direct {v1, p0}, Lcom/x/plus/pro/register/RegisterActivity$a;-><init>(Lcom/x/plus/pro/register/RegisterActivity;)V

    const-string v2, "android"

    invoke-virtual {p1, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iput v0, p0, Lcom/x/plus/pro/register/RegisterActivity;->u:I

    const-string p1, "com.x.plus.pro"

    .line 78
    invoke-virtual {p0, p1, v0}, Lcom/x/plus/pro/register/RegisterActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/x/plus/pro/register/RegisterActivity;->k:Landroid/content/SharedPreferences;

    .line 79
    iget-object p1, p0, Lcom/x/plus/pro/register/RegisterActivity;->k:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "com.x.plus.pro.register_result"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 80
    new-instance p1, Lcom/x/plus/pro/register/c;

    invoke-direct {p1, p0, p0}, Lcom/x/plus/pro/register/c;-><init>(Landroid/content/Context;Lcom/x/plus/pro/register/c$a;)V

    iput-object p1, p0, Lcom/x/plus/pro/register/RegisterActivity;->y:Lcom/x/plus/pro/register/c;

    .line 3305
    new-instance p1, Lcom/x/plus/pro/view/a$a;

    invoke-direct {p1, p0}, Lcom/x/plus/pro/view/a$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0045

    .line 3307
    invoke-virtual {p1, v1}, Lcom/x/plus/pro/view/a$a;->a(I)Lcom/x/plus/pro/view/a$a;

    .line 3308
    new-instance v1, Lcom/x/plus/pro/register/RegisterActivity$3;

    invoke-direct {v1, p0}, Lcom/x/plus/pro/register/RegisterActivity$3;-><init>(Lcom/x/plus/pro/register/RegisterActivity;)V

    const p0, 0x7f0c0036

    invoke-virtual {p1, p0, v1}, Lcom/x/plus/pro/view/a$a;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/x/plus/pro/view/a$a;

    .line 3315
    invoke-virtual {p1}, Lcom/x/plus/pro/view/a$a;->a()Lcom/x/plus/pro/view/a;

    move-result-object p0

    .line 3316
    invoke-virtual {p0, v0}, Lcom/x/plus/pro/view/a;->setCancelable(Z)V

    .line 3317
    invoke-virtual {p0}, Lcom/x/plus/pro/view/a;->show()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 419
    iget-object v0, p0, Lcom/x/plus/pro/register/RegisterActivity;->y:Lcom/x/plus/pro/register/c;

    .line 7208
    iget-object v1, v0, Lcom/x/plus/pro/register/c;->b:Lcom/x/plus/pro/e/c;

    invoke-virtual {v1}, Lcom/x/plus/pro/e/c;->c()V

    .line 7209
    iget-object v1, v0, Lcom/x/plus/pro/register/c;->c:Lcom/x/plus/pro/register/c$b;

    if-eqz v1, :cond_0

    .line 7210
    iget-object v1, v0, Lcom/x/plus/pro/register/c;->a:Landroid/content/Context;

    iget-object v2, v0, Lcom/x/plus/pro/register/c;->c:Lcom/x/plus/pro/register/c$b;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    .line 7211
    iput-object v1, v0, Lcom/x/plus/pro/register/c;->c:Lcom/x/plus/pro/register/c$b;

    .line 421
    :cond_0
    invoke-direct {p0}, Lcom/x/plus/pro/register/RegisterActivity;->j()V

    .line 422
    invoke-direct {p0}, Lcom/x/plus/pro/register/RegisterActivity;->k()V

    .line 424
    invoke-super {p0}, Lcom/x/plus/pro/base/BaseActivity;->onDestroy()V

    return-void
.end method
