.class public Lcom/x/plus/pro/messenger/MessengerService;
.super Landroid/app/Service;
.source "MessengerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/plus/pro/messenger/MessengerService$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "MessengerService"

.field private static b:I

.field private static c:Ljava/lang/String;


# instance fields
.field private final d:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 44
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/x/plus/pro/messenger/MessengerService$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/x/plus/pro/messenger/MessengerService$a;-><init>(B)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/x/plus/pro/messenger/MessengerService;->d:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic a(I)I
    .registers 1

    .line 15
    sput p0, Lcom/x/plus/pro/messenger/MessengerService;->b:I

    return p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 48
    iget-object p0, p0, Lcom/x/plus/pro/messenger/MessengerService;->d:Landroid/os/Messenger;

    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .registers 2

    .line 24
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const/4 v0, 0x0

    .line 25
    sput v0, Lcom/x/plus/pro/messenger/MessengerService;->b:I

    .line 26
    invoke-static {p0}, Lcom/x/plus/pro/f/i;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/x/plus/pro/messenger/MessengerService;->c:Ljava/lang/String;

    return-void
.end method
