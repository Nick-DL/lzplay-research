.class public Lcom/x/plus/pro/e/b;
.super Ljava/lang/Object;
.source "InitializeManager.java"

# interfaces
.implements Lcom/x/plus/pro/beans/config/ApkInfo$a;
.implements Lcom/x/plus/pro/e/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/plus/pro/e/b$a;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String; = "b"

.field private static final h:Ljava/lang/String;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/x/plus/pro/beans/config/ApkInfo;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/x/plus/pro/e/c;

.field public d:Lcom/x/plus/pro/e/b$a;

.field public e:I

.field public volatile f:I

.field private i:Landroid/os/Handler;

.field private j:Landroid/content/SharedPreferences;

.field private k:Landroid/content/ComponentName;

.field private l:Landroid/app/admin/DevicePolicyManager;

.field private m:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/x/plus/pro/beans/config/ApkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/x/plus/pro/beans/config/ApkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/x/plus/pro/beans/config/ApkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private p:J

.field private q:Landroid/os/Handler;

.field private r:Lcom/liulishuo/filedownloader/i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 66
    invoke-static {}, Lcom/liulishuo/filedownloader/h/f;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/x/plus/pro/e/b;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 82
    iput-wide v0, p0, Lcom/x/plus/pro/e/b;->p:J

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/x/plus/pro/e/b;->e:I

    .line 85
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/x/plus/pro/e/b;->q:Landroid/os/Handler;

    .line 449
    new-instance v1, Lcom/x/plus/pro/e/b$4;

    invoke-direct {v1, p0}, Lcom/x/plus/pro/e/b$4;-><init>(Lcom/x/plus/pro/e/b;)V

    iput-object v1, p0, Lcom/x/plus/pro/e/b;->r:Lcom/liulishuo/filedownloader/i;

    .line 88
    iput-object p1, p0, Lcom/x/plus/pro/e/b;->a:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcom/x/plus/pro/e/b;->i:Landroid/os/Handler;

    .line 90
    invoke-static {p1}, Lcom/x/plus/pro/update/e;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/x/plus/pro/e/b;->b:Ljava/util/List;

    const-string p2, "com.x.plus.pro"

    .line 91
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/x/plus/pro/e/b;->j:Landroid/content/SharedPreferences;

    .line 92
    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p2, p0, Lcom/x/plus/pro/e/b;->m:Ljava/util/Queue;

    .line 93
    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p2, p0, Lcom/x/plus/pro/e/b;->n:Ljava/util/Queue;

    .line 94
    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p2, p0, Lcom/x/plus/pro/e/b;->o:Ljava/util/Queue;

    const-string p2, "device_policy"

    .line 95
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    iput-object p2, p0, Lcom/x/plus/pro/e/b;->l:Landroid/app/admin/DevicePolicyManager;

    .line 96
    new-instance p2, Landroid/content/ComponentName;

    const-class v0, Lcom/x/plus/pro/dm/DeviceManageReceiver;

    invoke-direct {p2, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/x/plus/pro/e/b;->k:Landroid/content/ComponentName;

    .line 98
    new-instance p1, Lcom/x/plus/pro/e/c;

    iget-object p2, p0, Lcom/x/plus/pro/e/b;->a:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Lcom/x/plus/pro/e/c;-><init>(Landroid/content/Context;Lcom/x/plus/pro/e/a;)V

    iput-object p1, p0, Lcom/x/plus/pro/e/b;->c:Lcom/x/plus/pro/e/c;

    return-void
.end method

.method static synthetic a(Lcom/x/plus/pro/e/b;)Landroid/content/Context;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/x/plus/pro/e/b;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/x/plus/pro/e/b;)Lcom/x/plus/pro/e/c;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/x/plus/pro/e/b;->c:Lcom/x/plus/pro/e/c;

    return-object p0
.end method

