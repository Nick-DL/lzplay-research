.class public final Lcom/x/plus/pro/d/a;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/x/plus/pro/base/BaseApp;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/x/plus/pro/d/a;->a:Ljava/lang/String;

    const-string v1, "SAMSUNG SM-N9760"

    const-string v2, "BKL-AL20 Build/HUAWEIBKL-AL20"

    const-string v3, "BLA-AL00 Build/HUAWEIBLA-AL00"

    const-string v4, "vivo Y85 Build/OPM1.171019.011"

    const-string v5, "OPPO R11 Build/NMF26X; wv"

    const-string v6, "FRD-AL10 Build/HUAWEIFRD-AL10"

    const-string v7, "Redmi 6 Pro Build/OPM1.171019.019"

    const-string v8, "ONEPLUS A5000 Build/OPM1.171019.011"

    const-string v9, "MI MAX 3 Build/OPM1.171019.019"

    const-string v10, "SM-G9500 Build/R16NW"

    .line 101
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/x/plus/pro/d/a;->b:Ljava/util/List;

    const-string v1, "MQQBrowser/6.2"

    const-string v2, "SamsungBrowser/10.2"

    const-string v3, "UCBrowser/11.6.4.950"

    const-string v4, "baiduboxapp/10.13.0.10 (Baidu; P1 7.0)"

    const-string v5, "XiaoMi/MiuiBrowser/10.2.2"

    const-string v6, "UCBrowser/11.9.4.974 UWS/2.13.1.48"

    const-string v7, "Crosswalk/24.53.595.0 XWEB/358 MMWEBSDK/23"

    .line 113
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/x/plus/pro/d/a;->c:Ljava/util/List;

    const-string v0, "8.0.0"

    const-string v1, "8.0"

    const-string v2, "8.1.0"

    const-string v3, "8.1"

    const-string v4, "9"

    .line 123
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/x/plus/pro/d/a;->d:Ljava/util/List;

    return-void
.end method
