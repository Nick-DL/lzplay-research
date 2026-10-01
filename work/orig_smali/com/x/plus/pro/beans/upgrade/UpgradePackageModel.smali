.class public Lcom/x/plus/pro/beans/upgrade/UpgradePackageModel;
.super Lcom/x/plus/pro/beans/ApkBaseInfo;
.source "UpgradePackageModel.java"


# instance fields
.field j:Lcom/x/plus/pro/beans/upgrade/a;
    .annotation runtime Lcom/a/a/a/c;
        a = "backgroundUpdate"
    .end annotation
.end field

.field k:Lcom/x/plus/pro/beans/upgrade/b;
    .annotation runtime Lcom/a/a/a/c;
        a = "homeUpgrade"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/x/plus/pro/beans/ApkBaseInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/x/plus/pro/beans/upgrade/a;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/x/plus/pro/beans/upgrade/UpgradePackageModel;->j:Lcom/x/plus/pro/beans/upgrade/a;

    if-nez v0, :cond_b

    .line 19
    new-instance v0, Lcom/x/plus/pro/beans/upgrade/a;

    invoke-direct {v0}, Lcom/x/plus/pro/beans/upgrade/a;-><init>()V

    iput-object v0, p0, Lcom/x/plus/pro/beans/upgrade/UpgradePackageModel;->j:Lcom/x/plus/pro/beans/upgrade/a;

    .line 21
    :cond_b
    iget-object p0, p0, Lcom/x/plus/pro/beans/upgrade/UpgradePackageModel;->j:Lcom/x/plus/pro/beans/upgrade/a;

    return-object p0
.end method

.method public final b()Lcom/x/plus/pro/beans/upgrade/b;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/x/plus/pro/beans/upgrade/UpgradePackageModel;->k:Lcom/x/plus/pro/beans/upgrade/b;

    if-nez v0, :cond_b

    .line 41
    new-instance v0, Lcom/x/plus/pro/beans/upgrade/b;

    invoke-direct {v0}, Lcom/x/plus/pro/beans/upgrade/b;-><init>()V

    iput-object v0, p0, Lcom/x/plus/pro/beans/upgrade/UpgradePackageModel;->k:Lcom/x/plus/pro/beans/upgrade/b;

    .line 43
    :cond_b
    iget-object p0, p0, Lcom/x/plus/pro/beans/upgrade/UpgradePackageModel;->k:Lcom/x/plus/pro/beans/upgrade/b;

    return-object p0
.end method