.method private b(Lcom/x/plus/pro/beans/config/ApkInfo;)V
    .registers 4

    .line 266
    new-instance v0, Lcom/x/plus/pro/view/a$a;

    iget-object v1, p0, Lcom/x/plus/pro/e/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/x/plus/pro/view/a$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0048

    .line 267
    invoke-virtual {v0, v1}, Lcom/x/plus/pro/view/a$a;->a(I)Lcom/x/plus/pro/view/a$a;

    .line 268
    new-instance v1, Lcom/x/plus/pro/e/b$1;

    invoke-direct {v1, p0, p1}, Lcom/x/plus/pro/e/b$1;-><init>(Lcom/x/plus/pro/e/b;Lcom/x/plus/pro/beans/config/ApkInfo;)V

    const p1, 0x7f0c0036

    invoke-virtual {v0, p1, v1}, Lcom/x/plus/pro/view/a$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/x/plus/pro/view/a$a;

    .line 275
    new-instance p1, Lcom/x/plus/pro/e/b$2;

    invoke-direct {p1, p0}, Lcom/x/plus/pro/e/b$2;-><init>(Lcom/x/plus/pro/e/b;)V

    const p0, 0x7f0c0023

    invoke-virtual {v0, p0, p1}, Lcom/x/plus/pro/view/a$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/x/plus/pro/view/a$a;

    .line 282
    invoke-virtual {v0}, Lcom/x/plus/pro/view/a$a;->a()Lcom/x/plus/pro/view/a;

    move-result-object p0

    const/4 p1, 0x0

    .line 283
    invoke-virtual {p0, p1}, Lcom/x/plus/pro/view/a;->setCancelable(Z)V

    .line 284
    invoke-virtual {p0}, Lcom/x/plus/pro/view/a;->show()V

    return-void
.end method

