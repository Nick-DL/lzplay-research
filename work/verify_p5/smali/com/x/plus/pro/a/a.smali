.class public final Lcom/x/plus/pro/a/a;
.super Ljava/lang/Object;
.source "DeviceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/plus/pro/a/a$a;
    }
.end annotation


# instance fields
.field public a:Lcom/x/plus/pro/SplashActivity;

.field public b:Lcom/x/plus/pro/a/b;

.field public c:Lcom/x/plus/pro/a/a$a;

.field public final d:Lcom/x/plus/pro/update/b;


# direct methods
.method public constructor <init>(Lcom/x/plus/pro/SplashActivity;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/x/plus/pro/a/a$1;

    invoke-direct {v0, p0}, Lcom/x/plus/pro/a/a$1;-><init>(Lcom/x/plus/pro/a/a;)V

    iput-object v0, p0, Lcom/x/plus/pro/a/a;->d:Lcom/x/plus/pro/update/b;

    .line 31
    iput-object p1, p0, Lcom/x/plus/pro/a/a;->a:Lcom/x/plus/pro/SplashActivity;

    .line 32
    new-instance v0, Lcom/x/plus/pro/a/b;

    invoke-direct {v0, p1}, Lcom/x/plus/pro/a/b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/x/plus/pro/a/a;->b:Lcom/x/plus/pro/a/b;

    return-void
.end method
