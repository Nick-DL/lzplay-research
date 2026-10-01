.class final Landroidx/appcompat/app/i;
.super Ljava/lang/Object;
.source "TwilightManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/i$a;
    }
.end annotation


# static fields
.field private static c:Landroidx/appcompat/app/i;


# instance fields
.field final a:Landroid/content/Context;

.field final b:Landroidx/appcompat/app/i$a;

.field private final d:Landroid/location/LocationManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .registers 4

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroidx/appcompat/app/i$a;

    invoke-direct {v0}, Landroidx/appcompat/app/i$a;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/i;->b:Landroidx/appcompat/app/i$a;

    .line 70
    iput-object p1, p0, Landroidx/appcompat/app/i;->a:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Landroidx/appcompat/app/i;->d:Landroid/location/LocationManager;

    return-void
.end method

.method static a(Landroid/content/Context;)Landroidx/appcompat/app/i;
    .registers 3

    .line 50
    sget-object v0, Landroidx/appcompat/app/i;->c:Landroidx/appcompat/app/i;

    if-nez v0, :cond_17

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 52
    new-instance v0, Landroidx/appcompat/app/i;

    const-string v1, "location"

    .line 53
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/i;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v0, Landroidx/appcompat/app/i;->c:Landroidx/appcompat/app/i;

    .line 55
    :cond_17
    sget-object p0, Landroidx/appcompat/app/i;->c:Landroidx/appcompat/app/i;

    return-object p0
.end method


# virtual methods
.method final a(Ljava/lang/String;)Landroid/location/Location;
    .registers 3

    .line 134
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/app/i;->d:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 135
    iget-object p0, p0, Landroidx/appcompat/app/i;->d:Landroid/location/LocationManager;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    const-string p1, "TwilightManager"

    const-string v0, "Failed to get last known location"

    .line 138
    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method