.method private c(Lcom/x/plus/pro/beans/config/ApkInfo;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    .line 9059
    :cond_3
    iget v0, p1, Lcom/x/plus/pro/beans/config/ApkInfo;->k:I

    const/4 v1, 0x1

    :goto_6
    mul-int/lit8 v2, v1, 0x2

    if-ge v2, v0, :cond_23

    .line 359
    iget-object v3, p0, Lcom/x/plus/pro/e/b;->i:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x9

    .line 360
    iput v4, v3, Landroid/os/Message;->what:I

    .line 361
    iput v2, v3, Landroid/os/Message;->arg1:I

    .line 362
    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 363
    iget-object v2, p0, Lcom/x/plus/pro/e/b;->i:Landroid/os/Handler;

    mul-int/lit16 v4, v1, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_23
    return-void
.end method

.method static synthetic c(Lcom/x/plus/pro/e/b;)V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/x/plus/pro/e/b;->m()V

    return-void
.end method

.method static synthetic d(Lcom/x/plus/pro/e/b;)V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/x/plus/pro/e/b;->h()V

    return-void
.end method

.method static synthetic e(Lcom/x/plus/pro/e/b;)J
    .registers 3

    .line 43
    iget-wide v0, p0, Lcom/x/plus/pro/e/b;->p:J

    return-wide v0
.end method

.method static synthetic f(Lcom/x/plus/pro/e/b;)Landroid/os/Handler;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/x/plus/pro/e/b;->i:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic g(Lcom/x/plus/pro/e/b;)V
    .registers 4

    .line 21345
    iget v0, p0, Lcom/x/plus/pro/e/b;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/x/plus/pro/e/b;->e:I

    .line 21346
    iget-object v0, p0, Lcom/x/plus/pro/e/b;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/plus/pro/beans/config/ApkInfo;

    .line 21347
    iget-object v1, p0, Lcom/x/plus/pro/e/b;->i:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x2

    .line 21348
    iput v2, v1, Landroid/os/Message;->what:I

    .line 21349
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 21350
    iget-object p0, p0, Lcom/x/plus/pro/e/b;->i:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic h(Lcom/x/plus/pro/e/b;)Ljava/util/Queue;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/x/plus/pro/e/b;->m:Ljava/util/Queue;

    return-object p0
.end method

.method private h()V
    .registers 4

    .line 228
    iget-object v0, p0, Lcom/x/plus/pro/e/b;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/plus/pro/beans/config/ApkInfo;

    if-nez v0, :cond_e

    .line 230
    invoke-virtual {p0}, Lcom/x/plus/pro/e/b;->c()V

    return-void

    .line 4051
    :cond_e
    iget v1, v0, Lcom/x/plus/pro/beans/config/ApkInfo;->j:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    .line 232
    invoke-direct {p0}, Lcom/x/plus/pro/e/b;->k()V

    return-void

    .line 4090
    :cond_17
    iget-object v1, v0, Lcom/x/plus/pro/beans/ApkBaseInfo;->f:Ljava/lang/String;

    .line 5042
    iget-object v2, v0, Lcom/x/plus/pro/beans/ApkBaseInfo;->b:Ljava/lang/String;

    .line 233
    invoke-static {v1, v2}, Lcom/x/plus/pro/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 234
    invoke-direct {p0}, Lcom/x/plus/pro/e/b;->k()V

    return-void

    .line 236
    :cond_25
    iget-object v1, p0, Lcom/x/plus/pro/e/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/x/plus/pro/beans/config/ApkInfo;->a(Landroid/content/Context;Lcom/x/plus/pro/beans/config/ApkInfo$a;)V

    return-void
.end method

.method private i()V
    .registers 4

    .line 251
    iget-object v0, p0, Lcom/x/plus/pro/e/b;->o:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/plus/pro/beans/config/ApkInfo;

    if-nez v0, :cond_e

    .line 253
    invoke-virtual {p0}, Lcom/x/plus/pro/e/b;->d()V

    return-void

    .line 5051
    :cond_e
    iget v1, v0, Lcom/x/plus/pro/beans/config/ApkInfo;->j:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_29

    const-string v1, "com.google.android.gms"

    .line 5058
    iget-object v2, v0, Lcom/x/plus/pro/beans/ApkBaseInfo;->d:Ljava/lang/String;

    .line 255
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 256
    invoke-direct {p0, v0}, Lcom/x/plus/pro/e/b;->b(Lcom/x/plus/pro/beans/config/ApkInfo;)V

    return-void

    .line 258
    :cond_21
    iget-object p0, p0, Lcom/x/plus/pro/e/b;->c:Lcom/x/plus/pro/e/c;

    .line 6058
    iget-object v0, v0, Lcom/x/plus/pro/beans/ApkBaseInfo;->d:Ljava/lang/String;

    .line 258
    invoke-virtual {p0, v0}, Lcom/x/plus/pro/e/c;->b(Ljava/lang/String;)V

    return-void

    .line 261
    :cond_29
    invoke-direct {p0}, Lcom/x/plus/pro/e/b;->m()V

    return-void
.end method

.method static synthetic i(Lcom/x/plus/pro/e/b;)V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/x/plus/pro/e/b;->k()V

    return-void
.end method

.method private j()V
    .registers 4

    .line 303
    iget-object v0, p0, Lcom/x/plus/pro/e/b;->n:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/plus/pro/beans/config/ApkInfo;

    if-nez v0, :cond_32

    .line 305
    iget-object v0, p0, Lcom/x/plus/pro/e/b;->c:Lcom/x/plus/pro/e/c;

    invoke-virtual {v0}, Lcom/x/plus/pro/e/c;->b()V

    .line 306
    iget-object v0, p0, Lcom/x/plus/pro/e/b;->i:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    .line 307
    iput v0, p0, Lcom/x/plus/pro/e/b;->f:I

    .line 309
    :goto_19
    iget-object v1, p0, Lcom/x/plus/pro/e/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 310
    iget-object v1, p0, Lcom/x/plus/pro/e/b;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/x/plus/pro/beans/config/ApkInfo;

    .line 6090
    iget-object v1, v1, Lcom/x/plus/pro/beans/ApkBaseInfo;->f:Ljava/lang/String;

    .line 310
    invoke-static {v1}, Lcom/x/plus/pro/f/c;->a(Ljava/lang/String;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_31
    return-void

    .line 7051
    :cond_32
    iget v1, v0, Lcom/x/plus/pro/beans/config/ApkInfo;->j:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3b

    .line 314
    invoke-direct {p0}, Lcom/x/plus/pro/e/b;->l()V

    return-void

    .line 316
    :cond_3b
    invoke-direct {p0, v0}, Lcom/x/plus/pro/e/b;->c(Lcom/x/plus/pro/beans/config/ApkInfo;)V

    .line 317
    iget-object p0, p0, Lcom/x/plus/pro/e/b;->c:Lcom/x/plus/pro/e/c;

    .line 7090
    iget-object v0, v0, Lcom/x/plus/pro/beans/ApkBaseInfo;->f:Ljava/lang/String;

    .line 317
    invoke-virtual {p0, v0}, Lcom/x/plus/pro/e/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private k()V
    .registers 4

    .line 322
    iget-object v0, p0, Lcom/x/plus/pro/e/b;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/plus/pro/beans/config/ApkInfo;

    if-nez v0, :cond_b

    return-void

    .line 326
    :cond_b
    iget-object v1, p0, Lcom/x/plus/pro/e/b;->i:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x3

    .line 327
    iput v2, v1, Landroid/os/Message;->what:I

    .line 8059
    iget v2, v0, Lcom/x/plus/pro/beans/config/ApkInfo;->k:I

    .line 328
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 329
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 330
    iget-object v0, p0, Lcom/x/plus/pro/e/b;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 331
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2d

    .line 333
    invoke-direct {p0}, Lcom/x/plus/pro/e/b;->h()V

    return-void

    .line 335
    :cond_2d
    iget-object v0, p0, Lcom/x/plus/pro/e/b;->i:Landroid/os/Handler;

    new-instance v1, Lcom/x/plus/pro/e/b$3;

    invoke-direct {v1, p0}, Lcom/x/plus/pro/e/b$3;-><init>(Lcom/x/plus/pro/e/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private l()V
    .registers 4

    .line 368
    iget-object v0, p0, Lcom/x/plus/pro/e/b;->n:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/plus/pro/beans/config/ApkInfo;

    if-nez v0, :cond_b

    return-void

    .line 372
    :cond_b
    iget-object v1, p0, Lcom/x/plus/pro/e/b;->i:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 373
    iget-object v1, p0, Lcom/x/plus/pro/e/b;->i:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x5

    .line 374
    iput v2, v1, Landroid/os/Message;->what:I

    .line 10059
    iget v2, v0, Lcom/x/plus/pro/beans/config/ApkInfo;->k:I

    .line 375
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 376
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 377
    iget-object v0, p0, Lcom/x/plus/pro/e/b;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 379
    invoke-direct {p0}, Lcom/x/plus/pro/e/b;->j()V

    return-void
.end method

.method private m()V
    .registers 2

    .line 392
    iget-object v0, p0, Lcom/x/plus/pro/e/b;->o:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 394
    invoke-direct {p0}, Lcom/x/plus/pro/e/b;->i()V

    return-void
.end method

.method private n()V
    .registers 5

    .line 398
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 399
    iget-object v1, p0, Lcom/x/plus/pro/e/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/x/plus/pro/beans/config/ApkInfo;

    .line 11058
    iget-object v3, v2, Lcom/x/plus/pro/beans/ApkBaseInfo;->d:Ljava/lang/String;

    .line 11106
    iget-object v2, v2, Lcom/x/plus/pro/beans/ApkBaseInfo;->h:Ljava/lang/String;

    .line 403
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_1f
    const-string v1, "com.x.idhelper"

    const-string v2, "6260FABB849F0DD28AD7B053782FD570E30E1056D192EB3906175280D28CB466"

    .line 405
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object p0, p0, Lcom/x/plus/pro/e/b;->c:Lcom/x/plus/pro/e/c;

    invoke-virtual {p0, v0}, Lcom/x/plus/pro/e/c;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method private o()V
    .registers 7

    .line 518
    iget-object v0, p0, Lcom/x/plus/pro/e/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/x/plus/pro/beans/config/ApkInfo;

    .line 519
    iget-wide v2, p0, Lcom/x/plus/pro/e/b;->p:J

    .line 13066
    iget-wide v4, v1, Lcom/x/plus/pro/beans/ApkBaseInfo;->e:J

    add-long/2addr v2, v4

    .line 519
    iput-wide v2, p0, Lcom/x/plus/pro/e/b;->p:J

    goto :goto_6

    .line 522
    :cond_1a
    iget-wide v0, p0, Lcom/x/plus/pro/e/b;->p:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_45

    .line 523
    iget-object v0, p0, Lcom/x/plus/pro/e/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/x/plus/pro/beans/config/ApkInfo;

    .line 14066
    iget-wide v2, v1, Lcom/x/plus/pro/beans/ApkBaseInfo;->e:J

    long-to-float v2, v2

    const/high16 v3, 0x42480000    # 50.0f

    mul-float/2addr v2, v3

    .line 524
    iget-wide v3, p0, Lcom/x/plus/pro/e/b;->p:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    .line 525
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 15063
    iput v2, v1, Lcom/x/plus/pro/beans/config/ApkInfo;->k:I

    goto :goto_28

    :cond_45
    return-void
.end method


# virtual methods
.method public final a(Lcom/x/plus/pro/beans/config/ApkInfo;)I
    .registers 5

    .line 537
    iget-object v0, p0, Lcom/x/plus/pro/e/b;->a:Landroid/content/Context;

    .line 16058
    iget-object v1, p1, Lcom/x/plus/pro/beans/ApkBaseInfo;->d:Ljava/lang/String;

    .line 537
    invoke-static {v0, v1}, Lcom/x/plus/pro/e/c;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 538
    iget-object v0, p0, Lcom/x/plus/pro/e/b;->a:Landroid/content/Context;

    .line 17058
    iget-object v1, p1, Lcom/x/plus/pro/beans/ApkBaseInfo;->d:Ljava/lang/String;

    .line 538
    invoke-static {v0, v1}, Lcom/x/plus/pro/f/i;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 18050
    iget-object v1, p1, Lcom/x/plus/pro/beans/ApkBaseInfo;->c:Ljava/lang/String;

    .line 538
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-lt v0, v1, :cond_38

    iget-object v0, p0, Lcom/x/plus/pro/e/b;->a:Landroid/content/Context;

    .line 18058
    iget-object v1, p1, Lcom/x/plus/pro/beans/ApkBaseInfo;->d:Ljava/lang/String;

    .line 539
    invoke-static {v0, v1}, Lcom/x/plus/pro/f/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18098
    iget-object v1, p1, Lcom/x/plus/pro/beans/ApkBaseInfo;->g:Ljava/lang/String;

    .line 539
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 540
    iget-object p0, p0, Lcom/x/plus/pro/e/b;->a:Landroid/content/Context;

    .line 19058
    iget-object p1, p1, Lcom/x/plus/pro/beans/ApkBaseInfo;->d:Ljava/lang/String;

    .line 540
    invoke-static {p0, p1}, Lcom/x/plus/pro/e/c;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_37

    const/4 p0, 0x1

    return p0

    :cond_37
    return v2

    :cond_38
    return v2

    :cond_39
    const/4 p0, 0x0

    return p0
.end method

.method public final a()V
    .registers 5

    const/4 v0, 0x0

    .line 138
    iput v0, p0, Lcom/x/plus/pro/e/b;->f:I

    .line 139
    iput v0, p0, Lcom/x/plus/pro/e/b;->e:I

    .line 140
    invoke-direct {p0}, Lcom/x/plus/pro/e/b;->n()V

    .line 141
    iget-object v0, p0, Lcom/x/plus/pro/e/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/x/plus/pro/beans/config/ApkInfo;

    .line 143
    invoke-virtual {p0, v1}, Lcom/x/plus/pro/e/b;->a(Lcom/x/plus/pro/beans/config/ApkInfo;)I

    move-result v2

    .line 2055
    iput v2, v1, Lcom/x/plus/pro/beans/config/ApkInfo;->j:I

    if-eqz v2, :cond_25

    const/4 v2, 0x2

    .line 3055
    iput v2, v1, Lcom/x/plus/pro/beans/config/ApkInfo;->j:I

    .line 148
    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/x/plus/pro/e/b;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3058
    iget-object v3, v1, Lcom/x/plus/pro/beans/ApkBaseInfo;->d:Ljava/lang/String;

    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3094
    iput-object v2, v1, Lcom/x/plus/pro/beans/ApkBaseInfo;->f:Ljava/lang/String;

    goto :goto_e

    .line 150
    :cond_45
    invoke-direct {p0}, Lcom/x/plus/pro/e/b;->o()V

    .line 152
    invoke-virtual {p0}, Lcom/x/plus/pro/e/b;->b()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    const-string v0, "com.google.android.gsf"

    .line 430
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 431
    iget-object p0, p0, Lcom/x/plus/pro/e/b;->c:Lcom/x/plus/pro/e/c;

    const-string p1, "com.x.idhelper"

    invoke-virtual {p0, p1}, Lcom/x/plus/pro/e/c;->b(Ljava/lang/String;)V

    return-void

    .line 433
    :cond_10
    invoke-direct {p0}, Lcom/x/plus/pro/e/b;->m()V

    return-void
.end method

.method public final a(ZLcom/x/plus/pro/beans/config/ApkInfo;)V
    .registers 4

    if-eqz p1, :cond_6

    .line 599
    invoke-direct {p0}, Lcom/x/plus/pro/e/b;->k()V

    return-void

    .line 20034
    :cond_6
    iget-object p1, p2, Lcom/x/plus/pro/beans/ApkBaseInfo;->a:Ljava/lang/String;

    .line 20090
    iget-object p2, p2, Lcom/x/plus/pro/beans/ApkBaseInfo;->f:Ljava/lang/String;

    .line 605
    iget-object p0, p0, Lcom/x/plus/pro/e/b;->r:Lcom/liulishuo/filedownloader/i;

    .line 21017
    sget-object v0, Lcom/x/plus/pro/c/a;->a:Lcom/liulishuo/filedownloader/a;

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    .line 21018
    sput-object v0, Lcom/x/plus/pro/c/a;->a:Lcom/liulishuo/filedownloader/a;

    .line 21020
    :cond_13
    invoke-static {}, Lcom/liulishuo/filedownloader/s;->a()Lcom/liulishuo/filedownloader/s;

    invoke-static {p1}, Lcom/liulishuo/filedownloader/s;->a(Ljava/lang/String;)Lcom/liulishuo/filedownloader/a;

    move-result-object p1

    .line 21021
    invoke-interface {p1, p2}, Lcom/liulishuo/filedownloader/a;->b(Ljava/lang/String;)Lcom/liulishuo/filedownloader/a;

    move-result-object p1

    .line 21022
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/a;->b()Lcom/liulishuo/filedownloader/a;

    move-result-object p1

    .line 21023
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/a;->a()Lcom/liulishuo/filedownloader/a;

    move-result-object p1

    .line 21024
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/a;->d()Lcom/liulishuo/filedownloader/a;

    move-result-object p1

    .line 21025
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/a;->c()Lcom/liulishuo/filedownloader/a;

    move-result-object p1

    .line 21026
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/a;->e()Lcom/liulishuo/filedownloader/a;

    move-result-object p1

    .line 21027
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/a;->f()Lcom/liulishuo/filedownloader/a;

    move-result-object p1

    .line 21028
    invoke-interface {p1, p0}, Lcom/liulishuo/filedownloader/a;->a(Lcom/liulishuo/filedownloader/i;)Lcom/liulishuo/filedownloader/a;

    move-result-object p0

    .line 21030
    sput-object p0, Lcom/x/plus/pro/c/a;->a:Lcom/liulishuo/filedownloader/a;

    invoke-interface {p0}, Lcom/liulishuo/filedownloader/a;->j()I

    return-void
.end method

.method public final a(ZLjava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_6b

    const-string p1, "com.google.android.gsf"

    .line 412
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_54

    iget-object p1, p0, Lcom/x/plus/pro/e/b;->j:Landroid/content/SharedPreferences;

    const-string v0, "gsfId"

    const-string v1, ""

    .line 413
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 11439
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/x/plus/pro/e/b;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/x/plus/pro/f/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "idhelper.apk"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11440
    iget-object p2, p0, Lcom/x/plus/pro/e/b;->a:Landroid/content/Context;

    const-string v0, "idhelper.apk"

    invoke-static {p2, v0, p1}, Lcom/x/plus/pro/f/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_53

    const-string p2, "6260FABB849F0DD28AD7B053782FD570E30E1056D192EB3906175280D28CB466"

    iget-object v0, p0, Lcom/x/plus/pro/e/b;->a:Landroid/content/Context;

    .line 11441
    invoke-static {v0, p1}, Lcom/x/plus/pro/f/i;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_53

    .line 11445
    iget-object p0, p0, Lcom/x/plus/pro/e/b;->c:Lcom/x/plus/pro/e/c;

    invoke-virtual {p0, p1}, Lcom/x/plus/pro/e/c;->a(Ljava/lang/String;)V

    :cond_53
    return-void

    :cond_54
    const-string p1, "com.android.vending"

    .line 416
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_64

    const-string p1, "com.google.android.gms"

    .line 417
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_67

    .line 418
    :cond_64
    invoke-static {p2}, Lcom/x/plus/pro/e/c;->c(Ljava/lang/String;)V

    .line 420
    :cond_67
    invoke-direct {p0}, Lcom/x/plus/pro/e/b;->l()V

    return-void

    .line 12383
    :cond_6b
    iget p1, p0, Lcom/x/plus/pro/e/b;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/x/plus/pro/e/b;->e:I

    .line 12384
    iget-object p1, p0, Lcom/x/plus/pro/e/b;->n:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/x/plus/pro/beans/config/ApkInfo;

    .line 12385
    iget-object p2, p0, Lcom/x/plus/pro/e/b;->i:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    const/4 v0, 0x4

    .line 12386
    iput v0, p2, Landroid/os/Message;->what:I

    .line 12387
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12388
    iget-object p0, p0, Lcom/x/plus/pro/e/b;->i:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Z)Z
    .registers 8

    .line 119
    iget-object v0, p0, Lcom/x/plus/pro/e/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/x/plus/pro/beans/config/ApkInfo;

    .line 120
    invoke-virtual {p0, v3}, Lcom/x/plus/pro/e/b;->a(Lcom/x/plus/pro/beans/config/ApkInfo;)I

    move-result v5

    .line 1055
    iput v5, v3, Lcom/x/plus/pro/beans/config/ApkInfo;->j:I

    if-eqz p1, :cond_20

    if-eqz v5, :cond_20

    return v4

    :cond_20
    if-nez v5, :cond_27

    if-nez p1, :cond_27

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_27
    const/4 v3, 0x2

    if-ne v3, v5, :cond_8

    return v4

    :cond_2b
    if-lez v2, :cond_36

    .line 130
    iget-object p0, p0, Lcom/x/plus/pro/e/b;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_36

    return v4

    :cond_36
    return v1
.end method

.method public final b()V
    .registers 3

    .line 217
    iget-object v0, p0, Lcom/x/plus/pro/e/b;->i:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xb

    .line 218
    iput v1, v0, Landroid/os/Message;->what:I

    .line 219
    iget-object v1, p0, Lcom/x/plus/pro/e/b;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 221
    iget-object v0, p0, Lcom/x/plus/pro/e/b;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 222
    iget-object v0, p0, Lcom/x/plus/pro/e/b;->m:Ljava/util/Queue;

    iget-object v1, p0, Lcom/x/plus/pro/e/b;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    .line 223
    iput v0, p0, Lcom/x/plus/pro/e/b;->f:I

    .line 224
    invoke-direct {p0}, Lcom/x/plus/pro/e/b;->h()V

    return-void
.end method

.method public final c()V
    .registers 3

    .line 241
    iget-object v0, p0, Lcom/x/plus/pro/e/b;->o:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 242
    iget-object v0, p0, Lcom/x/plus/pro/e/b;->o:Ljava/util/Queue;

    iget-object v1, p0, Lcom/x/plus/pro/e/b;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 244
    iget-object v0, p0, Lcom/x/plus/pro/e/b;->c:Lcom/x/plus/pro/e/c;

    invoke-virtual {v0}, Lcom/x/plus/pro/e/c;->a()V

    const/4 v0, 0x2

    .line 246
    iput v0, p0, Lcom/x/plus/pro/e/b;->f:I

    .line 247
    invoke-direct {p0}, Lcom/x/plus/pro/e/b;->i()V

    return-void
.end method

.method public final d()V
    .registers 3

    .line 288
    iget-object v0, p0, Lcom/x/plus/pro/e/b;->i:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xc

    .line 289
    iput v1, v0, Landroid/os/Message;->what:I

    .line 290
    iget-object v1, p0, Lcom/x/plus/pro/e/b;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 293
    iget-object v0, p0, Lcom/x/plus/pro/e/b;->n:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 294
    iget-object v0, p0, Lcom/x/plus/pro/e/b;->n:Ljava/util/Queue;

    iget-object v1, p0, Lcom/x/plus/pro/e/b;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 296
    iget-object v0, p0, Lcom/x/plus/pro/e/b;->c:Lcom/x/plus/pro/e/c;

    invoke-virtual {v0}, Lcom/x/plus/pro/e/c;->a()V

    const/4 v0, 0x3

    .line 298
    iput v0, p0, Lcom/x/plus/pro/e/b;->f:I

    .line 299
    invoke-direct {p0}, Lcom/x/plus/pro/e/b;->j()V

    return-void
.end method

.method public final e()Z
    .registers 2

    .line 566
    iget-object v0, p0, Lcom/x/plus/pro/e/b;->l:Landroid/app/admin/DevicePolicyManager;

    iget-object p0, p0, Lcom/x/plus/pro/e/b;->k:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public final f()V
    .registers 4

    .line 570
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.app.action.ADD_DEVICE_ADMIN"

    .line 571
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.app.extra.DEVICE_ADMIN"

    .line 572
    iget-object v2, p0, Lcom/x/plus/pro/e/b;->k:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 573
    iget-object p0, p0, Lcom/x/plus/pro/e/b;->a:Landroid/content/Context;

    check-cast p0, Lcom/x/plus/pro/MainActivity;

    .line 574
    sget v1, Lcom/x/plus/pro/MainActivity;->l:I

    invoke-virtual {p0, v0, v1}, Lcom/x/plus/pro/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final g()V
    .registers 2

    .line 578
    iget p0, p0, Lcom/x/plus/pro/e/b;->f:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    .line 579
    invoke-static {}, Lcom/x/plus/pro/c/a;->a()V

    :cond_8
    return-void
.end method
